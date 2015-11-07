\language "italiano"

\header {
  title = "La meilleure cuisine"
  subtitle = "(d’après Leonard Bernstein)"
  composer = "V. Villenave"
  date = "novembre 2015"
}

#(set-global-staff-size 18)

\pointAndClickOff

\paper {
  first-page-number = #-1
}

\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    ""
    \override #'(line-width . 45)
    \italic \wordwrap {
      Cette partition a été rédigée pour une soirée
      au Théâtre du Rond-Point le 5 novembre 2015,
      où elle a été chantée (tant bien que mal) par
      l’auteur, accompagné de Joseph Boisseau au
      Clavinova®.
    }
  }
  \fill-line {
  ""
  \general-align #Y #0.5 {\epsfile #X #30 #"scores/oumupo/oumupo.eps" }
  \line {
    \override #'(line-width . 45)
    \wordwrap {
      \hspace #4 Ces pièces s’inscrivent dans le cadre de
      l’Ouvroir de Musique Potentielle
      \concat { ( \with-url #"http://oumupo.org" \typewriter http://oumupo.org ),}
      dédié à l’écriture musicale sous contraintes formelles.
    }
  }
  ""
  }
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2012.
      }
      \line {
        \with-url #"http://valentin.villenave.net"
        \typewriter http://valentin.villenave.net
      }
      \vspace #.5
      \override #'(line-width . 100)
      \justify {
        Cette partition est publiée suivant les termes de la licence
        \with-url #"http://artlibre.org/licence/lal"
        \bold { Art Libre }
        \concat { ( \with-url #"http://artlibre.org" \typewriter http://artlibre.org ).}
        Vous pouvez la copier, la modifier et la jouer \italic librement
        sans contrevenir au droit d'auteur, à  condition de respecter les
        termes de la licence (notamment en veillant à  mentionner le nom
        de l’auteur et l’adresse web d’origine).
      }
      \vspace #.5
      \line {
        Gravure réalisée au moyen du logiciel libre
        \with-url #"http://www.lilypond.org"
        \concat {\bold "GNU LilyPond" ,}
        \concat { $(string-append "version " (lilypond-version) ".") }
      }
    }
  }
}
\pageBreak

burgerChords = \new ChordNames \chordmode {
  mi8. re sol8 la
  mi8. re lab8 sib
  mi8. mi sib8
  mi8. mi mi8
  mi4 mi sib sib
  reb sol reb mib:/sol
  sib reb lab fa
  si:m mi si mi
  si:m mi si mi
  si:m mi fad:m sol
  re:maj7 sib:/lab re:m sib:m/lab
  re:m7 sib:m/lab re:m7 sib
  mi sib mi:m sib:7
  mi2:m/do sib:/do
  mi:m/do sib:/do
  mi:m/do sib:/do
  mi:m/do sib:/do
  reb:6/do mi:m/do
  fa4:maj7 si:7 fa:7 si:7.5-
  fa fad:dim5 si:7 r
  mi:m do sol:5+ la:m
  mi:m mi:maj7.3- mi:m7 mi:6
  si:sus4 fa si fa
  do sol:m7 do si
  mi:m mi:maj7.3- mi:m7 mi:6
  do:7 si:7 fa:7 si:7
  fa2:7 si:7
  re8. do fa8 sol
  re8. do fad8 sold
  sol8. la lab8 sib
  sib4 s do:/sib s
  fa:m/lab s
  re:m7 lab:5+ re:m lab:5+
  re:m lab:5+ re:m lab:5+ sib:maj7 sib:7
  fad:m/sol dod:7 fad:m/sol dod:7
  re:maj7 la:7 re:maj7 mib:7
  lab:m9 reb:m7.5- lab:maj7.3- reb:m7.5-
  solb:7 do:7 solb:7 do:5+
  si:7 fa:7.5- sib:7 r
  mib16:m s s reb s s solb s lab s
  mi:m s s re s s lab s sib s
  fa s s mib:m s s fad s si s
}

burgerPianoMd = \relative do' {
  s1*5/8*2 s1
  \clef bass
  r16 <mi, si'>-. q-. q-. r q-. q-. q-.
  r <sib' fa'>-. q-. q-. r q-. q-. q-.
  \clef treble
  r <reb lab'>-. q-. q-. r <sol, re'>-. q-. q-.
  r <reb' lab'>-. q-. q-. r <mib sib'>-. q-. q-.
  r <re la'> q q r <reb lab'> q q
  r <fa do'>-.( <mib sib'>-. <reb lab'>-.) r <do sol'>-. q( <reb lab'>)
  r <re la'>-.( <dod sold'>-. <si fad'>-.)
  \clef bass
  r <sold red'>-. q(  <la mi'>) r <fad dod'> q q r <sol re'> q q
  \clef treble
  r <re' la'>( <fad dod'> <re la'>) r <dod sold'>( <mi si'> <dod sold'>)
  r <re la'>( <fad dod'> <re la'>) r <dod sold'>( <mi si'> <dod sold'>)
  r <re la'>-.( <dod sold'>-. <si fad'>-.) r <la mi'> q q
  r q q q r q q q
  r <la' mi'> q q r <lab mib'> <sol re'> <fad dod'>
  r <fa do'> q q r <fab dob'> q <mib sib'>
  r <re la'> q q r <reb lab'> q q
  r <do sol'> q <dob solb'> r <sib fa'> q <la mi'>
  r <sold red'> q q r q q q
  r <sol re'> q q r q q q
  s1*5
  r16 <la mi'>-. q-. q-. r <sold red'>-. q-. q-.
  r <la mi'>-. q-. q-. r <sib fa'>-. <la mi'>-. <sol re'>-.
  r <sol re'>-. <la mi'>-. <si fad'>-.
  r <do sol'>-.\< <re la'>-. <red lad'>-.
  <mi si'>8-.\sfz r r4\fermata
  r16 <mi si'>-. q-. q-. r q-. q-. q-.
  r q-. <red lad'>-. q-. r <re la'>-.( <do sol'>-. <si fad'>-.)
  \clef bass
  r <la mi'> q q r <sold red'> q q
  r <sol re'> q q r <fad dod'> q q
  r <mi si'> <fa do'> <fad dod'> r <sol re'> <sold red'> <la mi'>
  \clef treble
  r <sib fa'> <si fad'> <do sol'> r <dod sold'> <re la'> <mib sib'>
  r <mi si'> <fa do'> <mi si'> r <re la'> <mi si'> <re la'>
  r <do sol'> <re la'> <do sol'> r <do sol'> <si fad'> <sib fa'>
  \clef bass
  r <la mi'> q q r <sold red'> q q
  r <sol re'> q q r <fad dod'> q q
  r <la mi'> q <sib fa'> r <dod sold'> <re la'> <red lad'>
  r <sol, re'> <sold red'> <la mi'> r <sold red'> <la mi'> <sib fa'>
  r <fa do'>\< <fad dod'> <sol re'> <lab mib'>\> <la mi'> <lab mib'> <sol re'>
  r\! <re la'>\< <red lad'> <mi si'> <fa do'>8\! r
  \clef treble
  r16 <re'' la'>\f q \mg \clef treble <do, sol'>->( \md <do' sol'>) q
  \mg <fa, do'>->( \md <fa' do'>) \mg <sol, re'>->( \md <sol' re'>)
  \mg <re, la'>( \md <re' la'>) q \mg <do, sol'>( \md <do' sol'>) q
  \mg <fad,, dod'>( \md <fad' dod'>) \mg <sold, red'>( \md <sold' red'>)
  \mg \clef bass <sol,, re'>( \md <sol' re'>) q \mg <la, mi'>( \md <la' mi'>) q
  \mg <lab, mib'>( \md <lab' mib'>) \mg <sib, fa'>( \md <sib' fa'>)
  r q q( <re la'>) r <sib fa'>( <re la'> <sib fa'>)
  r <la mi'> q( <do sol'>) r <lab mib'>( <do sol'> <lab mib'>)
  r <fa do'> q( <sib fa'>) r <fa do'>( <sib fa'> <fa do'>) s2 s
  r16 <la mi'>( <dod sold'> <la mi'>) r <do sol'>( <mi si'> <do sol'>)
  r <re la'> <fa do'> <re la'> r <mi si'> <sol re'> <mi si'>
  r <re la'> q <fa do'> r <reb lab'> q <fa do'>
  r <fad dod'> <red lad'> <fad dod'> r <mi si'> <re la'> <mid sid'>
  r <fad dod'> <red lad'> <fad dod'> r <mi si'> <re la'> <mid sid'>
  r <fad dod'>-.-> <re la'>-. <dod sold'>-. r <mi si'>-.-> <dod sold'>-. <do sol'>-.
  r <re la'>-.-> <si fad'>-. <sib fa'>-. r <do sol'>-. <sol re'>-. <solb reb'>-.
  r <dob solb'> <mib sib'> <mi si'> r q q q
  r\< <mib sib'> q <mi si'> r q q q
  r\f <sib' fa'>^"(non legato)" <la mi'> <sib fa'> r\mp <mib, sib'> <mi si'> <sol re'>
  r\f <sib fa'> <la mi'> <sib fa'> r\> <la mi'> <sol re'> <fa do'>
  r <sold red'> <fad dod'> <mi si'> r\pp <mi si'> <mib sib'> <re la'>
  <do sol'> <si fad'> r8 r4
  s1*5/8*3
}

burgerPianoMg = \relative do' {
  <mi si'>16->(\f \md <mi' si'>) q \mg <re, la'>->( \md <re' la'>) q
  \mg <sol, re'>(-> \md <sol' re'>) \mg <la, mi'>(-> \md <la' mi'>)
  \mg <mi, si'>( \md <mi' si'>) q \mg <re, la'>( \md <re' la'>) q
  \mg <lab, mib'>( \md <lab' mib'>) \mg <sib, fa'>( \md <sib' fa'>)
  \mg \clef bass <mi,, si'>--\dim \md <mi' si'> q \mg <mi, si'>-- \md <mi' si'> q
  \mg <sib, fa'>-- \md <sib' fa'>
  \mg <mi,, si'>-- \md <mi'' si'> q \mg <mi,, si'>-- \md <mi'' si'> q
  \mg <mi, si'>-- \md <mi' si'>
  \mg <mi,, si'>8--\dyn "p secco" r q-- r <sib' fa'>-- r q-- r
  <reb, lab'>-- r <sol re'>-- r <reb lab'>-- r <sol re'>-- r
  <sib fa'> r <reb lab'> r <lab mib'> r <fa do'> r
  <si fad'> r <mi, si'> r <si' fad'> r <mi, si'> r
  <si' fad'> r <mi, si'> r <si' fad'> r <mi, si'> r
  <si' fad'> r <mi, si'> r <fad dod'> r <sol re'> r
  <re la'>\mf r <lab' mib'> r <re, la'>\dim r <lab' mib'> r
  <re, la'> r <lab' mib'> r <re la'> r <sib fa'> r
  <mi, si'>\dyn "p_senza cresc." r <sib' fa'> r <mi, si'> r <sib' fa'> r
  \md <la' mi'>16 \mg <do, sol'>_\dyn "legato, con Ped." q \md <la' mi'> \mg <do, sol'> q
  \md <la' mi'> \mg <do, sol'>
  \md <sib' fa'> \mg <do, sol'> q \md <sib' fa'> \mg <do, sol'> q
  \md <sib' fa'> \mg <do, sol'>
  \md <do' sol'> \mg <do, sol'> q \md <la' mi'> \mg <do, sol'> q
  \md <do' sol'> \mg <do, sol'>
  \md <re' la'> \mg <do, sol'> q \md <sib' fa'> \mg <do, sol'> q
  \md <re' la'> \mg <do, sol'>
  \md <mi' si'>^\cresc \mg <do, sol'> q \md <do' sol'> \mg <do, sol'> q
  \md <mi' si'> \mg <do, sol'>
  \md <fa' do'>^\! \mg <do, sol'> \md <re' la'> \mg <do, sol'>
  \md <sib' fa'> \mg <do, sol'> \md <fa' do'> \mg <do, sol'>
  \md <sol'' re'> \mg <do,, sol'> \md <mi' si'> \mg <do, sol'>
  \md <sol'' re'> \mg <do,, sol'> \md <mi' si'> \mg <do, sol'>
  \md <fa' do'> \mg <do, sol'> \md <re' la'> \mg <do, sol'>
  \md <fa' do'> \mg <do, sol'> \md <re' la'> \mg <do, sol'>
  \md <reb' lab'>\mf \mg <do, sol'> \md <sib' fa'> \mg <do, sol'>
  \md <reb' lab'> \mg <do, sol'> \md <sib' fa'> \mg <do, sol'>
  \md <do' sol'> \mg <do, sol'> \md <si' fad'> \mg <do, sol'>
  \md <la' mi'> \mg <do, sol'> \md <sol' re'> \mg <do, sol'>
  <fa, do'>8\dyn "secco" r <si fad'> r <fa do'> r <si fad'> r
  <fa do'> r <fad dod'> r <si fad'> r r4\fermata
  <mi, si'>8--\p r <do' sol'>-- r <sol re'>-- r <la mi'>-- r
  <mi si'>-- r q-- r q-- r q-- r
  <si fad'>\cresc r <fa' do'> r <si, fad'> r <fa' do'> r
  <do' sol'>\dyn "p_sub." r <sol re'> r <do sol'> r <si fad'> r
  <mi, si'> r q r q r q r
  <do' sol'> r <si fad'> r <fa do'> r <si fad'> r
  <fa do'> r r4 <si, fad'> \tuplet 3/2 {r8 <do sol'>--( <dod sold'>--}
  <re la'>8--) s2 s1*5/8*2
  <sib fa'>4--( q--) q-- q--
  <lab mib'>-- q-- <re la'>16( \md <sib'' fa'> <fa do'>)
  \mg <lab,, mib'>( \md <sib'' fa'> <fa do'>) \mg <re, la'>( \md <sib'' fa'>)
  \mg <lab,, mib'>( \md <fa'' do'> <sib fa'>) \mg <re,, la'>( \md <fa' do'> <sib fa'>)
  \mg <lab,, mib'>( \md <la''? mi'?>)
  \mg <re,, la'>4-- <lab mib'>
  <re la'>\mf <lab mib'> <sib fa'> q
  <sol' re'> <dod, sold'> <sol' re'> <dod, sold'>
  <re la'> <la mi'> <re la'> <mib sib'>
  <lab mib'> <reb lab'> <lab mib'> <reb lab'>
  <solb, reb'> <do sol'> <solb reb'> <do sol'>
  <si fad'> <fa' do'> <sib fa'>8 r r4
  \clef treble
  <mib sib'>16(\mp \md <mib' sib'>) q \mg <reb, lab'>( \md <reb' lab'>) q
  \mg <solb, reb'>( \md <solb' reb'>) \mg <lab, mib'>( \md <lab' mib'>)
  \mg <mi, si'>( \md <mi' si'>) q \mg <re, la'>( \md <re' la'>) q
  \mg <lab, mib'>( \md <lab' mib'>) \mg <sib, fa'>( \md <sib' fa'>)
  \mg \clef bass
  <fa, do'>( \md <fa' do'>) q \mg <mib, sib'>( \md <mib' sib'>) q
  \mg <fad, dod'>( \md <fad' dod'>) \mg <si,, fad'>( \md <si'' fad'>)
}

burgerVoix = \relative do' {
  \tempo "Allegro molto ; matematico"
  \time 5/8
  R1*5/8*2
  \time 4/4
  \dynamicUp
  r2 r4 r8 si16-.\(\dyn "mp_giocoso" sold'-.
  reb'4--\) reb8--\( sib\) do-- do16 lab
  sib-. sib-. sol-. lab-.
  r8 lab-- r sol-- r fa-- sol16\(\< sib\) mib-. mib-.
  re4\! do8->\( sib16-.\) lab-. sol8->\( fa\)
  sol16\(\< sib\) mib-. re-. dod8\(\> si\)\! si16-.\p sold-. sold-. sold-. red-. red-. red8-. r
  re16-.\(\< re-. \tuplet 3/2 4 {re'8--\mf dod si sold-- sold\) red}
  red16-.\p re-. re-. re-. dod8-- si16-.
  mi-. re8-- dod16-. dod-. mi-. la-. sold-. fad-.
  mi8-- re16-. dod-. si\( mi\) re-. dod-. dod8-- r16 mi\(\< la
  lab re8\sf re16\) fa,-. fa-. reb'-. reb8->
  fa,16-. fa-. do'-.\> do-. fa,8-- fa--
  do'16-. do-. fa,8-- fa\!
  \tuplet 3/2 {r reb'\( re\)} sol,16-. sold-. sold-. sold-. sold-. sold-. sold-. sold-.
  sol-.\< sol-. sol-. sol-. sol sol sol re'
  mi8\(\f sol,\) \tuplet 3/2 {r8 do\(\p re} sib16-. sol-. re'8--\)
  r4 do--\(\dyn "dolce" r8 re \tuplet 3/2 {mi4->--
  sol,-- sol--} sol--\) sol8\(\< sol re'4\mp
  r8 mi r sol, do4--\) r8 re4-- r8 sib4--
  sol8.\(\> re'16 do4 re8\)\! r \tuplet 3/2 {r mi->\mf
  mi,} red-- red do'16-> la8 sib16 fa?8-. mi16 re
  fa-.\< la-. sol-. si-. \tuplet 3/2 {do8-- si-- mi--\sf}
  r8\fermata si\(-.\p \tuplet 3/2 4 {la8-- sol fad}
  mi\) fad-. \tuplet 3/2 {sol-.\( mi-.
  si'-.} red-.\) fad,-. \tuplet 3/2 {mi-- fad sol}
  mi4-- red8-.\mf dod-. la'16-> fad8 mi16 fad-> sol8 mi16
  mi-> red-. r8 r4 r8 do'\(\mp la\) sib16 fa mi8.-- re16-.
  fa-. la-. sol8-. si16\( do\) si-. mi-. si8--
  la16\( sol\) fad-. mi-. fad8-. sol16\( mi\)
  si'-. red-. fad,8-- mi16-. fad-. sol8.--\< mi16\(
  \bar "||"
  sib'8.\> sol16 solb4\!\) r8 fa mib4--
  \tuplet 3/2 {mib--\(\< solb-- sib--} r dob\)
  \time 5/8
  fa,4.~\dyn "f_(as long as possible)" fa4~ fa4.~ fa4~
  fa4.~ fa4~
  \time 4/4
  fa2. lab8\(\< do fa2\!\)~ fa~ fa4 re8-- re--
  \tuplet 3/2 {mi\( dod la} re\) r16 mi
  \tuplet 3/2 {dod8\(\> re mi} dod\)-- la-- re4--\!
  r8 mi \tuplet 3/2 4 {dod\(--\mp fad dod
  si-- dod-. re-.} dod8--\) fad,16-. fad'-. dod\( si\) dod-. re-. dod->\fp fad,
  reb reb reb reb reb reb reb reb reb8-. lab'\(\mp sol-.\)
  lab16\(-. lab-. sib8-.\) \tuplet 3/2 {r8 dob--\cresc dob--}
  sol\( lab\) sib16-. sib-. dob8-. r reb
  \acciaccatura mib do16 \xNotesOn fa, fa \xNotesOff
  reb' \acciaccatura mib do8->\f sib-. lab16-. do-. sib-. lab-. solb8-. fa-. mib-.
  dob'-. sib8-. r r lab-.\mp
  \time 5/8
  solb8-. r16 fa-. r8 mib-.
  sib'-. sol-. r16 fad-. r8 mid-.\< red-. r red-. fad-. lad-. si-.\!
  \bar "|."
}

burgerVoixTexte = \lyricmode {
  É -- ta -- lez, sur du pain fait de fa -- ri -- ne de blé,
  sel, sucre, hui -- le de col -- za,
  glu -- ten et le -- vure,
  grai -- nes de sé -- sa -- me,
  pro -- pio -- na -- te de cal -- cium,
  car -- bo -- na -- te, sul -- fa -- te, chlo -- ru -- re
  d’a -- mmo -- nium et so -- dium,
  a -- zo -- di -- car -- bo -- na -- mid’,
  mo -- no et di -- gly -- cé -- rides_;
  or -- tho -- phos -- pha -- te mo -- no -- cal -- cique,
  a -- cide as -- cor -- bique,
  L -- cis -- té -- i -- ne,
  es -- ters mix -- tes gly -- cé -- ro -- li -- ques de
  l’a -- ci -- de di -- a -- cé -- tyl -- tar -- tri -- que
  et d’a -- ci -- des gras...

  un fro -- ma -- ge fon -- du com -- po -- sé de che -- ddar, sel, beurre,
  lait en pou -- dre,
  lé -- ci -- thi -- ne de tour -- ne -- sol,
  co -- lo -- rant ex -- trait de pa -- pri -- ka,
  bé -- ta ca -- ro -- tène,
  é -- mul -- si -- fi -- ant tri -- so -- dium -- ci -- trate,
  a -- cide lac -- ti -- que, sor -- bi -- que, ci -- trique,

  na -- ppé d’u -- ne sauce aux cor -- ni -- chons,
  vi -- nai -- gre d’al -- cool,
  hui -- le vé -- gé -- tal’,
  grai -- nes de mou -- tarde,
  jau -- ne d’œuf, é -- pai -- ssi -- ssant à base de gom -- me
  xan -- thane,
  a -- mi -- don mo -- di -- fié de ma -- ïs,
  si -- rop de glu -- cos’ -- fruc -- tos’,
  la -- ctate et chlo -- rur’ de cal -- cium,
  mo -- no -- o -- lé -- at’ de po -- ly -- o -- xy -- é -- thy --  èn’
  de sor -- bi -- tan’,
  so -- dium ben -- zo -- ate_;

  in -- sé -- rez un steak ha -- ché de cheval par -- don de bœuf,
  a -- gré -- men -- tez d’oi -- gnons dés -- hy -- dra -- tés et
  faites ser -- vir par un em -- plo -- yé non -- syn -- di -- qué.
}

cocaChords = \new ChordNames \chordmode {
  fa2.:maj7 sib:maj7 fa:maj7 sib:7
  fa:maj7 sib:7 la red:7
  sold:m dod:m6 sold:m
  mi:m/sol do:7 mi:m/sol dod:7
  la mib:7 la mib:7
  la dod:7/sold
  re:m7 sold:m7 re:maj7.3- si:m7/re
  reb:maj7 fa:/solb si:6
  fa:7 si:dim5 fa:7 do:m/si
  mi:maj7 la:maj7 mi:maj7 la:maj7.3-
  mi:maj7 la:maj7 mi:maj7 la:maj7.3-
  sold:m/dod
  reb:maj7 solb:maj7 reb:maj7 solb:maj7
  reb:maj7 solb:maj7 sib:m7 sib2:7 sib4:m7 la2.:m6
  mi:maj7 la:maj7 mi:maj7 la:maj7.3-
  mi:maj7 la:maj7 mi:maj7 la:maj7.3-
  do:7 fa:maj7.4+ si:sus4
  mi:maj7 la:maj7 mi:maj7 la:maj7 la:maj7.3- do:/sib
}

cocaPianoMd =
\relative do' {
  r4 <do mi la>2-- r4 <la re fa>2--
  r4 <la do mi>2-- r4 <lab do fa>2--
  \clef bass
  r4 <sol do mi>2 r4 <mi sold si?>2
  r4 <sol do mi>2 r4 <sold si mi>2
  r4 <fad si red>2 r4 <lad red fadd>2
  \clef treble
  r4 <red fad lad>2 r4 <mi sol si>2
  r4 <si mi sol>2 r4 <si re fad>2
  r4 <fa' la re?>2 r4 <mi sold si>2
  r4 <reb fa sib>2 r4 <do mib lab>2
  r4 <lab reb fab>2 r4 <sold dod mi>--(\< <dod mi sold>--)
  r\! <fa lab reb>2 r4 <fa la do>2
  r4 <red fad si>2 r4 <dod fad la>2
  r4 <si re fad>2 r4 <do fa lab>2
  r4 <do fa la>2 r4 <si re sol>2
  r4 <do mib sol>2 r4 <la re fa>2
  \clef bass
  r4 <sol sib mib>2 r4 <mib sol do>2
  r4 <sold si red>2 r4 <sold dod mi>2
  r4 <si red fad>2 r4 <sid red sold>2
  \clef treble
  r4 <red sold si>2 r4 <dod mi sold>2
  r4 <si red fad>2 r4 <sol? do? mi>2
  <sold si red>4( <si red sold>\< <red sold si>
  <fa lab do> <do fa lab>2) r4\! <reb fa sib>2
  r4 <mib lab do>2 r4 <mib solb sib>2
  r4 <do fa lab>2 r4 <sib reb fa>2
  r4 <do fa lab>(-- <fa lab do>--)
  <fad la re>2( <fa lab reb>4)
  r4 <mi sol do>2 r4 <red sold si>2
  r4 <dod fad la>2 r4 <dod mi sold>2
  \clef bass
  r4 <sol do mi>2 r4 <fad si red>2
  r4 <fa la do>2 r4 <red fad lad>2
  r4 <do mi sol>( <sol' do mi>
  \clef treble
  <sib re sol>\< <dod fad la> <fa sib re>)
  <mi la dod>2.\dyn "pp_sub." <fa la do>2 r4
  r <sold si red>2 r4 <fad la dod>2
  r4 <dod mi sold>2 r4 <fad, si red>2
  r4 <sid red sold>-- <la re fad>-- <sol do mi>-- r2
}

cocaPianoMg=
\relative do' {
  \clef bass
  fa,,2.\p sib, fa' sib,
  fa' sib la re
  sold, dod sold' sol
  do, sol reb' la mib la? mib
  la lab re sold re' re,
  reb solb, si\> fa si fa si,\!
  mi la, mi' la,
  mi' la, mi' la,
  dod reb' solb, reb' solb,
  reb' solb, sib sib,2 sib'4
  la2. mi la, mi' la,
  mi' la, mi' la, do4 sol' do
  fa,2. si2 r4
  mi,2. la, mi' la, la'( sib4--) r2
}

cocaVoix = \relative do' {
  \tempo "Allegretto"
  \time 3/4
  \dynamicUp
  do'2.~\p\( do2 fa4 la,4.
  lab8 sol4 fa r mib r fa sol~ sol mi fa~ fa\) do\(\<
  fadd sold lad si fadd\mf r8 sold lad4\) fadd\( sold
  lad\< si8 r dod8. red16 mi4~\f\> mi si sol lad si\)\!
  r8 dod\mp mi\( lad, si4\)
  r8 mi sib4\(\> dob8\! r lab solb\) fad4.\(\mf mib8 reb4~ reb8
  mib do8 r mib fab reb4-- reb-- mib-- do\) r8 mib\( fab4 r8 reb
  reb'4\< reb r lab' la~\f la4.\) fa8\( do4
  si4.--\mf lad8 sold fad dod'4\) r8 lad8\( dod
  si la\> sold fad la re4~\! re mib
  do~ do fa la,\) lab\( sol fa mib4.\dim fa8 sol4~ sol4.
  mi8 fa4~ fa2\!\) r4 r2 do4--
  \bar "||"
  mi8\(\p si' fad4.\) mi8\( si' sold mi4 si' la\) mi8\( si' sold mi si' fad
  mi4\) si'8-.\( sold-. mi-. si'-. la-. mi-. si'-. sold-. mi-. si'-. fad-. mi-. si'-. sold-. mi-.
  si'-. la-. mi-. si'-. sold-. mi-. si'-. fad-.\) r mi4\(\dyn "f_sostenuto" si''4. sold
  fa4-- lab,8-. lab'-. lab,-. lab'-.
  fa4\) lab,8-.\( do-. sib-. mib-.\)
  lab\(^"giocoso" fa\) lab,-.\( do-. sib-. mib-. lab4\) fa\(
  r8 lab, lab' fa lab, do sib mib
  lab fa lab, do sib mib lab2\) r4 fa\(\mp lab,8
  sold' fad4~ fad4 mi8 re si mi~
  mi8 mi,4\) fad8\( mi si' sold4\) r mi8\( si' la4-- mi r8 si'
  sold4-- mi si'8 fad mi4-. si'-. sold-.
  mi-.\) si'8\( la mi si' sold4\) mi\( si'\> fad mi
  fad'~\p fad4. mi8 re4\) r si4.^"semplice" mi8~ mi4 mi, r r fad8\(
  mi si'4\) sold-- mi8\( si'\) r la-.\(
  mi-. si'-. sold-. mi-. si'-. fad-. mi-. si'-. sold-. mi-.
  si'-.\! \dim la-. mi-. si'-. sold-. mi-. si'-.\! fad-. mi4\) r2
  \bar "|."
}

cocaVoixTexte = \lyricmode {
    Dis -- sol -- vez dans une cuve d’eau na -- no -- fil -- trée
    pom -- pée di -- rec -- te -- ment dans la napp’ phré -- a -- tique
    u -- ne gran -- de quan -- ti -- té de di -- o -- xyde de car -- bone,
    de l’a -- ci -- de phos -- pho -- rique,
    quel -- ques gout -- tes d’al -- cool,
    un peu de jus de ci -- tron,
    u -- ne feuil -- le de co -- ca,
    u -- ne cui -- llè -- re de ci -- trate de ca -- fé -- ine,
    et de l’es -- ter de gly -- cé -- rol_;
    un grand verr’ de co -- lo -- rant
    (ca -- ra -- mel au sul -- fa -- te d’a -- mmo -- nium),
    un soup -- çon de qua -- tre -- mé -- thy -- li -- mi -- da -- zole,
    de l’ex -- trait de va -- ni -- lli -- ne na -- tu -- relle,

    une gran -- de ra -- sa -- de de
    si -- rop de ma -- ïs à hau -- te te -- neur en fruc -- tose
    et du ga -- lac -- to -- man -- nane i -- ssu de gom -- me de ca -- roube,
    Hui -- les es -- sen --  tiel -- les d’o -- ran -- ge (douce et a -- mère), co -- ri -- an -- dre,
    mus -- ca -- de, ci -- tron et ci -- tron vert,
    can -- nel -- le de Chine, es -- sen -- ce de Né -- ro -- li
    et la -- vande_;
    mé -- lan -- gez et
    su -- crez gé -- né -- reu -- se -- ment,
    gé -- né -- reu -- se -- ment,
    gé -- né -- reu -- se -- ment,
    gé -- né -- reu -- se -- ment.
}
