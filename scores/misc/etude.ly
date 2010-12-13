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
    \consists Page_turn_engraver
    minimumPageTurnLength = #(ly:make-moment 3 2)
    \override VerticalAxisGroup #'remove-empty = ##f
  }
%%-----------------------------------------------------------------%
}

music = {
  \relative {
    \time 2/4
    \tempo "Presto possibile"
    \ind #"secco" la16\f la la la la la la la |
    la la la la la la la la |
    la la la la \ind #"toujours détaché" sib\< la sib do |
    mib->\> sib do la la\! la la la |
    la la la la sib-> la la la |
    sib-> lab lab lab la\< do sib mib |
    <fa solb>\sfz sol, sol sol sol sol <fa' solb>-> sol, |
    sol sol <fa' solb>-> sol, sol sol sol sol |
    <fa' solb>-> <fa solb>-> <fa solb>-> sol,
    sol sol <fa' solb>-> sol, |
    sol sol <fa' solb>->\> solb solb lab, lab lab |
    fa'-> lab, lab lab lab solb' la, la |
    la fa' lab, solb' la,\mp la la la |
    la\< do sib mib <fa solb>->\> mib sib do |
    la\< do sib mib fa solb\! la, la |
    mib' mib <fa solb>-> mib mib\< do fa solb |
    <sold la>\f <sold la> <sold la> <sold la>
    <la si>-> <sold la> <sold la> <sold la> |
    <sold la> <sold la> <la si>-> <sold la>
    <sold la> <sold la> <sold la> <sold la> |
    \ind #"molto staccato"
    <sold la>\mf <la si> la <sold la> <la si> la la la |
    <la si> la <sold la> <la si> la <fa la> <la si> la |
    la <fa la> la la la <fa la>\< <fad la> <sold la> |
    <fad dod'>\sfz la, la la la la la <fa' dod'> |
    la, la la la la <fa' dod'> la, la |
    la la <fa' dod'> la, sib-> la la la |
    sib la sib la sol la la la |
    sol\< la do sib mib sib do <fa solb> |
    sol,\f sol <fa' solb>-> sol, sol sol <fa' solb>-> sol, |
    sol sol <re' mib>-> sol, <mi' fa>-> sol, <fa' solb>-> sol, |
    la\fp \< do sib mib fa sold fad si dod mi\! fa,\< sold si dod mi\! fad, |
    si do, sib mib dod'\< mi re sol |
    %%%%%%
    \time 3/4
    \pl {\cmb #"ff" #"ample" la,4_\leftpizz } la' r8 <dod, la'>4.---> |
    \pl {dod8( mi) si( re) sold,( dod)}
    {la'4-- sol-- mi--} <dod la'>4---> la8_\leftpizz <dod la'>4.--\sf |
    \pl {si8( re) fad,( si) do,( mib)} {sol'4-- re-- lab--}
    \ind #"détaché ample" <mi dod' la'>8 <mi dod'>-. <re si' sol'> <re si'>-.
    <si sold' mi'> <si sold'>-. |
    <red si' sol'>\< <red si'>-. <do sold' mi'> <do sold'>-. <sol mib' re'> <sol mi'>-. |
    <sol? sold' fad' la>4--->\f \t {<dod' la'>8\< mi <fad sold>}
    \t {<red la'> <la do'> <la sib'>} |
    %%%%%%
    \time 4/4
    <mib' mib'>16->\sfpp \ind #"très léger" mib' mib mib mib mib mib mib
    mib mib mib mib mib-> mi re dod |
    mib-> mib mib mib mib mib mib-> mi
    dod do mib-> mib mib-> mi do sib |
    mib-> mi mib re dod sib\< mi fa
    sol\mp lab\> sol fad red mi red dod |
    do la\! sol'\> lab sol mi mib re
    si\! lab'\> mi mib re reb sib la' |
    \time 3/4
    fad,->\p fad fad fad fad sol mi red fad-> sol fa re |
    do-> fad fad,\mp fad fad-> sol fa mi sold-> fad fad fad |
    fad\< fa la lad si\! sold fad fa mib\< fad sib, do |
    \time 2/4
    la\f la la la sib la do mib |
    \time 3/4
    la do sib mib fa\< sold fad si sold si re dod\! |
    %%%%%%
    \time 5/4
    \tempo "Poco meno mosso"
    \pl {r4 sol,,8_\leftpizz re'_\leftpizz la'4_\leftpizz r8
      re,_\leftpizz la'4_\leftpizz s1*5/4
      r4 sol,8_\leftpizz re'_\leftpizz la'4_\leftpizz r8
      re,_\leftpizz la'4_\leftpizz s1*5/4
      r4 sol,8_\leftpizz re'_\leftpizz la'4_\leftpizz r
      <re, la'>_\leftpizz
      \time 3/4
      r4 sol,_\leftpizz r r re'_\leftpizz r
      r sol,_\leftpizz re'_\leftpizz
      r la'_\leftpizz r r sol,8_\leftpizz re'_\leftpizz la'4_\leftpizz
      s2.
      r4 sol,8_\leftpizz re'_\leftpizz la'4_\leftpizz
      sol,_\leftpizz <re' la'>_\leftpizz r
    r re_\leftpizz r sol,_\leftpizz r re'_\leftpizz r8 re_\leftpizz}
    {\ten mi''1*5/4\ppsubito ( ~ mi4 mib)\< \ind #"espr." do2(\p\> si4)
      fad'1*5/4\! (~ fad2 sol4) si,4.( lad8)
      \ind #"poco più" dod1*5/4~
      \time 3/4
      dod2 re4 dod4.( si8) dod( lad) dod2~ dod8 r
      fa2\mp\> mi4 dod2.\!(~ dod8 re) si( dod lad fad')
    mi,2.\p~ mi2 fad4 mi2 re4\>~ re mi2~ mi4\!}
    \pizz mib,8 do sib dod
    %%%%%%
    \time 4/4
    \pl la'4_\leftpizz \pp {<re, la'\harmonic \parenthesize la'>16
    <la'\harmonic> <la\harmonic> <la\harmonic>}
    <la\harmonic> <la\harmonic> <la\harmonic> <la\harmonic>
    <la\harmonic> <la\harmonic> <la\harmonic> <la\harmonic>
    <la\harmonic> <la\harmonic> <la\harmonic> <la\harmonic> |
    \time 3/4
    <re,\harmonic la'\harmonic \parenthesize re' \parenthesize la'>
    <re\harmonic la'\harmonic> <re\harmonic la'\harmonic> <re\harmonic la'\harmonic>
    <re\harmonic la'\harmonic> <re\harmonic la'\harmonic>
    <re\harmonic la'\harmonic> <re\harmonic la'\harmonic>
    <re\harmonic la'\harmonic> <re\harmonic la'\harmonic>
    <re\harmonic la'\harmonic> <re\harmonic la'\harmonic> |
    %%%%%%
    \time 2/4
    \tempo "Tempo I"
    la\sfp la la la la la la la |
    sib\< la mib' do fa\> solb mib sib |
    la\! la la la la la la la |
    sib\< la do mib fa\! lab, lab solb' |
    sol,\mp sol <fa' solb> sol, sol <fa' solb> sol, <fa' solb> |
    sol, sol <red' mi>->\< sol, <mi' fa>-> sol, <fa' solb>->\! sol, |
    sol sol <la' sib>->\< sol, <si' do>-> sol, <do' reb>-> sol, |
    sol\f sol <sold' do mi> sol, sol <sold' do mi> sol, sol |
    <fad' si mi>-> sol, sol sol sold sold sold sold |
    <re' la' mi'>-> la la la <re la' mi'>-> la la la |
    la la <re la' mi'>-> la <la re> <la re> <la re> <la re> |
    <re la'>\mp\< <mib la> <mi la> <fa la> <fad la> <sol la> <sold la> <la la>\! |
    <la mi'>\mf\< <sib mi> <si mi> <do mi> <dod mi> <re mi> <red mi> <red mi> |
    <red mi>\ff <re, mib> <re mib> <re mib> <red' mi> <red mi> <red mi> <re, mib> |
    <re mib> <sold la> <re mib> <re mib> <red' mi> <red mi> <red mi> <red mi> |
    la,--\sfp\< sib do mib fa\> do sib dod |
    la--\< sib do mib fa fad sold si\! |
    la,--\< do sib mib fa\> mib sib do |
    la->\< la sib-> sib do-> do mib-> mib |
    fa-> fa fad-> fad sold-> sold si-> si |
    \ind #"sonore" <re, dod'>\ff <re dod'> <re dod'> <sol, re'>
    <sol re'> <sol re'> <re' dod'> <re dod'> |
    <re dod'> <sol, re'> <sol re'> <sol re'> <fa' mi'> <fa mi'> <fa mi'> <sol, re'> |
    <fa' mi'>\< <lab sol'>\! <sol, re'> <sol re'> <lab' sol'> <sol, re'>\< <sol re'> <sol re'> |
    <solb'' fa'>\! <solb fa'> <solb fa'> <solb fa'> <solb fa'> <solb fa'> <solb fa'> <solb fa'> |
    %%%%%%
    la,->\p do sib mib fa sold fad si |
    la,->\mf re si mi fa sib sol do |
    la,->\f re do mib fa si sold dod |
    la,->\< fa' re sol la reb sib re |
    mib\fff mi, mib' mib mib mi, mib' mib |
    <la,, mi'> <la mi'> <la mib''>\< <la mib''>
    <la mi''> <la mi''> <la fad''> <la fad''>\! |
    %%%%%%
    \time 3/4
    r8 <la re\harmonic \parenthesize la''>16\ppsubito <la re\harmonic>
    r <la la'\harmonic> <la la'\harmonic> <la la'\harmonic>
    r8 <re, la'\harmonic \parenthesize la'>16 <re la'\harmonic> |
    \time 4/4
    <re la'\harmonic> <re la'\harmonic> r la'\CaV\p la\CaV la\CaV la\CaV la\CaV
    r8 la,16\f\< la la la la la\! \bar "|."
  }

}
  \header {
    title = "Hachoir"
    subtitle = "Étude de virtuosité pour violon seul"
    composer = "Valentin Villenave"
  }
\score {
  \new Staff \with { instrumentName = "Violon" }
  \music

}

