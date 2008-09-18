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

ActeUnSceneUnBisAltoDeux = { \AltoDeux
  \relative {
    R2.*5
    \ttt {re,16 dod mi fa mi sol} lab8 r
    \ttt {re16 dod mi fa mi sol} |lab8 r
    sold16 fa sold lad sold lad si dod |
    
    %%% Piu vivo %%%
    re4  re, re,2 | mib r4 |
    re''4 r8 re,,~re2 | dod'2 r4 |
    si'4. si | fa <dod mi> |
    <sold fa'> <fa fa'> | <fa fa'>2.
    R2. r4 <re'sol\harmonic re''>2~ <re sol\harmonic re''>4. r8\fermata r4 |
    R2. r4 <re sol\harmonic re''>2~ <re sol\harmonic re''>~
    <re sol\harmonic re''>8 r\fermata r4 | R1 R2
    
    %%% Largo %%%
    R2*3 R2.
    r4 mib, mi2. |
    fa2~fa4 r2 |
    mi2. mib4 r r2 |
    R1 R2. R2 R1 R2.*2 R2*2 R2. R2*3 R2. R1 R2.
    r4 sib' <mib, sib'>2~<mib sib'>
    <fad la>2. r2 <fad la>4 |
    <mi sold>2.
    
    %%% Adagio %%%
    R1*14
    r2 mi'~mi1
    <mi la>~<mi la>~<mi la>~<mi la>~<mi la>~
    <mi la>~<mi la>~<mi la>~<mi la>~<mi la>~
    <mi la>4 r <mi la> <mi la> |
    <mi la> <mi la> r2 |
    r4 <mi la> <mi la> <mi la> |
    <mi la> r r2 | R1*3
    R2 \pizz <dod lad'>4 <la re> <lab re> r |
    r \arco <mi si'>
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
		\repeat unfold 8 <dod mi>|
    mib,2.~ mib~ mib4 r2 R1 |
    
    %%% Piu vivo %%%
    <sol sol'>2.~ <sol sol'>1 |
    sol8 sol' sol, fad' sol, mi' |
    dod sol do sol sib sol |
    <sol sol'>2. r4 |
    dod,4 dod16 dod dod dod dod dod dod dod |
    sol'2. r4 |
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
    \repeat tremolo 16 <sib' re>16 
    \repeat tremolo 8  <sib  re>
    \repeat tremolo 8  <si   re>
    R1
    
    %%% Tempo giusto %%%
    r8 \pizz <re, sib'> r <re sib'> r <re sib'> r <re sib'> |
    r <re sib'> r <re sib'> r <re sib'> r <re sib'> |
    r <dod la'> r <dod la'> r <dod la'> r <dod la'> |
    r <red si'> r <red si'> r <red si'> r <red si'> |
    r <sol si> <sol si>4 r2 |
    r16 \arco reb'' do sib lab sol fa re reb do sib lab |
    <re, sol>1~<re sol>2. r4 |
    do16 mib solb lab si re mi sol \clef treble sib do mib solb |
    lab4. r8 |
    <sold, fad'>2~ <sold fad'>~ <sold fad'> r4 \clef alto |
    re,16 fad sold si do, mib fad sold si re mi sol |
    la8 \t {si,16 la si} \ttt {re si la si la si} |
    \ttt {re si la si la si} \ttt {re si la si la si} |
    \ttt {sol la sol mi' sol, la} \ttt {sol la sol mi' sol, la} |
    \ttt {sol la sol mi' sol, la} \ttt {sol la sol mi' sol, la} |
    \ttt {sol si re si re mi} sol8 la |
    \ttt {la,16 re la' la re, la} \ttt {la re la' la re, la} |
    \ttt {la re la' la re, la} \ttt {la re la' la re, la}
    <la re la'>4\glissando la''8 r r2 |
    
    %%% Largo assai %%%
    r4 sib,,2. | la4. r8 la4 | lab4. r8 lab4 sol4. r8 r4 | r sol |
    solb2.~ solb2. r4 | r2 \pizz fa4 mi mib r re r re, r r2 |
  }
}

ActeUnSceneTroisAltoDeux = { \AltoDeux
  \relative {
    R2.*4 <mi, red'>2.:32~ <mi red'>:~<mi red'>: <mi red'>4 r2 |
    r4 \pizz fad r r red r r8 dod r re fa4 |
    \arco <do la'>2. R2.
    mib2. re2.:32 mib2. |
    <fa mi'>2.:32~ <fa mi'>:~ <fa mi'>4 r \pizz re dod r2 |
    r \arco re4 dod2. r2 re4 dod2 r4 |
    
    %%% Lamento %%%
    R1.*6 R1*5/4*5
    <sol'fad'>2 <solb fa'>4 r |
    <sol fad'>2 <solb fa'>4 r |
    <sol fad'>2 <solb fa'>4 r |
    <mib  re'>2 <mi  red'>4 r |
    <do sib' sol'>4 <sib' sol'>8 <sib sol'> \t {<sib sol'><sib sol'><sib sol'>}
    <do, sib'sol'>4 <sib' sol'>8 <sib sol'> \t {<sib sol'><sib sol'><sib sol'>}
    <do, si'!>4 <do si'>8 <do si'> r4 |
    R2*2
    
    %%% Tempo I %%%
    \pizz mib4 do r fad mib r r mib r | R2.
    \arco fad2.:32 sol2.:32 <mib do'>: <mib re'>: solb:
    \repeat tremolo 12 {do32 si} do4 r2 | R2.
    \pizz fa,4 r re r2 mib4 |
    
    %%% Tempo II %%%
    R1.*2
    r2 r4 \arco mib2.~ mib1.~ mib2. r4 r2 |
    sib'1.:32 <sib la'>2.: <sib la'>4 r |
    R1 R2. R2
  }
}

ActeUnSceneTroisBisAltoDeux = { \AltoDeux
  \relative {
    R1*3 r4 mi,2 r4 R1*2 r4 reb2\CaV r4 R1 |
    r2 <mi do'>4 <si' fa'> <fad fad'> r r2 |
    R1*14
    fad1~ fad2. r4 |
    r \pizz mib' r mib |
    r mib r mib |
    r mib r mib |
    r mib r mib |
    r mib r mib |
    r mib r mib |
    r <sol, mib'> r <sol mib'> |
    r <mi! sol mib'> r <mi sol mib'> |
    r16 mib' re' mib, r do si' do,
    r do si' do, r sib la' sib,|
    \t {fad'8 sib, mib} \t {sol, do mi,} sol dod, |
    r4 \arco fad2 fad4 | mi2 fad~ fad1
    R1*3
    <la re>1 <la re>2 <la re> <la re> <mi la> |
    \pizz <fad fad'>4 r r2 | R1*6
    r4 \arco mib\upbow r2 |
    r4 mib\upbow r2 |
    mib4\upbow r mib\upbow r |
    r4 reb'2 r4 |
    lab2 sol solb fa mi mib |
    fad1~fad~fad4 r mi!2~mi fad~fad4 r r2 |
    R1*7
  }
}

ActeUnSceneTroisTerAltoDeux = { \AltoDeux
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4 r2
    R2. r2 \arco mib,4~ mib4 r2 \clef treble |
    sib''16 sib sib sib la la la la fad fad fad fad |
    fa fa fa fa re re re re dod dod dod dod |
    si' si si si lad lad lad lad sol sol sol sol fad fad fad fad |
    do' do do do do do do do dod dod dod dod dod dod dod dod |
    re8 r r4 r \pizz sol8 lab |
    r16 sol r8 sib r sold la r16 sold r8 |
    la sold la r16 sold r8 si r la |
    sib r16 la r8 do si lad si r16 lad |
    r8 dod do re dod mib |
    <re, re'>4 r2 R2.
    \arco re2. ~\CaV
    re~\CaV re~\CaV re~\CaV re~\CaV re~\CaV re~\CaV re4\CaV r2
    re2.~\CaV re~\CaV re8\CaV r \ordin re4.~ re8\glissando
    re'2.~ re8 r re,4.~ re8\glissando
    <re re'>4 r2 \clef alto |
    r4 re,,2~ re r4 |
    
    r  \t {sol8 sib sol} \t {sib sol sib} \t {sol sib sol} \t {sib sol sib} 
    \t {fad si fad} \t {si fad si} fad4 r |
    r  \t {sol8 sib sol} \t {sib sol sib}  \t {sib sol sib} \t {sol sib sol}
    \t {fad si fad} \t {si fad si} fad4 r |
    r <sol sib>2~ <sol sib> <fad si>4~ <fad si>2 r4 |
    r <sol sib>2~ <sol sib> <fad si>4~ <fad si>2 r4 |
    r  \t {re'8 si si} \t {sol sol mib} \t {sol si si} \t {re re fad~} fad4~ fad2 r4 |
    r  \t {re8 si si} \t {sol sol mib} \t {re' si si} \t {sol re' si}
    \t {sol' mib mib} \t {re si' sol} re'4 \clef treble
    r16 \pizz mi8. |
    fa4 mi8 fa r16 mi8. | fa4 fad8 sol r16 fad8. |
    sol8 fad sol r16 fad r8 lab | sol4 r r2 \clef alto |
    
    r4 \arco \t {fa,,8 sib fa} \t {sib fa sib} \t {fa sib fa}
    \t {sib fa sib} \t {fa sib fa} \t {sib fa sib} fa4 r |
    r  \t {fa8 sib fa} \t {sib fa sib} \t {fa sib fa}
    \t {sib fa sib} \t {fa sib fa} \t {sib fa sib} fa4 r |
    r  \t {sol8 sib sol} \t {sib sol sib} \t {sol sib sol} \t {sib sol sib} 
    \t {si fad si} \t {fad si fad} r2 |
    r4 \t {sol8 sib sol} \t {sib sol sib} \t {sol sib sol} \t {sib sol sib} 
    \t {si fad si} \t {fad si fad} r2 |
    r4 \t {sol8 sib sol} \t {sib sol sib} \t {sol sib sol} \t {sib sol sib} 
    \t {fad si fad} \t {si fad si} fad4 r |
    r4 \repeat tremolo 8 {sib32 re}
    \repeat tremolo 8 {sib re}
    \repeat tremolo 4 {si red} | si4 r2 |
    r8 fad' sol re mib sib si fad' sol re mib sib |
    si fad'4 re sib8~ sib fad4 sol sib8~ sib2 r4 |
    R2.*4
    fa2.~ fa sol~ sol~ sol2 r4 |
    fa2.~ fa~fa~fa2 r4 |
    mi2.\fermata
  }
}

ActeUnSceneQuatreAltoDeux = { \AltoDeux
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    r2 r16 do sib la sib4 sold la8 la r4 R2-\fermataMarkup
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

