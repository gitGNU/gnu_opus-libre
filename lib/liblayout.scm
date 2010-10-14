;------------------------------------------------------------------;
; opus_libre -- liblayout.scm                                      ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
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


; Layout functions.


(define modern-accidentals-style
  `(Staff ,(make-accidental-rule 'same-octave 0)
          ,(make-accidental-rule 'any-octave 0)
          ,(make-accidental-rule 'same-octave 1)
          ,neo-modern-accidental-rule))

(define modern-cautionaries-style
  `(Staff ,(make-accidental-rule 'same-octave 1)
          ,(make-accidental-rule 'any-octave 1)))
 