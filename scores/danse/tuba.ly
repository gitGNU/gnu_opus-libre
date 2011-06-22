%-- Danse -- tuba.ly ----------------------------------------------%
% (c) 2009 - 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Titre = "Danse kàla"
TubaInstr = "Tuba"
PianoInstr = "Piano"

\header {
  title = \Titre
  subtitle = "pour tuba et piano"
  composer = "Valentin Villenave"
  date = "printemps 2009"
}

\paper {
  first-page-number = #-1
%  min-systems-per-page = #4
}

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    ""
    \line \italic {
      Pour la classe de M. Claude Lherminier.
    }
  }
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2009-2011.
      }
      \line {
        \with-url #"http://valentin.villenave.net"
        \typewriter http://valentin.villenave.net
      }
      \vspace #.5
      \override #'(line-width . 100)
      \justify {
        Cette partition est publiée suivant les termes de la licence
        \with-url #"http://fr.wikipedia.org/wiki/Wikipedia:CC-BY-SA"
        \bold { Creative Commons, Paternité, Partage des
        conditions initiales à \concat {l'identique \medium . }}
        Vous pouvez la copier, la modifier et la jouer \italic librement
        sans contrevenir au droit d'auteur, à condition de respecter les
        termes de la licence (notamment en veillant à mentionner le nom
        de l'auteur et l'adresse web d'origine).
      }
      \vspace #.5
      \line {
        Gravure réalisée au moyen du logiciel libre
        \with-url #"http://www.LilyPond.org"
        \concat {\bold "GNU LilyPond" ,}
        \concat { #(ly:export (string-append "version " (lilypond-version) ".")) } 
      }
    }
  }
}
\pageBreak

Mesures = {
  \tempo 2 = 84
  \time 2/2 s1*42 \bar "||"
  \tempo Sostenuto
  s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/8
  \time 3/2 s1.
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/4
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 5/8 s1*5/2
  \time 7/8 s1*7/8
  \time 5/8 s1*5/8
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/2
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/2
  \time 7/8 s1*7/8
  \time 3/2 s1.
  \time 5/8 s1*5/4
  \time 7/8 s1*7/8
  \time 3/2 s1. \bar "||"
  \tempo "Poco allargando"
  \time 2/2 s1*42
 }

 Tuba =
 %% Transpose
 \smart \transpose do re
 \relative do' {
  \clef bass
  R1*2
  fa,8 sib do fa4 mi sib8 |
  do4 \breathe fa,8 sib do fa[ fa,] mi'[ |
  fa mi] sib do solb2~ |
  solb4 r r2 |
  R1*3
  fa8 sib do fa4 mi sib8 |
  do4 \breathe mib8 reb la do[ sib solb] |
  la sol re mib[ do] si4.~ |
  si2. r4 |
  r2 r8 mib fa solb |
  lab4 r8 la, si do re4 |
  r solb,8 lab r2 |
  fa'8 sib do fa4 mi sib8 |
  do4 \breathe fa,8 sib do fa[ fa, sib] |
  mi fa mi sib[ do] re mi fa | solb2. r4 |
  R1*3
  r8 fa, si! do solb'4 mib,8[ sib' |
  si] solb'4 dod,,8[ re] la' sib fa' |
  solb1~ solb2. r4 |
  r2 do,4. re8~ |
  re4 la r8 si4 do8 |
  re4. mi8~ mi4 si8 fa~ |
  fa4. r8 fa[ mi re mi |
  la,] si2..~ |
  si4 r r2 |
  r4 fad' si dod |
  fad2. mid4~ |
  mid r fad, si |
  dod fad,, dod' si' |
  fad'2 r8 mi, si'4 |
  fad'4. red,8 sold dod fad4~ |
  fad8 do r4 do,8 mi sold red |
  sol si fad re' sib fa dod la' |
  sib dod, re'[ mi fa] fad4.\startTrillSpan |

  sol4\stopTrillSpan r r2 |
  R1*7/8 R1 R1*7/8 R1*5/8 R1.
  mib,4 r8 mib r4 mib |
  r la8 sol fa sol reb |
  mib4 r8 mib r4 mib |
  r la8 sol fa sol reb |
  mib r solb fa mi |
  solb4 mi8 re do |
  mib4 dod8 si la si fa |
  sol4 r r2 |
  si8 re fa lab4 r | R1
  fa,8 sib re solb4 r |
  fa8 mib reb mib la, |
  si4 r8 si r4 si |
  r mi8 re do re la |
  si4 r8 si r4 si |
  r mib8 reb do |
  re4 dod8 si sib |
  do4 fad8 sol lab |
  si, r sib la sold |
  mi'4 fa fa,8 fad sol |
  red'4 red,8 mi fa |
  re' r dod si la si fa |
  sol4 sol' sol,8 sol' r sol, |
  r4 dod'8 si la si fa |
  sol4 sol,8 sol' r sol, r sol'' |
  r4 dod,8 si la si fa |
  fad mi re mi sib |
  si la sol la fa |
  mi4 sol r8 |
  red4 fad r8 |
  re''8[ do sib do mib,] fa lab sib |
  mib re do re fad, la si |
  mi[ re do re lab] sib fa sib |
  fa sib, fa' sib fa sib do |
  fa4 mi sib8 |
  do4 fa,8 sib do |
  fa4 mi8 fa mi |
  sib4 do fa,8 |
  sol4 sol8 fa mib fa si, |
  dod4 r8 dod r4 dod r2 |
  R1*5/8
  mi'8 re do re lab sol fa mib fa si, sib4 |
  la8 sol fad lab4 sol8 fa mi fad4 r |

  do1~ do2. r4 |
  
}
