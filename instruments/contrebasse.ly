%------------------------------------------------------------------%
% Opéra Libre -- contrebasse.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\version "2.10"
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
    mi,2.~|mi2 r8 mi' \t {mi mi mi} | mi,2.~| mi4 mi-"pizz" | 
    r8 mi \t {mi mi mi}| mi2.-"arco" ~ | mi4 mi-"pizz" |
    r8 mi \t {mi mi mi}| mi2.-"arco" ~ | mi4 mi'~| mi8 mi \t {re re re} |
    dod4 r2 | \t {dod4-"pizz" re mi} sol4 r | 
    dod,2-"arco" r8 sol r dod r sol | dod4 dod sol8 dod~|
    dod4 r | sol dod sib8 dod~| dod sol dod4 | dod sol8 dod r sib | 
    r dod4 sol8 | sib2
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
		
		re'4-\markup "pizz."
		\repeat unfold 16 re
		\repeat unfold 7  reb
		\repeat unfold 4  si
		\repeat unfold 4  sib r |
		sol-\markup "arco" lab8 sib |
		reb4 dob sib | dob sib lab sib | dob sib lab fa | dob' r8 sib r4 |
		mi,2.~| mi r4| mi'1 | reb2.~|reb~|reb4 r2 | R1 |
		
		
	}
}

ActeDeuxSceneUnContrebasse = { \Contrebasse
\relative	{
		R2.*4 R2 R2.*2 R2 | r4 sol2~\CaV sol2.~\CaV sol2.~\CaV sol4\CaV r | R2. R2 | R2.*2 R2 |
        | r4 sold2~ sold2.~ sold2.~ sold4 r | R2. R2 | R2.*2 R2 | R2.*2 | r2. | \ttt { mi8[ mi16 mi mi mi] } \ttt { mi[ mi mi mi mi mi] }|
		}
}
