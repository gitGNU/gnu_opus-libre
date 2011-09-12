%-- In einem unbestimmten Licht -- fl_soprano.ly ------------------%
% (c) 2001 - 2011 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

FluteSoprano =
\relative do'' {
  \clef "G^8"
  \partial 4 r4 |
  R1*3 R2 R1*7
  sol'1~\pp\< sol2~\mp -"ten." sol2.~ sol8 r |
  \set subdivideBeams = ##f
  lab16[(\p\< sol) si( lad)] \t {reb8[( do) sol']} si16[(\mp la) sib( sol)] lab8[( mi16)] |
  \set subdivideBeams = ##t
  mib2(\> dod) | re2\!~ -"ten." re2. | sol4-> r2 |
  do,8--\mf re-- fa-- sol4--~ sol4. r4 |
  lab1--\ff sol,2.\mf\fermata r4 |
  R1 R1*7/4
  r2 sol2.\pp\< -"(sans corriger la hauteur)" r2\! |
  sol1.*1/2\< \hideNote sol\> sol4\mp\fermata |
  r2 r4 sol\p~ |
  sol1*1/2 \hideNote sol2\glissando -"gliss."
  lab1~ -\dyn "(p_sempre)" lab4 r r2\fermata |
  r2 lab2\mp ~ | lab2\glissando -"gliss." sol r2 r4 |
  do,1--\pp\fermata r2 r4 |
  sol'1~\mp( sol4\< sold2 |
  la1~\mf la4\cresc lad2 |

  %%% stringendo %%%
  si2.\f) -"ten."~ si~ si~ si4 r |
  R2.*2 lab2~--\mf lab8 r |
  R2.*4 R2 R2.*4
  lab2\f( sol\> fa4~ \t {fa8 mi4~} mi8\mf re) r4 |
  R2. R2
  lab'2--\fz
  \tupletUp
  \t {r4 mib'-.\p lab,-. |
    \tupletDown
    \t {si-. fa-. la-.}
    mi'-.}
  \tupletNeutral |
  si16-.\f\> si-. si-. si-. sib8-.\! r |
  R2. R2
  r8 do,4.--\mp |
  r8 re16-. re-. re-. re-. reb8-. |
  R2. R2
  r8 lab'~\mf\< lab2 |
  R2\!
  sol2\fermata -\dyn "p_subito" r4 |
  R1 R1*5/4*2
  r8 do'-.\< \t {sol,16( do) sol'} |

  %%% Tempo primo %%%
  reb'2.--\f \t {do,,8\mp -"legato assai" re do} \t {re do re} |
  \t {do re do} re16( do re do) |
  \t {re8( sol do)} \t {lab'( re, fad,)} |
  re16( sol do re \t {fa8 sol lab)} |
  sol,2~-- sol8 r |
  mib2\f mi2.-"(sostenuto)"~ mi1 | R1

  %%% Lent et blanc %%%
  R1*3 r2 r4 si'(\p ~ |
  si lad) r fa'(~ |
  fa do) r dod(~ |
  dod re) r sold(~ |
  sold la) r mi(~ |
  mi red) r sol?(~ |
  sol fad) r si,(~ |
  si mi) r fa(~ |
  fa sib,) r la(~ |
  la sold) r re'(~ |
  re dod) r fad(~ |
  fad sol) r fad(~ |
  fad mid) r si(~ |
  si lad) r mi'(~ |
  mi red) r la(~ |
  la sold) r re'(~ |
  re\cresc dod) r re(~ |
  re dod) r re(~ |
  re dod) r re(~ |
  re dod) r re(\f~ |
  re\> dod2 do4~ |
  do si2 sib4~ |
  sib la4. lab) |
  sol2*3/4\p \graceNotes \lightBeams {mib16( fa)}
  \grace sol16( fa2)\prallprall
  sol2.-- sol4~ sol1
  sol4. sol~\> sol4 fa2.--\p
  fad1*1/2\<\fermata s\>

  %%% Tempo primo %%%
  sol1~\pp -"ten." sol4 r r2 | R1
  R2.*6
  r4 fad2(\mf mid4) |
  la2( sold) red'( mi) |
  \t {lad,2(\< si do)} |
  do4->\f sol2.->-- R1*2

  %%% lent et statique %%
  sol'2.\p\fermata _"(long)" r4  |
  sol,1~-\dyn "p_(con vibrato)" sol2. fad1~ fad4 r2 |
  R2. R1*5/4 R2. R1*5/4
  re1--\pp r4 |

  %%% lento e semplice %%%
  R2. R1
  r4 \t {r sol8~ -\dyn "p_très doux"} \t {sol( lab mi'} sol4) |
  r2 r8 fa-- reb4-- |
  r2 fa4~\> fa2 r4\! |
  R2.
  r4 \t {r8 sol,(\mp mi')~} \t {mi lab,(\< mi'} sol4)\! |
  r8 fa4-- reb4.-- |
  r8 sol\p(-- si-- dod-- lab4--) |
  r8 do,,--\mp fa-- sol-- reb4--~ |
  \tt {reb8\< re mi fa sol} |
  r4\! r8 re'4.(\mf | dod2.) |
  r8 re(~-\dyn "f_espressivo" \t {re4 dod lad)~} lad4 |
  r4 dod'2.\sf | R2
  R1*3 re,1\mp |

  %%% au mouvement %%%
  r4 do-- r2 | R1 |
  r8 do,~\mf -"ten." do4~ do2~ |
  do4 r r8 re'4.--\fp |
  r2 r4 \ttt {r8 re16-.\mp re-. re-. re-.} |
  re8-. r r4 r2 |
  r re32-.\p re-. re-. re-. re16-. r r4 |
  r red32-. red-. red-. red-. red16-. r r2 |
  r re32-. re-. re-. re-. re16-. r |
  r4 lad'32-.\fp lad-. lad-. lad-. lad16-. r r4 |
  r r8 lad,32-.\p lad-. lad-. lad-. lad8-. r |
  \t {r8 lad'16-.\sfz r8.}
  r16 sold,32-. sold-. sold-. sold-. sold16-.
  \t {r4 sol'16-.\sfz r} |
  r2 r8 re32-.\mp re-. re-. re-. re8-. r r2 |
  r4 \ttt {r8 re16-.\< re-. re-. re-.} re8-.\! r |
  r4 \tt {r16 red-.\< red-. red-. red-.} red8-.\! r |

  %%% Toujours très calme %%%
  r8 re~(\p \t {re4 do8~} do4 si) |
  r4 re8(~ re do4) | r4 si'8( sib) |
  r4 do,16-.\mp do-. do-. do-. si8-. r r4 |
  R2. r8 do4(\f sib la8)~ la2.~-"ten."

  %%% Più mosso %%%
  la1 r2 r4 |
  R1*5/4*2 R4. R2
  sol2\f( sold4) la4.(\< lad8--)~ lad2 |
  si2.--\ff~-"ten." si2 |
  r2 si4-.\sfz |
  r2 si8->\f sol sib[-> mi, sol] si\sfz |
  r2 r8 si-.\sfz | R2 r8 sold-.\mp fa-. sold-. |
  r2 si4-> R2 r8 sol-.\< mib'-. | si'\sfz r r2 |
  r4 r8 si\sfz | R2 dod8\sfz r r2 |
  r8 dod\sfz r4 | R2.
  r2 r8 re-\dyn "sffz" r4 |
  fa,2->\f r r4 |
  \t {si8-.\ff si-. si-.} \t {sib-. sib-. sib-.} \t {sol-. sol-. sol-.}
  \t {fad-. fad-. fad-.} \t {mib-. mib-. mib-.} |
  re2-- r r4 | R1*5/4 dod'2.--\sf r2 R2
  re,8(\f dod) r \t {fad(\< sol la)} |
  \t {si-.\ff si-. si-.} \t {si-. si-. si-.} \t {sol-. sol-. sol-.} |
  \t {fad-. fad-. fad-.} \t {re-. re-. re-.} \t {dod-. dod-. dod-.} |
  \t {lad-. lad-. lad-.} \t {la-. la-. la-.} \t {re-. re-. re-.}
  dod-. r lad-.\dim lad-. |
  la-. la-. re,-. re-. dod-.\f dod-. dod4-- r |
  R2.
  si'1->--\f r4 | R1*5/4
  si'1->--\fff r4 |
  si1->-- r4 |
  \t {si8-.\ff \> si-. si-.} \t {sib-. sib-. sib-.} \t {sol-. sol-. sol-.}
  \t {fad-. fad-. fad-.} \t {re-. re-. re-.} |
  \t {dod-.\! dod-. dod-.} \t {sol'-. sol-. sol-.} \t {fad-. fad-. fad-.}
  \t {re-.\> re-. re-.} \t {dod-. dod-. dod-.} |
  si--\mf si-- si2-- r |

  %%% lent et paisible %%%
  R2.*3 R1 R2.*2 R1
  r2 sol~-\dyn "mp,_un peu en dehors" sol
  \graceNote lab8*1/2( sol4*3/4) \t {mi8( sol lab)} |
  sol4 \t {mi8( sol lab)} sol-- do-- re-- lab-- |
  sol2.-- r4 |
  \t {mi4(-- sol-- lab)--} |
  \t {sol'8->\f fad-> fa->} \t {mi mib re} |
  dod-. r r2 |
  r2 r4 reb,(\p do1--) |
  R1
  mib2~(\p mib8 si')~ si2 |
  re4( do8 si la4) sol2--

  %%% très calme %%%
  sol1\fermata |
  R1*5
  r2 r4 \t {r8 do4--\mp} |
  \t {la8( si) do2--} \t {re4 dod2--} |
  re1\fermata |
  R1*2
  r1 r16 re(\mp do) dod( sib) si8( sol16) |
  fad1\fermata r2 |
  r2 r8 do'--\p\< lab-- mi16( si') |
  re1\!\fermata |
  R1
  r1 \t {si4--\> sold-- fad8( sold)} |
  mi1\!\fermata r2 |
  R1.
  r4 sib'--\pp mi,-- |
  R1*4
  do''1\p\fermata |
  R1

  %%% très clair %%%
  r2 sib,4(\p la) |
  sol1~ sol( la)~-"ten." la\fermata
}
