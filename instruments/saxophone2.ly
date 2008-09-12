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

ActeUnSceneUnBisSaxophoneDeux = { \SaxAltoDeux
  \relative {
    R2.*7
    re4 r r2 | r4 mib,2
    re4 r r2 | r4 lab'2
    sol8 r do'2 | fa, sib,4~|sib lab2 | R2.*2
    sib2.~sib4. r8\fermata r4 | R2.
    sib2.~sib2~sib8 r\fermata r4 | R1 R2
    
    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 si | sib2 r4 si | sib2 r4
    r sol solb fa r2 |
    R2.*2 R2*2 
    r2 r8 la | lab4 r8 la | lab2 |
    r8 sib r4 | r8 la mi' r r4 |
    r2 r8 lab, fa' mi |
    R2. R2*3 R2.*3
    
    %%% Adagio %%%
    R1*33
    R2*4
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
		
		R2.*2-\markup "Prenez le Sax. Baryton" \SaxophoneBaryton 
    R1 R2.*3 R1 R2.*4 
    \repeat tremolo 12 {si'32 do} | 
    si8 r r2 R2 R2. R1*2 R2.*5 R1 | 
		
		%%% Duo %%%
		
		\repeat unfold 17 re,4
		\repeat unfold 7 reb
		\repeat unfold 4 si
		\repeat unfold 4 sib r
		sol4 lab8 sib | reb4 reb lab | reb lab fa lab | reb lab fa reb |
		reb' r8 lab r4 | mi2.~| mi r4 | mi'1 | dod2.~ dod~ dod4 r2 r2 r8 si'4. |
    
    %%% Piu vivo %%%
    sol,4 r2 | R1-\markup "Prenez le Sax. Alto" \SaxAltoDeux R2.*2 R1
    r4 la''fad | la8 mib~mib4 r2|
    r4 la  fad |sol8 mi~ mi4  r2|
    r4 la  sol |mi'8 si~ si4  r | R2.
    r4 si  la  |mi'8 si~ si4  r |
    r  si  la  | si8 re~ re4  r |
    R2.*2 r16 la r8 r2 |
    R2.*2 r4 r16 sold r8 r4 |
    R2.
    %%% Poco allargando %%%
    \t {fa,4 fa fa}
    \t {fad fad fad}
    \t {sol sol sol}
    re'2 | R1
    %%% Tempo giusto %%%
    R1*5 R2. R1*2 R2. R2
    sold,2~ sold | sold2.~ sold8 r r2 |
    fa4. fa8 la fa r fa si la r fa la fa r fa |
    si re mi si fad4 r8 re' mi la, r re mi si'|
    sold r r2 |
    R1 R2.*3 R2 R2. R1*4
	}
}

ActeUnSceneTroisSaxophoneDeux = { \SaxophoneBaryton
  \relative {
    R2.*4 sol8 mi4 sol8 mi4 r r8 mi4 dod8 si2.~ si8 r r2 |
  }
}

ActeUnSceneTroisTerSaxophoneDeux = { \SaxophoneBaryton
  \relative {
    R2*3 R2. R2*2 R2.*7 R1*6 R2.*19
    r4 mib,2 mib re4~ re re r |
    r  mib2  mib re4~ re re r |
    r sol2 sol fad4~fad fad r |
    r sol2 sol fad4~fad fad r |
    r mib2 mib mib4~mib2 r4 |
    r mib2 sol si4~ si r2 |
    R2.*3 R1
    r4 si,2 si si4~ si2 r4 |
    r  si2  si si4~ si2 r4 |
    r sol'2 sol fad4~fad r2|
    r4 sol2 sol fad4~ fad r2 |
    r4 mib2 mib re4~ re re r |
    r  re'2 sol fad4~fad sol fad |
    r8 fad sol re mib sib si fad' sol re mib sib |
    si4 r8 fad' sol,4 | r8 re~ re4 r | R2.*15
  }
}

ActeDeuxSceneUnSaxophoneDeux = { \SaxophoneBaryton
	\relative {
		R2.*4 R2 R2.*2 R2 mi,2.~ mi2.~ mi2.~ mi4 r | R2. R2 R2.*2 R2 |
    R2.*3 R2 | la4 re,2~ | re4 r | mi4. la,8~ la4~ | la2 r4 |
    si2 | mi,2.~ | mi2.~ | mi2.~ | mi4 r |
	}
}
