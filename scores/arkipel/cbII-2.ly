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
  mib fab reb do mib sib
  reb4 do8 mib4 si8
  reb do re red
  mi4 si8 re~
  re dod mi4
  fa8 re dod mi4 si8
  mi si re4
  dod8 mi4 fa8 re dod
  r sol' fad fa
  mi4 re dod8 mi
  r fa re dod
  r re mi fa
  fad dod fad mi red fad
  dod mi si red fad dod
  mi la,? red fad sol mi
  do? red fad red fad sol,?
  fad' red fad red fad4
  \clef treble
  <sol si?> <sol si>2 <sol si?> <sol si>4
  \t 4 {r4 sib8( reb) la( do)}
  <sol si>4 q2 q
  r8 la:16 sib: si:
  do4 r2
  \clef bass
  <mi,,, sol' \parenthesize do>8. q16~ q8 q~ q16 q8.~
  <mi sol'>8 q q q~ q2~ q r4
  r8. mi16~ mi8 mi mi mi~
  mi16 sol do mib do sol mi sol mi sol mi sol
  mi sol do mib do sol mi sol
  mi sol do mib do sol mi sol
  mi sol mi sol mi sol do mib
  do sol mi sol mi sol do sol
  \repeat tremolo 4 {mi sol}
  \t {mi8 sol r} r4
  R2.*2
  \improvisationOn
  \t {re4^"perc." re8} r re
  r4 re
  \improvisationOff
  r8 lab'16 lab re re sol8
  \improvisationOn
  \t {re,4 re8} r re r re
  \improvisationOff
  r do'16 reb mib mi fad sol
  \improvisationOn
  \t 4 {r8 re, re r re4}
  r re \t {r re8}
  \t 4 {r re re r re re r re4}
  \improvisationOff
  \t {mi4-> mi8->} r mi
  r sib' red16 mi fad la
  \t {mi,4-> mi8->} r sib'16 sib red red mi8
  \improvisationOn
  re,8^"perc." re r4
  re8 re r4
  re8 re r4
  re8 re r4
  re8 re r4
  re8 re r4
  re8 re r4
  re8 re r re re4
  \improvisationOff
}

