%------------------------------------------------------------------%
% Opéra Libre -- violoncelle1.ly                                   %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


\include "italiano.ly"

VioloncelleUn = { 
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Violoncelle 1  "}
  \set Staff.shortInstrumentName = "Vlc. 1  "
  \set Staff.midiInstrument = "cello"
  \clef bass
}

PrologueVioloncelleUn = { \VioloncelleUn
  \relative { 
    %%% Introduction %%%
    
    \partial 4 r4 R2.*2 \clef treble si''?2.\upbow ~ si1\glissando 
    mi,,2\downbow \clef bass |r8 mi,, \t {mi mi mi} mi2. | r4 \repeat tremolo 8 red''32 ~ red8 r
    \t {mi,,8 mi mi} mi'2.~mi2~mi~mi2.~mi2~mi~ <mi la>2.~<mi la>4 <mi la>~<mi la>8 la \t {la si re}|
    la'2 r4 dod,,,16 dod dod re re re mi mi | sol sol sol sib sib sib do do | 
    dod2 r8 sol r dod r sol | dod4 dod sol8 dod~|
    dod4 r | sol dod sib8 dod~| dod sol dod4 | dod sol8 dod r sib | 
    r dod4 sol8 | sib2 
    
  }
}

ActeUnSceneDeuxVioloncelleUn = { \VioloncelleUn
	\relative {
    %%% Air de la Soprano2 %%%
    
    R2.*2 R1*2 R2.*2 re,4 la' sold8 mi re4 mi8 re la' sold r mi sold4 |
    mi4 re8 la' sold4 la8 sold mi re r la'|
    re,8 mi sold4 la re,8 la' | r re, mi sold la4 sold8 re | mi4 sold la8 mi | r sold la re, mi4~|
    mi1~ mi2 r2 | R2.*2 R1*2 R2.*2 | sold,1~ sold4 re'8 fad re dod sold4~| sold2.~|sold4 r2|
    dod1~ dod~| dod2 r4 | r2 fad8 re | dod1~ dod~| dod2 r4| r dod r | mi1~ mi2. r4 | dod2.~ dod2 r4 |
    sol!1~  sol~ | sol2 r4 | sol re' do8 lab | sol2. r4| sol re' do8 lab sol4 | lab8 sol do re r4| R2. |
    sold1~ sold~| sold2.~ sold~   |sold1~ sold2. r4 | R2.*2 R1*2 R2.*2 R1*2 R2.*2 |
    \clef treble la'1\CaV ~ la~ la2.~ la~ la1~ la~ la2.~ la2 r4| R1*2 R2.*2 R1*2 R2.*2| R1*2 R2.*2 R1|
    R1-\fermataMarkup \clef bass |
    
    %%% Récitatif %%%
    
    r4 r8 mi,4.| dod2.~|dod1~|dod2 r4| 
    r r8 reb4. | sib2.~|sib1~|sib2 r4|
    R2.| r4 r8 mib4 lab,8~| lab2.~|lab8 lab~ \t {lab lab lab} \repeat tremolo 8 lab32 |
    lab8 r r2| R2| r4 r8 reb4.| sol,1~ sol~ sol2.~ sol~ sol~ sol2 r4 | sib2.~| sib r4|
    
    %%% Duo %%%
    
    <re, sib'>4-\markup "pizz."
    \repeat unfold 15 <re sib'> r8 <re sib'>-\markup "arco" |
    <reb lab'> r <reb lab'>4-\markup "pizz."
    \repeat unfold 5 <reb lab'> 
    \repeat unfold 3 <sib' sol'> r8 <sib sol'>-\markup "arco" |
    <la fa'>8 r <la fa>4-\markup "pizz." <la fa'> | <la fa'> r | 
    sol-\markup "arco" lab8 sib |
    reb4 dob sib | dob sib lab sib | dob sib lab fa | dob' r8 sib r4 |
    mi8 mi fad fad mi mi |fad fad mi mi fad fad mi mi fad1 |
    sib2.~|sib~| sib4 r2 | R1
	}
}

ActeDeuxSceneUnVioloncelleUn = { \VioloncelleUn
  \relative do'' { \clef treble
    la4-\markup "pizz." r r | la r8 la r4 | la la la | la r2 | R2 | R2.*2 | R2 |
    \clef bass r4 << s2-\markup "arco" \\ \repeat "tremolo" 4 { si,16 re16 } >> | \repeat "tremolo" 6 { si16 re16 } | \repeat "tremolo" 6 { si16 re16 } | sold,4 r |
    R2. R2 R2.*2 R2 | \t {r8 sold si}sol'!2~ | sol8 sold, sol'!2~ | sol8[ mi~] mi[ red] \t {sol \clef treble do[ si]} | sol'2\glissando |
    la2.~\CaV | la2~\CaV | la2.~\CaV | la2\CaV r4 | R2 | R2.*2 | 
    \ttt { la,8[ la16 la la la]} \ttt {la[ la la la la la]} \clef bass \repeat unfold 3 { \ttt { mi[ mi mi mi mi mi] } } |
	}
}
