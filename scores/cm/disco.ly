% Harmoniques -- disco.ly -----------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"


DiscoGrille =
\chordmode {
  sol4.:m9 do8 s2
  sol4.:m9 do8 s2
  sol4.:maj7 do8:7 s2
  sol4.:sus4 fa8/do s2
  sol2:m re:m7 mib:maj7 fa
  do4.:m fa8:7 s2
  sib4.:maj7 do8:m7 s2 mib1
  mi4.:m9 la8 s2
  mi4.:m9 la8 s2
}

DiscoFlo =
\relative do' {
  R1*2
  si'?8. fad16 fa8 sib~ sib fa fad sol
  do8. sol16~ sol8 fa~ fa4 r8 sol
  la8. sol16~ sol8 la16 sib \tuplet 3/2 {do4 sib do}
  re2 r
  do8. sib16~ sib8 mib~ mib4 sib
  la8 sol do sol r4 r8 fa
  \tuplet 3/2 2 {sol4 fa sol fa mib fa}
  r fad2 r4
}

DiscoBrice =
\relative do' {
  \clef bass
  R1*2 r2
  sib,8 fa'16 sib, fa'4
  r8 si, do sol' do,4 r
  r re8 mib \tuplet 3/2 2 {fa4 sol la sib la sib} do2
  r \tuplet 3/2 {do4 re do}
  fa, sib8 mi,? do' sib mib,4
  r8 re mib fa sol la sol la si?2. r4
}

DiscoPianoMd =
\relative do' {
  <sib re fa la>8 q q q16 <do mi sol> r4 r16 fa re do
  <sib re fa la>8 r q8. <do mi sol>16 r2
}

DiscoPianoMg =
\relative do' {
  \clef bass
  sol,8 la sib si16 do r4 r8 sib16 la
  sol8 la sib si16 do r4 r8 sib16 la
  sol8 la sib si16 do r4 r8 sib16 la
  sol8 la sib si16 do r4 r8 sib16 la
  sol2 re mib8 sib' mib, mi16 fa r4 r8 mib16 re
  do8 re mib mi16 fa r4 r8 sol16 la
  sib8 fa sib si16 do r4 r16 re do sib
  mib,2 r8 do re red16 mi~
  mi8 fad sol sold16 la r4 r8 sol16 fad
  mi8 fad sol sold16 la r4 r8 sol16 fad
}
