%-- In einem unbestimmten Licht -- fl_alto.ly ---------------------%
% (c) 2001 - 2011 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

FluteAlto =
\relative do' {
  \partial 4 r4 |
  R1*3 R2 R1*7
  do'1~ do2~ do2.~ do8 r |
  \set subdivideBeams = ##f
  \t {fa,16[ re' sol]} la[ sol] la[ si sold do]~
  do[ do8.] do16[ si8] |
  \set subdivideBeams = ##t
  do2 mi, sol4. r8 do2. sol'2. |
  re,4. r8 fa, sol fa' sol do re |
  sol1 | r2\fermata sol,2~ sol2. r4 |
  \graceNote sol8 sol1*7/8~ sol4 r2 |
  sol1~ sol4 r2 |
  r2 sol sol~ sol4\fermata |
  R1 r4 sol4~ sol2~ sol\glissando -"gliss." fad~ fad4 r r2\fermata |
  sol1*1/2 \hideNote sol2 \glissando -"gliss." fad2 r r r4 |
  sol,1\fermata r2 r4 |
  sol'1~ sol4 fad2 | fa1~ fa4 mi2 |

  %%% stringendo %%%
  mib2. -"ten."~ mib~ mib~ mib4 r |
  R2.
  r2 \t {r8 sol4~} sol4~ \t {sol8 fad4~} fad8 r |
  R2.*3
  fa'!16 fa fa fa r2 |
  R2 R2.
  sol,,16 sol sol sol \t {lab4 fad do''} |
  fa8 r r2 | r2 sol,4~ sol fa~ |
  fa mib2 re dod4 |
  R2.
  \t {r4 sol' fad2. fa4} |
  R2*2
  \t {fad2 fa4} |
  R2. R2
  r8 sib,4. |
  r4 r8 si16 sib | sib la sold8 r2 |
  sib2~ sib8 si~ si2
  R2
  do2\fermata r4
  R1
  R1*5/4*2 r8 fa8. sib16 |

  %%% Tempo primo %%%
  mib2. \t {r8 sol,, do} \t {sol' do, sol} |
  \t {r sol do} sol'16 do, fad, sol |
  \tt {la do re mi fa} sol la sib sol |
  do, re mib sol re do fa, sol |
  lab2~ lab8 r |
  sib'2 la,!2.~ la1 |
  r2 r4 fad'~ |

  %%% Lent et blanc %%%
  fad2 mid4 r |
  la2 sold4 r |
  red2 mi4 r |
  lad,2 si4 r |
  do2 sol4 r |
  re'2 dod4 r |
  fad2 sol4 r |
  red2 mi4 r |
  la2 sold4 r |
  re2 dod4 r |
  do'2 mib,4 r |
  la2 si?4 r |
  fad2 mid4 r |
  si'2 lad4 r |
  mi2 red4 r |
  la'2 sold4 r |
  re2 dod4 r |
  sol'2 fad4 r |
  do2 si4 r |
  fa'2 mi4 r |
  mib2 re4 r |
  mi2 red4 r |
  lab'2 sol4 r |
  la2 sold sol solb fa mi4 mib |
  re2 reb do2. do4~\downprall do1 |
  do4. si~ si4 do2. dod1\fermata

  %%% Tempo primo %%%
  do1~ do4 r r2 |
  R1 R2.*6 R1
  r4 fad2 mid4 |
  \t {la2 sold red'} |
  red,4 mi la4. si8 |
  fa4 re2. |
  R1*3

  %%% lent et statique %%%
  r1 re2. | mib1~ mib4 r2 |
  R2. R1*5/4 R2.
  r2 fa,2.~ fa1*15/16 \graceNote sol16 fad4\startTrillSpan |

  %%% lento e semplice %%%
  \t {fad8\stopTrillSpan sol fad} \t {sol fad sol} \t {fad sol fad} |
  \t {sol fad sol} \t {fad sol fad} \t {r fad sol} \t {fad sol fad} |
  \t {sol fad sol} \t {fad sol fad} \t {sol fad sol} \t {r sol fad} |
  \t {sol fad sol} \t {fad sol fad} \t {sol fad sol} \t {fad sol fad} |
  \t {r fad sol} \t {fad sol fad} \t {sol fad sol} |
  \t {fad sol fad} \t {sol fad sol} \t {r sol fad} |
  \t {fa lab fa} \t {lab fa sol} \t {lab sib r} |
  r4 mi red r |
  r sol fad | r dod re |
  \t {r4 fa,8~} \t {fa fad sol} fa16 sol' lab8~ |
  lab4 la8 sib16 fa |
  si,2.~ si4 sib2 |
  r8 re~ \t {re4 dod lad~} lad |
  r4 dod2. | R2
  r2 r4 r8 si'?~ si2. r4 |
  r2 do~ do si |

  %%% au mouvement %%%
  r2 r8 re r4 | R1
  r4 r8 re,~ re2~ re4 r r8 do'4. |
  r4 \ttt {do16 do do do do8} r2 |
  r \t {r4 si16 si} \t {si si si8 r} |
  r4 do32 do do do do16 r r4 si32 si si si si16 r |
  R1
  r4 do32 do do do do16 r r4 |
  r si32 si si si si16 r r4 |
  R2.
  dod32 dod dod dod dod16 r r2 |
  r4 r8 do32 do do do do8 r |
  r4 si32 si si si si16 r r4 |
  \t {r16 do do do do do} r4 \ttt {r8 r16 si si si} |
  \t {si si r4} r2 |

  %%% toujours très calme %%%
  r8 do,~ \t {do re si~} |
  si4 do | r do8 si si sib |
  r4 \tt {fad'16 fad fad fad mid} |
  R2 fad16 fad fad fad mid8 r |
  R2.
  si'4 la sol fad2.~

  %%% Più mosso %%%
  fad1 r2 r4 |
  R1*5/4*2 R4. R2
  sol2 fad4 fa4. mi8~ mi2 |
  mib2.~ mib2 | r2 fad4 |
  r2 fa8 dod mi[ si dod] fad |
  r2 r8 fad | R2 r8 si, dod si |
  r2 fad'4 | R2 r8 mi sib' |
  mib r r2 |
  r4 r8 mib | R2
  fad8 r r2 | r8 fad r4 |
  R2.
  r2 r8 sold8 r4 |
  \t {sold8 sold sold} \t {sol sol sol} \t {mi mi mi}
  \t {mib mib mib} \t {sib sib sib} |
  la2 r r4 | la4 sol reb sib sol |
  reb'2. r2 | re'2. r2 |
  sol,8 fad r4 | r fa'8 r4 |
  \t {mib8 mib mib} mib r r4 | R2.
  do,8 si mib re sol si sol mib re do |
  si la sold' sol si si si4 r |
  R2. fad1 r4 | R1*5/4
  mi'1 r4 | mi1 r4 | mi1 r4 |
  \t {re,8 re re} \t {do do do} \t {si si si}
  \t {mib mib mib} \t {re re re} |
  si si si2 r |

  %%% lent et paisible %%%
  R2.*3 R1
  r4 sol4. fad8 sib la mi' fa r4 |
  r \t {sol8 do, sol} r4 \t {sol'8 do, sol} |
  r4 \t {sol'8 do, sol} r4 \t {sol'8 do, sol} |
  r4 \t {sol'8 do, sol} r4 \t {sol'8 do, sol} |
  r4 \t {sol'8 do, sol} r4 \t {sol'8 do, sol} |
  r4 \t {sol'8 do, sol} r4 \t {sol'8 do, sol} |
  r4 do16 re mi fa |
  sib2 \tt {dod16 do si sib la} lab8 r r4 |
  \t {si8 la sol} sol fad mib re si sib |
  \t {sib2 la lab} |
  R1 R1*5/4
  re8 mi fa sol la4 re,2 |

  %%% très calme %%%
  mi1\fermata R1*5
  r2 r4 \t {r8 sol4} |
  \t {fa8 mi la2} \t {fa4 lab sol} |
  fad1\fermata R1*2
  r1 r16 mib8 fad16 sol fa8 sold16 |
  la1\fermata r2
  r2 r8 red, mi reb |
  do1\fermata R1
  r1 \t {fad4 si, dod} |
  do1\fermata r2 R1.
  r4 re si R1*3
  r4 mi2 si'4~ si sol'2.\fermata
  R1

  %%% très clair %%%
  r2 fa, |
  mi2 re~ re~ re8 dod4. |
  re1~ re\fermata
}
