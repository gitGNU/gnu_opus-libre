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

ActeUnSceneTroisPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R2.*20 \clef bass sol2.~ sol4 r sol8 sol sol2.~sol4 r8 sol \t {sol sol sol} |
    
    %%% Lamento %%%
    sol1.\laissezVibrer r1 r4 sol4~ sol1 la2~ la1~la8 la \t {la la la~} la1 r2 |
    sib,8 sib \t {sib sib sib~} sib4 r r2 |
    dob8  dob \t {dob dob dob~} dob4 r2 |
    r8    sib \t {sib sib sib~} sib4 r2 |
    r8    dob \t {dob dob dob~} dob4 r2 |
    r8    sib \t {sib sib sib~} sib4 r2 |
    r8    dob \t {dob dob dob~} dob4 r2 |
    r8    mi, \t {mi  mi  mi~ } mi4  r  |
    r8    mi  \t {mi  mi  mi~ } mi4  r  |
    r8    mi  \t {mi  mi  mi~ } mi4  r  |
    r8    mi  \t {mi  mi  mi~ } mi4  r  |
    <do'do'>4. <do do'> <do do'>4 <do do'> <do do'> <do do'>4. r8 r4 | R2*2
    
    %%% Tempo I %%%
    R2.*14
    
    %%% Tempo II %%%
    R1. r8 do, \t {do do do} do4 do2.\laissezVibrer | R1.*4 R1*5/4
    <si'' red sold>1\arpeggio \laissezVibrer R2. r4 <mid, lad mid'>
  }
  \relative {
    do,,8. do16~ do8 do do do | do2. |
    do8. do16~ do8 do do do | do2.\laissezVibrer
    R2.*7
    si8. si16~ si8 si si si | sib2. |
    si8. si16~ si8 si si si | sib2. |
    si8. si16~ si8 si si si | \ottava #-1 <re, dod'>2.\laissezVibrer \ottava #0
    R2.*7
    
    %%% Lamento %%%
    R1.*5 sib'2 re4 r r2 reb fa4 r2 sib, reb4 r2 re fa4 r2 sib, reb4 r2 mib si4 r2|
    \ottava #-1
    mi,2 r mi r mi r mi r <reb reb'>4. <reb reb'> <reb reb'>4 <reb reb'><reb reb'>|
    <reb reb'>4. \ottava #0 r8 r4 | R2*2
    
    %%% Tempo I %%%
    R2.*3
    r4 mi' r r mi r r mi r \ottava #-1 |
    <mi,mi'> <mi mi'> r <mi mi'> <mi mi'> r <mi mi'> <mi mi'> <mi mi'> 
    \ottava #0 R2.*5
    
    %%% Tempo II %%%
    R1. \ottava #-1 do1.\laissezVibrer \ottava #0 R1.*4 R1*5/4
    <do' sol' mi'>1\arpeggio \laissezVibrer R2.
    r4 <si fad' si>
  }
}

ActeUnSceneTroisBisPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R1*3 <do fad>8 <red la'>~<red la'>2 r4 |
    R1*2 <mi, la red>8 <sol do fad>~<sol do fad>2 r4 |
    R1 r2 <do mib>4 <si fa'> | <fad fad'>1~<fad fad'>~<fad fad'>2. r4 |
    R1*8 r2 r4 dod' | <mi sol> r r2 |
    r2 \t {r16 <lad, dod mi>8 <lad dod mi> <lad dod mi>16}
    \t {r16 <lad dod mi>8 <lad dod mi> <lad dod mi>16} |
    \t {r16 <sold lad dod mi>8 <sold lad dod mi> <sold lad dod mi>16}
    \t {r16 <sold lad dod mi>8 <sold lad dod mi> <sold lad dod mi>16}
    \t {r16 <dod mi sol la>8 <dod mi sol la> <dod mi sol la>16}
    \t {r16 <mi sol la do>8 <mi sol la do> <mi sol la do>16 } |
    <fad,fad'>1~<fad fad'> R1
    <sol red' fad>\arpeggio %%% Tomb Raider II !!!
    <sol fad'>2 <sol fad'> <sib do fad> <sib do fad> <sib do fad> <sib do fad> |
    <sib do fad> <sib do fad> <sib do fad> <sib do fad> <sib do fad> <sib do fad>|
    <sib fad' la>2.\arpeggio r4 R2. R1*2
    \tt {fad16 sol la do re}\tt {fad, sol la do re}\tt {fad, sol la do re}\tt {fad, sol la do re}
    \tt {fad, sol la do re} \tt {fad, sol la do re} \tt {fad, sol la do re} \tt {fad, sol la do re}
    \tt {fad, sol la do re} \tt {fad, sol la do re} \tt {fad, sol la do re} \tt {fad, sol la do re}
    \tt {fad, sol la do re} fad, sol la do re fad, sol la do re fad, sol |
    la do re fad, sol la do re \t {fad,8 sol la} \t {do re fad,} |
    \t {sol la do} \t {re fad, sol} \t {la do re} fad, sol |
    la do re fad, sol la do re | <fad, fad'>1~<fad fad'>~<fad fad'>~<fad fad'>2. r4 |
    R1*6 <sib mi la>8 <reb mi sol do>~<reb mi sol do>2 r4 |
    do2~ do8 do \t {do do do} do4 do2.\laissezVibrer | R1*9
    <sol' dod fad>2*2/1\laissezVibrer <sol dod fad>2*2/1\laissezVibrer
    <sol dod fad>2*2/1\laissezVibrer R1
  }
  \relative {
    R1*3 <dod, la'>8 <sib mi sol>~<sib mi sol>2 r4 |
    R1*2 \pl re,2. {sib'8 <sold dod>~<sold dod>2} r4 |
    R1 r2 <lad mi>4 sold <fad, fad'>1~<fad fad'>~<fad fad'>2. r4 |
    R1*8 r2 r4 sib'' <fa lab> r r2 |
    R1 \t {<si,, si'>8 <fa' fa'> <re re'>} \t {<si si'> <fa' fa'> <re re'>}
    \t {<si si'> <la la'> <fa' fa'>} \t {<re re'> <si si'> <la la'>} |
    <fad fad'>1~ fad'8 fad \t {fad fad fad} fad2
    R1
    <si>1\arpeggio si2 si <si sol'> <si sol'> <si sol'> <si sol'> |
    <si sol'> <si sol'> <si sol'> <si sol'> <sold mi'> <sold mi'> |
    <do, sold' mi'>2.\arpeggio r4 | R2. R1*2
    R1*7
    <fad, fad'>1~ fad'4~ fad8 fad \t {fad fad fad} fad4~ fad1~ fad2. r4 |
    R1*6 <la re fa>8 <fad si sold'>~<fad si sold'>2 r4 | R1*11
    <fad' do'>2*2/1\laissezVibrer <fad do'>2*2/1\laissezVibrer
    <fad do'>2*2/1\laissezVibrer R1
  }
}

ActeUnSceneTroisTerPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R2*3 R2. R2*2 R2.
    <re re'>8 r r2 R2.*2 |
    <si fad' sol re'>2\arpeggio r4 |
    <sib sib'>8 r r2 | R2. R1*2
    r4 r8 r16 \ottava #1
    \pl {sol''' <fad, fad'>8 <lab lab'>16 <mi mi'><sol, sol'> re''}
    {<sol sol'>16 fad <fa fa'> lab mi sol, <re' re'>} r8 |
    r4 r16 <si si'> <la la'> <mi mi'> r <red red'> r <fa fa'> r4 |
    r8 r16 \pl {mib la, fa' mi'8} {mib16 la fa <mi mi'>8} r
    <si si'>16 <do do'> <sib sib'>8 r |
    r16 <solb solb'> <fa fa'>8 r <do' do'>16 <reb reb'> <si si'>8 r16 <fa fa'>
    r \stemDown <sol, sol'>\noBeam \stemUp <fad'' fad'>8\noBeam \stemNeutral |
    r8 <dod dod'>16 <re re'> <do do'>8 <re re'>16 <mib mib'> r
    <la, la'> <red red'> <mi mi'> | re'2.\laissezVibrer
    \ottava #0
    R2.*8
    <re,,, mib re'>2.\arpeggio \laissezVibrer | R2.*4
    <re mib re'>2.\arpeggio \laissezVibrer R2.*17
    \ottava #1
    \pl {fa''16 dod do8} {<fa fa'>16 dod' do8} r16
    \pl {do, fa dod} {do' <fa, fa'> dod'} \ottava #0 r4 |
    R2.*2 r2 r8 r16 \ottava #1 <do, do'>
    \pl {fa,, dod' mi do' mi <dod, dod'>}
    {fa' dod mi8 <mi mi'>16 dod} r8 r4 |
    r16 <sol' sol'> r <dod, dod'> r16
    \pl {<dod, dod'> sol' s} {s sol' <red red'>} r4|
    \pl {sol,16 s s <dod, dod'> sol' s s fad'}
    {sol <red red'> \oneVoice r \voiceOne s sol <red red'> \oneVoice r \voiceOne fad' }
    <fa, fa'> <mi mi'> r8 |
    \pl sol, sol'' \ottava #0 r r4 r2 |
    R2.*8
    r2 \ottava #1 <mi, fa'>8 r16 <la sold'> \ottava #0 |
    R2.*2
    r4 r8 \ottava #1 mi'16 <dod, dod'> do'8 <sold sold'>16 <si si'> \ottava #0 |
    R2.*2
    r8 r16 \ottava #1 dod do,8 <si sold' si> r16 <re si' re> r8 <re mi re' mi>16 <re mi re' mi>
    \ottava #0 r8 r4
    \gauche <sol,,, sib re> \droite <sol' sib re> \gauche <sib, re sol> \droite <fad' si red> |
    \gauche <si, red fad> \droite <sol' si red fad> <sib re sol> |
    R2.*19
  }
  \relative {
    R2*3 R2. R2*2 R2.*4
    <mib, sib'>2\arpeggio r4 | R2.*2 R1*6 R2.
    re,2.\laissezVibrer R2.*2 re2.\laissezVibrer R2. re\laissezVibrer R2.*2
    re2.\laissezVibrer R2.*2 re2.\laissezVibrer R2.*5
    r8 sold la do dod mi | fa,2.\laissezVibrer R2.
    r8 sold la do dod mi | fa,2.\laissezVibrer R2.
    r8 sold la do la sold| dod,2.\laissezVibrer R2.
    r8 mi fa sold la do  | dod,2.\laissezVibrer R2.
    r8 mi fa sold fa mi  | <la, la'>2.\laissezVibrer R2.*2
    <la la'>2.\laissezVibrer R2.*5 R1
    fad'2.\laissezVibrer R2.*2 fad2.\laissezVibrer R2.*2
    <fa, fa'>2.\laissezVibrer R2. r4 <dod' dod'>2 |
    <fa, fa'>2.\laissezVibrer R2. r4 <la la'>2 |
    \ottava #-1
    <dod, dod'>2.\laissezVibrer R2. r4 <la' la'>2 |
    <dod, dod'>2.*1/3\laissezVibrer \ottava #0 s2 s2. s4
    \pl {fa''!8 fa,4.} {<sib' re>4 <si red fad>} |
    \ottava #-1
    <la,,, la'>2.\laissezVibrer \ottava #0 R2.*18
  }
}

InterludeTroisPiano = { \Piano
  \PianoDeuxMains
  \relative {
    r2 r4 <do reb>8 r |
    r2 <do reb>8 r | R1 R2. \clef bass
    <do,mib si'>8 <do mib si'>4 <do mib si'>
    <do mib si'> <do mib si'>8 |
    <do mib si'> <do mib si'>4 <do mib si'> <do mib si'>8 |
    <mi! sol do mib> <mi sol do mib>4 <mi sol do mib>
    <mi sol do mib> <mi sol do mib>8 |
    <mi sol do mib> <mi sol do mib>4 <mi sol do mib> <fa lab reb mi>8 |
    <mi sol do mib> <mi sol do mib>4 <mi sol do mib>
    <mi sol do mib> <mi sol do mib>8 |
    <mi sol do mib> <mi sol do mib>4 <mi sol do mib> <mi sol do mib>8 |
    <fa si> <re sold> <fa si> <re sold> <fa si> <reb do'> |
    <fa si> <re sold> <fa si> <re sold> \clef treble |
    <lab' si dod re sol>4 <lab si dod re sol> <lab si dod re sol> |
    <lab si dod re sol> <lab si dod re sol> |
    <si re fad sol sib> <si re fad sol sib> |
    <si re fad sol sib> <si re fad sol sib> \clef bass |
    sol16 \gauche sol,, sol' \droite mi' \gauche mi,, mi'
    \droite mi' \gauche sold, |
    \droite sold' \gauche mi, mi' \droite do' \gauche sold,
    \droite sold' \gauche mi \droite mi' \clef treble | s4
    r16 re' sib' dod | <fad, lad dod fa!>8 r r4 |
  }
  \relative {
    r2 r4 re,8 r |
    r2 re8 r | R1 R2.
    <mi, sol>4 <mi sol> <mi sol> <mi sol> |
    <mi sol> <mi sol> <mi sol> |
    <mi si'> <mi si'> <mi si'> <mi si'> |
    <mi si'> <mi si'> <mi si'> |
    <mi si'> <mi si'> <mi si'> <mi si'> |
    <mi si'> <mi si'> <mi si'> |
    r8 <mi sol> r <mi sol> r <mi sol> |
    r <mi sol> r <mi sol> |
    r <mi sol mi'> r <mi sol mi'> r <mi sol mi'> |
    r <mi sol mi'> r <mi sol mi'> |
    r <mi sol mi'> r <mi sol mi'> r <mi sol mi'> r <mi sol mi'> |
    s2 s2 si'16 \droite si' \gauche sol \droite sol' \gauche \clef treble
    re sib' dod8 \clef bass |
    <la,, la'>8 r r4 |
  }
}

ActeUnSceneQuatrePiano = { \Piano
  \PianoDeuxMains
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*2
    s2 R1 R2. <la'do re>2 <la do re> <la do re> <la do re>
    <sol la do re> <sol la do re> <sol la do re> |
    <do re>4 <la do> r <la do> | <do re> <la do> r <la do> |
    <la do re> <sol la do> <la do re> <sol la do> <la do re> <sol la do> |
    <la do re> <sol la do> <la do re> <sol la do> |
    <la do re> <sol la do> <re sol la> <do re> |

    %%% Agitato %%%
    R2.*5
    <si mi>2. <mib sol> <do sol'>4 r2 |
    R2.*10
    r2 la'32 sib re mi la8 \clef bass |
    r8 <red,,, mi'> \clef treble \ttt {r16 la''' re, mi la, si}
    mi,8 \gauche \t {mi,16 mi mi} \droite | R2.
    \ttt {r16 re' la' mi' la, re} la'4 r8 \gauche \t {mi,,16 mi mi} \droite |
    r16 <mib' lab re> r8 r2 | s2. R2.
    s2. <re' mi la>4 s2 |
    <mi' la>2\laissezVibrer s2 |
    R2. R1 R2. R2 R2. R2 R2. R2 R2.
    R1*5 R2 R2. R1 |
   
    %%% Andante a piacere %%%
    r2 <la,,, dod>~ <la dod> r |
    r <la dod>~ <la dod> r |
    r <si fa'>~ <si fa'> r |
    r <si fa'>~ <si fa'> r |
    r4 <mib la dod>~ \t {<mib la dod> <mib la dod> <mib la dod>~} |
    <mib la dod>8 <mi sold re'> <mi sold re'> <mi sold re'>~
    \t {<mi sold re'> <mi la red> <mi la red>} |
    r4 <lab re fad>~\t {<lab re fad> <lab re fad> <lab re fad>~} |
    <lab re fad>8 <sib mi sold> <sib mi sold> <sib mi sold>
    \t {<sib mib la> <sib mib la> <sib mib la>} |
    R1*7 r4 <re,sol si> <mib fad la re>2\laissezVibrer s2 R2.*6

    %%% A tempo %%%
    r8 <mi sol do>~\t {<mi sol do><mi sol do><mi sol do>}
    \t {<fa sib reb><fa sib reb><fa sib reb>}
    \t {<sol do mib><sol do mib><sol do mib>} |
    r <sib reb solb>~\t {<sib reb solb><sib reb solb><sib reb solb>}
    \t {<do mib lab><do mib lab><do mib lab>}
    \t {<dod fad la><dod fad la><dod fad la>} |
    \t {<red sold la><red sold la><red sold la>}
    \t {<fad la><fad la><fad la>} \t {<sold la><sold la><sold la>} r4 |
    <la,,sib sol' la>2\laissezVibrer s2 |
    R2. R1 R2. R1 R2. R1 R2.
    r8 \stemUp <dod'fa la dod>~
    \t {<dod fa la dod><dod fa la dod><dod fa la dod>~}
    <dod fa la dod>16 <dod fa la dod><dod fa la dod><dod fa la dod>~
    \t {<dod fa la dod>8 <dod fa la dod> <dod fa la dod>} \stemNeutral |
    r8 \stemUp <dod fa la dod>~
    \t {<dod fa la dod><dod fa la dod><dod fa la dod>~}
    <dod fa la dod>16 <dod fa la dod><dod fa la dod><dod fa la dod>~
    \t {<dod fa la dod>8 <dod fa la dod> <dod fa la dod>} \stemNeutral |
    \t {r4 \stemUp <dod fa la dod> <dod fa la dod>} <dod fa la dod>8 <dod fa la dod> |
    <dod fa la dod><dod fa la dod> 
    \t {<dod fa la dod>4<dod fa la dod><dod fa la dod>} \stemNeutral |
    r4 \stemUp <red sol si red>2 \stemNeutral |
    r8 \stemUp <red sol si red>8~ <red sol si red>2. |
    <red sol si red>2 \stemNeutral r8 \stemUp
    <fa sold si fa'>~ \t {<fa sold si fa'><fa fa'> <fa fa'>} |

    <re re'>4 r2 | R4.
    r8 <sold,, lad> <sold lad> <sold lad> r <sold lad> |
    <sold lad> r <sold lad> | <re'' re'> r r4 R4.
    r8 <sol,,do fa> <sol do fa> r |
    <sol do fa> <sol do fa> <sol do fa> <sol do fa> |
    <re''sold re'mi> r r4 | R4. \clef bass |
    <re,,mi sold lad dod>8 <re mi sold lad dod> <re mi sold lad dod> r |
    <re mi sold lad dod> r <mi sold lad dod> <mi sold lad dod> \clef treble |
    <si're mi> <si re mi> <la re mi> <la re mi> |
    <si re mi> <si re mi> <la re mi> |
    <si re mi fa> <si re mi fa> <la re mi sol> <la re mi sol> |
    <si! re mi sib'> <si re mi sib'> <la re mi sol> <la re mi sol> |

    R2 R4. r2 r8 \t {sold''16 si dod} |
    <re, re'>8 re, re re re re re re |
    re re re re re re re re |
    <re mib> <re mib> <re mib> <re mib> <do mib> <do mib> <do mib> <do mib> |
    <do fa> <do fa> <do fa> <do fa> <sib fa'> <sib fa'> <sib fa'> <sib fa'> |
    <la sib fad'> <la sib fad'> <la sib fad'> <la sib fad'>
    <la sib fad'> <la sib fad'> <la sib fad'> <la sib fad'> |
    <la sib fad'>-> <la sib fad'> <la sib fad'> <sol la do mib fad>->
    <sol la do mib fad> <sol la do mib fad> <sol la do mib fad>-> <sol la do mib fad>|
    r <sol la do mib lab> <sol la do mib lab>4 <do mib fad si> r8 <mib fad si> |
    r <mib solb lab reb> r4 <mib fa lab reb> \clef bass
    <red, mi lab reb> \clef treble |
    <re'! re'!>4 s4 s2 | R1*2 \clef bass |

    <re,sib' re>8 <re sib' re> <re sib' re> <re sib' re>
    <re sib' re>  <re sib' re> <re sib' re> <re sib' re>|
    R2
    <re sib' re>8 <re sib' re> <re sib' re> <re sib' re>
    <re sib' re>  <re sib' re> |
    R2.
    <re sib' re>8 <re sib' re> <re sib' re> <re sib' re> |
    R1 \clef treble

    %%% Piu lento %%%
    R2.*3 r4 fa' sib, <fa' solb sib>2.\arpeggio \laissezVibrer |
    R2. r4 fa \gauche re, \droite
    <dob' fa solb sib>2.\arpeggio \laissezVibrer |
    R2. r4 <re fa> <sib do!> |
    s4. <re fa solb sib>4.\arpeggio \laissezVibrer |
    R2.*2 re'8 sib la fad mi re\laissezVibrer |
    <fad la sib re>2.\arpeggio \laissezVibrer |
    <solb sib>4 <reb fa> <lab do> | s2.
    <reb fa solb sib>2.\arpeggio \laissezVibrer | R2.*3
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5
    R1 R1. R1 R1. R1 R1.*5 R1 R1. r2 <dod mi la>4 r |
  }
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*2
    s2^\markup { \score { \new ChordNames \chordmode { la:7 } \layout {indent = 0 }}}
    R1 R2. R1*2 R1. \clef treble <sol'la>2 <sol la> <sol la> <sol la> |
    <si, red fad> <si red fad> <si red fad> <si red fad> <si red fad> \clef bass |
    <mib, sol sib>2. r4 |

    %%% Agitato %%%
    <la, re sol la>8 r r2 | R2.*3
    r2 fad'8 dod | <la re sol>2. <do fa sib> <mi la re>4 r
    <sold,,sold'>~| <sold sold'> <dod dod'> <si si'> |
    <re re'> r2 | <re re'>4 <re re'> <re re'> |
    <re re'> r2 | <re re'>4 <re re'> <re re'> | <re re'> <re re'> <re re'> |
    <mib mib'> r2 | <do do'>4 <do do'> <do do'> | <fad fad'> r2 |
    <lab lab'>4 <lab lab'> <lab lab'> | <sib, sib'> r8 <sib sib'>4 <sib sib'>8 |
    mi8 mi' r4 r8 s | mi,4 mi mi | mi r r8 s | mi4 r2 \clef treble |
    \ttt { mib''16 lab sib re \droite mib la} re4 \gauche \clef bass r |
    mi,,,, mi <sib sib'>8 mi |
    \tt {mi'16 si' \droite la re mi} sold4 \gauche
    \ttt {re16 \droite mi sold la re \gauche <la, mi'>} |
    r4 \clef treble \tt {la16 re mi la \droite mi'}
    \tttt {<la re> \gauche la, re mi sold \droite la re \gauche \clef bass} |
    dod,,,,2\laissezVibrer s |
    R2. R1 R2. R2 R2. R2 R2. R2 R2.
    R1*5 R2 R2. R1

    %%% Andante a piacere %%%
    fa2 <sib mib>~<sib mib> reb,8 r r4 |
    fa2 <sib mib>~<sib mib> reb,8 r r4 |
    <fa, fa'>2 <lab'mib'>~<lab mib'> reb,8 r r4 |
    <fa, fa'>2 <lab'mib'>~<lab mib'> reb,8 r r4 |
    <sol, sol'>1*1/4\laissezVibrer <dod' fad lad>4~
    \t {<dod fad lad> <dod fad lad> <dod fad lad>~} |
    <dod fad lad>8 <dod mid si'> <dod mid si'> <dod mid si'>~
    \t {<dod mid si'> <dod fad do'!> <dod fad do'>} |
    <sol, sol'>1*1/4\laissezVibrer <fa''si mib>4~
    \t {<fa si mib> <fa si mib> <fa si mib>~} |
    <fa si mib>8 <fa si solb'> <fa si solb'> <fa si solb'>
    \t {<fa dod' sol'> <fa dod' sol'> <fa dod' sol'>} |
    R1*7 r4 <fa la> <do mi sib'>2\laissezVibrer s2 R2.*6
   
    %%% A tempo %%%
    <do,do'>1*1/8\laissezVibrer <red' sold si>8~
    \t {<red sold si> <red sold si> <red sold si>}
    \t {<fad la re> <fad la re> <fad la re>}
    \t {<sold si mi> <sold si mi> <sold si mi>}
    <do,,do'>1*1/8\laissezVibrer \clef treble <la''re fa>8~
    \t {<la re fa> <la re fa> <la re fa>}
    \t {<si mi sol> <si mi sol> <si mi sol>}
    \t {<re fa sib> <re fa sib> <re fa sib>} |
    \t {<mi sol do> <mi sol do> <mi sol do>}
    \t {<fa sib reb> <fa sib reb> <fa sib reb>}
    \t {<sol do mib> <sol do mib> <sol do mib>} r4 | R1 \clef bass |
    la,,16 fad sold red dod sib' do sol fa re mi' si | la8 r r4 r2 |
    r4 la8 mi sol re | dod sold' si fad fa do mib' sib | la r r2 |
    R1 R2.
    <sol,sol'>1*1/8\laissezVibrer \droite \stemDown <dod''mi sol sib>8~
    \t {<dod mi sol sib> <dod mi sol sib> <dod mi sol sib>~}
    <dod mi sol sib>16 <dod mi sol sib> <dod mi sol sib> <dod mi sol sib>~
    \t {<dod mi sol sib>8 <dod mi sol sib> <dod mi sol sib> \gauche \stemNeutral } |
    <sol,,sol'>1*1/8\laissezVibrer \droite \stemDown <dod''mi sol sib>8~
    \t {<dod mi sol sib> <dod mi sol sib> <dod mi sol sib>~}
    <dod mi sol sib>16 <dod mi sol sib> <dod mi sol sib> <dod mi sol sib>~
    \t {<dod mi sol sib>8 <dod mi sol sib> <dod mi sol sib> \gauche \stemNeutral } |
    \noTuplet 
    \t {<sol,,sol'>2*1/2\laissezVibrer
    \droite \stemDown <dod''mi sol sib>4<dod mi sol sib>}
    <dod mi sol sib>8 <dod mi sol sib> |
    <dod mi sol sib> <dod mi sol sib> \t {<dod mi sol sib>4
    <dod mi sol sib> <dod mi sol sib> \gauche \stemNeutral }
    <fa,,,fa'>2*1/2\laissezVibrer \droite \stemDown <si'' re sold>2 \gauche \stemNeutral |
    <fa,, fa'>1*1/8\laissezVibrer \droite \stemDown <si'' re sold>8~
    <si re sold>2. <si re sold>2 \gauche \stemNeutral r8 <mib,,,mib'>4*1/2
    \droite \stemDown <si''' re sold si>4*1/2 \gauche \stemNeutral fad,,8 |
    <re re'>4  r2 |
    R4.

    <sold sold'>4 r <si si'> | r8 <dod dod'> r |
    <re re'> r r4 | R4.
    <la la'>4 r8 <sib sib'> | r8 r16 <do do'> r4 |
    <mib mib'>8 r r4 R4. <si si'>4 r8 \ottava #-1 <si, si'> \ottava #0 |
    r <do' do'> r16 <re re'> r8 | fa2~fa4 r8 r <fa, fa'> r4 |
    r8 <fa fa'> r <fa fa'> |
    R2 R4. R2.

    <re' re'>4 re re re re re re re |
    re re re re re re re re re re re re |
    <re re'> <re re'> <re re'> <re re'> |
    <re re'> r8 <re re'> r re' <sol la do>4 |
    <re,re'> re'8 <sol la do> r <re re'> r <re,re'> |
    r <re re'> <re' re'> re re, <re' re'> re, re' | re,4 r r2 | R1

    <re sib'>4 <re sib'> <re sib'> <re sib'> R2
    <re sib'>4 <re sib'> <re sib'> R2.
    <re sib'>4 <re sib'> R1

    %%% Piu lento %%%
    R2.*4 <fa' solb sib dob>2.\arpeggio \laissezVibrer |
    R2. r2 s4 <re, mib dod'>2.\arpeggio \laissezVibrer |
    R2.*2 <re' sol>4. <fad sol sib do>\arpeggio \laissezVibrer |
    R2.*5 <mib sol>4 re2~ <re sol lab do>2.\arpeggio \laissezVibrer |
    R2.*3
    
    la8 r sib mib r sold, fad si r mi re, sol | la4 r r2 |
    la8 fad sold red r sib' do sol r re mi' r | la,4 r r2 |
    la8 r re mi r si fad sold r mib sib' r | la4 r r2 | 
    R1. R1 R1. R1
    la8 r sib mib r sold, fad si r mi re, sol |
    la r re mi r si fad sold r mib sib' r |
    la fad sold red r sib' do sol r re mi' r |
    la, si mi r fa, sol r sib r mib, lab r |
    la do sib mib r si fad sold r re mi' r |
    la,4 r r2 | R1.
    \pl {do,1~do1.} {r4 do' \t {do do do} do do~do1} |
    R1
    la8 r sold red r sib' do sol r re mi' si |
    la r mi' re, r sol do sib r mib, lab r |
    la do sib mib r sold, fad si r mi re, r |
    la' sol re' r dod si r sold r mib sib' r |
    la fad sold red r sol do sib r mi re, r |
    la'4 r r2 | R1. r2 <re, la' fa'>4 r |
  }
}

EntractePiano = { \Piano
  \PianoDeuxMains
  \relative {
    R2*9
  }
  \relative {
    sold,,2*1/4\laissezVibrer
    sold'8 \t {sold sold sold}
    sold2\laissezVibrer |
    sold,2*1/4\laissezVibrer
    sold'8 \t {sold sold sold}
    sold2\laissezVibrer |
    sold,,2*1/4\laissezVibrer
    sold' \t {sold sold sold}
    sold2\laissezVibrer |
    r8 <sold,sold'>
    \t {<sold sold'><sold sold'><sold sold'>} |
    <sold sold'>2 sold2*1/4\laissezVibrer
    <sold'sold'>8
    \t {<sold sold'><sold sold'><sold sold'>} |
  }
}

ActeDeuxSceneUnPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R2.*4 R2 R2.*2 R2 \clef bass r8
    <sol lab sib dob re>\arpeggio ~
    <sol lab sib dob re>2\laissezVibrer R2.*2 R2 |
    R2. R2 R2.*2 R2 |
    r8 <sol lab si do mib>\arpeggio ~
    <sol lab si do mib>2\laissezVibrer |
    R2.*2 R2 | R2. R2 | R2.*2 | R2 | R2.*3 R2 \clef treble
    
    %%% Entrée de la Soprano Deux %%%
    r2 r8 <la' si> | r4 <re, mi la>8 r r4 |
    r <la' re mi>8 r r2 |
    r4 r8 <re mi la> r4 | R1
    <la, mib' lab>2.\arpeggio ~ <la mib' lab>2 |
    <sold re' sib'>2*3/2\laissezVibrer R1
    
    %%% Andantino %%%
    <re'mi la>2*2\laissezVibrer R1 R2.
    <re la'>2*3/2\laissezVibrer R2.*2 R2
    R2.*5 R1 R2. R2
    <si re la'>2*3/2\laissezVibrer R1 R2. R1
    <si re la'>2*3/2\laissezVibrer R1
    r4 <do re sol> r R1 |
    r4 <re fa> r | <re fa> r <re fa> r |
    r <la re mi> r | r <la re> r <la re> | r <la re> r |
    <re la'>2*2\laissezVibrer R2. R1 R2. R1 R2. R1
    r8 sold, dod <fad si> <mi' la re>4\laissezVibrer | R1
    
    %%% Entrée de la Contralto %%%
    <re, sold>2*3/2\laissezVibrer R1
    <la re mi sold>2*3/2\laissezVibrer R1 |
    R2. R1 R2. R1 <la re>2*3/2\laissezVibrer R1 R2. |
    R1 <la re mi>4 r8 <la re mi>4.\laissezVibrer | R1 R2. R1 |
    r4 <do re> r | r8 <do re>4. r8 <do re>4. |
    r4 <do re> r | r8 <do re>4. r8 <do re>4. |
    r4 <do re sol> r | r <do re> r | <fa sib mib> r2 |
    r4 <do fa> <do fa> | r <si mi> <si mi> |
    r  <do fa> <do fa> | r <si mi> r R2.
    <do fa sib>2*3/2\laissezVibrer R2. R1 R2.
    <dod fad>2*2\laissezVibrer R2. R1
    r4 <mib solb> <mib solb> | r <do fa> r8 <do fa>4. |
    r4 <mib solb> <mib solb> | r2 <do fa sib>2\laissezVibrer R2. R1
    <re la'>2*3/2\laissezVibrer R1 R2. R2
    <la re fad>2*2\arpeggio \laissezVibrer R2. R1 R2. R1 R2. R1
  }
  \relative {
    R2.*4 R2 R2.*2 R2 mi,,2.\laissezVibrer R2.*2 R2 |
    R2. R2 R2.*2 R2 | mi2.\laissezVibrer | R2.*2 R2 |
    R2. R2 | R2.*2 | R2 | R2.*3 R2 \clef treble
    
    %%% Entrée de la Soprano Deux %%%
    r2 r8 <dod''mi> | r4 <fad,si>8 r r4 |
    r <dod'fad sold>8 r r2 | r4 r8 <mib lab sib> r4 |
    R1 \clef bass <fa,, mi'>2.\arpeggio ~ <fa mi'>2 |
    <mi red'>2*3/2\laissezVibrer R1
    
    %%% Andantino %%%
    sib'2*2\laissezVibrer R1 R2.
    <mi si'!>2*3/2\laissezVibrer R2.*2 R2
    R2.*5 R1 R2. R2
    <fad,dod'mi>2*3/2\laissezVibrer R1 R2.
    do'4 sol' fad r | <fad,dod'mi>2*3/2\laissezVibrer R1
    r4 <sib fa'> r R1
    r4 <mib lab sib> r | <mib lab sib> r <mib lab sib> r |
    r sib r | r <si mi> r <si mi> | r <si mi> r |
    R1 R2. R1 R2. R1 R2. R1
    fad2*3/2\laissezVibrer R1
    <sold'dod>2*3/2\laissezVibrer R1
    fad,2*3/2\laissezVibrer R1
    R2. R1 R2. R1 do2*3/2\laissezVibrer R1 R2.
    R1 dod2*3/2\laissezVibrer R1 R2. R1
    fad4 r fad' | fa, r fa' r | fad, r fad' | fa, r fa' r |
    fad, r fad' | sol,2.~ sol4 r2 |
    sib4 r2 | si4 r2 | sib4 r2 | si4 r2 |
    R2. mib2*3/2\laissezVibrer R2. R1 R2.
    <re si'>2*2\laissezVibrer R2. R1
    lab4 r lab' | la, r la' r | lab, r lab' |
    sol,2*2\laissezVibrer R2. R1
    re2*3/2\laissezVibrer R1 R2. R2
    <sib' fa' sold>2*2 \arpeggio \laissezVibrer
    R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisPiano = { \Piano
  \PianoDeuxMains
  \relative {
  }
  \relative {
  }
}
