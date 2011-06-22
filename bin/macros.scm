;------------------------------------------------------------------;
; opus_libre -- macros.scm                                         ;
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


; Input macros.

(load "../lib/libmusic.scm")

;; TODO: use make-simple-function everywhere possible.

;; Rhythm shortcuts -----------------------------------------------;
(make-simple-function lang:tuplet-letter ; default: \t
                      #{ \times 2/3 $x #})

(make-simple-function lang:tuplet-letter-double ; \tt
                      #{ \times 4/5 $x #})

(make-simple-function lang:tuplet-letter-triple ; \ttt
                      #{ \times 4/6 $x #})

(make-simple-function lang:tuplet-letter-quad ; \tttt
                      #{ \times 4/7 $x #})

;; Auto octavation ------------------------------------------------;
(define oct
  (define-music-function (parser location x) (ly:music?)
    (octavize x)))

;; Polyphony shortcuts --------------------------------------------;
(define pl
  (define-music-function (parser location one two)
    (ly:music? ly:music?)
    #{ << { \voiceTwo $one } \\ { \voiceOne $two } >> #}))

(staff-change-command lang:upper-hand) ;; depending on your input language:
(staff-change-command lang:lower-hand) ;; \rh or \md etc. for switching staves.


(define hideNote #{
\once \override Dots #'transparent = ##t
\once \override NoteHead #'transparent = ##t
\once \override NoteHead #'no-ledgers = ##t
\once \override Stem #'transparent = ##t
\once \override Beam #'transparent = ##t
\once \override Accidental #'transparent = ##t
#})

(define hideNoteHead #{
\once \override NoteHead #'transparent = ##t
#})

(define hideNoteHeads
  (define-music-function (parser location x) (ly:music?)
  #{\override NoteHead #'transparent = ##t $x \revert NoteHead #'transparent #}))

(define noTuplet #{
\once \override TupletBracket #'transparent = ##t
\once \override TupletNumber #'transparent = ##t
#})

(define oneStemDown #{
\once \override Stem #'direction = #DOWN
#})

(define oneStemUp #{
\once \override Stem #'direction = #UP
#})

(define graceNote #{
\once \set fontSize = #-2
#})

(define graceNotes
  (define-music-function (parser location x) (ly:music?)
  #{ \tiny $x \normalsize #}))

(define lightBeam #{
\once \override Beam #'beam-thickness = #0.36
\once \override Beam #'gap = #0.5
#})

(define lightBeams
  (define-music-function (parser location x) (ly:music?) #{
\override Beam #'beam-thickness = #0.36
\override Beam #'gap = #0.5
$x
\revert Beam #'beam-thickness
\revert Beam #'gap
#}))

(define longHairpin #{
\once \override Hairpin #'to-barline = ##f
#})

(define longHairpins
  (define-music-function (parser location x) (ly:music?) #{
\override Hairpin #'to-barline = ##f
$x
\revert Hairpin #'to-barline
#}))

(define whiteNote
  (define-music-function (parser location x) (ly:music?)
    (set! (ly:music-property x 'tweaks)
                               (acons 'duration-log 1
                                  (ly:music-property x 'tweaks)))
                         x))

(define blackNote
  (define-music-function (parser location x) (ly:music?)
    (set! (ly:music-property x 'tweaks)
       (acons 'before-line-breaking
              (lambda (grob)
                (let ((dots (ly:grob-object grob 'dot)))
                  (ly:grob-set-property! grob 'duration-log 2)
                  (and (ly:grob? dots)
                       (ly:grob-set-property! dots 'dot-count 0))))
              (ly:music-property x 'tweaks)))
        x))

(define parlato
 (define-music-function (parser location x) (ly:music?)
#{
\override NoteHead #'style = #'cross
$x
\revert NoteHead #'style
#}))

(define slap ;;TODO: adapt accordingly to stem direction?
 (define-music-function (parser location x) (ly:music?)
#{
\override NoteHead #'stencil = #ly:text-interface::print
\override NoteHead #'text = \markup \musicglyph #"scripts.sforzato"
\override NoteHead #'extra-offset = #'(0.1 . 0.0 )
$x
\revert NoteHead #'stencil
\revert NoteHead #'text
\revert NoteHead #'extra-offset
#}))

(define harmoChord ;; FIXME: overly complicated.
 (define-music-function (parser location chord result) (ly:music? ly:music?)
 #{
<< \oneStemDown $chord \\ { \stemUp %FIXME: ties could look better.
\override NoteHead #'stencil = #ly:text-interface::print
\override NoteHead #'text = \markup { \null \musicglyph #"noteheads.s2"}
\once \override NoteHead #'text = \markup {\null \override #'(direction . 1)
  \dir-column {\musicglyph #"noteheads.s2" \teeny \musicglyph #"eight"}}
\override Stem #'stencil = ##f $result
\revert Stem #'stencil \revert NoteHead #'stencil \stemNeutral } >> #}))

(define harmonics
 (define-music-function (parser location x) (ly:music?)
#{
\override Dots #'transparent = ##t
\override Stem #'transparent = ##t
\override Beam #'transparent = ##t
\override NoteHead #'style = #'harmonic
$x
\revert NoteHead #'style
\revert Beam #'transparent
\revert Stem #'transparent
\revert Dots #'transparent #}))

(define smart
 (define-music-function (parser location x) (ly:music?)
   (naturalize m))
