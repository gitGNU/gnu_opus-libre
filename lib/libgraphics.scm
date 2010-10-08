;------------------------------------------------------------------;
; opus_libre -- libgraphics.scm                                    ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
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
