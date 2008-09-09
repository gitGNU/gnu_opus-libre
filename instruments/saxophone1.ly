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

ActeUnSceneUnBisSaxophoneUn = { \SaxAltoUn
  \relative {
    R2.*7
    re'4 r r2 | r4 fad,,2 |
    re'4 r r2 | r4 sib2 |
    re8 r fa'2 | si, dod,4~| dod do2 | R2.*2
    fa2.~fa4. r8\fermata r4 | R2.
    fa2.~fa2~fa8 r\fermata r4 | R1 R2
    
    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 sib | sol2 r4 sib | sol2 r4
    r la, si2 r |
    R2.*2 R2*2 
    r2 r8 sib' | sol4 r8 sib | sol2 |
    r8 sol r4 | r8 sol sib r r4 |
    r2 r8 sol sib reb |
    R2. R2*3 R2.*3
    
    %%% Adagio %%%
    R1*33
    R2*4
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

ActeUnSceneTroisTerSaxophoneUn = { \SaxAltoUn
  \relative {
    R2*3 R2. R2*2 R2.*7 R1*6 R2.*19
    r4 sib2 | sib si4~ si si r |
    r  sib2 | sib si4~ si si r |
    r  re2 | re mib4~mib mib r |
    r  re2 | re mib4~mib mib r |
    r  si2   si si4~ si2 r4 |
    r  si2 mib sol4~ sol r2 |
    R2.*3 R1
    r4 sib,2 sib sib4~ sib2 r4 |
    r  sib2  sib sib4~ sib2 r4 |
    r  sib2  sib si4~ si r2 |
    r4 sib2  sib si4~ si r2 |
    r4 sib2  sib si4~ si si r  |
    r  sib2 re mib4~ mib re mib|
    r8 re mib sib si fad sol re' mib sib si fad |
    sol4 r8 re' mib4 r8 fad,8~ fad4 r |
    R2.*15
  }
}

ActeDeuxSceneUnSaxophoneUn = { \SaxAltoUn
	\relative {
		R2.*4 R2 R2.*2 R2 R2.*3 R2 | R2. R2 R2.*2 R2 R2.*3 R2 |
    la'4 re,2~ | re4 r | mi4. la,8~ la4~ | la2 r4 | si2 |
    mi,2.~ | mi2.~ | mi2.~ | mi4 r |
	}
}
