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

ActeUnSceneUnBisClarinetteDeux = { \ClarinetteBasse
  \relative {
    R2.*3
    \ttt {fa,,16 mi fa mi re mi} \ttt {fa mi fa mi re mi} \ttt {fa mi fa mi re mi} |
    fa8 r \ttt {fa'16 mi re si re mi} fa8 r |
    \ttt {re16 dod re mi fa sol} lab8 r \ttt {re,16 dod re mi sol la} |
    sib8 r \ttt {re16 do la sol fad mi} \ttt {dod si lad sold fa mib} |
    
    %%% Piu vivo %%%
    re4 r r2 | fad2. |
    re4 r r2 | sib'4. lab4. |
    sol2.~sol8 r sol4. r8 |
    sol4 r reb sol2 r4 |
    \t {sol16 lab sib } reb8~reb2~ reb2.~reb4. r8\fermata r4 |
    \t {sol,16 lab sib} reb8~reb2~ reb2.~reb2~reb8 r\fermata r4 |
    R1 R2
    
    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 solb, | reb2 r4 solb | reb2 r4
    lab'2~lab r |
    R2.*2 R2*2 
    r2 r8 solb | reb4 r8 solb | reb2 |
    \t {sol!16 lab sib} reb8 r4 | r8
    \t {la16 sib do} mib8 r r4 |
    r2 r8 \t {lad,16 si dod} mi8 si' |
    R2. R2*3 R2.*3
    
    %%% Adagio %%%
    R1*2
    do,2~do4. sold8~|
    sold2 r4 do~|
    do2~do8 sold4.~|
    sold4 r sol2~ |
    sol4. dod8~dod2|
    r4 sol2. | sol8 dod~dod2 r4 |
    sol1~sol2 r4 sib~ |
    sib2~sib8 sol4.~|
    sol4 r sib2~sib4. sol8~sol2 |
    r4 sib sol2~sol4 r r2 |
    mi1~mi2. r4 |
    R1*5 \clef treble
    r2 r4 r8 la'' |
    r la sol si r si sol la |
    r la sol si r si sol la |
    r la sol si sol2~sol4. r8 
    fa4 fa8 la | sol4 r r2 |
    r4 fa fa sol |
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

