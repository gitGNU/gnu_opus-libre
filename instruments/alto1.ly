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

ActeUnSceneUnBisAltoUn = { \AltoUn
  \relative {
    R2.*5
    \ttt {re,16 dod mi fa mi sol} lab8 r
    \ttt {re16 dod mi fa mi sol} |lab8 r
    lad16 si lad dod si dod si mi |
    
    %%% Piu vivo %%%
    re4  re, re,2 | mib r4 |
    re''4 r8 re,,~re2 | dod'2 r4 |
    re'4. re | <fad, sold> <si, sold'> |
    <sold fa'> <lad si'> | <lad si'>2.
    R2. r4 <re sol\harmonic re''>2~ <re sol\harmonic re''>4. r8\fermata r4 |
    R2. r4 <re sol\harmonic re''>2~ <re sol\harmonic re''>~
    <re sol\harmonic re''>8 r\fermata r4 | R1 R2
    
    %%% Largo %%%
    R2*3 R2.
    mib,2 mi mi4 |
    fa2~fa4 r2 |
    r2 mi4 sold4 r r2 |
    R1 R2. R2 R1 R2.*2 R2*2 R2. R2*3 R2. R1 R2.
    r4 sib <mib, sib'>2~<mib sib'>
    <fad la>2. r2 <fad la>4 |
    <mi sold>2.
    
    %%% Adagio %%%
    R1*14
    r2 si''~si1
    <re,si'>~<re si'>~<re si'>~<re si'>~<re si'>~
    <re si'>~<re si'>~<re si'>~<re si'>~<re si'>~
    <re si'>4 r <re si'> <re si'> |
    <re si'> <re si'> r2 |
    r4 <re si'> <re si'> <re si'> |
    <re si'> r r2 | R1*3
    R2 \pizz <fa si>4 <fad si> <sol si> r |
    r \arco <mi, si'>
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

ActeUnSceneTroisAltoUn = { \AltoUn
  \relative {
    R2.*4 <mi, red'>2.:32~ <mi red'>:~<mi red'>: <mi red'>4 r2 |
    \ind #"pizz. sul tasto" si'4 r sib sol r lab fa sol sib |
    \arco <do, la'>2.:32 R2.
    mib2.:32 re2. la'2.:32 |
    <si lad'>8 <si lad'>4 <si lad'>8 <si lad'>4~
    <si lad'>8 <si lad'>4 <si lad'>8 <si lad'>4~
    <si lad'> r \pizz sol fa r2 |
    r \arco re4 dod2. r2 re4 dod2 r4 |
    
    %%% Lamento %%%
    R1.*6 R1*5/4*5
    <re'dod'>2 <si lad'>4 r |
    <reb do'>2 <sib la'>4 r |
    <re dod'>2 <si lad'>4 r |
    <lab sol'>2 <fad' re'>4 r |
    <sib, sol' mib'>4 <sol' mib'>8 <sol mib'> \t {<sol mib'><sol mib'><sol mib'>}
    <sib, sol' mib'>4 <sol' mib'>8 <sol mib'> \t {<sol mib'><sol mib'><sol mib'>}|
    <mi red'>16 <mi red'> <mi red'> <mi red'> \t {<mi red'><mi red'><mi red'>} <mi red'>8 r4 |
    R2*2
    
    %%% Tempo I %%%
    \pizz la,4 fad r fad mib r r mib r | R2.*2
    \arco do'2.:32 <lab do>: <la re>: sib:
    \repeat tremolo 12 {re32 do} la4 r2 | R2.
    \pizz fa4 r re r2 mib4 |
    
    %%% Tempo II %%%
    R1.*2
    r2 r4 \arco mib2. mi1.~ mi2. r4 r2 |
    mib'1.:32 <mib re'>2.: <mib re'>4 r |
    R1 R2. R2
  }
}

ActeUnSceneTroisBisAltoUn = { \AltoUn
  \relative {
    R1*3 r4 red2 r4 R1*2 r4 do2\CaV r4 R1 |
    r2 <do mib>4 <si fa'> <fad fad'> r r2 |
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
    r16 solb' fa' solb, r mib re' mib,
    r mib re' mib, r do si' do, |
    \t {la'8 mib fad} \t {do mib sol,} sib mi, |
    r4 \arco la2 la4 | do2 la~ la1
    R1*3
    <do mib>1 <do mib>2 <do mib> <do mib> <sol do> |
    \pizz <fad fad'>4 r r2 | R1*6
    r4 \arco fad\upbow \ind #"pizz. du pouce" do r |
    r fad\upbow \simile do r |
    fad\upbow do fad\upbow do|
    r4 <do fa\harmonic do''>2 r4 |
    do'1~\CaV do2\CaV reb do si fad1~fad~fad4 r la2~la fad~fad4 r r2 |
    R1*7
  }
}

ActeUnSceneTroisTerAltoUn = { \AltoUn
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4 r2
    R2. r4 \arco sib2~ sib4 r2 \clef treble |
    sib'16 sib sib sib sib sib sib sib sib sib sib sib |
    sib sib sib sib sib sib sib sib sib sib sib sib |
    si si si si si si si si si si si si si si si si |
    do do do do do do do do dod dod dod dod dod dod dod dod |
    re8 r r4 r \pizz sol8 lab |
    r16 sol r8 sib r sold la r16 sold r8 |
    la sold la r16 sold r8 si r la |
    sib r16 la r8 do si lad si r16 lad |
    r8 dod do re dod mib |
    <re, re'>4 r2 R2.
    \arco <re, sol\harmonic re''>2. ~ 
    <re sol\harmonic re''> ~ 
    <re sol\harmonic re''> ~ 
    <re sol\harmonic re''> ~ 
    <re sol\harmonic re''>4 r2 R2.
    r4 re'4.~ re8\glissando 
    re'2.~ re~ re8 r re,4.~ re8\glissando re'2.~ re8 r re,4.~re8\glissando |
    re'4 si sib <re, re'> r2 \clef alto |
    r4 re,,2~ re r4 |
    
    r  \t {sib'8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {si fad si} \t {fad si fad} si4 r |
    r  \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {si fad si} \t {fad si fad} si4 r |
    r sol'2~\CaV \ordin sol fad4~ fad2 r4 |
    r \simile sol2~\CaV sol fad4~ fad2 r4 |
    r  \t {fad8 re re} \t {si si sol} \t {si re re} \t {fad fad sib~} sib4~ sib2 r4 |
    r  \t {fad8 re re} \t {si si sol} \t {fad' mib mib} 
    \t {si fad' mib} \t {sib' sol sol} | \t {mib si' sol} mib'4 \clef treble
    r16 \pizz mi8. |
    fa4 mi8 fa r16 mi8. | fa4 fad8 sol r16 fad8. |
    sol8 fad sol r16 fad r8 lab | sol4 r r2 \clef alto |
    
    r4 \arco \t {sib,,8 fa sib} \t {fa sib fa} \t {sib fa sib} \t {fa sib fa}
    \t {sib fa sib} | \t {fa sib fa} sib4 r |
    r  \t {sib8 fa sib} \t {fa sib fa} \t {sib fa sib} \t {fa sib fa}
    \t {sib fa sib} | \t {fa sib fa} sib4 r |
    r  \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {fad si fad} \t {si fad si} r2 |
    r4 \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {fad si fad} \t {si fad si} r2 |
    r4 \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {si fad si} \t {fad si fad} si4 r |
    r4 \repeat tremolo 8 {re32 sib}
    \repeat tremolo 8 {re sib}
    \repeat tremolo 4 {red si} | red4 r2 |
    r8 sib' si fad sol re mib sib' si fad sol re |
    mib sib'4 fad re8~ re sib4 si re8~ re2 r4 |
    R2.*4
    do2.~\CaV do~\CaV do~\CaV do~\CaV do2\CaV r4 |
    sold2.~ sold~sold~sold2 r4 |
    dod2.\fermata
  }
}

ActeUnSceneQuatreAltoUn = { \AltoUn
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    r2 r16 do sib la sib4 sold la8 la r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2
    
    %%% Agitato %%%
    sol2.:32 la: la8 r \t {do, sol' re'} \t {la' re, sol,} |
    do, r r2 r2 r16 si' si si mi2~mi4\glissando sol2. la4 r2 |
    re,,16 mi sol la sib la sib do mib do mib fa |
    re4. re8 \t {re re re} re4 re re |
    re4. re8 \t {re re re} re4 re re |
    re8 re re re re re |
    mib,2.:32 re: fad: |
    la8 la la la la la |
    la r re,16 mi sol la do re mi sol |
    la8 r r mi, \t {mi mi mi} mi mi mi mi mi mi |
    r sib'4 mi sib8 | mi, mi mi mi \t {mi mi mi} |
    r sib'4 mi sib8 | mi4 mi sib |
    mi,16 la re mi sold4 la,16 re mi sold | la4 re,16 mi sold la re4 |
    la8 la,8:16 la2.:16|
    la4 la la | la2.:16 r4|
    la4 la la | la2:16 |
    la4 la la | la2:16 |
    la4 la la | la2:16 |
    la2 la4 |
    
    %%% Placando assai %%%
    sol2. dod,4 sol'2. r4 |
    sol2. dod,4 sol'2. r4 |
    dod,2 re mib mi2.~mi r4 |
    \t {r la la} \t {la la la} \t {la la la} \t {sib sib sib} |
    \t {r la la} \t {la la la} \t {la la la} \t {sib sib sib} |
    \t {r si si} \t {si si si} \t {si si si} \t {si si si} |
    \t {r si si} \t {si si si} \t {si si si} \t {si si si} |
    \t {r <fad lad><fad lad>} \t {<fad lad><fad lad><fad lad>}
    \t {<fa si><fa si><fa si>} <solb do>8 <solb do> |
    \t {r4 <si red><si red>} \t {<si red><si red><si red>}
    \t {<si fad'><si fad'><si fad'>} <dod sol'>8 <dod sol'> |
    R1*4 r2 dod~dod4 dod mi2 dod2. r4 | R2*3 R2.*2
    
    \pizz fad,4 r mib la r2 fa4 r2 si4 r2 |
    
    %%% A tempo %%%
    \arco
    <la si>2<la si>4<la si><si re><si re>2<si re>4<fa'sol><fa sol><fa sol> r |
    \repeat tremolo 16 {sib,32 la}
    \repeat tremolo 12 {sib la}
    \repeat tremolo 16 {sib la}
    \repeat tremolo 12 {sib la}
    sib8 r r4 r2 |
    \repeat tremolo 12 {si32 la}
    \repeat tremolo 16 {si la}
    si8 r16 fad'16:32~ fad8:32 sold8:32~ sold16:32 si8.:32 |
    <sol dod>2 <sol dod>4 <sol dod> <sol dod>4. <sol dod>8~ <sol dod>4 r |
    sib2 r4 sib2 r4 <re, si'>2 <re si'>4 si'8 re, re si' si re, si' re, |
    si' re, re si' si mib, si' mib, |
    <re, dod'>2.~ <re dod'>8 r4 |
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

