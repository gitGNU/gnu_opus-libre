%% Avril 2009, premier test.

%% Ce fichier est à compiler en utilisant le logiciel Libre
%% GNU LilyPond (www.lilypond.org).

\version "2.12"

\include "italiano.ly"

\header {
  title = "Danse" % à définir.
}

%% Options de compilation -----------------------------------------%
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'delete-intermediate-files #t)
#(set-global-staff-size 16)

%% Notation des altérations ---------------------------------------%
#(define modern-accidentals-style
     `(Staff ,(make-accidental-rule 'same-octave 0)
             ,(make-accidental-rule 'any-octave 0)
             ,(make-accidental-rule 'same-octave 1)
                   ,neo-modern-accidental-rule))
#(define modern-cautionaries-style
     `(Staff ,(make-accidental-rule 'same-octave 1)
             ,(make-accidental-rule 'any-octave 1)))

%% Ponctuation ----------------------------------------------------%
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

det = % I call these "det" as in "dÃ©tachÃ©".
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

%% Indications textuelles -----------------------------------------%
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

#(define-markup-command (indic layout props arg) (markup?)
    (interpret-markup layout props
    (markup #:rounded-whiteout 1 #:small #:italic arg)))

ind =
#(define-music-function (parser location text music) (string? ly:music?)
   (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                  (list (make-music 'TextScriptEvent 'direction 1
                  'text (markup #:indic text))))))
   music)

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

%% Nuances composites ---------------------------------------------%

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

sffz = #(make-dynamic-script "sffz")

fample = #(make-dynamic-extra "f" "ample")
fsempre = #(make-dynamic-extra "f" "sempre")
mfsostenuto = #(make-dynamic-extra "mf" "sostenuto")


%% Mise en page ---------------------------------------------------%
\layout {
  \context {
    \type Engraver_group
    \name TopLine
  }
  \context {
    \Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
  }
  \context {
    \Score
    \accepts TopLine
    \override SystemStartBrace #'collapse-height = #1
    autoAccidentals = #modern-accidentals-style
    autoCautionaries = #modern-cautionaries-style
    extraNatural = ##f
  }
}

%% Définitions de la musique --------------------------------------%

mesures = { %% Structure de la pièce
  \time 2/2
  \tempo "Allegro vivo" 2 = 84
  R1*10
  \time 1/2
  R2
  \time 2/2
  R1*3
  \time 1/2
  R2
  \time 2/2
  R1*7 \bar "||"
}

marimba = \relative { %% Marimba (une seule portée pour l'instant)
  <sol' do>8\mfsostenuto <re' sol> <re sol> <sol, do>
  <re' sol> <sol, do> <sol do> <re' sol>
  \repeat unfold 9 {
    <sol, do> <re' sol> <re sol> <sol, do>
    <re' sol> <sol, do> <sol do> <re' sol>
  }
  <sol, do>\< <re' sol> <re sol> <sol, do> |
  <re' sol>\fp <sol, do> <sol do> <re' sol>
  <sol, do> <re' sol> <re sol> <sol, do> |
  <re' sol> <sol, do> <sol do> <re' sol>
  <sol, do> <re' sol> <re sol> <sol, do> |
  <re' sol> <sol, do> <sol do> <re' sol>
  <sol, do> <re' sol> <re sol> <sol, do> |
  <re' sol>\< <sol, do> <sol do> <re' sol> |
  <fa, sib>\f <mib' lab> <mib lab> <fa, sib>
  <mib' lab>-> <fa, sib> <fa sib> <mib' lab>
  <fa, sib> <mib' lab> <mib lab> <fa, sib>
  <mib' lab> <fa, sib> <fa sib> <mib' lab>
  <fa, sib> <mib' lab>-> <fad, si> <mi' la>->
  <red, sold>\< <dod' fad>-> <mi, la> <re' sol>-> |
  <fa, sib>\! <mib' lab> <mib lab> <fa, sib>
  <mib' lab>-> <fa, sib> <fa sib> <mib' lab> |
  <fa, sib> <mib' lab> <mib lab> <mi la>->
  <sol, do> <sol do> <fa' sib>-> <fad, si> |
  <fad si> <re' sol>-> <fa, sib> <fa sib>
  <dod' fad>-> <mi, si'> <re la'> <re' sol>-> |
  <mib, lab> <mib lab> <mi' la>\< <re sol>
  <fa, do'> <re' sol> <do, sol'> <la' re> |
  lab4->\! r r2 |
  lab,8->\pp sol lab-> sol sol lab-> sol sol |
  sol lab-> sol sol sol sol lab-> sol |
  \simile sol sol lab sol sol lab sol lab |
  sol sol lab sol sol sol lab sol |
  sol sol sol lab sol sol sol lab |
  sol sol lab sol lab sol sol lab |
  sol sol sol lab sol sol sol sol |
}

harpe =
<< \new Staff %% main droite
\relative {
  <sol' do sol'>4--\fample <do, sol' re'>-- <sol' re' sol>-- <re sol do>--
  \simile <sol do sol'> <do, sol' re'> <sol' re' sol> <re sol do>
  \repeat unfold 6 {
    <sol do sol'> <do, sol' re'> <sol' re' sol> <re sol do>
  }
  \repeat unfold 7 {
    <do' sol'> <sol re'>
  }
  <sol do sol'>\fsempre <do, sol' re'> <sol' re' sol> <re sol do>
  <sol do sol'> <do, sol' re'> <sol' re' sol> <re sol do> |
  <sol re' sol> <re sol do> |
  <do' sol'>\laissezVibrer r r2\f |
  R1*3 \clef bass |
  <sib, mib>8\< <lab reb> <sol do> <fa sib>4--\ff <lab reb>-- <sol do>8->[ |
  <fa sib>-> <mi! la!>->] r sib'([ fa) do'( re, sol) |
  la( mi)] s2.\sf\laissezVibrer
  sol2\laissezVibrer r R1*3
}
\new Staff %% main gauche
\relative {
  \clef bass
  R1*8
  r4 \ind #"sonore" <lab,, lab'>4.->-- <sib sib'>->-- |
  <fa fa'>4->-- r r sib'-- |
  sol'8\< fa, sol do |
  re1->--\sfz\laissezVibrer |
  R1*2 R2
  r2 \ottava #-1
  << {
    <mib, lab>4.-- <fa sib>8--~
    <fa sib>4 <do fa>-- <re sol>-- <mib lab>8-> <fa sib>->~|
    <fa sib>8 <mib lab> <re sol> <do fa>
    <re sol> <fa sib> <sol do> <lab reb>->~ |
    <lab reb>2\laissezVibrer
  } \\ {
    <mib, lab>4.-- <fa sib>8--~
    <fa sib>4 <do fa>-- <re sol>-- <mib lab>8-> <fa sib>->~|
    <fa sib>8 <mib lab> <re sol> <do fa>
    <re sol>\< <fa sib> <sol do> <lab reb>->\!~ |
    <lab reb>2\laissezVibrer
  } >> \ottava #0 r2 |
  <sib' mib>8 <lab reb> <sol do> <fa sib>4-- <lab reb>-- <sol do>8->[ |
  <fa sib>-> <mi! la!>->] r sib'([ fa) do'( re, sol)] |
  la4-- <reb,, reb'>2.->--\laissezVibrer |
  sol2\laissezVibrer r R1*3
}
>>

trombone = \relative { %% trombone ténor
  \clef tenor %% Clef d'Ut4
  R1*2 r4 r8 sol-.\< do-. re-. sol4--\mf~ sol2 r |
  r2 r8 sol,-.\f do-. re-. |
  sol4-- fad-- do8-> re-> r sol,-.[ |
  do-. re-. sol( sol,)] fad'([ sol) fad-. do-> |
  re->] \ten lab--~ lab2.~ | lab4 r r2 |
  R1 R2 R1
  sol8-.\f do-. re-. sol4-- fad-- do8->[ |
  re->] r sol,-.[ do-. re-.] sol([ sol,) re'-.]
  mi->[\< fad-> sol->] \ten lab--\!~ |
  lab2. r4 |
  R1*2 \clef bass
  r8 sol,,-.\mp do-. fa4-- do8-.\< \clef tenor mib'-. sib-. |
  lab'2.--\f r4 | R1*2
}

violoncelle = \relative {
  \clef bass %% pizz
  R1*2 \pizz do,,8\mp sol' re' sol r2 |
  r reb8\mf solb lab reb |
  r2 r8 sol,,\f re' do' |
  sol'4 r r r8 sol,, |
  re' do' sol'4 r2 | r8 << {
  \arco <sol,, lab'>8\sff~<sol lab'>2.} \\ %% arco fff
  {\ten lab8~lab2.} >> |
  r4 lab4.->--\ff sib->-- | %% (grands coups d'archet)
  fa8->-- r fa->[\< sol-> lab->] sib4->--\! lab8->[ |
  sol-> fa-> sol-> do,->] |
  re2.->-- r4 | R1*2 R2
  \pizz <sol re' do'>4\f \arpeggUp <sol' fa'>\arpeggUp
  <sol, re' do'>\arpeggUp <sol' fa'>\arpeggUp
  \simile <sol, re' do'> <sol' fa'>
  \repeat unfold 3 { %% pizz
    <sol, re' do'> <sol' fa'>
  }
  <sol do sol'>\arpeggUp \simile <sol re' sol>
  \repeat unfold 5 {
    <sol do sol'> <sol re' sol>
  }
  <sol do sol'> r r2 |
  \ind #"arco leggiero" sol8-. sol-. sol-. sol-.
  sol-. sol-. sol-. sol-. | \simile sol
  \repeat unfold 55 sol %% arco leggiero
}


%% La partition ---------------------------------------------------%
\score {
  <<
    \new TopLine \mesures
    \new PianoStaff
      \with {
        instrumentName = Harpe
        shortInstrumentName = "Hrp."
      } \harpe
    \new PianoStaff
      \with {
        instrumentName = Marimba
        shortInstrumentName = "Mar."
      } \marimba
    \new Staff
      \with {
       instrumentName = Trombone
       shortInstrumentName = "Trbn."
      } \trombone
    \new Staff
      \with {
        instrumentName = Violoncelle
        shortInstrumentName = "Vlc."
      } \violoncelle
  >>
}
