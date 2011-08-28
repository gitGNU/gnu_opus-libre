%-- Divertissement -- violonDeux.ly --------------------------------%
% (c) 2000-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

ViolonDeux = \relative do' {
  mi?4 fa? mib r8 mib si4 |
  sol2~ sol r1 |
  R2 |
  r4 sol r sol |
  r <sol sol'> <sol fad'> <sol fa'> |
  r <sol fa'> r <sol fa'> |
  <mi' la> r <mi fa>~ \t {<mi fa> mib8} |
  <si sol'>4 r <sol' re'> r |
  <mib sol> <sol dod> <fa do'>2 |
  <fa do'>4 r <la, fa'> r |
  r <sol sol'> <sol fad'> <sol fa'> |

  %%% 1 %%%
  do reb sib r8 dod la4 |
  sol1*5/4~ sol sol~ sol~ sol~ sol~ |
  <sol re'>~ <sol re'>~ <sol mib'> |
  %% Was originally <sol reb'> . Shame, shame.
  reb'4 \t {sol,8 reb' sol,} reb'4 r \t {dod8 fad dod} |
  <sol re'>1*5/4:16 <sol re'>: <sol mib'>: |
  <mib' la>: <sol do>: |
  r8 sol  re'4 sol,8 re'4 sol,8 re'4 |
  r8 sol, re'4 sol,8 re'4 sol,8 re'4 |
  r8 sol, re'4 sol,8 re'4 sol,8 do re, |

  %%% 2 %%%
  re4 si la r8 re lab4 |
  sol4 r sol r |
  <sol sol'> r <sol sol'> <sol fad'> |
  <sol fa'> r <sol fa'> r |
  <sol fa'> \t {r8 lab' si}
  \t {mi do sol} \t {sib solb mib} |
  <sol, re'>4 r <sol re'> r |
  sol r sol r |
  la r dod~ \t {dod re8} |
  <sib mib>4 r8 re sol4 r8 re |
  sol4~ \t {sol8 re dod} \t {fad4 do8} fa4 |
  \t {r do'8} fa4 \t {r do8} fa4 |
  <la,, fa'>8 reb \t {lab' sib re}
  \t {fad' sib, re,} \t {si sol re} |

  %%% 3 %%%
  \t {sol re sol} \t {re sol re}
  \t {sol re sol} \t {re sol re} |
  \t {sol re sol} \t {re sol re}
  \t {sol re sol} \t {re sol re} |
  <sol, re'>4. q8 q4. q8 |
  q4. q8 q4. q8 |
  q4. q8 <dod la'>4. q8 |
  <sol' re'>4~ \t {<sol re'> <sol re'>8}
  <sol dod>4~ \t {<sol dod> <sol dod>8} |
  <la re>4~ \t {<la re> <la re>8}
  <la re>4~ \t {<la re> <la re>8} |
  <sib mi?>4 <sib mi>8 <sib mi> \t {<sib mi> <sib mi> <sib mi>}
  <sib mi>16 <sib mi> <sib mi> <sib mi> |
  r2 do,16 si' mib sib' |
  sol'4-\CaV lab fa r8 mib, |
  R1*5/4
  reb,4-"pizz." r2 mib4 r |
  do r1 |

  %%% 4 %%%
  R1 r2 la-"arco"~ la2.\fermata r4 |
  R1. lab'1~ lab4\fermata r |
  R1 r2 re,2-"vibrato"~ re dod fa~ fa:16 |
  sol\startTrillSpan \pitchedTrill do(\startTrillSpan reb
  do) \pitchedTrill mi\startTrillSpan fad
  la1\startTrillSpan ~ la <fa mib'>4\stopTrillSpan r r2 |
  r2 re,-"espr."~ re~ re~ re dod red sold la fa mi sol sib, do fad( si,)~ si4 r r2 |
  R1*5 si2. sib4~ sib2 do fa solb mib dod4 mi do' la re,2 |
  R1

  %%% 5 %%%
  sib'1 R1 | sib'1~ sib2 r4 si~ si1 |
  la2 mi mib sol, lab fa' re do fad,1( dod) |
  R1 mib4~ <mib lab>~ <lab mib>2\glissando sib'2. r4 |
  %% I'm assuming there's a flat missing here: was  mi16
  sol,,8 la4~ \t {la8 sol re'} reb8~ reb fa4 solb8[ mib16 do] |
  mi2 si1 |
  <fa' sib>1 <sol do> <mib lab> |
  R2
  <mib sib'>1 <fa sib>2 <sol do> <mib lab>4 r2 |
  <do sol'>1

  %%% 6 %%%
  <fa sib>2 <sol do> <mib lab>2. r4 |
  <lab, reb>2. <mi' la>2 |
  R2
  <re la'>2 <sib fa'> <do sol'> r |
  <si fad'>2 <do sol'>2. |
  r2 do16 si' mib sib' |
  sol'4 lab fa r |
  sol,,4 lab fa r |

  %%% 7 %%%
  sol r lab r fa r r2 |
  sol4 r lab r fa r r2 |
  <sol, sol'>4 r <mib' lab> r |
  <la, fa'> r <re sol> <dod fad> |
  <sol fa'> r <lab fa'> r |
  \t {<sol fa'> r mib'2 reb} |
  sol'4 r8 re sol4 r8 re |
  \t {sol re dod} \t {fad4 do8} fa4 r |
  \t {r do8} \t {fa4 do8} fa do fa,4 |
  <la? sol'> r r2 |

  %%% 8 %%%
  sib,2:16-"trem." la4: |
  si: mi: fa: reb2: |
  do4: mib: fad: sold,: |
  re'!2. |
  r2 do16 si' mib sib' |
  sol'1*5/4 sol,,,~ sol |
  do4 reb sib r8 dod la4 |

  %%% 9 %%%
  sol r sol8 sol <sol re'>4 |
  <dod sol'> <do fa>8 do sol4 <re' la'> |
  sol, r sol8 sol <sol re'>4 |
  <dod sol'> <do fa>8 do sol4 <do la'> |
  <do sib'> r <do sib'> r |
  <si la'> <do la'?> <sib mib> <do fa> |
  \t {sol''8 fad dod} \t {fa do si}
  \t {mi sib mib} \t {lab, reb sol} |
  <sol,, re'>4 r r8 fad'16 si mi8 fad,16 si mi8 <re, re> |
  <sol, sol'>4 r r8 fad'16 si mi8 fad,16 si mi8 re, |
  sol fad16 si mi8 re, sol fad16 si mi8 re, |
  <sol, sol'>4 <sib fa'>8 <sib fa'> <lab sol'>4 <sib fa'>8 <sib fa'> |
  R2.

  %%% 10 %%%
  sol8 r | sol'4. lab fa | sol2 |
  reb4 mib do8 r | si' |
  sol,4 R1*9/8 R1*4/8 R1*6/8 R1*1/8
  sol8 re' | sol r4 lab8 r4 fa8 r4 |
  sol8 r r4 | reb8 r mib r do r | si' |
  sol,4 | sol4. lab reb | r8 fa4. |
  r8 si,?4 re? r8 | fad8 | sol,4 |
  re'8 re re mib mib mib do do do |
  re[ re re re] | lab[ lab] sib[ sib] do[ do] | fad | sol,4 |
  re'8 re re mib mib mib do do do |
  re[ re re re] | lab[ lab] sib[ sib] do[ do] | mi | sol,4 |
  R4

  %%% 11 %%%
  r4. r8 re' re re mib mib |
  mib[ do do do] re?[ re re re] lab[ lab] |
  sib[ sib] do[ do] si' sol,[ re'] |
  <sol, fad'>[ <sol fad'> <sol fad'>] <sol fa'>[ <sol fa'>] <sol mib'> |
  sol[ re'] <si fad'>[ <si fad'>] <sib fa'>[ <sib fa'>] |
  sold[ si red fad] sold,[ si red fad] sold,[ si red fad] |
  dod[ dod sol] dod[ dod dod sol] |
  sold[ si red fad] sold,[ si red fad] sold,[ si red fad] |
  sold,[ si red fad] sold,[ si red fad] sold,[ si red fad] |
  dod[ dod dod] sol4 |
  re'4. mib do | re2 |
  do4. reb sib4 do8 |
  sol2 sib4 sold la4. |

  %%% 12 %%%
  <mib' lab reb>4 <mib lab reb> <mib lab reb> r8 fa reb4 |
  sol,8. sol16 do8 fa4. r8 re |
  sol4 r mib8 lab reb re, |
  sol,8. sol16 do8 fa4. r8 re |
  sol,4 r mi'8 si' fad' reb |
  <sol,, sol'>4
}
