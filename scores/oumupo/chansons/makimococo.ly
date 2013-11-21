%-- Chansons Oulipiennes -- makimococo.ly -------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

MakimococoGrille =
\chordmode {
  do1*7/4:m s s la:m
  do:m s s la:m s
  do:m s mib:m s sib:m mib:m s
  do:m s s s s fad:m
  lab2*7/4 sib lab sib lab sib la1*7/4:m s
  do:m s mib:m s2*7/4 sib:m mib1*7/4:m re:m dod:m
  do:m s
}

MakimococoVoix =
\relative do' {
  \time 7/4
  \key do \minor
  r4 do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 do si do re
  mi1. r4 |
  r4 do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 do si do re
  mi1~ mi8 la si la si la |
  mi1. r4 |
  r do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 do si do re |
  mib4 r sib'8 reb4 do sib lab fa8 |
  r4 r8 fa solb lab solb fa mib4 solb8 sib4 reb8
  r8 do4 lab r8 fa2 r2 |
  r8 mib8 solb sib r mib, solb lab4 fa8 solb lab solb fa |
  mib4 mib8 solb sib mib, solb lab4 fa8 mib re mib fa |
  sol1. r4 |
  r8 do re do re do sol4 r8 re mib fa mib re
  do4 r sol'8 sib4 la8 fa4 sol re
  r4 do8 mib sol do, r4 mib fa r |
  r2 re r8 mib r8 fa mib re |
  reb1. r4 |
  r4 do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 do si do re
  mi2~ mi8 la si4 la2 si8 la |
  mi1. r4
  r do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 do si do re |
  mib4 r sib'8 reb4 do8 sib lab4 fa8 r4 |
  solb4 sib8 reb4 do8 lab4 fa8 fa solb lab solb fa |
  mib4 mib8 solb sib mib, solb lab4 fa8 solb lab solb mib |
  re4 re8 fa la re, fa sol4 mi8 fa sol fa re |
  dod4 dod8 mib sold dod, mi fad4 fa8 mib re mib fa |
  sol!1~ sol8 do re do re do |
  sol1. r4
  r4 do,8 mib sol do, mib fa4 re8 mib fa mib re |
  do4 do8 mib fa4 r r sol-. do,-. \bar "|."
}

MakimococoPianoMd =
\relative do' {
}

MakimococoPianoMg =
\relative do' {
  \clef bass
}
