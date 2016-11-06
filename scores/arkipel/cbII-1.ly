%-- Arkipel -- cbII-1.ly ------------------------------------------%
% (c) 2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Cb =
\relative do' {
  sol''2.~\CaV sol~ sol~ sol~ sol sol~
  sol8 r sol mi sol mi
  sol r sol mi sol mi
  sol r sol mi sol mi
  sol r sol mi sol mi
  sol r sol mi sol mi
  sol r sol mi sol mi
  sol r sol re sol4
  re8 r fa re fa4
  r fa8 re mi4
  r sol8 mi sol mi
  sol r sol mi sol mi
  sol r sol mi lab mi
  sol r sol mi sol4
  sol8 mi sol mi sol r
  sol mi sol r sol mi
  sol4 r8 reb fa reb
  fa r fa reb fa reb
  fa r fa reb fa4
  sol8 mi sol lab r4
  sol8 mi fa mi sol r
  sol mi sol r sol mi
  sol r sol mi sol mi
  r4 <sib sol'> q q
  \clef bass
  sol4 r8 fa4 mi8
  sol lab fa4 sol8 lab sib lab
  sol4 r8 fa~ fa4~ fa2 r4
  R2
  \clef treble
  sol'8 r sol mi sol mi
  sol r sol mi sol mi
  sol r sol mi sol mi
  si r si sold si sold
  si r si sold si sold
  si r si sold si sold
  \t 4 {si sold si sold si sold}
  r4 <fa do'> q
  \clef bass
  sol4 r8 fa4 mi8
  sol lab fa4\glissando dob'8 sib
  lab sol4 fa mi8
  sol lab fa4 r
  fad,8^"pizz." si, fad' si,
  r fad' si, fad'
  si,4 r8 fad'
  si, fad' r4
  r2 reb8(^"arco" mib)
  sib4 mib8^"pizz." si'
  r fad si fad
  si4 fad8 si
  fad4 si8 fad
  red4 dod'8 sold
  r mi' si mi dod4
  \clef treble
  <fa? sib>2^"arco" <fad si>4
  <fa sib>4. <fad si>
  <fa sib>4 <fad si>2
  <fa sib>4 <fad si>
  <fa sib>4 <sol do>2
  <fa sib>4. <sol do>
  <fa sib>2 <sol do>4
  <fa sib> q
  <fad si>8 <sold dod>4.
  <fad si>4. <sold dod>8
  <fad si> <sold dod> r <fad si> q4
  <sol do>8 <la re> <sol do>4
  r8 <sol do> <la re> <sol do> q4
  q q8 q
  r <sold dod> <la re>4 <sold dod>8 q
  r q4 <la re>8
  <sold dod>4 q
  q8 q16 q r8 q r q
  q4 q16 q q8 q8. q16
  r q q8 q16 q q q r8 q
  q16 q q8 q q16 q q q q8
  q16 q q q q8 q16 q q q <la re>8
  \t 4 {
    sib sol sib sol sib sol sib sol sib
    sol sib sol sib sol sib sol sib sol
    r4 reb'8( sib) do( la)
    sib sol sib sol sib sol sib sol sib
    sol sib sol sib sol sib
  } r do:16 reb: re:
  sol4\CaV
  \clef bass
  \t 4 {
    mib,8 do mib do mib do
    mib do mib do mib do mib do mib
    do mib do sol do sol
    mi sol do mib do sol
    mi sol mi sol mi sol mi sol mi
    sol mi sol mi sol mi sol mi sol
    mi sol do mib do sol
  } mi r
  \t {mib' do sol} mi r
  \t 4 {mib' do sol mi sol do}
  mib r mib,16 do sol mi
  sol8 r mib'16 do sol mi
  \repeat tremolo 4 {sol mi}
  \repeat tremolo 4 {sol mi}
  \repeat tremolo 6 {sol mi}
  \repeat tremolo 4 {sol mi}
  \t {sol8 mi sol}
  \t {mi4-> mi8->} r mi r4 mi
  r8 sold dod16 re mi sol
  \t {mi,4-> mi8->} r mi-> r mi->
  r sold16 sold dod dod re8
  \t 4 {r mi,-> mi-> r mi-> r}
  si''16-> la sold8 r do16-> si la sold r8
  re'16-> do re la-> sol la lab-> solb lab mib-> reb mib
  \improvisationOn
  \t {re,4^"perc." re8} r re
  \improvisationOff
  r sib'16 sib mi mi la8
  \improvisationOn
  \t {re,,4 re8}
  \improvisationOff
  r re'16 mib fa fad sold la
  mi, red' mi, red' fad sol lad si
  mi,, red' mi, sol' la do re fa
  mi,, red' dod mi sold si red fad
  re, sol la sib si mi fa fad
  \clef treble sold dod
  \clef bass re,, fa sol si do mib
  \clef treble mi sold lad dod
  \clef bass re,, fa la sib
  \clef treble do mib fa fad
  lad dod \clef bass re,, fa
  sol la sib si \clef treble
  do red mi fa solb lab sib reb
}
