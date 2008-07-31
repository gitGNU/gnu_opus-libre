%------------------------------------------------------------------%
% Opéra Libre -- saxophone2.ly                                     %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

SaxAltoDeux = { 
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Saxophone Alto  "}
  \set Staff.shortInstrumentName = "Sax. A  "
  \set Staff.midiInstrument = "alto sax"
  \clef treble
}

SaxophoneBaryton = { 
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Saxophone Baryton  "}
  \set Staff.shortInstrumentName = "Sax. B  "
  \set Staff.midiInstrument = "baritone sax"
  \clef bass
}

PrologueSaxophoneDeux = { \SaxophoneBaryton
	\relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2.*3 R1
  }
}

ActeUnSceneDeuxSaxophoneDeux = { \SaxAltoDeux
	\relative { 
		%%% Air de la Soprano2 %%%
		
		\repeat unfold 9 { R2.*2 R1*2} R2.*2 |
		re'8 mib re sib lab sib re4 | re8 mib re sib lab sib re mib |
		lab, sib re mib lab, sib | re mib r2 |
		lab,8 sib lab fa lab sib re mib | re sib lab fa re fa re do |
		lab4 r sol8 lab | do re do lab do4 | re,1~| re2. r4 | 
    \repeat unfold 8 {R2.*2 R1*2}
		R2.*2 R1 R1-\fermataMarkup |
		
		%%% Récitatif %%%
		
		R2.*2-\markup "Prenez le Sax. baryton" \SaxophoneBaryton 
    R1 R2.*3 R1 R2.*4 
    \repeat tremolo 12 {si'32 do} | 
    si8 r r2 R2 R2. R1*2 R2.*5 R1 | 
		
		%%% Duo %%%
		
		\repeat unfold 17 re,4
		\repeat unfold 7 reb
		\repeat unfold 4 si
		\repeat unfold 4 sib r
		sol4 lab8 sib | reb4 reb lab | reb lab fa lab | reb lab fa reb |
		reb' r8 lab r4 | mi2.~| mi r4 | mi'1 | dod2.~ dod~ dod4 r2 R1 |
	}
}

ActeDeuxSceneUnSaxophoneDeux = { \SaxophoneBaryton
	\relative {
		R2.*4 R2 R2.*2 R2 mi,2.~ mi2.~ mi2.~ mi4 r | R2. R2 R2.*2 R2 |
    R2.*3 R2 | la4 re,2~ | re4 r | mi4. la,8~ la4~ | la2 r4 |
    si2 | mi,2.~ | mi2.~ | mi2.~ | mi4 r |
	}
}
