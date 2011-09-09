%-- In einem unbestimmten Licht -- fl_soprano.ly ------------------%
% (c) 2001 - 2011 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

FluteSoprano =
\relative do'' {
  \clef "G^8"
  \partial 4 r4 |
  R1*3 R2 R1*7
  sol'1~ sol2~ sol2.~ sol8 r |
  \set subdivideBeams = ##f
  lab16[ sol si lad] \t {reb8[ do sol']} si16[ la sib sol] lab8[ mi16] |
  \set subdivideBeams = ##t
  mib2 dod | re2~ re2. | sol4 r2 |
  do,8 re fa sol4~ sol4. r4 |
  lab1 sol,2.\fermata r4 |
  R1 R1*7/4
  r2 sol2.-"(sans corriger la hauteur)" r2 |
  sol1. sol4\fermata |
  r2 r4 sol~ |
  sol1*1/2 \hideNote sol2\glissando -"gliss." lab1~ lab4 r r2\fermata |
  r2 lab2~ | lab2\glissando -"gliss." sol r2 r4 |
  do,1\fermata r2 r4 |
  sol'1~ sol4 sold2 |
  la1~ la4 lad2 |

  %%% stringendo %%%
  si2. -"ten."~ si~ si~ si4 r |
  R2.*7 R2 R2.*4
  lab2 sol fa4~ \t {fa8 mi4~} mi8 re r4 |
  R2. R2
  lab'2 \tupletUp \t {r4 mib' lab, |
  \tupletDown \t {si fa la} mi'} \tupletNeutral |
  si16 si si si sib8 r |
  R2. R2
  r8 do,4. |
  r8 re16 re re re reb8 |
  R2. R2
  r8 lab'~ lab2 |
  R2
  sol2\fermata r4 |
  R1 R1*5/4*2
  r8 do' \t {sol,16 do sol'} |

  %%% Tempo primo %%%
  reb'2. \t {do,,8 re do} \t {re do re} |
  \t {do re do} re16 do re do |
  \t {re8 sol do} \t {lab' re, fad,} |
  re16 sol do re \t {fa8 sol lab} |
  sol,2~ sol8 r |
  mib2 mi2.~ mi1 | R1

  %%% Lent et blanc %%%
  R1*3 r2 r4 si'~ |
  si lad r fa'~ |
  fa do r dod~ |
  dod re r sold~ |
  sold la r mi~ |
  mi red r sol?~ |
  sol fad r si,~ |
  si mi r fa~ |
  fa sib, r la~ |
  la sold r re'~ |
  re dod r fad~ |
  fad sol r fad~ |
  fad mid r si~ |
  si lad r mi'~ |
  mi red r la~ |
  la sold r re'~ |
  re dod r re~ |
  re dod r re~ |
  re dod r re~ |
  re dod r re~ |
  re dod2 do4~ |
  do si2 sib4~ |
  sib la4. lab |
  sol2*3/4 \graceNotes \lightBeams {mib16 fa} \grace sol16 fa2\prallprall
  sol2. sol4~ sol1
  sol4. sol~ sol4 fa2. fad1\fermata

  %%% Tempo primo %%%
  sol1~ sol4 r r2 | R1
  R2.*6
  r4 fad2 mid4 |
  la2 sold red' mi |
  \t {lad,2 si do} |
  do4 sol2. R1*2

  %%% lent et statique %%
  sol'2.\fermata _"(long)" r4  |
  sol,1~ sol2. fad1~ fad4 r2 |
  R2. R1*5/4 R2. R1*5/4
  re1 r4 |

  %%% lento e semplice %%%
  R2. R1
  r4 \t {r sol8~} \t {sol lab mi'} sol4 |
  r2 r8 fa reb4 |
  r2 fa4~ fa2 r4 |
  R2.
  r4 \t {r8 sol, mi'~} \t {mi lab, mi'} sol4 |
  r8 fa4 reb4. |
  r8 sol si dod lab4 |
  r8 do,, fa sol reb4~ | \tt {reb8 re mi fa sol} |
  r4 r8 re'4. | dod2. |
  r8 re~ \t {re4 dod lad~} lad4 |
  r4 dod'2. | R2
  R1*3 re,1 |

  %%% au mouvement %%%
  r4 do r2 | R1 |
  r8 do,~ do4~ do2~ | do4 r r8 re'4. |
  r2 r4 \ttt {r8 re16 re re re} |
  re8 r r4 r2 |
  r re32 re re re re16 r r4 |
  r red32 red red red red16 r r2 |
  r re32 re re re re16 r |
  r4 lad'32 lad lad lad lad16 r r4 |
  r r8 lad,32 lad lad lad lad8 r |
  \t {r8 lad'16 r8.} r16 sold,32 sold sold sold sold16 \t {r4 sol'16 r} |
  r2 r8 re32 re re re re8 r r2 |
  r4 \ttt {r8 re16 re re re} re8 r |
  r4 \tt {r16 red red red red} red8 r |

  %%% Toujours très calme %%%
  r4
}
