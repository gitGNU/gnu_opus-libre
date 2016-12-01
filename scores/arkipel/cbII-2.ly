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
  re8 re
  \improvisationOff
  \clef treble
  do''16 red mi fa solb lab sib reb
  \improvisationOn \clef bass
  re,,,4
  \improvisationOff \xNotesOn
  re''^"sul ponti. col legno" re re
  re8 \xNotesOff <la, re>-+
  \xNotesOn re' \xNotesOff <la, re>-+
  \xNotesOn re' \improvisationOn re,,
  re \improvisationOff \xNotesOn re'' r
  \improvisationOn re,,
  \improvisationOff \xNotesOn re''4
  \improvisationOn re,,8
  \improvisationOff \xNotesOn re''16
  \xNotesOff <la, re>-+ \xNotesOn re'8
  \improvisationOn re,,
  \improvisationOff \xNotesOn re''16
  \xNotesOff <la, re>-+ \xNotesOn re'8
  << {\xNotesOn re8 re} \\ {\improvisationOn re,,8 re} >>
  \improvisationOn re4
  \improvisationOff \xNotesOn
  re''8 \xNotesOff <la, re>-+
  \xNotesOn re'4 re8 \xNotesOff <la, re>-+
  \xNotesOn re' \improvisationOn re,,
  \improvisationOff \xNotesOn re''
  \xNotesOff <la, re>-+ \xNotesOn re'
  \improvisationOn re,, re
  \improvisationOff \xNotesOn re'' re
  \improvisationOn re,,
  \improvisationOff \xNotesOn re'' re
  r << {\xNotesOn re} \\ {\improvisationOn re,,} >>
  r << {\xNotesOn re''} \\ {\improvisationOn re,,} >>
  r << {\xNotesOn re''} \\ {\improvisationOn re,,} >>
  r << {\xNotesOn re''} \\ {\improvisationOn re,,} >>
  << {\xNotesOn re'' re16 \xNotesOff <la, re>-+}
     \\ {\improvisationOn re,8 s} >>
  re''16 \xNotesOff <la, re>-+ \xNotesOn re'
  \improvisationOn re,, re8
  \improvisationOff \xNotesOn re''16
  \xNotesOff <la, re>-+ \xNotesOn re'
  \xNotesOff <la, re>-+ \xNotesOn re'
  \improvisationOn re,, re8
  \improvisationOff \xNotesOn re''16
  \xNotesOff <la, re>-+ \xNotesOn re'8
  \improvisationOn re,,
  \improvisationOff \xNotesOn re''16
  \xNotesOff <la, re>-+ \xNotesOn re'8
  \xNotesOff r
  << {\xNotesOn re re re} \\ {\improvisationOn re,, re re} >>
  R2.*3
  \clef treble
  r4 <sol''' sol>2~ q2 q4 q q q
  \t 4 {
    <re,, sol''\CaV>4~ <re la''\CaV>8~ la'' re,, la''
    re,, do' la~\harmonic la\harmonic do re,
    re la' do la\harmonic do la
  } re, la' do4 la'~\CaV la2.^"(vib.)"
  mi'2.~\CaV mi~\CaV mi4\CaV r2
  r2 <sol sol>4~ q2 r4
  \clef bass
  \t 4 {
    dod,,8 sold dod, sold' dod, sold
    dod sold dod sold' dod, sold'
    dod sold dod, sold' dod, sold
    dod sold' dod, sold' dod, sold
    dod sold dod sold' dod, sold
    dod sold dod sold' dod, sold
  } dod sold si fad la mi
  \t 4 {
    la mi la mi' la, mi
    la mi la mi' la, mi
    la mi sib' mi, do' mi,
    la mi la mi' la, mi
    la mi la mi' la, mi
    la mi sol mi fad mi
    la mi la mi sol mi sol mi fad
    la mi sib' la mi sol mi fad mi
    la mi sol mi fad mi la mi sib'
    sol mi sol mi sol mi
    fad mi fad mi fad mi
  }
  fa16 mi fa mi \repeat tremolo 2 {fa mi}
  \repeat tremolo 4 {fa mi}
  \repeat tremolo 4 {fa mi}
  \t {fa4 mi fa} r4
  sol16 lab sib sol fa8 mi16 sol lab fa8 mi16
  sol si dod mi, re' mib fa lab, sib' la do, fad~
  fad8 sol,16 lab sib sol fa8 mi16 sol lab fa~
  fa mi sib' sol lab fad' mib reb do re sib dod
  sol8 fa mi16 sol lab fa~ fa mi sib' lab
  sol lab sib dob sib lab sol fa~ fa mi sol lab
  fa8. mi16 sib' lab sol8 fa16 dob' sib lab
  sol8 fa mi16 sol lab fa~ fa mi sol lab
  sib dob sib lab sol fa sib lab sol fa sib lab
  sol fa lab sol fa lab sol fa lab sol lab sol
  sib mi, red' si la fad' lab sol fa' re, do' dod
  mi8 sib la fa mib do re dod si sold fad sol
  mi-+ \xNotesOn re'' re re re \improvisationOn
  re,, \improvisationOff \xNotesOn re'' re re
  \improvisationOn re,, \improvisationOff \xNotesOn re'' re
  \improvisationOn re,, \improvisationOff \xNotesOn re''
  r8 \xNotesOff fa,16 fa mi'8 r
  \improvisationOn re,, \improvisationOff \xNotesOn re'' re16
  \improvisationOn re,, \improvisationOff \xNotesOn re''8 re16
  \improvisationOn re,, \improvisationOff \xNotesOn re''8
  << {\xNotesOn re re} \\ {\improvisationOn re,, re} >>
  \xNotesOff r4 \t {lab''' sol fad}
  \improvisationOn re,, re8 re re re
  \improvisationOff r8 fa''4.
  \clef treble
  sib2 reb4~ reb sib reb
  sib2 sib4 reb sib2
  sib4. reb sib reb sib reb
  sib reb sib reb sib reb
  sib reb sib reb sib reb sib reb
  dod4 la dod dod la dod dod dod8 la dod4
  dod la red dod la red dod4 dod8 la red la
  dod4 la red dod la dod
  <lab re>4. do <lab re> do <lab re> do
  <lab re> do <lab re>2 r4
  sol mi sol mi4. sol mi sol
  mi sol mi sol mi4 sol mi~ mi sol mi
  \clef bass
  sol,4. mi' sol, mi
  sol,2.~ sol2 r4
  red''8 si red si red4 r
  sol,,2 fa4~ fa8 mi sol lab sib4
  r8 la4 sol8 sib do la4 \t {sold4 si8} r4
  la8 sold fad fa sol4
  r8 fa4 mi8 lab sib \t {sol4 la dod~}
  dod2~ <dod fad\harmonic>~ q4 r
  si8_"(ordin.)" dod re mi fa si,
  dod re mi fa si, re
  mi fa sol sib si, re
  mi fa sol sib do si,
  re mi fa sol sib do
  reb si, re mi fa sol
  sib do \clef treble
  dod red fad sold
  sol, sib do dod red fad
  sold la si do, dod red
  fad sold la si re4~
  re2.~ re4 r8 si4 mi8
  re2.~ re8 mi \t {si4 lab re~}
  re2.~ re4 r dod8 si
  \t {lad4 sold8~} sold4 si mi re2~ re2.~ re~
  re~ re~ re~ re~
  re~ re4 mi re~ re mi re~ re mi re~
  re mi re r re mi
  do mi do fa do mi do fa do
  sold4. red' sold, red' sold,4 red'2
  sold, red'4~ red sold, red'
  r4 r8 red8~ red4
  fa, do' fa, do' fa, do'~ <fa, do'>4. q
  <reb lab'>2.~ q4. do' <reb, lab'> do'
  <reb, lab'>2 q4~ q q2 <dod la'>2.~ q r4
  fad la fad la fad la
  fad la fad la fad la
  mid sold mid sold mid fad
  \clef bass
  r4 r8 la,,4.\laissezVibrer ^"pizz."
  <mi sol'>2\laissezVibrer s4
  \clef treble
  sol'''2.~\CaV sol~\CaV sol~\CaV sol4\CaV r8
  sib,^"pizz. al fine" dod mib sol4 r8 sol mib sib
  sol4\CaV r2 R2. r4 r8
  sib re mi sold4 r8 sold mi sib
  sol4\CaV r2 R2.*2 r4 r8
  si? dod sold' lad4 r2
}

