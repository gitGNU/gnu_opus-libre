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

ActeUnSceneUnBisClarinetteDeux = { \ClarinetteDeux
  \relative {
    R2.*4
    \ttt {fa,16 mi re dod re mi} fa8 r
    \ttt {fa16  mi re dod re mi}|fa8 r
    \ttt {lab16 sol lab sib si dod} re8 r |
    \ttt {sol16 lab sol lab sol sib}
    \ttt {si dod si dod si mi}
    \ttt {fad sol fad sol la do} |
    
    %%% Piu vivo %%%
    re4 r r2 |
    \tt {r16 mi,,, fad sold la } \tt {si do re fa la} \tt {do re mib fa lab}|
    re4 r r2 |
    \tt {r16 mi,,, sold sib dod} \tt {mib sol sib do mi} \tt {fad sol la si do}|
    re4 re8 la4 re8 | lab4. re fad, re' |
    mi,4 mi8 mi4 mi8 |
    R2. fa,,2.~fa4. r8\fermata r4 |
    R2. fa2.~ fa2~ fa8 r\fermata r4 |
    R1 R2
    
    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 lab' | sol2 r4 lab | sol2 r4 R2
    sib2 r |
    R2.*2 R2*2 
    r2 r8 fa, | sol'4 r8 fa, | sol'2 |
    r8 re r4 | r8 mi do r r4 |
    r2 r8 reb \t {sol16 lab sib} reb8 |
    R2. R2*3 R2.*3
    
    %%% Adagio %%%
    R1*21
    r4 mi mi8 re fad4 |
    fad8 re mi4 mi8 re fad4 |
    fad8 re mi4 mi8 re fad4 |
    fad8 re mi4 mi8 re fad4 |
    mi  mi8 fad re4 re8 fad |
    mi4 mi8 fad r2 |
    r fad4 fad8 re | mi4 r r2 |
    r4 fad fad mi |
    R1*2 R1-\fermataMarkup |
    R2*4
  }
}

ActeUnSceneDeuxClarinetteDeux = { \ClarinetteDeux
	\relative {
		%%% Air de la Soprano2 %%%
		
		R2.*2	R1*2  R2.*2 R1*2 R2.*2	R1*2	R2.*2	R1*2	R2.*2
		R1 | re,8 fa sold si sold si sold fad |
		re r r2 | re8 fad sold4 r |
		R1*2 |
		dod,8 fad sold si sold fad | dod4 r8 sold' fad re |
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
		\repeat unfold 2  {lad lad sold sold} do2.~ do~ do4 r2 
    r2 r8 sib4. |
    
    %%% Piu vivo %%%
    sol,4 r2 | R1 R2.*2 R1
    r16 re''re re sol4 fa | sol8 fad,~ fad4 r2 |
    r16 re're re sol4 fa | fa8  fad,~ fad4 r2 |
    r16 mi'mi mi sold4 fad la8  sold~ sold4 r | R2.
    r16 mi mi mi la4 sold| la8  sold~ sold4 r |
    r16 la la la la4 sol | la8  sold~ sold4 r |
    R2.*2 r16 re32 mi re8 r2 |
    R2.*2 r4 r16 mi32 re r8 r4 |
    r r8 re r4 |
    
    %%% Poco allargando %%%
    \t {sib,sib sib}
    \t {sib sib sib}
    \t {sib sib sib}
    \t {si8 r si4 si}
    \t {dod dod dod}
    \t {fad fad fad}
    
    %%% Tempo giusto subito %%%
    re r r2 |
    r4 re,8 re r2 |
    r4 reb8 reb r2|
    r4 mib8 mib r2|
    r8 sol sol4 r2|
    R2. re'2. fa'4 re,2. fa'4~| fa8 r r2 |
    R2 re,,2~ re4 fad'| re,2. fad'8 r r2 |
    r8 la re la
    r sol re'sol,
    r la re la
    r sol re' la
    r la re la
    r mi'la mi
    r re sol mi r re | fa r r2 |
    
    %%% Largo assai %%%
    
    %%TODO: doigté alternatif pour le sib?
    r4 sib,2. | la4. r8 la4 | lab4. r8 lab4 sol4. r8 r4 | r sol |
    solb2.~ solb2. r4 | r2 fa4 mi mib r la, r re, r r2 |
	}
}

ActeUnSceneTroisClarinetteDeux = { \ClarinetteDeux
  \relative {
    R2.*4 do'8 la4 do8 la4 r r8 la4 solb8 mib2.~ mib8 r r2 |
  }
}

ActeUnSceneTroisTerClarinetteDeux = { \ClarinetteDeux
  \relative {
    r4 r16 sol' sol sol do2
    r4 r16 sol sol sol do8 sol16 sol do2 |
    r4 r8 sol16 sol do8 sol16 sol do8. sol16 |
    sol sol sol sol r8 do4 sold16 la
    re,8 r r2 | R2.*3
    re8 dod fa, fad la sib re, dod fa fad re dod |
    mib' re fad, sol si lad sol fad |
    mi' red si do fa mi do dod |
    re r r4 r2 |
    R1*3 R2.*2
    
    %%% Poco meno %%%
    la4 sol fa mi2.~ mi2 r4 |
    R2. mib2.~ mib2 r4 R2.
    re2.~ re2 r4 |
    r8 si''' sib sol fad mib re'2 r4 |
    r8 si sib fad re si sib'2 r4 |
    r8 sol fad re si sib | re4 r2 |
    \t {r8 do la~} \t {la sold fa} \t {do la mi~} mi2 r4 |
    
    r4 sol2 sol fad4~ fad fad r |
    r  sol2 sol fad4~ fad fad r |
    r  sib2 sib si4~  si  si  r |
    r  sib2 sib si4~  si  si  r |
    r sib'2 sib sib4~ sib2 r4 |
    r sib2 re fad4~ fad r2 |
    R2.*3
    r4 r16 lab mib la, mi sib la'8 r4 |
    r fa,2 fa fa4~ fa2 r4 |
    r fa2 r4 sib4. mi8~ mi4 la2 |
    r4 mib2 mib re4~ re r2 |
    r4 mib2 mib re4~ re r2 |
    r4 sol2 sol fad4~ fad fad r |
    r  sol, sol' sib2 si4~si mib sol |
    r8 mib re si sib sol fad' mib re si re mib |
    re' fad, sol,4 r8 re mib,2 r4 | R2.*15
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

