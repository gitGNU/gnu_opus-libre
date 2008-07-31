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
	}
}

ActeDeuxSceneUnViolonUn = { \ViolonUn
  \relative	{
		<la' re\harmonic la''~>2. 
    \simile la''2.~ la2.~ la2.~ la2~ 
    la2.~ la2.~ la2~ la2.~ la2.~ la2.~ la4 r |
    R2. R2 | R2.*2 | R2 | 
    r4 \t { r8 sib, dod } la'4~ | la2.~ |
    la2.~| la4 r | la2.~ | 
    la4 la~ | la2~ la4~ | la8 la4. la4 | la la |
    \repeat unfold 11 { \ttt { la16[ la la la la la] } } |
	}
}
