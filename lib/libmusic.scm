;------------------------------------------------------------------;
; opus_libre -- libmusic.scm                                       ;
;                                                                  ;
; (c) 2008-2011 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License as published by the Free Software         ;
; Foundation, either version 3 of the License, or (at your option) ;
; any later version.                                               ;
;     This program is distributed WITHOUT ANY WARRANTY; without    ;
; even the implied warranty of MERCHANTABILITY or FITNESS FOR A    ;
; PARTICULAR PURPOSE.  You should have received a copy of the GNU  ;
; General Public License along with this program (typically in the ;
; share/doc/ directory).  If not, see http://www.gnu.org/licenses/ ;
;                                                                  ;
;------------------------------------------------------------------;


; Music functions.

;; Articulation marks -- after Gilles Thibault's snippet: see
;; http://lists.gnu.org/archive/html/lilypond-user/2008-06/msg00012.html

(define tieEvent? #f)

(define (add-script music x)
  (let ((eventname (ly:music-property  music 'name))
        (elts (ly:music-property music 'elements))
        (elt  (ly:music-property music 'element))
        (rest '()))
    (if (list? x)
        (begin
          (set! rest (cdr x))
          (set! x (car x))))
    (cond
     ((pair? elts)
      (begin
        (if (and
             (eq? eventname 'EventChord)
             (eq? (ly:music-property (car elts) 'name) 'NoteEvent)
             (not tieEvent?))
            (set! (ly:music-property music 'elements)
                  (append elts (list
                                (make-music
                                 'ArticulationEvent
                                 'articulation-type x))))
            (set! tieEvent? #f))
        (map (lambda (m) (add-script m x)) elts)))
     ((ly:music? elt) (add-script elt x))
     ((eq? eventname 'TieEvent) (set! tieEvent? #t)))
    (if (not (null? rest)) (add-script music rest))
    music))


;; Automatic octavation -- after Jay Anderson:
;; http://lists.gnu.org/archive/html/lilypond-user/2008-04/msg00431.html
;; http://lists.gnu.org/archive/html/lilypond-user/2008-05/msg00592.html

(define (octave-up noteevent)
  (let* ((pitch (ly:music-property noteevent 'pitch))
         (octave (ly:pitch-octave pitch))
         (note (ly:pitch-notename pitch))
         (alteration (ly:pitch-alteration pitch))
         (duration (ly:music-property noteevent 'duration))
         (newnoteevent
          (make-music 'NoteEvent
                      'duration duration
                      'pitch (ly:make-pitch (1- octave) note alteration))))
    newnoteevent))

(define (octavize-chord elements)
  (cond ((null? elements) elements)
        ((eq? (ly:music-property (car elements) 'name) 'NoteEvent)
         (cons (car elements)
               (cons (octave-up (car elements))
                     (octavize-chord (cdr elements)))))
        (else (cons (car elements) (octavize-chord (cdr elements))))))

(define (octavize music)
  (let* ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (name (ly:music-property music 'name)))
    (cond ((eq? name 'EventChord)
           (ly:music-set-property! music 'elements (octavize-chord es)))
          ((pair? es)
           (for-each (lambda(x) (octavize x)) es))
          ((ly:music? e)
           (octavize e))))
  music)


;;; Smart transposition -- from LSR #266

(define  (naturalize-pitch p)
 (let* ((o (ly:pitch-octave p))
        (a (* 4 (ly:pitch-alteration p)))
   ; alteration, a, in quarter tone steps, for historical reasons
        (n (ly:pitch-notename p)))
   (cond
    ((and (> a 1) (or (eq? n 6) (eq? n 2)))
     (set! a (- a 2))
     (set! n (+ n 1)))
    ((and (< a -1) (or (eq? n 0) (eq? n 3)))
     (set! a (+ a 2))
     (set! n (- n 1))))
   (cond
    ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
    ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
   (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
   (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
   (ly:make-pitch o n (/ a 4))))

(define (naturalize music)
 (let* ((es (ly:music-property music 'elements))
        (e (ly:music-property music 'element))
        (p (ly:music-property music 'pitch)))
   (if (pair? es)
       (ly:music-set-property!
        music 'elements
        (map (lambda (x) (naturalize x)) es)))
   (if (ly:music? e)
       (ly:music-set-property!
        music 'element
        (naturalize e)))
   (if (ly:pitch? p)
       (begin
         (set! p (naturalize-pitch p))
         (ly:music-set-property! music 'pitch p)))
   music))
