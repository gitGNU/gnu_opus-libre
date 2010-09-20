;------------------------------------------------------------------;
; opus_libre -- macros.scm                                         ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Input macros.

;; Rhythm shortcuts -----------------------------------------------;
(make-simple-function lang:tuplet-letter ; default: \t
  #{ \times 2/3 $x #})

(make-simple-function lang:tuplet-letter-double ; \tt
  #{ \times 4/5 $x #})

(make-simple-function lang:tuplet-letter-triple ; \ttt
  #{ \times 4/6 $x #})

(make-simple-function lang:tuplet-letter-quad ; \tttt
  #{ \times 4/7 $x #})


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


;; Auto octavation ------------------------------------------------;
(define oct
 (define-music-function (parser location mus) (ly:music?)
  (octavize mus)))

;; Articulation shortcuts -----------------------------------------;
(make-script '(st . "staccato"))
(make-script '(acc . "accent"))
(make-script '(det . "tenuto")) ; as in "détaché"
(make-script '(stdet . "portato"))
(make-script '(accdet . '("tenuto" "accent")))
(make-script '(accst . '("accent" "staccato")))
(make-script '(dwnb . "downbow"))
