%-- In einem unbestimmten Licht -- fl_basse.ly --------------------%
% (c) 2001 - 2011 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

FluteBasse =
\relative do' {
  \clef "F^8"
  \partial 4 r4 |
  R1*3 R2 R1*7
  sol1~ sol2~ sol2.~ sol8 r |
  \set subdivideBeams = ##f
  sol'16[ sol, fad si] mi4 fa8[ lab,]~ lab8. |
  \set subdivideBeams = ##t
  sol2~ sol8 r re'4 | sol2 re'2~ re8 r | sol2. |
  sol,,4. sol8 do re sol do re fa |
  sol2 r4 sol,, |
  lab'2.\fermata r4 |
  R1 R1*7/4*3 R1*5 R1*7/4
  re1\fermata r2 r4 |
  R1*7/4 fad,1~ fad4 do2 |

  %%% stringendo %%%
  sol2. -"ten."~ sol~ sol~ sol4 r |
  R2.*7 R2 R2.*3
  r4 \tt { fad'8 fad fad fad fa} |
  r8 dod16 dod dod dod re8 |
  R2.*2
  r8 mi? si'? do r4 |
  r r8 mi,16 mi mi mi red8 r4 |
  \tupletDown \t {r4 si' \tupletUp \t {re,4 sol do} mi, sib} \tupletNeutral
  R2 r4 sold'4. mi8 |
  R2
  r8 mi4. |
  r8 sol, si fad' |
  la r \t {fa mi re} mib4 |
  fa?2~ fa8 fad~ fad2 |
  R2
  sol,2\fermata r4 |
  R1 R1*5/4*2 r8 fa'4 |

  %%% Tempo primo %%%
  do'2. \t {do,8 sol' r} \t {r4 sol8} |
  \t {do, fad sol} \t {r do, fa,} |
  do'8. sol'16 do,8. sol'16 |
  dod,8 sol'16 re~ re sol mib8 |
  sol16 mi8 sol16 \tt {fa8 fad sol fa si} |
  mi4 r | r r8 la, sol,4~ sol1 R1

  %%% lent et blanc %%%
  R1*10 r4 fad'2 mid4 |
  r do2 sol4 |
  r sold2 la4 |
  r red2 mi4 |
  r si2 lad4 |
  r re2 dod4 |
  r fad2. |
  r4 do?2. |
  r4 mi2. |
  r4 sib2. |
  r4 re2. |
  r4 la2. |
  r4 lab2. |
  r4 sol' si2 |
  r4 sol sib2 |
  r4 fad la2 |
  r4 sol, lab'2 |
  sol,4 lab'2 sol,4 |
  lab'2 sol,4 lab'~ |
  lab sol, lab'~ lab sol,2. lab'1

  %%% Tempo primo %%%
  sol,1~ sol4 r r2 |
  R1 R2.*6 R1*3
  r4 fad'2 mid4 red4 mi2.
  R1*3

  %%% lent et statique %%%
  r4 fad2 fa4~ fa2. sol1~ sol4 r2 |
  R2. fa,4 solb'2*3/4 \graceNote solb,8 fa'2
  R2. r2 solb,2.~ solb1 r4 |

  %%% lento e semplice %%%
  \t {r8 fad' sol} \t {fad sol fad} \t {sol fad sol}
  \t {fad sol fad} \t {sol fad sol} \t {fad sol fad} \t {sol r sol} |
  \t {fad sol fad} \t {sol fad sol} \t {fad sol fad} \t {sol fad sol} |
  \t {fad sol fad} \t {sol r sol} \t {fad sol fad} \t {sol fad sol} |
  \t {fad sol fad} \t {sol fad sol} \t {fad sol fad} |
  \t {sol r sol} \t {fad sol fad} \t {sol fad sol} | solb4 fa mi |
  \t {solb8 fa solb} \t {fa solb fa} \t {solb fa solb} \t {fa solb fa} |
  \t {solb fa solb} \t {fa solb fa} \t {solb fa r} |
  \t {fa solb fa} \t {solb fa solb} \t {fa solb fa} |
  \t {fad mi dod} sib4. fa8 fad sold si dod |
  \t {re mib re} \t {mib re mib} \t {re mib re} |
  \t {mib re mib} \t {re mib re} \t {mib re mib} |
  \t {re mib r} \t {mib re mib} \t {re mib re} \t {mib re mib} |
  \t {re mib re} \t {mib re mib} \t {re mib re} \t {mib re mib} |
  \t {si mib si} \t {mib si mib} |
  R1*4

  %%% au mouvement %%%
  R1 r4 r8 r16 mib r2 |
  R1 do'2. r4 |
  R1*2 fa,,2. r4 | R1
  fa2~ fa8 r | fa2~ fa8 r |
  fa2~ fa8 r fa16 sol8.~ sol2 |
  fa4 r8 sol4. |
  fa4 sol8 r fa sol |
  fa sol fa16 sol fa sol fa sol fa sol |
  \t {fad8 sol fad} \t {sol fad sol} fad sol16 r |

  %%% toujours très calme %%%
  fa4
}


