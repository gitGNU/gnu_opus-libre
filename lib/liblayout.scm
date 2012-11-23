;------------------------------------------------------------------;
; opus_libre -- liblayout.scm                                      ;
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


; Layout functions.


(define modern-accidentals-style
  `(Staff ,(make-accidental-rule 'same-octave 0)
          ,(make-accidental-rule 'any-octave 0)
          ,(make-accidental-rule 'same-octave 1)
          ,neo-modern-accidental-rule))

(define modern-cautionaries-style
  `(Staff ,(make-accidental-rule 'same-octave 1)
          ,(make-accidental-rule 'any-octave 1)))

(define modern-script-alist
  (let* ((new-alist default-script-alist)
         (set-prio! (lambda (script prio) (assoc-set! new-alist script
                              (acons
                                    'script-priority prio
                                     (assoc-get script default-script-alist))))))
     ;(set-prio! "staccato" -100)
     (set-prio! "accent" -105)
     (set-prio! "tenuto" -110)
     new-alist))

(define modern-time-signature-settings
  (append
    '(
      ((3 . 16) .
                ((baseMoment . (3 . 16))))
      ((5 . 16) .
                ((baseMoment . (3 . 16))))
      ((7 . 16) .
                ((baseMoment . (4 . 16))))
      ((2 . 8) .
                ((baseMoment . (2 . 8))))
      ((3 . 8) .
                ((beamExceptions . ((end . (((1 . 8) . (3))))))))
      ((4 . 8) .
                ((beatStructure . (2 2))))
      ((5 . 8) .
                ((beatStructure . (3 2))))
      ((8 . 8) .
                ((beatStructure . (3 3 2))))
      ((7 . 8) .
                ((baseMoment . (4 . 8))))
      ((3 . 4) .
                ((beamExceptions . ((end . (((1 . 8) . (2 2 2))
                                            ((1 . 12) . (3 3 3))))))))
      ((4 . 4) .
                ((beamExceptions . ((end . (((1 . 8) . (4 4))
                                            ((1 . 12) . (3 3 3 3))))))))
      ((6 . 4) .
                ((beamExceptions . ((end .  (((1 . 16) . (4 4 4 4 4 4))))))))
      ((2 . 2) .
                ((beamExceptions . ((end . (((1 . 12) . (3 3 3 3))))))))
      ((3 . 2) .
                ((beamExceptions . ((end .  (((1 . 12) . (3 3 3 3 3 3))))))))
      ((4 . 2) .
                ((beamExceptions . ((end . (((1 . 16) . (4 4 4 4 4 4 4 4))))))))
    ) default-time-signature-settings))
