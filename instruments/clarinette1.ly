%------------------------------------------------------------------%
% Opéra Libre -- clarinette1.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

ClarinetteUn = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Clarinette 1  "}
  \set Staff.shortInstrumentName = "Cl. 1  "
  \set Staff.midiInstrument = "clarinet"
}

PrologueClarinetteUn = { \ClarinetteUn
	\relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2.*3 R1 | mi,2~ mi4 r | mi'2 r4 |
    fa,2~ fa mi2.~ mi4 r R2 | \tt {sol16 sold si lad si} re2~|
    re4 r | R2 \tt {fad,16 sol la do sib} mib4. red8 |
    mi4 r | r r8 \t {si16 re mi}|
    la2 r4 | R2*2 | fad'2 r4 | R2 r2 mi,8 mi~|
    mi2 | mi2
  
  }
}

ActeUnSceneUnClarinetteUn = { \ClarinetteUn
	\relative {
		R2*2 R2. R2*2 R2. |
		r8 do \t {do do do~} do2~ do r4 | 
    r8 do \t {do do do~} do2~ do r4 |
		\t { fa,4 solb sib} do2~ do8 r r2 | 
    \t {solb4 sib do} mib2~ mib8 r r2 |
		\t {la,8 mib' si'} \t {solb' si, mib,} \t {la,4 mib'8} si'8 r |
		\t {la,8 mib' si'} \t {solb' si, mib,} la,8 r |
		\t {la8 mi'! sol!} mib'8 r  \t {mi,! sol do} \t {solb' do, mi,} |
		\t {la,8 mi'! sol!} mib'8 r |  \t {mi,! sol do} |
		\t {fa, lab mi'} \t {la! mi lab,} \t {do,4 lab'8} reb8 r |
		\t {fa, lab mi'} \t {la! mi lab,} fa8 r |
		\t {do4 lab'8} reb8 r \t {fa, lab mi'} \t {la! mi lab,}|
		\t {do,4 lab'8} reb8 r \t {do, lab' mi'} |
		\t {do' fa, lab,} \t {re,!4 fa'8} \t {do' fa, lab,} \t {re,4 fa'8}|
		\t {do' fa, lab,} \t {re,4 lab'8} \t {fa'4 sib8}|
		mi4
	}
}


ActeUnSceneDeuxClarinetteUn = { \ClarinetteUn
	\relative {
		%%% Air de la Soprano2 %%%
		R2.*2	R1*2	R2.*2	R1*2	R2.*2	R1*2	R2.*2	R1*2	R2.*2
		re,8 fad sold si sold si sold fad | re4 r r2 |
		re8 fad sold si r4 | r2 sold'8 la |
		sold mi re si sold si sold fad | re4 r r2 |
		R2.*2 |
		sold'8 la sold mi re4 sold8 la | sold mi re mi sold4 r |
		r2 re8 mi | re si sold4 r |
		r fa!8 la si la fa mi | fa la si la fa4 r |
		r2 la8 si | re fa sol si sol4 | R1*2 R2.*2 |
		lab'1~ lab2. r4 | R2.*2 | lab1~|lab2. r4 |
		R2.*2 R1*2 | sold,,8 re' sold, re r re | sol4 r2 |
		\repeat unfold 5 {R1*2 R2.*2} |
		r4 sold'8 la sold mi re mi |
    sold2 r4 sold8 la | sold mi re mi sold4~| sold2 r4 |
		r4 re'8 mib re sib lab sib | re2. r4 | r lab2 |
    r4 lab8 sib re mib | re2. r4 |
		r2 r4 si!8 dod | mid fad mid2~| mid2 r4 | 
    si8 dod mid fad mid2~| mid4 r do!2\fermata |
		
		%%% Récitatif %%%
		
		R2.*2 R1 R2.*3 R1 R2.*4 
    \repeat tremolo 12 {mib32 mi!} | mib8 r r2 R2 R2. R1*2 R2.*4
		\repeat unfold 7 {r8 re,,} | 
		
		%%% Duo %%%
		
		\repeat unfold 18 sib'8 r
		\repeat unfold 13 sib r sib
		\repeat unfold 14 do
		\repeat unfold 4  mib r
		\repeat unfold 3  mib
		\repeat unfold 8  solb r4 | r8
		\repeat unfold 3  sol,!
		\repeat unfold 10 si r
		\repeat unfold 13 si r
		\repeat unfold 3  si
		\repeat unfold 2  mi
		\repeat unfold 2  {sold sold lad lad} sold sold lad r
		\repeat unfold 2  {red red mi mi} sol!2.~ sol~sol4 r2 | 
		r4 \t {mi8 red dod} r sib4. |
		
		
	}
}

ActeUnSceneTroisClarinetteUn = { \ClarinetteUn
	\relative {
		r4 r16 lab' lab lab | reb2 | 
    r4 r16 lab lab lab |
    reb8 lab16 lab reb2 |
		r4 r8 lab16 lab | 
    reb8 lab16 lab reb8. lab16 |
    lab lab lab lab r8 reb4 la!16 la|
		re!8 r r2 |
	}
}

ActeDeuxSceneUnClarinetteUn = { \ClarinetteUn
	\relative {
    R2.*3 | re''8 sib~ sib2~ | sib4 r | 
    si!8 sol~ sol2~ | sol2 r4 | r sold | 
    mi2.~ | mi2.~ | mi2.~ | mi4 r |
    R2. R2 R2.*2 r4 r8 la, | 
    mi2.~ | mi2.~ | mi2.~ | mi4 r |
    R2. R2 R2.*2 R2 | R2. mi'2.~| mi2.~| mi4 r |
	}
}
