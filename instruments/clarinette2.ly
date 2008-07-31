%------------------------------------------------------------------%
% Opéra Libre -- clarinette2.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

ClarinetteDeux = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Clarinette 2  "}
  \set Staff.shortInstrumentName = "Cl. 2  "
  \set Staff.midiInstrument = "clarinet"
  \clef treble
}

ClarinetteBasse = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Clarinette Basse  "}
  \set Staff.shortInstrumentName = "Cl. B  "
  \set Staff.midiInstrument = "clarinet"
  \clef bass
}

PrologueClarinetteDeux = { \ClarinetteDeux
	\relative { 
    %%% Introduction %%%
    
		\partial 4 r4 R2.*3 R1 | 
    mi,2~ mi4 r | mi2 r4 |
    mi2~ mi mi2.~ mi4 r R2 | 
    \tt {sold16 mi sol! sold sol!} si2~|
    si4 r | R2 \tt {sol16 mi fa la sib} do2 ~ | 
    do4 r | r r8 \t {la16 sol re'}|
    mi2 r4 | R2*2 | mi'?2 r4 | R2 r2 mi,8 mi~|
    mi2 | mi2
	}
}

ActeUnSceneDeuxClarinetteDeux = { \ClarinetteDeux
	\relative {
		%%% Air de la Soprano2 %%%
		
		R2.*2	R1*2  R2.*2 R1*2 R2.*2	R1*2	R2.*2	R1*2	R2.*2
		R1 | re,8 fa sold si sold si sold fad |
		re r r2 | re8 fad sold4 r |
		R1*2 |
		dod,8 fad sold si sold fad | dod4 r2 |
		dod1~ | dod2 r4 sold''8 la |
		sold mi re si sold4 | R2. |
		dod,1~ | dod2 r4 mi8 fa |
		la si re fa re4 | r dod, r |
		mi1~ | mi2. r4 | R2.*2 |
		lab'1~| lab2. r4 | R2.*2 | lab1~| lab2. r4 |
		R2.*2 | r4 sold,8 re' sold, re dod re | 
    sold re' sold, re dod re sold4 |
		dod,8 re fad2~ | fad2. \repeat unfold 8 {R1*2 R2.*2} |
		R1 r2 la'2\fermata |
		
		%%% Récitatif %%%
		
		R2.*2 R1 R2.*3 R1 R2.*3 
		\repeat tremolo 12 {si,32 do} |
		\repeat tremolo 12 {sol'32 lab}| 
    sol8 r r2 R2 R2. R1*2 R2.*5 R1 |
		
		%%% Duo %%%
		
		\repeat unfold 18 re,8 r
		\repeat unfold 13 re r re
		\repeat unfold 8  reb
		\repeat unfold 6  mi
		\repeat unfold 4  sol r
		\repeat unfold 3  sol
		\repeat unfold 8  fa r4 | r8
		\repeat unfold 3  fa
		\repeat unfold 10 lab r
		\repeat unfold 13 lab r
		\repeat unfold 3  lab
		\repeat unfold 3  {dod dod mi mi} sold r
		\repeat unfold 2  {lad lad sold sold} do2.~ do~ do4 r2 R1 | 
	}
}


ActeDeuxSceneUnClarinetteDeux = { \ClarinetteDeux
	\relative {
		R2.*4 R2 R2.*2 R2 | mi2.~ | mi2.~ | mi2.~ | mi4 r |
    mib'4 sib2~ | sib4 r | do8 sol~ sol2~| sol2.~ | sol4 r | 
    mi,2.~ | mi2.~ | mi2.~ | mi4 r |
		R2. R2 R2.*2 R2 | R2. | re''2.~| re2.~| re4 r |
	}
}

