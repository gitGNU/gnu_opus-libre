%------------------------------------------------------------------%
% Opéra Libre -- flute1.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\version "2.10"
\include "italiano.ly"

FluteUn = { 
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Flûte 1  "}
  \set Staff.shortInstrumentName = "Fl. 1  "
  \set Staff.midiInstrument = "flute"
  \clef treble
}

Piccolo= {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Piccolo  "}
  \set Staff.shortInstrumentName = "Picc.  "
  \set Staff.midiInstrument = "flute"
  \clef "G^8"
}

PrologueFluteUn = { \FluteUn
	\relative {
    %%% Introduction %%%
    
		\partial 4 r8 \tt {mi'32 fa si mi fa} sib2.~ sib~ sib~ sib2~ sib4~ sib8 r
		mi,,,2~mi4 r | mi4~ \repeat tremolo 8 mi32 ~ mi8 r |
    fa2~ fa mi2.~ mi4 r |
    r mi~| mi2.~ | mi4 r |
    r mi~| mi2.~ | mi4 r |
    r r8 \t { mi16 la re} | mi2 r4 | R2 |
    r4 \tt {mi16 la sol do sib} mib2 r4 |
    r4 \tt {sold,16 si mi re fa} sol!2 r4|
    R2 r4 r8 \t {lab16 mib fa} do8 r | re, r r4 |
    mi,!2
    
	}
}

ActeUnSceneUnFluteUn= { \FluteUn
	\relative {
		do2~ do~ do r4 | do2~ do~ do r4 |
		do2~ do4~ r fad'4. r8 r4 | do,2~ do4 r fad'4. r8 r4  |
		do,2~ do8 r do4 fad'4. r8 r4 | do,2~ do8 r do4 fad'4. r8 r4 |
		si1 | fad2 r4 | mib1 | do2 r4 |
		do'1 | la2 r4 la2. mi4~ | mi8 r sold4 la | do1 |
	}
}

ActeUnSceneDeuxFluteUn= { \FluteUn
	\relative {
		%%% Air de la Soprano2 %%%
		
		R2.*2-\markup "prenez le Piccolo" \Piccolo  R1*2 R2.*2  R1*2  R2.*2	
		R1*2	R2.*2	R1*2	R2.*2	R1*2	R2.*2  R1*2	R2.*2
		re''4 la' sold8 mi re4 | mi8 re la' sold r mi sold4 |
		mi re8 la' sold4 | la8 sold mi re r la' |
		sol!4 do si8 sol fa4 | sol8 fa do' si r sol si4 |
		sol fa8 do' si4 | do8 si sol fa r do' |
		fa, sol si4 do fa,8 do' | r fa, sol si do4 si8 fa |
		sol4 si do8 sol~ | sol2 r4 | \repeat unfold 6 {R1*2 R2.*2}
		R1 |  r2 sol4 do | si8 sol fa4 sol8 fa | do' si r sol si4 |
		sol4 fa8 do' si4 do8 si | sol fa r do' fa, sol si4 |
		do fa,8 do' r fa, | sol si do4 r | si8 do si sol fa4 si8 do | si sol fa sol si4 si8 do |
		si sol fa4 si8 do | si sol fa sol si4 | si8 do si sol fa sol si do | si sol fa sol r si do si | 
		sol fa sol si do si |sol fa r si do si | sol fa sol si do si sol4 | si8 do si sol fa sol si do | 
		si4 fa8 sol si do | si4 fa8 sol si do | si4 fa8 solb sib do sib4 | fa solb sib2\fermata
		
		%%%% Récitatif %%%
		
		R2.*2 R1 R2.*3 R1 R2.*4 r2 r8 r16 fa32 si | mi?8 r r2 R2 R2. R1*2 R2.*5 R1 | 
		
		%%% Duo %%%
		
		\repeat unfold 4 {R2. R1} R2. r8 
		\t {mi,16 fa sol} sib8 r8 |R2 r4 
		\t {mi,16 fa sol} sib8 r4 |r8 r16 fa16 do16. si'!32 mi8 r2 | r2 r8
		\t {mi,16 fa sol} sib8 r8 |r2 r8
		\t {mi16 red dod} lad8 r8 r2 |	R1 red,,4 mi red mi sol2.~|sol2 r4 | r8.
		\t {fa'32 mi re } si8  r8 r8
		\t {la16 sold fad} red8 r8 r4 r2 |
	}
}


ActeDeuxSceneUnFluteUn = { \FluteUn
\relative {
		R2.*4 R2 R2.*2 R2 | r2 \tt {si''16 red re fad fa}| la4~ la8[ fa]~ fa8 r | r8. red16 si4. la'8~ | la2~ |
        la2.~ | la2~ | la4 r \t {r8 sol,, mib'} | fad2.~ | fad4 r |
        r \tt {sib16 mib dod fad mi} la4~ | la4. sib,8 la'4~ | la2.~| la4 r | R2. R2 | R2.*2 R2 |
        mi2.~| mi2.~| mi2.~| mi4 r |
	}
}
