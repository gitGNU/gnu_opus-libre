%------------------------------------------------------------------%
% Opéra Libre -- soprano1.ly                                       %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

SopranoUn= {
  \set Staff . instrumentName = \markup { \hcenter-in #27.5 \SopranoUnName }
  \set Staff . shortInstrumentName = \SopranoUnShortName
  \set Staff . midiInstrument = "voice oohs"
}

ActeUnSceneUnSopranoUn= { \SopranoUn
  \relative {
    \repeat unfold 6 { R2*2 R2. }
    \repeat unfold 6 { R1 R2. }
    R2.*7 R1 R2.
    R1 R2.*2 R1 R2.*2 | R1*4
    r4 sib'8 -. ( \mf sib-. sib4-.-- sib8-. sib-. |
    sib4-- r8 reb-. solb,-. lab-. re,!4) | R1. |
    r4 re8-. \( re-. fa-. r fad4--~| fad8 sib ( fa!-.) fa-. fad-. fad-. fa-. fa-.|
    la2--~la4 \) r r2| r4 la-. fad8( fad fa fa| la2-.) sold4( sold|
    \t {la-- sold sold} do ) r | r1 r4 sib8-. sib-.|
    mib4-.-- sib8-. sib-. mi,4-- r8 do'-.(| sol-. la-. mi-. sib'-. mib4) r | R1.*3 R1 R1.|
    dod4--( \f dod-- dod2-- dod4-- dod-- | dod2--) r4 r8 sib-.( \mp re-. lab-. sol-. si-. | mi,2) r1 |
    
    %%% Duo Soprano1/Baryton1 %%%
    
    r8  \parlato { mi mi4 } r r8 sib'16-.( \p sib-. | sib8-.-- sib16-. sib-. sib8-.--) r16 sib-.( sib-. sib-. sib-. sib-. |
    sib8--) r r4 r2 | r8 sib16-.( \mp sib-. do8-.-- sib16-. sib-. do8-.--) r16 sib-.( sib-. sib-. sib-. sib-. |
    do8--)  r r4 r2 | r8 sib16-.( sib-. mib8-.-- sib16-. sib-. mib8-.--) r16 do-.( do-. do-. do-. do-. |
    mib4--) r r r8 sib16-.( sib-. | mib8-.-- sib16-. sib-. mib8-.--) r16 reb-.( reb-. reb-. reb-. reb-. |
    mib4--) r r r8 sib16-.( \mf sib-. | mi!8-.-- sib16-. sib-. mi8-.--) r16 re!( \p re re re re |
    sol2--) r4 r8 sib,16( \mf sib | mi8-- do16 do fad8-- r16 fad \pp fad fad mi mi | la2--) r |
    
    r8 \ind #"triomphal" sol \( \f ~ sol16 sib8.---> sol16( mi8.) \) | r8 re-.( \mp \> re-. re-. re-. re-.) \t {mi( \! dod) mi(} |
    sib4) r r2 | R1 |
    
    fa'8-.( fa4-- fa8-. do-. do-. sol-. do-. |
    fa--) r \t {la, \( ( la la} re-.) la-. re-. sol-. |
    fa4.-- \) r8 r4 | R2.*2 | R1*6 |
    
    R1 r2 r4 r8 \t {sib,16( \mp \< la sib} |
    do-. do-. sib-. sib-. do8-.--)\! r16 sib-. ( \< do-. sib-. mib-. do-. |
    fa4--\! ) r2 | R1 R2. R1 R2. R1 |
    \t {sib,4 \mp \(  \< \ten sol,8~} sol do fa mib |
    %% FIXME: ugly slur
    \tt {sib' fa \> sib do mib} sib--( fa'4--) \! \) \phrasingSlurUp mib,8 \( |
    sib' \mf \< lab, fa' mib \t {sib' fa do'} |
    \t {sib( \> mib do} \ten sol'2) \) \! r8 r16 sib,-.( \mp |
    \phrasingSlurNeutral
    sib-. sib-. fa'-. do-. sib8.-- sib16-. sib-. sib-. fa'-. do-. | 
    sib8.--) sib16-.( mib-. sib-. mib-. fa-. sib,8--) sib( do16 \< sib do mib |
    fa4--) \! \t { r8 sib,( reb} sib--) lab'16-. reb,-. |
    do8.-- reb16-. reb( sib-.) lab'-. reb,-. do4--~ \< \t {do8( reb4} |
    la'!8.\! fa16-. sib,-. reb-. la'4--) reb,8(\< | mib reb mib lab |
    
    sib2 \f ) r8 sib,16 \p ( sib | do4) r fa,16( fa fa8) r \ind #"sotto voce" sol?16.-- sol32-. |
    si4--( sol16) r sol16.-. sol32-. | si4--( sol16) r red'16. ( \f red32  |
    fad8 \> re16. re32 fa8--) dod16\( \mp dod | sold do! mi8--( si16) \) r sol16. \f sol32 | 
    sib2--( sol8) r sol8. sol16 sib2--( sol8) r r4 |
    sol8-. r sol-.[ r16 sol-.] solb8-. r solb-. r | sib2--( sol!8) r r4 | r2 r4 sold8. sold16|
    si!2--( sold8) r sold8. sold16 | si2--( sold8) r r4 |
    sold8-. r sold-.[ r16 sold-.] sol8-. r sol-. r |
    si!2( sol!8) r r4 | r2 r4 sol8. \mf sol16 | si2--->( sol8) r sol8. sol16 |
    si2--->( sol8) r r4 | r2 r4 sol8. sol16 | si2->--( sol8) r sol8. sol16 |
    si2--->( sol8.-.) dod16-.-> sol8. sol16 | si2--->( sol8) r r4 |
    r2 r4 sol8. sol16 | si2( sol8) r dod8.-.\p dod16-. | mi2( dod8 ) [ r16 sol'-.->] r4 |
    R1 dod,8-.--( r dod-.--[ r16 dod] do8-.--) r r4 | reb8-.--( r reb-.--[ r16 reb] do8-.--) r r4 | 
    r4 do8--( \> r do--[ r16 do] si8--) \! r | R1*4 |
    
    r8 do-. ( \mfleggiero do-. do-. do-. r do-. do->--~ |do do-. do-. do-. do-. do-. do-. do-. ) | R1 |
    r4 r8 fa( do-.) fa( do-.) do-. | fa4--( do8-.) si-. mi-.( si-. sib-. sib-. | mib4-- la,8) r r2 | R1 |
    R1. R1*2 |
    
    r8 sib16-.( \mfsempre sib-. mib8---. fa16-. do-. do8---.) r16 sib-.( mib-. sib-. sol-. do-. |
    fa,4--) r2 | r8 do'16( do fa8-- mib16 mib | lab8--) r16 solb( reb mib sib do |
    sol!4--) r | R1*2 R1*4 |
  }
}

ActeUnSceneTroisTerSopranoUn= { \SopranoUn
  \relative {
    R2*3 R2. R2*2 R2.| r2 r8 sib'16-.( \mp sib-. 
    sib8-- sib16-. sib-. sib8-- sib16-. sib-. sib-. sib-. sib-. sib-. |
    sib4--) r2 | R2.
    sib8--( mib16-. sib-. la8-- re16-. lab-.) r8. lab16-.( | 
    lab-. lab-. lab-. reb-. sol,8-- do16-. fad,16--~ fad si-. fad8-.|
    mib8->-.) r r4 r2 | r8 do'16-.( \mf do-. mi8-- dod16-. dod-. mi8.--)
    do16-.( la-. \< do-. sold-. do-. | fa4--) \! r r2 | R1*3
    
    R2.*33 do?8--( \mp dod16-. dod-. do8-- do16-. mi--~ mi8 dod-.) |
    r do( \< dod dod do do | fa2.--\mf | dod4) r2 | R2.*3 |
    R1 R2. r8 sib( \mp sib sib sib sib sib sib la4.-- la8) |
    r sib( sib4 sib8 sib sib4 sib8 sib sib4 la8 \> la dod4.-- dod8 \! ) |
    R2.*2 
    r2 r8 r16 la( \< | dod4--) \! r2 | R2. 
    r2 r8 r16 do!( \< | mi4--) \! r2 | R2.
    r2 r8 mib( \mf | sol2--) r4 |
    fad8-- r r4 r8 r16 re( |
    sold, \< si mi sol  \ten sib2 \f ~ | sib2.~ | sib4 sib) r | R2.*4 |
    \acciaccatura la16 \f re,8-> fa-. \acciaccatura fad16 dod4-> dod8-. 
    \acciaccatura re16 la8-. |
    sold4->-- \t { r8 sold-.( \> la-. } mib-- mib16-. sold-. | 
    re4-- ) \! r2 | R2.*10
  }
}

EntracteSopranoUn = { \SopranoUn
  \relative {
    R2*9 R1*21
    r4 r8 sib'16\mf sib mib4-- r16 sib sib sib |
    mi,4-- r8 sold-. dod-. si-. mi8.-> re16 |
    sol8-. lab-. r4 r8 lab--\mf( sib,-.) sib-. |
    mib4-- la,8-. la-. \t {dod4--( lab-- sol'--)} |
    sol,8.-- sol16 si4.-> sol8-. fa-. lab-. |
    mi4-- r r8 fa( la) lab-. |
    \t {do4\<( do,) si'-.} \t {red( mi,) re'-.} |
    fad4--\! r8 sol,16\mf sol la4-- r16 sol sol sol |
    fad4-- r8 red-. sol-. red-. mi8.-> fa16 |
    sol8-. fad-. r4 r2 | R1*6 r4 r8 re'16\f re re4-- r16 re re re |
    re4-- r8 re\< re8.-> re16 la2~--->\! la8 sol-. sold4-- |
    
    %%% Fugato %%%
    re'4---> r r2 | R1 R2.*2 R2 R1 R2.*2
    r4 sib8.\p sib16 dod2--( sib8) r sib8. sib16 dod2--( |
    sib8) r16 sib sib8.-. sib16 la4-. la dod2--( |
    sib8) r16 sib sib8.-. sib16 dod2--( sib8) r16 sib sib8.-. sib16 dod2--( |
    sib8) r sib4-. sib-. la-. la-. re~--( | re sib8) r si8.\mp si16 re4~--( |
    re si8) r si8. si16 re4~--( | re si8) r sib4-. sib8.-. sib16 re4-. re-. |
    sol2--( re8) r si8.\mf si16 re2--( si8) r si8. si16 re2--( si8) r |
    r4 re-- mib8.-- mib16 | sold4---.\< sold---. la2--->\!( |
    re,4) r8 re16\f re re4-- r16 re re re |
    re4-- r8 re-. re-. re-. re8.-- re16 |
    
    %%% Stretto %%%
    re8-> re-> r4 r2 |
    R1 r2 r8 lad16\mp( si sol4--) | R1*4
    mib'8-.\mp sib4.-- r2 |
    r4 r8 mib,16-.\p mib-. re4-- r16 re-. re-. re-. |
    mib4-- r8 mib-. mib-. mib-. re4-.\> |
    r mib-. r \parlato mib-.\! |
    
    %%% Noir %%%
    R2.-\fermataMarkup R2.*4 R2 R2. R1 R2. R2 R1*5 R1.*3
    lad4(\pp fad8) r lad4( fad8) r dod'( lad) dod4 |
    lad(\> fad8) r lad4( fad8)\! r | R2.-\fermataMarkup
    
    %%% A tempo %%%
    R2. la?2.~ la~ la2 r4 |
    la2.~ la~ la~ la2 r4 |
    R2.-\fermataMarkup
    
    %%% Poco più %%%
    la4( fad8) r r4 |
    la4( fad8) r r4 |
    la4( fad8) r la4-- sib-- r2 | R2.-\fermataMarkup
    
    %%% Andantino %%%
    mi1 mi4 do8 r |
    mi1 mi2 mi1 mi2 re2. r4 R2.
    
    %%% Largo non troppo %%%
    mi2 mi mi4 do8 r |
    mi2 mi mi4 do8 r |
    mi2 mi mi4 la,8 r |
    mi'2 mi r |
    mi mi mi fa fa mi mi mi mi mi fa4 mi fa sol |
    la2. r4 do,2 si do re re do mi |
    mi mi fa mi mi re4 do si la sol2 fa fa mi sol |
    fa1~ fa4 r | do'1 la4 r | mi'1~ mi4 r | mi2. r4 R1 R2. R2
  }
}

ActeDeuxSceneUnSopranoUn= { \SopranoUn
  \relative {
    R2.*4 R2 R2.*2 R2 R2.*3 R2 | 
    R2. R2 R2.*2
    R2 R2.*3 R2 R2. R2 R2.*2 R2| 
    R2.*3 R2 R2.*2 R1 R2. R1
    r4 \t {r sib'(\p sib}| reb2~|
    reb4~ \t {reb4 sib\> sib} | sib2)\! r2|
    R1*2 | r4 re,2(\pp | la'2 mi8 r | R2. | 
    \t { r4 sold fad} si4--~|si2 | 
    r8 la--\< \t{do4--\mf la-- si--}| 
    mi,4--) r2 | R2.*3 R1
    si'8(\mf la4) si8( re4) | \t {si-.( la-. do-.} | 
    sold4--) r2 | \repeat unfold 11 {R1 R2.} |
    r2 \t {fad4--( \mf fad-- la--} | 
    \ten si2.)~ si4 r r2 | R2.
    r4 fad8--( r \t { fad4-- fad-- la-- } 
    \ten si2.)~ si4 r r2 |
    r4 do8( \f fad4) do8( | 
    fad4.) do8( fad sol fad re | do re fad2) | R1
    r8 re( \piuf la'4) re,8( la') | 
    re,( mi sold4) mi8( re sold4) | 
    R2. R1 r2 r8 la,(\f |
    lab do re2.) | r2 r8 la!( | 
    lab do re2.) | r2 r8 la!( |
    lab sib \ten mib2)~ mib4 r2 |
    r2 r8 la,!( \f
    lab do re2) | r2 r8 la!( 
    lab do re4) r8 lab8( | 
    la! do re4.) lab8( |
    sol\< re' \ten sol2)\!~ | sol2.~ sol4 r4 r2 |
    R2. R1 R2. r2 r4 r8 lab,(\mf|
    la! do re2) r2 r4 r8 lab(\mp |
    la! do re2) 
    R1 R2. R1 R2. R1 R2. R2 R1 R2. R1 R2. R1 R2. R1 |
  }
}

ActeDeuxSceneDeuxSopranoUn= { \SopranoUn
  \relative {
    R1.*6 R1*2 R2.*2  |
    r16 sib'-.(\mf sib-. sib-. mib8-- si!16-. si-. mib8.-- do16-. | 
    do-. do-. do-. do-. mib4--) r16 do8--( mib16 | si8) sib16(\> reb
    la4) r16 la-.( sol-. sib-. | fad2--)\mp r1 |
    R1.*2 R1*2 R2. R1 R4.
    re'16(\mf re sol8-- dod,16 dod fad4--) r8 r4|
    r la,16( re sold,8 mi-- re16 mi sold4--) |
    r8 si4--( mi16-. si-. fad-. dod'-. sold8--) r4  |
    R1*3 R2. R1. R1*2 R2.*3 R2 R2.*3 R2 R4.
    
    r8 la16(\mf la re8-- la16 la re8-- sold,-- re'16-. si-. sol-. sib-. |
    mi,4--) r sold16( sold sold8--~ sold16 sold sol sol |
    si8-- sold16) r si( si sib sib32 \< sib sib16 sib re4--)\! r8 |
    R1 mi16(\f mi la8-- re,16 re sold8-- mi32 re16. si8--)
    r sold16.-.\mp sold32-. |
    si4--( sold16) r lad16.-.[ lad32-.] dod4--( lad16) r32 dod 
    dod16.-.[ dod32-.] |
    mi4--(\< dod32) r lad lad lad16.-.[ lad32-.] fad'4--( dod16) r32 mi 
    mi16.-.[ mi32-.] |
    fad4--\! r8 dod(\f | sold lad si\> dod | \ten si'2.)\mp r4 |
    R2. R1. R1 R1.*2 R2. R1
    R2. R1 R2. R1 R2.
    r2 sold,4-.(\p sold-. la2--) r4 | 
    r2 r4 sold8-.( sold-. la4--) r sold8-.( sold-. |
    la4--) r8 la-.( sold-. sold-. la4--) r sold--( sold-- | la2--) r  | 
    re,8(\mf \< mi sold4-- la--) la--(\p la-- la2--) | R2. R1 R2. 
    r2 r4 sold8-.(\pp sold-. la4-.) r sold8-. sold-. \ten la2. r4 R2.|
    R2*3 R2. R1*3 R1*5/8*14 R1*9 R2. R2 R1*2 R2.*7 R2*2 R2.*2 R2*25
    
    %%% Choeur %%%
    
    sold'16-.(\pp sold-. la8-.) r2 |
    mi16-.(    mi-.   fa8-.) r2 |
    re16-.(    re-.  mib8-.) r2 |
    do16-.(    do-.  dod8-.) r2 |
    si16-.(\mp si-. do8-.) r si16-.( si-. do8-.) r |
    red16-.( red-. mi8-.) r red16-.( red16-. mi8-.) r |
    mi16-.(\p mi-. red8-.) r2 | R2.*2
    r2 sol,8-.( \pp sol-. sold4--) r2 | R2.*3
    r2 sold8-.( \pp sold-.  la4--) r sold16-.\mf sold-. la8-. |
  }
}


ActeDeuxSceneTroisSopranoUn= { \SopranoUn
  \relative {
    R4.*51 R4*27 R4. R4*7 R4.*14 R4*28 R2.*7 R2*9 R2. R2*6 R1*5/8 R2*16 R1*5/8
    r8 sold'16-.(\mf sold-. la8-- fad16-. fad-. sib8--) r4 |
    r8 sold16-.(     sold-. la8-- fa!16-. fa-.  si!8--) r4 |
    r8 sold16-.(     sold-. la8)  re,16(  sol dod8->--) r4 | R4. r2
    r8\fermata sold16-.(\p sold-. la4--) r sib,8( sib| 
    mib4--) r2 | R2.*4
    R2*2 R2. R2*2 R2. R2*2 R2. R2*2 R2. R2*2 R2.
    R2 R4. R2 R4. R2*2 R2. R2*2 R2. R1 R2. R2 R2*7
    r8 sib'-.(\mp sib-. sib-. mib-. mib-. | 
    sib-. sib-. mib4--) la,8-.( la-. |
    re4--) sold,--( fad8-. la-. | fa!4--) r2 | R2.*3
    R2 R2. R2 R2. R2 R2. R2 R2. R2 R2. R2 R2. R2 R2. | R2 R4.
    r4 r8 sold'-.(\f | la-. la-. sol-. sol-. | sold4--) r | R4.
    r4 r8 la-.(      | mi-. re-.  mi-. la-.  | sold4--) r | R2
    r8 si,4-- | do--( sib8) | sib2--\< mib4--| 
    \ten lab1->--\! lab2 r4 |
    R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. 
    R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. 
    r8 sib,-.(\p mib-. sib-. lab-. sib-. re-. mib-. | re4--) r2 |
    r8 sib-.(    fa-.  do'-. sol-. re-.  do-. fa-.  | sib4--)r2 |
    r8 \ind #"legato" fa'(\mf \> do re si fad mi la | red,4--)\p r2
    r2 r4 r8 sold(\mf |
    la do re4.) la8( | sold do re2) r8 re( | do4.\< re | 
    la'2)\! r4 do,(\f | lab2--\> re4 ~ |
    re do'2.)\mp | r8 sol-.(\mp\> \t{lab4-. re,-. mi-.}| 
    la,4--)\! r r2 | R2. R1 R2. R1 R2. R1
    r8 sib-.(\mf sib-. sib-. mib4--) | 
    r8 sib-.(    la-.  la-.  re4--) r|
    sold,--\p \t {r8 sold( sold} sold16-. sold-. fad-. la-. |
    fa8--) fa16( fa \t { fa8 mib fad } 
    \t { re-- re re } \t { fad--\> fa fa } | la4)\! r2 |
    r4 r8 la(\mf sold do re4) ~| re r8 la( sold do re4)|
    re,8(\p mib fad la do) la(\< re mib |
    fad4)\mf r8 do( re sold la4) | r8 la,( sold la do) re( mi? sold |
    la4) r8 sold,( si re la'4) |
    r8 re,( mi sold | la4) r | sold,--(\f la8 do | re4->--) r2 |
    R2.*10 R4. R2.*26 R2*2
    r8 re-.(\f mi-. sol-. | sold4--) r |
    R2*8 R2. R2*6 R2.*4
    
    r4 sib,8-.(\mp sib-. la4-- sol8-. sol-. |
    sold4--) r r2 | r8 sib(\f la do re4) r  |
    r8 la( sold do re4) r |
    r8 sold,( la la do4-- re) | 
    r la( \t { sold--\> sold lad } | \ten red2.)\mf r4 | R1*5
    r4 sold,8-.( \mp sold-. la4-- sol8-. sol-. |
    sold4--)sold8-. (sold-. la4-- sol8-. sol-. | 
    sold4--) r r sol8-.( sol-. | sold4--) r r2 R1
    r4 sold8-.(  sold-. la4-- sol8-. sol-. | 
    sold4--) sold8-.( sold-. la4-- sol8-. sol-. |
    sold4--) r r2 | re4-.(\p la'-. sold-. mi-.)|
    r4 mi'8-.\mf mi-. re4-- re8-. re-. | 
    mi4--\< fa8-. fa-. mib4-- mib8-. mib-. |
    fad4-- fad8-. fad-. mi4--\! sol8-. sol-. | r sold-. r2 |
    sib,2.(\ff~sib8\> mib4 sib8 la re | la4 lab8 reb sol,4 | 
    mib4 dod8 fad re4)~|
    re2.\!~re4 r R2*2 R2.*40
  }
}
