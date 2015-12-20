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

(scm-load "../lib/libmusic.scm")

;; TODO: use make-simple-function everywhere possible.

;; Rhythm shortcuts -----------------------------------------------;
(make-function lang:tuplet-letter ; default: \t
  (define-music-function (tuplet-span music)
    ((ly:duration? '()) ly:music?)
    #{ \tuplet 3/2 $(if (not-null? tuplet-span) tuplet-span) $music #}))

(make-function lang:tuplet-letter-double ; \tt
  (define-music-function (tuplet-span music)
    ((ly:duration? '()) ly:music?)
    #{ \tuplet 5/4 $(if (not-null? tuplet-span) tuplet-span) $music #}))

(make-function lang:tuplet-letter-triple ; \ttt
  (define-music-function (tuplet-span music)
    ((ly:duration? '()) ly:music?)
    #{ \tuplet 6/4 $(if (not-null? tuplet-span) tuplet-span) $music #}))

(make-function lang:tuplet-letter-quad ; \tttt
  (define-music-function (tuplet-span music)
    ((ly:duration? '()) ly:music?)
    #{ \tuplet 7/4 $(if (not-null? tuplet-span) tuplet-span) $music #}))


;; Time signature equivalence
(define equiv
 (define-music-function (str) (string?)
   (let* ((mark-ev (make-music 'MarkEvent))
          (mark-ch (make-event-chord (list mark-ev)))
          (equiv-lst (string-split str #\= ))
          (before (parse-my-duration (car equiv-lst)))
          (after (parse-my-duration (cadr equiv-lst)))
          (before-mark (make-note-by-number-markup (car before) (cadr before) 1))
          (after-mark (make-note-by-number-markup (car after) (cadr after) 1))
          (equiv-mark
            (make-concat-markup
              (list
                (make-general-align-markup Y DOWN
                  (make-smaller-markup before-mark))
                (make-simple-markup " ")
                (make-simple-markup "=")
                (make-simple-markup " ")
                (make-general-align-markup Y DOWN
                  (make-smaller-markup after-mark))
                )))
          (mark-set (context-spec-music
              (make-property-set 'rehearsalMark equiv-mark)
              'Score)))
         (ly:music-set-property! mark-ev 'origin (*location*))
         (ly:music-set-property! mark-ev 'label equiv-mark)
         mark-ch)))

;; Auto octavation ------------------------------------------------;
(define oct
  (define-music-function (x) (ly:music?)
    (octavize x)))

;; Polyphony shortcuts --------------------------------------------;
(define pl
  (define-music-function (one two)
    (ly:music? ly:music?)
    #{ << { \voiceTwo $one } \\ { \voiceOne $two } >> #}))

(staff-change-command lang:upper-hand) ;; depending on your input language:
(staff-change-command lang:lower-hand) ;; \rh or \md etc. for switching staves.

;; Hiding stuff ---------------------------------------------------;
(define hideNote #{
\once \override Dots #'transparent = ##t
\once \override NoteHead #'transparent = ##t
\once \override NoteHead #'no-ledgers = ##t
\once \override Stem #'transparent = ##t
\once \override Flag #'transparent = ##t
\once \override Beam #'transparent = ##t
\once \override Accidental #'transparent = ##t
#})

(define hideNoteHead #{
\once \override NoteHead #'transparent = ##t
#})

(define hideNoteHeads
  (define-music-function (x) (ly:music?)
  #{\override NoteHead #'transparent = ##t $x \revert NoteHead #'transparent #}))

(define noTuplet #{
\once \override TupletBracket #'transparent = ##t
\once \override TupletNumber #'transparent = ##t
#})

(define noTuplets
  (define-music-function (x) (ly:music?)
  #{
\override TupletBracket #'transparent = ##t
\override TupletNumber #'transparent = ##t
$x
\revert TupletBracket #'transparent
\revert TupletNumber #'transparent
#}))

(define tupletsOff #{
\override TupletBracket #'transparent = ##t
\override TupletNumber #'transparent = ##t
#})

(define tupletsOn #{
\override TupletBracket #'transparent = ##f
\override TupletNumber #'transparent = ##f
#})


;; Stems and beaming ----------------------------------------------;
(define oneStemDown #{
\once \override Stem #'direction = #DOWN
#})

(define oneStemUp #{
\once \override Stem #'direction = #UP
#})

(define graceNote #{
%% Pasted from graceSettings definition in engraver-init.ly
%% \once \override Stem #'direction = #UP
\once \override Stem #'font-size = #-3
\once \override NoteHead #'font-size = #-3
\once \override TabNoteHead #'font-size = #-4
\once \override Dots #'font-size = #-3
\once \override Stem #'length-fraction = #0.8
\once \override Flag #'font-size = #-3
%% \once \override Stem #'no-stem-extend = ##t
\once \override Beam #'beam-thickness = #0.384
\once \override Beam #'length-fraction = #0.8
\once \override Accidental #'font-size = #-4
\once \override AccidentalCautionary #'font-size = #-4
%% \once \override Slur #'direction = #DOWN
\once \override Script #'font-size = #-3
\once \override Fingering #'font-size = #-8
\once \override StringNumber #'font-size = #-8
#})

(define graceNotes
  (define-music-function (x) (ly:music?)
  #{
%% \override Stem #'direction = #UP %% Nope.
\override Stem #'font-size = #-3
\override Flag #'font-size = #-3
\override NoteHead #'font-size = #-3
\override TabNoteHead #'font-size = #-4
\override Dots #'font-size = #-3
\override Stem #'length-fraction = #0.8
%% \override Stem #'no-stem-extend = ##t %% Not sure.
\override Beam #'beam-thickness = #0.384
\override Beam #'length-fraction = #0.8
\override Accidental #'font-size = #-4
\override AccidentalCautionary #'font-size = #-4
%% \override Slur #'direction = #DOWN
\override Script #'font-size = #-3
\override Fingering #'font-size = #-8
\override StringNumber #'font-size = #-8
$x
%% \revert Stem #'direction
\revert Stem #'font-size
\revert NoteHead #'font-size
\revert TabNoteHead #'font-size
\revert Dots #'font-size
\revert Stem #'length-fraction
%% \revert Stem #'no-stem-extend
\revert Beam #'beam-thickness
\revert Beam #'length-fraction
\revert Accidental #'font-size
\revert AccidentalCautionary #'font-size
%% \revert Slur #'direction
\revert Script #'font-size
\revert Fingering #'font-size
\revert StringNumber #'font-size
#}))

(define lightBeam #{
\once \override Beam #'beam-thickness = #0.384
\once \override Beam #'gap = #0.5
\override Flag #'font-size = #-3
#})

(define lightBeams
  (define-music-function (x) (ly:music?) #{
\override Beam #'beam-thickness = #0.384
\override Beam #'gap = #0.5
\override Flag #'font-size = #-3
$x
\revert Beam #'beam-thickness
\revert Beam #'gap
\revert Flag #'font-size
#}))

(define fullBeat #{
\set baseMoment = #(ly:make-moment 1 4)
% the beatStructure length doesn’t really matter here,
% 16 should be enough for most cases.
\set beatStructure = #'(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
#})

(define halfBeat #{
\set baseMoment = #(ly:make-moment 1 8)
\set beatStructure = #'(2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2)
#})

(define quarterBeat #{
\set baseMoment = #(ly:make-moment 1 6)
\set beatStructure = #'(4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4)
#})

(define tupletBeat #{
\set baseMoment = #(ly:make-moment 1 12)
\set beatStructure = #'(3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3)
#})


;; Expressive marks -----------------------------------------------;
(define longHairpin #{
\once \override Hairpin #'to-barline = ##f
#})

(define longHairpins
  (define-music-function (x) (ly:music?) #{
\override Hairpin #'to-barline = ##f
$x
\revert Hairpin #'to-barline
#}))


;; Custom note heads ----------------------------------------------;
(define whiteNote
  (define-music-function (x) (ly:music?)
    (set! (ly:music-property x 'tweaks)
                               (acons 'duration-log 1
                                  (ly:music-property x 'tweaks)))
                         x))

(define blackNote
  (define-music-function (x) (ly:music?)
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
 (define-music-function (x) (ly:music?)
#{
\override NoteHead #'style = #'cross
$x
\revert NoteHead #'style
#}))

(define slap ;;TODO: adapt accordingly to stem direction?
 (define-music-function (x) (ly:music?)
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
 (define-music-function (chord result) (ly:music? ly:music?)
 #{
<< \oneStemDown $chord \\ { \stemUp %FIXME: ties could look better.
\override NoteHead #'stencil = #ly:text-interface::print
\override NoteHead #'text = \markup { \null \musicglyph #"noteheads.s2"}
\once \override NoteHead #'text = \markup {\null \override #'(direction . 1)
  \dir-column {\musicglyph #"noteheads.s2" \teeny \musicglyph #"eight"}}
\override Stem #'stencil = ##f $result
\revert Stem #'stencil \revert NoteHead #'stencil \stemNeutral } >> #}))

(define harmonics
 (define-music-function (x) (ly:music?)
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
 (define-music-function (x) (ly:music?)
   (naturalize x)))

