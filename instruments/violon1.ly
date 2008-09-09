%------------------------------------------------------------------%
% Opéra Libre -- violon1.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

ViolonUn = {
  \set Staff.instrumentName = \markup { \hcenter-in #23.5 "Violon 1  "}
  \set Staff.shortInstrumentName = "Vl. 1  "
  \set Staff.midiInstrument = "violin"
}

PrologueViolonUn = { \ViolonUn
	\relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2. si'''?2.~ si2.~ 
    \repeat tremolo 8 si16~ \repeat tremolo 8 si32~ si8 r 
    mi,,,2~| mi4 r | mi2.~| mi4 r | fa2 mi2.~| mi4 r R2 |
    <sib mi>2.~| <la mi>4 r | R2 <do mi>2.~| 
    <do mi>4 mi8 mi \t {mi mi mi} \tt {mi16 mi mi mi mi} |
    mi2 r4 R2 sol16 sol sol sol sol sol do do | 
    mib4. r8 dod, r | r dod r4 | r8 dod r4 dod8 r |
    r4 dod | re8 r r re r4| r8 re r4 | mi
  }
}

ActeUnSceneUnBisViolonUn = { \ViolonUn
  \relative {
    R2.*6
    \ttt {lad'16 sold lad dod lad dod}
    \ttt {mi dod mi fad mi fad }
    \ttt {sol fad la sol do la } |
    
    %%% Piu vivo %%%
    re4 re, re,2 | R2.
    re''4 r8 re,,~re2 | R2.
    <fa' re'>4 <fa re'>8 <fa re'>4 <fa re'>8 |
    <mib re'>4 <mib re'>8 <dod re'>4 <dod re'>8 |
    <fad re'>4 <fad re'>8 <si re>4 <si re>8 | <si re>2. |
    R2. r4 fa,2~fa4. r8\fermata r4 |
    R2. r4 fa2~ fa2~fa8 r\fermata r4 |
    R1 R2
    
    %%% Largo %%%
    R2*3 R2. R2 R2.
    mi2~mi4 r2 |
    mib2 mib4 <si sol'>4 r r2 |
    R1 R2. R2
    r2 r8 sib'4. |
    sol2.~\CaV sol2\CaV r4 |
    do2 re~\CaV re4\CaV r2 |
    R2*3 R2. R1 R2.
    r4 <sib, re> <sib mib>2~<sib mib>
    <la red>2. r2 <la red>4 |
    <sold mi'>2.
    
    %%% Adagio %%%
    R1*33 R2*4
  }
}

ActeUnSceneDeuxViolonUn = { \ViolonUn
	\relative {
		%%% Air de la Soprano2 %%%
		
		R2.*2	R1*2	R2.*2	R1*2	R2.*2
		re4-. la'-. sold8( mi re4-.) | 
    mi8( re la' sold)-. r mi sold4-. |
		mi-. re8( la' sold4)-. | la8( sold mi re)-. r4 |
		sold8( la sold mi re4)-. sold8( la) | 
    sold( mi re mi sold4)-. sold8( la) |
		sold( mi re4)-. sold8( la) | 
    sold( mi re mi sold4)-. |
		R1*2 | R2.*2 |
		la8 re la sold re sold la re | 
    la sold re sold la2 |
		r8 la re la sold re | 
    sold la r mi sold4-. |
		re\stopped <la'' re> r2 | 
    r8 <la re>8 r4 re,,\stopped <la'' re> |
		r8 <la re> r4 <la re> r8 re,,\stopped r <la'' re> r4 |
		sol,,\stopped <do'' sol'> r2 | 
    r8 <do sol'> r4 sol,,\stopped <do'' sol'> |
		r8 <do sol'> r4 <do sol'> | 
    r8 sol,,\stopped r <do'' sol'> r4 |
		sol,,\stopped <do'' sol'> r2 | 
    la,,4 re8 si r la si4 |
		re4 sol8 fa do'4 | fa,8 sol si do r4 |
		<< lab'2 \\ {re,8 mib re sib} >> lab8 sib re mib | 
    re sib lab sib re4 r |
		<re lab'>8 mib re sib <re lab'> mib | 
    re sib <re lab'> mib re sib | 
		<re lab'>1 ~ <re lab'>4 r sol,, lab | 
    do8 re fa2~| fa r4 |
		R1*2 R2.*2 R1*2 R2.*2 |
		<re la'!>1~\CaV<re la'>~\CaV | 
    <re la'>2.~\CaV <re la'>~\CaV| 
		<re la'>1~\CaV <re la'>~\CaV | 
    <re la'>2.~\CaV <re la'>2\CaV  r4|
		sold8 la sold mi re mi  sold la | 
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | 
    sold mi re mi sold4 |
		sold8 la sold mi re mi  sold la | 
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | 
    sold mi re mi sold4 |
		R1*2 R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1 R1-\fermataMarkup  |
		
		%%% Récitatif %%%
		
		r4 r8 sib4. | sol2.~|sol1~|sol2 r4 |
		r4 r8 sib4. | sol2.~|sol1~|sol2 r4 |
		R2. | r4 r8 sib4 sol8~| sol2.~| sol8 sol~ \t {sol sol sol} 
    \repeat tremolo 8 sol32 |
		sol8 r r2 | R2 | r4 r8 sol4. | 
		mi?1~ mi~ | mi2.~ mi~ mi~ mi2 r4 | R2. R1 |
		
		%%% Duo %%%
		
		r8 \pizz <sib re>
		\repeat unfold 15 {r8 <sib re>} <sib re>4 |
		\repeat unfold 7 {r8 <do mi>} |
		\repeat unfold 3 {r8 <red fad>} <red fad>4 |
		\repeat unfold 4 {r8 <dod fad>} r4 | R2
		\arco sol'8
		\repeat unfold 27 sol
		\repeat unfold 14 red'
		\repeat unfold 8  lad'
		re! sol, do, re' sol, do, | 
    re' sol, do, re' sol, re' |
		R2. R1 |
    
    %%% Piu vivo %%%
    sol,,16 sol sol, sol sol' sol sol, sol sol' sol sol, sol |
    sol' sol sol, sol sol' sol sol, sol sol' sol sol, sol sol' sol sol, sol |
    fad' fad sol, sol fad' fad sol, sol mi' mi sol, sol |
    mi' mi sol, sol dod dod sol sol dod dod sol sol |
    <sol sol'>4 <sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> |
    dod2 r4 |
    <sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'>4 |
    dod2 r4 |
    sol4 sol \t {mi' re fa} |
    dod2 \tt {sib16 la lab sib si} |
    sol4 r2 |
    \pizz <sol re' la'>4 <sol re' la'> <sol re' la'> <sol re' la'> r2 |
    si4 si si | sib r2 |
    \arco re4 r8 re r16 re re8 |
    re4 \tt {sib16 dod red mi fad } \tt { mi fad la si do } |
    re4 \tt {sib,16 do reb mib fad} \tt {mib fad sold la si}|
    re4 \tt {sib,16 si dod mi fad } \tt { mi fad sol la do} |
    re4 \tt {sib,16 do mib fa solb} \tt {fa solb lab si dod}|
    re4 \tt {do,16 mib fa fad sold} \tt {fad sold si re dod}|
    mi4 \tt {mib,16 fa fad sold si} \tt {sold si re dod mi} |
    sol4 \ttt {si,16 si re re dod dod} \ttt {sol' sol mi mi la la} |
    
    %%% Poco allargando %%%
    sib2. la4~|la4. sol8~sol2 | mi re4 r |
    %%% Tempo giusto %%%
    dod16 re, re re dod re re re dod' re, re re dod re re re |
    re' re, re re re re re' re, re' re, re re re re re' re, |
    mi' mi, mi mi mi mi mi' mi, mi' mi, mi mi mi mi mi' mi, |
    sol' sib, sib sib sib sib sol' sib, sol' sib, sib sib sib sib re sib |
    si' mib, mib mib do mib mib mib si' mib, mib mib fa fa sold sold |
    dod2 r4
    <mi, la\harmonic mi''>1~ <mi la\harmonic mi''>~ <mi la\harmonic mi''>4 r2
    R2
    <mi la\harmonic mi''>2~ <mi la\harmonic mi''>~ <mi la\harmonic mi''>2.~
    <mi la\harmonic mi''>8 r \tt {dod,16 mi fad la si} \tt {la si re mi sol}|
    <la, la'>4 <la la'> <la si'> <la si'> |
    <la la'> <la la'> <la si'> <la si'> |
    <la la'>16 re, sol la re mi sol la |
    <mi re'>4 <mi re'> <re mi'> <re mi'>
    <mi re'> \pizz <sol mi'>8 r r2 |
    
    %%% Largo assai %%%
    R1 R2.*3 R2
    \arco sib,,2.~ sib2. r4 | 
    r2 \pizz la'4 sold | sol r dod, r | re r r2 |
	}
}

ActeUnSceneTroisTerViolonUn = { \ViolonUn
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4 r2
    r4 \arco sol2~ sol2.~ sol4 r2
  }
}

ActeDeuxSceneUnViolonUn = { \ViolonUn
  \relative	{
		<la' re\harmonic la''>2. ~
    \simile la''2.~ la2.~ la2.~ la2~ 
    la2.~ la2.~ la2~ la2.~ la2.~ la2.~ la4 r |
    R2. R2 | R2.*2 | R2 | 
    r4 \t { r8 sib, dod } la'4~ | la2.~ |
    la2.~| la4 r | la2.~ | 
    la4 la~ | la2~ la4~ | la8 la4. la4 | la la |
    \repeat unfold 11 { \ttt { la16[ la la la la la] } } |
	}
}
