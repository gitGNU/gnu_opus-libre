;------------------------------------------------------------------;
; opus_libre -- lyrics.scm                                         ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; macros used in lyric mode.

(define dash
#{
  \once \override LyricHyphen #'minimum-distance = #4
  \once \override LyricHyphen #'length = #2
  \once \override LyricHyphen #'thickness = #1.2
#})

(define leftSyl
#{
  \once \override LyricText #'self-alignment-X = #0.9
#})

(define rightSyl
#{
  \once \override LyricText #'self-alignment-X = #-0.9
#})

