%------------------------------------------------------------------%
% Opéra Libre -- alto1.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\version "2.10"
\include "italiano.ly"

AltoUn ={
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Alto 1  "}
  \set Staff.shortInstrumentName = "Alt. 1  "
  \set Staff.midiInstrument = "viola"
  \clef alto
}

PrologueAltoUn = { \AltoUn
  \relative { 
    %%% Introduction %%%
    
    \partial 4 r4 R2.*3 R1
    mi,2~| mi4 r | r16 mi8.~ mi8 r r4 |
    red'2~|red4 r| 
    \repeat tremolo 24 mi,32 
    \repeat tremolo 16 mi32 
    \repeat tremolo 16 mi32
    red2. | re!2~|re |
    \repeat tremolo 24 mi32
    mi4 <si' re>~| <si re>8 si \t {si si si}
    \repeat unfold 28 la16
    si4. r8 dod, dod |
    r8 dod dod r | r dod dod r dod r |
    r dod dod dod | re re r re re r | r re r4 |
    }
}

ActeUnSceneDeuxAltoUn = { \AltoUn
  \relative { 
		%%% Air de la Soprano2 %%%
		
		R2.*2 r4 sold'8 la sold mi re mi sold la sold mi re mi sold4~ | sold2 r4 | R2. |
		sold8 la sold mi re mi sold la sold mi re mi sold4 sold8 la | sold mi re mi sold la | sold mi re mi sold4 | 
		sold8 la sold mi re mi sold la sold mi re mi sold4 sold8 la | sold mi re mi sold la | sold mi re mi sold4~ |
		sold1~ sold2 r2 | R2.*2 | re,4 si' sold8 fad re4 | fad8 re si' sold r fad sold4 | fad4 re8 si' sold4 | si8 sold fad re r4 |
		re'4 la' sold8 mi re4 | mi8 re mi4 la8 re sold, mi | re mi sold4 r | R2.|
		sold8 la sold mi re mi sold la | sold mi re mi sold4 sold8 la | sold mi re mi sold la | sold mi re mi sold4 |
		la,8 si la fa mi fa la si | la fa mi fa la4 la8 si | la fa mi fa la si | la fa mi fa la4 |
		mi si' la8 fa mi4 | la8 fa re' si r si sol'4 | si, mi8 re fa4~| fa2 r4 | \clef treble
		<lab lab'>1~ <lab lab'>2. r4 | <lab lab'> r <lab lab'> | r <lab lab'> r |
		<lab lab'>1~| <lab lab'>4 r \clef alto lab, sol | re'2.~| re2 r4 |
		R1*2 R2.*2 |sold8 la sold mi re mi sold la | sold mi re mi sold4 sold8 la|
		sold mi re mi sold la | sold mi re mi sold4 |
		sold8 la sold mi re4 sold8 la | sold mi re mi sold4 sold8 la |
		sold mi re4 sold8 la | sold mi re mi sold4 |
		sold8 la sold mi re4 sold8 la | sold mi re mi sold4 sold8 la |
		sold mi re4 sold8 la | sold mi re mi sold4~|
		sold1~ sold~ sold2.~ sold~ | sold1~ sold~ sold2.~ sold2 r4|
		re8 mi sold la sold mi re mi | sold la sold mi re mi sold la |
		sold mi re mi sold la | sold mi re2~| re2. r4 | R1 | R2.*2 | R1*2 |
		R2.*2 | R1 R1-\fermataMarkup |
		
		%%% Récitatif %%%
		
		r4 r8 reb4.| sib2.~ |sib1~ |sib2 r4 |
		r4 r8 si!4.| sold2.~|sold1~|sold2 r4|
		R2.| r4 r8 si4 do8~ |do2.~ |do8 do~ \t {do do do} \repeat tremolo 8 do32 |
		do8 r r2 | R2| r4 r8 si4. |
		fad1~|fad~|fad2.~|fad~|fad~|fad2 r4| R2. R1 |
		
		%%% Duo %%%
		
		<re sib'>4-\markup "pizz."
		\repeat unfold 15 <re sib'> r8 <re sib'>-\markup "arco" |
		<mi do'> r <mi do'>4-\markup "pizz."
		\repeat unfold 4 <mi do'> r8 <mi do'>-\markup "arco" |
		<sol mib'> r <sol mib>4-\markup "pizz." <sol mib'> r8 <sol mib'>-\markup "arco" |
		<fa reb'>8 r <fa reb>4-\markup "pizz." <fa reb'> | <fa reb'> r | R2
		si8-\markup "arco" 
		\repeat unfold 27 si |
		\repeat unfold 14 <dod mi> |
		\repeat unfold 8 <sold' lad>|
	}
}

ActeDeuxSceneUnAltoUn= { \AltoUn
	\relative do''	{
    \clef treble \ttt {
      <la re\harmonic la''>16[ <la re\harmonic la''> <la re\harmonic la''> <la re\harmonic la''> <la re\harmonic la''> <la re\harmonic la''>] 
		} \ttt { la''16-\markup { \italic "simile" } la la la la la }
    \repeat unfold 68 { \ttt { la[ la la la la la] } } la4 r \ttt { si,8[ si16 si si si] } |
    \repeat unfold 8 { \ttt { mi,[ mi mi mi mi mi] } } |   
  }
}

