%------------------------------------------------------------------%
% Opéra Libre -- soprano2.ly                                       %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

SopranoDeux = {
  \set Staff . instrumentName = \markup { \hcenter-in #27.5 \SopranoDeuxName }
  \set Staff . shortInstrumentName = \SopranoDeuxShortName
  \set Staff . midiInstrument = "voice oohs" 
}

ActeUnSceneDeuxSopranoDeux = { \SopranoDeux
	\relative {
    %%% Air Solo %%%
    
    \ind #"bouche fermée" sold'8( \mp la sold mi re mi sold la
    sold mi re mi sold1 )~ sold4 r r2 |
    sold8 ( \p la sold mi re mi sold mi re \< mi sold la
    sold2 \mf  \> la4 si \ten re1 ) \pp ~ re4 r2 R2. |
    r8 re ( \mf \< re re re re re mi \! \t {si4 si si} \t {si4 si \> dod}
    sold4-- \! ) r8 lab-.( lab-. lab-.) | sib4.--( fa8 sol!4-.)
    \ten re'1-- ~ re4 r r2 | R2.*2 | 
    la8 ( \mp re la sold re sold la re la sold re \< sold la re sol!
    \bmc #"poco" #"f" sold sol! \> re la sold re \! sold |
    \ten la2. )~ la4 r r r8 la16 ( \> re | sold,2) \! r4 r8 la16 ( re) |
    sold,4.--( \< la4.~ | la4 re,4.. mi16 si2. \mf \> sold'4 \p )~|sold2. r4|
    R2.*2 R1*2 | r8 si( \mf mi4.) si8( | mi \< mi re re sol!4 \! )~|
    sol2 r8 fa ( dod re | lad \> si sol sold mi4 \! ) r8 mi \( \p \< |
    sold sol si \! sib re4 ~| re8 r re4-- \< sib8( mib) | \ten lab1 \) \f ~|
    lab4 r r2 | R2.*2 R1*2 R2. |
    lab,8 \mf ( do lab sol re sol | lab2.) r4 | R1 | R2.*2 | R1*2 |
    r4 r8 sold8.--\p ( si-- | sold-- fad-- re-- fad-- | sold2.-- ) r4 |
    sold8( \mp si sold fad re fad sold si | sold fad re \< fad sold si |
    re fad \> re dod sold dod | sold2 \! ) r4 r8 la16( re) |
    \t {sold,2( si \< la} | re2.) \! | R2. | R1 |
    r2 r4 dod-- \pp | \t {mi4( si dod} lad4~ |
    lad4 la8) sib4.-- | reb8--( reb-- lab-- sib-- fa4--) r |
    r lad-. dod( \< sold) | dod( sold) dod8( si |
    mi2) \! r4 | r2 dod4 ( \mf re | mi2) r4 re( \mp \> | sol!2.) \! |
    r4 mi2-- \p \> | \ten sold1 \pp ~|sold2 r2 |
    R2.*2 R1*2 R2.*2 R1*2 |
    
    %%% Récitatif %%%
    
    R2. | r4 r8 lab,( \mf sol4) |
    \t {r8 sol( sol} mi8) mi16-. mi-. fa8--( fa16 fa mi mi sol8) |
    r8 lab( sol) sol16-. sol-. \t {si8( sol si} | mib,4) r2 | R2. R1 R2.*3 |
    r8 mi!16-.( \mf mi-. la-. la-. sol8--~ sol16 do-. sib-. sib-. | mib4-- ) r2 |
    r4 r8 fa--( \< mib-- mib-- | lab4.->--) \! r8 | R2. | R1*2 | R2.*5 | R1 | R2. R1|
    
    %%% Duo %%%
    
    r8 sold,16 \( \p la sold( mi) re8~ re16 mi sold la |
    sold8-- \) r r sold-.( sold-. sold-. la16-- sold32-. sold-. do8--) |
    r4 r8 \ind #"sotto voce" sold16 \pp ( la sold mi re mi |
    sold4 ) r r8 sold16 ( lad sold mi red mi |
    sold4 ) r2 | r2 r8 sold16( la! sold fad \> red fad | sold4 ) \! r2 |
    r4 r16 si?-. ( \f si-. si-. |  mi4->-- re->-- | mi8-. si4.->--) r4 |
    r8 sold16( si sol4--) r8 si16( sib re4--) |
    dod16 ( \mp re dod8 ) dod16 ( la sol la dod4 ) r8 la-. |
    dod( re) dod( la) \t {sol( sol la} |  dod4) r2 | R1*2 | R2.*3 R1 |
    R2. R1 \ind #"(en aspirant)" \parlato sol4 r2 |
    r16 sol-.( \< sol-. sol-. sib4--) \! r |
    re8 \f ( fa re4. re8 re re | \t {dod-- dod dod} fa4-- ) r |
    r8 re( \t {fa-- re re} fa-. dod4--) dod8( | re la dod4--) r |
    r8 si--( \mf~si16 si8.--~ si8 sib-.) re( dod \< )~| \t{dod fa( mi} sold4)\! r|
    r2 r8 sold-. \f \( | la16( sold) mi-. re-. mi4-- sold8-. la-. |
    sold4-- \) r r8 mi-. \( | sold( mi) re( mi) sold-. la-. |
    sold4-- \) r2 | re8 \( mi sold( mi) \t {re( \< si) mi} |
    \ten la2. \) \! ~| la4 r2 | R2. r4 r8 re,,4.-- \mp |
    \t {sold8 \( ( \< fad ) sold-.} si4-- re8-- si-- |
    mi2-- \! \) r4 | re8--( si-- mi4-> \t {re8 \< si fa'} | 
    \ten sib1) \! ~| sib4 r r2 | R1 | R1*5 
    r4 si,!2->-- \f | r4 r8 si( sold'2--) | r4 r8 si,( sold'2--) |
    r4 r16 sold,( si8) r4 | r4 sold--~| sold8 r r si( | sold'2--) | 
    r4 r8 si,( sold'--) r16 si,-.( | 
    si-. si-. la-. la-. si8-- r16 re-. si-. si-. re-. si-. | mi4--) r8 re( |
    si'4--) r8 re,( | si'4--) r |
    r16 mi,8->-- mi16-.( mi-. mi-. re-. re-. | mi8-. r16 re-. re-. si-. re-. si-.|
    sol'8->--) r16 re( si'8.--) re,16( |
    si'8--) r16 sol( sol sol fa? fa sol8) r | R2.-\fermataMarkup |
    R1 R2.*3 R2 r4 r8 fa,( \mp \< fa fa | lab2.--) \! r4 |
    r solb-.( fa-. lab-. | mib-.\> r r re-.) \! | R1 |
	}
}

ActeUnSceneQuatreSopranoDeux = { \SopranoDeux
  \relative {
    \partial 4 r4 | R2*5/4 R2*3 R2*5/4 R2*2 R2. R2*3 |
    r4 r16 la'-.( \p la-. la-. ) re4 ( do ) | re8-- ( la~ la la \t { sold sold sold } |
    do4 ) r r2 | \t { la4 ( re la~ } \t { la16 la8. ) la8 ( } \t {sold sold sold} |
    do4 ) r r2 \t {r4 la ( \mp la } | re4. la8 ) \t { r4 do ( re } | do ) r \t {la ( \< la re~}|
    re2 ) \! r \t { r4 do ( \> re } | sol1 ) \p ~ sol4 r r \t { r8 sol, \f ( do ) } |
    fad4---> r do16-. ( la-. re-. la-. | do4-- ) la8-.( sol-. la-. re-. | do4--) r re8( sol) | 
    fad4.--( re8 ) do16-.( \< re-. fad-. sol-. | fad4--) \! r2 R2.*3
    r2 r16 la,-.( la-. la-. | re4--) do8-. do4--( re8-.) | la4-- r2 |
    r16 la ( sold sold sold sold do8--) si16 ( red8-- ) si16-. |
    red8--( la16 si ) mi8->--( red) r16 si-.( \< la-. si-. | red4-- ) \! r2 |
    R2.*4 r4 r8 r16 sib( la'4->--) \sfz | %FIXME: script weirdness
    r8 r16 si,!( la'4->-- \sfz mi8-.) la,16-. la-. | dod8( re) dod( la) \t {sol( \< la re } |
    la'4 ) \sfz r r8 sib,-. \mf | re16 ( mib re sib lab8) sib-.  \t {re ( \< sib mib } | la!4 ) \sfz
    r si,!8( red) | \t { mi( red si } la) si-. red16( si mi la | red,4--) r8
    si16( si mi la, re! mi | sold4) r16 mi( mi \< mi sold re mi sold | \ten la2->--) \f ~ la8 r r4 |
    R2. R1 r8 re,-- \mf \t { r la( la } \t { mi' la, si } | re,4--) r8 la'-. |
    dod( mi,-.) mi-. mi-. la16-.( re,-. re-. la'-. | sib8-. ) re( sib-.) sib-. | \t { mib( sib sib } sib4--) 
    red8( si!) | mi( si si4--) | \t { re!8( la' mi } si4) r |
    R1*2 r4 sold8.-. \pp sold16-. dod2--( | sold8) r si8.-. si16-. mi4--( si8) r |
    r2 r4 re8.\mf re16 sol4-- dod,8. dod16 |
    fad4--( do!8) do-.( sold-. do-.) | mi2--( si8) r r4 |
    
    r4 lab( \mp \t { lab-- lab-- lab-- } | sol2.--) r4 |
    r  lab( \t { lab-- sol-- sol--) } | si2--( fad4) r|
    r  sib( dob sib | \t { re \< dob fa, } sib) \! dob8( sib |
    re \< sib sib solb sib4) \! mib-- | \t { r re( re } \t { re-- \< sib-- re-- } |
    \ten la'1) \f ~ la2 r4 | R1 R2. R1*7 R2
    r4 r8 la,-. \(\p | la-. la-. \t { la( sol sib) } sol( fad) \) r4 r8 la-. |
    re,4-- r8 re-.( do-. mib-. | si4--) r2 | R2. 
    r4 r8 r16 fad'( \p red'4--) |
    r4 r8 r16 la( \mp  fad'4--) |
    r4 sol-- \f r2 R1*3 R2.
    r16 fa,(\mf sib8) r8 r16 sib (~ sib lab reb8) r re-. \f ( | re4-- re8-. re4-- re8-. | re4-- ) r r2 |
    R2. R1 R2. R1*2 R2.*3 R1*2
    
    R2. R4. R2. R4. R2 R4. R2*3 R4. R2*3 R4. R2*3 R4. R2.
    R1*4 re4->-- \f r r2 | re4->-- r r2 | re4->-- r r re-- | re->-- r r re-- |
    re->-- r re->-- r re->-- r r2 | re4-- \mp r r2 | R1 R2 R2.*2 R2 R1
    R2.*4 r4 si8( \p \< si si dod | sold4-- \! sold8 sold sold sold | \t {sib4-- \> fa-- sol!--} re-- ) \! |
    R2.*2 r4 \t {r8 re' ( \p \< re} \t {re re mi} | \t {si \! si si} \t { si \> si dod } sib4) \!|
    R2.   r4 sib-- r | \t {r8 fad( fad} \t {fad fa fa} la fad) |
    R2.*2 r8 sib ( \mp \> la4) \! r | lab8( lab \t{sol sol sol} si!4) |
    r8 sold( si-. sol-. fad-. fad-. | la4--) r r8 lab-. | re,4-- r2 |
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5 R1 R1. R1 R1. R1 R1.*5 R1 R1. R1
  }
}

EntracteSopranoDeux = { \SopranoDeux
  \relative {
    R2*9 R1*20
    r4 r8 re'16 re re4 r16 re re re | re4 r8 re re re re8. re16 |
    dod8 re dod r \t { r re mib} re la |
    sold la dod red \t { sol4 re sol} |
    sold4 \t {r8 mi la} \t {sold mi re} mi si |
    dod16 lab sib fa sol8 re'16 re re4 r16 re re re |
    re4 r8 re re re re8. re16 | re8 re r4 r2
  }
}

ActeDeuxSceneUnSopranoDeux = { \SopranoDeux
	\relative {
		R2.*4 R2 R2.*2 R2 R2.*3 R2 | 
    R2. R2 R2.*2 R2 R2.*3 R2 | 
    R2. R2 R2.*2 R2 R2.*3 R2 |
    r4 sold'8( \mf sold sold4--) | sol!8( si4 si8 sib-- sib | 
    re4--) r r8 re( \< re re | 
    \t {fa--\! re re} re4. re8) |
    r4 si8( \> sib) sib( la) dod( la) | lab2-- \! r4 | R2 | R2. | R1 |
    
    r4 la!8( \mp sold la do re do | 
    la4 la8 la sold sold sold re' | 
    do4 do8) r r4 |
    r sold8( \( la) sold( mi | re4-- mi) sold8 la | 
    sold4-- sold8 \) sold( \( la re,) | mi4 sold8 la |
    sold4-- sold8 \) r r4 | 
    la8( \mf \> re sold,4.)\! fa8-. | 
    re'4( la) re( | sold,) la8( re la sold |
    re sold la4.) sold8-. | la( re la sold \t {mi4 \< la re8 mi} | 
    re2)\mf r4 | R2
    \t {mi4--( \f re-- sold--)} r | 
    re8(\mf la' sold4. mi8 sold la | sold4) r re--\( |
    mi16( si8.)~ si8 dod--~ dod re--~ re8. sol!16( |
    re4) mi8 si dod4 |
    sold2--~ \t {sold4 \> si la} | 
    re2 \) \p r4 r2 r4 do!--( \pp | fad \< do sol'  |
    fad)\! sib,8( \> do fad2)~ | fad4\! r do-- |
    re8( \< fad sol fa) \t {do4(\> re la~} la2)\! r4 |
    r2 la4--\mp la-- la2-- r4 | r la-- \t {la( la la} la2) r4 |
    la4--(\< la-- \t {la--\! r do} la2) la4(\mf | 
    re \> la re mi | \ten sold2.)\p~ sold2. r4 |
    \repeat unfold 10 {R2. R1} R2.
    r2 re4--\mp | r \t {do-- fa2--~} | fa2 r4 |
    R2. \t {r4 red,(\p fad} fa'!~ | fa4. sol,) | R2.
    r4 r8 do(\mf do mib | fa2) do4-- | 
    si8( mib fa2) r8 do( \mp |
    do mib fa4.) do8(\> | si dod fad2)\pp r4 |
    lab--\mf mib8( fa! do!4) | 
    r4 r8 la! la( sol4) sib8( | fad2) r4 |
    R1 R2. r2 dod'4--( \p r | si4.-- re--| 
    sib2--) r | r4 r8 la4.--( \pp |
    \t {la2-- sol-- sib--} | \ten fad2.--)~ | 
    fad4 r | R1 R2. R1 R2. R1 R2. R1 |
	}
}

ActeDeuxSceneDeuxSopranoDeux= { \SopranoDeux
  \relative {
    R1. 
    r1 r4 re | sold2. r4 mi2 | la1 r2 | R1.*2 |
    R1*2 | R2.*5 | R1. | mi4 sold2. r2 | R1. | 
    R1*2 | R2. | r2 r4 r8 mi | sold4 re8| 
    la'4. r8 r16 re, sold la sold re mi la |
    sold4 r fad16 la si4 mid,16 sold |
    dod2 r4 r8 la | 
    sold8. la16 dod red dod8. red16 mi!8. dod16 mi8 |
    mid4. r8 si8 mid,16 sold red' si red mid | lad2. r4 |
    R2. R1. R1*2 R2.*3 R2 R2.*3 R2 R4. R1*2
    r2 r4 r16 la, re la | sold mi sold la re la sold8. mi16
    re mi la sold la re | mi4 r r2 |
    r8 si,16. si32 sold'8 dod,16 r |
    r8 dod16. dod32 lad'8 red,16 r |
    r16. fad32 fad16. fad32 si8 fad16 r |
    r8 si16.   si32   mi8   si16 r |
    r8 lad16. lad32 fad'16 r si,8  |
    mi, fadd sold lad sold'2. r4
    R2. R1. R1 R1.*2 R2. R1
    R2. R1 R2. R1
    r4 sold, sold la2 r | r4 sold sold la2 r4 sold8 sold | la4 r sold8 sold |
    la4 r4 r sold8 sold | la sold la4 r | red,8 fad sold4 r sold8 sold | la4 sold8 sold mi4 |
    mi mi mi2 | R2. R1 R2. r2 r4 mi8 mi re4 r mi8 mi re2. r4 R2.
    R2*3 R2. R1*3 R1*5/8*14 R1*9 R2. R2 R1*2 R2.*7 R2*2 R2.*2 R2*25
    
    %%% Choeur %%%
    
     r8 re'16 re mib8 r r4 |
     r8 do16  do dod8 r r4 |
     r8 si16  si  do8 r r4 |
     r8 la16  la sib8 r r4 |
     red16 red mi8 r red16 red mi8 r |
     si16 si do8 r si16 si do8 r |
     sol'16 sol sold8 r2 | R2.*2
     r2 re,8 re dod4 r2 | R2.*3
     r2 re8  re dod4 r re16 re dod8 |
  }
}

ActeDeuxSceneTroisSopranoDeux= { \SopranoDeux
  \relative {
    R4.*51 R4*2 mi32 mi sold16 r mi | re32 re la'16 r sold |
    mi8 re32 mi la16~| la mi sold re'~| re la mi sold | si,4 R4*11
    sib'32 sib re16 r sib | la32 la mi'16 r8 |
    re16 la re,32 mi sold16~| sold la sol' re | mi,4 R4*3 R4. 
    lab16. sol32 r16 do | r do do do | do re la8 |
    r16 lab sol sol | si si \t {sib sib sib } | re4 | R4
    R4.*14 R4*15 r8 r16 sold, | la sold mi re | mi8 sold |
    la16 mi la re | mi4 | R4*3| r16 sold, sol fa | fa8 mib| R4*3 R2.*7 
    
    R2*9 R2. R2*6 R1*5/8 R2*16 R1*5/8 R2
    r8 re' re re r r4 |
    r8 re  re re r r4 |
    r8 re  re re r re16 re fa2 r4\fermata | R2.*6
    R2*2 R2. R2*2 R2. R2*2 R2. R2*2 R2. R2*2 R2.
    R2 R4. R2 R4. R2*2 R2. R2*2 R2. R1 R2. R2 R2*7 R2.*3
    la,8 sold mi16 re mi8~ mi sold16 la sold8 mi16 la re4. la8 |
    re4 \t {la8 mi sold} re'4 | r \t{la8 re la} \t{sold mi la} |
    mi'4 r8 mi sol4. re8 sol4 | sold2 R2. R2 R2. R2 R2. R2 R2. R2 R2. R2 R2. R2 R4.
    r4 r8 re | re re re re | re4 r | R4. 
    r4 r8 re | re re re re | re4 r | R2
    r8 re4 | re mib8 | fa2 re4 | sib si2 sol4 | sib2 r4 | R1 R2.
    r8 si mi la, red si mi si | la4 r2 | r8 sold la sold mi re la' re |
    mi4 r2 | r8 fa mi mib re si la do | sold4 r2 | r2 r4 r8 sold |
    la do re4. la8 | sold do re2 r8 re | mi sol sold4. mi8 | re sol sold2 r4 |
    r2 sold4 | fa2 mib4 fad | re2 r4 | R1 R2. R1
    r4 r8 re, do mib | si'4 r r2 |
    mi,8 re la' sold r mi | sold4 r r8 sold la sold | mi re si re mi la |
    sold4 r r r8 sold | la sold mi re la' re | mi4 r r si | mi4. la,8 re4 |
    sold2 r4 mi | sold4. re8 sold4 | la2 r | R2. R1 R2. R1 R2. R1 |
    R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 r2 r8 sold, |
    la do re2 r8 sold, | la do re2 r8 sold, | la do re4 fad,8 sold la do |
    re do re mib fad4 r8 mib | re sold la4 r8 sold, fad sold |
    si re si re mi4 r8 si | re mi sold fad, | sold la do4 | re re8 re re4 r2 |
    R2.*10 R4. R2.*26 R2*2
    r8 re re la' | re,4 r |
    R2*8 R2. R2*6 R2.*4
    r4 mi,8 mi fa4 red8 red | mi4 sold8 sold la4 sol8 sol | sold4 r r2 | R1*3
    r4 sold8  sold la4 sol8 sol | sold4 sold8 sold la4 sol8 sol | si4 r r2 | R1*3
    r4 re,8 re la'4 sol8 sol | re'4 r r2 | R1 
    r8 sold, la do re4 r | r8 la sold sold do re fad4 |
    r8 la sold mi re mi la,4 | sold8 la do4 re8 la mi' la | sold4 r r2 |
    r4 mi,8 sold r2 |
    r4 re'8 re mi4 mi8 mi | re4 mib8 mib fa4 fa8 fa |
    mi4 fad8 fad sold4 mi8 mi | r la, r2 |
    sold'2.~ sold4. fad4 la8 | fa4. mib4 fad8 | re4 sib si |
    sol sold mi | re r | R2*2 R2.*41
  }
}
