%------------------------------------------------------------------%
% Opéra Libre -- violoncelle2.ly                                   %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

VioloncelleDeux = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Violoncelle 2  "}
  \set Staff.shortInstrumentName = "Vlc. 2  "
  \set Staff.midiInstrument = "cello"
  \clef bass
}

PrologueVioloncelleDeux = { \VioloncelleDeux
	\relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2.*2 \clef treble sib''2.\upbow ~ sib1\glissando 
    mi,,2\downbow \clef bass |r8 mi,, \t {mi mi mi} mi2.~ | mi2 r8 mi
    \t {mi8 mi mi} mi2.~mi2~mi~mi2.~mi2~mi~ mi2.~mi4 mi~mi8 mi 
    \t {re re re}|
    dod4 r2 | \t { \pizz dod4 re mi} \t {sol sib do} |  
    \arco dod2 r8 sol r dod r sol | dod4 dod sol8 dod~|
    dod4 r | sol dod sib8 dod~| dod sol dod4 | dod sol8 dod r sib | 
    r dod4 sol8 | sib2 
  }
}

ActeUnSceneDeuxVioloncelleDeux = { \VioloncelleDeux
	\relative {
    %%% Air de la Soprano2 %%%
    
    R2.*2 | R1*2| R2.*2 | R1*2 | R2.*2| 
    re,8 mi sold4 la re,8 la' | 
    r re, mi sold la4 sold8 re | 
    mi4 sold la8 mi | r sold la re, mi4~|
    mi1~ mi2 r2 | R2.*2 | R1*2 | R2.*2 | R1*2 | R2.*2|
    dod,1~ dod~| dod2 r4 | R2.| 
    dod1~ dod~| dod2 r4| r dod r | 
    mi1~ mi2. r4 | dod2.~ dod2 r4 |
    sol'1~  sol~ | sol2 r4 | 
    sol re' do8 lab | sol2. r4| 
    sol re' do8 lab sol4 | lab8 sol do re r4| R2. |
    sold1~ sold~| sold2.~ sold~   |
    sold1~ sold2. r4 | R2.*2 R1*2 R2.*2 R1*2 R2.*2 |
    \clef treble re'1~\CaV re~ re2.~ re~ re1~ re~ re2.~ re2 r4|
    R1*2 R2.*2 R1*2 R2.*2| R1*2 R2.*2 R1|
    R1-\fermataMarkup \clef bass |
    
    %%% Récitatif %%%
    
    R2.*2 R1| R2.*3 | R1 R2.*2 r4 r8 mib,4 lab,8~| lab2.~|
    lab8 lab~ \t {lab lab lab} \repeat tremolo 8 lab32 |
    lab8 r r2 | R2 R2. R1*2 | R2.*4 re,2.~ re2. r4 |
    
    %%% Duo %%%
    
    \pizz <re sib'>4
    \repeat unfold 15 <re sib'> r8 \arco <re sib'> |
    <reb lab'> r \pizz <reb lab'>4
    \repeat unfold 5 <reb lab'> 
    \repeat unfold 3 <sib' sol'> r8 \arco <sib sol'> |
    <la fa'>8 r \pizz <la fa>4 <la fa'> | <la fa'> r | 
    \arco sol lab8 sib |
    reb4 dob sib | dob sib lab sib | 
    dob sib lab fa | dob' r8 sib r4 |
    si!8 si lad lad si si | 
    lad lad si si lad lad si si |si1 
    lab2.~ lab~ lab4 r2 R1 |
    
    %%% Piu vivo %%%
    <sol sol'>4 sol16 sol sol sol lab lab lab lab |
    sib sib sib sib reb reb reb reb mib mib mib mib mi mi mi mi |
    fad fad fad fad la la la la si si si si |
    do4 re, dod, |
    sol'2 sol4 sol | dod,4. dod8 dod dod |
    sol'2 r8 sol sol sol | dod,4. dod8 \t {dod dod dod} |
    sol'4 sol2 r4 |
    dod,4 r8 sib' lab si |
    sol4 sol sol |
    sol \tt {si'16 sold fad red dod} \tt {fad red dod do sib} |
    sol4 r sol |
    si \tt {re'16 dod si sold fad} \tt {sold fad fa mib do} |
    sib4 r sib |
    re r2 | re4 re re | re r2 | re4 re re | re r2 | re4 re re |
    dod r2 | dod4 dod dod | fa,1~ fa2 r4 si~ | si8 do4. dod2 |
    
    %%% Tempo giusto %%%
    <re, sib'>4 <re sib'> <re sib'> <re sib'> |
    <re sib'> <re sib'> <re sib'> <re sib'> |
    <dod la'> <dod la'> <dod la'> <dod la'> |
    <red si'> <red si'> <red si'> <red si'> |
    \pizz sol r8 \arco sib4 lab si8 |
    <sol sol'>2 r4 | \repeat unfold 32 sol16
    sol8 r r2 |
    r4 \t {re'8 si dod} |
    \repeat unfold 28 sold16
    sold8 r r sold fad la |
    fa2 fa4. fa8 
    <fa fa'>2 | <fa fa'> |
    r8 la sol sib |
    fad4. fad8 | fad4. fad8 <fad re'>4\glissando \clef tenor |
    <fad'' la>8 r r2 |
    
    %%% Largo assai %%%
    R1 R2.*3 R2
    solb2.~ solb2. r4 | 
    r2 \pizz fa'4 mi | mib r sib r | re, r r2 |
	}
}

ActeDeuxSceneUnVioloncelleDeux = { \VioloncelleDeux
  \relative { \clef treble
    \pizz la4 r r | la r8 la r4 | la la la | 
    la r2 | R2 | R2.*2 | R2 |
    \clef bass  r4 << \arco s2 \\ 
    \repeat tremolo 4 { sold,16 lad16 } >> | 
    \repeat tremolo 6 { sold16 lad16 } | 
    \repeat tremolo 6 { sold16 lad16 } | si4 r |
    R2. R2 R2.*2 R2 | 
    r4 \repeat tremolo 4 { do16 red16 } | 
    \repeat tremolo 6 { do16 red16 } | 
    \repeat tremolo 2 { do16 red16 } 
    \repeat tremolo 4 { si16 do } | sold4 r |
    R2. R2 R2.*2 R2 | R2. | R2. | 
    \ttt { mi'8[ mi16 mi mi mi] } 
    \repeat unfold 4 { \ttt { re[ re re re re re] } } |
	}
}
