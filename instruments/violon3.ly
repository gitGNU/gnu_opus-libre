%------------------------------------------------------------------%
% Opéra Libre -- violon3.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\version "2.10"
\include "italiano.ly"

ViolonTrois = {
  \set Staff.instrumentName = \markup { \hcenter-in #23.5 "Violon 3  "}
  \set Staff.shortInstrumentName = "Vl. 3  "
  \set Staff.midiInstrument = "violin"
}

PrologueViolonTrois = { \ViolonTrois
	\relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2.  la'''2.~ la2.~ \repeat "tremolo" 8 la16~ \repeat "tremolo" 8 la32~ la8 r 
    mi,,2~| mi4 r | mi2.~| mi4 r | mi2 mi2.~| mi4 r R2 |
    <sol,? re'>2.~| <sol re>4 r | R2 sib2.~| si!4 mi'8 mi \t {mi mi mi} \tt {mi16 mi mi mi mi} |
    re2 r4 \repeat unfold 16 re16 | fad4. r8 sid, r | r sid r4 | r8 sid r4 sid8 r |
    r4 sid | dod8 r r dod r4| r8 dod r4 | red
  }
}

ActeUnSceneDeuxViolonTrois= { \ViolonTrois
	\relative{
		%%% Air de la Soprano2 %%%
		
		R2.*2	R1*2	R2. |
		sold'8 la sold mi re mi | sold la sold mi re mi sold4 |
		sold8 la sold mi re mi sold la sold mi re mi sold4 |
		R2.| la,4-. re-. mi8( re la4-.) | re8( la mi' re)-. r re mi4-. |
		re-. la8( mi' re4)-. | la'8( sold mi re)-. r la' |
		R1*2 |	R2.*2 |
		sold8( la sold mi re mi sold la | sold mi re mi sold4)-. sold8( la |
		sold mi re mi sold la | sold mi re mi sold4)-. |
		R1 | re4-. la'-. sold8( mi re4-.) |
		mi8( re la' sold)-. r la | sold mi re mi sold4-. |
		r4 <re sol\harmonic> r2 | r8 <re sol\harmonic> r2 <re sol\harmonic>4 |
		r8 <re sol\harmonic> r4 <re sol\harmonic> |  r4 r8 <re sol\harmonic> r4 |
		r <sol' do\harmonic> r2 r8 <sol do\harmonic> r2 <sol do\harmonic>4 |
		r8 <sol do\harmonic> r4 <sol do\harmonic> | r4 r8 <sol do\harmonic> r4 | 
		r4 <sol,, do\harmonic> r2 | la4 re8 si r la si4 |
		re4 sol8 fa do'4 | fa,8 sol si do r4 |
		sol, do re8 fa re do | sol do re fa re do sol do | re2.~| re4 r2 | 
		lab'8 sib re mib fa, lab sib re | re, fa re do sol2~|	sol2.~| sol2 r4 |
		R1*2 R2.*2 R1*2 R2.*2 |
		<re' la'!>1\CaV ~ <re la'>\CaV ~ | <re la'>2.\CaV  ~ <re la'>\CaV ~| 
		<re la'>1\CaV ~ <re la'>\CaV ~ | <re la'>2.\CaV  ~ <re la'>2\CaV  r4|
		sold8 la sold mi re mi  sold la | sold mi re mi sold4 sold8 la | sold mi re mi sold la | sold mi re mi sold4 |
		sold8 la sold mi re mi  sold la | sold mi re mi sold4 sold8 la | sold mi re mi sold la | sold mi re mi sold4 |
		R1*2 R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1 R1-\fermataMarkup  |
		
		%%% Récitatif %%%
		
		R2.*2 R1 R2.*3 R1 R2.*2 |
		r4 r8 fad4 mib8~| mib2.~| mib8 mib~ \t {mib mib mib} \repeat tremolo 8 mib32 |
		mib8 r8 r2 | R2 | R2.| R1*2| R2.*5| R1|
		
		%%% Duo %%%
		
		r8 <sib re>-\markup "pizz."
		\repeat unfold 15 {r8 <sib re>} <sib re>4 |
		\repeat unfold 7 {r8 <do mi>} |
		\repeat unfold 3 {r8 <red fad>} <red fad>4 |
		\repeat unfold 4 {r8 <dod fad>} r4 | R2
		re8-\markup "arco"
		\repeat unfold 27 re
		\repeat unfold 14 sold
		\repeat unfold 8  red'
		do do re'! sol, do, re' | sol, do, re' sol, do, do |
		R2. R1 |
	}
}

ActeDeuxSceneUnViolonTrois= { \ViolonTrois
\relative do''
	{
		la'2.~\CaV la2.~\CaV la2.~\CaV la4\CaV r2 R2 R2.*2 R2 si2.~ si2.~ si2.~ si4 r |
    R2. R2 | r4 r8 fad~ fad4~| fad2.~| fad2 | sib2.~| sib2.~| sib2.~| sib4 r | <re,, sol\harmonic re''~>2. re''2~-\markup { \italic "simile" } re2.~ re2.~ re4 r |
    \ttt { re8[ re16 re re re] } \ttt { re16[ re re re re re] } \ttt { re16[ re re re re re] } | \repeat unfold 3 { \ttt { si16[ si si si si si] } } | \repeat unfold 5 { \ttt { si16[ si si si si si] } }
	}
}

