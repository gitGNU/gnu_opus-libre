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
(make-simple-function lang:tuplet-letter
  #{ \times 2/3 $x #})

(make-simple-function lang:tuplet-letter-double
  #{ \times 4/5 $x #})

(make-simple-function lang:tuplet-letter-triple
  #{ \times 4/6 $x #})

(make-simple-function lang:tuplet-letter-quad
  #{ \times 4/7 $x #})


;;FIXME: syntax -\dyn instead of \dyn (see Issue #1264).
(define dyn
 (define-music-function (parser location dyn) (markup?)
  (make-music 'AbsoluteDynamicEvent
              'text (cond
                     ((string? dyn)
                      (if (string-every char-set:dynamics dyn)
                          dyn
                          (markup #:dynamic-string dyn)))
                     (else dyn)))))