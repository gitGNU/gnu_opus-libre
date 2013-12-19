%-- Chansons Oulipiennes -- petitmari.ly --------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

PetitmariVoix =
\relative do' {
  \partial 4 r4
  R1*4
  r4 sol'8^"détaché et rebondissant"
  do sol4 do,16 re mi fa
  sol4 mib8 mib16 lab mib8 do si re
  mi4 sol8 do sol re do fa
  sol4 mi16 fad sold la si8 do re si
  do4\fermata
  mi,8 sol16 mi do8 mi do mi
  re4 re8 fa16 re si8 re si re
  mi4 mi8 sol16 mi do8 mi do mi
  re4 re8 fa16 re si8 re si re
  do4 la'8 la16 la sol4 la16 la la la
  sol4 mi8 mi16 mi sol8 fa mi re
  mi4 la16 la la la sol8 sol fad fad
  sol4\fermata
  sol16 sol do8 sol4 do,16 re mi fa
  sol4 mib8 mib16 lab mib8 do si re
  mi4 sol8 do sol re do fa
  sol4 mi16 fad sold la si8 do re si
  do4\fermata
  sold8 si16 sold mi8 sold mi sold
  fad4 fad8 la16 fad red8 fad red fad
  sold4 sold8 si16 sold mi8 sold mi sold
  fad4 fad8 la16 fad red8 fad red fad
  mi4 dod'8 dod16 dod si4 dod8 dod16 dod
  si4 sold8 sold16 sold si8 la sold fad
  si4\fermata
  sol8 do sol4 do,16 re mi fa
  sol4 mib8 mib16 lab mib8 do si re
  mi4 sol16 do si la sol8 re do fa
  sol4 mi8 sold16 la si8 do re si
  do4\fermata
  lab8 do16 lab mib8 lab mib lab
  sol4 sol8 sib16 sol mib8 sol16 sol mib8 sol
  lab4 lab8 do16 lab mib8 lab mib lab
  sol4 sol8 sib16 sol mib8 sol mib sol
  lab4 fa8 fa16 fa mib8 lab, fa' fa16 fa
  mib4 do8 do16 do fa8 mib re do
  sol'4\fermata
  sol8 sol4 do8 sol16 do, mi fa
  sol4 mib16 mib mib lab mib8 do si re
  mi4 sol8 do16 do sol8 do sol do
  sol4 mi8 sold16 la si8 do re si
  do4\fermata
  sold8 si16 sold mi8 sold mi sold
  fad4 fad8 la16 fad red8 fad red fad
  sold8 mi sold si16 sold mi8 sold mi sold
  fad4 fad8 la16 fad red8 fad red fad
  mi4 dod'8 dod16 dod si4 do8 do16 do
  si4 mi,8 mi16 mi si'8 mi, fa fad
  sol4\fermata
  sol8 do sol4 do,16 re mi fa
  sol4 mib8 mib16 lab mib8 do si re
  mi4 sol8 do16 do sol8 re do fa
  sol4 mi8 sold16 la si8 do re si
  do4\fermata
  r mi,8 mi sol mi
  do4 mi8 mi do4 r8 mi
  re4 r re fa8 re
  si4 r8 re si4 r8 re
  do4 la'8 la16 la sol8 do, la' la
  sol4 mi8 mi16 mi sol8 fa mi re
  mi4 la16 la la la sol8 sol fad fad
  sol4\fermata
  \times 2/3 {sol8 la si}
  do8. sol16 mi8. sol16 fa8. la16
  re,8. fa16 mi8. do'16 re8. si16
  do4 r r2 \bar "|."
}

PetitmariPianoMd =
\relative do' {
  \clef treble
  \partial 4 \times 2/3 {sol'8(\< la si}
  do8.-.)\f sol16( mi8.) sol16( fa8.) la16(
  re,8.) fa16( mi8.) do16( sol'8.) mi16(
  re8.) fad16( si,8.) re16( dod8.)\dim la16(
  mi'8.) dod16( si8.) red16( sold,8.) si16(
  lad8.)\! fad16( dod'8.) lad16( sold4--)\sf
  \times 2/3 {sol'8(\< la si} |
  do4->)\fp r8 <do, mi sol>~->-- q4 q4-.--
  r8 q-. r <lab do mib>~->-- q4 q8( <sold si mi>) |
  <mi sol do>-. <do' mi sol>-> r q~->-- q4 q4-.-- |
  r8 q-. r8 <mi sold si>~->-- q q8-. r <do mib lab>-. |
  <mi sol do>4 r\fermata
  \chordmode {
    r8 do r do |
    r sib, r sib, r fad r re |
    r do r do r do r do |
    r sib, r sib, r fad r re |
    r do r si, r mib r si, |
    r mib r si, r mib r sol, |
    r do r fa r reb r la, |
    sol,8 r\fermata
  }
  r8 <do mi sol>~->-- q4 q4-.--
  r8 q-. r <lab do mib>~->-- q4 q8( <sold si mi>) |
  <mi sol do>-. <do' mi sol>-> r q~->-- q4 q4-.-- |
  r8 q-. r8 <mi sold si>~->-- q q8-. r <do mib lab>-. |
  <mi sol do>4 r\fermata
  \chordmode {
    r8 mi r mi |
    r sib, r sib, r fad, r re |
    r mi r mi r mi r mi |
    r sib, r sib, r fad, r re |
    r mi r mib r si, r mib |
    r si, r la, r fa r reb |
    sol,8 r\fermata
  }
  r8 <do mi sol>~->-- q4 q4-.--
  r8 q-. r <lab do mib>~->-- q4 q8( <sold si mi>) |
  <mi sol do>-. <do' mi sol>-> r q~->-- q4 q4-.-- |
  r8 q-. r8 <mi sold si>~->-- q q8-. r <do mib lab>-. |
  <mi sol do>4 r\fermata
  \chordmode {
    r8 lab, r lab, |
    r sib, r sib, r fad, r re |
    r lab, r lab, r lab, r lab, |
    r sib, r sib, r fad, r re |
    r lab r mib, r si, r mib, |
    r si, r dod r la, r fa, |
    sol8 r\fermata
  }
  r8 <do mi sol>~->-- q4 q4-.--
  r8 q-. r <lab do mib>~->-- q4 q8( <sold si mi>) |
  <mi sol do>-. <do' mi sol>-> r q~->-- q4 q4-.-- |
  r8 q-. r8 <mi sold si>~->-- q q8-. r <do mib lab>-. |
  <mi sol do>4 r\fermata
  \chordmode {
    r8 do r lab, |
    r re r sib, r fad, r re |
    r mi r do r sold, r mi |
    r fad r re r sib, r fad |
    r lab r la r fa r dod |
    r la r fa r dod r la |
    sol8 r\fermata
  }
  r8 <do mi sol>~->-- q4 q4-.--
  r8 q-. r <lab do mib>~->-- q4 q8( <sold si mi>) |
  <mi sol do>-. <do' mi sol>-> r q~->-- q4 q4-.-- |
  r8 q-. r8 <mi sold si>~->-- q q8-. r <do mib lab>-. |
  <mi sol do>4 r\fermata
  \chordmode {
    r do' r do r do |
    r sib, r sib, r fad, r re |
    r8 do r fa r la, r dod |
    r fa r fad r sib, r re |
    r fad, r sol, r si, r mib |
    sol4\fermata r
  }
  \acciaccatura si'8 do8.-. mi16( sol8.-.) mi16( |
  re8.-.) fa16( la8.) <fad sib>16( re'4)
  <fa, si re sol>->-- | r
  \t {<lab mib' sol>8^(\< la' si} do4-.)\f
  do,,,->-.
}

PetitmariPianoMg =
\relative do' {
  \clef bass
  r4
  do,4-- do'-.--_\pp <do re>-.-- si-.--
  <si do>-.-- <la do>-.-- <la si>-.-- sold-.--
  <sold la>-.-- <fad la>-.-- <fad sold>-.-- mid-.--
  <mid fad>-.-- <red fad>-.-- mi--
  <fad, mid'>->--
  <do do'>->-- do'4~-- do8 do~ do4 |
  do4-. lab4~-- lab8 mi~ mi4 |
  do4-. do'4~-- do8 do~ do4 |
  do4-. mi2-- lab,4 | <do, do'>4 r\fermata
  do'\dyn "mp_secco" do |
  sib sib fad re |
  do do' do do |
  sib sib fad re |
  do si' mib, si' |
  mib, si' mib, sol |
  do, fa' reb la |
  sol8 r\fermata
  do4~-- do8 do~ do4 |
  do4-. lab4~-- lab8 mi~ mi4 |
  do4-. do'4~-- do8 do~ do4 |
  do4-. mi2-- lab,4 | <do, do'>4 r\fermata
  mi' mi |
  sib sib fad re |
  mi mi' mi mi |
  sib sib fad re |
  mi mib si' mib, |
  si' la' fa reb |
  sol,8 r\fermata
  do4~-- do8 do~ do4 |
  do4-. lab4~-- lab8 mi~ mi4 |
  do4-. do'4~-- do8 do~ do4 |
  do4-. mi2-- lab,4 | <do, do'>4 r\fermata
  lab' lab |
  sib sib fad re |
  lab lab' lab lab |
  sib sib fad re |
  lab mib' si' mib, |
  si' dod la fa |
  sol8 r\fermata
  do4~-- do8 do~ do4 |
  do4-. lab4~-- lab8 mi~ mi4 |
  do4-. do'4~-- do8 do~ do4 |
  do4-. mi2-- lab,4 | <do, do'>4 r\fermata
  do' lab |
  re sib fad re |
  mi' do sold mi |
  fad' re sib fad |
  lab' la fa dod |
  la fa dod la |
  sol8 r\fermata
  do'4~-- do8 do~ do4 |
  do4-. lab4~-- lab8 mi~ mi4 |
  do4-. do'4~-- do8 do~ do4 |
  do4-. mi2-- lab,4 | <do, do'>4 r\fermata
  do' r do r do r |
  sib r sib r fad r re r |
  do fa la dod |
  fa fad, sib re |
  fad sol, si mib |
  sol\fermata r
  do, do' |
  <do re>-.-- si-.--
  <si do>-.-- <sol, sol'>-.-- |
  r \t {<mi sold red>8_( mib re}
  <do, do'>4-.) r
}