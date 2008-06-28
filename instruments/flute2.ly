%------------------------------------------------------------------%
% Opéra Libre -- flute2.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


\version "2.10"
\include "italiano.ly"

FluteDeux = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Flûte 2  "}
  \set Staff.shortInstrumentName = "Fl.2  "
  \set Staff.midiInstrument = "flute"
}

PrologueFluteDeux = { \FluteDeux
	\relative {
    %%% Introduction %%%
    
    \partial 4 r4 \pitchedTrill la'''2.~\startTrillSpan si
    la2.~ la~ la2~\stopTrillSpan la4~ la8 r | 
    mi,,2~mi4 r | mi4~ \repeat tremolo 8 mi32 ~ mi8 r |
    mi2~ mi mi2.~ mi4 r |
    R2 | re2.~ | re4 r |
    R2 | red2.~| mi4 r |
    r r8 \t { re!16 mi la} | re2 r4 | R2*2 | sib'2 r4 |
    r4 \tt {fad16 sold la red, sold} si!2 r4|
    R2 r2 \tt {re16 la si solb lab} | mib8 r r4 |
	}
}

ActeUnSceneUnFluteDeux= { \FluteDeux
	\relative {
		R2*2 R2. R2*2 R2. |
		do2~ do do'4. r8 r4 | do,2~ do sol'4. r8 r4 |
		r8 do, \t { do do do} do4. r8 | dod'4. r8 r4 |
		r8 do, \t { do do do} do4. r8 | red'4. r8 r4 |
		red1 si2 r4 | sol1 mi!2 r4 |
		mi'1 | dod2 r4 | dod2. sold4~| sold8 r sold'4 mi | fa1 |
	}
}
		

ActeUnSceneDeuxFluteDeux= { \FluteDeux
	\relative do''	{
		%%% Air de la Soprano2 %%%
		
		R2.*2	R1*2	R2.*2	R1*2	R2.*2	R1*2	R2.*2	R1*2	R2.*2
		sold8 la sold mi re2~ | re4 re8 mi sold4 sold8 la |
		sold mi re4 sold8 la | sold4 r4 r |
		R1*2	R2.*2
		sold8 la sold mi re4 sold8 la | sold mi re mi sold4 sold8 la |
		sold mi re4 sold8 la | sold mi re mi sold4 |
		sol'! sol' si,8 sol fa4 | fa8 sol sol' si, r sol sol'4 |
		sol, fa8 do' si4 | do8 sol' si, sol r do |
		fa, sol sol'4 do, fa,8 do' | r fa, sol' si, do4 sol'8 fa, |
		sol4 si do8 sol | r re' si la fa4 | \repeat unfold 6 {R1*2 R2.*2}
		re,2 la' | sold4 mi re2~| re2. | R2. | mi4 re la' sold~| sold2. r4 |
		R2. r4 mi2 | sold1~ sold2. r4 | R2. r4 re8 mi sold la |
		sold2. r4 | r2 lab8 sib re mib | re2 r4 | R2. | r4 lab8 sib re2~| re2. r4|
		R2.*2 R1 | r2 si'?\fermata |
		
		%%% Récitatif %%%
		
		R2.*2 R1 R2.*3 R1 R2.*5 | mib,8 r r2 R2 R2. R1*2 R2.*5 R1 |
		
		%%% Duo %%%
		
		\repeat unfold 4 {R2. R1} R2. r16 fa fa fa si?8 r |
		R2 r8 \t {mi,16 fa sol} sib8 \t {mi16 fa sol} sib8 r |
		r8 r16 fad,, si!16. sib'32 fa!8 r2 |
		r2 r8 mi32 sol fa sib mi8 r |
		r2 r8 \t {mi16 red dod} lad8 r r2 |R1
		lad1 re!2.~ re~re4 r8 r16 \t {do32 si la} fad8 r | R1
	}
}

ActeDeuxSceneUnFluteDeux= { \FluteDeux
\relative {
		R2.*4 R2 R2.*2 R2 | r2 \t {si''8 re fa}| fad2 red8 r16 fad! | re!2.~ | re4 r |
        R2. R2 | la'2.~ | la2.~ | la4 r | r \t {sib,8 reb mib~} mib4~ | mib16. fad32 do8~ do2 | \tt {si!16 do si sold sol } mib'16 mi,!8.~ mi4~| mi r | R2. R2 R2.*2 R2 |
        la2.~| la2.~| la2.~| la4 r |
	}
}
