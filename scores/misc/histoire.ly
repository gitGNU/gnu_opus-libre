\include "italiano.ly"

%%%%%%%%%%%%%%%%%%%%%%%%% Music Shortcuts %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Rhythm shortcuts -----------------------------------------------%

t =
#(define-music-function (parser location music) (ly:music?)
#{ \times 2/3 $music #})

tt =
#(define-music-function (parser location music) (ly:music?)
#{ \times 4/5 $music #})

ttt =
#(define-music-function (parser location music) (ly:music?)
#{ \times 4/6 $music #})

tttt =
#(define-music-function (parser location music) (ly:music?)
#{ \times 4/7 $music #})


%% Polyphony shortcuts --------------------------------------------%

pl =
#(define-music-function (parser location one two) (ly:music? ly:music?)
#{ << { \voiceTwo $one } \\ { \voiceOne $two } >> #})


makePart =
#(define-music-function (parser location part)
                        (ly:music?)
#{\context Staff << $part \new GhostVoice \mesures >> #})


%% Music formatting -----------------------------------------------%

graceNotes =
#(define-music-function (parser location notes) (ly:music?)
#{ \tiny $notes \normalsize #})

parlato =
#(define-music-function (parser location notes) (ly:music?)
#{ \override NoteHead #'style = #'cross
  $notes
\revert NoteHead #'style #})

longHairpins =
#(define-music-function (parser location music) (ly:music?)
#{ \override Hairpin #'to-barline = ##f
$music \revert Hairpin #'to-barline #})

slap =
#(define-music-function (parser location music) (ly:music?)
#{\override NoteHead #'stencil = #ly:text-interface::print
  \override NoteHead #'text = \markup \musicglyph #"scripts.sforzato"
  \override NoteHead #'extra-offset = #'(0.1 . 0.0 )
  $music
  \revert NoteHead #'stencil
  \revert NoteHead #'text
  \revert NoteHead #'extra-offset #})

hideNote = {
\once \override NoteHead  #'transparent = ##t
\once \override NoteHead  #'no-ledgers = ##t
\once \override Stem  #'transparent = ##t
\once \override Beam  #'transparent = ##t
\once \override Accidental  #'transparent = ##t
}

noTuplet = {
\once \override TupletBracket #'transparent = ##t
\once \override TupletNumber #'transparent = ##t
}

oneStemDown = {
\once \override Stem #'direction = #DOWN
}

oneStemUp = {
\once \override Stem #'direction = #UP
}

%% Music shortcuts ------------------------------------------------%

sk = \set Score.skipTypesetting = ##t

unsk = \set Score.skipTypesetting = ##f


%%%%%%%%%%%%%%%%%%%%%%%%% Music Decoration %%%%%%%%%%%%%%%%%%%%%%%%%

%% Articulation marks ---------------------------------------------%

#(define (make-script x)
   (make-music 'ArticulationEvent
               'articulation-type x))

#(define (add-script m x)
 (let ( (eventname (ly:music-property m 'name)))
  (if (equal? eventname 'EventChord)
    (let ( (elements (ly:music-property m 'elements)) )
      (if (not (equal? (ly:music-property (car elements)
                'name) 'RestEvent))
        (set! (ly:music-property m 'elements)
          (append elements (list
          (make-script x)))))))
          m))

#(define (double-script m t tt)
       (add-script (add-script m t) tt))

st =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (add-script m "staccato"))
    (music-map make-script-music music))

acc =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (add-script m "accent"))
    (music-map make-script-music music))

det = % I call these "det" as in "détaché".
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (add-script m "tenuto"))
    (music-map make-script-music music))

stdet =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (add-script m "portato"))
    (music-map make-script-music music))

accdet =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (double-script m "tenuto" "accent"))
    (music-map make-script-music music))

accst =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (double-script m "accent" "staccato"))
    (music-map make-script-music music))

dwnb =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (add-script m "downbow"))
    (music-map make-script-music music))

CaV=
#(let ((m (make-music 'ArticulationEvent
        'articulation-type "flageolet")))
       (set! (ly:music-property m 'tweaks)
             (acons 'font-size -3
                    (ly:music-property m 'tweaks)))
                                       m)
harmo =
#(define-music-function (parser location chord result) (ly:music? ly:music?)
 #{ << \oneStemDown $chord \\ { \stemUp %FIXME: ties could look better.
   \override NoteHead #'stencil = #ly:text-interface::print
   \override NoteHead #'text = \markup { \null \musicglyph #"noteheads.s2"}
   \once \override NoteHead #'text = \markup {\null \override #'(direction . 1)
      \dir-column {\musicglyph #"noteheads.s2" \teeny \musicglyph #"eight"}}
    \override Stem #'stencil = ##f $result
    \revert Stem #'stencil \revert NoteHead #'stencil \stemNeutral } >> #})

harmonics =
#(define-music-function (parser location music) (ly:music?)
#{
\override Dots #'transparent = ##t
\override Stem #'transparent = ##t
\override Beam #'transparent = ##t
\override NoteHead #'style = #'harmonic
$music
\revert NoteHead #'style
\revert Beam #'transparent
\revert Stem #'transparent
\revert Dots #'transparent #})

thumbpizz =
#(let* ((m (make-music 'ArticulationEvent
                       'articulation-type "stopped"
                       'direction 1)))
   (ly:music-set-property! m 'tweaks
     (acons 'font-size 3
       (acons 'text (markup
                   #:hspace 0
                   #:rotate 45
                   #:musicglyph "scripts.stopped")
         (acons 'stencil ly:text-interface::print
           (ly:music-property m 'tweaks)))))
   m)

leftpizz =
#(let* ((m (make-music 'ArticulationEvent
                       'articulation-type "stopped"
                       'direction 1)))
   (ly:music-set-property! m 'tweaks
     (acons 'font-size 3
           (ly:music-property m 'tweaks)))
   m)

arpeggUp =
#(let* ((m (make-music 'ArpeggioEvent)))
   (ly:music-set-property! m 'tweaks
    (acons 'arpeggio-direction 1
     (ly:music-property m 'tweaks)))
   m)

arpeggDown =
#(let* ((m (make-music 'ArpeggioEvent)))
   (ly:music-set-property! m 'tweaks
    (acons 'arpeggio-direction -1
     (ly:music-property m 'tweaks)))
   m)

plak =
#(let* ((m (make-music 'ArpeggioEvent)))
   (ly:music-set-property! m 'tweaks
    (acons 'stencil ly:arpeggio::brew-chord-bracket
     (ly:music-property m 'tweaks)))
   m)

%%% TODO: custom scripts priority.
#(define modern-scripts default-script-alist)

%%%%%%%%%%%%%%%%%%%%%%%% Layout Functions %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Music layout ---------------------------------------------------%

#(define modern-auto-beam-settings
  (append default-auto-beam-settings
  `(
    ((end * * 3 4) . ,(ly:make-moment 1 4))
    ((end * * 3 4) . ,(ly:make-moment 1 2))
    ((end * * 4 4) . ,(ly:make-moment 1 4))
    ((end * * 4 4) . ,(ly:make-moment 3 4))
    ((end * * 2 2) . ,(ly:make-moment 1 4))
    ((end * * 2 2) . ,(ly:make-moment 1 2))
    ((end * * 2 2) . ,(ly:make-moment 3 4))
    ((end * * 2 8) . ,(ly:make-moment 1 4))
    ((be  * * 5 8) . ,(ly:make-moment 1 8))
    ((end * * 5 8) . ,(ly:make-moment 5 8))
    )))

#(define modern-accidentals-style
     `(Staff ,(make-accidental-rule 'same-octave 0)
             ,(make-accidental-rule 'any-octave 0)
             ,(make-accidental-rule 'same-octave 1)
                   ,neo-modern-accidental-rule))
#(define modern-cautionaries-style
     `(Staff ,(make-accidental-rule 'same-octave 1)
             ,(make-accidental-rule 'any-octave 1)))

%% Graphic fine-tuning --------------------------------------------%

#(define-markup-command (vspace layout props amount) (number?)
  (let ((amount (* amount 3.0)))
    (if (> amount 0)
        (ly:make-stencil "" (cons -1 1) (cons 0 amount))
        (ly:make-stencil "" (cons -1 1) (cons amount amount)))))

#(define-public (rounded-whiteout-stencil stencil blot)
  (let*
      ((x-ext (ly:stencil-extent stencil X))
       (y-ext (ly:stencil-extent stencil Y)))
    (ly:stencil-add
     (stencil-with-color (ly:round-filled-box x-ext y-ext blot)
       white)
     stencil)))

%TODO: make radius arg optional.
#(define-markup-command (rounded-whiteout layout props radius arg)
                        (number? markup?)
  (rounded-whiteout-stencil (interpret-markup layout props arg) radius))

  #(define-markup-command (line-width-ratio layout props width-ratio arg) (number? markup?)
  (interpret-markup layout props
   (markup #:override (cons 'line-width (* width-ratio (chain-assoc-get 'line-width props)))
           arg)))

%% Expressive indications -----------------------------------------%

#(define-markup-command (indic layout props arg) (markup?)
    (interpret-markup layout props
    (markup #:rounded-whiteout 1 #:small #:italic arg)))

%% Dynamics -------------------------------------------------------%

%%% This function was provided by Graham Percival.
#(define (make-dynamic-extra dynamic string)
     (make-music
       'AbsoluteDynamicEvent
       'tweaks
         ;; calculate centering for text
         (list (cons (quote X-offset)
           (+ -0.5 (* -0.5 (string-length dynamic)))))
       'text
         (markup #:rounded-whiteout 1
           #:line (
               dynamic
               #:hspace -0.3
               #:normal-text #:italic string))
      ))

#(define (make-extra-dynamic string dynamic)
     (make-music
       'AbsoluteDynamicEvent
       'tweaks
         ;; calculate centering for text
         (list (cons (quote X-offset)
           (+ -0.5 (* -0.5 (string-length dynamic)))))
       'text
         (markup #:rounded-whiteout 1
           #:line (
               #:normal-text #:italic string
               #:hspace -0.3
               #:dynamic dynamic))
      ))

%%%%%%%%%%%%%%%%%%%%%%%%%% In-score Text %%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Non-standard synamics ------------------------------------------%

fpp = #(make-dynamic-script "fpp")
sfpp = #(make-dynamic-script "sfpp")
sffz = #(make-dynamic-script "sffz")


%% Composite Dynamics ---------------------------------------------%

% because of the use of a music-function,
% non-predefined composite dynamics have to be entered *before*
% the affected beat (unlike standard or predefined dynamics).
cmb =
#(define-music-function (parser location dyn str) (string? string?)
  (make-music 'SequentialMusic 'elements
    (list
      (make-music 'OverrideProperty
                  'symbol 'DynamicText
                  'grob-property-path (list 'self-alignment-X)
                  'grob-value -0.6 'once #t)
      (make-music 'AbsoluteDynamicEvent
                  'text
                  (markup #:rounded-whiteout 1
                          #:line (#:dynamic dyn
                          #:hspace .5
                          #:text #:medium #:italic str))))))

bmc =
#(define-music-function (parser location str dyn) (string? string?)
  (make-music 'SequentialMusic 'elements
    (list
      (make-music 'OverrideProperty
                  'symbol 'DynamicText
                  'grob-property-path (list 'self-alignment-X)
                  'grob-value -0.6 'once #t)
      (make-music 'AbsoluteDynamicEvent
                  'text
                  (markup #:rounded-whiteout 1
                          #:line (#:text #:medium #:italic str
                          #:hspace .5
                          #:dynamic dyn))))))

%% Predefined commands

ffsubito = #(make-dynamic-extra "ff" "subito")
fsubito = #(make-dynamic-extra "f" "subito")
fsempre = #(make-dynamic-extra "f" "sempre")
mfsubito = #(make-dynamic-extra "mf" "subito")
fmolto = #(make-dynamic-extra "f" "molto")
psempre = #(make-dynamic-extra "p" "sempre")
ppsempre = #(make-dynamic-extra "pp" "sempre")
mpsempre = #(make-dynamic-extra "mp" "sempre")
mfsempre = #(make-dynamic-extra "mf" "sempre")
mfintenso = #(make-dynamic-extra "mf" "intenso")
mpsostenuto = #(make-dynamic-extra "mp" "sostenuto")
psubito = #(make-dynamic-extra "p" "subito")
pdolce = #(make-dynamic-extra "p" "dolce")
ppdolce = #(make-dynamic-extra "pp" "dolce")
pleggiero = #(make-dynamic-extra "p" "leggiero")
ppleggiero = #(make-dynamic-extra "pp" "leggiero")
ppsubito = #(make-dynamic-extra "pp" "subito")
mfleggiero = #(make-dynamic-extra "mf" "leggiero")
piuf = #(make-extra-dynamic "più" "f")
pocof = #(make-extra-dynamic "poco" "f")


%% Text indications -----------------------------------------------%

ind =
#(define-music-function (parser location text music) (string? ly:music?)
   (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                  (list (make-music 'TextScriptEvent 'direction 1
                  'text (markup #:indic text))))))
   music)

nind =
#(define-music-function (parser location texte)
(string? )
(make-dynamic-script
              (markup  #:text #:indic texte)))

%% Predefined commands

ten =
#(define-music-function (parser location music) (ly:music?)
   (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                  (list (make-music 'TextScriptEvent 'text
                    (markup #:translate (cons 4 0)
                    #:indic "(ten.)"))))))
                 music)


pizz =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"pizz." $music #})

arco =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"arco" $music #})

flaut =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"flautando" $music #})

simile =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"simile" $music #})

loco =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"loco" $music #})

ordin =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"(ordin.)" $music #})

meno =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"meno" $music #})

jet =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"jeté" $music #})

%%%%%%%%%%%%%%%%%%%%%%%%% Output options %%%%%%%%%%%%%%%%%%%%%%%%%%%

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'delete-intermediate-files #t)

%%%%%%%%%%%%%%%%%%%%%%%%%% Common Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Paper size -----------------------------------------------------%
% #(set-default-paper-size "a4" 'landscape)

%% Page breaking --------------------------------------------------%
#(define page-breaking ly:page-turn-breaking)

%% Staff size -----------------------------------------------------%
#(set-global-staff-size 17)

\layout {
%% Spacing Variables ----------------------------------------------%
  indent = 2.0\cm

%% Notation Rules -------------------------------------------------%
  \context {
    \Score
    \override TrillPitchAccidental #'avoid-slur = #'inside
    \override TimeSignature #'style = #'()
    \override SystemStartBracket #'collapse-height = #1
    %\override SystemStartBrace #'collapse-height = #1
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t
    scriptDefinitions = #modern-scripts
    autoBeamSettings = #modern-auto-beam-settings
    autoAccidentals = #modern-accidentals-style
    autoCautionaries = #modern-cautionaries-style
    extraNatural = ##f
    ignoreMelismata = ##t
    tieWaitForNote = ##f %% uglier, but safer
  }

%% Look and feel --------------------------------------------------%
  \context {
    \Score
    \override Accidental #'minimum-X-extent = #'(-0.2 . 0 )
    \override BarLine #'hair-thickness = #1.2
    \override OttavaBracket #'dash-fraction = #0.3
    \override OttavaBracket #'dash-period = #0.9
    \override TextSpanner #'dash-fraction = #0.3
    \override TextSpanner #'dash-period = #0.9
    \override LyricText #'self-alignment-X = #-0.5
    \override DynamicText #'self-alignment-X = #-.4
    markFormatter = #format-mark-box-letters
    subdivideBeams = ##t
    beatLength = #(ly:make-moment 1 8)
  }
  \context {
    \Staff

    \override VerticalAxisGroup #'remove-empty = ##f
  }
  \context {
    \Voice
    \type Engraver_group
    \name GhostVoice
    \remove Multi_measure_rest_engraver
    \remove Rest_engraver
  }
  \context {
    \Score
    \accepts GhostVoice
  }
%%-----------------------------------------------------------------%
}

mesures = {
  \time 2/4
  \tempo "Libre"
  \partial 4 r4
            R2
  \time 3/4 R2.
  \time 4/4 R1    \bar "||"
  \tempo "Andantino"
\hideNotes \repeat unfold 512 fa4
}

sopUn = \relative {
 % fad8 fad dod' dod re fad |
 % dod4 r8 do si la |
 % sol4 r r2 |

}

sopDeux = \relative {
 % fad8 fad dod' dod re fad |
 % dod4 r8 do si la |
 % sol4 r r2 |
}

sopTrois = \relative {
  r4
}

sopQuatre = \relative {
  r4
}

altUn = \relative {
%  r4 R2 R2.
%  r2 r8 do4.
%  fad,1
}

altDeux = \relative {
  r4
}

altTrois = \relative {
  r4
}

altQuatre = \relative {
  r4
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = "Soprano Un"
        shortInstrumentName = "Sop.1"
      } \new Voice = "sop1" \makePart \sopUn
      \new Staff \with {
        instrumentName = "Soprano Deux"
        shortInstrumentName = "Sop.2"
      } \new Voice = "sop2" \makePart \sopDeux
      \new Staff \with {
        instrumentName = "Alto Un"
        shortInstrumentName = "Alt.1"
      } \new Voice = "alt1" \makePart \altUn
      \new Staff \with {
        instrumentName = "Alto Deux"
        shortInstrumentName = "Alt.2"
      } \new Voice = "alt2" \makePart \altDeux
    >>
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = "Soprano Trois"
        shortInstrumentName = "Sop.3"
      } \new Voice = "sop3" \makePart \sopTrois
      \new Staff \with {
        instrumentName = "Soprano Quatre"
        shortInstrumentName = "Sop.4"
      } \new Voice = "sop4" \makePart \sopQuatre
      \new Staff \with {
        instrumentName = "Alto Trois"
        shortInstrumentName = "Alt.3"
      } \new Voice = "alt3" \makePart \altTrois
      \new Staff \with {
        instrumentName = "Alto Quatre"
        shortInstrumentName = "Alt.4"
      } \new Voice = "alt4" \makePart \altQuatre
    >>
  >>
}

