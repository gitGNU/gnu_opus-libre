;------------------------------------------------------------------;
; opus_libre -- liblayout.scm                                      ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Layout functions.


(define modern-accidentals-style
  `(Staff ,(make-accidental-rule 'same-octave 0)
          ,(make-accidental-rule 'any-octave 0)
          ,(make-accidental-rule 'same-octave 1)
          ,neo-modern-accidental-rule))

(define modern-cautionaries-style
  `(Staff ,(make-accidental-rule 'same-octave 1)
          ,(make-accidental-rule 'any-octave 1)))
 