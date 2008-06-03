%------------------------------------------------------------------%
% Opéra Libre -- violon2.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\version "2.10"
\include "italiano.ly"

ViolonDeux = { 
  \set Staff.instrumentName = \markup { \hcenter-in #23.5 "Violon 2  "}
  \set Staff.shortInstrumentName = "Vl. 2  "
  \set Staff.midiInstrument = "violin"
}

PrologueViolonDeux = { \ViolonDeux
	\relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2. sib'''2.~ sib2.~ \repeat "tremolo" 8 sib16~ \repeat "tremolo" 8 sib32~ sib8 r 
    mi,,,2~| mi4 r | mi2.~| mi4 r | fa2 mi2.~| mi4 r R2 |
    <sold, re'>2.~| <la re>4 r | R2 <sol red'>2.~| <sol mi'>4 mi'8 mi \t {mi mi mi} \tt {mi16 mi mi mi mi} |
    mi2 r4 R2 fa16 fa fa fa sib sib sib sib | sib4. r8 dod, r | r dod r4 | r8 dod r4 dod8 r |
    r4 dod | re8 r r re r4| r8 re r4 | mi
  }
}

ActeUnSceneDeuxViolonDeux= { \ViolonDeux
	\relative do'{	
		%%% Air de la Soprano2 %%%
		
		R2.*2	R1*2	R2.*2	R1*2	R2.*2 |
		re4-. la'-. sold8( mi re4-.) | mi8( re la' sold)-. r mi sold4-. |
		mi-. re8( la' sold4)-. | la8( sold mi re)-. r la' |
		R1*2 |	R2.*2 |
		sold8( la sold mi re mi sold la | sold mi re mi sold4)-. sold8( la |
		sold mi re mi sold la | sold mi re mi sold4)-. |
		R1 | re4-. la'-. sold8( mi re4-.) |
		mi8( re la' sold)-. r la | sold mi re mi sold4-. |
		re\stopped <sold' re'> r2 | r8 <sold re'>8 r4 re,\stopped <sold' re'> |
		r8 <sold re'> r4 <sold re'> r8 re,\stopped r <sold' re'> r4 |
		sol,,!\stopped <si'' sol'> r2 | r8 <si sol'> r4 sol,,\stopped <si'' sol'> |
		r8 <si sol'> r4 <si sol'> | r8 sol,,\stopped r <si'' sol'> r4 |
		sol,,\stopped <si'' sol'> r2 | la,,4 re8 si r la si4 |
		re4 sol8 fa do'4 | fa,8 sol si do r4 |
		sol, do re8 fa re do | sol do re fa re do sol do | re2.~| re4 r2 | 
		re'8 mib re sib lab sib lab fa | re fa re do sol2 | lab2.~| lab2 r4 |	
		R1*2 R2.*2 R1*2 R2.*2 |
		<re' la'!>1\CaV ~ <re la'>\CaV ~ | <re la'>2.\CaV  ~ <re la'>\CaV ~| 
		<re la'>1\CaV ~ <re la'>\CaV ~ | <re la'>2.\CaV  ~ <re la'>2\CaV  r4|
		sold8 la sold mi re mi  sold la | sold mi re mi sold4 sold8 la | sold mi re mi sold la | sold mi re mi sold4 |
		sold8 la sold mi re mi  sold la | sold mi re mi sold4 sold8 la | sold mi re mi sold la | sold mi re mi sold4 |
		R1*2 R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1 R1-\fermataMarkup  |
		
		%%% Récitatif %%%
		
		r4 r8 mib,4. | do2.~| do1~| do2 r4 |
		r4 r8 re4. |  si2.~| si1~| si2 r4 |
		R2.| r4 r8 <re sib'>4 <si! sol'>8~|<si sol'>2.~|
		<si sol'>8 <si sol'>~ \t {<si sol'> <si sol'> <si sol'>} \repeat tremolo 8 si32 |
		si8 r r2 | R2 |R2.| R1*2 | R2.*5 | R1 |
		
		%%% Duo %%%
		
		r8 <sib re>-\markup "pizz."
		\repeat unfold 15 {r8 <sib re>} <sib re>4 |
		\repeat unfold 7 {r8 <do mi>} |
		\repeat unfold 3 {r8 <red fad>} <red fad>4 |
		\repeat unfold 4 {r8 <dod fad>} r4 | R2
		fa!8-\markup "arco"
		\repeat unfold 27 fa
		\repeat unfold 14 lad
		\repeat unfold 8  mi'
		sol re' sol, do, re' sol, | do, re' sol, do, re' sol, |
		R2. R1 |
	}
}

ActeDeuxSceneUnViolonDeux= { \ViolonDeux
\relative do''
	{
		<la la'>4-\markup "pizz" r2 R2.*3 R2 r2 <re, sol\harmonic re''~>4-\markup "arco" re''2.~-\markup "simile" re2~ re2.~ re~ re2.~ re4 r |
        R2. do2~ | do2.~ | do4 dod2~ | dod2 | fad2.~| fad2.~| fad2.~| fad4 r | <la,, re\harmonic la''~>2. la''2~-\markup { \italic "simile" } la2.~ la2.~ la4 r |
        \ttt { mi8[ mi16 mi mi mi] } \ttt { mi16[ mi mi mi mi mi] } \ttt { mi16[ mi mi mi mi mi] } | \repeat unfold 8 { \ttt { re16[ re re re re re] } } |
	}
}

