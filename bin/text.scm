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
