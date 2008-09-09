%------------------------------------------------------------------%
% Opéra Libre -- piano.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

Piano = {
  \set PianoStaff.instrumentName = \markup { \hcenter-in #27.5 "Piano  "}
  \set PianoStaff.shortInstrumentName = "Piano.  "
  \set PianoStaff.midiInstrument = "acoustic grand" 
}

ProloguePiano = { \Piano
	\PianoDeuxMains
  \relative { 
    \partial 4 r4 R2.*3 R1
    mi2\laissezVibrer r4 \clef bass mi,4\laissezVibrer|
    r4 mi2\laissezVibrer | r8 \tt {mi,32 fa mi' mi fa} red'4\laissezVibrer|
    r4 r8 \t {mi,,16 mi' mi} | mi'2.\laissezVibrer | 
    R2*2 |<< \makeClusters { \ind #"dans les cordes" sol,16 la si do re2 } \\ {\hideNotes s4 re2 \laissezVibrer \unHideNotes} >>
    R2*2 |<< \makeClusters { \simile sol,16 la si do mi2 } \\ {\hideNotes s4 mi2 \laissezVibrer \unHideNotes} >>
    R2*2 |<la, re sol>2 r4 | R2*2 |
    << {\voiceTwo <si re mi>2\laissezVibrer} \\ {\voiceFour r8 \voiceOne <sid, dod>8 <sid dod> <sid dod>}>>
    \repeat unfold 16 <sid dod>8 |
    \repeat unfold 8 <dod re>8 <re mib> <re mib>
    \repeat unfold 10 <red mi>8
    r8 <mi fa> <mi fa>4 | <mi fa>8 <mi fa>4 <mi fa>8 <mi fa>4 |
  }
  \relative {
    \partial 4 r4 R2.*3 R1
    <mi,, mi'>2\laissezVibrer r4 <mi, mi'>4\laissezVibrer r4 <mi mi'>2\laissezVibrer |
    r4 <mi mi'>\laissezVibrer | r4 <mi mi'>\laissezVibrer mi'4 mi,2\laissezVibrer |R2*2 |
    r4 <mi mi'>2\laissezVibrer | R2*2
    r4 <mi mi'>2\laissezVibrer | R2 r4 <re' re'> |
    <dod dod'>2 r4 | R2*2
    <dod, dod'>2 r8 <sol' sol'> | r dod r <sol sol'> | dod4 <dod, dod'> <sol' sol'>8 dod~|
    R2 <sol sol'>4 dod <sib sib'>8 dod~| dod <sol sol'> dod4 |
    <dod, dod'>4 <sol' sol'>8 <dod dod'>4 <sib sib'>8 | r <dod dod'>4 <sol sol'>8 |
    <sib sib'>2~<sib sib'>4 r2 |
  }
}

ActeUnSceneUnPiano = { \Piano
  \PianoDeuxMains
  \relative {
    
  }
  \relative {
    
  }
}

ActeUnSceneUnBisPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R2.*6
    \stemUp \gauche
    \ttt { lab,16 sib reb mi sol do } \droite
    \ttt { mib fa lab si dod mi} \ottava #1
    \t { sol la do} re32 mib sold la \stemNeutral
    <re, re'>4 \ottava #0 r8 re,,~re4 r |
    R2. <re' re'>4 <re, re'> \gauche <re, re'>2 \droite |
    R2.
    <do'' fa la re>4\arpeggio \laissezVibrer <si do re fa la>2 |
    \pl <fa solb lab> <dob' mib lab> <lab reb sol>4\laissezVibrer |
    r4 <mid si' fad'>2\laissezVibrer R2.*2 |
    \ottava #1 \pl {<si' sol'>8 <si sol'>4 <si sol'>8 <si sol'>4~ <si sol'>4.}
    {<mi' re'?>8 <mi re'>4 <mi re'>8 <mi re'>4~ <mi re'>8 <mi re'>4} 
    \ottava #0 r8\fermata r4 | R2.
    \ottava #1 \pl {<si, sol'>8 <si sol'>4 <si sol'>8 <si sol'>4~ <si sol'>2~<si sol'>8}
    {<mi' re'>8 <mi re'>4 <mi re'>8 <mi re'>4~ <mi re'>4 <mi re'>4.}
    \ottava #0 r8\fermata r4 | R1 R2 \clef bass
    
    %%% Largo %%%
    do,,,8 do \t {do do do} do4 do~ | do2\laissezVibrer R2.
    r8 do \t {do do do~ } do2.\laissezVibrer R2
    r8 do \t {do do do~ } do4~ do2.\laissezVibrer \clef treble
    r2 r4 <dob' lab' sib> | <sib sol'>2 r4 <dob lab' sib> | <sib sol'>2 r4 |
    R2 <dob sib'>2\arpeggio r R2.*2 R2*2
    r2 r8 <la sib'> <lab sol'>4 r8 <la sib'> | <lab sol'>2
    r8 <sol sib re sol> r4 |
    r8 <la do mi sol> <do mi? sol sib> r r4 |
    r2 r8 <lab reb sol> <reb fa sib> <mi sol lab sib reb> |
    R2.
    r4 <sib re> <mib, sib' mib>2\arpeggio
    <sib' mib sib'>8\arpeggio r r4 |
    <fad la red>2.\arpeggio
    r2 <fad la red>4 <mi sold mi'>2 r4 |
    
    %%% Adagio %%%
    r4 <mi' si'>2.\laissezVibrer R1 <mi si'>1\laissezVibrer |
    r2 r4 <mi si'>4\laissezVibrer R1 r2 <mi si'>\laissezVibrer |
    R1 r4 <mi si'>2.\laissezVibrer R1 <mi si'>1\laissezVibrer |
    r2 r4 <re la'>\laissezVibrer r2 r8 <re la'>4.\laissezVibrer |
    r2 <re la'>\laissezVibrer r4 r8 <re la'>~<re la'>2\laissezVibrer |
    r4 <re la'>2.\laissezVibrer r8 <re la'>~<re la'>2 r4 |
    <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol> |
    <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol> |
    <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol> |
    <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol> |
    <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol> |
    <re la'>4 \pl { <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol>
      <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol>
      <re la'>4 re re8 mi do4 do8 mi re4 do <do si'>8 <mi sol>
      <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol>
    <re la'>4 <re la'>8 <mi sol>}
    {mi'4 re re mi mi re re mi <la, mi'>8 <sol fad'> <si re>4 <si re>8 <sol fad'>
    <la mi'>4 <la mi'>8 <sol fad'> <si re>4 mi mi8 re fad4 fad8 re mi4 mi8 re fad4}
    <do, si'>4 <do si'> | <do si'> <do si'> <si' fad'> <si fad'> |
    <si mi> <do, si'> <do si'> <do si'> |
    <do si'> \pl {<sol' si> <sol si> <sol si>}
    {fad' fad8 re mi4 } |
    R1 r2 r4 <si fad'> | <re fad dod'>4\fermata r r2 |
    R2 <dod, si'>8 r <re si'>8 r <re si'> r r4 \clef bass
    r4 <mi, si'> 
  }
  \relative {
    \ottava #-1
    <dod,,, sold' dod>2.\laissezVibrer
    \ottava #0
    \loco <dod' dod'>2. dod4 dod8 dod \t {dod dod dod} |
    \ottava #-1
    <dod, dod'>2.
    \pl {fa4 dod}
    {\ttt {r16 lad' si dod mi sold} fa4 }
    \ottava #0
    \pl {fa4 dod}
    {\ttt {r16 lad' si dod mi sold} fa4 }
    r2 |
    \stemDown
    \ttt { lab,,16 sib reb mi sol do }
    \ttt { mib fa lab si dod mi} \droite
    \ttt { sol la do re mib sold} \gauche \stemNeutral
    <re,,, re'>4 r8 re~re4 r |
    <fad, fad'>2 r4 |
    re' r s2 |
    \pl {sib4 reb16 sib lab8~ lab4} {sib' reb16 sib lab8~lab4}
    <sol, sol'>2.\arpeggio \laissezVibrer s2 <lad'' si dod mi>4\laissezVibrer
    r4 <re, mib fa lab do>2\laissezVibrer R2.
    r8 <reb,reb'>8~ <reb reb'>2~ <reb reb'>2.\laissezVibrer R2.
    r8 <reb reb'>8~ <reb reb'>2~ <reb reb'>2.\laissezVibrer R1*2 R2
    
    %%% Largo %%%
    <do, do'>2~ <do do'>~ <do do'>\laissezVibrer R2.
    r8 do' \t {do do do} do4 do2\laissezVibrer R2
    r8 do \t {do do do} do4~do2.\laissezVibrer
    r2 r4 <fad sol'> | <reb do'>2 r4 <fad sol'> |
    <reb do'>2 r4 | <lab lab'>2~ <lab lab'> r2 |
    R2.*2 R2*2
    r2 r8 <solb' lab fa'> <reb sib'>4 r8 <solb lab fa'> <reb sib'>2 |
    r8 reb r4 | r8 la' <mib mib'> r r4 |
    r2 r8 sib mi! si' | R2.
    r4 sib <sol>2\arpeggio ~ sol
    <fad>2.\arpeggio r2 si4 mi,2 r4 |
    
    %%% Adagio %%%
    R1*5 r2 sol\laissezVibrer
    r4 r8 <dod, dod'>8~ <dod dod'>2\laissezVibrer |
    r4 <sol sol'>2.\laissezVibrer r8 <dod dod'>~<dod dod'>2.\laissezVibrer |
    <sol sol'>1\laissezVibrer r2 r4 <sib sib'>\laissezVibrer |
    r2 r8 <sol sol'>4. | r2 <sib sib'>2\laissezVibrer |
    r4 r8 <sol sol'>~ <sol sol'>2\laissezVibrer |
    r2 <sol sol'>~ <sol sol'>4 r r2 |
    <mi mi'>1~ <mi mi'>2. <mi mi'>4~<mi mi'>1~<mi mi'>2 r |
    R1*7 r2 <fa''? do'>4 <fa do'> | <sol do> r r2 |
    r4 \pl {fa4 fa8 la sol4 } {<do mi> <do mi> <do mi>} |
    R1 r2 r4 <do mi> <fa,? do'? mi>\fermata r r2 |
    R2 re8 r sold, r fa r r4 | r <dod sold'> |
  }
}

ActeUnSceneDeuxPiano = { \Piano 
  \PianoDeuxMains
  \relative {
		%%% Air de la Soprano2 %%%
		
		\repeat unfold 6 {R2.*2 R1*2} R2. | \clef bass
		dod,8 re fad sold fad re | dod1~ dod~ | dod2 r4 | re fad8 sold fad4 | 
		mi8 fa la si la fa mi fa | la si la4 fa8 la si re | si4 la8 si re fa |
		\clef treble re4 fa8 sol si do | \ottava #1 si''8 do si sol fa sol si4 | 
		si8 do si sol fa sol si do | si do si sol fa sol | fa re si re la4 |
		\ottava #0
		<lab, lab'>1 ~ <lab lab'>2. r4 | R2.*2 R1*2 |
		R2. lab8 re, do lab s4 \clef bass | r4 <re, sold>2.\arpeggio \laissezVibrer R1 |
		R2. \clef treble | r4 r8 \ottava #1 fa''''! sol,!4 | \ottava #0
		r4 r8 \ottava #1 fa' do sol sold re | do' sol re sold la,4 \ottava #0 r | R2.*2 |
		r4 \ottava #1 fa'' \ottava #0 r2 R1 | R2.*2 | r8 \ottava #1 fa do sol fad' si, mi,4 | \ottava #0 R1 | R2. |
		r8 \ottava #1 fa'! do sol lad'4 | red,4 \ottava #0 r r2 |
    
    %FIXME: line breaks make the "15ma" text move to the left.
    r2 \ottava #2
		sol!4 do | si8 sol fa4 si8 do | si sol fa sol si4 |
		sol4 fa8 do' si4 do8 si | sol fa sol si r do fa, sol |
		si4 do fa, | si8 sol fa sol si4 | si8 do si sol fa sol si do |
		si sol fa sol si4 si8 do | si sol fa sol si do | si sol fa sol si4 |
		si8 do si sol fa4 si8 do | si sol fa sol si4 si8 do |
		si sol fa4 si8 do | si sol fa sol si4 |
		si8 do si sol fa4 si8 do | si sol fa sol si4 r |
		si8 do si sol fa4\laissezVibrer \ottava #0 | R2. R1 | r2
		\ottava #1 <si,, dod lad'>2\fermata \ottava #0 | 
		
		%%% Récitatif %%%
    R2.*2 R1 R2.*3 R1 R2.*5
    <sol, lab mib'>8 r r2 \clef bass
    r8 \t {sold,,16 la si} re8 r |
    R2. R1*2 R2.*5 R1
    
    %%% Duo %%%
    \repeat unfold 34 <re sib' re>8
    \repeat unfold 14 <mi do' mi>
    \repeat unfold 8 <sol red' fad>
    \repeat unfold 8 <fa reb' solb> r4 \clef treble |
    R2
    \repeat unfold 12 { r8 <si fa' sol>}
    <si fa' sol> r <si fa' sol> <si fa' sol> \clef bass |
    r4 <mi, fad lad> <fad lad dod> <si, mi> <fad' lad dod> \clef treble
    <dod' mi sold> <mi lad red> |
    <fad, lad mi'> <lad dod sold'> <mi' lad red> <sold mi' lad> |
    <do sol' re'> \clef bass <mib,, sib'> <sib' fa'> |
    <lab, mib'> \clef treble <sib' fa' do'> <fa' do' sol'> |
    <si fad' sol re'>\arpeggio <fad' si>8 <fad si> <red fad> <red fad> |
    <lad red> <lad red> r4 r2 \clef bass |
    
    %%% Piu vivo %%%
    r4 sol,,16 lab sol sib lab sib lab reb |
    sib reb sib mib reb mib reb mi red mi red fad mi fad mi la |
    fad la fad si la si la do si do si re \clef treble |
    do re do fa re fa re sol fa sol fa lab \clef bass |
    \gauche <sol,,, sol'>8 \droite sol' \gauche <re' sol> \droite
    <fa sib reb mib>~ <fa sib reb mib>2 |
    dod2 dod4
    \gauche sol,8 re' \droite sol \gauche <re' sol> \droite <fa sib reb mi!>2 |
    dod2.
    \gauche sol,8 re' \droite lab' sol \gauche <re' sol> \droite
    <sol sib dod fad>4. |
    dod,4 r2 \clef treble | R2.
    \gauche sol,8 re' la' \droite <la' re mi sold>4.\laissezVibrer R2.
    \gauche si,,8 fad' dod'\droite <la' re mi sold>4.\laissezVibrer R2.
    \gauche <re,,, re'>8. re''16 \droite <si' mi>8 <re sold la>4.\laissezVibrer R2.*2
    r8 <re' mi re' mi> r2 | R2.*2 \clef bass
    r4 r8 <re,, sold dod> r4 | R2.
    \pl {fa2 s2} <sib re fa>1\arpeggio <sib re>1\arpeggio \clef treble
    <si' re mi>2\laissezVibrer r \clef bass |
    
    %%% Tempo giusto %%%
    \repeat unfold 16 <re,, sib' re>8
    \repeat unfold 8 <mi do' mi>
    \repeat unfold 8 <red si' red>
    <sol si> <sol si> <sol si> <sol si> \clef treble
    \t {r si si'} \t {la la' do} |
    <dod, dod'>2 r4 \clef bass |
    r8 <si,, re> lad' <si, re> \clef treble r <fa''' si> mi' <fa, si> \clef bass |
    r  <si,,,re> lad' <si, re> \clef treble r <fa''' si> mi' <fa, si> | R2.
    <lab, lab'>2\arpeggio \clef bass |
    r8 <re,, sold> dod' <re, sold> \clef treble \ottava #1 r <do''' fa> <si' mi> <do, fa>
    \clef bass \ottava #0 r <re,,, sold> dod' <re, sold> \clef treble \ottava #1
    r <do''' fa> <si' mi>2. \ottava #0
    \tt {la,,,16 mi' si' re mi} \stemUp <si la'>4 |
    <la si'>4 <la si'> \stemNeutral |
    \tt {la'16 sol, la re mi} \stemUp <si la'>4 |
    <la si'> <la si'> <si la'> s
    <mi re'>8 \t {la,16 re sol} <mi re'>4 |
    <re mi'> <re mi'> <mi re'> R2.
    
    R1 R2.*3 R2 R2. R1*4
	}
	\relative {
		%%% Air de la Soprano2 %%%
		
		R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1*2 R2. r2 mi,4~ | mi1~ mi2 r4 fad8 sold | si2.~|si2 r4|
		R1*2 | re,4 si' sold8 fad | re4 sold8 fad re dod | sold1 | re'8 fad sold4 re8 dod sold4~ |
		sold2.| R2. | dod,1~ dod~ | dod2 r4 | re fad8 sold fad re | 
		<dod dod'>1~ <dod dod'>~ | <dod dod'>2 r4 | R2.| 
		<< {\voiceTwo <mi mi'>1~\laissezVibrer s1 <dod dod'>2.~ <dod dod'>2 }\\
		{ \voiceOne r2 \clef treble fa''8 sol si do si sol fa sol si4 r4 \clef bass
		r4 la,8 si re4 si8 re fa sol } >> r4
		<sol,,,! sol'!>1~ <sol sol'>2. r4 | R2.*2 | <sol sol'>1~ <sol sol'>2. r4 |
		R2. << {s2 sol''8 re s1 s1 dod8 re fad2~ fad r4 s1 s2.} \\ 
		{R2. <sold,, sold'>1~ <sold sold'>~ <sold sold'>2.~ <sold sold'>~ 
		<sold sold'>1~ <sold sold'>2.}>> r4 R2.*2 R1*2 R2.*2 R1*2 R2.*2 \clef treble
		<re''' la'>1\laissezVibrer r2 \ottava #1
		sol''!4 do | si8 sol fa4 si8 do | si sol fa sol si4 |
		sol4 fa8 do' si4 do8 si | sol fa sol si r do fa, sol |
		si4 do fa, | si8 sol fa4 si8 fa | sol1~|sol2. \ottava #0 r4 | R2.*2 |
		R1*2 |R2.*2 | R1*2 | R2.*2 | R1 r2 <la,,! do!>2\fermata \clef bass |
		
		%%% Récitatif %%%
    r4 r8 mi,4. dod2.\laissezVibrer R1 R2.
    r4 r8 reb4. sib2.\laissezVibrer R1 R2.*2
    r4 r8 mib4 lab,8~ lab2.\laissezVibrer R2.
    <lab mi'>8 r r2 |
    r8 \t {sold,16 la si} re8 r |
    R2.
    sol!1\laissezVibrer R1 R2.*5 R1
    
    %%% Duo %%%
    \repeat unfold 17 <re sib'>4
    \repeat unfold 7 <reb lab'>
    \repeat unfold 4 <si lad'>
    \repeat unfold 4 <sib la'> r
    R2 reb'4 reb lab reb lab fa lab reb lab fa reb |
    reb' r8 lab r4 |
    <mi, mi'> <mi' si'> si' |
    <mi,, mi'> <si'' mi> <mi fad> <lad dod> |
    <mi, si'> <si' mi fad> <mi, si'> <si' fad' dod'> |
    <reb,, reb'> <reb' lab'> <lab' mib'> |
    <reb,, reb'> <reb' lab' mib'> <lab' mib' sib'> |
    <mib' sib' dob solb'>\arpeggio \clef treble 
    <sib'' mib>8 <sib mib> <sol sib> <sol sib>
    <re sol> <re sol> r4 r2 \clef bass |
    
    %%% Piu vivo %%%
    r4 sol,,,16 lab sol sib lab sib lab reb |
    sib reb sib mib reb mib reb mi red mi red fad mi fad mi la |
    fad la fad si la si la do si do si re  |
    do re do fa re fa re sol fa sol fa lab |
    s1 dod,,2. s1 dod4 dod2 |
    s1 dod4 r2 | R2.
    s2. R2. s2. R2. s2. R2.*5
    %FIXME: keep this staff alive
    r4 r8 <re mi> r4 | R2.
    \pl <fa, fa'>1\arpeggio {<sib' re>2\arpeggio fad'}
    sol\arpeggio lab\laissezVibrer R1 |
    
    %%% Tempo giusto %%%
    \repeat unfold 8 <re,, sib'>4
    \repeat unfold 4 <dod la'>
    \repeat unfold 4 <si red si'> |
    <si sol'> r8 <sib sib'>4 <lab lab'> <si si'>8 |
    <sol sol'>2 r4 |
    <sol sol'>2~ <sol sol'>8 sol' \t {sol sol sol} |
    <sol,sol'>2~ <sol sol'>8 sol' \t {sol sol sol} |
    <sol,sol'>8 r r2 | r4 \t {re''8 si dod } |
    <sold,sold'>2~ <sold sold'>8 sold' \t {sold sold sold} |
    <sold,sold'>4~ <sold sold'>8 sold' \t {sold sold sold} |
    <sold,sold'>8 r r <sold sold'> <fad fad'> <la la'> |
    \pl <fa fa'>2\laissezVibrer
    {s4 \stemDown \ttt {mi''16 la re \droite sol si mi} }
    \gauche \ttt {si,, mi la re \droite sol mi'}
    \gauche \ttt {sol,,,re'la' \droite mi' si' sol'}
    \gauche \stemNeutral \pl <fa,,,, fa'>2\laissezVibrer
    {s4 \clef treble \stemDown 
    \ttt {re'''16 mi fa sol \droite si mi \gauche \clef bass } }
    \ttt {sol,, do re \droite la' si mi}
    \gauche \ttt {do,, sol' re' \droite la' mi' si' \gauche}
    fa,,,32 la si mi \droite sol la do re \gauche  \clef treble \stemNeutral
    mi fa sol la \droite si re mi la \gauche \clef bass |
    \pl <fad,,,, fad'>2\laissezVibrer 
    {s4 \stemDown \clef treble \ttt {sol''16 re' la' \droite mi' fad si } }
    \gauche \ttt {fad,, si mi \droite la re sol }
    \gauche \clef bass \ttt {fad,,, mib' sib' \droite fa' do' sol'}
    \gauche \clef treble \ttt {fa, si mi \droite \ottava #1
    sib' mib la } \ottava #0 \gauche R2.
    R1 R2.*3 R2 R2. R1*4
	}
}

ActeUnSceneTroisTerPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R2*3 R2. R2*2 R2.
    <re re'>8 r r2 R2.*2 |
    <si fad' sol re'>2\arpeggio r4 |
  }
  \relative {
    R2*3 R2. R2*2 R2.*4
    <mib, sib'>2\arpeggio r4 |
  }
}

ActeDeuxSceneUnPiano = { \Piano <<
\new Staff = "droite" { 
    \relative { R2.*4 R2 R2.*2 R2 \clef bass r8 <sol lab sib dob re>\arpeggio ~ <sol lab sib dob re>2\laissezVibrer R2.*2 R2 |
R2. R2 R2.*2 R2 | r8 <sol lab si do mib>\arpeggio ~ <sol lab si do mib>2\laissezVibrer | R2.*2 R2 | R2. R2 | R2.*2 | R2 | } }

\new Staff = "gauche" { 
    \clef bass \relative { R2.*4 R2 R2.*2 R2 mi,,2.\laissezVibrer R2.*2 R2 |
R2. R2 R2.*2 R2 | mi2.\laissezVibrer | R2.*2 R2 | R2. R2 | R2.*2 | R2 |} }  >>
}
