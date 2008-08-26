%------------------------------------------------------------------%
% Opéra Libre -- saxophone1.ly                                     %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

SaxAltoUn = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Saxophone Alto  "}
  \set Staff.shortInstrumentName = "Sax. A  "
  \set Staff.midiInstrument = "alto sax"
}

PrologueSaxophoneUn = { \SaxAltoUn
	\relative { 
    %%% Introduction %%%
    
    \partial 4 r4 R2.*3 R1
    mi2~mi4 r mi16 fa8.~fa4  \t {mi8 fa4~} fa2~ fa4 r | mi2 r4 |
    R2*2 
  }
}

ActeUnSceneDeuxSaxophoneUn = { \SaxAltoUn
	\relative { 
		%%% Air de la Soprano2 %%%
		
		\repeat unfold 9 { R2.*2 R1*2} R2.*2 |
		re'8 mib re sib lab sib re mib | re sib lab sib re mib lab, sib | 
		re mib lab, sib re mib | lab, sib re mib r4 |
		re8 mib re sib lab fa lab sib | re mib re sib lab sib lab fa |
		re fa re do re4 | R2. | lab1~| lab2. r4 | 
    \repeat unfold 8 {R2.*2 R1*2}
		R2.*2 R1 R1-\fermataMarkup |
		
		%%% Récitatif %%%
		
		R2.*2 R1 R2.*3 R1 R2.*3 r2 \repeat tremolo 4 {mib'32 mi!} 
    \repeat tremolo 12 {mib32 mi!} | do8 r r2 R2 R2. R1*2 R2.*5 R1 | 
		
		%%% Duo %%%
		
		R2. R1 R2. R1 r2 r8 re | mi4 r r2 | R2. r4 r16 re re re sol2 |
		r4 r16 lab lab lab reb4~| reb r | R2 R2. R1*2 R2. 
		mi,,2. | fad r4 lad2 si | sold2.~ sold~ sold4 r2 | r2 r8 sib'4. |
    
    %%% Piu vivo %%%
    sol,4 r2 | R1 R2.*2 R1
    r4 re''do re8 la~ la4 r2|
    r4 re  do do8 si~ si4 r2|
    r4 re  do si8 mi~ mi4 r | R2.
    r4 mi  re si8 mi~ mi4 r |
    r mi re mi8 sold~sold4 r|
    R2.*2
    r16 sib, r8 r2 |
    R2.*2
    r4 r16 dod r8 r4 | R2.
    
    %%% Poco allargando %%%
    \t {fa,4 fa fa}
    \t {fad fad fad}
    \t {sol sol sol}
    sold2 red dod |
    %%% Tempo giusto %%%
    re4 r r2 | R1*4 R2.
    sol,1~ sol4 \t { sol8 sol sol} sol2~ | sol8 r r2 |
    R2 dod2~ | dod dod2.~ dod8 r r2 |
    r4 r8 si | mi si r si re si r si mi si r la |
    sol' mi si sol' la4 r8 mi la mi r mi si' la |
    sol' r r2 |
    R1 R2.*3 R2 R2. R1*4
	}
}

ActeDeuxSceneUnSaxophoneUn = { \SaxAltoUn
	\relative {
		R2.*4 R2 R2.*2 R2 R2.*3 R2 | R2. R2 R2.*2 R2 R2.*3 R2 |
    la'4 re,2~ | re4 r | mi4. la,8~ la4~ | la2 r4 | si2 |
    mi,2.~ | mi2.~ | mi2.~ | mi4 r |
	}
}
