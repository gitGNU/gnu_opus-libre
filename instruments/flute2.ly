%------------------------------------------------------------------%
% Opéra Libre -- flute2.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

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

ActeUnSceneUnFluteDeux = { \FluteDeux
	\relative {
		R2*2 R2. R2*2 R2. |
		do2~ do do'4. r8 r4 | do,2~ do sol'4. r8 r4 |
		r8 do, \t { do do do} do4. r8 | dod'4. r8 r4 |
		r8 do, \t { do do do} do4. r8 | red'4. r8 r4 |
		red1 si2 r4 | sol1 mi!2 r4 |
		mi'1 | dod2 r4 | dod2. sold4~| sold8 r sold'4 mi | fa1 |
	}
}
		
ActeUnSceneUnBisFluteDeux = { \FluteDeux
  \relative {
    R2.*6
    \ttt {re16 dod re dod re dod}
    \ttt { re mib fa lab sib si }
    \ttt { dod mi fad sol la do } |
    
    %%% Piu vivo %%%
    re4 r r2 | r4 \tt {re,,16 dod re dod mi } \tt { sol si mi sol sib } |
    re4 r r2 | r4 \tt {re,,16 do re do mi } \tt { lab sib mib sol la } |
    re8. re16 re8 re~ re16 re re8 |
    re8. re16 re8 re r4 |
    re8. re16 re8 re~ re16 re re8 | re4 r8 re4 re8 |
    R2. mi,2.~ mi4. r8\fermata r4 |
    R2. mi2.~ mi2~ mi8 r\fermata r4 |
    R1 R2 |
    
    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 lab, | sol2 r4 lab | sol2 r4 R2 R1
    R2.*2 R2*2 
    r2 r8 lab | sol4 r8 lab | sol2 |
    r8 fad r4 | r8 fad la r r4 |
    r2 r8 fad la sib |
    R2. R2*3 R2.*3
    
    %%% Adagio %%%
    R1*5
    mi,1~mi2 r | R1*3
    r2 r4 la | mi32 re8..~re4 r8 mi32 re16.~re4~|
    re  mi32 re8..~re4 mi32 re8..~|
    re4 mi32 re8..~re4 mi32 re8..~|
    re4 mi32 re8..~re4 mi32 re8..~|
    re4 re32 mi8.. mi4 re32 mi8.. |
    re4 re do do re re do do |
    re8 mi do4 do8 mi re4 |
    re8 mi do4 re  re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re re re r2 |
    r sol4 sol | sol r r2 |
    r4 sol sol sol |
    R1*2 R1-\fermataMarkup |
    R2*4
  }
}

ActeUnSceneDeuxFluteDeux = { \FluteDeux
	\relative	{
		%%% Air de la Soprano2 %%%
		
		R2.*2	R1*2	R2.*2	R1*2	R2.*2	R1*2	R2.*2	R1*2	R2.*2
		sold'8 la sold mi re2~ | re4 re8 mi sold4 sold8 la |
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
    
    %%% Piu vivo %%%
    R2. R1 R2.
    \ttt {do,16 re mi sol lab sib}
    \ttt {reb mib mi fad la si }
    \ttt {do reb mib mi fa fad }
    sol4 r r2 |
    r16 re re re sol4 fa | sol8 re~ re4 r2 |
    r16 re re re sol4 fa | sol8 re~ re4 r2 |
    r16 mi mi mi sold4 fad  mi8 la~ la4 r  | R2.
    r16 mi mi mi la4 sold|  mi8 la~ la4 r  |
    r8  la   re,4   la  | re8 dod~dod4 r  |
    R2.*6 r4 r8 mi, r4 |
    
    %%% Poco allargando %%%
    sib'2. la4~| la4. sol8~ sol2 | si, re |
    %%% Tempo giusto subito %%%
    dod4 r r2 | R1*3
    r2 r8 si la do | dod2 r4 |
    dod4.  si8 sold'2 |
    dod,4. si8 sold'2~| sold8 r r2 |
    \tt { r16 re, fad sold si}
    \tt { re mi sol la re }
    sold,4 r8 si, | sold'2
    sold,4. si8 sold'4~ | sold8 r r2 |
    r8 re mi re |
    r  re la're,|
    r  re mi si |
    r  re la're,|
    r  re mi re |
    r sol re'sol,
    r sol la sol r sol | sol' r r2
    R1 R2.*3 R2 solb,,2.~ solb2. r4 R1*3
	}
}

ActeUnSceneTroisFluteDeux = { \FluteDeux
  \relative {
    R2.*6 la''2.~ la8 r r2 |
  }
}

ActeUnSceneTroisTerFluteDeux = { \FluteDeux
  \relative {
    R2*3 R2. R2*2 R2.*4
    re'8 fad16 re dod8 fa16 do r red mi si |
    sib8 r r2 R2. sol8 fad mib re~ re4 r |
    lab'8 sol mi red la' sold fa mi |
    re r r4 r2 | R1*3 R2.
    
    %%% Poco meno %%%
    re''2.~ re~ re2 r4 |
    r8 si, sib sol fad mib re'2. r8 si sib sol fad mib re'2. R2.*2
    \t {r8 dod' do} \t {la4 sold fa} | dod'2 r4 |
    \t {r8 dod do } \t {la sold fa~} \t {fa sold la} |
    \t {mi'dod do~} \t {do la sold} \t {fa dod' mi~} |
    \t {mi la, sold} \t {fa dod' mi~} \t {mi16 r la,8 sold} |
    \t {fa dod' mi} \t {sold, dod mi} \t {do dod mi} |
    fa32 mi dod8.~ \t {dod8 do la} \t {la mi dod~} |
    \t {dod do la} \t {r sold fa~ } \t {fa mi dod} | do2 r4 |
    
    r mib2~ mib re4~ re2 r4 |
    r mib2~ mib re4~ re2 r4 |
    r sib'2~sib si4~ si2 r4 |
    r sib2~ sib si4~ si2 r4 |
    r fad'2 fad fad4~ fad2 r4 |
    r fad2  sib re4~ re r2 | R2.*3
    sol16 re lab mib la, lab' r8 r2 |
    R2. r4 fa,2~ fa4 mi2 |
    R2. r4 mi4. la8~ la4 mib'2 |
    r4 sol,2 sol fad4~ fad r2 |
    r4 sol2  sol fad4~ fad r16 fa'' mi dod do la sold' si |
    r4 sib,,2 sib si4 r mi'16 dod do la sold' si re, re |
    mi mi r8 r4 sib, re2 red4~ red fad sib |
    
    r8 sol fad mib re si sib' sol fad mib re si |
    \t {r dod' do} \t {la sold fa} \t {mi' dod do} |
    \t {la fa dod'} \t {mi dod do} \t {la fa dod'} |
    \t {mi sold, la} \t {mi' la, do} mi16 do dod mi|
    \grace fa8 \pitchedTrill mi2.\startTrillSpan fa mi4\stopTrillSpan r2 |
    R2.*12
  }
}

ActeDeuxSceneUnFluteDeux = { \FluteDeux
  \relative {
		R2.*4 R2 R2.*2 R2 | r2 \t {si''8 re fa}| fad2 red8 r16 fad! | 
    re!2.~ | re4 r |
    R2. R2 | la'2.~ | la2.~ | la4 r | r \t {sib,8 reb mib~} mib4~ |
    mib16. fad32 do8~ do2 | 
    \tt {si!16 do si sold sol } mib'16 mi,!8.~ mi4~| 
    mi r | R2. R2 R2.*2 R2 |
    la2.~| la2.~| la2.~| la4 r |
	}
}
