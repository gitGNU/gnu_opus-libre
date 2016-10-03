%-- Arkipel -- cbII-2.ly ------------------------------------------%
% (c) 2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Cbb =
\relative do' {
  \clef bass
  <mi,, sol'>2*3/2\laissezVibrer ^"pizz."
  R2.*2
  \clef treble
  sol'''2.\CaV ^"arco" sol~ sol2 sol4~
  sol2.~ sol2 mi4 sol2 mi4
  sol4 mi sol mi sol mi sol mi sol
  re fa re fa re fa re fa re
  sol2 mi4 sol2 mi4 sol2 mi4
  sol mi sol mi sol mi sol mi re
  reb lab reb~ reb lab reb~ reb lab reb
  mi2 sol4 mi sol fa
  mi sol mi sol mi sol
  r <sol, mib'> q q
  \clef bass
  <dod, fad> r sold^"pizz."
  <dod fad>^"arco" r8 <dod si'>
  r4 mib,^"pizz."
  <do' sib'>^"arco" <dod si'>2~
  q8 dod^"pizz." sold4 r
  R2 R2.*3
  \clef treble
  sold'8.^"arco" si16~ si8 sold~ sold16 si8.
  sold8. si16~ si8 sold~ sold16 si8.
  sold8. mib16~ mib8 do~ do16 mib8.
  \t 4 {do4 mib8~ mib do4}
  R2.
  \clef bass
  <mib, lab>2 r4
  q4. q r8 q~ q2 q4 r2
  mi,4^"pizz." mi
  r8 mi4 si'8
  mi,4 r8 mi si' mi, r4
  mi8 si' r2
  sib8 fa' sib, fa'
  r sib,4 fa'8
  sib,4 sib8 mi,
  la sol sib4
  do8 sib mib fa
  r sold fad si dod4
  mib8^"arco" sib mib reb4 do8
  mib fab reb do dob mib
  r reb4 do8 mib fab
  reb sol solb fab
  mib sib mib reb4 do8
  mib fab reb do
  mib reb4 do8
  mi si re4 dod8 mi
  fa re4 dod8
  mi si mi re4 dod8
  mi fa re dod
}

