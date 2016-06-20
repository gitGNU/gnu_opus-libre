% Harmoniques -- disco.ly -----------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"


DiscoGrille =
\chordmode {
  sol4.:m9 do8 s2
  sol4.:m9 do8 s2
  sol4.:m9 do8 s2
  sol4.:m9 do8 s2
  %% Refrain
  sol4.:maj7 do8:7 s2
  sol4.:sus4 fa8/do s2
  sol2:m re:m7 do:m9 fa
  mib4. fa8:7 s2
  sib4.:maj7 do8:m7 s2
  re:m mib
  mi4.:m9 la8 s2
  %% Couplet
  mi4.:m9 la8 s2
  mi4.:m9 la8 s2
  mi4.:m9 la8 s2
  mib4.:/fa fa8 s2
  sib2:7 mib:7
  la:m7 si:sus4.7
  mi4.:m9 la8 s2
  sol4. do8:maj7 s2
  fa4.:7 sib:7 mib4:7
  la2:m7 re:7
  %% Refrain
  sol4.:m9 do8 s2
  sol4.:m9 do8 s2
  sol4.:maj7 do8:7 s2
  sol4.:sus4 fa8/do s2
  sol2:m re:m7 do:m9 fa
  mib4. fa8:7 s2
  sib4.:maj7 do8:m7 s2
  re:7 solb:maj7
  sib4.:m9 mib8 s2
  %% Couplet
  sib4.:m9 mib8 s2
  sib4.:m9 mib8 s2
  lab4.:m9 fa8:7 s2
  mib4.:m lab8:7 s2
  solb4. reb mib4:7
  fa2:sus4.7 s
  sib4.:m9 mib8:m s2
  lab4.:7 reb8:maj7 s2
  solb4.:maj7 do:m7 fa4:7
  si2:sus4.7 s
  %% Couplet 2
  mi4.:m9 la8 s2
  do4. re8 s2
  mi4.:m9 la8 s2
  do4.:7 si8:7 s2
  mi4.:m9 la8 s2
  re4.:7 sol8 s2
  do4.:m7 fa4.:7 mib4:7
  la2:m7 re:7
}

DiscoFlo =
\relative do' {
  \tempo "Deciso con brio" 4 = 108
  R1*4
  si'?8. fad16 fa8 sib~ sib fa fad sol
  do8. sol16~ sol8 fa~ fa4 r8 sol
  la8. sol16~ sol8 la16 sib \tuplet 3/2 {do4 sib do}
  re2 r
  do8. sib16~ sib8 mib~ mib4 sib
  la8 sol do sol r4 r8 sol
  \tuplet 3/2 2 {la4 sol la sib la sol}
  r fad2 r4
  \bar "||"
  si4. fad8~ fad4 do' si2 r4 fad
  si4. fad8~ fad4 mi la4. mib8 r2
  re8 mi fa fad \t {sol4 la sib}
  do4. si8 r2
  R1*2
  la8 sol la sib \t {do4 sib la?} sol4. fad8 r2
  \bar "||"
  R1 r2
  r8 mi4 fad8 si4. fad8 r4 r8 sol
  do8. sib16~ sib8 fa~ fa4 r8 sol
  \t 2 {la4 sol la sib do sib}
  la2 r
  re8 la sib mib~ mib re~ re4
  do4 re8 la r4 r8 sol
  la sol16 fa r8 mib re do sib do reb2. r4
  \bar "||"
  mib4. fa8~ fa4 sib fa2 r
  r4 dob'8 solb r lab4. sib2 r4 lab
  sib lab8 solb \t {fa4 solb sol}
  lab4. la8 r2
  R1 r2 r4 lab
  sib lab8 sol? \t {fa4 sol la} si4. si8 r2
  \bar "||"
  si8. mi16~ mi8 sib~ sib8 la4 sol8
  do8. si16~ si8 fad r4 r8 sol
  \t 2 {fad4 mi fad sol la sold}
  lad4. si8 r2
  R1 r2 r4 sib
  \t 2 {la sol la si do sib} si4. la8 r2
  \bar "||"
  R1*2
}

DiscoBrice =
\relative do' {
  \clef bass
  R1*4 r2
  sib,8 fa'16 sib, fa'4
  r r8 si, do sol' do,4
  r re8 mib \tuplet 3/2 2 {fa4 sol la sib la sib} do2
  r \tuplet 3/2 {do4 re do}
  fa, sib8 mi,? do' sib mib,4
  r8 re mib fa sol la sol la si?2. r4
  R1*6
  si4. mi,8~ mi4 re8 la' re, reb do sol'~ sol4 do,8 re
  mib4 fa8 sol \t {lab4 sib do} re4. re8 r2
  R1*2
  r4 si, sib8. fa'16~ fa8 sib,
  r4 sib8. do16 sol'8 do,~ do4
  r re8 mib \t 2 {fa4 fad sol la sib si} do2
  r do8 re sol, fa mi mib fa do'~ do fa, r4
  r fa8 fad sol la sol la sib do sib do16 reb~ reb2
  R1*6
  reb4. solb,8 r fa mib fa do'8. sib16~ sib8 lab~ lab r reb, mib
  \t {fa4 solb lab} sib4 do8 dod re4. red8 r2
  R1*4
  r8 do si mi, si'4. mi,8 si'8. mi,16~ mi8 si'~ si4 r8 mi,
  \t 2 {mib4 fa fad sol la sib} do4. re8 r2
  R1*2
}

DiscoPianoMd =
\relative do' {
  R1*2
  <sib re fa la>8 r q8. <do mi sol>16 r4 r16 fa re do
  <sib re fa la>8 q q q16 <do mi sol> r2
  %% Refrain
  <si re fad si>4. <do re fa sib>4 <sib mi>8~ q4
  <re fa sol do>8. <sib mib sol>16~ q8 <la do re fa>~ q2
  r8 <sib re fa la>4. r8 <mi fa la do>~ q16 re fa la
  <mib sol sib re>8 q q q16 <fa la do> r2
  <re mib sol sib>4. <do mib fa la>8~ q2
  <do re fa la>4. <sib do mi sol>8~ q4 <sib re mib>
  <la do fa>4 q <sib reb mib sol> <reb mib sol la>
  <fad sol si re>8 q q q16 <mi sol la dod> r2
  %% Couplet
  <fad sol si re>8 r q8. <mi sol la dod>16 r4 do'16 mi, sol la
  <fad sol si re>8 q q q16 <mi sol la dod> r8. <mi fad la do>16~ q4
  <re fad sol si>8 r q8. <mi sol la dod>16 r2
  <mib sol sib re>8 q q q16 <fa la do> r2
  r8 <re lab' do>4. <reb sol do>2
  <mi fad do'>8 q q q16 <mi fad si> r2
  <fad sol si re>8 r q8. <mi sol la dod>16 r4 r16 mi sol la
  <fad la si re>8 q q q16 <mi sol si do> r2
  r8 <do mib sol sib>4 <re lab' do>8~ q4 <reb sol do>4
  <si' do mi sol>8 q q q16 <la do re fad> r2
  %% Refrain
  <sib, re fa la>8 r q8. <do mi sol>16 r4 r16 fa re do
  <sib re fa la>8 q q q16 <do mi sol> r2
  <si re fad si>4. <do mi sib'>8~ q4 dod16 re fa sol
  <re fa sol do>8. <sib mib sol>16~ q8 <la do re fa>~ q2
  r8 <sib re fa la>4. r8 <mi fa la do>~ q16 re fa la
  <mib sol sib re>8 q q q16 <fa la do> r2
  <re mib sol sib>4. <do mib fa la>8~ q2
  <do re fa la>4. <sib do mi sol>8~ q4 <sib re mib>
  <la do fa>4 q <sib re mib sol> <sib reb fa solb>
  <reb fa lab do>8 q q q16 <reb mib sol sib> r2
  %% Couplet
  <reb fa lab do>8 r q8. <reb mib sol sib>16 r4 r16 sib reb mib
  <reb fa lab do>8 q q q16 <reb mib sol sib>
  r8 solb''16 reb lab mib sib fa
  <sib, dob mib lab>8 r <sib mib solb lab>8. <la! reb mib lab>16~ q4
  r16 reb' do lab
  <reb, fa solb sib>8 q q q16 <do mib fa sib> r2
  r8 <reb fa solb sib>4 <do reb fa lab>8~ q4 <reb sol sib>
  <do mib sol sib>8 q q <do sol' sib>16 <do fa la> r2
  <reb fa lab do>8 r <mib fa lab do>8. <mib solb sib reb>16
  r4 r16 mib solb sib
  <mib, solb lab do>8 q q16 q8 <reb fa lab do>16 r4 r8 <do mib lab>
  <reb fa solb sib>4 q8 <do mib sol sib>4. <do mib sol la>4
  <si mi fad la>8 q q <mi fad la>16 <red fad si> r2
  %% Couplet 2
  <fad sol si re>8 r q8. <mi sol la dod>16 r4 r16 mi sol la
  <mi sol si do>8 q q q16 <mi fad la do> r8. <dod mi fad lad>16~ q4
  <re fad sol si>8 r q8. <mi sol la dod>16 r2
  <mi sol sib re>8. q16 r8 <red fad la re!>~ q4 r
  r8 <re lab' do>4. <dod sol' do!>2
  <mi fad la do>8 q q q16 <re fad sol si> r2
  r8 <do mib sol sib>4 <do mib la>8~ q4 <reb sol sib>4
  <si' do mi sol>8 q q q16 <la do re fad> r2
  %% Refrain
  <sib, re fa la>8 r q8. <do mi sol>16 r4 r16 fa re do
  <sib re fa la>8 q q q16 <do mi sol> r2
  <si re fad si>4. <do mi sib'>8~ q4 dod16 re fa sol
  <re fa sol do>8. <sib mib sol>16~ q8 <la do re fa>~ q2
  r8 <sib re fa la>4. r8 <mi fa la do>~ q16 re fa la
  <mib sol sib re>8 q q q16 <fa la do> r2
  <re mib sol sib>4. <do mib fa la>8~ q2
  <do re fa la>4. <sib do mi sol>8~ q4 <sib re mib>
  <la do fa>4 q <sib re mib sol> <sib reb fa solb>
  <reb fa lab do>8 q q q16 <reb mib sol sib> r2
}

DiscoPianoMg =
\relative do' {
  \clef bass
  sol,4 la8 sib16 do r4 r8 sib16 la
  sol8 la sib si16 do r2
  sol4 la8 sib16 do r4 r8 sib16 la
  sol8 la sib si16 do r4 fa,8 fad
  %% Refrain
  sol8 la sib si16 do r4 r8 sib16 la
  sol8 la sib si16 do r4 r8 sib16 la
  sol4 fa8 mi16 re~ re4. re8
  do re mib mi16 fa r8 fa do sib
  mib mib' mib, fa~ fa4 fa
  sib,8 sib' sib, do~ do2
  re8 re do si16 sib r8 si do re
  mi4 fad8 sol16 la r4 r16 la sol fad
  %% Couplet
  mi8 fad sol sold16 la r4 r8 sol16 fad
  mi8 fad sol sold16 la r4 re,8 red
  mi8 fad sol sold16 la r8 sol re do
  fa sib do mib16 fa r4 fa,
  sib,8 sib' reb, re16 mib~ mib8 lab reb, do16 si
  la8 mi' fad la16 si r2
  mi,4 fad8 sol16 la r4 r16 la sol fad
  sol4 la8 si16 do r8 re, mib mi
  fa fa' fa, sib sib, do16 re mib8 mib'
  la,,8 sib do dod16 re r2
  %% Refrain
  sol4 la8 sib16 do r4 r8 sib16 la
  sol8 la sib si16 do r2
  sol4 la8 sib16 do r4 r8 sib16 la
  sol8 la sib si16 do r4 fa,8 fad
  sol4 fa8 mi16 re~ re4. re8
  do re mib mi16 fa r8 re la sib
  mib mib' mib, fa~ fa4 mib'32 mi fa8.
  sib,,8 sib' sib, do~ do2
  re8 re mib fa16 sol r8 solb lab la
  sib sib, do reb16 mib r4 r16 mib reb do
  %% Couplet
  sib8 do reb re16 mib r4 r8 reb16 do
  sib8 do reb re16 mib r4 sib'8 la
  lab lab sol solb16 fa r8 mib'32 fa8.. fa,8
  mib8 fa solb sol16 lab r8 lab mib reb
  solb solb' solb, reb' reb, do16 reb mib8 mi
  fa sib do mib16 fa r2
  sib,8 sib, reb fa16 mib r8 solb4 sol8
  lab lab, do16 mib8 reb16 r4 fa8 fa,
  solb' fa16 mib reb8 do~ do do fa fa,
  si mi fad la16 si r2
  %% Couplet 2
  mi,8 fad sol sold16 la r4 r8 re,16 mi
  la,8 si do dod16 re r4 re8 red
  mi8 fad sol sold16 la r8 si16 la lad si sol re
  do8 sol la lad16 si r8 lad''32 si16.~ si4
  mi,,4 fad8 sol16 la r8 la'8~ la16 sol, fad mi
  re8 red mi fad16 sol r8 sol, sib si
  do do' do, fa fa' fa,16 mi mib8 mib'
  la,,8 si? do dod16 re r2
  %% Refrain
  sol4 la8 sib16 do r4 r8 sib16 la
  sol8 la sib si16 do r2
  sol4 la8 sib16 do r4 r8 sib16 la
  sol8 la sib si16 do r4 fa,8 fad
  sol4 fa8 mi16 re~ re4. re8
  do re mib mi16 fa r8 re la sib
  mib mib' mib, fa~ fa4 fa
  sib,8 sib' sib, do~ do2
  re8 re mib fa16 sol r8 solb lab la
  sib sib, do reb16 mib r4 r16 mib reb do
}
