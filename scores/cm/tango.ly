% Harmoniques -- tango.ly -----------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"


TangoGrille = \chordmode {
  R1*8
  sib1*2 mib:m/sib lab:m/sib fa1 sib:7
  la1:m la2:m sol re:m sib la1:m re:maj7 re:m7
  mi2:7 fa:7 sol mi:7
  sib1*2:7 mib1:m/sib sib:7
  si:7/si mi:7/sib re2:7/sib sol:7/sib sib1:7
  sib1*2 mib:m/sib lab:m/sib fa1 sib:7
}

TangoFlo =
\relative do' {
  \tempo "Largo"
  \key mib \minor
  R1*16
  \bar "||"
  \key la \minor
  \tempo "Smooth jazz (bossa nova)"
  r4 si8 mi~ mi si do re
  \tuplet 3/2 {mi4 la mib} r2 r8 sol re fa
  do4. re8 \tuplet 3/2 {sol4 la mi} r2
  \tuplet 3/2 {dod4 fad dod~} dod4. dod8
  do si do fa~ fa4 do
  re sol la mib sol re
  sold2
  \bar "||"
  \tempo "Tango"
  \key mib \minor
  lab2~ lab8 mib re sol
  \tuplet 3/2 {reb4 solb lab} fa4 r8 dob
  \tuplet 3/2 {mib4 re la} reb4 lab8 dob
  fa2 r4 reb8 solb~ \tuplet 3/2 {solb4 lab mib}
  \tuplet 3/2 {la fa solb} dob2
  r8 solb4 sib8~ sib fa la mi
  lab4. re,8 solb2 r
  R1*3
  \tuplet 3/2 {r8 solb re} solb reb~ reb solb do,4
  reb8 solb4 re8 mib fa sib4~
  sib2 lab8 mib~ \tuplet 3/2 {mib sibb' lab}
  mib4 re reb8 do4 dob8
  mib4 la, reb2
}

TangoMarc =
\relative do' {
  \key mib \minor
  R1*8
  \tempo "Tango"
  \bar "||"
  r8 sib dob reb re mib fa fa
  re'2. r4 r8 fa, mib re mib fa solb solb
  mib'2. r4 r8 fa, reb' dob mib,4 r8 re
  dob dob lab'2 r8 dob,
  lab' solb sib, solb' la,4 r8 lab~ lab fa'2..
  \key la \minor
  R1*8
  \key mib \minor
  R1*7 r8 lab, fa' la, sib4 r8 solb'
  \tuplet 3/2 {sib,4 do re~} re8 mib fa fa re'4. fa,8
  \tuplet 3/2 {re' fa, solb~} solb16 fa mib dod
  \tuplet 3/2 {re8 r sib'4 dob} mib,8 fa solb solb
  mib'2. r4
}
