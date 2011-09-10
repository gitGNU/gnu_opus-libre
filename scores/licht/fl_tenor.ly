%-- In einem unbestimmten Licht -- fl_tenor.ly --------------------%
% (c) 2001 - 2011 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

FluteTenor =
\relative do' {
  \partial 4 r4 |
  R1*3 R2 R1*7
  re1~ re2~ re2.~ re8 r |
  fa'8[ mib16 re] mib8[ re] do4~ do16[ la8] |
  si1 do2~ do2. sol'4 r2 |
  sol,4 sol8 do re sol do, re fa fad |
  sol1 sol,2.\fermata r4 |
  R1 R1*7/4*3 R1*5 R1*7/4
  sol'1\fermata r2 r4 |
  R1*7/4 do,1~ do4 si2 |

  %%% stringendo %%%
  fad2. -"ten."~ fad~ fad~ fad4 r |
  R2.*4
  r4 \t {r4 sol8} \t {sol sol sol} |
  \t {lab lab lab} \t {lab fad fad} \t {fad fad r} |
  R2. R2
  r2 r8 sol |
  \t {r4 do, si'} mib8 r |
  R2.*2
  fad,16 fad fad fad fa8 r |
  R2.*2
  r8 mib' sib sol r4 |
  R2
  mi!4 r |
  R2*3
  r4 la4. mib8 |
  R2
  r8 fad4. | \t {fa4 mib reb} |
  r4 \t {do si' lab} |
  \graceNote fad'16 sol,2*7/8~ |
  sol8 do,~ do2 |
  R2
  re2\fermata r4 |
  R1 R1*5/4*2 r8 re' mi,16 do' |

  %%% Tempo primo %%%
  lab'2. \t {re,8 do re} \t {do re do} |
  re16 sol, re do \tt {re sol do re sol} |
  la re, sol, do, re fa do' sol' |
  si4 do,, fa sol la? la'2 |
  r4 la,8 re,4.~ re1 R1

  %%% lent et blanc %%%
  R1*7
  r2 dod' sid4 r mi2 |
  red4 r lad2 si4 r fa'2 |
  fad4 r sol2 re4 r la2 |
  sold4 r dod2 re4 r lad2 |
  si4 r mi2 red4 r la'2 |
  sold4 r mib2 re4 r sol2 |
  fad4 r reb2 do4 r si2 |
  sib4 r sol'2 fad4 r fa2~ |
  fa4 mi2 red4~ red re2 reb4~ |
  reb do2 r4 |
  do si sib2 |
  fa2. fa4~ fa1 fa4. mi~ mi4 re2. mib1\fermata

  %%% Tempo primo %%%
  re1~ re4 r r2 |
  R1 R2.*6 R1*2
  r4 fad2 mid8 la~ |
  la4. sold8~ sold2 |
  sib4 la2. |
  R1*3

  %%% lent et statique %%%
  r2 lab2~ lab2. | sib1~ sib4 r2 |
  R2. R1*5/4 R2. |
  r2 r4 mib, si'~ |
  si2 sib r4 |

  %%% lento e semplice %%%
  R2. R1
  r4 mi red r | r mi red r |
  r4 r8 mi4. | red sib |
  \t {la?8 sib la} \t {sib la sib} \t {la sib sol} |
  \t {fa solb fa} \t {solb fa solb}
  \t {fa solb fa} \t {solb fa solb} |
  \t {fa solb fa} \t {r fa solb} \t {fa solb fa} |
  \t {solb fa solb} \t {fa solb fa} \t {solb fa solb} |
  \t {fa solb fa} \t {solb fa solb} \t {r solb sol} |
  \t {fa solb fa} \t {solb fa mi} |
  \t {mib re mib} \t {re mib re} \t {mib re mib} |
  \t {re mib re} \t {mib r mib} \t {re mib re} |
  \t {mib re mib} \t {re mib re} \t {mib re mib} re16 mib re reb |
  \t {do8 reb do} \t {reb do reb} \t {do4 do8 r do4} re4. sib'8~ | sib2 r |
  R1

  %%% au mouvement %%%
  R1*3 r8 si' r4 r2 |
  r si,~ si2. r4 |
  R1 r2 \t {si4 fa r}
  R1 si,2. r4 |
  r4 r8 si4.\glissando -"gliss." do?2~ do8 r |
  re2~ re8 r red4 mi fad |
  \t {red mi fad8 r} red mi~ |
  mi fad \t {red mi fad} \t {red mi fad} |
  \t {red mi red} \t {mi red mi} \t {red r red} |
  mi16 red mi red mi red mi red \t {mi8 red mi} |

  %%% toujours très calme %%%
  r4 mi'8 si'~ \t {si sol mib} r4 |
  r4 r8 r8 r16 re32 re re re dod16 |
  r4 do | R2 r4 \tt {do16 do do do si} |
  R2. r4 r16 do8.~ do16 si8.~ si16 sib8.~ sib2~

  %%% Più mosso %%%
  sib1 r2 r4 |
  R1*5/4*2 R4. R2 R2.
  do4. si8~ si2 | fad2.~ fad2 |
  r2 dod'4 | r2 dod8 si do[ sold si] dod |
  r2 r8 dod | R2 r8 fa, si dod |
  r2 dod4 | R2 r8 dod mi? |
  sol8 r r2 | r4 r8 sol |
  R2 do?8 r r2 | r8 re r4 |
  R2. r2 r8 mib r4 |
  si4 la re do r | re do sib la r |
  \t {si8 si si} \t {la la la} \t {sol sol sol}
  \t {fa fa fa} \t {mib mib mib} |
  solb,2. r2 | r2 sib8 la r4 mi'8 red |
  r4 sib'8 la | R1*5/8
  \t {sol8 sol sol} sol r r4 | R2.
  sol,8 fa mi lab sol reb' do fad sol red |
  mi lad, si do sol fa' fa4 r |
  R2. mi,1 r4 | R1*5/4
  fad'1 r4 | fad1 r4 | fad1 r4 |
  \t {fa,8 fa fa} \t {mi mi mi} \t {lab lab lab}
  \t {sol sol sol} \t {reb reb reb} |
  sol sol sol2 r4 do,~ |

  %%% lent et paisible %%%
  do2.~ do~ do2. |
  R1
  r8 fa4 mi8 lab[ sol] re' mib la, sib r4 |
  \t {r8 sol re'} sol r \t {r sol, re'} sol r |
  \t {r sol, re'} sol r \t {r sol, re'} sol r |
  \t {r sol, re'} sol r \t {r sol, re'} sol r |
  \t {r sol, re'} sol r \t {r sol, re'} sol r |
  \t {r sol, re'} sol r \t {r sol, re'} sol r |
  do,,16 sol' do re sol8 r | mib2 |
  r4 \tt {lab16 sol fad fa mi} reb8 r |
  do4 la fa reb | do1
  R1 R1*5/4
  la'8 sold la si do4 do si |

  %%% très calme %%%
  do1\fermata R1*5
  r2 r4 \t {r8 re4} |
  \t {red4 mi2} \t {re4 mi2} |
  mib1\fermata R1*2
  r1  r16 sol,8 la16~ la sib8 re16 |
  mib1\fermata r2 |
  r2 r8 lab, sol lab16 sol |
  lab1\fermata R1
  r1 \t {do4 la8 si sib4} |
  la1\fermata r2 | R1.
  r4 reb, do | R1*2
  r4 mid2 sold4~ | sold2 lad~ lad1\fermata
  R1

  %%% très clair %%%
  r2 do do2.~ do8 si16 la | sib8 la sol2.~ |
  sol8 mi4*3/4 \graceNote sol8*1/2 fad4.\prallprall mi4 |
  fad1\fermata
}
