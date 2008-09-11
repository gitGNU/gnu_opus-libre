%------------------------------------------------------------------%
% Opéra Libre -- contrebasse.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

Contrebasse = {
  \set Staff.instrumentName = \markup { \hcenter-in #27.5 "Contrebasse  "}
  \set Staff.shortInstrumentName = "Ctrb.  "
  \set Staff.midiInstrument = "contrabass"
  \clef "F_8"
}

PrologueContrebasse = { \Contrebasse
	\relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2.*3 R1 | mi,,,2 r8 mi' \t {mi mi mi}
    mi,2.~|mi2 r8 mi' \t {mi mi mi} | mi,2.~| mi4 \pizz mi | 
    r8 mi \t {mi mi mi}| \arco mi2. ~ | mi4 \pizz mi |
    r8 mi \t {mi mi mi}| \arco mi2. ~ | mi4 mi'~| mi8 mi \t {re re re} |
    dod4 r2 | \t {\pizz dod4 re mi} sol4 r | 
    \arco dod,2 r8 sol r dod r sol | dod4 dod sol8 dod~|
    dod4 r | sol dod sib8 dod~| dod sol dod4 | dod sol8 dod r sib | 
    r dod4 sol8 | sib2
  }
}

ActeUnSceneUnBisContrebasse = { \Contrebasse
  \relative {
    dod,,2.
    <dod sold'>~<dod sold'>2 r4 |
    sib16 lab si sol sib lab si sol sib lab si sol |
    dod re mi sol dod,8 r dod16 re mi sol |
    dod,re mi sib sol la sib mi dod re mi sol, |
    lab8 lab16 lab fa8 fa'16 fa mib8 mib16 mib |
    
    %%% Piu vivo %%%
    re4 r r8 do sol la | fad2 \t {sol8 la do} |
    re4 r r8 mib lab, fa| sib4. lab |
    sol2.~sol~ sol4 r reb' | sol2. |
    R2. r4 reb'2~ reb4. r8\fermata r4 |
    R2. r4 reb2~reb~reb8 r\fermata r4 | r2 r4 fad,, sol la |
    
    %%% Largo %%%
    do2 do~ do~ do2.~
    do2~ do2.~ do2~ do2.~
    do4 do2 do4 r r2 |
    R1 R2. R2 R1 R2.*2 R2*2 R2. R2*3 R2. R1 R2.
    R2*3 R2.*3
    
    %%% Adagio %%%
    R1*9
    r2 r4 r8 <sol' si\harmonic si''>~ |
    <sol si\harmonic si''>1~<sol si\harmonic si''>2. r4 |
    R1 sib8 lab si sol~sol2~ |
    sol4 sib sol2~
    sol4 sol, fa sold |
    mi1~mi~mi~mi2 r | R1*13
    R2 \pizz re''4 sold, fa r
    r \arco dod
  }
}

ActeUnSceneDeuxContrebasse = { \Contrebasse
	\relative {
		%%% Air de la Soprano2 %%%
		
		\repeat unfold 9 {R2.*2 R1*2}
		R2. | r4 dod,, r | 
		sol1~  sol~ | sol2.~  sol4 r2 | sol1~ sol2.  r4 |R2.*2 |
		sold1~ sold~| sold2.~ sold~   |sold1~ sold2. r4 |
		\repeat unfold 7 {R2.*2 R1*2} R2.*2 R1 R1-\fermataMarkup |
		
		%%% Récitatif %%%
		
		R2.*2 R1 R2.*3 R1 R2.*6 R2 R2. R1*2 R2.*5 R1 |
		
		%%% Duo %%%
		
		\pizz re'4
		\repeat unfold 16 re
		\repeat unfold 7  reb
		\repeat unfold 4  si
		\repeat unfold 4  sib r |
		\arco sol lab8 sib |
		reb4 dob sib | dob sib lab sib | 
    dob sib lab fa | dob' r8 sib r4 |
		mi,2.~| mi r4| mi'1 | reb2.~|reb~|reb4 r2 | R1 |
    
    %%% Piu vivo %%%
    sol,2.~ | sol1~ sol2 r4 | R2.
    sol2 sol4 sol dod4. dod8 dod dod |
    sol2 r8 sol sol sol | dod4. dod8 \t {dod dod dod} |
    sol4 sol2 r4 |
    dod4 r8 sib lab si |
    sol4 sol sol sol r2 | sol4 sol sol si r2 |
    sib4 sib sib | re r2 | re4 re re re r2 | re4 re re re r2 re4 re re |
    dod r2 dod4 dod dod fa,1~ fa2 r4 si~ | si8 do4. dod2 |
    
    %%% Tempo giusto %%%
    \pizz re4 re re re re re re re |
    dod dod dod dod si si si si | si r r2 |
    \arco <sol sol'>2 r4 |
    \repeat unfold 16 sol8 |
    sol r r2 | r4 \t { re'8 si do} |
    \repeat unfold 14 sold |
    sold r r sold fad la |
    fa2~fa4. fa8 |
    fa2~ fa |
    r8 la sol sib |
    fad2~ fad2. \pizz la'8\CaV r r2
    R1 R2.*3 R2 R2. R1*4
	}
}

ActeUnSceneTroisTerContrebasse = { \Contrebasse
  \relative {
    R23 R2. R2*2 R2.*7
    \pizz mib,,4 r r2
    mi4 r fa r |
    re'8 sol, do fad, lad si sol sold |
    la fad sib sol lab reb sol, si |
    do lab la sib sol si lab la |
    re lab do reb la sib mib la, |
    dod re sib si do dod |
    
    %%% Poco meno %%%
    re4 r2 R2.*2
    \arco re'2.~\CaV re~\CaV re~\CaV re~\CaV re4\CaV r2 |
    re2.~\CaV re~\CaV re4\CaV r2 |
    <re, sol\harmonic re''>2.~\CaV
    <re sol\harmonic re''>~\CaV
    <re sol\harmonic re''>~\CaV
    <re sol\harmonic re''>~\CaV
    <re sol\harmonic re''>2\CaV r4
    <re sol\harmonic re''>2.:32~\CaV
    <re sol\harmonic re''>8\CaV r r2
    \pizz fa4 r2 R2.*2
    fa,4 r2 R2.*2
    dod'4 r2 R2.*2
    dod4 r2 R2.
    r8 \arco mi fa sold fa mi |
    la,2.~\CaV la~\CaV la2\CaV r4 |
    <la la'>2.~ <la la'>~<la la'>4 r8 \pizz la' r4 |
    sold r8 si r16 fad8. | fa4 do r |
    mib r sib | la r8 la' sol, sol' sib, sib' |
    \arco fad,2.~fad~fad2 r4 |
    fad2.~fad~ fad2 r4 |
    fa2.~fa~fa4 dod'2 |
    fa2.~fa~fa4 la2 |
    dod,2.~dod~dod4 la'2 |
    dod,2.~dod~dod4 fa2 |
    la,2.~la~la~la2 r4 |
    la'2.\CaV la,4\stopped r2 | R2.*13
  }
}

ActeDeuxSceneUnContrebasse = { \Contrebasse
  \relative	{
		R2.*4 R2 R2.*2 R2 | 
    r4 sol2~\CaV sol2.~\CaV sol2.~\CaV sol4\CaV r | 
    R2. R2 | R2.*2 R2 |
    r4 sold2~ sold2.~ sold2.~ sold4 r | 
    R2. R2 | R2.*2 R2 | R2.*2 | R2. | 
    \ttt { mi8[ mi16 mi mi mi] } \ttt { mi[ mi mi mi mi mi] }|
  }
}
