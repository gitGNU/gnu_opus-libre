%-- Trois Études potentielles -------------------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"


\header {
  title = "Trois Études potentielles"
  subtitle = "pour divers instruments"
  subsubtitle = "d’après la pseudo-quenine d’ordre 10 de Georges Perec"
  date = "juin 2012"
  composer = "Valentin Villenave"
}

t =
#(define-music-function (x) (ly:music?)
   #{ \tuplet 3/2 $x #})

gammesUp = {
  la16-- r
  la( si) r
  la(_\> si do')_\! r
  la(_\> si do' re')_\! r
  la(_\> si do' re' mi')_\! r
  la_"simile" si do' re' mi' fa' r
  la si do' re' mi' fa' sol' r
  la si do' re' mi' fa'_\< sol' dod''_\! r
  la si do' re' mi' fa' sol' dod'' red'' r
  la si do' re' mi' fa' sol' dod'' red'' fad''^> r8

  la16 sib r
  la sib do' re' r
  la sib do' re' mi' fa' r
  la sib do' re' mi' fa' sold' dod'' r
  la sib do' re' mi' fa' sold' dod'' red'' fad'' r
  la r
  la sib do' r
  la sib do' re' mi' r
  la sib do' re' mi' fa' sold' r
  la sib do' re' mi' fa' sold' dod'' red'' r8

  la16 si dod' re' r
  la si dod' re' mi' fa' sol' lab' r
  la r
  la si dod' re' mi' r
  la si dod' re' mi' fa' sol' lab' sib' r
  la si r
  la si dod' re' mi' fa' r
  la si dod' re' mi' fa' sol' lab' sib' mib'' r
  la si dod' r
  la si dod' re' mi' fa' sol' r8

  la16 si do' re' mi' fad' sol' lab' r
  la si do' re' mi' r
  la si r
  la si do' re' mi' fad' sol' lab' sib' mib'' r
  la si do' re' mi' fad' sol' r
  la si do' re' r
  la r
  la si do' re' mi' fad' sol' lab' sib' r
  la si do' re' mi' fad' r
  la si do' r8

  la16 si do' mib' fa' r
  la si do' mib' fa' sol' lab' sib' dod'' fad'' r
  la si do' mib' r
  la si do' mib' fa' sol' lab' sib' dod'' r
  la si do' r
  la si do' mib' fa' sol' lab' sib' r
  la si r
  la si do' mib' fa' sol' lab' r
  la r
  la si do' mib' fa' sol' r8

  la16 si do' mib' fa'_\< sol' lab' sib' dod'' fad''_\! r
  la si do' mib' fa' sol' lab' sib' dod'' r
  la si do' mib' fa' sol' lab' sib' r
  la si do' mib' fa' sol' lab' r
  la si do' mib' fa' sol' r
  la si do' mib' fa' r
  la si do' mib' r
  la si do' r
  la si r
  la r8

  la16 si do' re' mi' fad' sol' lab' sib' r
  la si do' re' mi' fad' sol' r
  la si do' re' mi' r
  la si do' r
  la r
  la si do' re' mi' fad' sol' lab' sib' mib'' r
  la si do' re' mi' fad' sol' lab' r
  la si do' re' mi' fad' r
  la si do' re' r
  la si r8

  la16 si dod' re' mi' fa' sol' r
  la si dod' r
  la si dod' re' mi' fa' sol' lab' sib' mib'' r
  la si dod' re' mi' fa' r
  la^> si^> r
  la si dod' re' mi' fa' sol' lab' sib' r
  la si dod' re' mi' r
  la^> r
  la si dod' re' mi' fa' sol' lab' r
  la^> si^> dod'^> re'^> r8

  la16 sib do' r
  la sib do' re' mi' fa' r
  la sib do' re' mi' fa' sold' dod'' red'' r
  la r
  la sib do' re' r
  la sib do' re' mi' fa' sold' r
  la sib do' re' mi' fa' sold' dod'' red'' fad'' r
  la sib r
  la sib do' re' mi' r
  la sib do' re' mi' fa' sold' dod'' r8

  la16 si do' re' mi' fa' r
  la r
  la si do' re'_"dolce" mi' fa' sol' r
  la si r
  la si do' re' mi' fa' sol' dod'' r
  la si do' r
  la si do' re' mi' fa' sol' dod'' red'' r
  la si do' re' r
  la si do' re' mi' fa' sol' dod'' red'' fad'' r
  la( si do' re' mi') r8
}

gammesDyn = {
  \tempo "Allegro non troppo" 4 = 92-120
  \time 3/4
  s2.*3\mf
  \time 2/4
  s2 s2\cresc
  \time 3/4
  s2.
  \time 1/8
  s8\!
  \mark \default
  \time 3/4
  s2.*3\mp
  \time 2/4
  s2*2
  \time 3/4
  s2. \cresc
  \time 1/8
  s8\!
  \mark \default
  \time 3/4
  s2.*3\p
  \time 2/4
  s2*2
  \time 3/4
  s2.\>
  \time 1/8
  s8\!
  \mark \default
  \time 3/4
  s2.\p s2.\< s2.\>
  \time 2/4
  s2*2\!
  \time 3/4
  s2.
  \time 1/8
  s8
  \mark \default
  \time 3/4
  s2.*3\mp
  \time 2/4
  s2*2
  \time 3/4
  s2.
  \time 1/8
  s8
  \mark \default
  \time 3/4
  s2.*3\mf
  \time 2/4
  s2*2\dim
  \time 3/4
  s2.\!
  \time 1/8
  s8
  \mark \default
  \time 3/4
  s2.*3\p \cresc
  \time 2/4
  s2*2\f
  \time 3/4
  s2.
  \time 1/8
  s8
  \mark \default
  \time 3/4
  s2.*3\ff
  \time 2/4
  s2*2\cresc
  \time 3/4
  s2.\!
  \time 1/8
  s8
  \mark \default
  \time 3/4
  s2.*3\f
  \time 2/4
  s2*2
  \time 3/4
  s2.\cresc
  \time 1/8
  s8\!
  \mark \default
  \time 3/4
  s2.*3\p
  \time 2/4
  s2*2\dim
  \time 3/4
  s2.\pp
  \time 1/8
  s8
}

gammesDown = {
  la16-- r
  la( si) r
  la(\> si do' re')\! r
  la( si do' re' mi' fa' sol' dod''->-.) r
  la(\> si do' re' mi'\!) r
  la si do' re' mi' fa' sol' dod''\< red'' fad''\! r
  la si do' re' mi' fa' sol' dod'' red'' r
  la( si do' re' mi' fa' sol'-.) r
  la( si do') r
  la( si do' re' mi' fa') r8

  la16 sib r
  la sib do' re' r
  la sib do' re' mi' fa' sold' dod'' r
  la sib do' re' mi' r
  la sib do' re' mi' fa' sold' dod'' red'' fad'' r
  la sib do' re' mi' fa' sold' dod'' red'' r
  la sib do' re' mi' fa' sold' r
  la sib do' r
  la sib do' re' mi' fa' r
  la r8

  la16 si dod' r
  la si dod' re' mi' fa' r
  la r
  la si r
  la si dod' re' r
  la si dod' re' mi' fa' sol' lab' r
  la si dod' re' mi' r
  la si dod' re' mi' fa' sol' lab' sib' mib'' r
  la si dod' re' mi' fa' sol' lab' sib' r
  la si dod' re' mi' fa' sol' r8

  la16 si do' re' r
  la si do' re' mi' fad' sol' lab' r
  la si do' re' mi' r
  la si do' re' mi' fad' sol' lab' sib' mib'' r
  la si do' re' mi' fad' sol' lab' sib' r
  la si do' re' mi' fad' sol' r
  la si do' r
  la si do' re' mi' fad' r
  la r
  la si r8

  la16 si do' mib' fa' r
  la si do' mib' fa' sol' lab' sib' dod'' fad'' r
  la si do' mib' fa' sol' lab' sib' dod'' r
  la si do' mib' fa' sol' lab' r
  la si do' r
  la si do' mib' fa' sol' r
  la r
  la si r
  la si do' mib' r
  la si do' mib' fa' sol' lab' sib r8

  la16 si do' mib' fa' sol' r
  la r
  la si r
  la si do' mib' r
  la si do' mib' fa' sol' lab' sib' r
  la si do' mib' fa' r
  la si do' mib' fa' sol' lab' sib' dod'' fad'' r
  la si do' mib' fa' sol' lab' sib' dod'' r
  la si do' mib' fa' sol' lab' r
  la si do' r8

  la16 si do' re' mi' fad' sol' r
  la si do' r
  la si do' re' mi' fad' r
  la r
  la si r
  la si do' re' r
  la si do' re' mi' fad' sol' lab' r
  la si do' re' mi' r
  la si do' re' mi' fad' sol' lab' sib' mib'' r
  la si do' re' mi' fad' sol' lab' sib' r8

  la16 si dod' re' mi' fa' sol' lab' r
  la si dod' re' mi' r
  la si dod' re' mi' fa' sol' lab' sib' mib'' r
  la si dod' re' mi' fa' sol' lab' sib' r
  la si dod' re' mi' fa' sol' r
  la si dod' r
  la si dod' re' mi' fa' r
  la r
  la si r
  la si dod' re' r8

  la16 sib do' re' mi' fa' sold' dod'' red'' r
  la sib do' re' mi' fa' sold' r
  la sib do' r
  la sib do' re' mi' fa' r
  la r
  la sib r
  la sib do' re' r
  la sib do' re' mi' fa' sold' dod'' r
  la sib do' re' mi' r
  la sib do' re' mi' fa' sold' dod'' red'' fad'' r8

  la16 si do' re' mi' fa' sol' dod'' red'' fad'' r
  la si do' re' mi' fa' sol' dod'' red'' r
  la si do' re' mi' fa' sol' r
  la si do' r
  la si do' re' mi' fa' r
  la r
  la si r
  la si do' re' r
  la si do' re' mi' fa' sol' dod'' r
  la( si do' re' mi') r8 \bar "|."
}

gigue = \relative do' {
  \clef bass
  \set Staff.instrumentName = "Vlc."
  \time 2/4
  \tempo "Mosso, quasi tarentella"
  \t {r4 re,8-0(\p^"leggiero"}
  \t {mi4--) re8(}
  \t {fa4--) re8(}
  \t {sol4--) re8(}
  \t {si'4--) re,8(}
  \t {sold4--)_\< re8(}
  \t {dod'4--)\mf re,8(}
  \t {do'4--) re,8(}
  \t {sib'4--)\> re,8(}
  \t {fad4) re8-.\!}
  \t {la'4-0->^(\sfz re,8)}
  \t {<re la'>-. <re la'>-. <re la'>-.}
  \t {<re la'>4->-- <re la'>8-.}
  \t {<re la'>-. <re la'>-. sol,(\p\downbow}

  \t {la4) sol8(}
  \t {do4) sol8(}
  \t {mi'4) sol,8(}
  \t {dod4--\< sol8)}
  <sol fad'>4--\!
  \t {fa'4^( sol,8)}
  \t {mib'-. mib-. sol,-.}
  \t {si-. sol-. re-.} re'4-.
  \t {r4 sol,8-.}
  \t {<sol la>4->--^(\f <sol la>8-.)}
  \t {<sol la>-. <sol la>-. <sol la>-.}
  \t {<sol la>4(->-- <sol la>8-.)}
  \t {<sol la>-. <sol la>-. <sol la>-.}
  \t {<sol la>4-> <sol la>-> <sol la>->}

  r4
  \t {r4^"risoluto" re'8(\mf\downbow}
  \t {fad4) re8-.}
  << {\oneVoice la'4~^"ten"
      \voiceOne la4. r8} \\
     {\voiceTwo s4 mi_\stopped
      \t {fa_\stopped re8-.\downbow}}
  >>
  \t {re-. sol-. re-.} si'4->(
  \t {sold4-.) re8-.}
  \t {<re dod'>4\ff->-- <re dod'>8-.}
  r16 <re dod'>-. <re dod'>-. <re dod'>-.
  r8 <re do'>-- r <re sib'>--

  sol,--\downbow\f do--
  sol16-> sol mi' mi sol,-> sol dod dod
  sol-> sol fad' fad sol,-> sol fa' fa
  sol,-> sol mib' mib sol, sol si si
  sol sol re' re sol, sol la la
  sol sol sib\fp\> sib sib sib sib sib
  sib sib sib sib sib sib sib sib\!

  \t {do,8(\ff ^"pesante (sul C)" fad) do-.}
  do16-. si'-. do,-. do-.
  \t {do8 sib' do,} lab'-- do,--
  sol'16\mp -0 si ^"leggiero" sol re' sol, la sol sib
  re sol re si' la mi' re, mi
  sol, sib sol do( \t {sol8-.) <sol mi'>->\downbow dod--}
  <do, si'>\ff <do si'> <do sib'> <do sib'>
  <do lab'> <do lab'> do4--\downbow
  mib--\downbow \t {r sol8(\p}

  \t {mib'4) sol,8(}
  \t {si4) sol8(}
  \t {re'4) sol,8(}
  \t {la4) sol8(}
  \t {sib4)\< sol8(}
  \t {do4) sol8(}
  \t {mi'4 sol,8}
  \t {dod4-- sol8-.)}
  fad'4->--\! r <sol, fa'>2\<\upbow

  re'4\snappizzicato\f^"(du pouce)"
  si'8_"pizz ordin." re, sold4 re8 dod' re, do' r re,
  sib' re, fad4 <re la'>8-- mib <re fa>4--
  <re sol>8\mp <re sol> <re sol> <re sol>
  <re sol>\< <re sol> <re sol> <sol, sol'>
  <sol sol'>\> <sol sol'> <sol sol'> <sol fa'>\!
  r <sol re'> <sol re'> <sol re'>
  si dod lab sib
  <sol do>\< <sol do> <sol do> <sol do>\!
  r <sol mi'> <sol mi'> <sol mi'>
  <sol dod>\< <sol dod> <sol dod> <sol dod>
  <sol fad'>\f <sol fad'> <sol fad'> <sol fad'>
  <sol fad'>4 <sol fad'>8_"arco"-. <sol fad'>-.
  <sol fad'>-. <sol fad'>-. r <sol fad'>_"pizz"
  <sol fad'> <sol fad'> r <re' dod'>_"arco"-.
  <re dod'>4-. <sol, fad'>_"pizz"
  << { \voiceTwo re'2\ff _"arco"~ re } \\
     { \voiceOne dod'4(\fermata do\fermata sib2\fermata ) }>>
  \t {r4^"(de la pointe)" re,8\mp } \t {fa4 re8}
  << { \voiceOne <re la'>2\upbow\<~ q~ q~ q~\cresc q~ q~ q~
       \t {q4->\sfz re8\p}} \\
     { \voiceTwo r2 r4 do,\stopped re\stopped
       do\stopped mib\stopped r r sol\stopped la\stopped
       sol\stopped sib\stopped r } >>
  \t {mi4 re8}
  \t {fa4 re8}
  \t {sol-. <sol, re'>-.\f <sol re'>-.}
  \t {<re' si'>4-> <re si'>-> <re si'>->}
  \t {r4 re8}
  sold4\<\glissando <sold' re>->-.\sfz r
  re,,_"pizz" r \bar "|."
}

un = \relative do' {
  \time 5/4
  \tempo "Moderato czernyssimo"
  do16\startGroup \fermata ^\mf re\fermata mi\fermata fa\fermata sol\fermata
  do-- re-- mi-- fa-- sol--\stopGroup
  re,(\startGroup fa do' mi sol) do,,( mi sol re' fa)\stopGroup
  fa,\startGroup mi'-- do,( sol') fa' re,-- do'( sol') mi, re'\stopGroup
  mi\startGroup sol,( re) sol'( re) fa,( do) fa'( do) mi,\stopGroup
  sol^\f\startGroup sol'-- fa, fa'-- mi, mi'-- re, re'-- do, do'--\stopGroup
  sol'(\startGroup fa mi re do sol fa^\dim mi re do)\!\stopGroup
  fa'\startGroup re sol, mi do sol'' mi do fa, re\stopGroup
  re'\startGroup mi, sol'( do,) re, fa' sol,( do,) mi'-. fa,-.\stopGroup
  <mi fad>--^\p\startGroup do' fa do, fa <lab re>-- sol' re, sol mi'\stopGroup
  <si do>--\startGroup do, re' re, <mi' sib'>-- mi, fa' <fa, dod'>-- sol' sol,\stopGroup
}

deuxMd = \relative do' {
  dod''(\mp\startGroup mi, si'8) sold16( do, re8) <mid fad>16 sol8.--\stopGroup
  <mi sib'>8-. dod'16( si <do, sold'>8) <re fad>16( mid)
  r\startGroup fad8( <do sold'>16) r <re sib'>-.(_"scherzando" fa-. <sol dod>-. si-. <mi, sold>-.\stopGroup
  fa-. <sol sib>-.) r <mi dod'>(^\> si' sold)^\! r <do, fad>8(^\> re16)^\!
  r\cresc\startGroup <re dod'>( <fa si> <sol lab>) r <mi fad>-- r8 r16 <do sib'>-.\stopGroup
  <mi fad>8--\mf\startGroup r <do sib'>-. <re dod'>16( <fa si> <sol lab>8)
  sold8-.\startGroup <fad do'>-. re'16(_\< fa <sib, sol'>8)_\! <dod mi>16( si\stopGroup
  <sib re>16 \cresc\startGroup fa') <dod sol'>( si <sold mi'>8) fad-. do'-.
  \ottava #1
  si'16->\f\startGroup <do, sold'>8( <re fad>16) fa( sol8) <mi sib'>16-> r fad-.\stopGroup
  <sid, dod'>8\sfz\>\startGroup <re sold>16( mid <fad sol>8) mi-. sib-.
  \ottava #0
  r16\p dod8[( si lad sold fad16]) s2
}

deuxMg = \context Staff= "down" \relative do' {
  r8 mi16( re do8) <mi sib'>-._"(non secco)" r
  lab16(\startGroup <sol si>) r <fa dod'>( re do) r <mi sib'>8( solb16)\stopGroup
  <fa sib>( re <do fad>8) <mi si'>8-. dod'-. sol-.
  si-.\startGroup <sol dod>-- fa16( re) <do sib'>8-- <mi fad>16( sold)\stopGroup
  <mi dod'>8-- r <sol sib>-. <fa solb>16( <re lab'>) <do si'>8.--
  <fad, mid'>16-. <sold re'>( <si do>8) <dod mi>16-. r8 r16 <sib sol'>-.\stopGroup
  re( <sib do>8) <fad mi'>16-. sold( si8) <dod sol'>16-.
  r fa8( dod16) \clef bass r sol8(_\< <fa sib>16) re(-. <do fad>-. sold'-. <mi si'>16)-.\stopGroup
  do8-._\! <mi sib'>-. fad16( sold) <sol si>8-> <re dod'>16-> fa8(
  mi16) r sib'8( <fad sol>16) sold(-. <fa si>-. re-. <sid' dod>16-.)\stopGroup \clef treble
  sol'8(^"dolce" fa mi re do) \change Staff = "up"
  lad''16-. \change Staff = "down" sol,-.
}

trois = \relative do' {
  re-. dod''-. sold-. fa,-. do-. si''-. fad-. mi,-.
  fa fad' do,( sol') sold' re, dod'( lad') mi, red'
  re,( fa dod' fad lad) do,,( mi sol red' sold)
  do,,(^\> re mi fa sol re' mi fad sold lad)\!
  reb,-- do, mib'-- re, fa'-- mi, sol'-- fa, la'-- sol,
  mi^\pp reb'( solb) do,,( fa) mib'( lab) re,,( sol) fa'
  mib mi, lab'( reb,) re, solb' sol,( do,) fa' fa,
  fa'( re sol, mi do) sol''( mi do fa, re)
  sol'-- fa-- mi-- re-- do--
  sol\ppp\fermata fa_"dim. al niente"\fermata mi\fermata re\fermata do\fermata
}



\layout {
  \context {
    \Score
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t

    \override TimeSignature #'style = #'()
    \override TextScript #'stencil =
      #(lambda (grob)
          (let ((grob-markup (ly:grob-property grob 'text)))
            (grob-interpret-markup grob (make-italic-markup grob-markup))))
    \override TextScript #'direction = #UP

    autoAccidentals = #`(Staff ,(make-accidental-rule 'same-octave 0)
                          ,(make-accidental-rule 'any-octave 0)
                          ,(make-accidental-rule 'same-octave 1)
                          ,neo-modern-accidental-rule)
    autoCautionaries = #`(Staff ,(make-accidental-rule 'same-octave 1)
                          ,(make-accidental-rule 'any-octave 1))
    extraNatural = ##f
  }
}

%\pointAndClickOff

\score {
\new StaffGroup <<
\new Staff \gammesUp
\new Dynamics \gammesDyn
\new Staff \gammesDown
>>
\header { piece = "[gammes]" instrument = "(deux violoncelles)" }
\layout { #(layout-set-staff-size 17) }
}
\pageBreak
\score {
  \new Staff \gigue
\header { piece = "[gigue intervallique]" instrument = "(violoncelle seul)" }
}
\pageBreak
\bookpart {
\paper { system-system-spacing #'basic-distance = #25 bookTitleMarkup = ##f }
\score {
\new PianoStaff <<
  \new Staff = "up"
      {
        s1*5/4*5
        \new Voice {
          \change Staff = "up" \deuxMd
        }
      }
  \new Staff = "down" \clef treble
      {
        \autochange si' \un
        \deuxMg
        \autochange si' \trois \bar "|."
      }
  >>
\header { piece = "[étude combinatoire]" instrument = "(piano seul)" }
}
}