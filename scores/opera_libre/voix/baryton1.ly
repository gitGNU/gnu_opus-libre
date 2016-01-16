%------------------------------------------------------------------%
% Opéra Libre -- baryton1.ly                                       %
%                                                                  %
% (c) Valentin Villenave, 2008, 2009                               %
%------------------------------------------------------------------%

\include "italiano.ly"

BarytonUn= {
  #(make-char-name 'baritone-one 27.5)
  \clef bass
}

ActeUnSceneUnBarytonUn = { \BarytonUn
  \relative {
    \repeat unfold 6 { R2*2 R2. }
    r4 do2. \mp ( \< sib8 \> do~ \ten do2 \! ) |
    r8 do \p \< ~do16 -> \sfz r r8 do4 \p \< ~ do8 -> \sfz r | sib4-> \f ( \> do2 \p ) \> |
    r4 \! do \< do16 \sfz ->-. r sib8 -- ( ~sib8. do32 sib |do4 \> ) do16 ( sib ) sib ( do )~do4~|
    do8 \! r r4 r8 \t { \ind #"dolente" la16 \mf \< ( do sib} mib4 \! ~|
    mib8 ) reb32 -> ( \> sib16. ) \! r16 r32 do -> ( \> sol8 ) \!~sol4~| \ten sol2 fa8 -- ( sol~sol4~|
    sol8 ) r \ind #"dolce" fa4. -- ( sol8~|sol4 ) r \t {do8 \pp ( re! do} \t {re do re}|
    do2. \< \startTrillSpan  |
    do8-> ) \sfz \stopTrillSpan r r4 \ttt {lab16 ( \< sib reb mib \f \> sol, fa}|
    do8 -- ) \! r r4 \ttt {fa16 ( \< sol sib do \! \> fa, re!}|
    do8 -- ) \! r r \t {\ind #"secco" do16 \mp -> do do} \t {mib -> mib mib} \t {reb -> reb reb}|
    fad16[ \fp ->-- r fad-. \p fad-. ] sol( fad-.) fad-. la( fad-.) \< fad-. do-- fad-. |
    do'-- do-. re( do-.) do-. mib( do-.) do-. \! fa!-> do-. fad,-. do'-. |
    fa!8->-- fa16-> do-. fad,-. do'-. fa8->-- fa16-> \< do-. fad,-. do'-. \! |
    r4 fad,2 ( \ff \> \glissando | sol'1 \p \< ~sol2~sol8~ sol-> \sfz )|
    R1 \ind #"semplice" si,4( \p la sol | fad) sol8( \> fad sol la | sib2~ sib8 \! ) r r4 |
    la( \> sol) \! fa!( \> | mi) \! fa8( \> mi) fa( sol) |

    % Entrée du Baryton 2 et de la Soprano 1

    lab2 \pp \glissando ( re,4 ) r | R1*5 |
    r4 fa( \pp \glissando do2.) r4 | R1*2 |
    r4 fad( \glissando do2.) r4 | R1*3 |
    r4 \ind #"poco più" fad( \glissando dod2.) r4| R1*2 R1.*3 |
    r4 sol'?2 \mp ( re4) | r4 sol \mf ( fa8-- sol~sol4 ) r2 | \ten sol1-- \f r2 | R1.*2 |

    %%% Duo Soprano1/Baryton1 %%%

    R1 R2. |
    r4 r8 mi-- \mf r8 sol4-- r8 | R1 |
    r4 do,-- r8 do16 do \t { dod8 ( dod dod } | mi8 ) r r4 r2 |
    la8( sol16-.) r fa8( mi16-.) r fad( mi fad sold sib4--) | R2.
    r4 sib16-. sib8-. sib16-. sib-. sib-. r mi,32( mi sol8-- mi16) r | R2. |
    r4 \t { mi8( \mf \> sol fa} sib4) \! r | R2. |
    r2 \t { lad4( \< dod si } |

    mi2) \f r4 | R1*5 | R2.*3 |
    R1*6 |
    R1*2 R2. r2 r8 do,( \mp | \t {sib'4-- do,8~} do ) r r2 |
    do8 ( sib'4 -- do,8 ) r16 do ( \< do do | mi4. \! ) r8 r16 mi8 -- \( mi16 \< mi mib mib sol \! ~ |
    sol r16 sol8-- \mf sol-- sol-- \t {fad( \> fad fad } sib4. \! ) \) r8 r2 |
    R2. R1 R2. R1 R2. R1 R2. R1 R2. R2 |
    R2. R1 | r8 mib,16.-- \mp mib32-. sol8 -.-- r r mib16.-- mib32-. sol8 -.-- r | R2 |
    r4 r8 si16.-. \mf si32-. |
    re2-- ( si8) r si8.-. si16-. | re2-- ( si8) r r4 |
    si8-. r si-. r sib-. r sib-. r | re2-- ( si!8 ) r r4 |
    r2 r4 re8. re16 | dod2-- ( re8 ) r re8. re16 | dod2-- ( re8 ) r r4 |
    do!8-. r do-. r si-. r si-. r | dod2-- ( si8 ) r r4 |
    r2 r4 do!8.\mp do16 | reb2->--( do8 ) r do8. do16 | reb2 ->--( do8 ) r r4 |
    r2 r4 re!8. re16 | reb2->--( do8 ) r do8. do16 | reb2 ->--( do8 ) r do8. do16 |
    reb2->--( do8) r r4 | sol8-> \sfz r sol-.[ r16 sol-.] sib8-. r do8. do16 |
    reb2( do8) r r4 | R1*5 |
    R1*11 R1. R1*2 |
    R1 R2. R2*5 R1*4 |
  }
}

ActeUnSceneUnBisBarytonUn = { \BarytonUn
  \relative {
    R2.*7 | R1 | R2. | R1 R2.*10 R1*2 R2
    R2*2 do,8--( \mp do-- do4--)
    \t {r8 do( do } \t {do do do} mib-- do) |
    r4 do8( \< do | sol'4. sol | sol8-- \> fa~ \t {fa fa fa } |
    lab4 \! ) r r8 fa( | mi mi mi sold-- \t { mi\< mi mi} | si'4) \! r r2 |
    R1 R2. R2 R1 r4 r8 mi,( \p mi mi | mi mi sol4--) r8 la( | la4 r8 la~|
    \t {la4 do sib} | la--) r2 | R2*3 R2. R1 |
    r8 lab-- r16 \parlato {lab do, si' re8} r |
    R2*3 R2.*3 |

    %%% Duo %%%

    R1 r2 r8 do,( ~ \t {do\mpsostenuto do do} | do2) r |
    \t { r8 do( do} do4 r8 do4-- do8 |
    mi do sold'4) r2 |
    r4 \t {lad8( \< lad lad} dod4. \mf si8~ | si si4 si8 si-- lad4.~|lad2) r4 r8 lad( |
    lad lad sol2~ \t {sol8\> lad sol} lad2\!) r |
    R1*7 r2 r4 mi8( \mp mi-- ~ | mi2) r2 |
    r8 mi( \< mi mi sol4.\! r16 sol | \t {fa4\> sol fa} mi2 \!) |
    r8 \ind #"dolcissimo" mi \( \pp mi si'~ si4 r8 si |
    \t {si si si} \ind #"senza cresc." re--( fa,?)~ \t {fa si si} re4-- |
    si8 si re--( fa,) \> \t {si si si} re4--~ | re8 \! \) r r mi,--( \mp mi-- mi--) r mi( |
    sol16-- mi mi mi mi4) r8 si'4.-- (~ | si8 sib-- lab-- si-- sol4) r | R1
    r8 r16 mi32 \( mi mi16-- mi fa fa sol8--( mi) \) r4 | R1
    r8 r16 mi32 ( mi mi16-- mi fa fa sol4.-- sol8) | R1*2
    R2*4 |
  }
}

ActeUnSceneTroisBarytonUn = { \BarytonUn
  \relative {
    R2.*11
    r4 r8 fa,16( \pp fa fa8-- mi16 mi | lab4-- lab8 \< lab sol sol |
    si4--) \mp r8 si-- \p sol16( si8.) | \t {si8( sold si)} r4 sib-- \mf \< |
    re8--( si4) sib8-. re-- fa,16( si | mi2->--) \f r4 |
    R2.*7 R1.
    r4 re \pp re--( \> dod) \! r2 | r4 reb reb--( \> do) \! r2 |
    r4 re re--( \> dod) \! r2 | r4 reb reb--( \> do) \! r2 |
    r4 dob dob--( \> sib) \! r2 |
    r4 sib8 sib sib4--( \> la) \! r |
    r8 lab \mp \t { lab--( sol sib } fad4) r2 |
    r8 solb \t {solb--( fa lab} mi4) r2 |
    re4--( \p dod) r8 dod \t {dod4--( \> si-- re-- } |
    sib4--)\! r2 la8( la sol \< sib |
    \t { fad' \mp \< fad fad } \t { fad mi sol } red'4) \mf r16 do( do do |
    mib8--) sol,--(~ \< \t {sol fa lab} mi'4--) \f r |
    mi8-- reb16-. lab-. fa8-- r mi'16-- mi-. reb-. lab-. fa8-- lab16(\parlato si)|
    r2 r4 \t { fa8( \mf \< reb mi } |
    \t { do'--\! do-- do--)}do16-.( do-. do-. do-.)\t{do( sib sib}\parlato reb8)|
    R2. sol,16-.( la-. mi-. fad-. dod4--) r | R2*2 R2.*3

    \t { red8(\p red red}red4) red8( red) |\t{red( red red } fad4--) \< la-- \!|
    sol8--( sol-- do4--) r | R2. r2 r8 re \mf | \t {re--( do mib} si4) r |
    R2.*5
    r1 r4 r8 do,\mp (| do4-- do8 do sol'4--\< sol8 sol sib--\! sib \t{r lab\> si}|
    sol2) \! r mi8( \mf \> mi mi mi |
    mib4 mib) \! lab8( \mp \> lab sol sol \ten si2 ) \pp ~ | si4 r r1 |
    R1. R1*5/4 R1 R2. R2 |
  }
}

ActeUnSceneTroisTerBarytonUn = { \BarytonUn
  \relative {

    R2*3 R2. R2*2 R2.*3
    r8 re16( \mf si~ si8.) sib16-.( \> sol-. sol-. fad-. sib-. |
    mib,4-.) \! r2 | R2.*2
    r8 mib16( mib sol8) fad16( fad si8.) si16-. \< lad16( re8) re16-. |
    si16( re8.) \! r4 r2 |
    R1*4 R2.

    R2.*2 dod2--\pp r4 | R2. r2 do!4--~| do8 r r2 | R2.
    r4 si--\mp r8 si( | \t {si-- si si} si sib) r4 | r \ind #"poco più" re-- r |
    fa2--( \mf r8 dod-.)| r4 \t {re( \< re re} | fa2--\!) r4 | r2 dod8 \( \< dod|
    fad4.( \f fa) | re2\) r4 | R2.*3 |
    r2 r8 re,( \p | re4--) r r8 mi(\> | dod2.) \! | r2 re4-- |
    re8( \< sold)~ \t {sold sold sold} sold16( re re sold |
    la2.--) \! | r4 la4.--(\mp \< re,8) | sib'4--( \>~ \t {sib sib sib} |
    la2) \! r4 | r la8( \< la sib4--) |
    sib8-- \mf sib-- \t{sib-- sib( sib} \t{sib \> la sib}|
    dod2) \! r4 | R2.*3 | r2 re4~|re r2 |
    R2.*3 R1 |
    R2.*8 |
    lad2--\mp r4 | R2. r4 la!2-- \p | R2.
    r2 sold4--\< | r fa--( r8 sold--~ | sold4) \! r2 |
    r4 \t {re--( \mf dod-- mi--~} mi8) sol4.-- \ten la4--~ |
    la4~ la8 r r16 reb(\< sib mib |
    \ten solb2.\f ~| solb4 solb) r | R2.*8 |

    do,2--\p r4 | r2 sol4-- | r r8 do-. \t { sol-.( sol-. la-. } |
    mi4--) r2 | R2. r2 fad4-- | \t { dod4-- dod--( mib--)} sib8--( sib) | R2.*2 |

  }
}

ActeUnSceneQuatreBarytonUn = { \BarytonUn
  \relative {
    \partial 4 r4 | R2*5/4 R2*3 R2*5/4 R2*2 R2. R2*3 |
  R1 R2. R1*2 R1. R1*2 R1. R1*2 |
  R2.*4 r4 r8 sib4. ( \mp si!4-- si8 sib lab si |
  sol4-- sol8 sol fa lab | mi4--) r8 mi4.-- |
  mi8 (\mf re'4-- fa,8\> dod'4-- )\! | R2.*4
  r16 fad,-.( \f fad-. fad-. si8.--) la16-.( la-. la-. re8--) |
  r re-.( \p sib-. si-. sol-. sold-. | mi4--) r8 dod4( fa8) |
  \t { mi( la sol } do4--) r | r8 mib( sib-.) do-.( \< la-. do-. |
  mib--) do16( \f si! fa'4--) r | dod-- \mp r2 | R2.
  r8 dod ( re la dod4-- | sib8) re16( sib mib4) r |
  r r8 la,4.-- \p | R2. la4( mi2) | r4 la2( \< \ten mi'2 \f )~ mi8 r r4 |
  R2. R1 R2. R2 R2. R2 R2. R2 R2.

  R1*5 R2 R2. R1*8 si2-- \mf r4 fa( \< | \ten mi'1) \f ~ mi2 r4 |
  r4 \ind #"meno"  \ten si2.--~ si2 r4 | R1*2
  si2.-- \mp si4( sib sib \t { sib-- lab-- si-- } | fa--) r \ind #"giocando" la!-.( \p sol-. |
  fa-. mi-. fa8-. mi-. fa-. sol-. la4-. mi-.) r2 R2*3
  R2.*2 r8 r16 si'-> si(\fsubito fad re fa sib8--) reb->-- |
  r4 r8 reb,-. \mp \t {reb( do do) } | mi( dod) r4 r8 dod16 \mf dod |
  fad4-- r8  mi \f ~ mi16 mi mi8 | \ten la2-- r2 | R1*3 R2. R1 R2. R1 R2. R1 R2. R1*2  R2.*3 R1*2

  R2. R4. R2. R4. R2 R4. R2*3 R4. R2*2
  lab8( \f re4 \> re8 | mi si4 \! ~ | si8) r r4 |R2 r4 r8 sold-. \mp | sold-.( dod-. si-.) | re2--(\> fa,4)\! |
  R1 re8.( \p dod16~ dod8 mi~ mi) re-. sol-. fa-. | sib4-- r r sol8-.( \f fa-. | sib4->--) r r sol8-.( fa-. |
  sib4->--) re,8.--( dod16--~ dod8 mi--~ mi4) | r4 sib'8.--( la16--~ la8 do--~ do4) |
  r mib-- do-- r | r mib-- do-- r | r do-- \> r sold-- | r2 mi4-- \p r | R1*2 R2 R2.*2 R2 R1

  R2.*21 R1. R1 R1. R1 R1. r4 la-- \mf r8 sib-.( lab-. si-. | sol4--) r r1 |
  r8 \ind #"semplice" la( \mp la la fa fa la\> lab | do2 \! ) r8 la( \p sib la do dod \> si la |
  re2.\pp ) r4  | r4 la8-.( \mp la-. fa4--) r dod8-.( mi-. re-. sol-.)  | la4--(  re,)  r1  |
  r8 sold-.( fad-. fad-. la4--) do8-.( sol-. fa-. re-. mi-. si'-. | la4--)  r    r1  |
  R1. r4 mib'-- \mp r8 sib( lab si) | \t{sol( fa lab} mi4--)  r
  mi8-.( mi-. mib-. mib-. reb-. mi-. | do2--) r4 do8( \p do | do do \t{do-- do do}
  \t{do do do} sol'4--) la16( la sol la sib4--)| R1 R1.
  r4 la-- \mp \t{r8 sol( sol} \t {do sib do} reb4--) lab8-.\( solb-. |
  la( do-.) sib-. mib-. fa,4-- \) r r2 | R1.*2
  r2 r8 la-. \p \t{la( la la) } |do-.( mib,-. mib-. fa-. la2--) r4 r8 mib-.\pp | la,4-- r r2 |
  }
}

EntracteBarytonUn = {
  \relative { \BarytonUn
    R2*9 R1*7
    r4 r8 re,16\f re mib4-- r16 re re re | fa4-- r8 lab-. lab-. lab-. sib8.-> si16 |
    fa4.--(\< dod'8\!) r2 |
    dod4--\f dod-- dod8-. dod4-- dod8-. |
    dod4-- r16 dod( si sold \t { fad8-.) fad-. fad-.} \t { si-.( sold-. si-. } |
    dod4--) r \t { dod( re dod } | re4.-- si8~--) si dod-. fad,-. si-. |
    sold4-- r16 lab\mf lab lab sol4-- r16 lab lab lab |
    fa4-- r8 re-. fa-. re-. sol8.-- fa16 |
    sol8( lab-.) r re,16\mf re mib4-- r16 re re re |
    fa4-- r8 lab-. lab-. lab-. sib8.-> si16 | fa8-. dod'-. r4 r2 | R1*2
    r4 r8 re,16\f re re'4-- r16 dod dod re | si4-- r8 re-. la-. si-. fad8.-> si16 |
    la8-. re r4 r2 | R1*4
    r4 r8 la16\mf la sol4-- r16 la la la | sib4-- r8 reb-. la-. reb-. do8.-> sib16 |
    la8-. sib-. r4 r2 | R1*6
    r4 r8 re,16\f re re4-- r16 re re re | re4-- r8 re\< re8.-> re16 |
    sol2~--->\! sol8 la-. lab4-- |

    %%% Fugato %%%
    re,4---> r r mi8.\p mi16 sol2--( mi8) r mi8. mi16 |
    sol2--( mi8) r16 mi mi8.-- mi16 red4-. red-. |
    sol2--( | mi8) r mi8. mi16 sol2--( | mi8) r mi8. mi16 sol4~--( |
    sol mi8) r16 mi mi8.-. mi16 | red4-. red-. sol2--( |
    mi8) r sol8. sol16 mi2--( | sol8) r sol8. sol16 mi4~--( |
    mi sol8) r16 sol sol8.-. sol16 | lab4-. lab-. mi2--( |
    sol8) r sol8. sol16 mi2--( | sol8) r sol8.-. sol16 mi4~--( |
    mi sol8) r16 sol sol8.-. sol16 | si4-. si-. sol2--( |
    mi8) r sol8.\mp sol16 mi2--( sol8) r sol8. sol16 mi4~--( |
    mi red8) r16 sol sol8.-. sol16 |
    red4-. red-. sol2--( la8) r mi8.\mf mi16 sol2--( |
    sib8) r sol8. sol16 mi4~--( | mi sol8) r16 sol lab8.-- lab16 |
    sold4---.\< sold---. la2--->\!( |
    re,4) r8 re16\f re re4-- r16 re re re |
    re4-- r8 re-. re-. re-. re8.-- re16 |

    %%% Stretto %%%
    re8-> re-> r4 r2 | R1 r2 r4 r8 mi-.\mf |
    sold4-- \t {sol8(\< mi sol} si4--\! sol8) dod,-. |
    si'--\<( si sol sib re4--\! mi,) | R1*2
    r2 r8 la16-.\p la-. sold8-. sib16-. sib-. |
    la4-- r8 la16-. la-. sold4-- r16 sib-. sib-. sib-. |
    la4-- r8 sold-. sold-. sold-. la4-.\> r la-. r \parlato la-.\! |

    %%% Noir %%%
    R2.-\fermataMarkup
    R2.*4 R2 R2. R1 R2. R2 R1*3
    mib4(\mp do8) r r2 | R1
    mib4(\> do8) r mib4( do8) r mib4-- mi-- |
    mib\pp( do8) r mib4( do8) r mib4-- mi-- |
    mib( do8) r mib4( do8) r mib4-- mi-- |
    mib( do8) r mib4( do8) r mib4-- mi-- |
    mib(\> do8) r mib4( do8)\! r | R2.-\fermataMarkup

    %%% A tempo %%%
    R2.*3 do'2.\p( si la~ la4\> sol2)~ sol\! r4 R2.-\fermataMarkup

    %%% Poco più %%%
    mib4\pp( do8) r r4 | mib( do8) r r4 |
    mib( do8) r mib4--\> mi--\! r2 | R2.-\fermataMarkup

    %%% Andantino %%%
    do'1--\p do4( la8) r | si1-- si2-- si( do)~ do do2.-- r4 R2.

    %%% Largo non troppo %%%
    la2--\mf la-- la4( mi'8) r |
    la,2-- la-- la4( mi'8) r |
    la,2-- la-- la4( do8) r |
    la2-- sol4( mi8) r sol4-- lab-- |
    sol4( mi8) r sol4( mi8) r sol4-- lab-- |
    sol4( mi8) r sol2-- lab( |
    sol2) do-- si( la) la-- la-- |
    la-- la,-- la'-- si,-- sol'4( mi8) r sol4-- lab-- |
    sol2-- sol4( mi8) r sol4( mi8) r |
    sol2( la sib) | sib4( sol8) r sib4( sol8) r la2-- |
    sol2-- sol-- si,-- do-- do-- do-- |
    fa4(\mf \< mi fa sold la si |
    la2)\fp fa-- fa4( la8) r | mi1--\fmolto~ mi4 r mi2.-- r4 R1 R2. R2
  }
}

ActeDeuxSceneUnBisBarytonUn = { \BarytonUn
  \relative {
    R1 R2. R2 R1*5/4*17
    r4 r8 sol(\f sol lab sib sol lab sib | reb2.--) r2 |
    R1*5/4*6 | r2 r8 re,4.--\mp r4 | r mib( mib2) r4 |
    r2 mib4--( reb-- mi-- | do2--) r r4 |
    R1*5/4*2 | r2 lab'4-.(\mf lab-- sol8-. sol-. |
    sib4--) r sib8( sib sol4) sol8( sol |
    si!4-- fad8 fad fad4) r2|
    r si4-. re--( si8 si | fad4) r2 re'4--\f si8-. re-. |
    \ten fa1*5/4->--~ fa2 re4-- si-- re-- |
    \ten sold,1\f r4 | r2 mi'2--(\f mi4 | mi2 mi4 mi) r |
    r1 re4-.(\mp | fa8-. do-. sol-. la-. mi4--) r2 |
    R1*5/4*34
    R1*7/4*7 R2. R1 R2. R2 R2.*9

    r1 r2 si8(\p si | red1) r2 r4 |
    r re8( re fad2) r4 r8 fad( \> fa fa | la2)\pp r4 | R2.*6
    r1 r16 re-.(\mp re-. re-. sib4--) r16 re-.(\> re-. re-. |
    sib-. si-. sol-. sold-. mi2--)\! r1 |
    R1*7/4*7 R1.*5

    r2 re8-.(\p mib-. | mi-. fa-. lab4--) do,8-.\( fad-. |
    fa( mib) re4--\) do8-.\( fad-. |
    fa( mib) re4--\) do8-.\( fad-. |
    fa( mib) re4--\) do8-.\( fad-. | fa(\< lab) mi'4--\)\! do,8-.\( fad-. |
    fa( mib) re4--\) do8-. r |
    R2*2 R2.*2
    r4 do8-.\(\mf fad-. mi( sol) |
    red'4->--\) dod,8-.\( sol'-. mi( sold) |
    red'4->--\) r |
    R4. r4 r8 sib-.(\mf \< | solb-. la-. fa-. sib-. | dod4--)\f r |
    R4. r8 solb-.(\mf sib-. solb-. la-. fa-. re4--) r |
    R4. r8 solb-.( sib-. fa-. la-. fad-. re4--)
    r r8 | re'8->\ff re4-> re8-> re4-> re8->|
    re4.-> r8 re(\f re | \t{re4 re mi} si-- |
    lab8-.\< sib-. fa-. sol-. re-. sol-. | do4->--)\!
    r8 mib4.--\mf | r4 r8 do( mi,! lab |
    mib'!4) r8 mi,!4--( sib'8 | mib!4 sol,8 do mib,!4) |
    r sol4.( si!8 | mib4 lab, do | mi,!2) r4 |
    r si8-.(\mp \< mib-. re-. fad-. |
    sib4.--\mf re,8-. mib-. re-. |
    fad4-- fa8-.\< fa-. \t {si-- mib, sol} | mi'!2.->--)\f |
    r4 r8 fa--\pp r4 | r8 re-- r4 | fa8--( re-- mi-- | si4--) r |
    la4(\mf \< sib la8 | \ten sib2.) \f ~ sib2. r4 |
    R1*5/4*6
    r4 do,8-.(\mp do-. si'!4--) r mib8-.( mib-. |
    lab,4--) r r8 mi( lab lab sol sol |
    si4-- lab) r2 r4 | R1*5/4*6
    r2 r8 lab(\mp \< sol sol fa lab | mi'2.)\mf r2 |
    R1*5/4*8
  }
}

ActeDeuxSceneDeuxBarytonUn = { \BarytonUn
  \relative {
    R1.*5 r2 r4 fa,(\p dod'2)~ | dod4 r r dod-- |
    r8 dod( dod dod do do si\> si | fa'2)\! r4  | R2.*4
    R1.*2 r2 r4 fa,(\p dod'2)~ | dod4 r r dod-- |
    r8 dod( dod dod re re dod\> dod | fad2)\! r4| R1 R4. R1*6 R2.
    r1 r4 la,8(\mp la do2) r8 la(\< la la \ind #"poco" re2.--)\! r4 |
    r4 r8 \ind #"cantabile assai" do,(\mf la' re| do sib sol la re,4-- |
    do) r8 do(  la' re | do si  sold4           |
    r8 si sold4--\< la8 do | mi2.--\> | do2)\! r4 |
    R2 R4. R1*5 R2*6 R1 R2. R1. R1
    r1 r8 la(\< la la | re2.\mf r4 \t{re mi do} |
    la2) r4 | r2 r8 r16 lab-.(\mp \> sib-. fa-. do-. re-. | la4--)\! r2
    \repeat unfold 10 {R1 R2. }
    R2*3 R2. R1*3 R1*5/8*14 R1*2

    %% Infirmerie %%

    r2 r4 r8 mi'16\mp mi | mi8( dod) r4 r \t {mi8( mi mi} |
    sold8.--) sol16( si4--) r8 sol-- sol-- sold-- |
    mi-- fa-- \t {dod( sol'! mi} sib'4.--) r8 |
    R1*3 R2. R2
    r4 r8 r16 re,(\mf re re re re mib4--) |
    r8 re4--( re8 fa-- mib16 mib \t {lab8-- mib-- fa--}|
    re2--) r4 | R2.
    r4 r8 re--\p r4 | r8 re(\mp \t {re-- mib4)} r8 re( |
    fa4--) r8 fa4--( mib8 | lab4--) r r8 lab--( |
    lab-- lab-- si4-- r8 lab-. |
    re,4--) r R2 R2.*2 R2*5
    r16 re-.\mp re16.( re32 sold4) |
    r16 sib-.(\f sib-. sib-. re8->-- re16.-- re32 re4--) r8 sib-. |
    re16->( sib8 sib16) si-.( sol-. \t { sold-. mi-. fa-. } dod4-.->) r |
    R2*6
    r32 sib'(\f sib16) \t { re,( re re } \t { mib-- mib re } fa8--) |
    r16 mi-. mi-. sol->--~sol8 fa16.--\< fa32-. | sib4->--\! r | R2
    r8 re16.->\ff sib32 re16.-> sib32( si-. si-. sib-. sib-. |
    re8->) r r4 | R2
    r8 red,16(\p red mi8) dodd16( dodd red8) r r4

    %%% Choeur %%%

    r2 sold16-.(\pp sold-. la8-.) |
    r2 sold16-.( sold-. la8-.) |
    r2 sold16-.( sold-. la8-.) |
    r2 si,16-.(  si-.   do8-.) |
    r4 si'16-.(\mp si-. do8-.) r4 |
    r  si16-.(  si-. do8-.) r4 |
    do8--( do-- si4--) r |
    R2.*9
  }
}

ActeDeuxSceneTroisBarytonUn = { \BarytonUn
  \relative {
    R4.*15 r4 r16 do,\mp | mi8--( dod) r16 mi |
    sold8--( sol) r16 do, |
    mi8.-- dod16( fa mi | sold4--) r16 sol |
    \times 3/4 {sold8--( sol-- fa-- mi--)} sol-- r r16 sol |
    \times 3/4 {sold8--( sol-- fa-- mi--)} sol4-- r8 |
    r4 r16 mi | sold8--( fa) r16 sol | si8--( sold) r16 la |
    \times 3/4 {sold8--( la--  si-- do--)} la8.-- la16 la8 |
    \times 3/4 {sold8--( la--  si-- do--)} la4-- r8 | R4.*20

    R4*7 r8 si--\mf r16 si--( r do--) |
    r si-.( si-. dod-. sold4--) |
    r8 fa-- la-- mi-- \t {sold--( dod, fa} | do4--) R4*9
    r8 re\mf mib16.--( re32 re16 lab'->) |
    sol32( sol si16) r sib-.( |
    re-.[ la-.] dod-.[ lab-.)] \t {sib([ fa sol]} |
    re4--) R4*6 R4.*14 R4*13
    re16( mi8.) | r16 re-.( re-. re-. | sold4--) | R4*5
    r8 mib-- | \t {re( fad sold)} | R4*2 |
    r16 si(\mf si dod) lab8-- sib-- | fa16( fa fa sol) |
    R2.-\fermataMarkup do,8-. re-. r2 | R2.*5
    R2*9 R2. R2*6 R1*5/8 R2*16 R1*5/8 R2
    r8 sib'-.\mp do-. mi-. r r4 |
    r8 sib-.     do-. mi-. r r4 |
    r8 lab,->\mf do-> re-> r do16\< lab
    \ten sol2\! r4\fermata | R2.*2
    r4 r8 do,(\mf fad4) \t { r sold8( } sold16 sold mi\< mi do'4)\! |
    R2.*2 R2*2 r2 r8 r16 mi,\mp |

    %%% Solo Baryton1 %%%

    mi8--( mi-- mi4--) | fa8( mi) \t {mib(\> mib fad } |
    re'4)\! r r8 r16 si-.( | re8.-- sib16 si-. si-. sol-. sold-. |
    mi8--) fa16( dod) \t {re8(\> sib dod}|
    la'4)\! r2 | r8 r16 do, mi8--( dod) |
    r8 r16 do mi(\< dod fa mi) sold8--(\! fa) r si-.(\mf sold-. si-. |
    sol4--) fa8(\> lab) mi( mi) \t { fa-.( reb-. mib-. } do4--)\p r2 |
    do16(\mp re fa8) r si,16( mi sol4--) r8 |
    r16 re( mib sol la) re,(\< sol la |
    dod4--)\mf r16 re( | re,) sol( la re, re'4) |
    r8 re,(\mf \< sol-- mi si'4--)\! r8 re,(\< la'-- sold
    dod4--)\! r8 mi,\( ( \f \< |
    la) si( mi,) mi' mi4--\) \! r8 la,(\< ~la4
    \ten sol'1)\ff ~ sol4 r2 | R2*5
    r4 r8 re,16-.\mf re-. mib4-- r16 mib-. re-. re-.
    fa4-- r8 fa-. lab( si) r2 | R2.*6 R2 R2.

    re2--\f r8 sib--\p ~ sib4 r | r si-- r r8 sol8-- ~ sol4 |
    sold-- r8 mi16( mi | fa4) r dod-- |
    r8 mi-.\mf re16( mi sold la) | sold8--( mi) r2 |
    \parlato dod4 r8 mi-.\mf |
    mi8.--(\< mi16 sold4--) sol8--( sol |
    si4--)\! r r8 sib8-- ~ sib4 r |

    %%% Climax %%%

    re4->(\f re8.-> re16 re4-> re8 re4->--) r | R2
    re4->(   re8.-> re16 re4-> re8 re4->--) r | R2
    re4->(   re8.-> re16 re4.-> re8
    fa4->) si,8-. la4--( do8) lab4(\< sol) fa-- |
    \ten re1->--\! re2 r4 |
    R1 R2. R1 R2. R1 R2. R1 R2.
    la'2--\mp r | R2.
    R1 R2. R1
    la2-- r4 | R1 R2.
    mi8(\p mi sold2) r4 | sol8( sol si4) r |
    r8 sold-.(\mp mi-. la-. re,-. sold-. mi-. sold-. |
    la4--) r2 | r8 si-.( la-. do-. sold-. fa-. mi-. mib-. |
    re4--) r2 | R1 R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 R2. R1 R2.
    la'2-- r | R2. R1 R2. R1 R2. R1 R2.
    mi8(\p mi sold2) r4 | sol8( sol si4) r |
    r8 dod,(\mp dod dod \t { fa fa mi } lab lab |
    sol sol si4-- lab8) r | r4 r8 sol( lab lab sol sol
    fa16 mi sol lab sol4 lab8) sol( |
    si4 si8) si( si si sib sib | re4-- si8) r r4 |
    R1 R2. R1 R2. R1*3 do2-- r R1 re2-- r R2*3 |

    %%% Entrée du Baryton 2 %%%

    R2.*2 r4 dod,8-.(\mp mi-. re-. sol-. la4--) r2 |
    re4.->(\f re4-> re8 | re4.-> re8 re8.-> re16 |
    re4->--) r2 | R2. r2 r8 re,-.(\mp |
    re-. re-. lab'-. fa-. sib8.-- lab16 si4--) r2 | R4. R2.
    r8 lab-.\mp sib8.-- sol16-. si4-- | r2 r8 si-. |
    dod,4-- r8 re-.( la'-. sold-. | do4--) mi,-- r R2.
    r8 re-.\< sib'4-> fad-> |
    re'4->\f re8->( re-> re4-> | r8 re-> r4 re8.-> re16 |
    re4->) r2 | R2.*16
    R2*2 r8 fa,-.(\f mib-. fad-. | re'4--) r | R2*7

    r8 si,-.\mp do( do) \t { sol'( sol sol } sol sol
    \t { sol-- fa sol } | lab4) r |
    lab8(\> sol ~  \t { sol mi lab } | sol4)\! r |
    \t { sol8(\> lab sol } \t { fa mi lab } |
    sol4)\! \t { r8 sol(\> lab } |
    fa mi ~ \t { mi mi mi } | si'4)\pp r2 | R2.*3
    r4 mi,8-.(\mp mi-. sold4-- sol8-. sol-. |
    si4--) sold8-.( sold-. do4-- si8-- si-. red4--) r r2 | R1*3
    r4 fad,8-.( fad-. sol4-- fad8-. fad-.|
    lad4--) fad8-.( fad-. re4--  fa8-. fa-. la4--) r r2 | R1*3
    r4 fa8-.( fa-. mib4-- fad8-. fad-. |
    re4--) fa8-.( fa-. mib4-- fad8-. fad-. |
    re4--) r r mi8-.( mi-. | re4--) r r2 R1
    r4 la'8-.( la-. sold4-- la8-. la-. |
    sib4--) la8-.( la-. sold4-- lad8-. lad-. |
    si4--) r8 sib--(\f sib-- sib-- si4--) |
    r si8.--(\< si16 re2->--)\! |
    r4 la8-.\mf la-. sold4-- sold8-. sold-. |
    la4--\< la8-. la-. sold4-- sib8-. sib-. |
    la4-- si8-. si-. do4--\! sib8-. sib-. | R2.
    \ten do2.\ff~do~do~do~do\>~do2~do~do4\! r |

    R2.*2 r8 mi,16(\p mi mi8-- do) \t {r do( do} |
    dod-- dod-- do-- do) do16\( ( si) do-. re-. |
    mi2-- \) r4 R2.*10
    r4 do2--\p | r16 do( do do \t {sol' sol mi} si'8 sol16 si do,8--) |
    r4 r8 \t {r16 mi( mi} \t {la sol sol} do do |
    sib-. sib-. mi,8--) r2 |
    R2.*2 r4 r8 mi( mi-- mi | \t {do do do} mi4) \t { mi8( mib mib } |
    sol4) r2 R2.*3
    r4 r8 mi(\p mi16 mi fa fa | sol8-- mi) r2 | R2.
    la8--( sol-- mi-- fa--) r4 |
    mi8-.\( \> fa16( sol) la4-- mi\) \pp | R2.*8
  }
}