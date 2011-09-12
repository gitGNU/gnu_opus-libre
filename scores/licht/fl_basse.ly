%-- In einem unbestimmten Licht -- fl_basse.ly --------------------%
% (c) 2001 - 2011 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

FluteBasse =
\relative do' {
  \clef "F^8"
  \partial 4 r4 |
  R1*3 R2 R1*7
  sol1~\pp\< sol2~\mp -"ten." sol2.~ sol8 r |
  \set subdivideBeams = ##f
  sol'16[--\mp sol,-- fad-- si--] mi4( fa8[) lab,--]~ lab8. |
  \set subdivideBeams = ##t
  sol2.-- re'4-- | sol2-- re'2.-- | sol2.-- |
  sol,,4.--\mf sol8-- do-- re--\< sol-- do-- re-- fa-- |
  sol2--\ff r4 sol,,(\mf |
  lab'2.)\fermata r4 |
  R1 R1*7/4*3 R1*5 R1*7/4
  re1--\pp\fermata r2 r4 |
  R1*7/4 fad,1~\mf( fad4\cresc do2 |

  %%% stringendo %%%
  sol2.\f) -"ten."~ sol~ sol~ sol4 r |
  R2.*7 R2 R2.*3
  r4 \tt { fad'8-.-\dyn "mp_sonore" fad-. fad-. fad-. fa-.} |
  r8 dod16-. dod-. dod-. dod-. re8-. |
  R2.*2
  r8 mi?-.\p si'?-. do-. r4 |
  r r8 mi,16-.\mp mi-. mi-. mi-. red8-. r4 |
  \tupletDown
  \t {r4 si'-.\p
    \tupletUp
    \t {re,4-. sol-. do-.}
    mi,-. sib-.}
  \tupletNeutral
  R2 r4 sold'4.(\mf mi?8) |
  R2
  r8 mi4.--\mp |
  r8 sol,-. si-. fad'-. |
  la-. r \t {fa( mi re} mib4) |
  fa?2~\p\< fa8\! fad~\mf\< fad2 |
  R2\!
  sol,2\fermata -\dyn "p_subito" r4 |
  R1 R1*5/4*2 r8 fa'4-- |

  %%% Tempo primo %%%
  do'2.--\f \t {do,8( sol') r} \t {r4 sol8} |
  \t {do,( fad sol)} \t {r do,( fa,)} |
  do'8.-- sol'16 do,8.-- sol'16 |
  dod,8-- sol'16 re--~ re sol mib8-- |
  sol16(\< mi8) sol16 \tt {fa8-- fad-- sol-- fa-- si--} |
  mi2--\f | r4 r8 la,( sol,4~)-\dyn "f_sempre" sol1 R1

  %%% lent et blanc %%%
  R1*10 r4 fad'2(\p mid4) |
  r do2( sol4) |
  r sold2( la4) |
  r red2( mi4) |
  r si2( lad4) |
  r re2( dod4) |
  r fad2.--\mp |
  r4 do?2.-- |
  r4 mi2.-- |
  r4 sib2.--\cresc |
  r4 re2.-- |
  r4 la2.-- |
  r4 lab2.--\! |
  r4 sol'(\f si2--) |
  r4 sol( sib2--) |
  r4 fad( la2--) |
  r4 sol,(\mp lab'2) |
  sol,4( lab'2) sol,4( |
  lab'2) sol,4 lab'--~ |
  lab sol,-- lab'--~ lab sol,2.--\p
  lab'1*1/2\<\fermata s\>

  %%% Tempo primo %%%
  sol,1~\pp -"ten." sol4 r r2 |
  R1 R2.*6 R1*3
  r4 fad'2(\mf\< mid4) red4->\f mi2.->--
  R1*3

  %%% lent et statique %%%
  r4 fad2\p( fa4~ fa2. sol1)~ sol4 r2 |
  R2. fa,4(-\dyn "pp,_plaintif" solb'2*3/4) \graceNote solb,8( fa'2)
  R2. r2 solb,2.--~ solb1 r4 |

  %%% lento e semplice %%%
  \t {r8 fad'-\dyn "p_legato assai" sol} \t {fad sol fad} \t {sol fad sol}
  \t {fad sol fad} \t {sol fad sol} \t {fad sol fad} \t {sol r sol} |
  \t {fad sol fad} \t {sol fad sol} \t {fad sol fad} \t {sol fad sol} |
  \t {fad sol fad} \t {sol r sol} \t {fad sol fad} \t {sol fad sol} |
  \t {fad sol fad} \t {sol fad sol} \t {fad sol fad} |
  \t {sol r sol} \t {fad sol fad} \t {sol fad sol} | solb4--( fa-- mi--) |
  \t {solb8-\dyn "p_sempre legato" fa solb}
  \t {fa solb fa} \t {solb fa solb} \t {fa solb fa} |
  \t {solb fa solb} \t {fa solb fa} \t {solb fa r} |
  \t {fa solb fa} \t {solb fa solb} \t {fa solb fa} |
  \t {fad( mi) dod} sib4.-- fa8\mf fad-- sold-- si-- dod-- |
  \t {re-\dyn "p_legato" mib re} \t {mib re mib} \t {re mib re} |
  \t {mib re mib} \t {re mib re} \t {mib re mib} |
  \t {re mib r} \t {mib re mib} \t {re mib re} \t {mib re mib} |
  \t {re mib re} \t {mib re mib} \t {re mib re} \t {mib re mib} |
  \t {si mib si} \t {mib si mib} |
  R1*4

  %%% au mouvement %%%
  R1 r4 r8 r16 mib-.\mf r2 |
  R1 do'2.--\mp r4 |
  R1*2 fa,,2.--\p r4 | R1
  fa2~--\cresc fa8 r | fa2--~ fa8 r |
  fa2--\mf~ fa8 r fa16(-> sol8.)~ sol2 |
  fa4-- r8 sol4.->-- |
  fa4( sol8) r fa( sol) |
  fa(\< sol) fa16( sol fa sol) fa( sol fa sol) |
  \t {fad8(\> sol fad} \t {sol fad sol)} fad( sol) |

  %%% toujours très calme %%%
  r16\! fa8.--~\f fa16(\< mi' si') sold'~\! sold8( fa) r4 |
  fa,,4--\mf( solb'8)~ solb4. \graceNote solb,8*1/2( fa'2*7/8) |
  r4 solb,-- \t {fa'(--\< la-- do--)} |
  R2.\!
  r8 r16 si~(\f si8. sib16~ sib8. la16~
  la8. sol16)~ sol2~-"ten." |

  %%% Pîù mosso %%%
  sol1 r2 r4 |
  R1*5/4*2 R4. R2 R2.
  fad4.(\f\< do8--)~ do2 |
  sol2.--\ff~-"ten." sol2 |
  r2 fa'?4-.\sfz |
  r2 re8->\f la re[-> fa sold] do?\sfz |
  r2 r8 fa,?-.\sfz | R2
  r8 re-.\mp la-. re-. |
  r2 fa4-> | R2
  r8 fa-.\< si?-. mi?\sfz r r2 |
  r4 r8 mi\sfz | R2
  mi8 r r2 | r8 mi r4 | R2.
  r2 r8 mi-\dyn "sffz" r4 |
  fad2->--\ff r r4 |
  sol2->-- r r4 |
  sol2->-- r r4 |
  r4 -"ad lib." la,-> re-> fa-> do-> |
  sol4.--\ff( fad8) r4 reb'8( do) r4 |
  R2 R1*5/8
  \t {fad8-.\ff fad-. fad-.} fad-. r r4 |
  \t {sol,,8-.\f \cresc sol-. sol-.} \t {do-. do-. do-.} \t {re-. re-. re-.} |
  \t {lab-. lab-. lab-.} \t {mi'-. mi-. mi-.} \t {la-. la-. la-.}
  \t {si-. si-. si-.} \t {sol-. fad-. fad-.} |
  \t {mi-. re-. re-.} \t {dod-. si-. lad-.} sol-.\f sol-. sol4-. r |
  R2.
  sol1->--\f r4 | R1*5/4
  sol'1->--\fff r4 |
  sol1->-- r4 |
  sol1->-- r4 |
  sol,8-.\f do-. re-. lab-. mib'-. la-. si-.\> sib-. fad-. reb-. |
  do--\mf do-- do1-- |

  %%% lent et paisible %%%
  R2.*2 r2 do4~\p( do8\fermata si) mib( re) la( sib) fa?( sol) |
  \t {solb( reb' lab')~} lab2~ lab2( sol4) |
  do,2--\p do-- do-- do-- |
  do-- do-- do-- do-- |
  do-- do-- | sol-- |
  R2 r2 \tt {dod'16-.\f do-. si-. lab-. sol-.} |
  fa4--\> re-- sib-- solb-- | fa2.(\p sol4) |
  R1 R1*5/4
  fa'4--\p re8( mi fa4) sol(-- sol,--) |

  %%% très calme %%%
  do1\fermata R1*5
  r2 r4 \t {r8 la'(\mp la,)} |
  \t {sold dod fa2--} \t {fad4-- sib,2--} |
  la1\fermata R1*2
  r1 r16 la8--\mp re16--~ re sol8.-- |
  do1\fermata r2 |
  r2 r8 mi,--\p\< fa-- re-- |
  lab1\!\fermata R1
  r1 \t {red4--\> mi-- re--} |
  dod1\!\fermata r2 R1.
  r4 fa,8(\p sol) lab4-- |
  R1*2
  fad2(\p la red1)~ red1\fermata
  R1

  %%% très clair %%%
  r2 re2\p sol1~ sol( re)~-"ten." re\fermata
}
