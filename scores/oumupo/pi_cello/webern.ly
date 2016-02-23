\version "2.19"


\include "pilypi.ly"
\include "modify.ly"


\language "italiano"


\header {
  title = "3 Kleine Stücke"
  subtitle = "Op. 11"
  composer = "Anton Webern"
}
pieces =
\relative do' {
  \clef bass
  \time 6/8
  \accidentalStyle dodecaphonic
  \tempo "Mäßige"
  \override Hairpin.to-barline = ##f
  r8 r fad,,~\ppp fad-. r r
  r4 r8 r8. <si' mi\harmonic>^(\sfp~
  <si mi\harmonic>4 \> sib8)\ppp r4 r8
  r8 \tuplet 3/2 {sold,16(\pp\< mi' sol)\!} r8 r8. mib'--\f
  do4--\mf\> r8\! r si,4--\pp\>
  r16\! mi'(\p\glissando fa,) r r8 <lab, re\harmonic>4\pp r8
  r \clef tenor <fad'' si\harmonic>\pp r r4 r8
  \clef bass
  r4 r8 r8. dod,16(\ppp\<~ dod sol'
  red8\> mi'4)\! r r8
  \bar "|." \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \time 3/4
  \tempo "Sehr bewegt"
  r8 fa,4\f( mib8 sol,4~ \tuplet 3/2 {sol8\> fad'4)\!} r r
  R2.
  \clef tenor
  si'8--\f\< sib-- la,--\! r r4
  \time 2/4 R2
  \time 3/4 \clef bass
  r8 do4.->~\f\< do4\!
  lab'2--\ff fad4~ fad2.\> sol,2.\f\> <>\!
  \time 2/4
  \tuplet 3/2 {r8 r re,\sfp\< ~} re4~
  \time 3/4
  re8-.\!\noBeam \clef tenor do'''(\ff\< lab reb,)\! r4
  \time 2/4
  r8 sib'4.--\fff\<
  \time 3/4 R2.\!
  \bar "|." \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \clef bass \time 2/4
  \tempo "Äußerst ruhig"
  mib,,,2\ppp\<\trill
  \tuplet 3/2 {<do fa la\harmonic>_(\sf\> si'4}
  sib4.)\ppp r8
  R2
  r4 fa''\pp\<~ fa2\> R2\!
  r4 <la,, re\harmonic>8*1/4\pp\< s s s r8\!
  r <re sol\harmonic>4\pp\< r8\!
  <la' dod\harmonic>4\pp\> r\!
  \bar "|."
}
\score {
  \new Staff
  \piify \pieces
  \header {
    piece = \markup \fill-line { \epsfile #Y #40 \myplot }
  }
}\score {
  \new Staff
  \piify \pieces
  \header {
    piece = \markup \fill-line { \epsfile #Y #40 \myplot }
  }
}