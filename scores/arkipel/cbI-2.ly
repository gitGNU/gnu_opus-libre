%-- Arkipel -- cbI-2.ly -------------------------------------------%
% (c) 2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Css =
\relative do' {
  mi'4 r mi mi r mi mi r mi
  mi8 sol mi sol mi sol
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {re fa}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  r4 <si,? sol'> q q
  <fad si> r2
  q4 r8 <fad mi'> r2
  <fa re'>4 <fad mi'>2~ q r4
  R2
  \repeat tremolo 3 {mi'8 sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  mi8 sol mi4 mib, mi' do, mi'
  mib,8 do mi' si
  r4 <sib sol'> q
  <dod sol'>2 r4
  q4. <dod fa>8~ <dod mi>4
  r8 <dod sol'>4 <si fa'> mi8
  <dod sol'>8-> fa-. mi-. dod-. sib-. lab-.
  \clef bass
  sol4 fa mi8-. sol(-> lab) fa
  re lab' sib sol->~
  sol fa4 si,8 do( re) si4 r
  la'4 sol
  mi8 la sib sol~ sol dod, la'4
  sol8 si, re mi~ mi dod
  \clef treble do' sib
  la sol4 mi re8
  <fad si>2 <fa sib>4
  <fad si>4. <fa sib>
  <fad si>4 <fa sib>2
  <fad si>4 <fa sib>
  <sol do> <fa sib>2
  <sol do>4. <fa sib>
  <sol do>2 <fa sib>4
  <sol do> q
  <sold dod>8 <fad si>4.
  <sold dod>4. <fad si>8
  <sold dod> <fad si> r <sold dod> q4
  <la re>8 <sol do> <la re>4
  r8 q <sol do> <la re> q4
  q q8 q
  r q <sold dod>4 <la re>8 q
  r8 q4 <sold dod>8
  <la re>4 q
  q8 q16 q r8 q r q
  q4 q16 q q8 <lad red>8. q16
  r q q8 q16 q q q r8 q
  q16 q q8 <si mi> q16 q q q q8
  q16 q q q q8 q16 q q q <do fa>8
  \t 4 {
    sol' mi? sol mi sol mi sol mi sol
    mi? sol mi sol mi sol mi sol mi
    r4 dod8( mi) re( fa)
    sol mi? sol mi sol mi sol mi sol
    mi sol mi sol mi sol
  } r dod,:16 sid: red:
  \t 4 {
    si sold si sold si sold si sold si
    sold si sold si sold si sold si sold
    si sold si do si do
  } mi2~ mi r4
  \clef bass
  \t 4 {mi,,8 sol do mib do sol mi sol mi}
  sol r sol mi sol mi
  sol r \t {sol mi sol}
  \t {mi lab mi} sol r
  \t 4 {
    mi do mib do mib r
    mib do mi do mib r
    mib do mib do mi r
    mib do sol
  } r4
  R2.*2
  \improvisationOn
  \t {mi4^"perc." mi8} r mi
  r4 mi
  \improvisationOff
  r8 sib'16 sib mi mi la8
  \improvisationOn
  \t {mi,4 mi8} r mi r mi
  \improvisationOff
  r re'16 mib fa fad sold la
  \improvisationOn
  \t 4 {r8 mi, mi r mi4}
  r mi \t {r mi8}
  \t 4 {r mi mi r mi mi r mi4}
  \improvisationOff
  \t {fad-> fad8->} r fad
  r do' mid16 fad sold si
  \t {fad,4-> fad8->} r do'16 do mid mid fad8
  \improvisationOn
  mi,8^"perc." mi r4
  mi8 mi r4
  mi8 mi r4
  mi8 mi r4
  mi8 mi r4
  mi8 mi r4
  mi8 mi r4
  mi8 mi \clef treble
  \improvisationOff
  re''16 mid fad sol lab sib do mib
}
