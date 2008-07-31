%------------------------------------------------------------------%
% Opéra Libre -- alto2.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

AltoDeux = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Alto 2  "}
  \set Staff.shortInstrumentName = "Alt. 2  "
  \set Staff.midiInstrument = "viola"
  \clef alto
}

PrologueAltoDeux = { \AltoDeux
  \relative { 
    %%% Introduction %%%
    
    \partial 4 r4 R2.*3 R1 
    mi,2~| mi4 r | r16 \repeat tremolo 6 { \ind #"sul ponti." red32}
    red8 r r4 |
    red'2~ \startTrillSpan red4 \stopTrillSpan r |
    \ind #"pos.nat" mi,2.~ mi2~ mi |
    \repeat tremolo 24 mi32
    \repeat tremolo 16 mi32 
    \repeat tremolo 16 mi32
    dod2. | <do! sol'>4 <do sol'>~| <do sol'>8 sol' \t {sol sol fa}| 
    \repeat unfold 28 mi16 | mi4. r8 sid sid |
    r sid sid r | r sid sid r sid r |
    r sid sid sid | dod dod r dod dod r | r dod r4 |
    }
}

ActeUnSceneDeuxAltoDeux = { \AltoDeux
	\relative { 
		%%% Air de la Soprano2 %%%
		
		R2.*2 r4 sold'8 la sold mi re mi sold la sold mi re mi sold4~ | 
    sold2 r4 | R2. |
		sold8 la sold mi re mi sold la sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | sold mi re mi sold4 | 
		sold8 la sold mi re mi sold la sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | sold mi re mi sold4~ |
		sold1~ sold2 r2 | R2.*2 | R1*2 R2.*2 | 
		re4 la' sold8 mi re4 | mi8 re mi4 la8 re sold, mi | 
    re mi sold4 r | R2.|
		sold8 la sold mi re mi sold la | 
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | sold mi re mi sold4 |
		la,8 si la fa mi fa la si | 
    la fa mi fa la4 la8 si | 
    la fa mi fa la si | 
    la fa mi fa la4 |
		mi si' la8 fa mi4 | 
    la8 fa re' si r si sol'4 | 
    si, mi8 re fa4~| fa2 r4 | \clef treble
		<lab lab'>1~ <lab lab'>2. r4 | 
    <lab lab'> r <lab lab'> | r <lab lab'> r |
		<lab lab'>1~| <lab lab'>4 r \clef alto lab, sol | 
    do2.~| do2 r4 |	R1*2 R2.*2 |
    sold8 la sold mi re mi sold la | sold mi re mi sold4 sold8 la|
		sold mi re mi sold la | sold mi re mi sold4 |
		sold8 la sold mi re4 sold8 la | sold mi re mi sold4 sold8 la |
		sold mi re4 sold8 la | sold mi re mi sold4 |
		sold8 la sold mi re4 sold8 la | sold mi re mi sold4 sold8 la |
		sold mi re4 sold8 la | sold mi re mi~ mi4~|
		mi1~ mi~ mi2.~ mi~ | mi1~ mi~ mi2.~ mi2 r4|
		\repeat unfold 3 {R1*2 R2.*2}|
		R1 R1-\fermataMarkup |
		
		%%% Récitatif %%%
		
		R2.*2 R1 R2.*3 R1 R2.*2 |
		r4 r8 sol4 mi8~| mi2.~| mi8 mi~ \t {mi mi mi} 
    \repeat tremolo 8 mi32 |
		mi8 r r2 | R2| r4 r8 la4. |
		mib1~ mib~ | mib2.~ mib~ mib~ mib2 r4 | R2. R1 |
		
		%%% Duo %%%
		
		\pizz <re sib'>4
		\repeat unfold 15 <re sib'> r8 \arco <re sib'> |
		<mi do'> r \pizz <mi do'>4
		\repeat unfold 4 <mi do'> r8 \arco <mi do'> |
		<sol mib'> r \pizz <sol mib>4 <sol mib'> r8 \arco <sol mib'> |
		<fa reb'>8 r \pizz <fa reb>4 <fa reb'> | <fa reb'> r | R2
		\arco lab8
		\repeat unfold 27 lab |
		\repeat unfold 14 sib |
		\repeat unfold 8 <dod' mi>|
	}
}


ActeDeuxSceneUnAltoDeux = { \AltoDeux
	\relative { \clef treble 
    \ttt {
      <la' re\harmonic la''>16[ <la re\harmonic la''> 
      <la re\harmonic la''> <la re\harmonic la''> 
      <la re\harmonic la''> <la re\harmonic la''>] 
		}
    \ttt { \simile la''16 la la la la la }
    \repeat unfold 68 { \ttt { la[ la la la la la] } } 
    la4 r \ttt { la,8[ la16 la la la] } |
    \ttt { la[ la la la la la] } 
    \repeat unfold 7 { \ttt { re,[ re re re re re] } } |
  } 
}

