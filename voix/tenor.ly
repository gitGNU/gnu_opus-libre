%------------------------------------------------------------------%
% Opéra Libre -- tenor.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

Tenor = {
  #(make-char-name 'tenor 27.5)
  \clef "G_8"
}

PrologueTenor = { \Tenor
  \relative {
    \partial 4 r4 | R2.*3 | R1 |
    R2*2  R2. R2*2 | r2 r8. mi,32\mp ( mi | sold4--) r8. sol32( sol |
    si4--) r8. sib32( \< sib | re4.--) \! r8 r8. mi,32\mf ( mi |
    la4-- ) r8. sol32 ( sol | do4-- ) r8. sib32( \< sib |
    mib4.--)\! r8 r8. mi,!32\f ( mi | si'!4--) r8. la32 ( la |
    mi'4-- ) r8. re32 \< re |
    \parlato la'4 \! r2 | R2*2 r8 mi?-.( \mf mi-. mi-. fa4->) ~| fa8 r r4 |
    r8 mi-.( mi-. mi-. mi-. mi-.) |
    fa4--( mi8-. mi-.) \t {sol( mi mi} mi4. mi8-.) |
    r4 \ind #"meno" reb8( do) reb( do) mi( reb) do4 |
    r la--\mp \t {do--( \> la la} la2.)\! |
    R2 r4 sib16-- ( \p  la ) r8 | r do16-- ( la ) r4 | R2
    r4 \t {r8 dod ( \mp \> si} | sold4. ) r8 \! | R2*2 R2.*6
    r2 sib16 \mp ( lab ) r8 | r4 do16 ( la ) r8 r4 | R2.*2
    R1 R2*3

    r2\fermata r4 \t { \ind #"minaudant" re ( \pp re8 } |
    sol-- sol sol lab fa4-- )
    \t {r8 fa \> ( sol} |
    re4 \! )r \t {r si8 ( } sib4 ) r8 dod ( -- ~ \t {dod4 la la } | lab )
    \t {r8 lab ( lab} sol4 ) |
    r8 si4 -- ( sol8 \t {sol4 sol8~ } sol4 ) ~ | sol2 \>  | R2*3\! R2.*11 R4.*9
    r4 lab16 \p lab  | sib8 ( sol16) r sib sib | reb8 -- r4 | R4.*4
    si8 \p r si16 si | do4 -- r8 | R4.*2
    si8 \p r si16 si | si4 -- r8 | R4.*2
    la8 \p r16 la \> la8| la4 \! r8 | R4.*2
    reb8\pp -- r mib16 ( reb reb4 ) r8|R4.*2
    re!8 -- r fa16 ( re| re4 ) r8 | R4.*4
    la8( la la| \parlato la ) r4 | R4.*7

    r8 dod16-.\mf dod-. r dod-. | dod-. dod-. r dod-. dod-. r |
    dod-. dod-. r red32( dod mi8--) | R4. r8 fa4-- \sfz |
    r8 fa,16-.( \p \< fa re-. re |
    sol-. sol fa-. fa sib-. sib lab-. lab reb-. reb sib-. sib |
    mib8-.) \f r16 dod32( dod mi8->) |
    r r16 re(\ff re re | sol4->-- re8 re r re |
    \ten lab'4.->--~ lab8. re, \> | re4 \! ) r8 |
    r r16 si \f si8 | re8.->-- si-- | \times 6/4 {si16--( si-- si-- si-- } |
    si4--) r8 R4.*2 \parlato {si32( lad sold8.)} r8
    R4. r8 \parlato {lad32( si dod8.)} |
    R4.*2 R2*5/4
    \t {la!16->( \< do! re} fa4) \f~ fa8. mib16 do( sib) |
    reb->( sol,)\>~ sol4 sib16->( fa) \!~ \ten fa4~ | fa r8 r4\fermata r8 |

    R1*3 r2 r8 mi--(\mf~ mi16 mi-> mi8 |
    mi4-- mi8 mi mi mi mi mi mi16-- mi8. mi8 mi | mi4-- mi8) r r1 |
    R1*2 r2 mi8--( mi16 mi \t {mi8-- mi mi} |
    mi4 r8 mi \t {mi mi mi } mi r16 mi mi8 mi--~ \t {mi mi mi} |
    sol4-- mi8) r r1 |
    R1*2 r8 r16 mi--(\<~ mi8 mi--~ mi16 mi8.-- |
    si'4.--)\mf dod8(~ \t {dod lad fad} \t {fa\> lad la} dod) \! r r4 |
    R2. r4 re2--(\pp~ | re8 la fad-. fad-. mi-. mi-. |
    do'!4-.) r la8( la | do4--) sold8( sold si-- sol! red si' | sol4--) r2 |
    r8 re'-.(\pp r4 | dod-. r8 dod-. si4-. |
    r8 si-. lad4-.\> r8 lad-. | mi'4-.) \! r4 r2 | R1 |
    R2.*5 R2*2 r4 la,8-.\f re4->-- la8->~la16 si-. si8-. |
    fad4-- r8 la4->-- r8 | mib4->-- r |
    R2*22
    mi'8-.\p r r r16 si-. | re8-. r r la16-. si-. sold8-. r r4 | R2
    mi8-.( mi-. sold-. sol-. | si-- r si-. si-. | sib-- r sib-- r | mi-.) r r4 |
  }
}

ActeUnSceneTroisTenor = { \Tenor
  \relative {
    R2.*2 r2 \ind #"serioso" sol8-- \f sol-- | mi4-- r2 | R2.
    sol8-- sol-- mi4-- si'8-- \< si-- | sold4-- \! r2 r2 r8 re'-. \mp |
    si4-- r8 re-.( sib-. si-. | sol4--) sol8-.( sol-. sol-. lab-. |
    fa4--) fa8( sol) \t { r sib( \< lab} | reb4-- \! ) r2 |
    R2.*6 re!8-.( \mp re-. si!4--) r8 si-.( | sib-. sib-. \t {reb4-. lab-. sib-.}|
    sol8-- sol-.) r2 | R2.*3

    R1.*5 r1 solb2-- \p | r2 reb'2-- r4 |
    r4 fa, \pp fa--( mi) r |
    r reb8 reb reb4--( do) r |
    r8 lab' \mf \t { lab--( sol si} fad'4) r2 |
    r8 fad, \t { fad--( mi \> sol} red'4) \! r2 |
    r8 re \mf \t { re( \( dod) mi }   do4 \) r |
    r8 do16 do \t{do8( \> sib reb} la4) \! r8 fa16( \f si |
    \parlato mi4) \ttt {r16 fa,-.( la-. fa-. si-. re-.} \parlato mi4) r8. si16-.|
    sol'8.-> si,16-. sol'16.->( si,32-. sol'8->)
    \ttt {si,16-.( \mf si-. si-. si-. lab-. sib-.} \parlato fa4) |
    r2 r8 reb'-. \f | la'8.-> reb,16-. la'16.->( reb,32-. la'8->)
    \ttt {reb,16-.( \mf reb-. reb-. reb-. sib-. do-. }|
    \parlato sol4) r8 sib'->-- \sfz r la,32-.( \f la-. sol-. sol-. |
    do8--) do32-.( do-. sib-. sib-. mib-. mib-. reb-. reb-. solb8--) |
    r16 reb--( solb8--) r16 sol,-- do8-- |

    r4 re!8-.\mp re-. dod-. mi-. | do-. r \t {do-.( do-. do-.} do-.) r |
    \t {do-.( sib-. reb-.} la4--) r | R2.*2
    r4 \t {r8 do( \mf do} do4--) | do16-.( do-. do-. do-. do8-.)
    sib-.( mib-.) do-.( | sib-. do-. sol-. la-. mi4-.) |
    r2 \t {sib'8( sib sib} fa'4--) \> \t {mi,8( \! mi mi} si'4--) |
    r4 si8--( \p si-- si4--) | \t {si8( si si} \t {si si lad} dod4--) |
    r la8( \pp la sol sol | sib \> sol16-. la-. fad4-.) \! r |
    R1.*4
    mi'2.--\pp r8 sold,-. si4-. r |
    si8( \mp si) \t {si( si si)} mib( re) \t {r re-.\< re-.} sol4( re8) r16 re-. |
    lab'2 (\f~ lab8 re,) r4 r8 si( \mp | \t {si-- si si } \t {si si si )} r2 |
    si8--( \p \> si-- si-- si-- si-- lad-- | dod4--) \! r |
  }
}

ActeUnSceneQuatreTenor = { \Tenor
  \relative {
    \partial 4 r4 R2*5/4 R2*3 R2*5/4 R2*2 R2. R2*3
    R1 R2. R1*2 R1. R1*2 R1. R1*2
    R2.*27
    R1 R2. R1 R2. R2 R2. R2 R2. R2 R2. R1*5 R2 R2. R1
    R1*9 R2. R1 R2. R1*7 R2*3 R2.*2 R2.*4
    R1*4 R2. R1 R2. R1 R2. R1 R2. R1
    r2 r4 r8 sol16( \mp sol | si8) sib16( \< sib re8) dod16( dod fa) \! r sol,( sol |
    do8) sib16( \< sib mib8) reb16( reb solb) \! r \t {sol,!( sol sol} |
    re'!8) \t { do16( \< do do} sol'8) \t {fa16( fa fa} \parlato do'8 ) \! r |
    R1*2
    sold4--( \f sold8.-- sold16 sold4--) | sold8--( sold-. sold-.) | lad,4->-- r2 | R4.
    sold'8.--( sold16 sold8-. sold-.) | sold4--( sold8-.) | do,4->-- r | R2 |
    sold'8.--( sold16 sold8-. sold-.) | sold4--( sold8-.) | re4->--  r | R2 |
    sold4-- r R4. R2*3 R4. R2. R1*2
    sib,8.--( sol16--~sol8 do--~ do) sib-.( mib-. do-. | fa4->--) r r2 |
    sib,8.--( la16--~  la8 do--~ do4) la8-. sol-. |
    sib8.--(  la16--~  la8 do--~ do4) la8-. sol-. |
    sib4->-- r r la8-. sol-. | sib4->-- r r la8-. sol-. | sib4->-- r la->-- r sol->-- r r2 |
    R1*2 R2 R2.*2 R2 R1

    R2.*21 R1. R1 R1. R1 R1. R1 r2 r4 \parlato { do8 do fad,-- fad \t {fa[ ( do' mi,]} |
    re'4 ) } r r2 | R1. | r4 lab'-- \f r mib16-.( \mf fa-. do-. re-. | la!4-> ) r r1 |
    r16 si ( \f mi8) re16[( mi8) dod16-.] fad,( si mi8) r fa!-.( fa-. fa-.) \t{do[ ( mib sib]} | la4--) r r1 |
    r16 si ( mi8) re16[( mi8) si16-. ] fa8-. sol-. do16( \< sib reb4.--) \! r8 fad,-.( \mp |
    la-. \< do-. sib-. mib-. reb4--) \! r8 lab-. \t {fa( \mf \< re! fa} \t {mi'[ si mi]} | la2->-- \sfz ) r |
    R1. R1 R1. | fad,8.-- ( \mf mid16--~ mid8[ sold--] ) r la16-. \mp la-. sol-.[ sol-. do8--] |
    r8 do16-. \p do-. sib-. sib-. mib-. reb-. solb4-- \f \t{mib8-.( \p sol,-. do-.} \t {fa,-.[ sib-. sol-.] )}
    mi!16( \< fad si dod) | red2 \mf r1 | r4 fad->-- \sfz r8 sold,-.( fad-. si-.) r4 \t{ mi8 (\mf re sol} |
    la,4--) r8 mi-. r4 fad-- r8 mib'-.( sib-. do-. |
    la-. fad-. sold-. red-. fa-. sol-. do-. sib-. reb-. mi-. re-. sol,-. |
    la2--) r | R1. R1 |
  }
}

EntracteTenor = { \Tenor
  \relative {
    R2*9 R1*28
    r4 r8 re16\mp re re4-- r16 re re re |
    re4-- r8 re-. re-. re-. re8.-> re16 |
    re8-. re-. r4 r8 re->-.\f fa,16( fad sib la |
    dod4->) \t {r8 la( dod} fa4->) re16( mi fa dod |
    sold'4->) r8 sol-.\mp si,4-- r8 si-. |
    sib( sib re4-.\>) sold,-.\! r8 sold'-.\mf |
    do,4-- r8 do-. si( si mib4-.\>) |
    sol,-.\! r mi'8->\fmolto mi mi16-> mi8 mi16 |
    mi4-> r16 fa->( do) la dod8->( fa,) \t {sold--\<( dod-- si--)} |
    re4->\sfz r8 re16\f re re4-- r16 re re re | re4-- r8 re\< re8.-> re16 |
    re2~--->\! re8 re-. re4-- |

    %%% Fugato %%%
    re---> r r2 | R1 R2.*2 R2
    R1 R2.*2 R1*2 R2.*2 R1*2 |
    r2 r8 r16 red\p | red8.-. red16 fad2--( |
    red8) r r r16 mi mi8. mi16 sol4~ |
    sol mi8 r r2 | mi4-. mi8.-. mi16 red4-. red-. sol2--( |
    fa!8) r r4 re8.\mf re16 fad4~--( | fad re8) r r4 re8. re16 |
    mi2--( dod8) r | r4 re-- dod8.-- dod16 | re4---.\< re---. re2--->\!( |
    re4) r8 re16\f re re4-- r16 re re re |
    re4-- r8 re-. re-. re-. re8.-- re16 |

    %%% Stretto %%%
    re8-> re-> r4 r8 mi-.\mp \t {sold( mi sold} |
    do,4--) r r2 | R1*2
    r2 r8 r16 sib-.\<( re-. si-. mib-. re-. |
    fad4--\f) r r8 fa-. \t {la,\<( do fa} |
    sold4\f) r r8 fad--\f\< mi--( sol--)\! | R1
    r4 r8 sold16-.\p sold-. la4-- r16 sol-. sol-. sol-. |
    sold4-- r8 sold-. sold-. sold-. sold4-.\> r sold-. r \parlato sold-.\! |

    %%% Noir %%%
    R2.-\fermataMarkup
    R2.*4 mib,4\pp( do8) r R2. mib4( do8) r r2 |
    mi4(\p do8) r r4 | R2
    \ind #"giocoso" sol'4( mi8) r sol4( mi8) r |
    sol4( mi8) r sol4( mi8) r |
    sol4( mi8)\> r sol4( mi8) r |
    sol4(\pp mi8) r sol4( mi8) r |
    sol4( mi8) r sol4( mi8) r |
    sol4( mi8) r sol4( mi8) r sol( mi) sol( lab) |
    sol4( mi8) r sol4( mi8) r sol( mi) sol( lab) |
    sol4( mi8) r sol4( mi8) r sol( mi) sol( lab) |
    sol4( mi8) r sol4( mi8) r sol( mi) sol( lab) |
    sol4(\> mi8) r sol4( mi8)\! r | R2.-\fermataMarkup

    %%% A tempo %%%
    R2. \ten la2.\p~ la2 r4 R2. |
    r4 mi'2(~ mi2 re4)~ \ten re2.\>~ re2\! r4 | R2.-\fermataMarkup

    %%% Poco più %%%
    sol,4\pp( mi?8) r r4 |
    sol( mi8) r r4 |
    sol( mi8) r sol4\>-- lab\!-- r2 R2.-\fermataMarkup |

    %%% Andantino %%%
    mi'1\p-- mi4( do8) r |
    mi1-- re4( si8) r mi1-- mi4( do8) r |
    mi2( re4) r R2.

    %%% Largo non troppo %%%
    mi2--\mf mi-- mi4( la,8) r |
    mi'2-- mi-- mi4( la,8) r |
    mi'2-- mi-- mi4( la,8) r |
    fa'2-- fa-- re-- | do-- do-- mi-- do( si) si-- |
    do-- do4( la8) r do2-- | do4( la8) r do2-- si-- |
    la4( mi8) r la2-- la-- | re-- re-- re-- do-- do-- do-- |
    mi(\< fa4 mi fa sol | \ten la1\!)~ la4 r |
    re,2--\mf re-- re-- si4(\< do do re re\> do)\! | R1.
    la4(\mf\< sold la si do re mi1--\fmolto )~ mi4 r re2.-- r4 R1 R2. R2
  }
}

ActeDeuxSceneUnBisTenor = { \Tenor
  \relative {
    R1 R2. R2 R1*5/4*15
    r4 fad,8-.(\mf fad-. fad-. fad-. lad4--) lad8-.( lad-. |
    la!-. la-. dod4--) dod-- dod8-.( dod-. do-. do-. | mi4--) r1 |
    R1*5/4*15 r2 mi,8\mp mi sol4--( mi8 sol | si2) r sol4-. |
    si--( sol8 si re2) r4 | r2 r4 re\mf \< si8-. re-. | mi2->--\! si4-- la-- sold--|
    \ten fad1 \f r4 | R1*5/4*8

    %%% Boum %%%
    r1 re'8( \pp re | sib2.) r2 | r1 si8( si |
    sol2.) r2| r1 sold8( sold | mi\< la la la sol sol do4\! r8 do |
    sib\< sib mib4--)\mp r r8 lab,-.( \p \> lab-. sib-. |
    mi,!4--)\! r1 | R1*5/4*3

    mi'?4(\f mi2->-- mi->-- | mi4 mi4.->-- mi8 mi2->--) |
    r2 mi4( \< mi mi--~| mi dod2 mi4 mi |
    sol1*5/4->--\! | mi4) r1 |
    r2 r8 mi(~ mi2\< | \ind #"poco più" sold1*5/4->--)\!~|
    sold4 r mi4.(\< dod8~dod4|
    \ind #"più" la'?1*5/4)\!~| la4 r r8 mi--(\mf \< ~ mi2 |
    do2~do8 mi~mi2 | si'?1*5/4\ff ~| si2~ si8 \> lad)~lad2~|
    lad4\! r1 | R1*5/4*4 R1*7/4

    mi,1-- \pdolce r4 mi2( \> | si'1)\! r2 r4 |
    si4(\pp \< \t{do si si} re si do si  |
    \t{red si si} mi2\p \> si4 \t{sold sol sol} |
    si1) \! r2 sold8(\p sol|
    si2.) r4 si2(\> sib8 sib | \ten re2.) \pp ~ re4 r4 r2 |
    R2. R2 |

    r8 \ind #"mormorando" do,(\pp \t{do4 do8} do do |
    mi4--) r8 red( mi mi | red red) r sol--\mp ~sol4 |
    r4 \t{r sol8(\pp} lab sol) | r4 do4.--(\mf \> sol8|
    \ten si2.--)\p~| si4 r2 r4 lab8( sol si4) |
    r si--(\> sib8 sib | re1)\pp r2 r4 | R1*7/4*2
    r4 sol--(\mp r | la,2--) r4 | r solb'--( r |
    sib,2--) r4 | R2.*2 r4 sib'2->--\sfz |
    solb,8.--(\f fa16--~fa8 lab--) r sol-.( do-. sib-. mib4--) r2 |
    R1*7/4
    r1 r2 r8 dod16(\mf dod | mi2) r8 r16 sib(\pp sib sib dod8~dod4) r2 |
    R1*7/4*5

    sol'2->--\ff ~ sol4 r \tt {r2 dod,8-.(} |
    \tt {fa4->--) r8 do!4-.(} \tt{mi4->--) r8 dod-.( dod-.}
    \tt{sib--) r si(\< sol lab} |
    \tt{mib'4--)\! r8 mib4--(\mf}
    \tt{re-- re-- re8--~}
    \tt{re re-. re-. do-. mib-.}|
    si2--) r1 |  R1.
    r4 fa(\p lab | sol'\> si, mi | dod)\! \t { r8 dod( dod)} do( la) |
    fad'4(\> sib, mib | lab,)\! r8 fa4( lab8 |
    sol'16 mi si mi dod8. do16) sib8( reb) |
    \tt {la16(\< re do fa mib} lab4--)\sfz r8 sol,16(\f \< fad' |
    la4->--)\sfz r8 re,-.( | fa-. dod-. mi-. do-. | la4--) r2 |
    R2.*3 R2 R4. R2*3 R4. R2. R2 R4. R2.
    R1*5/8 R2 R4. R2.*15 R2 R4. R2

    si4(\mf \< do re8 | \ten fa2.)\f ~ fa2. r4 | R1*5/4*4
    mib2.--\pp r2 | r4 sol,8(\p sol lab4) lab8( lab sol sol |
    si4-- lab) r2 r4 | R1*5/4
    r4 mi'!2--\pp r4 r8 mi,-.( | lab4-.) r2 r4 sol8(\< sol |
    si4--\! lab) r8 si4-- r8 sib--\< sib-- | re2.->-- \p r2 |
    r4 re( re re mi | si2.--) r4 lab8( lab |
    sol4) r8 lab( sol4) \t { sol--( fa-- lab-- } |
    mi2.--) r2 | sol'2.\sfz r2 |
    r8 re(\p re re re re fa4 re8) r |
    re( re si4) r8 dod( re \> sol, fa lab |
    mi'2)\! r2 fa4(\pp | fa fa sol re) r |
    r4 re8(\> si lad si sol4) sol8( sold |
    mi4)\! r1 | R1*5/4*2
  }
}

ActeDeuxSceneDeuxTenor = { \Tenor
  \relative {
    R1.*6 R1*2 R2.*5 R1.*3 R1*2 R2. R1 R4. R1*6 R2. R1. R1*2
    R2.*3 R2 R2.*3 R2 R4. R1*5 R2*6 R1 R2. R1. R1 R1.*2 R2. R1
    R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1
    sold'8-.(\mf sold-. mi2--) mi8( \( re) do-. si-. do16( si) do re mi8-- si\)
    r4 re8(\mp re sib4)~ sib2 r2 | R2. R1 R2.
    la'2->--\sfz R2 la2->--\sfz~ la4 r2 |
    \ten la1->--\sfz~ la4 r r2 | R1 R1*5/8*14 R1*6

    r4 r8 r16   mi,32(\pp mi sold8) r16 sol32( sol si8) r16 sib32( sib |
    re4) r8 r16 mi,32(\mp mi la8)   r16 sol32( sol do8) r16 sib32( sib |
    mib4) r8 r16 mi,32(\< mi si'8--)  r16  la32(  la mi'8--)\! r |
    r4 r8 re-.\mp \t {re->-- fad,-- sib--} re,4-- r | R1*2 R2.*7

    \ind #"gemendo" mi'16(\mf mi sold,8) r16 sol'( sol si,
    r8 sib16\> sib re4)\! |
    r8 sold,(\mf \> si mi fa sol |
    la2)\mp r16 mi-. mi-. mi-. | mi8--( mib) r re(\<
    la'\! sold fad16\> sold fad mi |
    red2)\! r4 r16 red(\< mi sol
    la4)\! r16 mi(\> red sol |
    la4.)\! r8 | R2*3
    r8 r16 do,(\mp si si si si
    sib8) r16 sib(\< la16.-- la32 dod8--)\mf
    r16 dod(\< do do sol'8\> si,)\! |
    r16 si(\< sib16.-- sib32 fa'8\> la,)\! |
    r4 r8 mi'16-.(\p mi-. | sold,4--) r16 mi8--( mi16 |
    sold8-- sol16 sol \t { si\> sib sib } re8--)\pp~| re r r4 | R2*4
    r16 sold,32(\mp sold la16-.) sol32( sol sold8-.) r |
    r16 sold(\mf la dod red8) r R2 r8 red(\< mi sol |

    %% Choeur %%

    la4)\! r8 re,16-.(\pp re-. mib8-.) r |
    r4  r8 mi16-.(  mi-. fa8-.)  r |
    r4  r8 fa16-.(  fa-. fad8-.) r |
    r4 r8 fad16-.( fad-. sol8-.) r |
    r8 sol16-.(\mp sol-. sold8-.) r sol16-.( sol-. sold8-.) |
    r8 sol16-.( sol-. sold8-.) r sol16-.( sol-. sold8-.) |
    r4 mi16-.(\< mi-. red8-.)\! r4 | R2.*2
    r2 sib8-.(\pp sib-. la4--)  r2 | R2.*3
    r2 la8-.( la-. sold4--) r4 la16-.\mf la-. sold8-. |
  }
}

ActeDeuxSceneTroisTenor = { \Tenor
  \relative {
    R4.*51 r8 sold16-.\mf sold-. la8-- sol16-. sol-. sold8-- r |
    R4*14  r8 sold16-.    sold-. la8-- fad16-. fad-. sol8--  r |
    R4*7 R4. R4*7
    R4.*14 r8 sold16-.    sold-. la8-- fad16-. fad-. sol8-- r16 sold-. |
    la-.( la-. fad-. fad-. sib8-- la16-. la-.
    dod-. dod-. \t {do do do} mi8--) r16 \ind #"abbaiando" fad,32(\ff\< fa'! |
    \ten la4)\!~ la8 r | R4*19 R2.*7 R2*9 R2. R2*6 R1*5/8 R2*16 R1*5/8 R2
    r8 fad-.\mp sol-. | la-. r r4 |
    r8 fad-.    sol-. | la-. r r4 |
    r8 fa!->\mf sol-> | la-> r sol16\< fa |
    \ten fad2\! r4\fermata |
    R2.*6 R2*2 R2. R2*2 R2. R2*2 R2. R2*2 R2. R2*2 R2.
    R2 R4. R2 R4. R2*2 R2. R2*2 R2. R1 R2. R2
    R2*7 R2.*7 R2 R2. R2 R2. R2 R2. R2 R2. R2
    R2. R2 R2. r8 lab,16\p lab sib8( sol) |
    sib16 sib dod8-- ~ dod4 r |

    %%% Climax %%%

    R2 R4.
    r4 r8 sold'-.(\f | re-. mi-. la-. la-.  | sold4--) r R4.
    r4 r8 sold-.(    | la-. la-. sol-. sol-.| sold4--) r R2
    r8 sold4-- | sol--( fa8) | re2--\< fad4-- |
    do(\! dod2 fa4 | do2) r4 |
    R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 R2. R1 R2. R1 R2. R1*6 R2*3
    R2.*11 R4. R2. r2 r8 si-.\mf | dod8.-- sib16-. re4-- r |
    r8 re-. mi8.-- dod16-. fa,4-- |
    r r8 lab-. do8.-- si16-. | re4-- r r8 sib-. |
    re4-- r2 | R2.*19 R2*2 r8 re-.(\f dod-. si-. | sold'4--) r |
    R2*8 R2. R2*6 R2.*4
    r4 si,8-.( si-. do4-- si8-. si-. |
    red4--) mi8-.( mi-. fa4-- red8-. red-.|
    mi4--) r r2 | R1*3
    r4 lad,8-.( lad-. si4-- lad8-. lad-. |
    dod4--) la8-.( la-. sib4-- la8-. la-.|
    dod4--) r r2 | R1*3
    r4 sib8-.( sib-. do4-- lad8-. lad-. |
    si4--) sib8-.( sib-. do4-- lad8-. lad-. |
    si4--) r r la8-.( la-. | si4--) r r2 R1
    r4 re8-.( re-. mi4-- mi8-. mi-. |
    re4--) re8-.( re-. mi4-- mi8-. mi-. |
    re4--) r fad,4-.(\p si-. |
    sold8-. fad-. si4-.) r2 |
    r4 mi8-.\mf mi-. re4-- re8-. re-. |
    mi4--\< si8-. si-. do4-- sib8-. sib-. |
    si4-- re8-. re-. fad4--\! fa8-. fa-. | R2.
    \ten mi2.\ff ~mi~mi~mi~mi \>~mi2~mi~mi4\! r |

    r4 r8 re16(\p re re mi si8) |
    r8 sold16( sold sol sol sib8)
    \t{sold--( si sol16 sold} |
    mi4--) r2 |  R2.*4
    mi8(\p mi sold4 r8 sol | \t {si\> sib sib} re2)\! |
    R2.*3 r4 r8 \t {do16(\mf mi do} sold'8-- \t {mi16 mi sold} |
    do,8--)[ r16 mi,(] sib')[ r32 fad( do'16)
    r32 sold(] re'8)[ \t {r16 do(\< fad,]} |
    mi'4)\! r16 re(\mp \t { re re mi} si)
    dod-. sold32(\< fad si la |
    re2--)\! r4 | R2.
    sol,16( sold32 sold sol16 sol-. do-. si-. red8--) r4 |
    r8 mi32(\mf mi mi mi sol8)[ r16 do,(\mp] reb reb do8) |
    la16( la sib sib la8) sol16( sol \t {lab8-- fa-- sol--} |
    mi4--) r2 | R2.*2
    r8 sold16-.(\p sold-. sold8-- sol16-. sol-. si4--) |
    r8 la16(\< sol do4--)\!
    r8 sib16( sib mib2->--)\! r8 re( |
    \t {re re mi} \t { si sol\> sol } \t { sib sol sold} |
    mi4--)\! r2  r4  r8 sib'--\mp \t {r lab(\p si} | sol-- mi) r2 |
    la8--( sol-- fa-- mi--) r4 |
    fa16 \( ( \> mi) fa8-. la4-- mi\) \pp | R2.*8
  }
}
