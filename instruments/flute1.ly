%------------------------------------------------------------------%
% Opéra Libre -- flute1.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

FluteUn = { 
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Flûte 1  "}
  \set Staff.shortInstrumentName = "Fl. 1  "
  \set Staff.midiInstrument = "flute"
  \clef treble
}

Piccolo = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Piccolo  "}
  \set Staff.shortInstrumentName = "Picc.  "
  \set Staff.midiInstrument = "flute"
  \clef "G^8"
}

PrologueFluteUn = { \FluteUn
	\relative {
    %%% Introduction %%%
    
		\partial 4 r8 
    \tt {mi'32 fa si mi fa} sib2.~ sib~ sib~ sib2~ sib4~ sib8 r
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

ActeUnSceneUnFluteUn = { \FluteUn
	\relative {
		do2~ do~ do r4 | do2~ do~ do r4 |
		do2~ do4~ r fad'4. r8 r4 | do,2~ do4 r fad'4. r8 r4  |
		do,2~ do8 r do4 fad'4. r8 r4 | do,2~ do8 r do4 fad'4. r8 r4 |
		si1 | fad2 r4 | mib1 | do2 r4 |
		do'1 | la2 r4 la2. mi4~ | mi8 r sold4 la | do1 |
	}
}

ActeUnSceneUnBisFluteUn = { \FluteUn
  \relative {
    R2.*6
    \ttt {re16 dod re dod re dod}
    \ttt { re mib fa lab sib si }
    \ttt { dod mi fad sol la do } |
    
    %%% Piu vivo %%%
    re4 r r2 | r4 \ttt {re,,16 fa sol lab sib dod } \ttt { red mi fad la si do } |
    re4 r r2 | r4 \ttt {re,,16 mi sol la sib do } \ttt { mib fa solb lab si dod} |
    re8. re16 re8 re'~ re16 re, re8 |
    re'4 r8 re,~ re16 re re8 |
    re'8. re,16 re8 re r4 | re re8 re4 re8 |
    R2. re2.~ re4. r8\fermata r4 |
    R2. re2.~ re2~ re8 r\fermata r4 |
    R1 R2 |
    
    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 sib, | sol2 r4 sib | sol2 r4 R2 R1
    R2.*2 R2*2 
    r2 r8 sib | sol4 r8 sib | sol2 |
    r8 sol r4 | r8 sol sib r r4 |
    r2 r8 sol sib reb |
    R2. R2*3 R2.*3
    
    %%% Adagio %%%
    R1*5
    si1~si2 r | R1*3
    r2 r4 si~| si si32 la8..~la4 si32 la8..~|
    la4 si32 la8..~la4 r8 si32 la16.~
    la2 si32 la8..~la4 r8 si32 la16.~
    la2 si32 la8..~la4
    si la32 si8.. la32 si8.. |
    la4 la si si la la si la |
    la8 sol si4 si8 sol la4 |
    la8 sol si4 si8 sol la4 |
    la8 sol si4 si8 sol la4 |
    la8 sol si4 la  la8 sol |
    si4 si8 sol la4 la8 sol |
    si4 la  la8 sol si4 |
    si8 sol la4 la  la8 sol |
    si4 si8 sol la4 la | la la r2 |
    r si4 si | si r r2 |
    r4 si si si |
    R1*2 R1-\fermataMarkup |
    R2*4
  }
}


ActeUnSceneDeuxFluteUn = { \FluteUn
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
		do fa,8 do' r fa, | sol si do4 r | si8 do si sol fa4 si8 do | 
    si sol fa sol si4 si8 do |
		si sol fa4 si8 do | si sol fa sol si4 | 
    si8 do si sol fa sol si do | si sol fa sol r si do si | 
		sol fa sol si do si |sol fa r si do si | 
    sol fa sol si do si sol4 | si8 do si sol fa sol si do | 
		si4 fa8 sol si do | si4 fa8 sol si do | 
    si4 fa8 solb sib do sib4 | fa solb sib2\fermata
		
		%%%% Récitatif %%%
		
		R2.*2 R1 R2.*3 R1 R2.*4 r2 r8 r16 fa32 si | 
    mi?8 r r2 R2 R2. R1*2 R2.*5 R1 | 
		
		%%% Duo %%%
		
		\repeat unfold 4 {R2. R1} R2. r8 
		\t {mi,16 fa sol} sib8 r8 |R2 r4 
		\t {mi,16 fa sol} sib8 r4 |r8 r16 fa16 do16. si'!32 mi8 r2 | r2 r8
		\t {mi,16 fa sol} sib8 r8 |r2 r8
		\t {mi16 red dod} lad8 r8 r2 |
    R1 red,,4 mi red mi sol la sol la sol r4 | r8.
		\t {fa'32 mi re } si8  r8 r8
		\t {la16 sold fad} red8 r8 r4 r2 |
    
    %%% Piu vivo %%%
    R2. R1 R2.
    r4 r8 r16 mib la re sold dod | sol'4 r r2 |
    r4 sol,, la | do8 re~ re4 r2 |
    r4 sol,  do | re8 fa,~fa4 r2 |
    r4 re'   mi | la8 re~ re4 r  | R2.
    r8 mi mi,4 sold la8 re~re4 r |
    r16 la la la re4 do re8 sol~ sol4 r |
    R2.*6-\markup { Prenez la \concat { G \super de } Flûte } \FluteUn
    r4 r8 fa,, r4 |
    
    %%% Poco allargando %%%
    re'1~ re2 sol mi re |
    %%% Tempo giusto subito %%%
    sib4 r r2 | R1*3
    r2 r8 si la do | dod2 r4 |
    sol,2 r8 fa' mi'4~| 
    mi8 r r4 r8 fa, mi'4~| mi8 r r2 |
    \tt { r16 sold,, si re mi }
    \tt { sol sib do mib solb }
    lab2 r8 fa, mi'4~ | mi8 r r4 fa, |
    mi'8 r r2 |
    r8 mi, la mi |
    r  mi si' mi,|
    r  mi  la mi |
    r  mi si' mi,|
    r  mi  la mi |
    r  la la' la,|
    r  la mi' la, r la | la' r r2 |
    R1 R2.*3 R2 sib,,2.~ sib2. r4 R1*3
	}
}


ActeDeuxSceneUnFluteUn = { \FluteUn
  \relative {
		R2.*4 R2 R2.*2 R2 | r2 \tt {si''16 red re fad fa}| 
    la4~ la8[ fa]~ fa8 r | r8. red16 si4. la'8~ | la2~ |
    la2.~ | la2~ | la4 r \t {r8 sol,, mib'} | fad2.~ | fad4 r |
    r \tt {sib16 mib dod fad mi} la4~ | la4. sib,8 la'4~ | 
    la2.~| la4 r | R2. R2 | R2.*2 R2 |
    mi2.~| mi2.~| mi2.~| mi4 r |
	}
}
