;------------------------------------------------------------------;
; opus_libre -- libgraphics.scm                                    ;
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


; Graphics.


(define (add-bracket pos up? text music)
  (if
   (equal? (ly:music-property music 'name) 'EventChord)
   (let ((note (car (ly:music-property music 'elements))))
     (set! (ly:music-property note 'articulations)
           (append (ly:music-property note 'articulations)
                   (list
                    (let ((obj (make-music 'FingeringEvent)))
                      (set! (ly:music-property obj 'tweaks)
                            (acons 'self-alignment-Y (if up? -1 1)
                                   (acons 'text
                                          (markup #:bracketText pos up? text)
                                          (ly:music-property obj 'tweaks))))
                      obj)))))
   music))

(define (add-script glyph music)
  (if
   (equal? (ly:music-property music 'name) 'EventChord)
   (let ((note (car (ly:music-property music 'elements))))
     (set! (ly:music-property note 'articulations)
           (append (ly:music-property note 'articulations)
                   (list
                    (let ((obj (make-music 'FingeringEvent)))
                      (set! (ly:music-property obj 'tweaks)
                            (acons 'text
                                   (markup #:musicglyph glyph)
                                   (ly:music-property obj 'tweaks)))
                      obj)))))
   music))
