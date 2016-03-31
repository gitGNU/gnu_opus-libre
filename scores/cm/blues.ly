% Harmoniques -- blues.ly -----------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"

BluesGrille = \chordmode {
  s2
  mi2.:m do:7 si:dim mi4:maj mi2:m7
  la2.:m7 re:7 sol:maj7 do
  do4.:maj7/fad sib4:7 si8:7 s2. la:7 re:7
  sol:7 do:7 fa:7 si:7
  mi2.:m do:7 si:dim mi4:maj mi2:m7
  la2.:m7 re:7 sol:maj7 do
  do4.:maj7/fad sib4:7 si8:7 s2. la:7 re:7
  sol:7 do:7 fa:7 si:7
  s1.*12
}

BluesPrune =
\relative do' {
  \time 12/8
  %\key mi \minor
  \partial 2
  red8 mi fad sol
  si4 sol8~ sol4 sib8~ sib4. r4 fad8
  la4 fa8 red4 mi8 sold4 sol8~ sol4.
  r4 red8 fad re red mi4 fad8 sol4 si8~
  si2. r4 sold8 do la sol
  si4 do8 re4 red8~ red r si re lad dod~
  dod4 la8 sol4 si8~ si r sib la sol fad
  la4 mi8~ mi4 sol8~ sol4. r r2. r4
  red8 mi sold mi fad4 sol8~ sol4 sib8~ sib4. r4 fad8
  fa4 la8~ la fa mi red4 sol8~ sol4.
}
