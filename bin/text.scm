;------------------------------------------------------------------;
; opus_libre -- text.scm                                           ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

;; Macros for entering text elements.

(load "../lib/libtext.scm")
(load "../lib/libgraphics.scm")

;; Composite dynamics ---------------------------------------------;
(define dyn
  ;;syntax: -\dyn instead of \dyn (see Issue #1264).
  (define-music-function (parser location arg) (markup?)
    (make-music 'AbsoluteDynamicEvent
                'text (cond
                       ((string? arg)
                        (if (string-every char-set:dynamics arg)
                            arg
                            (markup #:dynamic-string arg)))
                       (else arg)))))

(define startText
  (define-music-function (location parser txt) (markup?)
     (make-text-span txt)))

;; for consistency only.
(define stopText
  stopTextSpan)

(define ten
  (define-music-function (parser location music) (ly:music?)
    (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                   (list (make-music 'TextScriptEvent 'text
                                     ;; ugh. Haphazard alignment.
                                     (markup #:translate-scaled (cons 4 0)
                                             #:indic "(ten.)"))))))
    music))

(define ind
 (define-music-function (parser location text music) (string? ly:music?)
   (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                  (list (make-music 'TextScriptEvent 'direction 1
                  'text (markup #:indic text))))))
   music))

(define bracketUp
  (define-music-function (parser location text music) (markup? ly:music?)
    (let ((current-staff-position 0))
      ; this shouldn't be needed!!!
      (set! current-staff-position 4)
      (make-music 'ApplyOutputEvent
                  'origin location
                  'context-type 'Voice
                  'procedure
                  (lambda (grob grob-origin context)
                    (let ((staff-pos (ly:grob-property grob 'staff-position)))
                      (if (number? staff-pos)
                          (set! current-staff-position staff-pos)))))
      #{ \once \set fingeringOrientations = #'(left)
         \once \override Fingering #'X-extent = #'(-2.0 . 0.0)
         $(add-bracket current-staff-position #t text music)
         $music #})))

(define bracketDown
  (define-music-function (parser location text music) (markup? ly:music?)
    (let ((current-staff-position 0))
      ; this shouldn't be needed!!!
      (set! current-staff-position -4)
      (make-music 'ApplyOutputEvent
                  'origin location
                  'context-type 'Voice
                  'procedure
                  (lambda (grob grob-origin context)
                    (let ((staff-pos (ly:grob-property grob 'staff-position)))
                      (if (number? staff-pos)
                          (set! current-staff-position staff-pos)))))
      #{ \once \set fingeringOrientations = #'(left)
         \once \override Fingering #'X-extent = #'(-2.0 . 0.0)
         $(add-bracket current-staff-position #f text music)
         $music #})))
