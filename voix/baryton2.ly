%------------------------------------------------------------------%
% Opéra Libre -- baryton2.ly                                       %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

BarytonDeux = {
  \set Staff.instrumentName = \markup { \hcenter-in #27.5 \BarytonDeuxName }
  \set Staff.shortInstrumentName = \BarytonDeuxShortName
  \set Staff.midiInstrument = "voice oohs"
  \clef bass
}

PrologueBarytonDeux = { \BarytonDeux
 \relative { 
  \partial 4 r4 | R2.*3 R1 | \repeat unfold 4 { R2*2 R2.} R2*2 |
  re,8. dod16~ dod8 mi r mi16 re | sol4 r8 la16 sol | sib4 r8 do!16 sib |
  mib4 r2 | R2 R2. | R2 R2. R2 R2. R2*2 R2. |
  r4 r16 re, re re | mib8 re r re | fa8. re16 r4 |
  r8 sib' dod8. sold16 | si8 mi4.~ | mi2~ | mi4. re,8 | R2
  r8 re' re re re8. fa,16 | lab4 r16 do, fa solb mib4 |
  r8 re' re re re8. mi,16 | sib'4 r8 sib, \t {sib lab sib} |
  reb4 sib8 sib \t { reb sib reb } | mi4 r r8 r16 solb |
  lab4 fa8 r r r16 sold | la!4. fad8 r4 |
  sib4 sib8 sib4 sib8 | sib4. sib8 \t { si si si } |
  re2. r4 | R2*3 
  R1*2 R2. R1 R2. R1
  r4 r16 mib, mib mib | mib8 r mib mib16 mib | mib8 mib r re |
  re re fa fa | re r r re \t {reb reb reb} | lab'4 fa8 r r r16 reb |
  mi4 sib8 r r sib | \t {la la do} lab2~ lab8 r r2 | R2.*6
  R4.*6
  r4 re16 re | reb8 r16 reb fa8~| fa fa16 fa mi mi lab8 r4 |
  R4.*2 dod,8 dod dod | re4 r8 r16 sol si8 r |
  red,8 r4 R4. r4 si'8 |
  sol4 lad8 |red, r4 r4. r8 lad' r | red,4 fad8 | la! r4 R4.
  sib16 sib8. r8 | re,!8 re sol | sib4 r8 | R4.*2 re,8 re re la' re, re |
  R4.*3 r8 sol r mib r re r \acciaccatura si! sib' r | R4.
  sib16 sib8 re,16 re re | mib8 re16 re re re | fa8 mi16 mi mi mi | sol4 fa8 fa8. fa |
  \t {sib16 sol sol} sol4~ | sol8. sol | sol8 sol sol | lab4 r8 | R4.*2 
  r8 reb,16 solb do8 | R4.*16
  \parlato {sib,32 la lab8.} r8 R4. r4 
  \parlato {mib'32 reb do16} R4.*3 R2*5/4
  \t {fad16 sol la} do4~ do8. sib16 sol fa | re8. mi16 si8~ si8. re16 sold,8~| sold4 r8 r4\fermata r8 |
  r2 r4 \t {la8 la la} | re4 r16 re re re fa8 fa16 fa mib8. fa16 | mib8 re r4 r2 |
  R1 R1.*2
  r2 re16 re sol4 r16 fa | lab4 fa8 r r2 | R1 R1.*2
  r8 sold4 si r8 \t { r fa fa } | lab4 fa8 r r2 | 
  R2.*7 R2*2 R2. R2 R2.*2 R1*2
  r2 lab,8 lab | sol'2 r4 | r si, si | mi2 r4 | r2 re8 re | 
  la'4 r | r8 la sol sol | do2. r4 | R2.
  \parlato la4 r16 re, re re | mib4 r16 re re re | fa4 r8 lab lab lab sib8. si16 | fa8 re r4
  do8 do mib8. re16 | do8 fa4 lab8~ | lab fa fa sol | re4
  r8 re16 re mib4 r16 re re re fa4 r8 lab fa lab mib8. fa16 mib8 re
  r8 re16 re mib4 r16 re re re fa4 r8 lab fa lab mib8. fa16 mib8 re
  r4 R2*14 |
  }
}

ActeUnSceneUnBarytonDeux = { \BarytonDeux
  \relative {
    \repeat unfold 6 { R2*2 R2. }
    \repeat unfold 6 { R1 R2. }
    R2.*7 | R1 R2. |
    R1 R2.*2 | R1 R2.*2|
    
    %Entrée.
    
    R1*3
    re4 sol,2 la4 | mib2. r4 | R1 |
    re'2~re4 r8 re, mib mib fad fad | sib4 r r2 | R1 |
    sib2~sib4 r8 re, mib mib sol sol | fad4 r r2 | R1*2|
    fad2 re8 mi! \t {sol[ sib la]} do4 r | R1*2|
    r4 do, si do si mi | do2 r4 re do re |
    \t {fa8 re fa} sol2. r8 mi mi mi |
    sold2 r8 sold sol sol | si2 r4 si sib sib | re1 r2 | R1.*2 |
    
    %%% Duo Soprano1/Baryton1 %%%
    
    R1 R2. R1*5 R2. R1 R2. R1 R2. R1 |
    R2. | R1*2 | sol,4 r r8 sib4 r8 |
    R1*2 | R2.*3 R1*6 |
    R1*2 R2.*2 \repeat unfold 7 {R1 R2.} R2 | R2. R1
    
    r8 sol16. sol32 si8 r | r sol16. sol32 si8 r | R2 |
    r4 r8 red,16. red32 | fad2 red8 r red8. red16 | fad2 red8 r r4 |
    red8 r red r re r re r | fad2 red8 r re8. dod16~ |
    dod8 mi r16 mi \t {mi re mi} sol8 r mi8. mi16 |
    sol2 mi8 r mi8. mi16 | sol2 mi8 r r4 | mi8 r mi r red r red r |
    sol8. sol16 re'!8 sol,~sol16 sol la8 mib r |
    dod' fad, fad sold re r fa8. fa16 |
    lab2 fa8. si16 fa8. fa16 | lab2 fa8 r r4 |
    fa8 r fa[ r16 fa] mi8 r mi8. mi16 |
    lab2 fa8 r fa8. fa16 | lab2 fa8 r fa8. fa16 lab2 fa8 r r4 |
    r2 r4 fa8. fa16 | lab2 fa8 r sib8. sib16 reb2 sib8 r sib8. sib16 | reb2 sib8 r r4 |
    R1*2 | r2 r4 \t { r8 do do } |
    
    do4~do8 r r4 \t {re,8 re re} | mi4 r16 re re re sol8 mi' dod sib |
    \t {sol4 sol8} lab[ re,] r4 \t {re'8 re re} | re4 r8 do, fa8. fa16 mib8 lab~|
    lab4 fa8 r r2 | r2 r4 r8 r16 re | sol8. re16 r fa fa fa sib8 sib lab lab |
    reb r r4 r2 | r8 do4 r8 r2 | r2 \t { re,4 dod mi} | r8 re sol4 r8 fa sib4~|
    sib8 r r4 r2 r4 si | \t {re dod sib} mib, r |
    r2 r4 sib'8. sib16 | re8 la r4 r2 |
    \t {do16 do8 sol16 sol sol} \t { si4 si8 } sib16 sib sib re | R2*2 |
    \t {r8 re si} sib8 fad sold16 la si! re r4 | R2|
    
    re,8 fad~fad4 r fad | fa!8 la~ la4 r r8 la | sold sold do2 r4 | sold8 re r4 r2 |
  }
}

ActeUnSceneUnBisBarytonDeux = { \BarytonDeux
  \relative {
   R2.*7
   r8 re  re re re4 \t {r8 fa, lab} | mib2 r4 |
   r8 re' re re re4 \t {r8 si sold} | dod2 r4 |
   r \t { re re re} fa4. re~ | re8 r r4 r8
   \parlato {re, re4 } r4 mi8 sold |
   R2.*2 r2 sol8 si | R2.*2 | r2 r4 sib | re2. r4 |
   R2*4 R2. R2 R2. R2 R2.*2 R1 
   r8 r16 sib sib8. mi,16 mi4 r |
   r16 reb reb reb \t { reb8. reb16 reb8 } \t { fa fa mi } |
   \t {lab4 lab8 } \t {sol sol sol} | si4. reb,8 r2 |
   R2.*2 R2*2 R2.
   r16 sib' sib8 mi, r | r16 reb do do do do reb do | mi8 r r16 mi8. |
   mib16 sol8. r8 sol solb4 | sib16 do,8 do16~ do do8 mi16~ mi4 do8 r | R2. R2
   r4 sib' | r8 sol r16 sib mib,8 | r4 r8 red red8. mi16 | mi8 si r2 | R2.
   
   %%% Duo %%%
   
   R1*5 re1~ | re4 r r2 | r4 r8 re sol2~ sol4 r r2 |
   r2 mib | re r4 re8 re | re2 r4 r8 re | \t {fa4 re8} \t {re4 re8} 
   re16 re re re re4 | r8 re re4 r8 re16 re la'8 re, |
   \t {re la' re,} la'2 r4 |
   \t {r8 fad la } fa8. fa16~ fa8 mib~ mib16 fad8. | re2 r |
   R1*16 r4 r8 si | \t {si r16 lad lad8} lad r | r4 \t {r4 dod8 } sold r r4 |
  }
}

ActeUnSceneDeuxBarytonDeux = { \BarytonDeux
	\relative { 
	%%% Air de la Soprano 2 %%%
	\repeat unfold 21 {R2.*2 R1*2}
	%%% RÃ©citatif %%%
	
	R2.*2 R1 R2.*2 r4 r8 re, mib4 | mib8 mib re4 re8 re \t {re8 re re} |
	\t { dod dod fa} r4 r8 re | fa4 re8 lab'~ \t {lab fa lab} |
	mib4 re8 r r4 | R2. | r8 sold4 si r8 | R2. R2 R2. |
	r2 \parlato sib, | r8 mi4. r8 sol!4. | r4 re r | 
	r8 re sol16 re8 sol16 dod,8 fad16 dod~ | dod dod re8 re16 re re dod mi8 r |
	r4 re8 re \t {dod dod mi} | sib4 r2 | R1 |
	%%% Duo %%%
	
	R2. R1 R2. R1 | r16 re re re mi8. re16 re re sold8 |
	r si sold si sold8. sold16 sold8 si~| si4 r2 |
	R1 R2. R2*2 | r2 r8 mi,16 mi | sold4 r8. sol32 sol si4 r8 sib16 sib |
	re16 r16 r8 r4 r2 | R2. | 
	r2 r8 red,16 red | \tt {mi16 red red red red} fad4 r r8 sold |
	r si4. r8 sold r16 si8. | mi2.~ mi~ mi4 r2 | R1 |
	
	r8 \parlato do r8 red, red16 dod red fad~|
	fad8 fad16 fad fad8 fad \tt {sold16 fad mid fad la~} la8 fad |
	r4 mi16 mi mi mi mi la8 fad16 | si4 r2 | R1 R2. R1 R2. R1 R2.*14
	re2. r4 | r re~ re8 dod4. | mi,2. r4 |
	
	r2 r8 r16 si lad'8 r16 re, | dod'4 r dod8 re, dod'16 re,16. re32 re16 |
	sold4 r8 r16 sold sold8 sold16 sold \t {sold8 red fad} | 
	la!4 r la8 la16. la32 fad16 si8 la32 si | do!4 r r16 do, mi mib sol fad sib la |
	dod2 r8 re, | dod'2 r4 r8 re, | dod'2 r4 r8 r16 sold |
	sold sold fad fad sold8 r16 sold si sold sold si | dod4 r8 re, | dod'2 |
	r4 r8 re, | dod'2 r4 | r4 r16 si re8 r4 | r8 fa, mi'4 | r8 fa, mi'4 |
	r8 r16 re si si la la | re8 r r r16 re | re si re si mi4 |
	r16 fad, mi'8~ mi16 fad, mi'8~| mi r r r16 mi re re si re | \parlato sol8 r r4\fermata
	r8 \parlato {re,16 fa si,8} r8 r2 re8 fa | reb4 r8 reb sib fa' |
	do4 r8 do do do | fa4. si,!8 r4 | r8 si \t {si si si} |
	fa'2. | sib,2. r4 | R1*3 |
	} 
}

ActeUnSceneTroisBisBarytonDeux = { \BarytonDeux
  \relative {
    R1*9 r2 r4 sol, | fad'2 r4 mi |
    dod'2   r4 sol, | fad'2.   mi4|
    dod'2.  r4      | r2       mi,|
    dod'2.  r4      | R1
    dod2    r2      | R1 lad2  r  |
    R1 r8 sol re4
    \tt { r8 fa!16 fa fa} sold8. fa16 | re4 
    \tt {r16 re fa re lad'} dod2|
    \tt {lad8 lad16 sold lad} fa4
    \tt {r8 fa16 re fa} si,4 |
    R1*9
    r8 mi4 sol16 sol
    \tt {do8 sol16 sol sol}
    \tt {sib sib do do do } |
    sol4. r8 r2 |
    R2. R1*3
    r2 r8 re re4 |
    r2 re8 re~ \t {re re re} |
    mib8 re16 re fa8 re r fa sib16. fa32 lab16 si~|
    si8 r r4 r2 |
    r16 dod dod dod mi4 r16 dod dod dod mi8 si |
    lad16 dod sold8 r4 fa8 fa16. fa32 sib16. fa32 lab16 re~|
    re2. r4 | R1*17 
    r2 sol,,8 sol fad'4~| fad8 r mi mi dod'4 dod8 r |
    \t {la lad dod} fad,4. fad8 fad4 |
    fad \t {sol8 mib mib} mib2 |
    r4 mib reb mi |
    \t {do do do} si'2 | R1*2 |
  }
}

ActeUnSceneQuatreBarytonDeux = { \BarytonDeux
  \relative {
    \partial 4 r4 | R2*5/4 R2*3 R2*5/4 R2*2 R2. R2*3 |
    R1 R2. R1*2 R1. R1*2 R1. R1*2 |
    R2.*27 re2~ re8 r \t { r do, dod' } |
    mi4 r16 fa, mi'8 r16 sold,8. | dod4 r8 fa,16 fa fa8 fa lab16 mib mib fa |
    re4 r2 | R2 R2. R2 R2. R2 r16 fad fad fad sold4 si16 fad fad sold |
    re4 r r2 | \t { re4 re re } dod dod8. dod16 | mi2 dod8 r16 mi mi8. mi16 |
    sol2 mi8 r r4 | sol4 sol8. sib16 fad4 fad8. fad16 | la4 r | R2. R1*10
    R2. R1 R2. R1*7 R2*3 R2.*4
    r8 r16 la, sold'4 r | r8 r16 do, si'4 r | r8 re4. r2 |
    re8. dod16~ dod8 mi~ mi2~ | mi8 r r4 r2 |
    r8 sib sib16 sib sib do \t { sol8 sol sol } \t { mi la sol } |
    sib4 r16 re, re8 dod16 mi8 re16 | sol4 r16 sol8 fa16 sib4 r8 mi, |
    sol4 fa8 sib4 lab8 | reb4 r r2 | R2. r2 r4 re,! | dod' r2 |
    dod4. re,8 r4 dod'8 fa,16 dod' | mi2 sib4 r | R2.*2
    r2 re8 re | re4. re8 re re \t {mi si dod } | sold lad lad lad sol sol do sib |
    
    dod4 r2 R4. 
    re,8. dod16~ dod8 mi r re | mi16 re re mi la sold | si4 r | R4.
    re,8. dod16~ dod8 mi r re sol fa | dod'4 r R4.
    re,8. dod16~ dod8 mi r re sol fa | mib'4 r R4. R2*3 R4. R2.
    re,8. dod16~ dod8 mi~ mi re sol fa | sib4 r r2 |
    \repeat unfold 6 { 
    re,8. dod16~ dod8 mi~ mi re sol4 }
    re4 r re r | re r r2 | re4 r r2 | R1 R2 R2.*2 R2 R1 |
    
    R2. r2 r8 re | fad2 r8 re | re re si si re re | fa4 re8 r r4 | R2.*2
    fad4 r8 re \t { re re re} | fad fad fa la \t {la lab lab} | do la! r2 |
    r2 r8 r16 mid | sold8 sold16 fad si8 si16 si si si la la | re8 fad, r2|
    R2. re16 dod mi8~ mi re \t {sol fa sol} | sib8. lab16 reb4. r8 | R2.*5
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5 R1 R1. R1 R1. R1 R1.*5 R1 R1. R1
  }
}

IBarytonDeux= { \BarytonDeux
    << \new Voice = "IRoi"
	\relative do,,
	{
		R2.*4 R2 R2.*2 R2 R2.*3 R2 |
	}
   % \new Lyrics \lyricsto "IRoi" { \IRoi }
    >>
}

ActeDeuxSceneUnBisBarytonDeux = { \BarytonDeux
  \relative {
    R1 R2. R2 R1*5/4*11
    r1 lad8 lad dod4 r8 sib la! la re4 r8 la |
    fad4 fa8 la re4 dod sib8 re | fa!2 dod4 fad, la |
    re,2 r r4 | R1*5/4*2
    r2 re'4 lab sib | mi, r la dod8 re dod la |
    sol4 reb' sib do! fad,8 sold | re4 r1 | R1*5/4*6
    r2 re4. re8 re4 | fa4. re8 do4 fa8 re do re |
    si4. re8 sol4 re8 sol fa sol | lab2 r2 r4 | R1*5/4
    r2 dod,8 dod mi4 dod8 mi | sol2 r2 fad4 | mi fad8 mi si'2 r4 |
    r2 r4 si sol8 fad | si2 la4 fad la | dod,1 r4
    R1*5/4*38 R1*7/4*7 R2. R1 R2. R2 R2.*9 R1*7/4*3 R2.*7 R1*7/4*9
    
    r2 mi'~ mi4 r | R1.*2
    \tt{r4 re,4.} \tt{r8 dod mi4.} \tt{r8 re sol4.} |
    \tt{mi8 mi mi mi mi} sold16 sold sol sol si4 \tt{si8 si sib lab si} |
    re,2 r4 | R2.*6 R2*2
    r4 r8 re'4. | sold,4. si | fa4 r2 | R2.
    sib8. sib16 sib8 sib | si4 si8 | re2 R2
    re8 re4 re8 re4 re8 | re2 r4 |
    re8 re4 re8 re4 re8 | re2 r4
    re8 re  re  re  re  | fa2~ fa8 r4 |
    R2.*3 \t{ r8 re, dod'} mi4 r | R2.*11 |
    R2 R4. R2 sold,4 sol sib8 | mib,2.~ mib2. r4 |
    r4 sol sol4. sol8 sol sol | la,4. r8 sol'4 sol8 sol sol sol |
    \t {fa mib fad} re'2 re4 re |
  }
}

ActeDeuxSceneDeuxBarytonDeux = { \BarytonDeux
  \relative {
    R1.*6 R1*2 R2. | 
    r16 dod mi8 dod16 mi8 dod16 dod dod do do |
    mi4 r2 | R2.*2 | R1.*3 R1*2 R2. |
    r16 dod mi8 dod16 mi8 dod16 dod dod do do mi8 r16 dod |
    sib do! sol la fad si | mi4 r r2 | R1*5 |
    
  }
}

ActeDeuxSceneTroisBarytonDeux = { \BarytonDeux
  \relative {
    
  }
}
