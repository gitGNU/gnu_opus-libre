%-- Chansons Oulipiennes -- debut.ly -------------------------------%
% (c) 2012 Mike Solomon <mike@mikesolomon.org>.

DebutGrille =
%\transpose mi do
\chordmode {
  mi1:m
  mid:dim7
  fad:m
  mid:m7
  mi:m
  la
  fad
  si:m
  la:m
  fad:3-.5-.7
  sol
  mi:m
  la
  fad:dim7
  sol
  mi:m
  %a
  mid:dim7
  fad:m
  fad
  si:m
  red:dim7
  mi
  la2..
  re8
  %a
  %d
}

%{
  a8 a a a r a a a |
  a a a a a a a a |
  a a a a a a a a |
  a a a a a a a a |
  a a a a a a a a |
  a a a a a a a a |
  a a a a a a a a |
  a a a a a a a a |
  a a a a a a a a |
  a a a a a r a a |
  a a a a a a a a |  
  a a a a a a a a |
  a a a a a r r a |
  a a a r r4. a8 |  
  a a a r8 r2 |
  r8 a a a a r4. |
  r2 r8 a a a |
  a r8 r4 r2 |
  r4. a8 a a a r8 |
  R1 |
  r4 r8 a a a a r8 |
  R1 |
  r2 r8 a a r8 \bar "|."

%}

DebutVoix =
%\transpose mi do
\relative do'' {
  \time 2/2
  \key re \major
  \tempo Samba
  la8 la la la r la la la |
  la si la la la la si la |
  la la la fad la la la la |
  sold la la la la sold la la |
  la la sol la la la la sol |
  la la la la mi la la la |
  la lad la la la la lad la |
  la la la si la la la la |
  mi la la la la mi la la |
  la la dod la la r la dod |
  la la la la sol la la la |  
  la si la la la la si la |
  la la la mi la r r la |
  fad la la r r4. la8 |  
  la la sol r8 r2 |
  r8 la la la sol r4. |
  r2 r8 la mid la |
  la r8 r4 r2 |
  r4. la8 la fad la r8 |
  R1 |
  r4 r8 la sol la la r8 |
  R1 |
  r2 r8 la re, r8 \bar "|."
}

%% Piano part contributed by V. Villenave:
DebutPianoMd =
%\transpose mi do
\relative do'{
  mi1(\p mid fad fa)
  <si, re sol>4--( q--) r8 <si re sol la>4-- q8 |
  <dod sol'>4--( la8 <dod sol' la>)~ q la( <dod sol'> la |
  lad <dod mi fad>4) q8--~ q lad <mi' la>4 |
  <dod re fad>4-- q-- r8 <re si'>( sib' la |
  <si, do sol'>4.) q8~ q <do sol'>4 <si la'>8 |
  <do mi fad>4 q r8 <do mib fad>4.
  <re fad>8 la si <re fad> r <dod mi fad>4 la8 |
  <sol re' fad>4 <re' sol si> r8 <re fad la>4 re8 |
  <re mi sol>4 q8 <dod mi sol> r \acciaccatura sold'' la mi la, |
  r8 <do, red fad> r \acciaccatura sold'' la red,4 <si, do mib> |
  <la si re> q r8 \acciaccatura lad'' si4. |
  <si,, re sol la>4 si8 <re sol la>~ q <re sol>4 si8 |
  r8 \acciaccatura sold'' la4 si,8 <sold re'>4 <si, sold'> |
  <sold' la dod>8 fad4 <fad dod'>8~ q4 <fad la> |
  <mi lad>8 dod' \acciaccatura sold' la4 <lad,, mi' fad>2 |
  <fad' fad'>8 si re <sol, sol'> si re <fad, fad'> si |
  <do, do'> fad la <sol sol'> do red <fad, fad'> la |
  si <mi, mi'>4 <si re sol>8 r <fad' fad'> <sol sol'> <sold sold'> |
  <la la'>4 r r r8 <fad, la re>
}

DebutPianoMg =
%\transpose mi do
\relative do' {
  \clef bass
  R1*3 r2 fa,-- |
  mi4.( si8~ si4 mi4) |
  la,4.( mi'8)~ mi mi,( la4) |
  fad4( dod'~ dod8 fad, do') si~-- |
  si4. fad8~ fad fad'4( sol,8 |
  la4) mi'8 mi,~ mi8 mi' mid( fad)~ |
  fad8 do4-- la8-. r4 lab( |
  sol4) re'8( re,) r re'( re, mi)~ |
  mi4. si'8~ si4 sib |
  la2 mi'8( mi, la4) |
  fad4 fad'8 do~ do mid,( fad sol)~ |
  sol4. re'8~ re4 re, |
  mi2 si'4 mi, |
  mid2 r4 mi8 mid |
  fad4 dod'8( \acciaccatura sold' la~ la sold fad dod) |
  fad,4 r r8 dod'4( do8) |
  si4. mid8 fad4 fad, |
  red4( la'8 red) r do si mi,~ |
  mi4. si'8~ si4 sib |
  <si' dod sol'>8 la, r4 r r8 <re, re'> |
}
