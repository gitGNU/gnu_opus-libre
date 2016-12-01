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
  sol4 r8 fa4 mi8
  sol lab fa4 sol8 lab sib lab
  sol4 r8 fa~ fa4~ fa2 r4
  R2
  sol'8 r sol mi sol mi
  sol r sol mi sol mi
  sol r sol mi sol mi
  si r si sold si sold
  si r si sold si sold
  si r si sold si sold
  \t 4 {si sold si sold si sold}
  r4 <fa do'> q
  sol4 r8 fa4 mi8
  sol lab fa4\glissando dob'8 sib
  lab sol4 fa mi8
  sol lab fa4 r
  \clef bass
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
  sol la sib si do8
  \improvisationOn re,, re4
  \improvisationOff
  \clef treble
  \repeat unfold 7 \ttt {sol'''16 fad fa mi fa fad}
  sol8 r \ttt {re'16 dod do si do dod} r4
  \t {sol16 fad fa} r8 r \t {la16 sold sol}
  r4 \t {sib16 la lab} r8
  \repeat unfold 7 \ttt {sol16 fad fa mi fa fad}
  sol8 r \ttt {sib16 la lab sol lab la} r4
  \t {fa16 mi red} r8 r \t {sol16 fad fa}
  r4 \t {sib16 la lab} r8
  \repeat unfold 4 \ttt {mi16 fa fad sol fad fa}
  \t 8 {
    mi fa fad fa fad sol
    fad sol lab sol lab la
  } sib:32 si: do: dod:
  re8 \improvisationOn
  do,, \improvisationOff
  << {\xNotesOn si'' si} \\ {\improvisationOn do,, do} >>
  R2.*3
  r4 <sol'' sol>2~ q2 q4 q q q q2. <fa fa>~ q4 <mi mi>2~
  q8 <fa fa>~ q2~ q2 <sol sol>4~ q2.~ q4 r2
  r q4~ q q q
  q2 <fa fa>4~ q <mi mi> <sol sol>
  <lab lab>8 <fa fa>2 <mi mi>8
  <sol sol>4 <fa fa> <mi mi>
  \t 4 {red8 sold, red' dod fad, dod' si mi, si'}
  \clef bass
  <re, la'> <la, re> <re' la'> mi,,-+ la-+ <mi'' si'>
  <re la'> <la, re> <mi'' si'> <re, sol> <fa' do'> <re la'>
  <la, re> <re' la'> mi,,-+ la-+ <mib'' sib'> <re la'>
  <dod sold'> <la, re> <dod' sold'> mi,,-+ la-+ <re' la'>
  <dod sold'> <mi si'> <mi,, la>-+
  <re'' la'> <mi,, la>-+ <do'' sol'>
  mi,,-+ <sib'' fa'> mi,,-+ <lab' mib'> mi,-+ <fad' dod'>
  <re la'> <mi si'> <fad dod'> <mib sib'> <fa do'> <sol re'>
  <mi si'>4 q~ q q q2~ q~ q~ q r4
  R2.*2
  \improvisationOn
  re,8 re r2 R2. re4 r2 r4 r8 re r4
  \clef bass
  \improvisationOff
  si''16 do re si la8 sold16 si do la8 sold16
  si do re mib re do si la~ la sold si do
  la8. sold16 re' do si8 la16 mib' re do
  si mib re do si mib re do si mib re do
  dod sol sib la si re mi fa
  \clef treble mib fad sold do
  sol dod re fad sold si, la' sib
  \t 4 {
    do8 mib, fa
    mi sol dod,
    re fad sold
    si la sib
  }
  \repeat unfold 7 \ttt {re16 dod do si do dod}
  r8 fa,,16 sib re sol si8
  \repeat unfold 4 \ttt {re16 dod do si do dod}
  \t {r8 fa,, sol} \t {la4 sib lab}
  \repeat unfold 3 \ttt {re'16 dod do si do dod}
  r8 re,,4.
  reb'2. sib
  reb4 sib reb~ reb sib reb
  reb sib reb reb sib reb reb reb8 sib reb4
  reb sib reb reb sib reb reb reb8 sib reb sib
  reb4 sib reb reb sib reb~ reb sib reb~ reb sib reb
  la4. dod la dod la red
  <la red> dod <la red> dod <la red> dod
  <la red> dod <la red>4 dod la
  do lab re do lab re do do8 lab re4
  do lab re
  << {\oneVoice do2 lab4~ \voiceOne lab2}
     \\ {s2. mi,2\laissezVibrer _+_\markup \number 8}
  >> r4
  r dod''2 dod4 dod dod
  dod4. do8~ do4
  \tuplet 4/3 {r sib reb mib}
  do2 sib4 fa' mi re dod2. si~ si~ si2 <do, sol'>4
  q q q r
  sol'2 fa4~ fa8 mi sol lab sib4
  r8 la4 sol8 sib do la4 \t {sold4 si8} r4
  la8 sold fad fa sol4
  r8 fa4 mi8 lab sib \t {sol4 la dod~}
  dod2~ <re,\harmonic dod'>~ q4 r
  re'8:16 do: si: do: si: la:
  re: do: si: do: si: la:
  do: si: la: sold: do: si:
  la: sold: re': si: la: sold:
  mi': re: si: la: sold: mi':
  re: si: la: fa': mi: re:
  si: mi: re: si: fa': mi:
  fa: mi: re: fa: mi: re:
  fa4 mi4. re8
  fa4 sol2~ sol2.~ sol4 r8 lab4 mi8
  fa2.~ fa8 mi \t {lab4 si? fa~}
  fa2.~ fa4 r mi8 re \t {dod4 si8~}
  si4 mi fa sol2~ sol2.~ sol4 mi2
  sol4 mi sol mi sol mi
  mi4. sol mi4 r8 sol4 mi8~
  mi8 r sol mi sol mi
  sol r sol mi sol mi
  sol r sol mi sol mi
  sol r sol mi lab mi
  sol r sol mi sol mi
  sol r sol mi sol mi
  fa r fa mi fa4
  mi fa8 mi fa4
  r8 mi fa mi fa4
  sol?8 r sol red sol red
  sol r sol red mi red
  sol r sol red sol4
  sol8 red sol mi r4
  sol8 red mi red sol r
  sol8 red sol4 sol8 mi
  sol4 sol8 mi fa mi
  fa4 fa8 mi fa mi
  fa4 fa8 mi fa4
  sol sol8 mi do mi
  sol4 sol8 mi do mi
  sol mi sol do, mi sol
  mi4 mi8 do mi do
  mi4 mi8 do lab do
  mib4 mib8 do mib do
  mib4 do la? r
  \clef bass
  sib,,2\laissezVibrer ^"pizz" s4
  \clef treble
  r2 sol'''4~^"arco" sol r8 sol~ sol4
  sol sol sol sol2.~ sol4 fa?2~ fa4 r2
  sol,4 mi sol mi sol mi
  sol mi sol mi sol mi
  sol mi sol8^"pizz." lab
  \clef bass
  <la,, la''>4 r \clef treble la''8 lab
  sol4^"arco" mi sol mi sol mi
  sol mi sold8^"pizz." la
  \clef bass
  <la,, sib''>4 r \clef treble sib''8 lab
  sol4^"arco" mi sol mi sol mi
  sol mi sol mi sol8 sold^"pizz." la lad
  si4 r2
}
