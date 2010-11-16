;------------------------------------------------------------------;
; opus_libre -- macros.scm                                         ;
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


; Input macros.

(load "../lib/libmusic.scm")

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
  (define-music-function (parser location mus) (ly:music?)
    (octavize mus)))

;; Articulation shortcuts -----------------------------------------;
;;TODO: how about an alist? (see libmusic.scm)
(make-script '(st . "staccato"))
(make-script '(acc . "accent"))
(make-script '(det . "tenuto")) ; as in "détaché"
(make-script '(stdet . "portato"))
(make-script '(accdet . '("tenuto" "accent")))
(make-script '(accst . '("accent" "staccato")))
(make-script '(dwnb . "downbow"))

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

(define whiteNote
  (define-music-function (parser location arg) (ly:music?)
    (set! (ly:music-property arg 'tweaks)
                                 (acons 'duration-log 1
                                    (ly:music-property arg 'tweaks)))
                         arg))

(define blackNote
  (define-music-function (parser location arg) (ly:music?)
    (set! (ly:music-property arg 'tweaks)
                                 (acons 'duration-log 4
                                    (ly:music-property arg 'tweaks)))
                         arg))
