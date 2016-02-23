%% See http://turner.faculty.swau.edu/mathematics/materialslibrary/pi/pibases.html

\version "2.19"

\include "pilypi.ly"
\include "modify.ly"

#(define notes
   (list
    (ly:make-pitch 0 0)
    (ly:make-pitch 0 0 1/2)
    (ly:make-pitch 0 1)
    (ly:make-pitch 0 1 1/2)
    (ly:make-pitch 0 2)
    (ly:make-pitch 0 3)
    (ly:make-pitch 0 3 1/2)
    (ly:make-pitch 0 4)
    (ly:make-pitch 0 4 1/2)
    (ly:make-pitch 0 5)
    (ly:make-pitch 0 6 -1/2)
    (ly:make-pitch 0 6)
    ))

#(define durations
   (list
    (ly:make-duration 0)
    (ly:make-duration 1)
    (ly:make-duration 2)
    (ly:make-duration 3)
    (ly:make-duration 3)
    (ly:make-duration 4)
    (ly:make-duration 4)
    (ly:make-duration 5)
    ))

#(define dynamics
   (list
    (make-music 'AbsoluteDynamicEvent 'text "pp")
    (make-music 'AbsoluteDynamicEvent 'text "p")
    (make-music 'AbsoluteDynamicEvent 'text "mp")
    (make-music 'AbsoluteDynamicEvent 'text "mf")
    (make-music 'AbsoluteDynamicEvent 'text "f")
    (make-music 'AbsoluteDynamicEvent 'text "ff")
    ))

#(define quantities
   (list
    1 2 4 8 16 24 32 48 64 96 128 160 256
    ))

#(define last-pitch (ly:make-pitch 0 0))

#(define  (naturalize-pitch p)
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

#(define (limit-range-soft pitch)
   (if (> (ly:pitch-steps pitch) 7)
       (ly:pitch-transpose pitch (ly:make-pitch -1 0))
       (if (< (ly:pitch-steps pitch) -7)
           (ly:pitch-transpose pitch (ly:make-pitch 1 0))
           pitch)))

#(define (limit-range-absolute pitch)
   (if (> (ly:pitch-steps pitch) 27)
       (ly:pitch-transpose pitch (ly:make-pitch -1 0))
       (if (< (ly:pitch-steps pitch) -23)
           (ly:pitch-transpose pitch (ly:make-pitch 1 0))
           pitch)))

#(define (make-interval num up?)
   (set! last-pitch
         (limit-range-absolute
          (naturalize-pitch
           (ly:pitch-transpose last-pitch
             (if (= 1 up?)
                 (safe-list-ref notes num)
                 (ly:pitch-negate (safe-list-ref notes num)))))))
   (make-music 'NoteEvent
     'duration (ly:make-duration 4)
     'pitch last-pitch))

\header {
  title    = "Pi decimals"
  subtitle = "(base 12)"
  composer = "Oumupo"
  copyright= "Public domain"
}

\layout {
  \context {
    \Voice
    \consists Completion_heads_engraver
    \consists Completion_rest_engraver
    \remove Note_heads_engraver
    \remove Rest_engraver
  }
}

sequence =
#(define-music-function
  (numbers upness quantnum)
  (list? list? list?)
  (let ((i 0)
        (z 0)
        (q 0))
    (make-sequential-music
     (map (lambda (n)
            (let* ((up? (char->number
                         (safe-list-ref upness i)))
                   (delta (char->number n))
                   (quantum (char->number (safe-list-ref quantnum z)))
                   (quantity (safe-list-ref quantities quantum))
                   (new-pitch (make-interval delta up?)))
              (if (= delta 0)
                  (set! last-pitch (limit-range-soft last-pitch))
                  (set! i (1+ i)))
              (if (<= quantity (1+ q))
                  (begin
                   (set! q 0)
                   (set! z (1+ z)))
                  (set! q (1+ q)))
              (ly:music-set-property! new-pitch 'duration
                (max-list-ref durations quantum))
              (if (even? quantum)
                  (ly:music-set-property! new-pitch 'articulations
                    (list
                     (if (> quantum 3)
                         (make-music 'ArticulationEvent
                           'articulation-type "staccato")
                         (make-music 'ArticulationEvent
                           'articulation-type "tenuto")))))
              new-pitch))
       numbers))))

addTimeline =
#(define-scheme-function (numbers spacelist) (list? list?)
   (let ((music-list '()))
      (do ((i 0 (1+ i)))
        ((> i 1000))
        (let ((dyn-index (char->number (list-ref numbers i)))
              (space-index (char->number (list-ref spacelist i))))
          (set! music-list
                (cons
                 (make-music 'SkipEvent 'duration
                   (ly:make-duration 1 0 space-index))
                 music-list))
          (set! music-list
                (cons
                 (safe-list-ref dynamics dyn-index)
                 music-list))))
      (make-sequential-music (reverse music-list))))

\score {
  \new PianoStaff \autochange {
    \tempo "Allegro con fuoco"
    <>\f
    \accidentalStyle Score.neo-modern
    <<
      %\piify
      \sequence #pi-base12 #pi-base2 #pi-base10
      \addTimeline #pi-base6 #pi-base4
      { s1*128 \set Score.skipTypesetting = ##t }
    >>
  }
  \header {
    % piece = \markup \fill-line { \epsfile #Y #40 #myplot }
  }
}
