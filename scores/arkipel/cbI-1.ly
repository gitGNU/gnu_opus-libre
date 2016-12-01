%-- Arkipel -- cbI-1.ly -------------------------------------------%
% (c) 2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Cs =
\relative do' {
  mi'2.\CaV~ mi~ mi~
  mi2 mi4~ mi2 mi4~ mi2 r4
  mi2.~ mi mi
  r4 sol2~ sol2 sol4\< sol sol sol
  sol2\> fa4~ fa2. r4\! mi2
  fa4 sol2~ sol2.~ sol2 r4
  r2 sol4~ sol2 sol4\< sol sol sol
  sol2\> fa4~ fa2.~ fa4\! r mi~
  mi2 fa4~ fa2.
  sol2.~ sol2 r4
  r mi8 dod mi dod mi4
  sol4 r8 fa~ fa4
  sol8 lab fa4 r8 lab sib4
  sol r8 fa~ fa4~ fa2 mi4~
  mi8 fa4.~ fa4 sol2~
  sol2.~ sol8 mi sol mi sol4
  sol8 mi sol mi sol4
  sol8 mi sol mi sol4
  sol8 mi sol mi sol4
  sol8 mi sol mi
  r4 mi8 dod mi4
  <fad, si>2 r4
  q4. q
  r8 q~ q2
  q4 r8 mi^"pizz." re si
  \clef bass
  dod fad, dod' fad,
  r dod' fad, dod'
  fad,4 r8 dod'
  fad, dod' r4
  r fad,8(^"arco" la) mi4
  mib8^"pizz." reb' lab reb
  r mib, reb' lab
  reb4 lab8 reb
  lab4 reb8 lab
  si?4 mi8 si
  \clef treble
  r la'4^"arco" do sib8
  mib2.~ mib2 r8 mib~
  mib4 lab, mib'8 r
  fab reb4 do8
  mib2.~ mib2 lab,8 mib'~
  mib4 reb do8 mib~
  mib mi re dod
  mi4. la,8 mi' si re4
  dod8 mi4 fa8 re si
  mi4 mi8 re mi re dod mi4 fa8
  re sol fad fa mi4 r8 re4 dod8
  mi fa re4 r8 mi4 re8
  fad4. mi8~ mi4~ mi red fad
  sol mi2 red4 fad2~ fad8 sol mi red r4
  <mib sol> q2 q q4
  \t 4 {r mi8( dod) fa( re)}
  <mib sol>4 q2 q
  r8 mi:16 red: fad:
  \t 4 {
    sol mi sol mi sol mi sol mi sol
    mi sol mi sol mi sol mi sol mi
    sol mi si sold si mi
  } sol mi sol mi
  sol r sol mi sol mi
  sol r sol mi sol mi
  sol4 r2
  fa4. sol8~ sol2~ sol4 r
  R2*3 R2.*2
  \clef bass
  \t {fad,,,4-> fad8->} r fad r4 fad
  r8 sib mib16 mi fad la
  \t {fad,4-> fad8->} r fad-> r fad->
  r sib16 sib mib mib mi8
  \t 4 {r fad,-> fad-> r fad-> r}
  dod''16-> si lad8 r re16-> dod si lad r8
  mi'16-> re mi si-> la si sib-> lab sib fa-> mib fa
  \improvisationOn
  \t {mi,4^"perc." mi8} r mi
  \improvisationOff
  r do'16 do fad fad si8
  \improvisationOn
  \t {mi,,4 mi8}
  \improvisationOff
  r mi'16 fa sol sold lad si
  fad, mid' fad, mid' sold la do dod
  fad,, mid' fad, la' si re mi sol
  fad,, mid' fad, la' dod mi sold si
  mi,, la si do dod fad \clef treble sol sold
  lad red \clef bass mi,, sol la dod re fa
  \clef treble fad sib do mib
  \clef bass mi,, sol si do
  \clef treble re fa sol lab
  do mib \clef bass mi,, sol
  la si do dod re8 r r4
  \clef treble
  \repeat unfold 8 \ttt {mi''16 red re dod re red}
  r2 r4 \t {dod16 do si} r8 r \t {re16 dod do} r4
  <mi, sol>8. q16 q8 <fa sol>4 q <mi sol>8 q2.
  r2 \ttt {dod16 do si sib si do}
  r8 \t {lab'16 sol fad} r4 \t {si16 sib la}
  r8 r \t {dod16 do si}
  \repeat unfold 4 \ttt {mi red re dod re red}
  \t 8 {
    mi red re re dod do
    do si sib sib la lab
    lab sol fad fad fa mi
  } mi8 \t {sol16 fad fa} r8 \t {sol16 fad fa}
  \repeat unfold 7 \ttt {sol fad fa mi fa fad}
  \ttt {sol fad sol fad sol fad}
  \repeat tremolo 2 {sol16 fad}
  \repeat tremolo 6 {sol fad}
  \repeat tremolo 6 {sol fad}
  \repeat tremolo 6 {sol fad}
  \repeat tremolo 4 {sol fa}
  \repeat tremolo 2 {mi fa}
  \repeat tremolo 6 {mi fa}
  \repeat tremolo 6 {mi? fa}
  \repeat tremolo 6 {mi fa}
  \repeat unfold 7 \ttt {sol fad fa mi fa fad}
  \repeat tremolo 2 {sol fad}
  \repeat tremolo 2 {mi fa}
  \repeat tremolo 2 {sol fad}
  \repeat tremolo 2 {mi fa}
  \repeat tremolo 2 {sol fad}
  \repeat tremolo 2 {mi fa}
  \repeat tremolo 2 {sol fad} \t {sol8 sol sol}
  fadd sold, dod, mid'4 sold,8
  fadd' sold dod,, mid' sold, fadd'
  sold mid dod, mid' sold, redd'
  fadd sold mid dod, sold'' lad
  sold sol4 fa mi8
  <dod sol'>4 <si fa'> mi8 <dod sol'>
  sold' <si, fa'>4 <sib mi>8 <dod sol'> sold'
  lad <dod, sol'> <si fa'> mi do' sib
  la <dod, sol'>4 <do fad>8 <mib la> sib'
  la <dod, sol'>4 <do fad>8 <mi sib'> la
  <dod, sol'>4 <do fad> <si fa'>
  <mi sib'>8 <re sold> <do fad>
  <mib la> <dod sol'> <si fa'>
  <sib mi> <la red>4 <sold re'>8
  <sol dod> <fad do'>4 <fa si>8~
  q2~ q~ q~ q r4
  R2.*2
  \improvisationOn
  do8 do r2 R2. do4 r2 r4 r8 do r4 r do r16 do r8
  \improvisationOff
  sol'16 lab sib sol fa8 mi16 sol lab fa8 mi16
  sol lab sib dob sib lab sol fa sib lab sol fa
  sib lab sol fa sib lab sol sib lab sol lab sol
  mi sib' sol lab \clef bass fad,,
  \clef treble mib''' reb do
  re, si' la fa
  sib mi, sol fad sold \clef bass si,,
  \clef treble dod'' re do mib fa la,,
  sol'' do, fa mi la re, sold fad
  si red, lad' dod
  \repeat unfold 7 \ttt {mi red re dod re red}
  r8 fa,,16 do' dod sold' la8
  \repeat unfold 4 \ttt {mi'16 red re dod re red}
  \t {r8 fa,, la} \t {dod4 re red}
  \repeat unfold 3 \ttt {mi'16 red re dod re red}
  \clef bass
  r8 fad,,,4.
  r4 dod'-\harmonic ^"pizz." r
  R2.*4
  r2 r8 la^"(pizz.)"
  \t {r4 mi si} r r r8 fad r4
  R2. r8 fad \t {mi'4 si la'}
  R2. \clef treble
  r4 do''^"arco" sib
  la sol2 fad mi4 red2.~ <la red>2.~ q2 r4
  r si'2 lad sold4 si dod sib~ sib2 sib4 lab4. sib
  sol2.~ <re sol>~ q2 sol4~ sol2 mi4 sol2.~ sol2 r4
  r dod2 dod4 dod dod
  dod4. do8~ do4
  \tuplet 4/3 {r sib reb mib}
  do2.~ do4 mi re dod2. si~ <mi, si'>~ q2 <mi, si'>4
  q q q r
  sol'2 fa4~ fa8 mi sol lab sib4
  r8 la4 sol8 sib do la4 \t {sold4 si8} r4
  la8 sold fad fa sol4
  r8 fa4 mi8 lab sib \t {sol4 la dod~}
  dod2~ <mi,\harmonic dod'>~ q4 r
  mi'8:16 re: dod: re: dod: si:
  mi: re: dod: re: dod: si:
  sib: la: sol: la: sol: fad:
  sib: la: sol: la: sol: fad:
  reb'4 do4. sib8
  reb mib do4 sib
  r8 reb do sib r mib
  reb do sib reb do sib
  sol2.~ sol4 fa sib
  mi,2.~ mi4 r8 sib'4 fa8
  sol2.~ sol8 fad \t {sib4 dod sol~}
  sol2.~ sol4 r fad8 mi \t {red4 dod8~}
  dod4 re mi fa2~ fa2.~ fa~
  fa~ fa~ fa~ fa~
  fa~ fa2 r4 R2.*2
  r4 r8 si~ si4 si si si
  si2 la4~ la2 r4
  r sol2 la si4~ si2.~ si~ si2 r4
  r si2 si4 si si
  si4. la8~ la4~ la2 r4 r8 sol~ sol4 la~
  la si2~ si2.~ <sol si>~ q~ q~ q~ q r4
  la,4 fad la fad la fad
  la fad la fad la fad
  sold mid sold mid fad mid
  \clef bass
  r4 r8 si,4.\CaV\laissezVibrer ^"pizz."
  mi2\CaV\laissezVibrer s4
  \clef treble
  <>^"arco"
  mi''2.~\CaV mi~\CaV mi~\CaV mi4\CaV r8
  do^"pizz. al fine" mib fad sib4 r8 sib fad do
  mi,4\CaV r2 R2.
  r4 r8 dod' fa la do4 r8 do la dod,
  mi,4\CaV r2 R2.*2 r4 r8
  re' fa do' red4 r2
}
