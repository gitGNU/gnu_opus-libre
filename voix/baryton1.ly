%------------------------------------------------------------------%
% Opéra Libre -- baryton1.ly                                       %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

BarytonUn= {
  \set Staff.instrumentName = \markup { \hcenter-in #27.5 \BarytonUnName }
  \set Staff.shortInstrumentName = \BarytonUnShortName
  \set Staff.midiInstrument = "voice oohs"
  \clef bass
}

ActeUnSceneUnBarytonUn = { \BarytonUn
  \relative {
    \repeat unfold 6 { R2*2 R2. }
    r4 do2. sib8 do~do2 |
    r8 do~do16 r r8 do4~do8 r | sib4 do2 |
    r4 do do16 r sib8~sib8. do32 sib |do4 do16 sib sib do~do4~|
    do8 r r4 r8 \t {la16 do sib} mib4~| 
    mib8 reb32 sib16. r16 r32 do sol8~sol4~|sol2 fa8 sol~sol4~|
    sol8 r fa4. sol8~|sol4 r \t {do8 re! do} \t {re do re}|
    do2.\startTrillSpan  |
    do8\stopTrillSpan r r4 \ttt {lab16 sib reb mib sol, fa}|
    do8 r r4 \ttt {fa16 sol sib do fa, re!}|
    do8 r r \t {do16 do do} \t {mib mib mib} \t {reb reb reb}|
    fad16[ r fad fad] sol fad fad la fad fad do fad |
    do' do re do do mib do do fa! do fad, do' |
    fa!8 fa16 do fad, do' fa8 fa16 do fad, do' |
    r4 fad,2\glissando | sol'1~sol2~sol8~ sol|
    R1 si,4 la sol | fad sol8 fad sol la |  sib2~ sib8 r r4 |
    la sol fa! | mi fa8 mi fa sol | 
    
    % Entrée du Baryton 2 et de la Soprano 1
    
    lab2 re,4 r | R1*5 |
    r4 fa do2. r4 | R1*2 | 
    r4 fad do2. r4 | R1*3 |
    r4 fad dod2. r4| R1*2 R1.*3 |
    r4 sol'?2 re4 | r4 sol fa8 sol~sol4 r2 | sol1 r2 | R1.*2 |
    
    %%% Duo Soprano1/Baryton1 %%%
    
    R1 R2. |
    r4 r8 mi r8 sol4 r8 | R1 |
    r4 do, r8 do16 do \t { dod8 dod dod } | mi8 r r4 r2 | 
    la8 sol16 r fa8 mi16 r fad mi fad sold sib4 | R2.
    r4 sib16 sib8 sib16 sib sib r mi,32 mi sol8 mi16 r | R2. |
    r4 \t { mi8 sol fa} sib4 r | R2. |
    r2 \t { lad4 dod si } |
    
    mi2 r4 | R1*5 | R2.*3 |
    R1*6 |
    R1*2 R2. r2 r8 do, | \t {sib'4 do,8~} do r r2 |
    do8 sib'4 do,8 r16 do do do | mi 4. r8 r16 mi8 mi16 mi mib mib sol~ |
    sol r16 sol8 sol sol \t {fad fad fad } sib4. r8 r2 |
    R2. R1 R2. R1 R2. R1 R2. R1 R2. R2 |
    R2. R1 | r8 mib,16. mib32 sol8 r r mib16. mib32 sol8 r | R2 | r4 r8 si16. si32|
    re2 si8 r si8. si16 | re2 si8 r r4 |
    si8 r si r sib r sib r | re2 si!8 r r4 |
    r2 r4 re8. re16 | dod2 re8 r re8. re16 | dod2 re8 r r4 |
    do!8 r do r si r si r | dod2 si8 r r4 |
    r2 r4 do!8. do16 | reb2 do8 r do8. do16 | reb2 do8 r r4 |
    r2 r4 re!8. re16 | reb2 do8 r do8. do16 | reb2 do8 r do8. do16 |
    reb2 do8 r r4 | r2 r4 do8. do16 | reb2 do8 r r4 | R1*5 |
    
    R1*11 R1. R1*2 |
    R1 R2. R2*5 R1*4 |
    
    
  }
}

ActeUnSceneUnBisBarytonUn = { \BarytonUn
  \relative {
    R2.*7 | R1 | R2. | R1 R2.*10 R1*2 R2
    R2*2 do,8 do do4
    \t {r8 do do } \t {do do do} mib do |
    r4 do8 do | sol'4. sol | sol8 fa~ \t {fa fa fa } |
    lab4 r r8 fa | mi mi mi sold \t { mi mi mi} | si'4 r r2 |
    R1 R2. R2 R1 r4 r8 mi, mi mi | mi mi sol4 r8 la | la4 r8 la~|
    \t {la4 do sib} | la r2 | R2*3 R2. R1 |
    r8 lab r16 \parlato {lab do, si' re8} r |
    R2*3 R2.*3 |
    
    %%% Duo %%%
    
    R1 r2 r8 do,~ \t {do do do} | do2 r |
    \t { r8 do do} do4 r8 do4 do8 |
    mi do sold'4 r2 |
    r4 \t {lad8 lad lad} dod4. si8~ | si si4 si8 si lad4.~|lad2 r4 r8 lad |
    lad lad sol2~ \t {sol8 lad sol} lad2 r |
    R1*7 r2 r4 mi8 mi ~ | mi2 r2 |
    r8 mi mi mi sol4. r16 sol | \t {fa4 sol fa} mi2 |
    r8 mi mi si'~ si4 r8 si | \t {si si si} re fa,?~ \t {fa si si} re4 |
    si8 si re fa, \t {si si si} re4~ | re8 r r mi, mi mi r mi |
    sol16 mi mi mi mi4 r8 si'4.~ | si8 sib lab si sol4 r | R1
    r8 r16 mi32 mi mi16 mi fa fa sol8 mi r4 | R1 
    r8 r16 mi32 mi mi16 mi fa fa sol4. sol8 | R1*2
    R2*4 |
  }
}

ActeUnSceneTroisBarytonUn = { \BarytonUn
  \relative {
    R2.*11
    r4 r8 fa,16 fa fa8 mi16 mi | lab4 lab8 lab sol sol |
    si4 r8 si sol16 si8. | \t {si8 sold si} r4 sib |
    re8 si4 sib8 re fa,16 si | mi2 r4 |
    R2.*7 R1.
    r4 re re dod r2 | r4 reb reb do r2 |
    r4 re re dod r2 | r4 reb reb do r2 |
    r4 dob dob sib r2 |
    r4 sib8 sib sib4 la r |
    r8 lab \t { lab sol sib } fad4 r2 |
    r8 solb \t {solb fa lab} mi4 r2 |
    re4 dod r8 dod \t {dod4 si re } |
    sib4 r2 la8 la sol sib |
    \t { fad' fad fad } \t { fad mi sol } red'4 r16 do do do |
    mib8 sol,~ \t {sol fa lab} mi'4 r |
    mi8 reb16 lab fa8 r mi'16 mi reb lab fa8 lab16 \parlato si |
    r2 r4 \t { fa8 reb mi } |
    \t { do' do do } do16 do do do \t {do sib sib } \parlato reb8 |
    R2.
    sol,16 la mi fad dod4 r |
    R2*2
    R2.*3
    \t { red8 red red } red4 red8 red | \t {red red red } fad4 la |
    sol8 sol do4 r | R2. r2 r8 re | \t {re do mib} si4 r |
    R2.*5
    r1 r4 r8 do, | do4 do8 do sol'4 sol8 sol sib sib \t { r lab si} |
    sol2 r mi8 mi mi mi | mib4 mib lab8 lab sol sol si2~ | si4 r r1 |
    R1. R1*5/4 R1 R2. R2 |
  }
}
ActeUnSceneTroisTerBarytonUn = { \BarytonUn
	\relative {
		
    R2*3 R2. R2*2 R2.*3
    r8 re16 si~ si8. sib16 sol sol fad sib | mib,4 r2 | R2.*2
    r8 mib16 mib sol8 fad16 fad si8. si16 lad16 re8 re16 | si16 re8. r4 r2 |
    R1*4 R2. 
    
    R2.*2 dod2 r4 | R2. r2 do!4~| do8 r r2 | R2.
    r4 si r8 si | \t {si si si} si sib r4 | r re r |
    fa2 r8 dod | r4 \t {re re re} | fa2 r4 | r2 dod8 dod | fad4. fa | re2 r4 | R2.*3 |
    r2 r8 re, | re4 r r8 mi | dod2. | r2 re4 | re8 sold~ \t {sold sold sold} sold16 re re sold |
    la2. | r4 la4. re,8 | sib'4~ \t {sib sib sib} | la2 r4 | r la8 la sib4 | sib8 sib \t{sib sib sib} \t{sib la sib}|
    dod2 r4 | R2.*3 | r2 re4~|re r2 |
    R2.*3 R1 |
    R2.*8 |
    lad2 r4 | R2. r4 la!2 | R2.
    r2 sold4 | r fa r8 sold~ | sold4 r2 |
    r4 \t {re dod mi~} mi8 sol4. la4~ | la4~ la8 r r16 reb sib mib |
    solb2.~| solb4 solb r | R2.*8 |
    
    do,2 r4 | r2 sol4 | r r8 do \t { sol sol la } |
    mi4 r2 | R2. r2 fad4 | \t { dod4 dod mib} sib8 sib | R2.*2 |
    
	}
}

ActeUnSceneQuatreBarytonUn = { \BarytonUn
  \relative {
    \partial 4 r4 | R2*5/4 R2*3 R2*5/4 R2*2 R2. R2*3 |
  R1 R2. R1*2 R1. R1*2 R1. R1*2 |
  R2.*4 r4 r8 sib4. si!4 si8 sib lab si |
  sol4 sol8 sol fa lab | mi4 r8 mi4. |
  mi8 re'4 fa,8 dod'4 | R2.*4
  r16 fad, fad fad si8. la16 la la re8 |
  r re sib si sol sold | mi4 r8 dod4 fa8 |
  \t { mi la sol } do4 r | r8 mib sib do la do |
  mib do16 si! fa'4 r | dod r2 | R2.
  r8 dod re la dod4 | sib8 re16 sib mib4 r |
  r r8 la,4. | R2. la4 mi2 | r4 la2 mi'2~ mi8 r r4 |
  R2. R1 R2. R2 R2. R2 R2. R2 R2. 
  
  R1*5 R2 R2. R1*8 si2 r4 fa | mi'1~ mi2 r4 |
  r4 si2.~ si2 r4 | R1*2
  si2. si4 sib sib \t { sib lab si } | fa r la! sol |
  fa mi fa8 mi fa sol la4 mi r2 R2*3
  R2.*2 r8 r16 si' si fad re fa sib8 reb |
  r4 r8 reb, \t {reb do do } | mi dod r4 r8 dod16 dod |
  fad4 r8 mi~ mi16 mi mi8 | la2 r2 | R1*3 R2. R1 R2. R1 R2. R1 R2. R1*2  R2.*3 R1*2
  
  R2. R4. R2. R4. R2 R4. R2*3 R4. R2*2
  lab8 re4 re8 | mi si4~ | si8 r r4 |R2 r4 r8 sold | sold dod si | re2 fa,4 |
  R1 re8. dod16~ dod8 mi~ mi re sol fa | sib4 r r sol8 fa | sib4 r r sol8 fa |
  sib4 re,8. dod16~ dod8 mi~ mi4 | r4 sib'8. la16~ la8 do~ do4 |
  r mib do r | r mib do r | r do r sold | r2 mi4 r | R1*2 R2 R2.*2 R2 R1
  
  R2.*21 R1. R1 R1. R1 R1. r4 la r8 sib lab si | sol4 r r1 |
  r8 la la la fa fa la lab | do2 r8 la sib la do dod si la |
  re2. r4  | r4 la8 la fa4 r dod8 mi re sol  | la4  re,  r1  |
  r8 sold fad fad la4 do8 sol fa re mi si' | la4  r    r1  |
  R1. r4 mib' r8 sib lab si | \t{sol fa lab} mi4  r
  mi8 mi mib mib reb mi | do2 r4 do8 do | do do \t{do do do}
  \t{do do do} sol'4 la16 la sol la sib4| R1 R1.
  r4 la \t{r8 sol sol} \t {do sib do} reb4 lab8 solb |
  la do sib mib fa,4 r r2 | R1.*2
  r2 r8 la \t{la la la} |do mib, mib fa la2 r4 r8 mib | la,4 r r2 |
  }
}

ActeDeuxSceneUnBisBarytonUn = { \BarytonUn
  \relative {
    R1 R2. R2 R1*5/4*17
    r4 r8 re re re mi re re mi | sol2. r2 |
    R1*5/4*6 | r2 r8 re,4. r4 | r mib mib2 r4 |
    r2 mib4 reb mi | do2 r r4 | R1*5/4*2 | r2 lab'4 lab sol8 sol |
    sib4 r sib8 sib sol4 sol8 sol | si!4 fad8 fad fad4 r2|
    r si4 re si8 si | fad4 r2 re'4 si8 re | fa1*5/4~ fa2 re4 si re |
    sold,1 r4 | r2 mi'2 mi4 | mi2 mi4 mi r |
    r1 re4 | fa8 do sol la mi4 r2 | R1*5/4*34
    R1*7/4*7 R2. R1 R2. R2 R2.*9
    r1 r2 si8 si | red1 r2 r4 |
    r re8 re fad2 r4 r8 fad fa fa | la2 r4 | R2.*6
    r1 r16 re re re sib4 r16 re re re |
    sib si sol sold mi2 r1 |
    R1*7/4*7 R1.*5
    
    r2 re8 mib | mi fa lab4 do,8 fad | fa mib re4 do8 fad |
    fa mib re4 do8 fad | fa mib re4 do8 fad | fa lab mi'4 do,8 fad |
    fa mib re4 do8 r |
    R2*2 R2.*2 r4 do8 fad mi sol | red'4 dod,8 sol' mi sold | red'4 r | R4. |
    r4 r8 sib | solb la fa sib | dod4 r | R4. r8 solb sib solb la fa |
    re4 r | R4. r8 solb sib fa la fad re4 r r8 | re'8 re4 re8 re4 re8|
    re4. r8 re re | \t{re4 re mi} si | fad8 sold dod, fad mi la | re4
    r8 fa4. | r4 r8 re solb, sib | fa'4 r8 solb,4 dod8 | fa4 la,8 re fa,4 |
    r la4. dod8 | fa4 sib, re | solb,2 r4 | r dod,8 fa mi sold |
    do4. mi,8 fa mi | sold4 sol8 sol \t {dod fad, la} | fa'2. |
    r4 r8 fa r4 | r8 re r4 | fa8 re mi | si4 r | 
    la4 sib la8 | sib2.~ sib2. r4 |
    R1*5/4*3
  }
}

ActeDeuxSceneDeuxBarytonUn = { \BarytonUn
  \relative {
    R1.*5 r2 r4 fa, dod'2~ | dod4 r r dod |
    r8 dod dod dod do do si si | fa'2 r4  | R2.*4
    R1.*2 r2 r4 fa, dod'2~ | dod4 r r dod | 
    r8 dod dod dod re re dod dod | fad2 r4| R1 R4. R1*6 R2.
    r1 r4 la,8 la do2 r8 la la la re2. r4 |
    r4 r8 do, la' re | do sib sol la re,4 |
    do r8 do  la' re | do si  sold4       |
    r8 si sold4 la8 do | mi2. | do2 r4    | R2 R4. R1*5 R2*6 R1 R2. R1. R1
    r1 r8 la la la | re2. r4 \t{re mi do} |
    la2 r4 | r2 r8 r16 lab sib fa do re   | la4 r2
    \repeat unfold 10 {R1 R2. }
  }
}

ActeDeuxSceneTroisBarytonUn = { \BarytonUn
  \relative {
    R4.*15 r4 r16 do, | mi8 dod r16 mi | sold8 sol r16 do, |
    mi8. dod16 fa mi | sold4 r16 sol |
    \times 3/4 {sold8 sol fa mi} sol r r16 sol |
    \times 3/4 {sold8 sol fa mi} sol4 r8 |
    r4 r16 mi | sold8 fa r16 sol | si8 sold r16 la |
    \times 3/4 {sold8 la  si do} la8. la16 la8 |
    \times 3/4 {sold8 la  si do} la4 r8 | R4.*20
    
    R4*7 r8 si r16 si r do |
    r si si dod sold4 |
    r8 fa la mi \t {sold dod, fa} | do4 R4*9
    r8 re mib16. re32 re16 lab' | sol32 sol si16 r sib |
    re[ la] dod[ lab] \t {sib[ fa sol]} | re4 R4*6 R4.*14 R4*13
    re16 mi8. | r16 re re re | sold4 | R4*5
    r8 mib | \t {re fad sold} | R4*2 |
    r16 si si dod lab8 sib | fa16 fa fa sol |
  }
}
