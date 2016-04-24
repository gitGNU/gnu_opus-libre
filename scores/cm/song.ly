% Harmoniques -- song.ly ------------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"


SongGrille =
\chordmode {
  la1:m11.6 s s
  s2 mi:m la1:m11 s
  s s2 mi:m la1:m11 s
  s si:m11 mib:9 s2 sib:m7
  mib1:m11 fa:9-.6- fa:7
  la:m11 s
  la:m6+ s2 la:m6 mi:maj7/la re:m7/la s la:m/sol
  fa1:maj7 sib:7 do:maj9sus4+ s fa:m9
  si:7 mi:m9- s2 sib:m7
  mib1:m11 fa:9-.6- fa:7
  la:m11 s
}

SongFlo =
\relative do' {
  \key la \minor
  \tempo "con moto"
  R1 r2 r4 r8 si
  mi4. si8 r do re do
  \tuplet 3/2 {fa4 do si} r8 lad do si
  mi2.. si8 r2 r4 r8 si
  mi4. si8 r do re reb
  \tuplet 3/2 {do4 fa do} r8 si do re
  sol2.. re8 r2 r4 r8 do
  mi4. si8 r do dod re
  \tuplet 3/2 {sol4 fad dod} r8 do re mib
  la2.. sol8~ sol reb4 sib8 r4 lab8 reb~
  reb lab sib mib \tuplet 3/2 {fa4 do reb}
  solb2.. reb8 r2 fa4. do8
  si2. r4 r2 r4 r8 si
  mi4. si8 r do re mi
  \tuplet 3/2 {fad4 si fa} r r8 mi
  \tuplet 3/2 {red4 sold re~} re2~
  re4. mib8 r2
  mi8 la4 mi8 r re mi fa
  \tuplet 3/2 {r4 sib fa} mib8 re mi fad
  si2.. fad8 r2 fad
  sib4 fa mib re
  \tuplet 3/2 {dod sol' fad} do r
  fa2 do4 mi8 re~ re2 r4 lab8 reb~
  reb lab sib mib \tuplet 3/2 {fa4 do reb}
  solb2.. reb8 r2 fa4. do8
  si2. r4 r2 r4 r8 si
}
