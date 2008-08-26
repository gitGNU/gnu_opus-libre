%------------------------------------------------------------------%
% Opéra Libre -- alto1.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

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
		
		R2.*2 r4 sold'8 la sold mi re mi 
    sold la sold mi re mi sold4~ | sold2 r4 | R2. |
		sold8 la sold mi re mi sold la 
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | sold mi re mi sold4 | 
		sold8 la sold mi re mi sold la 
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | sold mi re mi sold4~ |
		sold1~ sold2 r2 | R2.*2 | 
    re,4 si' sold8 fad re4 | 
    fad8 re si' sold r fad sold4 | 
    fad4 re8 si' sold4 | si8 sold fad re r4 |
		re'4 la' sold8 mi re4 | 
    mi8 re mi4 la8 re sold, mi | re mi sold4 r | R2.|
		sold8 la sold mi re mi sold la | 
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | 
    sold mi re mi sold4 |
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
    re'2.~| re2 r4 | R1*2 R2.*2 |
    sold8 la sold mi re mi sold la | 
    sold mi re mi sold4 sold8 la|
		sold mi re mi sold la | sold mi re mi sold4 |
		sold8 la sold mi re4 sold8 la |
    sold mi re mi sold4 sold8 la |
		sold mi re4 sold8 la | sold mi re mi sold4 |
		sold8 la sold mi re4 sold8 la | 
    sold mi re mi sold4 sold8 la |
		sold mi re4 sold8 la | sold mi re mi sold4~|
		sold1~ sold~ sold2.~ sold~ | 
    sold1~ sold~ sold2.~ sold2 r4|
		re8 mi sold la sold mi re mi | 
    sold la sold mi re mi sold la |
		sold mi re mi sold la | 
    sold mi re2~| re2. r4 | R1 | R2.*2 | R1*2 |
		R2.*2 | R1 R1-\fermataMarkup |
		
		%%% Récitatif %%%
		
		r4 r8 reb4.| sib2.~ |sib1~ |sib2 r4 |
		r4 r8 si!4.| sold2.~|sold1~|sold2 r4|
		R2.| r4 r8 si4 do8~ |do2.~ |do8 do~ \t {do do do} 
    \repeat tremolo 8 do32 |
		do8 r r2 | R2| r4 r8 si4. |
		fad1~|fad~|fad2.~|fad~|fad~|fad2 r4| R2. R1 |
		
		%%% Duo %%%
		
		\pizz <re sib'>4
		\repeat unfold 15 <re sib'> r8 \arco <re sib'> |
		<mi do'> r \pizz <mi do'>4
		\repeat unfold 4 <mi do'> r8 \arco <mi do'> |
		<sol mib'> r \pizz <sol mib>4 <sol mib'> r8 \arco <sol mib'> |
		<fa reb'>8 r \pizz <fa reb>4 <fa reb'> | <fa reb'> r | R2
		\arco si8 
		\repeat unfold 27 si |
		\repeat unfold 14 <dod mi> |
		\repeat unfold 8 <sold' lad>|
    fa2.~ fa~ fa4 r2 R1 |
    
    %%% Piu vivo %%%
    <sol, sol'>2.~ <sol sol'>1 |
    <sol sol'>8 sol fad' sol, mi' sol, |
    dod, sol' do sol sib' sol, |
    sol''2. r4 |
    dod,,4 dod16 dod dod dod dod dod dod dod |
    sol2. r4 |
    dod16 dod dod dod dod dod dod dod dod4 |
    sol4 sol2 r4 |
    dod,8. dod16~ dod4 r |
    r \pizz do'8 la fa dod |
    sol'4 si8 red, fad do |
    sol'4 sol8 lab la sib |
    si4 re8 la fad dod |
    sib'4 sib8 si do dod |
    re4 \arco \tt {re16 do la sol fad} \tt {si sib lab fa mib} |
    re4 \pizz re'8 fa, si sold |
    re4 \arco \tt {re'16 si la sold fad}\tt {do' sib sol fa mi} |
    re4 \pizz re'8 fad, sib sib|
    re,4\arco \tt {re'16 dod si sold fad} \tt {do' sib la sol mi } |
    re4 \pizz re'8 la fad sold |
    dod,4 \arco \tt {dod'16 si sold fad fa} \tt {sib la sol mi re} |
    dod4 r2 |
    
    %%% Poco allargando %%%
    \repeat tremolo 12 <re' sib'>16 la'4~ | la4. <si re>8~ <si re>2|
    R1
    
    %%% Tempo giusto %%%
    r8 \pizz <sib, re> r <sib re> r <sib re> r <sib re> |
    r <sib re> r <sib re> r <sib re> r <sib re> |
    r <la dod> r <la dod> r <la dod> r <la dod> |
    r <red, si'> r <red si'> r <red si'> r <red si'> |
    r <sol si> <sol si>4 r2 |
    r16 \arco reb'' do sib lab sol fa re reb do sib lab |
    <sol re' lad'>1~<sol re' lad'>2. r4 |
    do,16 mib solb lab si re mi sol \clef treble sib do mib solb |
    lab4. r8 \clef alto |
    <do,, fa\harmonic>2~ <do fa\harmonic>~ <do fa\harmonic> r4 |
    re,16 fad sold si do, mib fad sold si re mi sol |
    la8 \t {re,16 mi re} \ttt {mi re mi la mi re }
    \ttt {mi re mi la mi re} \ttt {mi re mi la mi re} |
    \ttt {si re mi re mi re} \ttt {si re mi re mi re} |
    \ttt {si re mi re mi re} \ttt {si re mi re mi re} |
    \ttt {la re mi re mi la} la8 re |
    \ttt {re,16 mi la la mi re} \ttt {re mi la la mi re} |
    \ttt {sol, mi' la la mi sol,} \ttt {sol mi' la la mi sol,}
    \ttt {sol  mi' la la mi re} | la8 r r2 |
    
    %%% Largo assai %%%
    r4 re2. | dod4. r8 dod4 do4. r8 do4 si4. r8 r4 | r si |
    sib2.~ | sib2. r4 | r2 \pizz la4 lab sol r re r re r r2 |
	}
}

ActeDeuxSceneUnAltoUn = { \AltoUn
	\relative {\clef treble 
    \ttt {
      <la' re\harmonic la''>16[ <la re\harmonic la''>
      <la re\harmonic la''> <la re\harmonic la''> 
      <la re\harmonic la''> <la re\harmonic la''>] 
		} \ttt { \simile la''16 la la la la la }
    \repeat unfold 68 { \ttt { la[ la la la la la] } } la4 r 
    \ttt { si,8[ si16 si si si] } |
    \repeat unfold 8 { \ttt { mi,[ mi mi mi mi mi] } } |   
  }
}

