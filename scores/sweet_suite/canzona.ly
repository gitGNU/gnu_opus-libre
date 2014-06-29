%-- Sweet suite -- canzona.ly --------------------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

CanzonaClavecinMd =
\relative do' {
  \tempo "Lore Ghetto"
  \time 21/8
  r8 si'4~ si8 fad4~ fad8 sol re' fa4 dod8~
  dod la sold mi' sib8.do,16 mib4.
  r8 si'4 sol4.~ sol8 sib re la' mib4 fad4.~
  fad8. do16 fa8 dod16 sold mi4
  r8 si'' sold~ sold fa mib fad,16 sol sib4~
  sib8. re,16 la'8~ la8. dod,16 do'8 mi4 r8 r4 r8
  \tuplet 2/3 {r8 si} la8. sib16 dod re
  r8 fa8. solb16 mi4.~ mi8. sol,16 lab do r8 mib,4~ mib4.
  r16 si'~ si4 lad8 r4 r16 re~ re4 red8 r4
  r16 fa~ \tuplet 3/2 {fa8 solb mi}
  \tuplet 4/3 {r sol do la} \tuplet 4/3 {sold dod r4}
  r8 si4 \tuplet 2/3 {\acciaccatura fa'8 mib,8 sib'}
  \tuplet 2/3 {mi, la,} \tuplet 2/3 {r8 \acciaccatura dod' re,}
  sold4 fad8 sol do,4~ do4. r4.\fermata
}

CanzonaClavecinMg =
\relative do' {
  \clef bass
  <la dod>4-- q8 <la do>4 q8 <lab do>4-- q8 <sold si>4-- q8
  <sol sib>4-- q8 <fad lad>4 q8 <fa la>4 q8
  <la dod>4 q8 <lab do>4 q8 <sold si>4 q8 <sol si>4 q8
  <sol sib>4 q8 <fad la>4 q8 <fa la>4 q8
  <sib re>4 q8 <la dod>4 q8 <la do>4 q8 <sold si>4 q8
  <sol si>4 q8 <sol sib>4 q8 <fad lad>4 q8
  <la dod>4 q8 <lab do>4 q8 <sold si>4 q8 <sol sib>4 q8
  <fad lad>4 q8 <fa la>4 q8 <mi sold>4 q8
  <fad lad>4 q8 <fa la>4 q8 <fa lab>4 q8 <mi sol>4 q8
  <mib sol>4 q8 <mib solb>4 q8 <re fad>4 q8
  <reb fa>4 q8 <do mi>4 q8 <do mib>4 q8 <si red>4 q8
  <sib re>4 q8 <sib reb>4 q8 <la do>4 q8 r8 q4\fermata
  \bar "|."
}
