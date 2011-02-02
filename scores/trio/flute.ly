%-- Trio -- flute.ly ----------------------------------------------%
% (c) 2003-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

afterGraceFraction = #'(15 . 16)

Flute = \relative do' {
  \t {r16 \once \override Hairpin #'rotation = #'(30 1.2 -2) do^\<( sol')}
  re'32( si') fa'( la)
  \afterGrace dod2.~\ff \< \parenthesize dod8-\dyn "sffz"
  r2 r4 \longHairpin dod,,~\pp\< |
  dod2\>(_"(poco)" dod'4)\! r8. dod32( fa |
  re2.)--\mp\> r8.\!
  \pl {s16 s2\< s8\mp s8.\<_"(poco)" \longHairpin s\> s2\! s2 s4
  s8. s16\pp\< s4_"(poco)" s\> s\! s s2*2}
  {\oneVoice
  dod32(\pp fa |
  re2)-- fa8--(-"espr."
  \downGliss dod4.)\!-"(gliss.)" \glissando |
  dosd8 r r8. dod32( fa |
  \t {re4--)\mp\< dod-- fa8--\! r16 dod32( fa} |
  \t {re4--)\mp\< dod-- fa8--\! r16 dod32( fa} |
  re2~) \t {re4( fa--\mp\> dod~)}
  \downGliss \longHairpin dod2(\pp\> \glissando
  dosd8)\! r r4} |
  r2 \downGliss \longHairpin dod,2--\pp\>(\glissando |
  dosd4)\! r8. si32(\p fa'
  \downGliss \longHairpin dod2--)(\<\glissando |
  \t {dosd4\mp)\< si( sol8.) si16(} |
  fa2..)-"(ten.)"-- -\dyn "f_(chaleureux)" r16 fa32( si |
  sol2.--)\mf\> r4\! |
  si8--\mf( fa'4) r8 |
  si,(\< fa')~ fa16( re')\mf\> fa,( la) |
  \t {si,8(\< fa' la)~} \longHairpin la4\mf\>~ |
  la8\p\<(-"scherzando" re-.)\! fa,\<( la16.-.)\! la32( |
  sol,2.-"(ten.)"--)\p r4 | R1*5
  R2 r4 r16 si(\p\< la' re |
  la'2.\f)~ \t {la8 fa,(\p\< re'} |
  la'4~\mf) la16 la,(\>-"(très souple)" re fa,)\! \t {sol,8(\< si fa'}
  \longHairpin la4)\p\<~ |
  la8\mf(-"scherzando" re-.) fa,( la16.-.) la,32-. |
  si2.-"ten."--\p r4 | r2 r4 \longHairpin si--\p\<~ |
  \t {si-\dyn "mf_chaleureux"( sold sol)} |
  r2 r4 si--~-\dyn "f_très soutenu" |
  \t {si( sol mi} mib) r | R1*2
  r4 r8 \t {mi'16(\< fa) fad} |
  sol2~\mf-- sol8 \t {mi16(\< fa) fad} sol8-- \t {sold16( la) lad} |

  %%% Tempo giusto %%%
  si2.-\dyn "f_dolce_espressivo" sib4\> sol8\! si,32(\p\< si') si( si') |
  si4.-\dyn "f_plein"( sib8( sol4.( fad16-.) r32 fad-. |
  si,4.( \t {sib16 la lab)} sol4. r16 sol32( sib |
  fad2.)-\dyn "f_sempre" r4 |
  r4 \pitchedTrill do,--\p\<\startTrillSpan re
  \pitchedTrill re--\startTrillSpan mib\mf
  \pitchedTrill mib--\!\startTrillSpan fad
  r\stopTrillSpan
  \pitchedTrill do--\p\<\startTrillSpan re
  \pitchedTrill re--\startTrillSpan mib
  mib16--\mf\stopTrillSpan fad mib fad |
  \pl {s2.\p\< s4\mf }
  {\oneVoice \pitchedTrill mib2--\startTrillSpan fad
  \pitchedTrill mi--\startTrillSpan fad!}
  \lightBeams \graceNotes { \slashStem \t {
  \once \override Hairpin #'rotation = #'(15 0.4 0 )
  mi16--^\<[(\stopTrillSpan fad si} \t {mi fad si])\!}}
  si,2--\< si'4(-\dyn "mp_semplice" |
  lad dod la) la( sold si |
  sol2)\>~ sol8\! r \lightBeams \graceNotes { \t {sol,16\<( sol' si} \t {re fa la)}} |
  dod2->-\dyn "ff_aigre"( do4 la) |
  \t { r dod(\ff do)} la4.->(-"(ten.)"\> sold8\!) |
  dod4(-\dyn "fff_(douloureux)" do la lab) |
  \hairpinText "(molto)" mib--(\> re) si--( lad) |
  \downGliss si,2-"plaintif"(\mp\glissando sisb)(\> r4)\! |

  %%% Calme et étrange %%%
  R1*4
  r8. \longHairpin dod32(-\dyn "p_dolce"\< fa re2.)~ |
  re2\>(_"(poco)" dod4\! lad) |
  \t {r re\mp( dod)} lad4.--(\> \acciaccatura fa'16 la,8)\! |
  r2 \longHairpin sib4(\p\> la |
  fad2.)\! r8 \t {\longHairpin dod16(\< fad lad)} |
  \t {re2\mp\>( dod \acciaccatura fa16 lad,2)\!} |
  si2.--\p\> r8..\! fa'32 |
  si,4~ \t {si8 fa' lab} fa4-- \t {r8 si,(\( fa')} |
  lab--(-\dyn "p_sempre" fa4) \acciaccatura lab8 mi8--~ mi red re( fa) |
  si,2--\) fa8(\( fad) la( si) |
  \t {re( mib fa)} lab la4.\) fa,8(-\dyncresc "poco a poco cresc." sol |
  si re \t {mib16 si mib} fa8) si,--( sold'16) mi32( sold fa8) si,( |
  sold'16) mi32( sold fa8) \t {si,16( mi sold} fa8) \breathe
  \t {si,16( mi sold} \t {fa re fa} \t {la fa la} \t {dod fa la)} |

  %%% Risoluto %%%
  dod1->-"(ten.)"(-\dyn "ff_(plein)" do->-"(ten.)" la->)-"(ten., senza dim.)"~ |
  la2 \t {r8 do,,,( sol'} re'16\< si' fa' la) |
  dod1\ff->( do-> la->)-"(simile)"~ |
  la4 r8 \hairpinTextUp "brillant"
  \once \override Hairpin #'rotation = #'(9 0.4 0 )
  \lightBeams \graceNotes {do,,,16(^\< sol'
  \t {re' si re} \t {si' sol si} \t {fa' re fa} \t {la fa la)\!}} |
  dod2..\ff -"(ten.)" r8 |
  do2--( la lab1)\mf\<-"(ten.)"~ lab\f\<~ lab2:32\ff \<

  %%% Presto %%%
  sol16-\dyn "sffz"\colpugno r8. r4 |
  r r8 dod,,16(-\dyn "f_incisif" fa) |
  re4.-- dod16( fa) |
  re4.-- dod16( fa) |
  re8.-- fa16( dod8.--) fa16( |
  re4.--) r8 |
  \t {re8(\< fa) dod'} \t {fa( dod) fa} |
  re4.--(\ff la'8) |
  la2->-"(ten.)"~ | la4 r |
  r8 dod,,16(\mf\< fa re'8.--)\! la'16 |
  la4.->-"scherzando leggiero" \longHairpin dod,,16(\< fa |
  re'8.--)\! la'16 la4->~ |
  la~ \t {la8 fa\> dod} |
  \t {la'( dod,) fa,\!} \t {re(\< fa) dod'} |
  la'2--\!-"(ten.)"~ |
  la8. fa16(\mp la8.-.) re,16( |
  la'8.-.) dod,16( fa,8.-.) fa'16 |
  re,4-- r | R2
  r4 \longHairpin dod4:32\mf\<~ dod2-> \> | R2\!
  \t {si8(\mf fa' si,} \t {fa' la fa)} |
  \t {re'( la' re,} la'4) |
  \t {re,8( la' re,} \t {la fa dod} |
  sol2)\> | R2*2\!
  r8 sol( la dod) |
  \t {fa--( dod fa)} re-. dod-. |
  \t {fa--(\cresc dod fa)} re-. dod-. |
  \t {fa dod fa} \t {re dod fa} |
  sol\noBeam sold\noBeam la |

  %%% Plus large %%%
  sib2->\f r4 \t {fa'16( si, fa)} \t {si( fa si,)} |
  dod2(-\dyn "f_intense" mi4 fa) |
  \t {r dod( mi} \t {fa mi do)} |
  r8 dod4.~ dod8( mi~ \t {mi fa lab} |
  la4--) do--\< mib-- fa8--\! \noBeam
  \slashStem \lightBeams \graceNotes {sol,32( re') fa la}|
  dod1->-"(ten.)"\fff |

  %%% Tempo primo %%%
  R1*2 R2 R2.
  r2 r8 re,,4(\p-"dolce espr." fad8 |
  do'4..\< fa16 \longHairpin dod2\>) | R1*3\!
  r4 la'--\f lab-- do-- |
  \lightBeams {
  \stemUp do,,,16._( \graceNotes {sol'32 re' si' fa' la} \stemNeutral
  dod2.)->~ dod8\noBeam
  \stemUp \slashStem \graceNotes \ttt {do,,,32_( la' mib' sol do fa} \stemNeutral
  si8--)\noBeam
  \stemUp \slashStem \graceNotes \tt {do,,,32_( sib' mib sol re'} \stemNeutral
  sol8--)\noBeam
  \stemUp \slashStem \graceNotes \tt {do,,,32_( si' re fa la} \stemNeutral
  dod8--) r16 \slashStem \t {do,,32_( \graceNotes {sol' sib)}}} |
  \t {do8 re mi} \downGliss fad2.(--\glissando fasd1)\> R1\!
  r2 lab,4(-"(avec une grande douceur)"-\dyn "pp_soutenu" sol |
  \downGliss mi2--(\>\glissando misb4)\! r |
  \downGliss mi2--(\>\glissando misb4)\! r |
  R1-\fermataMarkup
}
