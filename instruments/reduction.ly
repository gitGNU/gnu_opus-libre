%------------------------------------------------------------------%
% Opéra Libre -- reduction.ly                                      %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

Accompagnement={
  \set PianoStaff.instrumentName = \markup { \hcenter-in #27.5 "Piano  "}
  \set PianoStaff.shortInstrumentName = "Piano.  "
  \set PianoStaff.midiInstrument = "acoustic grand" 
}

PrologueMainDroite={
	\relative{
    %%% Introduction %%%
    
		\partial 4 #(set-octavation 1) r8 \ttt { \voiceTwo mi'32[ fa sib] \voiceOne si![ mi fa]} |
    la4 r8 <lad' si> r4 | r8 <lad si> r4 r16 <lad si>8. |
    <lad si>8 <lad si> \t {<lad si> <lad si> <lad si>} \tt {<lad si>16 <lad si> <lad si> <lad si> <lad si>}|
    <lad si>1\glissando -\markup "(touches noires)" | #(set-octavation 0)
    mi,,,2~ mi4 r | << {mi16 fa8.~fa2\laissezVibrer } \\ { mi,2.} >> \clef bass |
    \repeat tremolo 8 {mi32 fa} \repeat tremolo 8 {mi32 fa} |
    <<{mi'2.\laissezVibrer s4} \\ {red,4 mi2~ mi4}>> mi~| mi8 mi \t {mi mi mi} |
    \set Staff.timeSignatureFraction = #'(4 . 4)
         \compressMusic #'(3 . 4)
    <<{\graceNotes {\tt { sol16[ lab sib si! re]~}} re2.}\\ 
    {s4 s8 \repeat tremolo 2 {mi,32 fa} \repeat tremolo 8 {mi32 fa} } >>
    \repeat tremolo 8 {mi fad}
    \repeat tremolo 8 {mi fad}
    \set Staff.timeSignatureFraction = #'(4 . 4)
         \compressMusic #'(3 . 4)
    <<{\graceNotes { sol16[ la! sib do]} mib2.}\\ 
    {s4 s8 \repeat tremolo 2 {mi,32 fad} \repeat tremolo 8 {mi32 fad} } >>
    \repeat tremolo 8 {mi sol}
    \repeat tremolo 8 {sol la}
    <la si re mi la>2\arpeggio r8 sold16 si |
    \t { <dod, dod'>4 <re re'> <mi mi'>} \clef treble
    \t { <sol sol'> <sib sib'> <do! do'!> } |
    << <mi fad lad red>2\laissezVibrer \\ {
    s4 \clef bass <sid, dod>8 <sid dod> } >>
    <sid' dod> <sid, dod> | <sid dod> <sid' dod> <sid, dod> r |
    << { fad'4 sold <fa! sib mi>8 <sol! do mi>~ <sol do mi>2 } \\ {
    <sid, dod>8 <sid dod> <sid dod> <sid dod> s4 r8 <sid dod> <sid dod> <sid dod>}>>
    <dod re> <dod re> <dod re> <dod re> <sol' si re mi> <dod, re> |
    <dod re> <dod re> <re mib> <re mib> <red la' mi'> <red la'> <red mi> <red mi> <red mi> <red mi>|
    <red mi> <red mi> <red mi> <red mi> |
    r8 <mi fa> <mi fa>4 | <mi fa>8 <mi fa>4 <mi fa>8 <mi fa>4 |
    
    re8 re16 <re' mib> \repeat unfold 6 {mib, <re' mib>} |
    mib, <re' mib> re mib \clef treble re' mib, re mib |
    mib, re' mib, re' fa, re' fa, re' |
    lab re lab re sib re sib re | mib re mib re <mib fa> re <mib fa> re |
    R2 | \t {r8 <sol, mib' sol> r <mib' fa la> r <mib fa lab do>}
    <re' re'>4 <re, re'> <re, re'> | r8 <mi sib'> <sol do> <sib mib> <do fad> <mib si'!> |
    <re' re'>4. <re, re'>4. \clef bass 
    << {<sib, sib'>2 s4} \\ { r8 mi <dod sol'> <mi la> <dod sol'> <mi do'!> }>>
    << {<dod  dod'>2 s4} \\ { r8 mi <dod sol'> <mi la> <sol do!> la}>>
    \clef treble
    << {<mi mi'>2 s4} \\ { r8 la <sol do> <la mib'> <do fa> <mib solb> } >>
    << {<lab, lab'>2 s4} \\ { reb8 <sib mi> <reb sol> <mi la> <sol do> <lab mib'> } >>
    <la fa'> <do mib> <do lab'> <mib fa> <mib si'> <fa lab>
    <re re'>8. <re re'>16 <re re'>8 <mi sold si dod re>4 <mi sold si dod re>8 |
    <mi sold si dod re>4 <re re'>8 <re fad si re>8~ <re fad si re>16 <re fad si re> <re fad si re>8 |
    \ttt { re'16 la fa re do si } 
    \ttt { fad' dod la fad red dod}
    \ttt { do sol' re sib sol fa}
    \gauche
    \tttt{ mi re si la sold fad red }
    \droite s2 | \oneVoice
    <dod''' re>2\laissezVibrer | R2|
    
    %%% Solo Ténor %%%
    
    R1*2 R2. R1 R2.
    r2 sol,~ | sol~ sol~ sol | sol~ sol2. lab sol2 fa4 \clef bass re2.~ re \clef treble R2.
    <sol lab sol'>\arpeggio ~ <lab sol'>2 <sol'' lab>4 |
    <lab,, sol'> r <sol'' lab> | <lab,, sol'> <sol'' lab> <sib,, sol'> | <la''! sib> <do,, si'!> <lad'' si!> |
    r4 <sol lab>8 <sol, lab> r <sol' lab>| <sol, lab> r <sol' lab> | r <lab, sol' lab> <sol, lab sol'> |
    <sib' la' sib> <lad, si! lad'> <si' do si'> | <sol, lab sol'> r <sol'' lab> |
    <sol, lab> r <sol' lab> <sol, lab> r <sol' lab> <sol, lab> r <sol' lab> | <sol,, lab sol'> <sol'' lab> <sol, lab>|
    <fab' mib' fab> <mib sib' reb mib> <reb lab' sib reb> | <sol, lab mib'> <sol lab reb> <sol sib> |
    <reb sol> sib lab | sol r <lab sol'> r <si! sol' lab> r | \stemUp
    r8 \gauche <red, si'> <lab' sol'> \droite <mi' do'> \gauche <lab, sol'> <red, si'> \droite
    r  \gauche <red  si'> <lab' sol'> \droite <mi' do'> \gauche <lab, sol'> <red, si'> \droite
    r \stemNeutral <fad re'!> <si sol'> <re sib'> <si sol'> <fad re'> |
    r <fad re'> <si sol'> <re sib'> <si sol'> <fad re'>
    la <fa dod'>[ <sold mi'>] <do sold'> <la mi'> <fa dod'>
    sib <fa dod'>[ <lad fad'>] <dod la'> <fad re'> <la! dod lad'>
    << { 
      < mi' fa sol sib do>4.\laissezVibrer s4.*3
    } \new Voice {
      r8 \gauche \stemUp <mi,, sol> <fa sib> \stemNeutral <sol reb'> <sib do> <sib mib>
      \droite <dod fad> <red sold> <fad la> <red sold > <fad la> <sold si> 
    } >>
    << { 
      <la re>8. <fad' la si do>\laissezVibrer s4.*3
    } \new Voice {
      r8 \gauche \stemUp <mi,, la> <fad do'> \stemNeutral \droite 
      <la re> <do fa> <re sol> <fa lab> <sol sib> <lab reb> <sib mib> <reb fab > <mib solb>
    } >>
    << { 
      < mi! la!>16 si' <fad sol la do re>4\laissezVibrer s4.*2
    } \new Voice {
      r8 \gauche \stemUp <sol,, do> <la re> \stemNeutral \droite
      <do mib> <re fa> <mib lab> <fa sib> <lab dob> <sib reb solb>
    } >>
    <mi la do sold'> <fa fa'> <mib mib'> |
    
    <re fad lad re>16 re <fad, lad re> re r8 |
    r16 <fad, si mi > r <sib mib lab> r <fa'! sol do> |
    <re' sol la re>16 re <sol, la  re> re r8 |
    r16 <si mi la> r <mib lab reb> r <sol do fa> |
    r16 <sold dod fad> do <fa sib> fa <sib mib>  |
    <sib re sol> <sib re sol> <sib re sol> <fa sib re> <fa sib re> <fa sib re> |
    <sib re sol> <sib re sol> <sib re sol> <fa sib re> <fa sib re> <fa sib re> |
    <sib re sol> <sib re sol> <sib re sol> <fa sib re> <fa sib re> <fa sib re> |
    <lab lab'>8 <sol, lab dod>16[ <lab, dod re> <lab dod re> <lab dod re>] |
    <sol' lab dod> <sol lab dod> <sol lab dod> <lab, dod re> <lab dod re> <lab dod re> |
    <sol' lab dod> <sol lab dod> <sol lab dod> <lab, dod re> <lab dod re> <lab dod re> |
    <sol' lab dod> <sol lab dod> <sol lab dod> re <sol lab dod> re |
    <mi' lad si> <mi lad si> <mi lad si> <fa, lad si> <fa lad si> <fa lad si> |
    <mi' lad si> <mi lad si> <mi lad si> <fa, lad si> <fa lad si> <fa lad si> |
    <mi' lad si> <mi lad si> <mi lad si> <fa, lad si> <fa lad si> <fa lad si> |
    <mi' lad si> <mi lad si> <mi lad si> <fa, lad si> <fa lad si> <fa lad si> |
    <mi' lad si> <mi lad si> <mi lad si> <fa, lad si> <fa lad si> <fa lad si> |
    <mi' lad si> <mi lad si> <mi lad si> <fa, lad si> <fa lad si> <fa lad si> |
    <fa' sol sib re> <fa sol sib re> <fa sol sib re> <si,, mi sold> <si mi sold> <si mi sold> |
    << { <fa'' sol sib re> <fa sol sib re> r \stemDown <si,, mi sold> <si mi sold> <si mi sold>
    \stemUp <sol'' si re>[ <sol si re> <sol si re>] \stemDown <lab,, reb fa> <lab reb fa> <lab reb fa>}
    \new Voice { r8 \stemUp dod' si \stemDown mi4 \stemUp re8} >>
    \stemNeutral <mi sol si re>16 <mi sol si re> <mi sol si re> <lab,, reb fa> <lab reb fa> <lab reb fa> |
    << { <sold'' si dod re> <sold si dod re> r \stemDown <re, fa sol> <re fa sol> <re fa sol>
    <dod' re mi> <dod re mi> <dod re mi> <la, sib do mib> <la sib do mib> <la sib do mib>}
    \new Voice { r8 \stemUp mi'' re sol4 r8} >>
    \stemNeutral <fa, solb lab dob>16 <fa solb lab dob> <fa solb lab dob>
    \gauche <dod, mi fad sol> <dod mi fad sol> <dod mi fad sol> \droite \clef bass |
    r <mi sol> r <dod fad> r <si mi> |
    fa solb lab si dod re mi re dod si lab solb
    lab sib si dod mi fad sol fad mi dod si lad
    si dod mi fad sol la do la sol fad mi dod
    <fad, la re>8 <sold si mi> <la re fa> <si mi sol> <re fa sib> <mi sol do> | \clef treble
    <fa sib reb> <sol do mib> <sib reb solb> <do mib lab> <dod mi la> |
    <la'' do fa>16 <la do fa> <la do fa> <mi la do> <mi la do> <mi la do> 
    <la do fa> <la do fa> <la do fa> <mib solb sib> <mib solb sib> <mib solb sib> |
    <re sol dod> <re sol dod> <re sol dod> <si mi sol> <si mi sol> <si mi sol>
    <re sib'> <re sib'> <re sib'> <sold, dod mi> <sold dod mi> <sold dod mi> |
    <si sol'> <fad re'> <sold mi'> <red si'> <mid dod'> <sid sold'> r4 r8 |
    
    <sib' fa' dod'>1\laissezVibrer | R1*3 \clef bass | sold,2 sol4 si2 sib4 |
    <sol lab sib dob re>1\arpeggio s2 |
    <la' re fa sib>1\laissezVibrer | R1*2 \clef bass | la,2   sol4 do2 sib4 |
    <sol la sib do  mib>1\arpeggio s2 |
    <dod' mi do'!>2 <la do sold'>\laissezVibrer R1 |
    r8 \gauche do,,~ \t {do  \droite  mi' <si si'> } \t {la' <mi mi'> re'} |
    
    << { \voiceThree <si la'>2.\laissezVibrer } 
    \new Voice { \voiceOne s4 #(set-octavation 1) <fa'' lab reb> <fa lab reb>}
    \new Voice { \voiceTwo r4 <mi, do'> <mi do'>} >> \oneVoice |
    r4 \pl <si! re> <sib' mib solb> <si re mib solb> |
    #(set-octavation 0) r4 \pl <fa, lab reb> <mi'! la! do>
    \pl <fa, lab reb> <mi' la do> |
    r4 \pl <si,! re> <sib' mib solb> \pl <si, re> <sib' mib solb> |
    r4 <sold fad'> <sold mi'> r4 <sol! sib mib> <sol la mib'> |
    <fa! lab mib'> <fa lab reb> <sol red'> <mib lab dob> \clef bass |
    r8 re, mib sib' si fad' \clef treble | sol re' mib sib' | r8
    \pl <sold, si! mi!> <sol'! do mib>  \pl <fa,! sib reb> <fad' la re!>
    r4 \pl <fa,! sib reb>8 <fad' la re!> \pl <red, sold si!> <mi' sol! do>
    r4 \pl <red, sold si>8 <mi' sol do>  \pl <re,! fa sib> <dod' mi la> r |
    \stemUp \t {r8 mi' mib} \t {lab, sol do,} \t {si mi, mib}
    \gauche \t {lab, sol do,} \stemNeutral \droite | r2
    \pl <fa' sold>4 <dod' mi la> \pl <fa, sold> <dod' mi la> |
    r4 <la re! fa> <la dod fa> | r <fa sold dod mi> <fa sold dod mi> |
    r4 \pl dod2 {<fad la re>4 <mid la re>} |
    r4 <fa sold dod> <fa sold dod> | r <dod la'> <dod la'> |
    r <sib reb solb> r <la do fa> |
    
    r8 r16 \gauche <do,, si'> \set followVoice = ##t
    \droite <la'' fad'>8 <fad' re'>4 \gauche
    <do, si'>8~ \set followVoice = ##f <do si'>8. \droite <fad' re'>16 |
    <re' la'>8 <la' mib'>~ <la mib'>16 <re, la'> <la' mib'>8 <la! mib' lab>4 |
    <la! re la'!>8 r \clef bass <do,,, re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re fa> <re lab'> <fa sib> \clef treble |
    <la! do> <la do> <re mib> <re mib> | <la do> <la do fa> <la do fa> <do fa lab> |
    <re sol sib> <la! do fa> <la do fa> <si! re sol> \clef bass |
    <fad re'> mib <do re> <do re> | 
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <do?re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> re re
    <re mib> <re mib> re re
    mib mib re re
    mib mib re re
    re re re re
    re r re r
    re r r4 \clef treble |
    <fad' si mi>8 r r4 <mi la re>8 r  r4 <reb lab'>8 r r4 |
    R2*3 sib8 r r4 <fa mi'>8 r mi'' r |
	}
}

PrologueMainGauche={ \clef bass
	\relative{
    %%% Introduction %%%
    
		\partial 4 r4 \clef treble |#(set-octavation 1) \repeat tremolo 12 {sib'''32 si!} |
    \repeat tremolo 12 {sib32 si!} \repeat tremolo 12 {sib32 si!}|<< { la1 \glissando _\markup "(touches blanches)" #(set-octavation 0)\clef bass 
     <mi,,,, mi'>2\laissezVibrer } \\ { s1 s4 mi,4\laissezVibrer }>>|
    r4 <mi mi'>\laissezVibrer | r2 <mi mi'>4\laissezVibrer | r4 <mi mi'>\laissezVibrer |
    r8 <mi'> \t {mi mi mi} |
    <mi, mi'>8\laissezVibrer \repeat tremolo 2 {mi'32 red'} \repeat tremolo 8 {mi,32 red'}
    << \repeat tremolo 8 {mi,32 red'} \\ mi,,2\laissezVibrer >>
    \repeat tremolo 8 {mi'32 red'}
    \set Staff.timeSignatureFraction = #'(4 . 4)
         \compressMusic #'(3 . 4)
    {\graceNotes {mi,8[ mi']} mi'8 r8 <mi,, re'!>2\laissezVibrer } |
    mi,4 <mi' re'>\laissezVibrer
    r8 mi \t {<mi re'> mi mi}
    <mi, mi'>4 <mi' dod'> <mi, mi'> |
    <mi' do'!> <mi, mi'> |
    sib''8 mi, \t {la re, sol}|
    <dod, dod'>2 r4 |
    \t {r8 <dod dod'>4 <re re'> <mi mi'>8~}
    \t {<mi mi'>8 <sol sol'>4 <sib sib'> <do! do'!>8}
    <dod, dod'>2 r8 <sol sol'> | r <dod dod'> r <sol sol'> |
    <dod la'>4 <dod si'> <sol sol'>8 <dod dod'>~| <dod dod'>2 |
    <sol sol'>4 <dod dod'> <sib sib'>8 <dod dod'>~ <dod dod'> <sol sol'> <dod dod'>4 |
    <dod dod'>4 <sol sol'>8 <dod dod'> r8 <sib sib'> | r8 <dod dod'>4 <sol sol'>8 |
    <sib sib'>2~ <sib sib'> \t {lab'8 fa mib} |
    
    <re, re'>8 r re' re' | re, re' re, re' | re, re' re, re' |
       
    <re,, re'> re' <mib, mib'> re' |
    <fa, fa'> re' <lab lab'> re | <sib sib'> lab' <si,! si'!> lab' |
  
    \t {<dod, dod'> <re' la' dod> <mi, mi'>}
    \t {<mi' re' mi> <fad, fad'> <fad' re' fad>} \t {<sol, sol'>4 <la la'> <do! do'!>}|
    <re,, re'>4 <re re'>8 <re re'> <re re'> <re re'>|
    <lab' lab'>2 r4 | <re, re'>4. <re' re'>8 <re re'> <re re'> |
    <fad, fad'>2 r4 | <mib mib'>2 r4 | 
    <do' do'>2 r4 | <sib sib'>2 <sol sol'>4~ | <sol sol'> <mi mi'>2 |
    <re re'>2 <re'' fa sib re>4~ | <re fa sib re> <re mib fa lab do>8 sol, mi re |
    <dod, dod'>1\laissezVibrer |
    \t {<dod' dod'>8 <re' dod' re> <dod dod'>} \droite
    \t {<re' dod' re> <dod re> <re' dod' re> \laissezVibrer } \gauche
    R2 R2 |
    
    %%% Solo Ténor %%%
    
    R1*2 R2. R1 R2. R1
    << { 
      \voiceTwo 
      sol,,,,2~ sol~ sol sol~ sol2. 
    }\\ {
      \voiceOne
      s2 s2 lab'4 si fa2 mib fad4 
    } >>
    <sol, do>2. <sol sib>2 <sol la>4~ <sol la> <sol lab>2~ <sol lab>2.~
    \pitchedTrill sol2. \startTrillSpan lab! <sol lab'>2. \stopTrillSpan R2.
    r4 sol' r | R2.*2 
    R4. r8 <sol lab sol'> r| r <sol lab sol'> r | <sol lab sol'> r4 | 
    R4. r8 sol r | r <sol lab sol'> r | r <sol lab sol'> r | r <sol lab sol'> r |
    R4. r8 sol'' <sol, lab> | mib' <sol, lab> <sol, lab> |
    r8 sol lab | <la sib> r <fad sol> r fa r |
    
    \stemDown <mi red'>8 r4 \stemNeutral sol8 r4
    \stemDown <mi red'>8 r4 \stemNeutral sol8 r4
    \stemDown <red red'>8 r4 \stemNeutral fad8 r4
    red8 r4 fad8 r4 | mi8 r4 mi8 r4 | re!8 r4 re8 r16 solb mib reb |
    \stemDown do4.\laissezVibrer \stemNeutral s4. R4. <solb' solb'>8 <mib mib'> <reb reb'>
    \stemDown <do do'>4.\laissezVibrer \stemNeutral R4.*2 <solb' solb'>8 <mib mib'> <reb reb'>
    \stemDown <do do'>4.\laissezVibrer R4. <fad fad'>4 <red red'>8~ <red red'> <dod dod'>4 |
    
    <re! re'!>4 re'8 | <sold,, sold'> <si si'> <dod dod'> | 
    <re   re'>4 re'8 | <sold,, sold'> <si si'> <dod dod'> | <re re'> <fa fa'> <sol sol'> |
    <lab reb lab'>4.\laissezVibrer | <lab, lab'>4 <fa fa'>8~ | <fa fa'> <mib mib'>4 |
    <re re'>4.~| <re re'>~ | <re re'>4 r8 | <mib mib'>4 <re re'>8 |
    <fa fa'>4.~| <fa fa'>~ | <fa fa'>4 r8 | <fa' fa'>4. <re re'> <do do'> |
    <si si'>4.~| <si si'>4 r8 | <sib sib'>4.~| <sib sib'>4 r8 | R4.*3
    <si si'>8 <si sib'> <la la'> | <fa fa'>4 r8 | R4.
    fa'16 sol lab sib si dod mi dod si sib lab sol |
    fa lab sib si dod mi fad mi dod si sib lab |
    \repeat unfold 8 {r <fa, fa'>}
    \repeat unfold 3 {r <fad fad'>}
    <re re'>4 <mib' mib'> <re re'> | <fa fa'>8. <lab lab'> <fa fa'>8 <mib mib'> <re re'> |
    <do do'>2 <mib mib'>4 |
    
    << { \voiceTwo  %\grace la,8~
    la,1~ \oneVoice la~ la2~ la8 mi' \t {mi mi mi} } 
    \new Voice { \voiceOne <fad' re'>1\laissezVibrer s1*2 } >>
    << { \repeat tremolo 16 {mi32 fa} \repeat tremolo 24 {mi fa} }
    \\ {<sib,, mi>1~ <sib mi>4 <sib mi>2. <sib mi>2 } >>
    \repeat tremolo 4 {mi'32 fa}
    \repeat tremolo 4 {mi, fa}
    \repeat tremolo 4 {mi' fa}
    mi, fa mi' fa mi fa \droite \clef treble mi' fa mi'4. r8 \gauche
    << { \voiceTwo %\grace la,,,,8~
    la,,,,1~ \oneVoice  la2~ la8 la \t {la la la}}
    \new Voice { \voiceOne <fad'' dod'>1\laissezVibrer s1} >>
    << { \repeat tremolo 16 {mi32 fad} \repeat tremolo 24 {mi fad} }
    \\ {<sib,, mi>1~ <sib mi>4 <sib mi>2. <sib mi>2 } >>
    \repeat tremolo 4 {mi'32 red}
    \repeat tremolo 4 {mi, fad}
    \repeat tremolo 4 {mi' red}
    red, mi red' mi red mi \droite \clef treble red' mi red'4. r8 \gauche
    << { \voiceTwo %\grace la,,,8~  
    la,,,1~ \oneVoice la2~ la8 sold' \t {sold sold sold}}
    \new Voice { \voiceOne <sold' fa'>2 <fa dod' mi>\laissezVibrer s1} >>
    << { \repeat tremolo 12 {mi32 sol!} } \\ {sib,,2. } >>
    
    <sol sol'>2.~ <sol sol'>2 <dod dod'>4~ <dod dod'>2. |
    <sol sol'>2. \pl <dod dod'> {r4 <la'' do! fa!> <la do fa>} |
    \pl <sol,, sol'>2. {r4 <fad'' si re> <fad si re>} |
    <sib,, sib'> <fad'' la re> <mi,, mi'> <sol'' do> |
    <sol,, sol'> sib' mib fad si! | R2.*2
    \droite \stemDown mi'8 sol, \gauche mi si lab mib do4 \stemNeutral |
    do,1 \pl <fad, fad'>2 { r4 <lad'' dod>} sold, |
    \pl <do, do'>2. {r4 la'' la} \pl <fad,, fad'>2. {r4 si' si} |
    \pl <do, do'>2. {r4 <mi' la> <mi la>} |
    \pl <fad,, fad'>2. {r4 <re'' fa! sib> <re fa sib>} |
    <mi,, mi'>4 <la' re fa> <sol, sol'> <dod' mi> |
    <do,,! do'!>1 <do' si'>4 <do' si'>4. <sold, sold'>8 |
    
    #(set-octavation -1)
    <re re'> lab' sib fa re sib' dod sold re lab' sib fa re sib' dod sold |
    re dod' mi fad #(set-octavation 0) <re re'> fa lab <re, re'> |
    sol sib <re, re'> lab' si! <re, re'> la'! mib #(set-octavation -1)
    <re, re'>4 <re mib'> \repeat unfold 7 {<re dod'> <re mib'>} re
    #(set-octavation 0) re' | re re re re re re re r re r re r |
    <re' sol do>8 r r4 <mi la re>8 r r4 <sol mib'>8 r r4 |
    R2*3 <sib, dob>8 r r4 <mi, re'>8 r mi, r |
	}
}

ActeUnSceneUnMainDroite= {
  \relative{
    
    %%% Air du baryton Un %%%
    
    \clef bass
    do,8 do \t{do do do}| do4 do4~|do2.|
    r8 do \t{do do do} | do4 do4~ | do2.|
    <sol do>8 re' fad la | do <fad, mi'> \clef treble <la fad'> si'|
    <do fad> si <do, mi> la \change Staff="gauche" <do, re> <sol fad'>|
    \stemUp <sol re'> fad' la do \stemNeutral \change Staff="droite" mi fad si do | 
    <sol fad'> re la \change Staff="gauche" mi si fad |
    \stemUp fa'! solb sib do \stemNeutral \change Staff="droite" mib solb lab do |
    <reb solb> do <solb lab> mib \change Staff="gauche" <solb, sib> fa |
    \stemUp solb sib \stemNeutral \change Staff="droite" do mib solb lab do reb |
    solb reb lab mib <solb, do> sib |
    
    \t{la! mib' si'} \t{solb' si, mib,}
    \t{la, mib' si'} \t{solb' si, mib,}|
    \t{la, mib' si'} \t{solb' si, mib,} \t{la, mib' si'}|
    \t {la, mi'! <sol mib'>} \t {<do fad> <sol mib'> mi}
    << { \voiceTwo \t {la, mi'! sol} \t {<do fad> sol mi}}
    \\ { \voiceOne <sol reb'>16[ <sib do> <reb mib>8. <sib reb>16 <sol do> <fa sib>]}>>|
    << { \voiceTwo do' <mi, sol>8. \laissezVibrer r2 }
    \\ { \voiceOne \t {<mib' solb>8 do sib } \t {<solb' lab> mib sib} \t  {<do la'> sol mi}}>>|
    \t {fa lab mi'} \t {<reb la'> mi lab,}
    \t {fa lab mi'} \t {<reb la'> mi lab,}|
    \t {fa lab mi'} \t {<reb la'> mi lab,} \t {fa lab mi'} |
    <<{\t {fa, lab mi'} \t {<reb la'> mi lab,} 
       \t {fa lab mi'} \t {<reb la'> mi lab,}}
       \\ {r4 r8 <sib reb>16 <sol do>~ \t {<sol do>16 <do mib> <sib reb>}
    <do mib>4.}>>|
    << { \voiceTwo \t {<fa, reb' solb>4 <sib mib> <fa reb'>}
       <fa sol do>4 \laissezVibrer }
       \\ { \voiceOne \t { s8 lab fab'} 
    \t { <reb la'> mi lab,} \t {mi' lab la}}>>|
    \t { do fa, lab,} \t {re, lab' fa'}
    \t {do' fa, lab,} \t {re, lab' fa'}|
    \t {do' fa,16 do' lab,8} \t {<fa' do'> <lab, do'> <fa' do'>} \t {<do do'> fa lab,}|
    \t {mi'' sib reb,} \t {solb, reb' sib'}
    \t {mi sib reb,} \t {solb, reb' sib'}
    \t {lab' sib, solb} \t {mi' solb, reb} \t {reb' sib solb}|
    
    <do, do'> <reb do'> <mib do'> <fad do'> <sold do> <la do> |
    <do, reb si'> <do mib si'> <do fad si> <do sold' si> <do la' si> <do si'>|
    <do mib si' re> <do fad si re> <do sold' si re> <do la' si re> <do si' re> <do re'>|
    <fad fad'> <sol fad'> <la fad'> <do fad> <re fad> <red fad>|
    <fad, sol mid'> <fad la mid'> <fad do' mid> <fad re' mid> <fad red' mid> <fad mid'>|
    <fad la mid' sold> <fad do' mid sold> <fad re' mid sold> <fad red' mid sold> <fad mid' sold> <fad sold'>|
    <sol! sold'!> <la sold'> <do sold'> <re sold> <red sold> <fad, mid' sold>|
    <do' do'>4 <do, do'>8 <do do'> \t {<do do'> <do do'> <do do'>} <do do'>4 |
    <do do'>8 <do do'> \t {<do do'> <do do'> <do do'>} <do do'>4|
    
    <lab do>16[ <fa mib'> r <lab do>] <mi fad'>2.~<mi fad'>2.~<mi fad'>2.~<mi fad'>2 \clef bass
    <solb, sib>16[ <mib reb'> r <solb sib>] <mi mi'>4~ <mi mi'>2.~<mi mi'>4~<mi mi'>8 r
    <lab, do>16[ <fa mib'> r <lab do>] |
    
    %%% Entrée du baryton Deux et de la Soprano Un %%%
    
    << { <fad fad'>1~ <fad fad'> }\\{s1 r4 re' re8. re16~re8 re}>>
    << re1 \\ {r4 <do, fa! si> r <do fa si>8 r16 \t {sold''32 si dod}}>>
    <re, re'>4 r r2 |
    <lab' reb fa>4 <si mi sol>2 <lab reb fa>4 | <si! re sib'!>2 <re, do' re>4 r
    \clef bass
    << <re re'>1. \\ { r2 <do re>4 re re8. re16~re8 re }>>
    <do re>1| R1 |
    << {<fa si>16 <do re'>8 <fa si>16 <fa! fad'!>2.~<fa fad'>2}
    \\ {r2 re4 re re8. re16~re8 re} >>
    <do re>1 R1  r2 r4 r8 \clef treble <re' fad> |
    <<{<do si'>8. <mid' fad>16 <si lad'>2. s2 }
    \\{s2 \clef bass re,,4 re re8. re16~re8 re}>>
    <sib re>2. do4 | <sib do> do \t { do lab' mib}| <do si'>1 r2 | 
    r8 <mib lab> <do si'>8. <si' mi>16 <lab sol'>1 \clef treble
    r4 \t {<si sol'>8 <lab mi'> <si sol'>} <mi do'>4
    \t {<sold mi'>8 <red si'> <sold mi'>} <si sol'>2|
    r4 <si, mi do'>2 r4 | r4 <mi lad red>2 r4 r2 |
    <re' dod'>4 re <re, dod'> re' \stemUp <re' dod'>2 \stemNeutral |
    <lad, fa' dod'>1 r2 R1. |
    
    %%% Duo Soprano1/Baryton1 %%%
    
    <sib sib'>16 sib sib sib
    \repeat unfold 6 {sib sib sib sib}
    \t {sib8 sol fa} mi2 r4 |
    \repeat unfold 8 {<sib' do>16 sib}
    \t {sib8 sol la} mi2 r4 |
    << { 
      \repeat unfold 8 {<fa' la>16 <fa la> <fa la> <fa la>}
      \repeat unfold 14{<sol la> <sol la> <sol la> <sol la>}
      \repeat unfold 7 {<do, la'> <do la'> <do la'> <do la'>}
    }\\{
      \repeat unfold 8 <sib mib>8
      \repeat unfold 4 {<sib mib> <sib do mib>}
      \repeat unfold 7 {<sib mib> <sib reb>}
      \repeat unfold 7 {<sib mi> <sib re>}
      \repeat unfold 7 {<sib fad'> <sib mi>}
    }>>|
    #(set-octavation 1) r16 <reb' fa> <do si'!>16. <sol' sib>32 <mi re'>2|
    #(set-octavation 0) r8 <mi,,, sol re'>~<mi sol dod>2. \clef bass |
    \ttt {sol,16 lab sib dod red mi} \ttt {fad mi red dod sib lab}
    \ttt {sib dod red mi fad la} \ttt {si la fad mi red dod} |
    \ttt {red mi fad la si do} \ttt {re do si la fad mi} 
    \ttt { \gauche red \droite mi fad la si do} 
    \ttt { \gauche fad, \droite la si do re fa}  \clef treble |
    r8 <sib do> <sib' do>16 <sib, do> r8 <sib, do> <sib' do> <sib' do>16 <sib, do>8 <sib' do>16|
    <sib, do>8 <sib, do>16 <sib' do> r <sib do>8 <sib' do>16 <sib, do>8 <sib' do>16 <sib, do> r <sib do>8 <sib' do>16|
    r8 <sib, do> <sib' do>16 <sib, do>8 <sib' do>16 <sib, do>8 <sib, do>16 <sib' do>|
    r <sib do>8 <sib' do>16 <sib, do>8 <sib' do>16 <sib, do> r <sib, do> <sib' do>8 |
    <sib do> <sib' do>16 <sib, do> r <sib, do> <sib' do>8 <sib' do>16 <sib, do>8 <sib' do>16|
    <sib, do>8[ r16 <sib' do>] <sib, do>8[ r16 <sib' do>] <sib, do>8[ r16 <sib' do>] <sib, do>8[ r16 <sib' do>]|
    <sib, do> <sib, do> <sib'' do> <sib, do> <do' reb> <do, reb> <reb' mib> <reb, mib> r4\longfermata r8 r16 <sib' do>|
    <sib, do>8[ r16 <sib' do>] <sib, do>8[ r16 <sib' do>] <sib, do>8[ r16 <sib' do>] <sib, do>8[ r16 <sib' do>]|
    <sib, do> <sib, do> <do'' mib> <do, mib> <mib' fa> <mib, fa> <fa' solb> <fa, solb> r4\longfermata r8 r16 <sib do>|
    <sib, do>8[ r16 <sib' do>] <sib, do>8[ r16 <sib' do>] <sib, do>8[ r16 <sib' do>] <sib, do>8[ r16 <do' mib>]|
    #(set-octavation 1) 
    <do, mib> <fa' solb> <fa, solb> <solb' lab> <solb, lab> <lab' si!> <lab, si!> <si' re> <re, mi re' mi> <re mi re' mi>
    #(set-octavation 0)
    r8\longfermata r r16 <sib do> |
    
    <sib, do>[ <sib, do> r <sib' do>] <sib do>[ <sib, do> r <sib'' do>]
    <sib, do>[ <sib, do> r <sib' do>] <sib do>[ <sib, do> r <sib'' do>]|
    <sib, do>[ <sib, do> r <sib' do>] <sib do>[ <sib, do> r <sib' do>]
    <sib do>[  <sib, do> r <sib' do>] <sib do>[ <sib, do> r <sib'' do>]|
    <sib, do>[ <sib, do> r <sib' do>] <sib do>[ <sib, do> r <sib' do>] <sib do>[ <sib, do> r <sib' do>]|
    \repeat unfold 6 { <sib, do>[ <sib do> r <sib do>] } <sib do>[ <sib do> r <sib' do>]
    \repeat unfold 3 { <sib, do>[ <sib do> r <sib do>] } <sib do>[ <sib do> r <sib' do>]
    \repeat unfold 2 { <sib, do>[ <sib do> r <sib do>] } <sib do>[ <sib do> r <sib' do>]
    <sib, do>[ <sib do> r <sib do>] <sib do>[ <sib do> r <sib' do>]
    <sib, do>[ <sib do> r <sib' do>]|
    <sib do>[ <sib, do> r <sib' do>] <sib do>[ <sib, do> r <sib' do>]
    <sib do>[ <sib, do> r <sib' do>] <sib do>[ <sib, do> r <sib do>] |
    
    <sib do>[ <sib do> r <sib do>] <sib do>[ <sib do> <sib do> r] <sib do>[ <sib do> r <sib do>]|
    <sib do>[ <sib do> r <sib do>] <sib do>[ r <sib do> <sib do>] 
    <sib do>[ r <sib do> <sib do>] <sib do>[ r <sib do> <sib do>]|
    <sib do>[ <sib do> r <sib do>] <sib do>[ <sib do> <sib do> r] <sib do>[ <sib do> <sib do> r]|
    <sib do>[ <sib do> r <sib do>] r[ <sib do> <sib do> <sib do>]
    r[ <sib do> <sib do> <sib do>] r[ <sib do> <sib do> r]|
    
    <sib do> <sib do> sib' <sib, do> <sib do> fa' <sib, do> <sib do> <sib do>[ <sib do> r <sib do>] |
    <sib do> <sib do> sib' <sib, do> <sib do> do' <sib, do> <sib do>
    fa'[ <sib, do> r <sib do>] <sib do> [<sib do> r <sib do>]|
    <sib do> <sib do> sib' <sib, do> fa' sib do, fa <sib do> do, fa <sib, do>|
    <sib do> <sib do> reb <sib do> mib <sib do> fa' <sib, do>
    <sib do>[ <sib do> r <sib do>] <sib do> <sib do> <sib' do> <sib, do> |
    <sib do> <sib do> <sib' do> <sib, do> <sib do> <sib do> <sib' do> <sib, do>
    <sib do> <sib' do> <sib, do> <sib do> |
    <sib' do> <sib, do> <sib do> <sib' do> <sib, do> <sib do> <sib'do> <sib, do> |
    
    <do sib' do>[ <do sib' do> r <do sib' do>] <do sib' do>[ <do sib' do> r <do sib' do>]
    <do sib' do>[ <do sib' do> r <do sib' do>] |
    <do sib' do>[ <do sib' do> r <sib do fa>] <sib do fa>[ <sib do fa> r <sib do fa>]
    <sib do fa>[ <sib do fa> r <sib do fa>] <do fa>[ <do fa> r <sib do fa>] |
    
    %%% Trio %%%
    
    \clef bass
    <sib do> <sib do> \t {r <do, sib' do> <do sib' do>}
    \repeat unfold 3 {<si! sib' do> <sib' do> \t {r <do, sib' do> <do sib' do>}}
    r8 <sib do> <la' dod> <sib, do> \clef treble
    <sold'' re'>4 \laissezVibrer r8 <si red sol> |
    
    <re sol mib'>4 <la dod sold'> <re, sol mib'> <si' red sol> |
    <re sol mib'>4 <la dod sold'> <re, sol mib'> r |
    <fad, do' sol'> <fad do' sol'> <sol mi' fad> <sol mi' fad> |
    <la re sib'>2 <lab mi' sol>4 r | r2
    \tt { r16 sib mib fad si } \tt { sib mi sold mi sold } |
    <si dod sol'>4 <lab, re sol> <do, mi sib'> <si' red sol> |
    <si' dod sol'> <lab, re sol> <do, mi sib'> r |
    <sol' do lab'> <sol do lab'> <solb lab sol'!> <solb lab sol'> |
    <mi si' fad'>2 <sol do fa>4 r |
    r2 r4 <sib, mib sol>8. <sib mib sol>16 |
    <dod fad si>2 <sib mib sol>8 r <sib mib sol>8. <sib mib sol>16 |
    <dod fad si>2 <sib mib sol>8 r r4 |
    <sib mib sol> <sib mib sol> <la re fad> <la re fad> |
    <lab reb fa>2 <sol do mi>8 r <sib mib sol>8. <sib mib sol>16 |
    <dod fad si>2 <sib mib sol>8 r <sib mib sol>8. <sib mib sol>16 |
    <dod fad si>2 <sib mib sol>8 r r4 |
    <sib mib sol> <sib mib sol> <lab reb fa> <lab reb fa> |
    <reb solb>2 <sib re>8 r 
    
    << { \voiceTwo <fad' re'>4 <mi do'> <dod la'> <si sol'>} \\
    { \voiceOne <lad'' dod> <sold si> <fa lad> <red sold> } >>
    \stemUp <re fa dod'> \stemNeutral |
    <do mib si'> <la! re lad'> <sol! do sold'> <fa' lad dod> |
    <red sold si> <re fa lad> <do mib sold>8
    #(set-octavation 1)
    r32 do' fa lab reb16
    #(set-octavation 0)
    r8.
    <red,, sold si>4 <re fa lad> <do mib sold>8
    #(set-octavation 1)
    r32 do' fa lab reb16
    #(set-octavation 0)
    r8.
    r4 <do,, sol' si> <si fad' lad> <la mi' sold> |
    
    \clef bass
    << <do, re>2 \\ {
    \gauche \stemUp re,16 \stemNeutral \droite 
    mib fa lab sib lab fa mib } >>
    \gauche re \droite 
    fa lab sib reb sib lab fa
    \gauche re \droite 
    mi sol la sib la sol mi 
    \gauche re \droite
    la' sib do mib do sib la
    \gauche re,\droite 
    fa sol lab sib lab sol fa
    \gauche re \droite 
    sib' reb mib fab mib reb sib
    \gauche re,\droite
    mi fa sol sib do reb mib \clef treble solb lab la si re mi fa sol |
    
    <sib, sib'>8 sib <mib fa la> do <mib fa la> la, la <mib' la sib> |
    do do <mib fa la> sol, <mib' fa la> do do <fa la sib> |
    sol, <fa' la> do <mib fa la> la, do <mib fa sib> la, |
    do <mib fa la> sol, do <fa lab> sol, <re' fa lab> do |
    <fa lab> sol, do <fa lab sib> lab, lab <re fa lab> sol,|
    <fa' lab> do do <fa lab sib> <reb sol> sol, sib <mib sol>|
    sib reb <sol lab> mib sol <lab reb> sol lab| <reb solb> r r4 r1 |
    R1*2
    
    la16 fa sib fa la fa sib fa la fa sib fa la fa sib fa |
    fa mi sib' mi, fa mi sib' mi, fa mi sib' mi, |
    <fa si> sol \t {do re, sol} <fa si> sol \t {do re, sol} |
    \ttt {fad re sol re do' re,} \ttt {fad re sol re do' re,} |
    \ttt {sol mi la mi dod' mi,} \ttt {sol mi la  mi re' mi,} |
    \ttt {sold <re mi> la' <re, mi> re' <re, mi> }
    \t {sol  la \makeClusters <mi si' re>} r8 |
    R2 R1*4 |
  }
}

ActeUnSceneUnMainGauche={ \clef bass
  \relative{
    
    %%% Air du baryton Un %%%
    
    <do,,, do'>2 <do' do'> | <fad, fad'>2 r4 |
    <do do'>2 <do' do'> | <fad, fad'>4 <fad fad'>2 |
    <do do'>8 do'' \t {do do do}| 
    << {do4 do~ do2. }\\ { do,2 <fad, fad'>4. <fad fad'>8~<fad fad'>4}>>|
    \stemDown <do do'>8 do'' \t {do do do}| \stemNeutral
    << {do4 do~ do2. }\\ { do,2 <fad, fad'>2 <fad fad'>4}>>|
    \stemDown <do do'>8 do'' \t {do do do}| \stemNeutral
    << {do4 do~ do2. }\\ { do,2 <fad, fad'>8 <fad fad'>~<fad fad'>2}>>|
    \stemDown <do do'>8 do''  \stemNeutral \t {do do do}|
    << {do4 do~ do2. }\\ { do,2 <fad, fad'>2~ <fad fad'>8 <fad fad'>}>>|
    
    << { % \voiceTwo 
      \grace fa!16  <fa' do'>1 }%\repeat tremolo 16 {fa'!32 do'} } 
    \\ { %\voiceOne 
    %r4 \stemDown \t {do8   do do} do2  \stemNeutral } >> <fa, do'>4 <fa do'>2 |
        r4  \t {do'8   do do} do2 } >> <fa, do'>4 <fa do'>2 |
    << { \voiceTwo \grace {fa,32[ fa']} fa,1 } 
    \\ { \voiceOne r4 \t {do''8 do do} do2 } >> <fa, do'>2 <fa do'>4 |
    << { \voiceTwo \grace reb,8 \repeat tremolo 32 <reb' lab'>32  }
    \\ { \voiceOne r4 \t {do'8  do do} do2 } >> <reb, lab'>4 <reb lab'>2|
    <reb lab'>1 | <reb lab'>2 <reb lab'>4 |
    \t {<do sol'>8 mi' sib' } \t { reb sib mi,}
    \t {<do, sol'> mi' sib' } \t { reb sib mi,}
    \t {<do, sol'> mi' sib' } \t { reb sib mi,} \t { <do, sol'> mi' sib'}
    \t {<do,, sol'> mi' sib'} \t { re! sib mi,}
    \t {<do, sol'> mi' sib' } \t { re sib mi,}
    \t {do, sol'16 do, do'8 } \t { <do, sol'> <do do'> <do mi'>} \t { <do do'> mi' sib'}

    \t {<do,, do'> reb mib } \t {<do fad> sold' la} \t {<do, si'> re' mi}
    \t {<do, mib> fad sold } \t {<do, la'> si' re } \t {<do mi> fa sol }
    \t {<do,, fad> sold' la} \t {<do, si'> re' mi } \t {<fa do' fa> <sol sol'> <sib sib'>}|
    \t {<fad,, fad'> sol la} \t {<fad do'> re' mib} \t {<fad, fa'!> lab' sib}
    \t {<fad, la> do' re } \t {<fad, mib'> fa' lab} \t {<fad sib> si dod}
    \t {<fad,, do'> re' mib} \t {<fad,  fa'!> lab' sib} \t {<fad si> dod' mi}|
    \t {<fad,, lad'> si'16 fad dod'8} \t {<fad, si> <fad dod'> <fad mi'>} \t {<fad fad'> <la la'> <sol sol'>}|
    <do, do'>8 <do do'> \t {<do do'> <do do'><do do'>} <do do'>4 <do do'>8 <do do'>|
    \t {<do do'> <do do'> <do do'>} <do do'>4 \t {<do do'>8 <do do'> <do do'>}|
    
    <solb'' sib>16[ <mib reb'> r <solb sib>] <do, re'>2.~<do re'>2.~|
    << {<do re'>2.~<do re'>2 r} \\
    {<do,, do'>4 <do' do'>8 <do do'> \t {<do do'> <do do'> <do do'>} <do do'>2. <do do'>4}>>
    <do do'>8 <do do'> \t {<do do'> <do do'> <do do'>} <do do'>4 |
    <do do'>8 do \t {do do do} do16 do do do |
    
    %%% Entrée du baryton Deux et de la Soprano Un %%%
    
    #(set-octavation -1)
    <re, re'>8 mib16 re' mib, re' mib, re' 
    re, re' mib, re' mib, re' mib, re' |
    re, re' mib, re' re, re' mib, re' 
    re, mib re' re, mib re' re, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re' |
    re, re' mib, re' re, re' mib, re' 
    re, mib re' re, mib re' re, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re'
    re, mib re' re, mib re' re, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re'
    re, mib re' re, mib re' re, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re'
    re, mib re' re, mib re' re, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re' |
    re, re' mib, re' mib, re' mib, re'
    re, re' mib, re' mib, re' mib, re' |
    \repeat unfold 3 {<mib, mib'>8 fab mib' fab,
    <mib mib'> fab <mib mib'> fab
    \t {<mib mib'> fab mib'} \t {fab, mib' fab,}}
    \repeat unfold 10 {<mib mib'> fab} |
    #(set-octavation 0)
    \t {<mi mi'>4 si'' sol'}
    \t {si, sol' mi'} \droite
    \stemDown  \tupletDown \t {sol, mi' si'} \tupletNeutral \stemNeutral | \gauche
    R1. r2 r4 mi,, sol fa |
    
    %%% Duo Soprano1/Baryton1 %%%
    
    sib8 r r4 r2 | R2. |
    sib4  mi,2 \t {mi8 si dod} | sib r r4 r2 |
    sib'4 mi,2 \t {mi8 dod si} | sib r r4 r2 |
    R1 R2. R1 R2. R1 R2. R1 |
    << { \voiceTwo <sol, sol'>2. } \\ {
    \voiceOne r4 \clef treble <sib'' mi>8 <mi dod'>4. \clef bass}>>
    <sib,, sib'>4. <reb reb'>8~ \t {<reb reb'>4 <sib sib'> <lab lab'>}|
    <sol sol'>2 \ttt {sol'16 lab sib dod red mi} \ttt {fad mi red dod sib lab}|
    \ttt {sol lab sib dod red mi} \ttt {fad mi red dod sib lab}
    \stemDown sol8 r8 s4 \stemNeutral \clef treble |
    \repeat unfold 8 {<sol' re' la'>16 <re' la'>}
    \repeat unfold 8 {<re la'> la'}
    \repeat unfold 6 {<sol, re' la'> <re' la'>}
    \repeat unfold 6 {<re la'> la'}
    \repeat unfold 3 {la la la la}
    \repeat unfold 4 {la la r8} R1 |
    \repeat unfold 4 {la16 <sib, do la'> r8} R1 |
    \repeat unfold 4 {<fa' la>16 <sib, do fa la> r8} R1 \clef bass |
    
    \repeat unfold 2 {<la,, la'>4. <sib sib'>8~ <sib sib'>2 }|
    <la la'>8. <sib sib'>16~<sib sib'>4. <la la'>8 |
    <do do'>2.~ <do do'>2 r |
    <la la'>8. <sib sib'>16~<sib sib'>4 ~<sib sib'>16 <la la'>8. |
    <do do'>1~<do do'>2 <la la'>4| <do do'>2 r4 \t {<la la'>8 <do do'> <sib sib'>}|
    <mib mib'>2.~ <mib mib'>2 r |
    <fa fa'>2.~<fa fa'>2 r |
    <mib mib'>4 <fa fa'>2 |
    <mib mib'>8. <fa fa'>16~ <fa fa'>2 ~ \t {< fa fa'>8 <mib mib'> <fa fa'>}|
    <solb solb'>8. <lab lab'>16~ <lab lab'>2 |
    <solb solb'>4 <lab lab'>4~ <lab lab'>16 <solb solb'>8. <lab lab'> <mib mib'>16~|
    <mib mib'>8. <fa fa'>16~ <fa fa'>8 <solb solb'>~ <solb solb'>16 <lab lab'>8.~|
    <lab lab'>8 <fa, fa'> <solb solb'> <lab lab'> |
    
    <si? si'?> <do do'> <si si'> <re re'> <si si'> <red red'> |
    <si si'> <fa' fa'> <solb solb'> <fa fa'> <la la'> <lab lab'> <sib sib'> <sol sol'> |
    <si si'>16 r <si, si'> r <si, si'> r <si' si'> r 
    <si, si'> r <si' si'> r <si, si'> r <si' si'> r |
    <si, si'>2~ <si si'>4 r
    
    %%% Trio %%%
    
    <si' si'>8 <sib' do> \t { <sib do> <sib do> <sib do> }
    <sib do> si, \t { si si si } |
    <si si'> <sib' do> \t { <sib do> <sib do> <sib do> }
    <sib do>4 <si,, si'> |
    <re' fa dod'> <si lad'> <re la' mib'> <si do'> |
    << {
      \voiceTwo r8 si \t { si si si } 
    } \\ \voiceOne <mi sold red'>2
    >>
    <si re la'>4 r 
    <dod dod'> <re re'>8 <mi mi'> <sol sol'>4 r |
    <sib dod>8 si, \t {si si si} <si re'> re' \t { <do re> <do re> <do re> }
    <sib dod>  si, \t {si si si} <si re'>4 <si, si'> |
    <re'' fad dod'> <si, do'> <sib' fa' la> <si,! sib'>
    << {
      \voiceTwo r8 si \t { si si si }
    } \\ \voiceOne <sol' re' la'>2
    >>
    <fad si mi>4 r
    r2 r4 <do' fa>8. <do fa>16 |
    << {
      \voiceTwo r8 si, \t { si si si }
    } \\ \voiceOne <mi'? sold>2 
    >>
    <do fa>8 r <do fa>8. <do fa>16 |
    << {
      \voiceTwo r8 si, \t { si si si }
    } \\ \voiceOne <mi' sold>2 
    >>
    <do fa>8 r r4 |
    <do fa> <do fa> <si mi> <si mi> |
    <sib mib>2 <la re>8 r <do fa>8. <do fa>16 |
    << {
      \voiceTwo r8 si, \t { si si si }
    } \\ \voiceOne <mi' sold>2 
    >>
    <do fa>8 r <do fa>8. <do fa>16 |
    << {
      \voiceTwo r8 si, \t { si si si }
    } \\ \voiceOne <mi' sold>2 
    >>
    <do fa>8 r r4 |
    <do fa> <do fa> <sib mib> <sib mib> |
    <si! mib lab>2 <sol do fa>8 r r4 |
    << R1 \\ {s2 s4 \droite <lad' fad'> \gauche } >>
    <sold mi'> <fa reb'> <mib si'> <re fa sib> |
    <do mib lab> <la re fa> <sol do mib> r |
    <fad la re> <mi sol do> <dod fad la> r |
    r <lad dod la'!> <la! do sold'> <sol sib fad'> |
    
    \repeat unfold 7 { \voiceTwo re' \voiceOne <re, re'> } <re' re'> <re, re'>
    \repeat unfold 7 {<re' re'>8 re' <la' re> re,}
    \repeat unfold 4 {<re, re'>  re' <do' re> re,}
    <re, re'> re' <do' fa> do |
    re, do' <reb fa> do re, do' <fa sib> reb |
    <re,, re'> r r4 r1 R1*2 |
    
    \clef treble
    \repeat unfold 4 {<do''' mib>8 <la mib'>}
    \repeat unfold 3 {<sib do> <sol do>}
    \repeat unfold 2 {<la si> <fa si>}
    <fad la> <mi la>16 la <fad la>8 <mi la>16 la |
    << { 
      si si sol sol 
      si si <fad sold> <fad sold> 
      si si <fad sold> <fad sold>
      si \makeClusters <re, si'>
    } \\ {
      <dod fad sol>8 <dod fad si>
      <dod fad sol> <sold dod re>
      <sold dod fad><sold dod re>
      <sold dod fad>
    } >>
    r |
    
    R2 R1*4 |
  }
}

ActeUnSceneUnBisMainDroite = {
  \relative {
    R2.*3 \clef bass
    \repeat unfold 3 { \ttt {<sib,, fa'>16 mi re si re mi } } 
    \ttt {fa lad, si dod mi sold }
    \ttt {<sib fa'> mi re si re mi }
    \ttt {fa lad, si dod mi sold }
    \ttt {<re fa> dod mi fa mi sol }
    \ttt {lab sol lad si lad dod }
    \ttt { re dod mi sol mi sol } \clef treble |
    \ttt {sib lab sib reb sib reb }
    \ttt {mi reb mi fad mi fad }
    \t {<sol, sol'>8 <la la'> <do do'> }
    
    <re re'>4 <re, re'> <re, re'>2 |
    \gauche \stemUp r16 si fad' sold \stemNeutral \droite
    si do re fa la do re mib |
    <re re'>4. <re, re'>8~ <re re'>2 |
    \gauche \stemUp r16 si, mi sold \stemNeutral \droite
    sib mib sol do red mi fad si |
    <do, fa la re>8. <fa la re>16 <fa la re>8 <si, fa' la re>~ <si fa' la re>16 <fa' la re> <fa la re>8 |
    <mib lab re>8. <mib lab re>16 <mib lab re>8 <dod sol' re'>~ <dod sol' re'>16 <dod sol' re'> <dod sol' re'>8 |
    <si fad' re'>8. <fad' re'>16 <fad re'>8 <mi sold si dod re>~ <mi sold si dod re>16 <mi sold si dod re> <mi sold si dod re>8 |
    <mi sold si dod re>4 <mi re'>8 <mi re'>4 <mi re'>8 |
    
    R2. << {
    <mi re'>8 <mi re'>4 <mi re'>8 <mi re'>4\laissezVibrer } \\ {
    r4 <fa,, sib fa'>2\laissezVibrer }>>
    R2. R2. << {
    \voiceTwo <mi' si'>2.\laissezVibrer s2 s4 } \\ {
    \voiceOne <mi' sol re'>8 <sol re'>4 <sol re'>8 <sol re'>4~ <sol re'> <sol re'>2 }>> r4 |
    R1 R2 \clef bass | 
    
    do,,,8 do \t{do do do}| do4 do4~|do2~|do r4 |
    <lab mib'>2 <sol mi'!>2. <fa' lab reb mi>2\laissezVibrer | R2. |
    <mi! sol mib'>2 <mi sol mib'>4 | <lab si sol'> r r \clef treble
    <si! lab' sib> | <sib sol'>2 r4 <si! lab' sib> | <sib sol'>2 r4 |
    R2 <si! sib'>2 r8 <si fa' sib>4. | <la re sol>2.~ <la re sol>2 r4 |
    <mi' sib' do>2 <fa re'>2~ <fa re'>4 r r8 <la, sib'> |
    <lab sol'>4 r8 <la sib'> | <lab sol'>2 r8 <sol sib re sol> r4 |
    r8 <la do mi sol> <do mi sol sib> r r4 |
    r2 r8 <lab reb sol> <reb fa sib> <mi sol lab sib reb> | R2.
    r4 <sib re> 
    << { \voiceTwo <mib, sib' mib>2\arpeggio ~ <mib sib'> } \\ {
    \voiceOne s2 \grace <sib' mib sib'>8\arpeggio s2 } >>
    <solb la mib'>2.\arpeggio r2 <fad la red>4 | <mi sold mi'>2.\arpeggio |
    
    %%% Duo %%%
    
    r4 <mi' si'> <mi si'> <mi si'> <mi si'> <mi si'> <mi si'> <mi si'> |
    \repeat unfold 35 <mi si'>
    <mi la si>
    << {
      \voiceTwo
      mi32 re8.. <re mi>4 mi4 mi32 re8..
      mi4 mi32 re8.. <re mi>4 mi32 re8..
      <re mi>4 mi4 re32 mi8.. mi4
      mi32 re8.. mi4  re32 mi8.. <re mi>4
      <re mi>4 mi32 re8.. mi4 re32 mi8..
    }\\ {
      \voiceOne
      si'4 si32 la8.. si4 si
      si32 la8.. si32 la8.. <la si>4 si
      la32 si8.. si4 si si32 la8..
      la32 si8.. <la si>4 si si32 la8..
      <la si>4 si la32 si8.. si32 la8..
    }>>
    
    << {
      \voiceTwo
      <re, mi>4 re8 mi <do mi>4 do8 mi
      <re  mi>4 re8 mi <do mi>4 do8 mi
      <re  mi>4 re8 mi <do mi>4 do8 mi
      <re  mi>4 re8 mi do mi <re mi>4
      re8 mi <do mi>4 do8 mi <re mi>4
      re8 mi <do mi>4 do8 mi <re mi>4
      re8 mi <do mi>4 do8 mi <re mi>4
      re8 mi <do mi>4 <re mi>4 re8 mi
      <do mi>4 do8 mi <re mi>4 re8 mi
      <do mi>4 do8 mi <re mi>4 <do mi>4
      do8 mi <re mi>4 <do re mi> <do re mi>
    }\\{
      \voiceOne
      <la' si>4 <la si>8 sol si4 si8 sol
      <la  si>4 <la si>8 sol si4 <la si>
      <la si>8 sol si4 si8 sol <la si>4
      <la si>8 sol si4 si8 sol <la si>4
      <la si>8 sol si4 si8 sol <la si>4
      <la si>8 sol <si mi>4 <si mi>8 <la re> <sol si fad'>4
      <sol si mi>8 la <si mi> re <si fad'> la <si fad'> <la re>
      <si mi>4 <si mi>8 <la re> <sol si fad'>4 <sol si fad'>8 <la re>
      <si mi>4 <si fad'>8 la <sol si fad'> re <sol si mi> la
      <si mi> <la re> <sol si fad'>4 <sol si fad'>8 <la re> <si mi>4
      <si mi>8 <la re> <sol si fad'>4 <sol la si> <sol la si>
    }>>|
    <sol la si> <sol la si>
    << {
      \voiceTwo
      <sol la si> <sol la si> <sol la si>
    }\\{
      \voiceOne
      fad' fad8 re mi4
    }>>
    <sol, la si> <sol la si> <sol la si> | <sol la si>
    <<{
      \voiceTwo
      <sol si> <sol si> <sol si>
    }\\{
      \voiceOne
      fad' fad8 re mi4
    }>>
    <mi, si'> <mi si'> <mi si'> <mi si'> <mi si'> <mi si'> <mi si'>
    <<{
      \voiceTwo
      <do mi>
      <fa,! do'! mi>\laissezVibrer
    }\\{
      \voiceOne
      <si' fad'> 
      <re fad  dod'>\laissezVibrer
    }>>
    r r2 |
    
    R2
    <fa, lad si>8 r <re fad si> r <re sol si> r r4 | R2 |
  } 
}

ActeUnSceneUnBisMainGauche = { \clef bass
  \relative {
    #(set-octavation -1)
    \repeat unfold 3 { \ttt {dod,,,16 sold' dod, sold' dod, sold'} }
    \ttt { <dod, dod'> sold' dod, sold' dod, sold' }
    \repeat unfold 2 { \ttt {dod, sold' dod, sold' dod, sold'} }
    \ttt { dod sold dod, sold' dod, sold' }
    \ttt { dod sold dod, dod'  sold dod,  }
    \ttt { dod' sold dod sold  dod  sold  }
    <dod, dod'>4 dod16 sold' dod sol dod, sold' dod sol |
    dod, re mi sol <dod, dod'> sold' dod sol <dod, dod'> re' mi sol 
    #(set-octavation 0) |
    dod, dod' mi, dod' sol mi' lad, sol' <dod,, dod'> re mi sol |
    <lab, lab'>8 re <fa, fa'> re' <mib, mib'> lab |
    
    <re, re'>4. re'8 re <do do'> <sol sol'> <la la'>
    \stemDown <fad fad'>2 \stemNeutral \t { sol8 la do} |
    <re, re'>4 re' re8 <mib, mib'> <lab lab'> <fa fa'> |
    \stemDown <sib sib'>4 \stemNeutral reb16 sib <lab lab'>8~ <lab lab'>4 |
    <sol sol'>2.\laissezVibrer |
    << { \clef treble <fa''' solb lab dob>2 <lad, si dod mi sold>4~
    <lad si dod mi sold> <re, mib fa lab do>2 } \\ {
    r4 \clef bass <sol,, sol'> r <sol sol'> r <reb reb'> } >>
    <sol sol'>2. |
    \t {<sol sol'>16 <lab lab'> <sib sib'> } <reb reb'>8~ <reb reb'>2~ <reb reb'>2.\laissezVibrer |
    R2. | << {
    \voiceTwo \t {<sol, sol'>16 <lab lab'> <sib sib'> } <reb reb'>8~ <reb reb'>2~ reb2.\laissezVibrer } \\ {
    \voiceOne s2. r4 <reb' fa sib>2\laissezVibrer } >>
    R1 r2 r4 <fad,, fad'> <sol sol'> <la la'> |
    
    <do, do'>2 do'~ do~ <do lab'>2.~ do8 do \t {do do do} do4 do2~|
    <do la'!> do8 do \t {do do do} << {
    \voiceTwo do4~ do do2 } \\ {
    \voiceOne s4 si'2 si4 }>> <do, mib'>4 r r <fad sol'> |
    <dod do'!>2 r4 <fad sol'> | <dod do'!>2 r4 |
    << {
    \voiceTwo \grace lab \voiceTwo lab'2~ lab } \\ {
    \voiceOne r4 <sol' la!> solb fa} >>
    r8 <lab, mi'>4. |
    sib2.~ | sib2 r4 | <re sol la>2 | <mib sib'>~| <mib sib'>4 r r8 <fad, sold fa'!> |
    <dod lad'>4 r8 <fad sold fa'!> | <dod lad'>2 |
    \t { sol16 lab sib } reb8 r4 |
    r8 \t {la16 sib do } mib8 r r4 |
    r2 r8 \t { lad,16 si dod } mi8 si' | R2.
    r4 sib8 lab | sol2~| sol | solb2. | r2 si4 mi,2. |
    
    %%% Duo %%%
    
    R1*2 do'2~do4. sold8~| sold2. do4~| do2~do8 sold4.~| sold2
    sol2~ | sol4. <dod, dod'>8~ <dod dod'>2~| <dod dod'>4 <sol sol'>2.~|
    <sol sol'>8 <dod dod'>~ <dod dod'>2. | <sol sol'>1~<sol sol'>2. <sib sib'>4~|
    <sib sib'>2 r8 <sol sol'>4.~ | <sol sol'>2 <sib sib'>2 |
    <sib sib'>8 <lab lab'> <si si'> <sol sol'>~ <sol sol'>2~ |
    <sol sol'>4 <sib sib'> <sol sol'>2 ~ |
    <sol sol'>4 <sol sol'> <fa fa'> <sold sold'> | <mi mi'>1~ |
    <mi mi'>2. <mi mi'>4~| <mi mi'>1~ | <mi mi'>2 r R1*7 |
    <do''' re mi>4 <do re mi>
    << {
      \voiceTwo fa,4 fa8 la sol4
    }\\{
      \voiceOne <do re mi> <do re mi> <do re mi>
    }>>
    <do re mi> <do re mi> <do re mi> | <do re mi>
    << {
      \voiceTwo fa,4 fa8 la sol4
    }\\{
      \voiceOne <do mi> <do mi> <do mi>
    }>>
    R1*3
    R2 <re, sold dod>8 r <sold, red' la'> r <fa reb' lab'> r r4 |
    r4 << {\voiceTwo <dod sold'> } \\ { \voiceOne <mi' si'> } >> |
  }
}

ActeUnSceneDeuxMainDroite={
	\relative{
		
		%%% Air de la Soprano2 %%%
		
	R2.*2 |r4 sold'8 la sold mi re mi | sold la sold mi re mi sold4~|
	sold2 r4 | sold8 la sold mi re mi | sold la sold mi re mi sold la | 
	sold mi re mi sold4 sold8 la | sold mi re mi sold la |
	sold mi re mi sold4 | <re sold>8 la' <sold la> mi <re sold> mi <re sold> la' |
	<mi sold> re <re la'> <mi sold> r mi sold la | sold mi re <mi la> sold la |
	sold mi re mi sold4~| sold8 la sold mi re4 sold8 la| sold mi re mi sold4 sold8 la |
	sold mi re4 sold8 la | sold mi re mi sold4|
	sold8 la sold mi re2~| re4 re8 mi sold4 sold8 la | 
	sold mi re4 sold8 la|	sold mi re mi sold4 |
	<sold la>8 <mi re'> la sold re sold <re la'> <mi re'> |
	la sold re sold la re la sold | 
	re mi <sold re'> la sold la |sold mi <re la'> mi sold4 |
	#(set-octavation 1)
	re''4 <la' re> sold8 mi re4 | mi8 <re re'> la' sold r mi <sold re'>4 |
	mi8 re' re, la' <sold re'>4 | la8 sold mi <re re'> r la' |
	sol!4 <do sol'> si8 sol fa4 | sol8 fa do' si r sol <si sol'>4 |
	sol8 fa' fa, do' <si sol'>4 | do8 si sol <fa fa'> r do' |
	fa, sol <si fa'>4 do fa,8 do' | r fa, <sol fa'> si do4 <si sol'>8 fa |
	sol fa' si,4 <do sol'>8 sol | #(set-octavation 0) r re si la fa4 |
	<<lab1 \\ {<lab, re>8 mib' re sib lab sib re mib} >>
	re8 <sib mib> <lab re> sib <lab re> <sib mib> <lab re> <sib mib> |
	<re lab'> mib re sib <re lab'> mib | re sib <re lab'> mib re sib |
	<<lab'1 \\ {<lab, re>8 <sib mib> re sib <fa lab> sib <lab re> <sib mib>} >>
	<fa re'>8 <lab mib'> <fa re'> <lab sib> <re, lab'> <fa sib> <re lab'> <do fa> |
	re fa re do re lab | do re do lab do \clef bass re, |
	r4 sold8 re' sold, re sold, re' | sold re' sold, re sold, re' sold4 |
	sold8 re' sold, re sold, re' | sold4 r8 \clef treble fa'''! sol,!4 |
	r4 r8 fa' do sol sold re | do' sol re sold  la,4 r | R2.*2 | 
	sold8 la sold mi re4 sold8 la | sold mi re mi sold4 sold8 la |
	sold mi re4 sold8 la | sold mi re mi sold4 |
	r8 fa'' do sol! fad' si, mi,4 | r2 r4 <re, la'>~|
	<re la'>2.\laissezVibrer r8 fa'' do sol lad'4 | red, r r2 |
	r2 #(set-octavation 1) sol?4 do | si8 sol fa4 si8 do |si sol fa sol si4 |
	sol fa8 do' si4 do8 si | sol fa sol si r do fa, sol |
	si4 do fa, | si8 sol fa sol si4 |
	si8 do si sol fa sol si do | si sol fa sol si4 si8 do | si sol fa sol si do |
	si sol fa sol si4 | si8 do si sol fa sol si do | si sol fa sol r si do si |
	sol fa sol si do si | sol fa r si do si | sol fa sol si do si sol4 |
	si8 do si sol fa sol si do | si4 fa8 sol si do | si4 fa8 sol si do |
	si4 fa8 solb sib do sib4 | fa solb <dob, reb sib'>2\fermata |
	 #(set-octavation 0)
	
	 	%%% Récitatif %%%

	r4 r8 <reb,, mib sib'>4. | <sib do sol'>2.~| <sib do sol'>1~|
	<sib do sol'>2 r4 | r4 r8 <re! sib'>4. | <si! sol'>2.~| <si sol'>1~|
	<si sol'>2 r4 | R2. | r4 r8 <re fad sib>4 << { <mib sol>8~ <mib sol>2} \\
	{<si! do>8~ \repeat tremolo 8 {si32 do}}>> \repeat tremolo 4 {mib32 mi!} |
	\repeat tremolo 12 {mib' mi!} | <sol, mib'>8 r r2 | \clef bass
	r8 \t {sold,,16 la si} re8 r | r4 r8 <la' si sol'!>4. |
	<fad mi'!>1~ <fad mi'>~ | <fad mi'>2.~ <fad mi'>~ <fad mi'>~ <fad mi'>2 r4 |
	r8 re r re r re | r re r re r re r re |
	
		%%% Duo %%%
	
	\repeat unfold 34 { <re sib' re>8 }
	\repeat unfold 14 { <mi do' mi>8 }  \clef treble 
	<< {s4 s16 re'? re re sol!2 }\\{<sol,! mib' solb>8 <sol mib' solb> <sol mib' solb>16 s8.
	r8 <sol mib'> <sol mib'> <sol mib'>}>> |
	<< {s4 s16 lab' lab lab reb4 s8 \t {mi!16 fa sol!}} \\
	{<fa,, reb' solb>8 <fa reb' solb> <fa reb' solb>16 s8. r8 <reb' solb> <reb solb> s}>>
	sib''8 r | r <fa,, sol> <fa sol>4 | <fa' sol>8 <fa sol> <re? fa sol> \t { mi'16[ fa sol]}
	<< sib8 \\ s >>	<si,,? re fa sol> | \repeat unfold 13 { <lab si re sol>8} \t { mi''16[ fa sol]}
	<< sib8 \\  s >> \repeat unfold 6 { <lab,, si re sol>8} \t { mi'''16[ red dod]}
	 << lad8 \\ s >> <mi, sold red'>8 <mi sold red'> <mi sold red'> <mi lad red> <mi lad red> |
	 <mi sold red'> <mi sold red'> <mi lad red> <mi lad red> <mi sold red'> <mi sold red'> <mi lad red> <mi lad red> |
	<sold red' lad'> <sold red' lad'> <sold mi' lad> <sold mi' lad> <sold red' lad'> <sold red' lad'> <sold mi' lad> <sold mi' lad> |
	<do! sol'! re'!> \repeat unfold 11 {<do sol' re'>8} |
	re'8[ r16 \t {fa32 mi re]} si!8[ r16 \t {do32 si la]} fad8 \t {la16 sold fad} red8 r 
	\t {mi8 red dod} r8 <la, si! sib'>4. |
	
	<sol sol'>4 r2 R1 R2. do16 re do fa re fa re sol fa sol fa lab |
	<sol sol'>4 \clef bass <re, sol>8 <fa sib reb mib>~ <fa sib reb mib>2 \clef treble |
	r16 re'' re re <la re sol>4 <fad do' fa!> |
	<la! re sol lab>8 <mib solb la re>4 \clef bass <re, sol>8 <fa sib reb mi!>2 \clef treble |
	r16 re'' re re <la re sol>4 <fad do' fa!> |
	<do' fa lab>8 <mi, si' re>4. \clef bass <re, lab>8 <sol sib dod fad>4. \clef treble |
	r16 mi'' mi mi <la, re sold>4 <sol do fad> | <si mi la>8 <mi sold la re>4. r4 | R2.
	r16 mi mi mi <si mi la>4 <la re sold>| <si mi la>8 <mi sold la re>4. r4 |
	r16 la la la <mi la re>4 <re sol do> | <mi la re>8 <sold dod re sol!>4. \tt {si,,16 sib lab fa mib}|
	r4 lad16 dod red mi fad la si do | re4 sib,16 do reb mib fad sold la si |
	re4 lad,16 si dod mi fad sol la do | re4 sib,16 do mib fa solb lab si dod |
	re4 do,16 mib fa solb lab si re dod | mi4 mib,16 fa solb si lab re dod mi! |
	sol4 si,16 re dod mi re sol mi la |
	<sib, re sib'>2. <la re la'>4~| <la re la'>4. <si re mi sol>8~
	<< { <si re mi sol>2 <si mi> re} \\ {
	\t { sold,4 sold sold}
	\t {<red sold>4 <red sold> <red sold>}
	\t {<dod fad la>4 <dod fad la> <dod fad la>}}>> |
	<sib' dod>16 re, <sib re> re, <sib' dod> re, <sib' re> re
	<sib' dod>16 re, <sib re> re, <sib' dod> re, <sib' re> re |
	<sib' re>16 re, <sib re> re, <sib' re> re <sib' re> re,
	<sib' re>16 re, <sib re> re, <sib' re> re <sib' re> re, |
	<do'! mi>16 fa, <do mi> fa, <do' mi> fa <do' mi> fa,
	<do'  mi>16 fa, <do mi> fa, <do' mi> fa <do' mi> fa, |
	<sib re sol> fad <fad sib> re <sib fad'> re <re sib'> fad
	<sib re sol> fad <fad sib> re <fad re'> sib <sib sol'> re |
	<mib lab si!> do <sol mib'> mi! <mi do'> si <mib sol> mi
	<sol mib'>8 <si si'>16 <mib sol> <la,! la'!> <reb fa> <do do'> <mi! sold> |
	<dod dod'>2 r4 \clef bass |
	r8 si,,  lad' <si, re> \clef treble r8 fa''' <si mi> <fa si> \clef bass |
	r8 si,,, lad' <si, re> \clef treble r8 fa''' <si mi> <fa si> \clef bass |
	do,,16 mib solb lab \clef treble si re mi! sol! sib do mib solb | <lab, lab'>2 \clef bass |
	r8 re,,  <sold dod> <re sold> \clef treble |
	r8 #(set-octavation 1) <do''' fa> <si' mi> <do, fa> #(set-octavation 0) \clef bass |
	r8 re,,, <sold dod> <re sold> \clef treble
	r8 #(set-octavation 1) <do''' fa> | << {s4 #(set-octavation 0) s2}\\{<si' mi>2.} \\ {
	s4 dod,,,16 mi fad la si re mi sol }>>
	<la, re mi>8 <la re mi> <re mi la> <la re mi> |
	r8 <sol la re mi> <re' mi si'> <sol, la re mi> |
	r8 <la re mi> <re mi la> <la re mi> |
	r8 <sol la re mi> <re' mi si'> <sol, la re mi> |
	r8 <la re mi> <re mi la>16 mi sol la |
	re8 <mi, sol la> <sol la re> <mi sol la> |
	r8 <re mi sol la> <sol la mi'> <re mi sol la> r8 <re mi sol la> |
	<fa! sol mi'> r8 r2\fermata |
	
	r4 <sib, re>2. | <la dod>4. r8 <la dod>4 | <lab do!>4. r8 <lab do>4 |
	<sol si>4. r8 r4 | r <sol si> | <solb sib>2.~|<solb sib> r4 |
	r2 <fa la>4 <mi sold> | <mib sol!> r <la, dod> r | re r r2 |
	}
}

ActeUnSceneDeuxMainGauche={
	\relative{ \clef bass
		
		%%% Air de la Soprano2 %%%
		
	R2.*2 R1*2 R2.*2 | re,4 la' sold8 mi re4 | mi8 re la' sold r mi sold4 |
	mi re8 la' sold4 | la8 sold mi re r la' | re, mi sold4 la re,8 la' |
	r re, mi sold la4 sold8 re mi4 sold la8 mi | r sold la re, mi4~|
	mi1~ | mi2 r4 fad8 sold | si2.~ | si2 r4 |
	re,8 fad sold si sold si sold fad | re fad sold si sold si sold fad |
	re fad sold si sold fad | re fad sold fad re dod |
	<< { r4 re'8 si sold si sold fad } \\ sold,1>>
	re'8 fad sold4 re8 dod sold4 |
	dod8 fad sold si sold fad | dod re fad sold fad re |
	<< { r8 la'' sold mi re4 sold8 la sold mi re mi sold4 sold8 la | sold mi re si } \\
	{ <dod,, dod'>1~ <dod dod'>~ <dod dod'>2 } >>
	re''8 mi | re si sold fad sold re |
	<< {r4 fa!8 la si la fa mi fa la si la fa4 mi8 fa la si re fa re} \\
	{ <dod,, dod'>1~ <dod dod'>~ <dod dod'>2 s8 } >>
	\clef treble si''8 | re fa sol si sol4 |
	\clef bass << { r4 si, la8 fa mi4 la8 fa re' si r <si re> sol' r }\\
	{<mi,, mi'>1~ <mi mi'>2. s4 } >>
	<<{ \voiceTwo  <dod dod'>2.\laissezVibrer} \\ 
	{ \voiceOne r8 \clef treble re'' <mi sol> <re fa> <sol do!>4 }>>
	fa8 sol si do r4 | \clef bass
	<< { r2 re,8 fa re do sol do re fa re do sol do re2 } \\
	{<sol,,, sol'>1 ~ <sol sol'> s2 } >> r4 | sol'4 re' do8 lab |
	<sol, sol'>1\laissezVibrer sol'4 re' do8 lab sol4 | lab8 sol do re r4 | R2. |
	<sold,, sold'>1~ <sold sold'>2 r4 << { s4 dod'8 re fad2~ fad2. } \\
	{ <sold,, sold'>4~  <sold sold'>2.~ <sold sold'>2. } >>
	<< { \voiceTwo <sold sold'>1\laissezVibrer  s2 s4} \\ 
	{ \voiceOne r8 \clef treble la''' sold mi re mi sold la sold mi re mi sold4 }>>
	sold8 la | sold mi re mi sold la | sold mi re mi sold4 |
	<re la'>1\laissezVibrer r2 r4 <re la'>4~| <re la'>2.\laissezVibrer | R2. |
	sold8 la sold mi re mi sold la | sold mi re mi sold4 sold8 la |
	sold mi re4 sold8 la | sold mi re mi sold4 |
	sold8 la sold mi re mi sold la | sold mi re mi sold4 sold8 la |
	sold mi re mi sold la | sold mi re mi sold4 |
	sold8 la sold mi re mi sold la | sold mi re mi sold4 sold8 la |
	sold mi re mi sold la | sold mi re mi sold4 |
	re8 mi sold la sold mi re mi | sold la sold mi re mi sold la |
	sold mi re mi sold la | sold mi re mi sold la |
	lab sib re mib re sib lab sib | re mib re sib lab sib re mib |
	re sib lab sib re mib | re sib lab sib re mib |
	re4\laissezVibrer r4 r2 | r2 r4 si!8 dod | mid fad mi4\laissezVibrer r |
	R2. | dob8 reb fa! solb fa4\laissezVibrer r4 | r2 <la, do!>2\fermata |
		
		%%% Récitatif %%%
		
	\clef bass r4 r8 fab,4. | reb2.~ | reb1~ | reb2 r4 | r4 r8 <reb dob'>4. |
	<sib lab'>2.~ | <sib lab'>1~| <sib lab'>2 r4 | R2. | 
	r4 r8 <mib sol si!>4 <lab, mi'!>8~|<lab mi'>2 r4  \clef treble
	\repeat tremolo 12 {sol''32 lab} | <si, do lab'>8 r8 r2 | \clef bass
	r8 \t {sold,,16 la si} re8 r | r4 r8 reb'4. |
	<sol, mib'>1~| <sol mib'>~ | <sol mib'>2.~ <sol mib'>~ <sol mib'>~ |
	<sol mib'>2 r4 <re sib'>2.~ | <re sib'>2. r4 |
	\repeat unfold 17 {<re sib'>8 r} |
	\repeat unfold 7 {<reb lab'>8 r} |
	<dob sib'>8 r <dob sib'> <sib' sol'> <sib sol'> r <dob, sib'> r |
	<sib la'!> r <sib la'> <la' fa'> <sib, la'> <la' fa'> | <sib, la'> r r4 |
	<sol sol'>4 <lab lab'>8 <sib sib'> | <reb reb'>4 <dob reb'>8 <fa' sol> <sib,, lab'>4 |
	<dob reb'>4 <sib lab'> <lab fa'> <sib lab'> |
	<dob reb'> <sib lab'> <lab fa'>8 <fa'' sol> <fa,, reb'>4 | <dob' reb'> r8 <sib lab'> r4 |
	<mi lad fad'>4 <si' mi lad> <fad' lad dod> | <si, mi lad> <mi, lad fad'> <si' mi lad> <mi, lad fad'> |
	<fad' lad dod mi> <mi, si' mi> <fad' lad dod mi> <mi, si' mi> |
	<reb lab' mib'> <reb lab' mib'> <mib' sib' fa'> | <reb, lab' mib'> <reb lab' mib'> <mib' sib' fa'> |
	<mib sib' dob solb'>\laissezVibrer \clef treble <sib'' mib solb>8 <sib mib solb>
	<sol! sib mib> <sol sib mib> <re sol sib> <re sol sib> \clef bass r4 r8 sib,4. |
		
		%%% Duo %%%
		
	<sol, sol'>4 sol'16 lab sol sib lab sib lab reb | sib reb sib mib reb mib reb mi red mi red fad mi fad mi la |
	fad la fad si la si la do si do si re | R2. |
	<sol,,, sol'>2 <sol sol'>4 <sol sol'> | <dod dod'>4. <dod dod'>8 <dod dod'> <dod dod'> |
	<sol sol'>2~ <sol sol'>8 <sol sol'> <sol sol'> <sol sol'> | <dod dod'>4. <dod dod'>8 \t {<dod dod'> <dod dod'> <dod dod'>}|
	<sol sol'>4 <sol sol'> \t {mi' <re re'> <fa fa'>}|
	<dod dod'>8. <dod dod'>16~ <dod dod'>8 <sib sib'> <lab lab'> <si! si'!>|
	<< {r2 \tt {mi'16 red dod lad sold}} \\ {<sol, sol'>4 <sol sol'> <sol sol'>} >> |
	<sol sol'> si''16 sold fad red sold fad red dod | <sol, sol'>4 <sol sol'> <sol sol'> |
	<si si'> re''16 dod si sold fad fa mib do | <sib, sib'>4 <sib sib'> <sib sib'> |
	<re re'> <si'' re mi>8 <re sold la>4. |
	<re,, re'>4 <re re'> <re re'> | <re re'> r  sib''16 sol fa mi |
	<re,  re'>4 <re re'> <re re'> | <re re'> r  sib''16 la sol mi |
	<re,  re'>4 <re re'> <re re'> | <dod dod'> r la''16 sol mi re |
	<dod, dod'>4 <dod dod'> <dod dod'> |<fa, fa'>16 sib' re fa sib re <fa, fa'>8 
	\t {<fad sib re fad>4 <fad sib re fad> <fad sib re fad>} |
	\t {<sol sib re sol>4 <sol sib re sol> <sol sib re sol>} <sold si re>
	<si,, si'>~ | <si si'>8 <do do'>4. <dod dod'>2 |
	
	\repeat unfold 8 {<re sib' re>8 <sib' re>}
	\repeat unfold 4 {<dod, la' dod> <la' dod>}
	\repeat unfold 4 {<si, red si'> <red si'>}
	<si sol' si> <sol' si> <sol si> <sib, sib'> sib' <lab, lab'> lab' <si,! si'!> |
	<sol sol'>2 reb''16 do sib lab << {
	sol2~ sol8 sol \t { sol sol sol}
	sol2~ sol8 sol \t { sol sol sol} } \\
	\repeat unfold 16 sol,8 >> 
	<sol sol'>4 do'16 mib solb lab si re mi! sol! | r4 \t {re,8 si dod}|<< {
	sold2~ sold8 sold \t { sold sold sold}
	sold4~ sold8 sold \t { sold sold sold} } \\
	\repeat unfold 14 sold,8 >> 
	<< {r16 fad'' sold si s2 
	r4 r8 <fa la si> <la si mi> <fa la si> r4 
	r4 r8 <fa la si> <la si mi> <fa la si> r4} \\{
	<sold,, sold'>4 r8 <sold sold'> <fad fad'> <la la'>
	<fa! fa'!>2~ <fa fa'> <fa fa'>~ <fa fa'>}>>
	r8 <la la'> <sol sol'> <sib sib'> |<< {
	r4 r8 <la'' re mi> <re mi la> <la re mi> r4}\\{
	<fad,, fad'>2~ <fad fad'>}>>
	<fad fad'>4 | <la'' fad' sold>8 r r2\fermata |
		
	r4 <sib re>2. | <la dod>4. r8 <la dod>4 | <lab do!>4. r8 <lab do>4 |
	<sol si>4. r8 r4 | r <sol si> | <solb sib>2.~|<solb sib> r4 |
	r2 <fa la>4 <mi sold> | <mib sol!> r <sib re> r | <re, re'> r r2 |		
	}
}

ActeUnSceneTroisMainDroite = {
  \relative {
    \clef bass
    do,2.\laissezVibrer R2.
    \repeat tremolo 8 {fa,32 si} <re sol>4 |
    \repeat tremolo 12 {si32 mi} \clef treble |
    <reb' solb do>8 <sib mib la>4
    <reb  solb do>8 <sib mib la>4 |
    \clef bass
    \repeat tremolo 4 {mi,32 sib'} mi,8 
    \clef treble
    <sib' mib la>4 <sol do fad>8 |
    \clef bass
    << mib'2 \\ {
    \repeat tremolo 8 {mi,!32 sib'} } >>
    \clef treble
    \repeat tremolo 4 {la' re} |
    <mib, la re>8 r r2 |
    
    si4 <red sold> sib | sol <do mi> r | \clef bass
    r8 <solb sib mib> r <fad si> sib4 |
    <do,! la' dod>2. R2.
    <sib mib la>2.
    << reb'2. \\ {
    \repeat tremolo 12 {re,!32 lab'} }>> \clef treble |
    <la re sold>2. |
    <mi'! sib' mib>8 <mi sib' mib>4 <mi sib' mib>8
    \t { <sib' mib la> <sib mib la> <sib mib la>}
    <mib la re>4 <reb solb do> <mib lab re>8 <sib mib la>~|
    <sib mib la>4 r \clef bass <re,, sol si> |
    <reb fa sib> r2 | 
    
    << {
    sol2.~ sol2 sol8 sol sol2.~ sol4~ sol8 sol \t {sol sol sol}}\\ {
    r2 re4 dod2. r2 re4 dod2.\laissezVibrer } >>
    sol'1.~ sol1~ sol4 sol~| sol1 la2~| la1~ la8 la \t {la la la~}|
    la1 la4 sib~| sib1. | R1*5/4 \clef treble |
    <lab do sol'>2 <fa si mi>4 r2 | <sol do fad>2 <mi!si' mib>4 r2 |
    <lab do sol'>2 <fa si mi>4 r2 | <lab reb sol> <la do sold'>4 r2 |
    <re fad dod'>2 <si! fa' sib>4 r | <reb solb do>2 <sib fa' la>4 r|
    <re fad dod'>2 <si! fa' sib>4 r | <re sol>2 <mib solb re'>4 r |
    <sol sib mib>4 <sol sib mib>8 <sol sib mib> \t { <sol sib mib> <sol sib mib> <sol sib mib>}|
    <mi! sib' mib>4 <mi sib' mib>8 <mi sib' mib> \t {<mi sib' mib> <mi sib' mib> <mi sib' mib>}|
    <mi! sib' mib>16 <mi sib' mib> <mi sib' mib> <mi sib' mib> \t {<mib' la re> <mib la re> <mib la re>}
    <mib la re>8 r4 |
    R2*2 \clef bass |
    <mib,, la re>4 <fad si> r <reb solb do> <mib la> r | R2.
    \repeat tremolo 12 {la,32 red} |
    \repeat tremolo 12 {dod32 fad} |
    \repeat tremolo 12 {sol32 do!} |
    \repeat tremolo 12 {<mib, lab> do'} |
    \repeat tremolo 12 {<mib, la!> re'} | \clef treble
    \repeat tremolo 12 {<solb, sib> fa'} |
    \repeat tremolo 12 {<do re fa sol> si} |
    <la! do fa lab>4 r2 | R2.
    <sib mi la>4 r <lab reb sol>|
    r2 <la re fad>4 |\clef bass
    
    R1. |
    << { do,8 do \t {do do do} do1 } \\ {
    r2 r4 sol2.}>> | lab2. mib'2. |
    mi2 sol4 lab2 mib'4~| mib2 r4
    \repeat tremolo 12 {si,32 mi} | \clef treble
    \repeat tremolo 12 {sib' mib}
    \repeat tremolo 12 {<mib la> re'} |
    \repeat tremolo 12 {<re! lab'> reb'}
    <re! lab' reb>8 r r4 \clef bass |
    <red,, mi si'>1 \arpeggio ~ | <red mi si'>4 r2 | 
    r4 <mid lad>4 |
  }
}

ActeUnSceneTroisMainGauche= {
  \relative { \clef bass
    \repeat unfold 2 {
      do,,8. do16~ do8 do do do
    \repeat tremolo 12 {do32 fa} }
    \repeat tremolo 12 {<do  fa> si'}
    \repeat tremolo 12 {<do, fa> si'}
    \repeat tremolo 12 {<do, fa> si'}
    <do, fa si>8 r r2 |
    r4 <la' re fad> r |
    r <fad si red> r |
    r8 <mi la dod> r <fa la re> <lab reb fa>4 |
    << sib2. \\ {
    si,!8. si16~ si8 si si si }>>
    \repeat tremolo 12 {sib32 mib}
    si!8.  si16~ si8 si si si |
    << la'2. \\ {
    \repeat tremolo 12 {sib,32 mib} }>>
    << <mi sib'>2. \\ {
    si!8.  si16~ si8 si si si } >>
    <reb solb do>4 \repeat tremolo 8 {<do' fa>32 si'} |
    <do, fa si>8 <fa si mi>4 \clef treble <si mi lad>4. \clef bass |
    r2 <lab,, reb fa>4 | <si mi sold> r2 |
    << { r2 sib'4 la2. r2 sib4 la2.\laissezVibrer } \\ {
    sib,2.~ sib sib~ sib\laissezVibrer }>> |
    
    r2 r4 <re re'> <si si'> <dod dod'> |
    <sib sib'>2 re r | reb fa r | sib, re r | reb fa r |
    << { sib8 sib \t {sib sib sib~ } sib2} \\ {
    sib,2 <re re'>}>> r2 |
    << { dob'8 dob \t {dob dob dob~} dob2} \\ {
    re,2 <fa fa'>} >> r4 |
    << { <la reb>2 <solb do>4} \\ {
    sib,8 sib \t {sib sib sib} reb4}>> r2 |
    << {<lab' reb>2 do4 } \\ {
    re,!8 re \t {re re re} fa4 }>> r2 |
    << { <la reb>2 <solb do>4} \\ {
    sib,8 sib \t {sib sib sib} reb4}>> r2 |
    << { <la' re>2 <sib reb>4 } \\ {
    mib,8 mib \t {mib mib mib } si!4}>> r2 |
    << <red' sol>2 \\ {
    mi,8 <mi, mi'> \t { mi' mi mi} }>> <sol do fad>4 r |
    << <lab re sol>2 \\ {
    r8 <mi, mi'> \t {mi' mi mi} }>> <dob' solb'>4 r |
    << <red sol>2 \\ {
    mi,8 <mi, mi'> \t { mi' mi mi} }>> <sol do fad>4 r |
    << <si mib lab>2 \\ {
    r8 <mi,, mi'> \t { mi' mi mi} }>> <fa mi' sol>4 r |
    << do'2. \\ {
    reb,8 reb \t {reb reb reb } reb4 }>>
    <reb do'>8 <reb do'> \t {<reb do'> <reb do'> <reb do'>} <reb do'>4 |
    <reb solb do>8 <solb do fa> <do fa si>4 r |
    R2*2
    mi,4 <sol do> r | mi sib' r |
    r <mi, red'> r | <mi sib'>4. 
    mi8 \t {mi mi mi} | <mi la>4. 
    mi8 \t {mi mi mi} | <mi sold dod>4.
    mi8 \t {mi mi mi} | <mi la>4.
    mi8 \t {mi mi mi} | <mi sib'>4.
    mi8 \t {mi mi mi} | <mi si' red>4.
    mi8 \t {mi mi mi} | <mi fad'>4.
    mi8 \t {mi mi mi} | <sold dod mi>4 r2 |
    R2.
    <si fa'>4 r <mib, la re> | r2 <solb sib mib>4 |
    r2 r4 <mib mib'> <reb reb'> <mi mi'> |
    <do, do'>1.~ <do do'>~ <do do'> <do do'>\laissezVibrer
    \repeat tremolo 12 {si''32 mi}
    \repeat tremolo 12 {<si mi> sib'} |
    \repeat tremolo 12 {<fa, si> mi} <do, do'>8 r r4 |
    <do' sol' lab>1\arpeggio ~ <do sol' lab>4 r2 | r4 <si fad'> |
  }
}

ActeUnSceneTroisBisMainDroite= {
  \relative {
    \repeat unfold 6 {fad4 red8 r }
    <do fad> <red la'>4.\laissezVibrer r2 | r
    \repeat unfold 3 << { fad4 red8 r } \\ do2 >>
    <mi, la red>8 <sol do fad>4.\laissezVibrer r2 | r
    \repeat unfold 2 << { fad'4 red8 r } \\ la2 >>
    <do mib la>8 sol' <si,! fa' sib>4 |
    <fad fad'>1~ <fad fad'> | R1*5 r2
    <lad dod>~ | <lad dod>2. <lad dod>4 | <sold mi'>2
    <lad dod>~ | <lad dod>2. <lad dod>4 | <sold mi'>2.
    <lad dod>16 <sold mi'>8 <lad dod>16 |
    \repeat unfold 4 { \tt {sol' mi lad, dod mi } }
    \repeat unfold 4 { \tt {<sol la> mi lad, dod mi} }
    \repeat unfold 2 { \tt {<la do> sol <sold, lad> dod mi } }
    \tt {<la do> red <lad, dod> <mi' sol> <la do> }
    \tt {red dod, <mi sol> <la do> red }
    <fad, fad'>1~ <fad fad'>
    \repeat unfold 6 {fad4 red8 r }
    \repeat unfold 10 << { fad4 red8 r } \\ <sib do>2 >>
    <fad' la fa'!>4 <red si' re!>8 r <red fad re'!>4 <do la' si>8 r |
    <sib do la'>8 <sol red' fad>16 r <sol sib fad'>8 <mi do' red>16 r
    \gauche <mi sol red'>8 <reb sib' do>16 r
    \droite R1*2 
    \repeat unfold 16 { \tt {fad16 sol la do re} }
    \tt { <fad, mib'> sol la do re}
    \tt { <fad, fa'!> sol la do re}
    \tt { <fad, mib'> sol la do re}
    \tt { <sol, fa'! lab> la do mib si'} |
    \repeat unfold 3 { \tt {<fa mi'> lab sib si do} \tt {<re, dod'> mib fa lab sib} }
    \tt {<fa mi'> do mib fad la}
    \tt {<mib re'> fad la si re} |
    <fad, fad'>1~ <fad fad'>2. <fad fad'>4~|
    <fad fad'>2. <lad, dod>4 | <sold mi'>2 <lad dod> |
    r2 r4 <la do> | <sol mib'>2 <la do>~ | <la do>2. r4 | r
    \repeat unfold 11 { r8 <la si do fa> }
    <sib mi la> <reb mi sol do>4.\laissezVibrer r2 |
    do2 do8 do \t {do do do} | do2 <reb mi sol do> |
    << { si'2. lad4 } \\ { <do, red fad>2 <si re fa> } >>
    fad'2 r4 <red fad> |<dod la'>2 <red fad>~| <red fad>4 r r2 |
    <do fad>2 <la re>~| <la re>4 r r2 |
    <lad dod red mi>1 | <la! dod>~| <la dod> |
    <sol' dod fad>1 <sol dod fad>
    << {<sol dod fad>~ <sol dod fad>\fermata \laissezVibrer } \\ {
    r2 <fadd sold> <sid dod>1 \laissezVibrer }>> |
  }
}

ActeUnSceneTroisBisMainGauche= {
  \relative { \clef bass
    << do1 \\ {r8 la r la r la r la} >>
    << <sol dod>1 \\ {r8 la r la r la r la} >>
    << <mi sol dod>1 \\ {r8 la r la r la r la} >>
    <dod, la'> <sib mi sol>4.\laissezVibrer r2 | r
    << { r8 <sol' la> r <sol la> r <sol la> r <sol la> r <sol la> r <sol la>} \\ {
    <sold, dod>2~ <sold dod>1 } >>
    << {sib8 <sold dod>4.\laissezVibrer } \\ re2\laissezVibrer >> r | r
    << { r8 <mi' sol> r <mi sol> r <mi sol> r <mi sol> } \\ {
    <fa,! dod'>2~ <fa dod>} >> <re sib' mi>4 <la sold'>8 si |
    <fad fad'>1~ <fad fad'> R1*3
    fad'1~ fad | fad1~ fad~ fad~ fad~ fad2. r4 |
    fa'!8 r
    \repeat unfold 3 { \tt {fa16 sold r8 r16 } }
    \repeat unfold 4 { re lab' fa sib }
    \t { <si,, si'>8 <fa' fa'> <re re'>} 
    \t { <si si'> <fa' fa'> <re re'>}
    \t { <si si'> <la la'> <fa' fa'>}
    \t { <re re'> <si si'> <la la'> }
    << { fad'1~ fad } \\ {
    fad,1~ fad8 fad \t {fad fad fad} fad2 } >> |
    si'1
    << { r8 sol' r sol r sol r sol } \\ si,1 >>
    \repeat unfold 4 << { r8 sol' r sol} \\ si,2 >>
    \repeat unfold 4 << { r8 sol' r sol} \\ <si, mi>2 >>
    \repeat unfold 4 << { r8 sol' r sol} \\ <lab, si mi>2 >>
    << { r8 <reb sol sib do> r <reb sol sib do>} \\ <do, lab'>2 >>
    << { r8 <reb' sol sib do> r <reb sol sib do>} \\ <do, fa >2 >>
    do2. |
    << { \voiceTwo re1~ re~ re\laissezVibrer } \\ { \voiceOne
    r4 <fad' la>2 <fad la>4 <mi do'>2 <fad la>\laissezVibrer s1 } >>
    \repeat unfold 2 {<fa, dod'>4 re8 r r2 }
    \repeat unfold 4 {<fa  dod'>4 re8 r }
    \repeat unfold 3 <<{ r8 <fad' la do re> r <fad la do re> } \\ {<fa, lab reb>4 <re si' mi>8 r } >>
    <<{ r8 <fad' la do re> r <mi sol la do> } \\ {<fa, lab reb>4 <la, re sib'>8 r } >>
    <fad fad'>1~ <fad fad'>2. <fad fad'>4~|
    <fad fad'>1~ <fad fad'>
    <fad fad'>~ <fad fad'>~ <fad fad'>2. r4 |
    r4 <mib'' solb> do8 r r4 | r <mib solb> do8 r r4 | <mib solb> do8 r <mib solb>4 do8 r |
    <la re fa> <fad si sold'>4.\laissezVibrer r2 |
    <si mi sold>2 <sib mib sol> <<{ <re fad> <re fa sold> } \\ la1 >>
    <lab reb mi sol>2 <sol do mib> |
    <fad si fad'>1~ <fad si fad'>~ <fad si fad'>4 r
    << {<mi' la>2~ <mi la> fad~ fad4 } \\ {
    fad,2~ fad1~ fad4} >> r r2 <sol do fad>1 
    << {<lad mi'> ~ <lad mi'> <fad' do'!> <fad do'> <fad do'>~ <fad do'>\laissezVibrer } \\ {
    fad,~ fad~ fad~ fad~ fad~ fad\laissezVibrer } >> |
  }
}

ActeUnSceneTroisTerMainDroite={
	\relative{
	
	r4 r16 <sol' lab> <sol lab> <sol lab> | <do reb>2 | 
	r4 r16 <sol  lab> <sol lab> <sol lab> | <do reb>8 <sol lab>16 <sol lab> <do reb>2 |
	r4 r8  <sol  lab>16 <sol lab> | <do reb>8 <sol lab>16 <sol lab> <do reb>8. <sol lab>16 |
	<sol lab> <sol lab> <sol lab> <sol lab> r8 <do reb>4 <sold la!>16 la |
	<re,! re'!> re' re re \repeat unfold 8 {re re re re} |
	re re fad re dod dod fa do do red mi dob |
	\stemUp sib sib sib sib \stemNeutral <la sib> <la sib> <la sib> <la sib> <fad sib> <fad sib> <fad sib> <fad sib> |
	<fa! sib> <fa sib> <fa sib> <fa sib> <re sib'> <re sib'> <re sib'> <re sib'> <dod sib'> <dod sib'> <dod sib'> <dod sib'> |
	\stemUp si'! si si si \stemNeutral <lad si> <lad si> <lad si> <lad si> <sol si> <sol si> <sol si> <sol si> <fad si> <fad si> <fad si> <fad si>|
	\stemUp do' do do do do do do do \stemNeutral dod dod dod dod dod dod dod dod |
	
	<re, re'>16 re' sol re lab' mi red sol fad fa lab mi sol re lab' mi |
	red sol fad fa lad si la mi lab mib la fa mi lab sol solb |
	la mi lab mib la fa mi lab sol fad si do sib fa la mi |
	sib' solb fa la lab sol do reb si fad sib fa si sol fad sib |
	la lab dod re do lab re mib dod la mib' mi |
  
	\repeat unfold 9 {\repeat tremolo 12 { re32 re,}}
	\t { r8 <dod' fa> <do mi>} \t {<la dod>4 <sold do> <fa la>} |
	<< <dod' fa>2. \\ {r4 \repeat tremolo 8 {re32 re,}}>> |
	\t {r8 <dod' fa> <do mi>} \t {<la dod> <sold do> <fa la>~} \t {<fa la> <sold do> <la dod>}|
	\t {<mi' sold> <dod fa> <do mi>~} \t {<do mi> <la dod> <sold do>} \t {<fa la> <dod' fa> <mi sold>~}|
	\t {<mi sold> <la, dod> <sold do>} \t {<fa la> <dod' fa> <mi sold>~} \t {<mi sold> <la, dod> <sold do>}|
	\t {<fa la> <dod' fa> <mi sold>} \t {<sold, do> <dod fa> <mi sold>} \t {<do mi> <dod fa> <mi sold>}|
	<fa la>32 <mi sold> <dod fa>8.~ \t {<dod fa>8 <do mi> <la dod>~} \t {<la dod> <mi sold> <dod fa>~}
	\t {<dod fa> <do mi> <la dod>~} <la dod> <fad sib> <sib, re> <si mib> |<mib, sol>2. \clef bass
	
	r4 <mib sol sib>2 | <mib sol sib> <re fad  si>4~|<re fad  si> <re fad  si>2  |
	r4 <mib sol sib>2 | <mib sol sib> <re fad  si>4~|<re fad  si> <re fad  si>4 r|
	r4 <sol sib re >2 | <sol sib re > <fad si red>4~|<fad si red> <fad si red>2  |
	r4 <sol sib re!>2 | <sol sib re > <fad si red>4~|<fad si red> <fad si red>4 r| \clef treble
  r4 <re' fad sib>2 | <re  fad sib> 
  << {
  \voiceTwo <re fad sib>4 ~ <re fad sib>2 } \\ {
  \voiceOne r8 mi''16 dod fa dod do mi dod do fa dod } >> mi8 r |
  r4 <re,, fad sib>2| <fad sib re > 
  << {
  \voiceTwo <sib re fad>4~ <sib re fad>2 } \\ {
  \voiceOne s4 r4 mi'16 dod fa dod } >> do mi dod do |
  fa dod mi do mi dod fa dod do mi dod do |
  fa sol mi dod fad dod sol' red re fad mid mi |
  sol red fad dod sol' red re fad mid mi lab sib |
  sol re lab mib la,! lab' mib la,! mi sib la' mi 
  \gauche sib fa si,! fa' \droite |
  
  R2. r4 <si! fa'! sib>2~| <si fa' sib>4 <sib mi la>2 |
  R2. r4 <sib mi la>4. <mi! la mib'>8~| <mi la mib'>4 <la! mib' lab>2 |
  r4 <mib sol sib>2 | <mib sol sib> 
  << {
  \voiceTwo <re fad  si>4~ <re fad  si>2 } \\ {
  \voiceOne s4 r4 r8 fa''16 mi }  >> dod do la sold' |
  r4 <mib,, sol sib>2 | <mib sol sib> 
  << {
  \voiceTwo <re fad  si>4~ <re fad  si>2 } \\ {
  \voiceOne s4 r4 r16 fa'' mi dod }  >> do la sold' si |
  r4 <sol,, sib re>2 | <sol sib re >
  << { \voiceTwo <fad si red>4~ <fad si red>2 } \\ {
  \voiceOne s4 r16 #(set-octavation 1) fa'' mi dod do la sold' si }>>
  <sold, si> <sold' si> <si, re> <si' re> | <re, mi re' mi> <re mi re' mi>
  #(set-octavation 0) r8 <sol,, sib re>4 <sol, sib re> |
  <sib' re sol> <sib, re sol> <si' red fad> |
  <si, red fad> <red' fad si> << <sol sib re!> \\ <red, fad si!> >> |
  r8 << {
    \voiceTwo <re fad sib> <mib sol si> <sib re fad> <si mib sol> <fad sib re> 
    <sol si mib> <re' fad sib> <mib sol si> <sib re fad> <si mib sol> <fad sib re>
    <sol si mib> <mib' sol si> <re fad sib> <si mib sol>
  } \\ { 
    \voiceOne <mib' sol si> <re fad sib> <si mib sol> <sib re fad> <sol si mib>
    <fad' sib re> <mib sol si> <re fad sib> <si mib sol> <sib re fad> <sol si mib>
    \t {<fad' sib re> <dod' fa> <do mi >} \t { <la dod> <sold do> <fa la>} 
  }>>
  \t { <mi' sold> <dod fa> <do mi> } | \t { <la dod> <fa la> <dod' fa> }
  \t { <mi  sold> <dod fa> <do mi> }   \t { <la dod> <fa la> <dod' fa> } |
  \t { <mi  sold> <sold, do> <la dod>} \t { <mi' sold> <la, dod> <do fa> }
  <mi sold>16 <do mi> <dod fa> <mi sold> \grace <fa la>8 
  \pitchedTrill <mi sold>2. \startTrillSpan <fa la> 
   <mi sold>4 \stopTrillSpan r2
   
   R2. << {
   \voiceTwo re,,2.~ <do re>~ <do re>~ do~ do~ do2} \\ {
   \voiceOne s2. la'4 sol fa mi fa8 mi fa sol la4 mi2~ mi2.~ mi2 }>>
   r4 | << { <re la'>2.~ <re la'>~ <re la'>~ <re la'>2 } \\ {
   r4 mi2~ mi2.~ mi2.~ mi2} \\ {
   s2. \acciaccatura {la'16[ mi] red'2 \laissezVibrer} } >>
   r4 <la,, dod mi>2. \fermata |
   
  
	}
}

ActeUnSceneTroisTerMainGauche={
	\relative{ \clef bass

	R2*3 R2. R2*2 R2.*2
	r4 << {sol'2~ <si, fad' sol>2.~ <mi, la si fa' sol>4}\\ {s4 fad'~ \hideNotes fad2. s4} \\{s2 s4 lad,2~ \hideNotes lad4} \\	
	{s2 s2 mib4~ \hideNotes mib} >> r2 |
	<re' fad>8 <dod fa> <fa, re'> <fad dod'> <fad la> <fa sib> |
	<re sib'> <dod la'> <dod fa> <re fad> <fa, re'> <fad dod'> |
	<< {\change Staff = droite \stemDown <mib'' sol>8 \change Staff = gauche \stemUp <re fad> <fad, mib'> <sol re'>}
	\\{mib,4\laissezVibrer s4 }>>	<mib' si'>8 <re lad'> <lad sol'> <si fad'> |
	<< {\change Staff = droite \stemDown <mi'! sold>8 \change Staff = gauche \stemUp <red sol> <si mi> <do mib>}
	\\{mi,,!4\laissezVibrer s4 }>> \clef treble <fa'' la>8 <mi sold> <do fa> <dod mi> \clef bass |
	
	<re,, re'>8 sol do fad, lad si sol sold la fad sib sol lab reb sol, si |
	do lab la sib sol si lab la re lab do reb la sib mib la, | dod re sib si do dod |
	
  <re, re'>2.\laissezVibrer la''4 sol fa <re, mi'>2.\laissezVibrer
  \clef treble |
	r8 si''' sib sol fad mib re'2. \clef bass |
	<< \voiceTwo <re,,, mib'>2. \\ { \voiceOne r8 \clef treble si''' sib sol fad mib}>>
	<< {r si'' sib sol fad mib } \\ re2. >> re'2. \clef bass |
	<< \voiceTwo <re,,,, re'>2. \\ { \voiceOne r8 \clef treble si''' sib sol fad mib}>>
	<< {r8 si' sib sol fad mib } \\ re'2. >>
	<< {r8 si' sib sol fad mib } \\ re2. >>
	<< {r8 si sib sol fad mib } \\ re'2. >>
	<< {r8 si sib sol fad mib } \\ re'2. >>
	<< {r8 si sib sol fad mib } \\ re'2. >>
	<< {r8 si sib sol sib16 si re dod } \\ re2. >>
	<mib sol>8 <re fad> <fad, sib> <sol si> <si mib> <sib re>|
	<re, fad> <mib sol> \t {<sol si!> <mi sold> <dod fa>}
	\clef bass \t { <sold do!> <fa la> <do! mi>~} | <do mi>
	
	sold la do dod mi| fa,2.~ | fa2.~ | fa8
	sold la do dod mi| fa,2.~ | fa2.~ | fa8
	sold la do sold4 | dod,2.~| dod2.~| dod8
	mi fa sold la do!| dod,2.~| dod2.~| dod8
	mi fa sold fa mi |  
  << { \voiceTwo la,2.~ la ~ la2 } \\
  { \voiceOne r4 <mib'' sol si!>2 <mib sol si!> <mib sol si>4 ~
  <mib sol si>2} >> r4 | 
  << { \voiceTwo la,,2.~ la ~ la2 } \\
  { \voiceOne r4 <mib'' sol si!>2 <sol si! mib> <si mib sol>4 ~
  <si mib sol>2} >> r4 |
  
  r8 si, mi la mib sol |
  r4 r8 do, fa sib |
  \clef treble r mi r4 la 8 r  \clef bass |
  r2 r4 s4
  
  << { \voiceTwo <fad,,, fad'>2. ~ <fad fad'> ~ <fad fad'>2 } \\
  { \voiceOne r4 <si'! fa'! sib>2 <si! fa'! sib> <si fa' sib>4 ~
  <si fa' sib>2} >> r4 |
  << { \voiceTwo <fad, fad'>2. ~ <fad fad'> ~ <fad fad'>2 } \\
  { \voiceOne r4 <si'! fa'! sib>2 <si! fa'! sib> <si fa' sib>4 ~
  <si fa' sib>2} >> r4 |
  << { \voiceTwo <fa,! fa'!>2. ~ <fa fa'> ~ <fa fa'>4 <dod' dod'>2 } \\
  { \voiceOne r4 <mib' sol sib>2 <mib sol sib> <re fad si>4 ~
  <re fad si>2 r4} >> |
  << { \voiceTwo <fa,, fa'>2. ~ <fa fa'> ~ <fa fa'>4 <la la'>2 } \\
  { \voiceOne r4 <mib'' sol sib>2 <mib sol sib> <re fad si>4 ~
  <re fad si>2 r4} >> |
  << { \voiceTwo <dod,, dod'>2. ~ <dod dod'> ~ <dod dod'>4 <la' la'>2 } \\
  { \voiceOne r4 <mib'' sol sib>2 <mib sol sib> <re fad si>4 ~
  <re fad si>2 r4} >> |
  << { \voiceTwo <dod,, dod'>2. ~ <dod dod'> ~ <dod dod'>4 <fa fa'>2 } \\
  { \voiceOne r4 <sol'' sib re>4 <sol, sib re> <sol' sib re> <sol, sib re>
  <fad si red> <si, red fad> r4 s4} >> |
  << { \voiceTwo <la la'>2. ~ <la la'>~ <la la'> ~ <la la'> <la la'>2 \laissezVibrer } \\ {
  \voiceOne s2. s2. s2 <sib'' re fad>8 <sol si mib>~ <sol si mib> <fad sib re>4 <mib sol si>
  <sib re fad>8~<sib re fad>2 } >>
  r4 R2.*4 |
  <sib fa'!>2.~ <sib fa'> ~ <sib sol'> ~ <sib sol'> ~ <sib sol'>2 r4 |
  <sib fa' sold>2. ~ <sib fa' sold> ~ <sib fa' sold> ~ <sib fa' sold>2 r4 |
  la2. \fermata |
	}
}

ActeUnSceneQuatreMainDroite = {
  \relative {
    \partial 4 r16 la'' la la <fa la re>4 <mi la do> <fa la re>8 |
    <dod mi la>4~ la'16 fad sol la | sib do sib la sol la sol fa |
    mi re dod mi \stemUp la, \stemDown la'[ la la] \stemNeutral |
    <fa la re>4 <mi la do> <fa sib re>8 | <do fa la>4 r | r8 <re sib'> r <mi dod'> |
    <fa re'>4 r r16 re, re re | <sib re sol>4 <sold si re> |
    <la si re>8 <dod mi la> r4 R2 |
    
    R1 R2. 
    \repeat unfold 7 <do' re>2 |
    \repeat unfold 2 {<do re>4 <la do> <sol la> <la do>}
    \repeat unfold 6 {<do re> <la do>} <sol la> <do, re>
    r16 la' la la re4 do re8 la \t { mi' la re } \t { sol re la } |
    mi16 mi[ mi mi] la4 sol la8 mi \t {la #(set-octavation 1) mi' si'}
    \t {fad' si, #(set-octavation 0) mi, } 
    \stemUp la, \stemNeutral r r4 r16 si,, si si |
    << { \voiceTwo mi2. <mib sol>2. } \\ { \voiceOne
    r8 la la la re4~ re do do8 do } >> <sol fa'>2. |
    \gauche \stemUp re,16 mi sol la \stemNeutral sib do \droite mib fa fad sold si dod |
    <re, re'> sol'[ sol sol] do re, re re sol la, la la |
    <re, re'>4 <do do'> <re re'>8 la'~ | la16 sold'[ sold sold] 
    dod red, red red sold si, si si | <mi, mi'>4 <re re'> <mi mi'>8 si'~ |
    si16 la'[ la la] <re, re'> la, la la re sib' sib sib | 
    mib sib, sib sib mib si'! si si mi! si, si si |
    mi do' do do fa do, do do fa dod' dod dod |
    fad dod, dod dod fad re' re re sol re, re re |
    sol re' re re la' la, la la re re, mi la |
    re mi, la re mi la, re mi sol re sol la |
    dod re dod la sol la dod re dod re dod la |
    dod re dod la sol la dod re dod re dod la |
    re mib re sib lab sib re mib re mib re sib|
    re mib re sib lab sib re mib re mib re sib|
    re mib re sib lab sib la si red mi red si |
    red mi red si la si red mi red mi red si  |
    <re! sold> mi re la re mi sold la <re, sold> <mi la> sold mi |
    <re  sold> mi <re sold> <la la'> <re sold> <la la'> 
    \repeat unfold 3 {<mi' sold> <re la'>} | <la re sold la>8\noBeam
    \repeat unfold 7 <la,, re mi>
    \repeat unfold 3 {<la re mi> <re, mi>}
    \repeat unfold 8 <la' re mi>
    \repeat unfold 3 {<la re mi> <re, mi>}
    \repeat unfold 4 <la' re mi>
    \repeat unfold 3 {<la re mi> <re, mi>}
    \repeat unfold 4 <sib' mib fa>
    \repeat unfold 3 {<sib mib fa> <re, mi!>}
    <si'! mi fad> <si mi fad> <si mi fad>4 |
    r8 <si mi fad> <si mi fad> <si mi fad> <si mi fad>4 |
    
    \t {r <si fa'! la> <si fa' la>} <si fa' la>2~ | <si fa' la>2. r4 |
    \t {r <si fa'  la> <si fa' la>} <si fa' la>2~ | <si fa' la>2. r4 |
    \t {<si fa' la> <si fa' la> <si fa' la>}
    \t {<sib mi lab> <sib mi lab> <sib mi lab>} |
    \t {<la mib' sol> <la mib' sol> <la mib' sol>} |
    \t {<sold re' fad> <sold re' fad> <sold re' fad>} <sold re' fad>~ |
    <sold re' fad>2. r4 \clef bass |
    
    \t {r <mib la dod> <mib la dod>} \t {<mib la dod> <mib la dod> <mib la dod>}|
    \t {<mib la re> <mib la re> <mib la re>}
    \t {<mi! sib' mib> <mi sib' mib> <mi sib' mib>} |
    \t {r <mib la dod> <mib la dod>} \t {<mib la dod> <mib la dod> <mib la dod>}|
    \t {<mib la re> <mib la re> <mib la re>}
    \t {<mi! sib' mib> <mi sib' mib> <mi sib' mib>} |
    \t {r <mib si' fa'> <mib si' fa'>} \t {<mib si' fa'> <mib si' fa'> <mib si' fa'>}
    \t {<mib si' fad'> <mib si' fad'> <mib si' fad'>}
    \t {<mib si' sol'> <mib si' sol'> <mib si' sol'>} |
    \t {r <mib si' fa'> <mib si' fa'>} \t {<mib si' fa'> <mib si' fa'> <mib si' fa'>}
    \t {<mib si' fad'> <mib si' fad'> <mib si' fad'>}
    \t {<mib si' sol'> <mib si' sol'> <mib si' sol'>} \clef treble |
    r <mib' la dod>~ \t {<mib la dod> <mib la dod> <mib la dod>} |
    \t {<mi! sold re'> <mi sold re'> <mi sold re'>} <mi la red>8 <mi la red> |
    r4 <lab re fad>~ \t {<lab re fad> <lab re fad> <lab re fad>} |
    \t {<sib mi sold> <sib mi sold> <sib mi sold>} <sib mib la>8 <sib mib la>|
    R1
    r2 <si, re>~ <si re>4 <si re> <la fa'>2 <si re>2. r4 |
    r2 <lad dod>~ <lad dod>4 <lad dod> <sold mi'>2 <lad dod>2. r4 |
    r <re sol si> <mib fad la re>2~<mib fad la re>~<mib fad la re>2.~<mib fad la re>2
    r4 \clef bass | <do, fad si>8 r r4 <mib lab re>8 r | <la do! fa!> r r2
    \clef treble | \acciaccatura {re32[ red mi mid]} <lad, dod fad>8 r  r2 |
    \acciaccatura {do'32[ dod re]} <re, si' mib>8 r r2 |
    r8 \stemUp <re mi sol do>~ \t {<re mi sol do> <mi sol do> <mi sol do>}
    \t {<fa sib reb> <fa sib reb> <fa sib reb>}
    \t {<sol do mib> <sol do mib> <sol do mib>}
    r8 <sib reb solb>~ \t {<sib reb solb> <sib reb solb> <sib reb solb>}
    \t {<do mib lab> <do mib lab> <do mib lab>}
    \t {<dod fad la> <dod fad la> <dod fad la>}
    \t {<do mib sold la> <do mib sold la> <do mib sold la>}
    \t {<si red fad la> <si red fad la> <si red fad la>}
    \t {<do mib sold la> <do mib sold la> <do mib sold la>}
    \stemNeutral r4 | \pl {
    \repeat tremolo 16 {sib,32 la}
    \repeat tremolo 12 {sib la}
    \repeat tremolo 16 {sib la}
    \repeat tremolo 12 {sib la}} {<sol' la>1~ <sol la>2. <sol la>1~ <sol la>2.}
    \repeat tremolo 12 {la,32 la'} \t { 
    \repeat tremolo 2 {do,la} \repeat tremolo 2 {reb la} \repeat tremolo 2 {mib'la,}}
    \pl {%\set followVoice = ##t
    \repeat tremolo 12 {do <la si>}
    \repeat tremolo 8 {dod32 <la si>}\gauche
    \repeat tremolo 4 {sib32 la}
    \repeat tremolo 4 {do! la} \droite
    \repeat tremolo 12 {re32 la}} 
    {<red mi fad>2. <re!    fad>2 <si! red>4 <dod mid> <dod fad>2.} |
    %\set followVoice = ##f
    \pl s8 r8<dod' fa la dod>\arpeggio~
    \t {<dod fa la dod><dod fa la dod><dod fa la dod>~}
    <dod fa la dod>16 <dod fa la dod> <dod fa la dod> <dod fa la dod>~
    \t {<dod fa la dod>8 <dod fa la dod> <dod fa la dod>}
    r8 \stemUp <dod fa la dod>~\t {<dod fa la dod><dod fa la dod><dod fa la dod>~}
    <dod fa la dod>16 <dod fa la dod> <dod fa la dod> <dod fa la dod>~
    \t {<dod fa la dod>8 <dod fa la dod> <dod fa la dod>}
    \t {r4 <dod fa la dod> <dod fa la dod>} <dod fa la dod>8 <dod fa la dod>
    <dod fa la dod> <dod fa la dod> 
    \t {<dod fa la dod>4 <dod fa la dod> <dod fa la dod>}
    r4 <red sol! si red>8.\arpeggio <red sol si red>16 <red sol si red>8
    <red sol si red>~ <red sol si red>16 <red sol si red> <red sol si red>8
    <red sol si red> <red sol si red>~ <red sol si red>16 <red sol si red>
    <red sol si red>8 <red sol si red>4
    <red sol si red>8. <red sol si red>16 <red sol si red>8 <red sol si red>~
    <red sol si red> <fa sold si fa'>~
  \t{<fa sold si fa'> <fa sold si fa'> <fa sold si fa'>} \stemNeutral |
    <sold sold'>4 dod,,16 si si dod dod si si dod | dod si dod si dod si |
    \pl {sib lab lab sib sib lab lab sib sib lab lab sib} sol'!2. |
    sib,16 lab sib lab sib lab |
    \pl {dod si! si dod dod si si dod} sold'2 
    dod,16 si dod si dod si \clef bass |
    \pl {sol!16 fa fa sol sol fa fa sol} do2 sol16 fa fa sol sol fa fa sol 
    \clef treble |
    \pl {mi' re re mi mi re re mi} <sib sold'>2 | mi16 re mi re mi re |
    \pl {sib lab lab sib sib lab lab sib} <dod mi>2 
    sib16 lab lab sib sib lab lab sib
    \pl {si! sold sold si si sold sold si} <re mi>2
    <si re mi>16 sold <si re mi> sold <si re mi> sold |
    <mi' sol!> <re fa> <re fa> <mi sol> <mi sol> <re fa> <re fa> <mi sol> |
    <mi sol> <re fa> <re fa> <mi sol> <fa sol sib> <re mi> <re mi> <fa sol sib> |
    R2 R4. r4 fad,16 la re fa! sib dod fad la | <re, re'>4 r r2 | R1
    \repeat unfold 4 {sol,,16 <re' mib>}
    \repeat unfold 4 {sol, <do mib>}
    \repeat unfold 4 {sol  <do fa>}
    \repeat unfold 4 {sol  <sib fa'>}
    \repeat unfold 8 {sol  <la fad'>}
    \repeat unfold 6 {<sol la> <do mib fad>}
    \repeat unfold 6 {<sol la> <do red sold>}
    \repeat unfold 6 {do <mib fad si>}
    \repeat unfold 6 {mib <fa sold dod>}
    \repeat unfold 2 {re're,re\gauche \stemUp re,\stemNeutral \droite re're re're,}
    re' re, re \gauche \stemUp re, \stemNeutral \droite r4 r2 | R1 \clef bass |
    \repeat unfold 8 <re sib' re>8 R2
    \repeat unfold 6 <re sib' re>8 R2.
    \repeat unfold 4 <re sib' re>8 R1 \clef treble |
    
    r4 <sib' dob sib'>2 | <sib dob sib'> <sib dob sib'>4\laissezVibrer | R2.
    \pl {s4 <sib dob sib'>2 <sib dob sib'> <sib dob sib'>4 r4 <sib dob sib'>2}
    {sib'8 solb fa dob sib solb fa solb sib dob fa solb sib2.\laissezVibrer}
    \t {r8 sib solb} \t {fa dob sib} \gauche \t {re, dod mib,} \droite |
    r4 <sib'' dob sib'>2 <sib dob sib'> <sib dob sib'>4\laissezVibrer |
    \pl {s4 <sib do! sib'>2 <sib do sib'><sib do sib'>4 s2.}
    {sib'8 solb fa re do sib \gauche sol fad re fad sol sib \droite
    do re fa! solb sib4\laissezVibrer } r4 <sib, do sib'>2 |
    \pl {<sib re sib'>2 <sib re sib'>4} {\t{re'8 sib la} \t{fad mi re}
    \gauche \t {si sib fad} \droite } r4 <sib re sib'>2
    \pl {s4 <sib mib sib'>2 <sib mib sib'>2 <sib mib sib'>4\laissezVibrer
    do'4\rest <sib, mib sib'>2} {sib'8 solb fa reb do \gauche lab sol mib re
    mib sol lab  do \droite reb fa solb sib4\laissezVibrer}
    r <sib, mi! sib'>2\laissezVibrer |
    R2.*2 |
    
    R1. R1 R1. R1 R1. r2 <sib sol'! la>4 r | R1. 
    <mi fad>8 <re sold>4 <mi fad>8 \pl {s2 la4 sol fa mi fa8 mi fa sol}
    {<dod, la'>2~ <dod la'>1.}    
    \pl do2. {la'2 mib4} r \clef bass |
    la,4 r r2 r4 re,8 sol |
    la4  r r2 fa8 mib sib' do |
    la4  r2 do8 sol fa re mi' si |
    la4  r  fa8 sol do sib reb mib, lab solb |
    la4  sib8 mib reb si fad sold fa re mi' si |
    la4  r \clef treble <mi! reb' mib> r | R1. R1 r2 r4 la' sol fa|
    <fad, mi'>4 r r2 \clef bass |
    la4  r r2 r4 mi'8 si |
    la4  r r2 reb8 mib, lab solb |
    la4  r2 fad8 si dod mi re, sol |
    la4  r  dod8 si fad sold fa mib sib' do |
    la4  sold8 red fa sol do sib reb mi re, sol |
    la4  r \clef treble <sib sol'! la> r |
    r2 r4 <si fad' la> <do fa la> r | r2 <dod mi la>4 r | 
  }
}

ActeUnSceneQuatreMainGauche = {
  \relative {
    \partial 4 r4 \clef treble | re16 mi fa sol la8[ la, re] |
    la'4~ la16 do sib la sol la sol fa mi fa mi re | dod si la si dod8 la |
    re16 mi fa sol la8[ la, sib] | fa'4~ fa16 <re fad>[ <re fad> <re fad>] |
    <sol sib>8 r <mi sol> r <re la'>4 r \clef bass r16 do sib la |
    sol4 fa mi8 la, r4 R2 | R1 R2. \clef treble |
    \t { la''2 la4~ } \t {la la2 } \t { la2 la4~ } \t {la la2 }
    \t { sol4 la sol } \t { la sol la } \t { sol la sol } |
    \t { fad sol fad } \t { sol fad sol }
    \t { fad sol fad } \t { sol fad sol }
    \t { <si, red fad> sol' <si, red fad> } \t {sol' <si, red fad> sol'}
    \t { <si, red fad> sol' <si, red fad> } \t {sol' <si, red fad> sol'}
    \t { <si, red fad> sol' <si, red fad> } \clef bass |
    \t { <mib, sol sib> dob' <mib, sol sib> } \t { dob' <mib, sol sib> dob'} |
    
    <la, re sol>8 r \t { la re sol } \t { do sol re } |
    la16 la'[ la la] re4 do | re8 la \t { do, sol' re'} \t { la' re, sol, } |
    do,16 la'[ la la] re4 do | 
    << {\droite \voiceTwo re8 la4. s4 } \\
    {s4 \voiceOne sib8 fa4. } \\
    {s2 \voiceTwo solb8 reb } >>
    <la re sol>2. << {
    \voiceTwo <do fa sib>2. s2 <sold, sold'>4~<sold sold'> <dod dod'> <si si'> } \\
    { \voiceOne s8 sol'' sol sol do4~ <mi, la do re>2. s2. }>>
    <re, re'>4. re'8 \t{re re re}<re, re'>16 si''[si si] mi mi, mi mi la la, la la 
    <re, re'>4. re'8 \t{re re re}<re, re'>16 dod''[dod dod]fad fad,fad fad si la,la la
    <re, re'>4 r8 re' fad, si <mib, mib'>4 r8 reb4 sol8 |
    <do, do'>4 r8 fa' la, re!        fad!4 r8  la4 mib8 |
    <lab, lab'>4 r8 la' dod, fad |
    <sib, sib'>4 r8 sib4 sib,8 |
    <mi  mi'>4 r8 mi' \t {mi mi mi} <mi, mi'>4 <mi mi'> <mi mi'> mi'8 sib,4 mi sib8 |
    <mi  mi'>4 r8 mi' \t {mi mi mi} mi8 sib,4 mi sib8 <mi mi'>4 <mi mi'> <sib sib'>8
    <mi mi'>~ <mi mi'>2 <re re'>4~ <re re'> <fa fa'>2 | 
    <dod dod'>2. r4 | r8 <sol sol'>4 <dod dod'> <sol sol'>8 |
    <dod dod'>2. r4 | r8 <sol sol'>4 <dod dod'> <sol sol'>8 |
    <dod dod'>2     | r8 <sol sol'>4 <dod dod'> <sol sol'>8 |
    <dod dod'>2     | r8 <sol sol'>4 <dod dod'> <sol sol'>8 |
    <dod dod'>4 <sol sol'> <dod dod'>2 <sol sol'>4 |
    <dod dod'>2. <dod dod'>4 sol'2. r4 |
    <dod,dod'>2. <dod dod'>4 sol'2. r4 |
    <dod,dod'>2 <re re'> <mib mib'> <mi! mi'!>2.~ <mi mi'>2. r4 |
    \pl {fa1~ fa2 reb4 r} {r2 sib'~ sib1}
    \pl {fa1~ fa2 reb4 r} {r2 sib'~ sib1}
    \pl {fa1~ fa2 reb4 r} {r2 lab'~ lab1}
    \pl {fa1~ fa2 reb4 r} {r2 lab'~ lab1}
    \pl {<sol, sol'>2. r4} {
    r4 <do' sol' lab>~ \t {<do sol' lab> <do sol' lab> <do sol' lab>}}
    <reb fa si>8 <dod, dod'>4 sol'8 <fad' do'!> dod, |
    \pl {<sol sol'>2. r4} {
    r4 <fa'' si mib>~ \t {<fa si mib> <fa si mib> <fa si mib>}}
    <fa si solb'>8 <dod, dod'>4 <sol' sol'>8 <fa' dod' sol'!> sol
    
    dod,,2 re4 mi | sol1~ sol~ sol~ sol4 sol2.~| sol1~ sol2. r4 |
    r <fa' la> <do mi sib'>2~ <do mi sib'>~ <do mi sib'>2.~ <do mi sib'>2 r4 |
    sol8 r r4 <sol sib>8 r | <fad dod' mi> r r2 | 
    <la fa'!>8 r r2 | <sol do fad>8 r r2 |
    \pl {<do, do'>4. fad4 do'4 fad,8} {
    r8 <red' sold si>~ <red sold si>4 <la' re!> <sold si mi>} |
    \pl {<do,, do'>4. fad4 do' fad,8} {
    r8 \droite \stemDown <la' re fa!>~ <la re fa>4 <si! mi! sol!> <re! fa! sib>}|
    \droite \stemDown <do mi sol>8 \stemNeutral \gauche do, 
    \droite \stemDown <do' fa> \stemNeutral \gauche do, 
    \droite \stemDown <do' sol'> \stemNeutral \gauche fad,, r4 |
    R1 la16 fad sold red dod sib' do sol fa re mi' si |
    la8 r r4 r2 | r4 la8 mi sol re dod sold' si fad fa do mib' sib |
    la8 r r2 | s1 \clef treble | 
    %\set followVoice = ##t
    \pl {
      s2.\clef bass <sol, sol'>1\laissezVibrer \clef bass <sol sol'>\laissezVibrer
      <sol sol'>2.~<sol sol'>2\laissezVibrer r4 <fa fa'>2.
      <fa fa'>1~ <fa fa'>2~ <fa fa'>8 <mib' mib'>4 <fad fad'>8
    }
    {
      r8 r16 <dod'' fad>~ <dod fad>8 <red mi sold>~ <red mi sold>16 <fad sol si>8.
      \droite \stemDown <mi sib' dod>8\noBeam \laissezVibrer \stemNeutral 
      \gauche \clef treble %\set followVoice = ##f 
      <dod mi sol sib>~ \t {<dod mi sol sib> <dod mi sol sib> <dod mi sol sib>~}
      <dod mi sol sib>16 <dod mi sol sib> <dod mi sol sib> <dod mi sol sib>~
      \t {<dod mi sol sib>8 <dod mi sol sib> <dod mi sol sib>}
      \clef bass s8 \droite \stemDown
      <dod mi sol sib>~ \t {<dod mi sol sib> <dod mi sol sib> <dod mi sol sib>~}
      <dod mi sol sib>16 <dod mi sol sib> <dod mi sol sib> <dod mi sol sib>~
      \t {<dod mi sol sib>8 <dod mi sol sib> <dod mi sol sib>}
      \t {s4 <dod mi sol sib> <dod mi sol sib> } <dod mi sol sib>8 <dod mi sol sib>
      <dod mi sol sib> <dod mi sol sib> 
      \t {<dod mi sol sib>4 <dod mi sol sib> <dod mi sol sib>}
      s4 <si re! sold>2 r8 r16 <si re sold> <si re sold>8 <si re sold>~
      <si re sold>16 <si re sold> <si re sold>8 <si re sold>4
      <si re sold>8. <si re sold>16 <si re sold>8 <si re sold>~ <si re sold>4
    <si re sol si> \stemNeutral
    }
    
    <re,,re'>2.~ re'8 re, r | \pl {sold2 si4~ si8 dod4} {re2. s4.}
    <re, re'>2 ~ re'8 re, r | \pl {la'4. sib8~ sib8. do16~ do4} {re2 s2}
    <mib, mib'>2~mib'8 mib,r| \pl {si2~ si8 do~ do16 re8.} {re'2 s2}
    <fa, fa'>2 ~ fa'8 fa, r | \pl fa2 {r8 si'16 sold sold si si sold}
    <fad sold> si si <fad sold> <fad sold> si si <fad sold>|
    R2 R4. re,16 fa sib dod sib dod fad la fad la re fa |
    <re,, re'>8 re' \pl {re,4 re re re re re re} {re'8 re re re re re
      <re mi>16 re' <re, mi> re' <re, mi> re' <re, mi> re' <re, mi> re'
    <re, mi> re' <re, mi> re' <re, mi> re'}
    \repeat unfold 4 <re,, re' mi>4
    \repeat unfold 28 <re re'> |
    <re re'> r r2 |
    \repeat unfold 4 re4 R2
    \repeat unfold 3 re4 R2.
    \repeat unfold 2 re4 R1
    re2.\laissezVibrer s2.*2
    re2. \laissezVibrer s2.
    re2. \laissezVibrer s2.
    re2. \laissezVibrer s2.
    re2. \laissezVibrer s2.*2
    re2. \laissezVibrer s2.    
    re2. \laissezVibrer s2.*3
    re2. r4 <sib' dob sib'> r | r <re, re'> r |
    
    la'8 do sib mib fa sold,fad si dod mi re, sol |la4 r r2
    la8 fad sold red dod sib' do sol fa re mi' si |la4 r r2
    la8 sol re' mi dod si fad sold fa mib sib' do |la4 r <la si! sold'> r
    R1. <do re>8 <sib mi>4 <do re>8 <la fa'!>2~ | <la fa'>1.
    <la fad'>2. r4 |
    la8 do sib mib fa sold, fad si dod mi re, sol |
    la8 sol re' mi dod si fad sold fa mib sib' do |
    la8 fad sold red dod sib' do sol fa re mi' si |
    la8 si mi re fa, sol do sib reb mib, lab solb |
    la8 do sib mib reb si fad sold fa re mi' si   |
    la4 r <red, mi re'!> r R1.
    << { \voiceTwo do1~do1.} \\ {\voiceOne do'4 do \t {do do do} do4 do~ do1}
    \\ { \voiceFour s1 lab2 la!1} >> <do, sib'>4 r sib reb |
    <la la'>8 fad' sold red dod sib' do sol fa re mi' si |
    la8 si mi re, fa sol do sib reb mib, lab solb|
    la8 do sib mib fa sold, fad si dod mi re, sol|
    la8 sol re' mi dod si fad sold fa mib sib' do|
    la8 fad sold red fa sol do sib reb mi re, sol|
    la4 r <la si! sold'> r | r2 r4 <la do sol'> <la dod fad> r |
    r2 <re, la' fa'!>4 r |
  }
}


EntracteMainDroite={
  \relative{
    R2 <<
    \new Voice{ \voiceOne
      \t {r4 mi'8} sold4~ sold2 \t{r4 sol!8} si4~ si2
      r8 mi, sold sol si4 \t{r4 mi,8} \t{sold sol si}
      \t{mi, sold sol} \t{si mi, sold} \t{sol si sib16 si32 dod}
    }
    \new Voice{ \voiceTwo
      s2 r4 mi,, sold2 \t{r4 mi8} \t{sold4 sol8} si2
      \t{r4 sol8} si4 mi, sold sol! \t{si sib8}
    } >>
    <re re'>4 r4 r2 |
  }
}

EntracteMainGauche={ \clef bass
  \relative{
    << {sold,8 sold \t{sold sold sold}} \\ sold,2 >>
    <sold sold'>2~
    << {sold'8 sold \t{sold sold sold}} \\ sold,2 >>
    <sold sold'>2~
    << {sold'8 sold \t{sold sold sold}} \\ sold,2 >>
    <sold sold'>2~
    << {sold'8 sold \t{sold sold sold}} \\ sold,2 >>
    <sold sold'>2~
    << {sold'8 sold \t{sold sold sold16 sol32 fa}} \\ sold,2 >>
    <re' re'>4
  }
}

ActeDeuxSceneUnMainDroite={
	\relative{
    #(set-octavation 1)
		\repeat tremolo 12 {la''''32 la,}
    \repeat tremolo 12 {la' la,}
    \repeat tremolo 12 {la' la,}
    \repeat tremolo 12 {la' la,}
    \repeat tremolo  8 {la' la,}
    \repeat tremolo 12 {la' la,}
    \repeat tremolo 12 {la' la,}
    \repeat tremolo  8 {la' la,}
    \repeat tremolo 12 {la' sib,}|
    \repeat tremolo  8 {la' si,!}
    \repeat tremolo  4 {la' re,}|
    \repeat tremolo  2 {la' re,}
    \repeat tremolo  4 {la' fa}
    \repeat tremolo  6 {<fad la> fa!}|
    \repeat tremolo  8 {la  la,}
    \repeat tremolo 12 {la' la,}
    \repeat tremolo  8 {la' la,}
    \repeat tremolo 12 {la' la,}
    \repeat tremolo 12 {la' la,}
    \repeat tremolo  8 {la' la,}|
    \repeat tremolo  8 {la' la,}
    \repeat tremolo  4 {<fad' la> la,}|
    \repeat tremolo  4 {<fad' la> la,}
    \repeat tremolo  4 {<mi' fad la> la,}
    \repeat tremolo  2 {<red la'> la}
    \repeat tremolo  2 {<dod la'> la}|
    \repeat tremolo 12 {la' sib,}
    \repeat tremolo  8 {la' la,}|
    \repeat tremolo 12 {la' la,}
    \repeat tremolo  8 {la' la,}
    \repeat tremolo 12 {la' la,}
    \repeat tremolo 12 {la' la,}
    \repeat tremolo  8 {la' la,}|
    \ttt{<re mi la>16 la <re, mi la> la <re mi la> la'}
    \ttt{<re mi la>16 la <re, mi la> la <re mi la> la'}
    \ttt{<re mi la>16 la <re, mi la> la <re mi la> la}
    #(set-octavation 0)
    \t{<re, mi la>[ r <la re mi la>}\t{r <la re mi la> r]}
    \t{<la re mi la>[ r <la re mi la>}\t{r <la re mi la> r]}
    \t{<la re mi la>[ r <la re mi la>}\t{r <la re mi la> r]}
    \ttt{<la re mi la>[ r <la re mi la> r <la re mi la> r]}
    \ttt{<la re mi la>[ r <la re mi la> r <la re mi la> r]}
    \ttt{<la re mi la>[ r #(set-octavation 1) <la' re mi la> r <la' re mi la> r]}
    \ttt{<la' re mi la>[ r <la, re mi la> r <la, re mi la> r]}
    \ttt{<la re mi la>[ r <la' re mi la> r <la' re mi la> r]}
    #(set-octavation 0)
    r2 r8 <la,,, si> | r4 <re, mi la>8 r r4 |
    r4 \ttt{<la'' re mi la>16[ <dod,, fad sold dod> <la'' re mi la> <dod,, fad sold dod> <la'' re mi la> <dod,, fad sold dod>]}
    \t {<la'' re mi la>[ <dod,, fad sold dod> <la'' re mi la>]} r8 r4 |
    r4 r8 \t {<re, mi la re>16[ <sib, mib lab sib> <re' mi la re>]}
    \ttt {<sib, mib lab sib>[ <re' mi la re> <sib, mib lab> <re' mi la re> <fa,, sib mib> <re'' mi la re>]}
    <<\t {\oneVoice r2 s2 la2}\\ \t {s2 mi1}>> | <la,! do mib lab>2.~ <la do mib lab>2
    <sold re' sib'>2.~|<sold re' sib'>2 r2 | 
    
    << {<re' mi la>2\laissezVibrer s2} \\ {s4 <re mi> r <re mi>} >>
    r4 <re mi> r <re mi> | r <re mi> r | r <re mi> r | <re mi> r <re mi>| r <re mi> r | <re mi> r |
    r <re mi> r | r <re mi> r | <re mi> r <re mi> | r <re mi> r | <re mi> r <re mi> |
    r <re mi> r <re mi> | r <re mi> r | r <re mi> | r <re mi sold la> r | <re mi sold la> r <re mi sold la> r |
    <re mi sold la> r <re mi sold la> | r <re mi sold la> r <re mi sold la> | r <re mi sold la> r |
    <re mi sold la> r <re mi sold la> r | sold'8 la sold mi re mi | 
    \stemUp <re sold>2\laissezVibrer s2 \stemNeutral |
    r4 <lab, sib re fa> r <lab sib re fa> r <lab sib re fa> r |
    r <sold la re mi> r | r <la sib re> r <la sib re> | r <la sib re> r |
    re la' sold8 mi~ mi4~ | mi <la, re mi> r | <la re mi> r <la re mi> r |
    mi'8 re << la'2\laissezVibrer \\ { r4 <la, re mi> } >> |
    r <la re mi> r <la re mi> | r <la re mi> r | <re mi la>2. r4 |
    
    sold'8 la <sold re'> <mi la> <re sold> mi | <si sold'> <re la'> <si sold'> mi <si re> mi re si |
    << <sold la>2. \\ { sold8 la sold mi re mi } >> |
    sold la sold mi re mi sold4\laissezVibrer |
    r <la, re mi sold la> r | <la re mi sold la> r <la re mi sold la> r | r <la re mi sold la> r |
    <la re mi sold la> r <la re mi sold la> r | r <la re mi sold la> r |
    <la re mi> r <la re mi> r |
    r8 <la do re> <do re fad sol> \gauche <mi, fad> \droite r <re' fad sol> |
    <fad sol do> <la, do re> r <la do re> <do re fad sol> 
    \gauche <mi, fad> r <mi fad> \droite |
    <la do re> \gauche <si, mi> r <si mi> <fad' la> fad, \droite |
    r4 <la' re mi> r <la re mi> | r <la re mi> r |
    r8 <si mi> <re mi la> \gauche <fad, si> 
    r <fad sold> \droite <si re mi> \gauche <dod, re> \droite |
    r4 <la' re mi> r | r <la re mi> r <si re mi sol la> |
    
    r4 <do re> r | r8 <do re>4. r8 <do re>4. |
    r4 <do re> r | r8 <do re>4. r4 <do re> |
    r4 <do re sol> r | r <do re fa sib> r <lab' sib re mib> <sib re mib lab> r |
    r4 <do, fa> <do fa> | r <si mi> <si mi> |
    r4 <do  fa> <do fa> | r <si mi> r | r8 <si mi>4 <do fa>8 <re sol>4 |
    \pl <fa sib>2.\laissezVibrer {s4 la'8 sib la fa } | mib fa la2 |
    r4 mib8 fa la2 | r2 la4~| la4. sold4 si8 fad4 | lab,4 solb fa |
    mib fa8 mib fa solb lab4 | \pl mib2. {r4 <mib solb> <mib solb>} |
    r4 <do fa> r8 <do fa>4. | r4 <mib solb> <mib solb> |
    r <do fa> r <do fa sib> |
    re'8 mib re sib lab sib | re mib re sib lab fa mib fad |
    \pl re2. {la'4 sol fa!}  |
    mi fa8 mi fa sol \pl {fad4 mi re dod} {la' mi2 s4}
    re8 dod re mi |
    <la, re fad>1\laissezVibrer R2. R1 R2. R1
    <si mi>4 <sold dod> r | <mi' sol!> <dod mi> r2 |
	}
}

ActeDeuxSceneUnMainGauche={
	\relative{ \clef treble
		<la' la'>8\arpeggio r r2 | <la' la'>8 r r4 la |
    la8 la \t{la la la}
    << { \voiceTwo la4~ 
      \once \override Voice.LaissezVibrerTie #'direction = #-1
      la2\laissezVibrer s4 s2} \\ {
      s4 \voiceOne re8 sib~ sib2~ sib4 r 
      }>>   si!8 sol~ sol2~ sol2 r4 | r sold |
      << {mi2\laissezVibrer s4 s2. s2. s4 } \\
      { s4 \clef bass mi,,,16 si' sol' sold \t{lad8 re <si sol'>~}
      <si sol'>2.~<si sol'>2\laissezVibrer s4 \oneVoice R2} >>
      mib4 sib2~sib4 r | do8 sol~sol2~|sol2.~sol4 r8 la |
      mi16 mi, sol' lab \t{do16 mi mib} <si do sol'>8~<si do sol'>4~|
      <si do sol'>2.~<si do sol'>2\laissezVibrer s4 R2|
      <la, la'>4 <re, re'>2~ <re re'>4 r |
      <mi mi'>4. <la, la'>8~<la la'>4~ <la la'>2 r4 |<si si'>2 |
      <mi, mi'>2.\laissezVibrer
      \t { r16[ mi' r } \t {<la' re mi la> r <la re mi la>] }
      \t { r16[ mi, r } \t {<la' re mi la> r <la re mi la>] }
      \t { r16[ mi, r } \t {<la' re mi la> r <la re mi la>] }
      \ttt{r16[ <la re mi la> r <la re mi la> r <la re mi la>]}
      \ttt{r16[ <la re mi la> r <la re mi la> r <la re mi la>]}
      \ttt{r16[ <la re mi la> r <la, re mi la> r <la, re mi la>]}
      \ttt{r16[ <mi mi'> r <la re mi la> r <la' re mi la>]}
      \clef treble \ttt{r16[ <la re mi la> r <la' re mi la> r <la' re mi la>]}
      r2 r8 <dod, mi> | r4 <fad, si>8 r r4 \clef bass R1 R2.
      <<{<fa! sib>2. fa4}\\{do!1}>> <fa, mi'!>2.~|<fa mi'>2|
      <mi red'>2.~| <mi red'>4 r8 mi4 fa sol8|
      
      <<{r4 fa' r2 s2.}\\ {sib,1~ sib2.}>> r4 |
      r8 sib4 si dod8 |
      <<{mi4 si'! r4 s2. mi,4 si' lad s4}\\{mi2.~ mi2.~ mi2.~ mi4}>> r4 |
      << 
      { \oneVoice r4 <lad si>8 fad \voiceTwo mi4~ mi2.~ mi2.~ mi2 r4 
      \voiceOne mi8 si' lad4 si8 lad fad4 r8 si } \\ {
      s2. \voiceOne si,4 <fad' si> lad8 fad fa! dod <si fad'>4 si'8 lad
      r fad lad4 fad \voiceTwo mi2.~ mi2 }
      >>
      r8 fad lad4 | <mi si'>2 r4 | r8 lad 
      << { si mi,~ mi2 } \\ { s4 fad, dod' } >> sid8 sold | fad2. r4 |
      sold8 fad dod' sid4 fad8 | do'!8 fad, sol'!4 <fad, fad'>8 re' do4 |
      fad,8 sold sid4 dod | fad,8 dod' r4 r2 | sib4 <fa' do' re sol> mi8 do |
      sib4 \droite \stemDown <do' re fad sol> r <do re fad sol> \gauche \stemNeutral|
      << { \voiceTwo fad,,2.~ fad2. } \\ {\voiceOne r4 mib' r mib r mib }>> r |
      sib2. << { \voiceTwo fad1~ fad2 } \\ { \voiceOne
      r4 <si mi> r <si mi> r <si mi> } >> r |
      << { \voiceTwo fad1 } \\ { \voiceOne r4 <mi' la re> r <mi la re> } >>
      fa,!2.~ fa2. r4 | fad2.~ fad1 | fa2.~ fa2. r4 |
      << { \voiceTwo fad2.\laissezVibrer } \\ { \voiceOne r4 \clef treble
      fad''8 sold si sold } >> | fad re dod re fad sold fad re \clef bass |
      <sold, dod>2. | r4 <la re mi> r <la re mi> | fad,2.~ fad4 r r2 |
      fa!2.~ fa4 r r2 | fad2. fa!2 mib |
      
      do2.\laissezVibrer | s1 s2. r8 fad do2. dod2.\laissezVibrer s1 do!2. reb2 mib |
      \pl fad2.  {r8 la'4  do re,8} \pl {fa,!2. r4} {r4 lab' do re,} |
      \pl fad,2. {r8 la'!4 do re,8} \pl {fa,!2. r4} {r4 lab' do4. re,8} |
      \pl fad,2. {r8 la'!4  do re,8} \pl {sol,2.~ sol4} 
      {r8 lab'4 do re,8 r sol} r4 fa,! |
      \pl sib2. {r8 la'4  do re,8}
      \pl si!2. {r8 lab'4 do re,8}
      \pl sib2. {r8 la'4  do re,8}
      \pl si!2  {r8 lab'4 do8} dod,4 | \pl mi {r4 la4. do8}
      \pl {mib,2.~ mib~ mib} {r4 <do' re>2 <do re> <do re>4~ <do re>2 r4 }
      <la si> | \pl mib2. {r4 <do' re> r } |
      \pl re,1 {r4 <si' dod> r <si dod>} | \pl re,2 {r4 <sib' do!>} mib,~ |
      mib fa2. |
      \pl <lab, lab'>2. {r8 la'4 do re,8}
      \pl <la!  la'!>2. {r8 lab'4. do4} re,
      \pl <lab  lab'>2. {r8 la'4 do re,8}
      <sol, sol'>1~ <sol sol'>2. | r4 <lab lab'> <sol sol'> <fa fa'> |
      \pl {<re re'>2.~<re re'>1~ <re re'>2.} 
      {s2. do''4 sib la sol la8 sol la sib do!4} sol r |
      <sib, fa' sold>1\laissezVibrer | lab'4 fa r | lab fa r2 |
      <lab si>4 <fa sold> r | <lab si> <fa sold> <lab si> <la do> |
      lab fa r | <sold si> <fa sold> r2 |
	}
}

ActeDeuxSceneUnBisMainDroite = {
  \relative {
    sol'4 mi8 r r2 | sold4 mi8 r r4 | sol4 mi~ \pl mi1*5/4\laissezVibrer
    {sol8 mi sol mi sol mi sol mi sol mi} |
    \repeat unfold 5 {sol mi}
    \repeat unfold 4 {sol mi sol mi sol mi sol mi sol lab} |
    sol mib reb mib sol mi sol mi sol lab |
    \repeat unfold 2 {sol mi sol mi sol mi sol mi sol lab} |
    sol mib reb mib sol mi sol mi sol lab |
    sol mib reb mib sol mib reb mib sol lab |
    \repeat unfold 4 {sol mi} sol4 |
    <mid, fad dod'> \repeat unfold 4 {sol'8 mi}
    \repeat unfold 10 {sol mi}
    \repeat unfold 2 {sol la sol mi re mi sol la sol mi}
    sol la sol mi sol la dod re dod la |
    sol la sol mi re sib la sib re mi |
    sol la dod re dod la sol mi re mi |
    sol la re, mi sol la re, mi sol la |
    <sol, la mib' fad>4 re'8 re re re <sol, la mib' fad>4 re'8 re |
    <sol, la mib' fad>4 re'8 re <sol, la mib' fad>4 re'8 re re re |
    <sol, la mib' fad> re're re re <sol, la mib' fad> re're re re |
    <re do'>4 r1 | R1*5/4*3
    R1*5/4*5 \clef bass | 
    <fad,, fa'!>8 re' <fad, fa'> re' <fad, fa'> re' fa solb <fad, fa'> re' |
    <fad, fa'>    re' <fad, fa'> re' <fad, fa'> re' fa solb <fad, fa'> re' |
    <fad, fa'>    re' <fad, fa'> re' fa dod' <fa, mi'> dod' <re, mi'> dod' |
    <fa,  mi'>   dod' mi fa <re, mi'>   dod' <fa, mi'> dod' <re, mi'> dod' |
    <fa,  mi'>   dod' mi fa <re, mi'>   dod' <fa, mi'> dod' <re, mi'> dod' |
    \clef treble
    <fad, do'! fa!>4 \stemUp mi'8 mi mi mi \stemNeutral 
    <fad, do'! fa!>4 \stemUp mi'8 mi \stemNeutral |
    <fad, do'! fa!>4 \stemUp mi'8 mi \stemNeutral 
    <fad, do'! fa!>4 \stemUp mi'8 mi mi mi \stemNeutral |
    <fad, do'! fa!> mi' \stemUp  mi mi \stemNeutral mi <fa solb> sol la do re |
    <mi,! mib'>4 r1 | R1*5/4 \clef bass |
    <re, fad dod'>4 r1 |  R1*5/4 \clef treble |
    
    \repeat unfold 50 {sol'8 mi} |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi \pl {sol mi sol mi} <lab sib>2 |
    \repeat unfold 5 {<sol sib reb>8 mi} |
    \pl {r  sol mi sol mi sol r sol mi sol}
    {<sol sib mib>2. <fab lab reb>2} |
    \pl {r8 sol mi sol r sol mi sol mi sol}
    {<sol sib mib>2  <fab lab reb>2.}|
    mi8 sol 
    \pl {r  sol mi sol mi sol r sol mi sol mi sol r sol mi sol mi sol}
    {<sol sib mib>2. <fab lab reb>4~ <lab reb>2 <sol sib mib>2.} |
    \pl {r4 sol8 mi sol mi sol mi sol mi}
    <sib' mib lab>1*5/4\laissezVibrer |
    sol8 mi sol mi' sol mi sol, mi sol, mi' |
    sol  mi sol mi' mi, sol mi' sol, mi' sol  |
    \pl{r4 sol,8 mi sol mi} <reb' fa! sib>2. <sib mib lab>2 |
    <reb fa sib> <sib mib lab> <reb fa sib>4 |
    \pl{r4 sol,8 mi sol mib reb mib sol lab}
    <mib' lab dob>1*5/4\laissezVibrer |
    \pl{r8 sol, mi' sol r sol mi sol, r4}
    {<mib' lab dob>2 <reb fa sib>2.}  |
    <mib lab dob>2. <reb fa sib>4 <mib lab dob> |
    \pl{r4 sol,8 mi sol mi sol mi sol mi}
    <fa' sib re!>1*5/4\laissezVibrer  |
    sol,8 mi sol mi sol mi sol mi sol lab |
    sol   mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol lab sol mib reb mib |
    sol   mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi  sol mib reb mib |
    sol   mi sol mi sol mi sol mi sol lab |
    
    \repeat unfold 49 {sol8 mi}  |
    \pl <la, re'>2.\laissezVibrer
    \repeat unfold 3  {sol'8 mi} |
    \repeat unfold 9  {sol   mi} |
    \pl <si do'>1*3/4 {\t {sol'8 mi sol} \t { mi sol mi} sol4} |
    sol8 mi
    \pl <do si'>1*2/4 {sol'4 r } |
    \t {sol8 mi sol} \t { mi sol mi}
    \pl <si do'>4\laissezVibrer sol' |
    sol8 mi sol lab sol4 |
    \pl <do,si'>1*3/4\laissezVibrer {\t {sol'8 mi sol} \t { mi sol mi} sol4}|
    sol8 mi sol mi sol lab |
    \pl <si,do'>1*3/4 {\t {sol'8 mi sol} \t { mi sol mi} sol4} |
    sol8 mi
    \pl {s <sib dod'>4.~<sib dod'>1*3/4} {sol'8 mi sol4 sol8 lab sol mib reb mib}|
    \pl {<re re'>1*7/4 \arpeggio ~
    <re re'>1*7/4 ~ <re re'>1*7/4}
    {\repeat unfold 12 {sol8 la} sol mi re mi sol la sol mi re mi 
    \repeat unfold 4 {sol mi} } |
    \t {sol mi sol} \t { mi sol mi} sol4 sol8 la sol mi re mi |
    \t {sol mi sol} \t { mi sol mi} sol4 sol8 la sol mi re la'|
    \t {sol mi sol} \t { mi sol mi} sol4 sol8 mi sol mi sol mi|
    \t {sol la sol} \t { mi re  mi} sol4 |
    sol16 la sol mi re mi sol la sol la sol mi re mi
    sol   la sol mi re mi sol la sol la sol mi re mi |
    sol   la sol mi re mi re  mi sol la sol mi re mi
    sol   la sol mi re mi re  mi sol la sol mi re mi |
    sol   la sol mi re mi sol la sol la sol mi re mi
    sol   la sol mi re mi \t{re8 mi sol} \t {la sol mi}|
    \pl { s1*7/4 \repeat volta 2 {<dod mi la>1 <sib re sol>2.
      <dod mi la> <sib re sol>1\laissezVibrer s1*7/4}
    <sib re sol>1*7/4\laissezVibrer s1}
    {\repeat unfold 7 {sol'8 mi}
      \repeat volta 2 { \repeat unfold 21 {sol mi}}
      \repeat unfold 11 {sol mi}} r2 r4 |
    
    \repeat unfold 5 {\tt {sol8 <fad, mi'> r <fad sol'> mi'}}
    \repeat unfold 5 {\tt {sol  <fad, mi'> mi<fad sol'> mi'}}
    \repeat unfold 5 {\tt {<si sol'> <fad mi'> lab' <fad, sol'> mi'}} |
    
    <fad,sol'>4 r mi'8 fad, |
    <mi' sol >4 r <mi fa lab>8 fad, |
    <mi' sol >4 r mi8  fad, |
    <mi' sol >4 r <mi sol>8  fad, |
    <mi' sol >4 r mi8  fad, |
    <mi' sol >4 r <mi fa lab> |
    <mi  sol >8 fad, mi' sol <fa lab> si, |
    <fad' la >4 r | <re la'>8 sol, <sol' sib> re |
    <sold si >4 r <fad si>8 dod |
    <sold'si >4 r <la  do>8 re,  |
    <fa   do'>4 r <la do> |
    <lad  dod>8 red, r4 <si' re> |
    <do   mib>4 r | <fad, mi'>8 si mi |
    
    <lab, re sol>4~ \t {<lab re sol>8 <lab re sol> <lab re sol>} |
    \t {<la red sold> <la red sold> <la red sold>} \t {<sib mi la> <sib mi la> <sib mi la>} |
    <sol do mib sib'>8.\arpeggio <do mib sib'>16 <do mib sib'>8 <do mib sib'>~ |
    <do mib sib'>16 <do mib sib'> <do mib sib'>8 <do mib sib'> |
    <do reb mib sol sib>2.\arpeggio |
    <sol do mib sib'>8.\arpeggio <do mib sib'>16 <do mib sib'>8 <do mib sib'>~ |
    <do mib sib'>16 <do mib sib'> <do mib sib'>8 <do mib sib'> |
    \grace <mi la dod sol'>8\arpeggio ~ <la dod mi fad sol>2. |
    <sol,do mi! sib'>8.\arpeggio <do mi sol la sib>16 <do mi sol la sib>8 <do mi sol la sib>4 |
    <mi mi'>8. <mi mi'>16 <mi mi'>8 <fad lad dod red mi>~ |
    <fad lad dod red mi> <fad lad dod red mi> <fad lad dod red mi> |
    
    <mi mi'> 
    #(set-octavation 1) \t {la'16 fad sold} red8 r r \t { reb16 sib do}
    #(set-octavation 0) sol8 r \t {fa16 re mi} si8 r4 | r8 
    #(set-octavation 1) \t{la''16 mib do} sib8 \t{fa'16 si, sold} fad8 \t{dod'16 sol mi}
    #(set-octavation 0) re8 r r2 | r8
    #(set-octavation 1) \t{si''16 red, lab'} do,8 \t{lab'16 do, red} sol,8 r
    #(set-octavation 0) <fad,,la re><fad la re><la re fa!><la re fa> <sib dod fad><sib dod fad>| r8
    #(set-octavation 1) \t{si'''16 re, mi} lab,8 \t{ red16 sol, lab} do,8 r
    #(set-octavation 0) <fa,,sib re><fa sib re><sib dod fa><sib dod fa><la re fad><la  re  fad>| r8
    #(set-octavation 1) \t{si'''16 red, do} mi,8 \t{si'16 red, do}
    #(set-octavation 0) mi,8 r <fad, sib dod><fad sib dod><la dod fad><la dod fad><sib re fa ><sib re fa> r4
    #(set-octavation 1) \t{mib'32 sol fad} sib8. \t{sol32 si sib} re8. r8
    #(set-octavation 0) <mi,, sold do>
    #(set-octavation 1) \t{sol'32 si sib} re8. \t{si32 mib re} fad8. \t{mib32 sol fad} sib8.\laissezVibrer
    #(set-octavation 0) <la,, dod fa>8 <do mi sold><dod fa la><mi sold do!> |
    <fa la dod fa>2.\arpeggio
    
    R2. R2 R4. R2 R1*5/8 R2.
    fad,16 sol fad mib re mib sol la sol mib re mi sol la re mi |
    <fad, dod' fa! la>4\arpeggio 
    \gauche \stemUp la,la\droite \stemNeutral <fad' fa'! la>
    \gauche \stemUp la,  \droite \stemNeutral <fad' fa'! la>
    \gauche \stemUp la,  \droite \stemNeutral <fad' fa'! la>
    \gauche \stemUp la,la\droite \stemNeutral <fad' fa'! la>
    \gauche \stemUp la,  \droite \stemNeutral r8 
    
  }
}

ActeDeuxSceneUnBisMainGauche = {
  \relative { \clef bass
    r8 <mi,sold> r <mi sold> r <mi sold> r4 |
    r8 <mi sol!> r <mi  sol> r4 | R2 R1*5/4*2 \clef treble |
    <red' sold>1*5/4\laissezVibrer R1*5/4*2 |
    \times 5/6 {<mi, la red>2 <la red sold> <red sold re'!>} |
    <sold re' sol!>1\laissezVibrer \clef bass #(set-octavation -1) <si,,, mi>4 |
    <sol do mib lab> r r2 <si mi>4 | <sol do mib la> r <do sol'> <sold red' mi si'> r|
    r2 <si mi>4 <sol do mib lab> <do sol'> | <sold red'mi si'> r #(set-octavation 0)
    <la' sib> r <fa la sib re> | <dod la' sib fad'>\arpeggio r <sib' dod re fa>
    <fa dod' re la'>\arpeggio r | <re la' sib> r1 | R1*5/4*2
    <sib  re'>1*5/4\laissezVibrer R1*5/4*2 | <dod dod'>2 <re re'> <mi mi'>4 |
    <sol sol'>1*5/4\laissezVibrer R1*5/4 | 
    <re do'>4  \droite \stemDown re''re\stemNeutral \gauche 
    <re,, do'> \droite \stemDown re''  \stemNeutral \gauche
    <re,, do'> \droite \stemDown re''  \stemNeutral \gauche
    <re,, do'> \droite \stemDown re''re\stemNeutral \gauche 
    <re,, do'> \droite \stemDown re''  \stemNeutral \gauche r8
    <re,, do'>r\droite \stemDown re''  \stemNeutral \gauche r4
    <sold,, si fa' sol!> r1 R1*5/4*3
    #(set-octavation -1)
    sol,8 mi sol mi sol mi sol mi sol mi |
    sol   mi sol mi sol mi sol mi sol lab|
    \pl { sol mi sol mi sol mi sol mi sol lab
    sol mi sol mi sol mi sol mi sol lab sol mi sol mi sol mi sol mi sol lab}
    {r2 r8 red fad red fad red fad sol fad red fad red fad red fad red 
    fad sol fad red fad red fad red fad red } |
    sol, <mi red'> sol <mi red'> sol <mi red'> sol <mi red'> sol lab |
    sol  <mi red'> sol <mi red'> sol <mi red'> sol <mi red'> sol lab |
    sol  <mi red'> sol <mi red'> sol <mi red'> sol mi sol lab |
    <sol fad'> mi <sol red'> mi <sol fad'> mi <sol red'> mi sol lab |
    <sol fad'> mi <sol red'> mi <sol fad'> mi <sol red'> mi sol lab |
    #(set-octavation 0)
    <re sol dod>4 \droite \stemDown mi''mi\stemNeutral \gauche
    <re,,sol dod> \droite \stemDown mi''  \stemNeutral \gauche
    <re,,sol dod> \droite \stemDown mi''  \stemNeutral \gauche
    <re,,sol dod> \droite \stemDown mi''mi\stemNeutral \gauche
    <re,,sol dod> \droite \stemDown mi''  \stemNeutral \gauche r8
    <sol,,dod fad> do'! sol la mi |
    <do, fad si fa'!>4\arpeggio r1 R1*5/4 |
    <mi, red' fa!>4 r1 R1*5/4
    
    R1*5/4*2
    r1 re'''4| sib1*5/4\laissezVibrer |
    r1 si4   | sol1*5/4\laissezVibrer |
    r1 sold4 | mi la sol do sib | <mib lab>1*5/4\laissezVibrer |
    <mi,! mi'!>1*5/4 |
    <mi' sol>4 <mi sol> <mi sol> <mi sol> <mi sol> |
    <red sold><red sold><red sold> <red sold> <red sold> |
    lad8 <si! re!> lad <si re> lad <si re> lad <si re> lad <si re> |
    <mib, lab dob>2. <fa! sib re!>2 <mib lab dob> <fa sib re>2. |
    mi,!4\laissezVibrer <mib' lab dob>2. <fa sib re>4~<fa sib re>2 <mib lab dob>2.|
    << <sib mib lab>1*5/4\laissezVibrer \\ {r4 mi,!1\laissezVibrer} >>
    \clef treble |
    <sib'' mib lab>1*5/4 <sib mib lab>1*5/4 \clef bass |
    <lab, reb fa>2. \clef treble \pl <sib' mib>2 {sol'8 mi sol mi} |
    \pl {<lab, reb>2\clef bass <sib, mib> <lab reb>4}
    {sol''8 mi sol mi sol, mi sol mi fa mi} | <sol, sib mib>1*5/4\laissezVibrer |
    <sol' sib mib>2 <lab reb fa> \clef treble mi'8 sol |
    \pl <sol, sib mib>2. {r8 sol' mi sol mi sol} \clef bass 
    <lab,, reb fa>4 <sol sib mib> |
    \pl <mi, mi'>1*5/4\laissezVibrer {r4 \t {mi'8 sold dod} \t {mi sold dod}
    \clef treble sold'2} | <dod, sold'>1*5/4\laissezVibrer | 
    r1 <red sold>4\laissezVibrer R1*5/4 | <dod sold'>1*5/4\laissezVibrer |
    r4 <dod sold'>1\laissezVibrer | r2 <dod lad'>2.\laissezVibrer |
    
    <do si'>1*7/4\laissezVibrer s1*7/4
    <do si'>1 <si do'>2.\laissezVibrer
    <do si'>  <si do'>1~<si do'>1*7/4\laissezVibrer
    <do si'>2 <si do'>2. <do si'>2
    <si do'>2.<sib dod'>1 \clef bass fa,8 do' dod sold' la mi' | R1
    si,8 fad' sol re' \clef treble red lad' | R2 \clef bass |
    mi,,8 si' do sol' sold4 | red8 sold si mi sol4 |
    mi,,8 si' do sol' sold red' | sol,, do red sold si4 |
    mi,,8 si' do sol' sold4 | fad,8 la do sol' sib4|
    sol,8 red' mi sol si do | la, red sold si mi4  |
    do,8 mi sol la sib4 |
    <fa,mib' la>1*7/4\arpeggio \laissezVibrer |
    <fa mib' la>1 <sol fa' si>2. |
    <fa mib' la>  <sol fa' si>1  |
    sib8 fa' fad dod' re4 | fad,,8 dod' re la' sib4 |
    sib,8 fa' fad dod' re4 | dod,8  fad  la re  fa4  |
    sib,,8 fa' fad dod' re4 | do,8   mib  lab si mi4 |
    re,8  fa  fad sib  dod4 |
    <sol, re' fa>1*7/4\arpeggio \laissezVibrer | R1*7/4
    <sold re' fa>1*7/4\arpeggio \laissezVibrer | R1*7/4
    \repeat volta 2 {
    <la re fa>1 <si mi sold>2. <la re fa> <si mi sold>1\laissezVibrer R1*7/4}
    <si mi sold>1*7/4 R1*7/4 |
    
    \tt {r4 <fa mib'>8 re mib'}
    \tt {fa, re <fa mib'> re mib'}
    \tt {fa, re <fa mib'> re mib'} |
    \tt {fa, re <fa mib'> re mib'}
    \tt {fa, re <fa mib'> re mib'}
    \tt {fa, re <fa mib'> re <solb mib'>}|
    \tt {fa  re <fa mib'> re <solb mib'>}
    \tt {fa  re <fa mib'> re <solb mib'>}
    \tt {fa  re <fa mib'> re <solb mib'>}|
    \tt {fa  re <fa mib'> re <solb mib'>}
    \tt {<fa sib> re <fa mib'> re <solb mib'>}
    \tt {<fa sib> re <fa mib'> re <solb mib'>}|
    \tt {<fa sib> re <fa mib'> re <solb mib'>}
    \tt {<fa sib> re <fa mib'> re <solb mib'>}
    \tt {<fa sib> re <fa mib'> re <solb mib'>}|
    
    re8  fa mib' \droite \stemDown fad \gauche \stemNeutral r4 |
    re,8 fa mib' \droite \stemDown fad \gauche \stemNeutral r4 |
    re,8 fa mib' \droite \stemDown fad \gauche \stemNeutral <re, fa>4 |
    re8  fa mib' \droite \stemDown fad \gauche \stemNeutral r4 |
    re,8 fa mib' \droite \stemDown fad \gauche \stemNeutral r4 |
    re,8 fa mib' \droite \stemDown fad \gauche \stemNeutral
    re,8 fa mib'4 <fa, sib>8 mib' fad4 |
    mi,8 si'fad' \droite \stemDown sol \gauche \stemNeutral fad  si,mi,4|
    fad8 mi'sold \droite \stemDown la  \gauche \stemNeutral r4 |
    fad,8 si mi la dod4
    sold,8 re'fad\droite \stemDown si  \gauche \stemNeutral
    sold, red' si'4 fad,8 dod' <la sold'>4 |
    \pl fa2\laissezVibrer {sib8 mib lab reb } R4.
    \pl mi,,2\laissezVibrer {r4 <mi' la red>\laissezVibrer } R2 
    
    \pl {<mib,, mib'>2\laissezVibrer s4.} {r4 <mi'! la dod fad>\arpeggio ~
    <mi la dod fad>8. <la dod fad>16 <la dod fad>8}
    \pl  <fad, fad'>2.\laissezVibrer {r8 r16 <dod'' la' mi'> <la' mi'>8 <la mi'>4.}|
    \pl {<mib,, mib'>2\laissezVibrer s4.} {r4 <mi'! la dod fad>\arpeggio ~
    <mi la dod fad>8. <la dod fad>16 <la dod fad>8}
    \pl  <do,   do'>2.\laissezVibrer {r8 r16 <sib' sol' mib'> <sol'mib'>8 <sol mib'>4.}|
    \pl  <mib,, mib'>2\laissezVibrer {r8 <fad' dod' lad'>\arpeggio ~ <dod' lad'>16[
    <dod lad'> <dod lad'>8]} \stemUp <dod lad'>8 \stemNeutral |
    \pl {<la,, la'>2\laissezVibrer s4.} {#(set-octavation -1) r4 #(set-octavation 0)
    <sib'' mib sol do>\arpeggio ~ <sib mib sol do>8. <mi! do' sol'>}|
    
    <la,,la'>8 do' sib mib fa sold, | fad si dod mi re, sol |
    <la, la'> fad' sold red dod sib'| do sol fa  re mi' si  |
    \pl <la, la'>4\laissezVibrer {r8 <fa'' sib dod>} <fa sib dod><fa sib dod><fa sib dod><fa sib dod>|
    R2.
    \pl la,4\laissezVibrer {r8 <fad' la dod>} <fad la dod><fad la dod><fad la dod><fad la dod>|
    R2.
    \pl la,4\laissezVibrer {r8 <fa' la re>} <fa la re><fa la re><fa la re><fa la re>|
    R2.
    \pl la,4\laissezVibrer {r8 \clef treble <do' mi sold>} <do mi sold><do mi sold><dod fa la><dod fa la>\clef bass|
    \pl la,4\laissezVibrer r4  \clef treble <mi''sold do>8 <mi sold do> <fa la dod><fa la dod>|
    <sold do mi><sold do mi> r2\clef bass |
    \pl <la,,, la'>2.\laissezVibrer <mib''la do fad>\arpeggio \laissezVibrer |
    
    R2. R2 R4. R2 R1*5/8 R2.
    mib,8 sib' si fa' fad si do r |
    <la,, la'>4\stemDown la''8 la la la \stemNeutral
    <lab, mib' sib'>4 \stemDown la'8 la \stemNeutral |
    <lab, mib' sib'>4 \stemDown la'8 la \stemNeutral
    <lab, mib' sib'>4 \stemDown la'8 la la la \stemNeutral |
    <lab, mib' sib'> la' \stemDown la la \stemNeutral
    la <lab, mib'> la' la la la |
  }
}

ActeDeuxSceneDeuxMainDroite = {
  \relative {
    \repeat unfold 2 {sold'4 sold <fa la> r r2} | R1. |
    sold4 sold <fa la> r sold sold | << \voiceTwo la1. \\ 
    \voiceOne {la4 sol fa mi fa8 mi fa sol} >> la4 mi r1 |
    <fa la>4 <dod mi> r2 | R1 | la'4 sol fa |
    << { mi fa8 mi fa sol}\\ 
    {r16 <sol, lab dod> <sol lab dod>8~ <sol lab dod> r16 <sol lab dod>~ <sol lab dod>8 r} >>
    << {la'4 mi} \\ 
    {la16 <sib, red mi> <sib red mi> <sib red mi> red8 <sib red mi>16 <sib red mi>}>>
    r16 <sib red mi> <sib red mi> <sib red mi> |
    sold' <la, re> sold' <la, re> la' <sib, red mi> <sib red mi> <sib red mi>
    <sib red mi>8 <sib red mi>16 <sib red mi>|
    sold' <la, re> sold' <la, re>\t { la'8 <sib, mib> <si mib>}
    \tt { \gauche si,16 fad' la \droite do mi!~} 
    << \voiceTwo <do mi>1.\arpeggio \\ \voiceOne {la'4 sol fa mi fa8 mi fa sol}>>
    la4 sol fa mi fa8 mi fa sol | <fa la>4 <dod mi> r1 |
    <dod fa la>4 <fa, la mi'> r2 | R1 | la'4 sol fa |
    \pl {mi16 <sol, lab dod> <sol lab dod>8 s mi'16 <sol, lab dod> s8
    sol'16 <si, red mi>} {mi4 fa8 mi fa sol} <do, reb mi fa la>4 |
    <sold la do reb mi> r8 |
    
    r16 <la re mi> sold' <la, re mi> sold' <la, re mi> la' <re, mi>
    <la re mi> <la re mi> <la re mi> <la re mi> sold' <si, re mi> sold' <si, re mi>|
    la' <si, re mi> sold' <si, re mi> sold' <si, re mi> la' <si, re mi>
    <si re mi> <si re mi> <la re mi> <la re mi> sold' <la, re mi> sold' <la, re mi>|
    la' <si, dod> sold' <si, dod> sold' <si, dod> red' <si, dod mid>
    <si dod mid> <si dod mid> <si dod mid> <si dod mid> si' <dod, mid> si' <dod, mid>|
    red' <dod, sold'> si' <dod, sold'> si' <dod, sold'> red' <mid, sold>
    <mid sold> <mid sold> <mid sold> <mid sold> red' <mid, sold> red' <mid, sold>|
    lad' <sold, red'> <red' mid> <red mid> <sold, red' lad'> <sold red' lad'>
    <red' si'> <sold, red'> <sold red' lad'> <sold red' lad'> <red' si'> <si red mid>
    <si red mid> <si red mid> <sold red' lad'> <sold red' lad'>|
    <mib' sib' fa'> <mib sib' fa'> <mib sib' fa'> <mib sib' fa'>
    <fa sib mib> <fa sib mib> <mib sib' fa'> <mib sib' fa'>
    <fa sib mib> <fa sib mib> <mib sib' fa'> <mib sib' fa'>
    <fa sib mib> <fa sib mib> <mib sib' fa'> <mib sib' fa'>| R2.
    
    la,4 sol fa mi fa8 mi fa sol | la4 mi2. | la4. mi8~ mi2 |
    la4  sol fa mi fa8 mi fa sol | la4 mi r8  la~| la mi r4 |
    la   sol fa mi fa8 mi fa sol | la4 mi r8 <la sib re la'>~
    <la sib re la'> <mi mi'> r4 | R4. |
    
    r16 <la, re mi> sold' <la, re mi> sold' <la, re mi> la' <re, mi> 
    <la re mi> <la re mi> <la re mi> <la re mi> sold' <si, re mi> sold' <si, re mi>|
    la' <si, re mi> sold' <si, re mi> sold' <si, re mi> la' <si, re mi>
    <si re mi> <si re mi> <la re mi> <la re mi> sold' <la, re mi> sold' <la, re mi>|
    la' <do, mi fa> lab' <do, mi fa> lab' <do, mi fa> sib' <do, mi fa>
    <do mi fa> <do mi fa> <do mi fa> <do mi fa> sold' <do, mi fa> sold' <do, mi fa>|
    la' <do, mi fa> red' <mi, fa la> red' <mi, fa la> mi' <do, mi fa>
    <do mi fa> <do mi fa> <do mi fa> <do mi fa> lad' <do, mi fa> lad' <do, mi fa>|
    si' <do, fa> mi' <re, la'> mi' <mi, fa si> fa' <re, mi la>
    <re mi la> <re mi la> <re mi la> <re mi la> sold' <la, re> la' <la, mi fa>|
    lad' <sold, red'> <lad mi'> <lad mi'> <sold red'> <sold red'> <lad mi'> <lad mi'>
    <sold red'> <sold red'> <lad mi'> <lad mi'> <red sold> <red sold> <mi la!> lad,|
    <red  lad'> <sold, red'> <lad mi'> mi <sold red'> <sold red'> <lad mi'> mi
    <sold red'> <sold red'> <lad mi'> <lad mi'> <red sold> <red sold> <mi la!> lad,|
    <red  lad'> <sold, red'> <lad mi'> <lad mi'> <sold red'> <sold red'> <lad mi'> <lad mi'>
    <red sold> <red sold> <mi lad> lad, <red sold> <red sold> <mi lad> lad,|
    <si red sold si> <si red sold si> <si red sold si> <si red sold si>
    <si red sold si> <si red sold si> <do! red sold si> <do red sold si>
    <si red sold si> <si red sold si> <do red sold si> <do red sold si>
    <si red sold si> <si red sold si> <do red sold si> <do red sold si>|
    <si si'> <si si'> <do si'> <do si'> <si si'> <si si'> <do si'> <do si'>
    <si si'> <si si'> <si si'> <si si'>|
    
    \pl dod,1 {la'4 sol fa mi} fa8 mi fa sol | la4 mi r2 |
    la4 sol fa mi fa8 mi fa sol
    \pl <sib, re>1.\arpeggio {la'4 sol fa mi fa8 mi fa sol}
    \pl <si, dod>2 {la'4 mi} r | <dod fa la> <do mi> r2 |
  }
}

ActeDeuxSceneDeuxMainGauche = {
  \relative { \clef bass
    R1.*6 R1*2 |
    re2.\laissezVibrer
    <re,, re'>8. <fa fa'>16~<fa fa'> <re re'>8 <fa fa'>16~<fa fa'> <fad fad'>8.|
    \t {<re re'>8 mib fa} re16[ mib fa lab]
    \tt {re,16 mib fa lab sib} |
    \ttt {re,[ mib fa lab sib si] }
    \ttt {mib,[ fa lab sib si dod] }
    \ttt {fa,[ lab sib si dod mi!] }|
    \ttt {lab,[ sib si dod mi fad] }
    \ttt {sib,[ si dod mi fad la] } s4

    <re,, la' fad'>1. \arpeggio ~<re la' fad'>\laissezVibrer | R1. R1*2 |
    si''2.\laissezVibrer |
    <si,, si'>8. <re re'>16~<re re'> <si si'>8 <re re'>16~<re re'> <red red'>8. 
    r16 <si si'> <re re'> <red red'> |
    r <mi mi'> <dod dod'> <re re'> <do do'> <mib mib'> |
    <si si'>4 r8 r16 <dod' fad> <dod fad> <re fad> <sold, dod fad> <sold dod fad>
    <sold dod fad> <sold dod fad> <sold dod fad> <sold dod fad> |
    <si, si'>8 <dod' fad>16 <dod fad> <re fad>8 <sold,, sold'> dod'16 fad
    <sol,, sol'>8 re''16 sol, re' la' |
    <si,, si'>8 <si' mid>16 <si mid> <si fad'>8 <si, si'> <si' fad'> <si, si'>
    <si' mid>16 <si mid> <si fad'>8 | <si, si'> <si' mid>16 <si mid> <si fad'>8
    <si, si'> <fad'' dod'> <si,, si'> <fad'' si>16 <fad si> <fad dod'>8 |
    <si,, si'> <fad'' dod'> <fad dod'> <si,, si'> <fad'' dod'> <si,, si'>
    <fad'' dod' sold'> <fad dod'> |
    <si,, si'>4. <si si'>4 <si si'>8 <la la'> <do! do'!> |
    <sold sold'>2.~ | <sold sold'>1 r2 | <la'' do>1 | <do, la'>1 |
    
    fa,16 do' fa la do2 | fa,,16 do' sol' sib do4 do, |
    fa,16 do' fa la do2 | fa,,16 do' fa  sold si4 |
    fa,16 re'sold si re4 red,,16 do' la'8 |
    mi,16 do' mi la do4 <lab dod> | mi16 sol sib re do4 r |
    do,,16 sol' mi' sib' do4 |
    \pl {r16 la, fad sol fa lab} <la la'>4. |
    
    <mi mi'>4 r8 r16 <la re> <re sol> <la re> sol8 re'16 sol, re' la' |
    mi,8 <si' mi>16 <si mi> <re la'>8 sol, <si la'>16 <re mi> sold,8
    <si re>16 <si re> <re mi>8 | mi, <la re>16 <la re> <mi' sol!>8 mi,
    <re' sol> mi, <re' sol>16 <re sol> <re la'>8 | mi, <sol' sib>16 <sol sib>
    <mi do'>8 mi, <re' la'> mi, <sol' sib>16 <sol sib> <sol do>8 | mi,
    <fa' la>16 <fa la> <fa si>8 mi, <fa' do'> r16 la, fad sol fa lab |
    mi8 si' <fad' dod'> dod, | mi <si' fad'> dod, do | mi <fad' si>16 <fad si>
    <mi dod'>8 mi, | mi16 sib' la do dod sol fa lab | mi4 r8 mi |\t {mi4 re fa} |
    
    dod16 la' red si' mi8 \clef treble <dod sold'> <dod sold'> <dod la'> r4 |
    <dod sold>8 <dod sold'> <dod la'>4 <dod sold'>8 <dod sold'> \clef bass
    dod,,1~ dod4 dod | <sol sol'>2. r4 | dod1~ dod4 dod |
    <sol sol' re' la'>1. \arpeggio ~ <sol sol' re' fa>2 r4 |
    <sol'' si> <re fad lad> r2 |
    
    
  }
}

ActeDeuxSceneTroisMainDroite = {
  \relative {
    \repeat unfold 8 { sold'16 sold la dod, sold' sold | la dod, sold' sold la dod, | }
    \pl {\repeat unfold 6 {mi8 do si la sold la si} } {
    \repeat unfold 21 {sold'16 sold la do,} } |
    <la sold'> sold' <sold, la'> <sold la> <sold la> <sold la> |
    <sold la> <sold la> <la sold'> <sold la> <la sold'> <sold la> |
    <sold la'> <sold la> <sold la> <sold la> <sold la> <sold la> |
    <sold la'> la' <sol, sib'> <sol lab> <la sold'> sol' |
    <sold,la'> <sold la> <sold la> <sold la> <sold la> <sold la> |
    <mi' lad> lad si mi, sold sold <mi la> la, lad' lad si mi, |
    <la,sold'> sold' <sold, la'> <sold la> <sold la> <sold la> |
    <sold la> <sold la> <la sold'> <sold la> <la sold'> <sold la> |
    <sold la'> <sold la> <sold la> <sold la> <sold la> <sold la> |
    <re' la'> la' sib mi, <sib fad'> fad' sol re la' la sib mib, |
    <la,sold'> sold' <sold, la'> <sold la> <sold la> <sold la> |
    <sold la> <sold la> <la sold'> <sold la> <la sold'> <sold la> |
    <sold la'> <sold la> <sold la> <sold la> <sold la> <sold la> |
    <la sold'> sold' <sold, la'> <sold la> <sold la> <sold la> |
    <red' sid'> sid' dod sold <dod, lad'> lad' si re, sid' sid dod dod, |
    si' <red, si'> do' do, <si sold'> <la sold'> |
    <sold la'> <sold la> <sold la> <sold la> <sold la> <sold la> |
    <la sold'> sold' <sold, la'> <sold la> <sold la> <sold la> 
    
    \clef bass
    <re sib' re> <re sib' re> <sib' re> <sib re> |
    <re,sib' re> <re sib' re> <sib' re> <sib re> |
    <re,sib' re> <sib' re> \clef treble <sib re sold> <sib re sold> |
    <sib re la'> <sib re> <sib re fad> <sib re fad> |
    <sib re sol> <sib re> <sib re> <sib re> \clef bass |
    <re,sib' re> <re sib' re> <sib' re> <sib re> |
    <re,sib' re> <re sib' re> <sib' re> <sib re> |
    <mi, do' mi> <mi do'  mi> \clef treble <do'  mi sold> <do  mi sold> |
    <do mi   la> <do mi>  <do fad>  <do fad> |
    <do mi sib'> <do mi>  \clef bass <mi, do' mi> <do' mi> |
    <mi, do' mi> <do' mi> \clef treble <do mi sold> <do mi sold> |
    <do mi   la> <do mi>  <do mi> <do mi> \clef bass |
    <mi, do' mi> <do' mi> <mi, do' mi> <do' mi> |
    <mi, do' mi> <do' mi> <mi, do' mi> <do' mi> \clef treble |
    <si dod sold'> <si dod sold'> <si dod la'>  <si dod> \clef bass |
    <mid,dod' mid> <mid dod' mid> <mid dod'mid> <mid dod' mid> \clef treble |
    <si'dod sold'> <si dod> <si dod sold'>  <si dod> |
    <si dod la'>  <dod mid> \clef bass <mid, dod' mid> <mid dod' mid>|
    <mid dod' mid> <mid dod' mid> <mid dod'mid> <mid dod' mid> |
    <mid dod' mid> <dod' mid> \clef treble <dod mid sold> <dod mid sold> |
    <dod mid la> <dod mid> <dod fad> <dod fad> |
    <sol mi' sol> <sol mi' sol> <sol mi' sol> <sol mi' sol> |
    <sol mi' sol> <sol mi' sol> <sol mi' sol> <sol mi' sol> |
    <sol mi' sol> <sol mi' sol> <sol mi' sol> <sol mi' sol> |
    R4
    <lab re sol>16<lab re sol> <lab re sol> <lab re sol> |
    <lab re sol>  <lab re sol> <lab re sol> <lab re sol> |
    <lab re sol>  <lab re sol> <lab re sol> <lab re sol> r8 |
    <lab dod sol'>16<lab dod sol'> <lab dod sol'> <lab dod sol'> |
    <lab dod sol'>  <lab dod sol'> <lab dod sol'> <lab dod sol'> |
    <lab dod sol'>  <lab dod sol'> <lab dod sol'> <lab dod sol'> |
    R4
    <fa do'!sol'>16<do' sol'> <fa, do' sol'> <do' sol'> |
    <fa,do' sol'>  <fa do' sol'> <fa do' sol'> <fa do' sol'> |
    <fa do' sol'>  <fa do' sol'> <fa do' sol'> <fa do' sol'> |
    
    <la mi' sold> <la mi' sold> <sold mi' la> <sold mi'> <sold mi'> <sold mi'> |
    <sold mi'> <sold mi'> <la mi' sold> <la mi'> <la mi' sold> <la mi'> |
    <sold mi' la> <sold mi'> <sold mi'> <sold mi'> <sold mi'> <sold mi'>|
    <sold mi'> <sold mi'> <la mi' sold> <la mi'> <la mi' sold> <la mi'> |
    <sold mi' la> <sold mi'> <sold mi'> <sold mi'> <sold mi'> <sold mi'>|
    <la mi' sold> <la mi' sold> <sold mi' la> <sold mi'> <sold mi'> <sold mi'> |
    <sib mi> <sib mi> <la mi' sold> <la mi' sold> <sold mi' la> <sold mi'> |
    \pl {<la fa'> <sib fa'> <sib fa'> <sib fa'> <sib fa'> <sib fa'>} {sib'4 r8}
    <sib,mib>16 <sib mib> <sib mib sold> <sib mib sold> <sib mib la> <sib mib> |
    \pl {<la fa'> <sib fa'> <sib fa'> <sib fa'> <sib fa'> <sib fa'>} {sib'4 r8}
    <sib,mib>16 <sib mib> <sib mib lad> <sib mib lad> <sib mib si'!> <sib mib> |
    <re do'> <la re sol> <la re sol> <la re sol> <la re sol> <la re sol> |
    <sib mib> <sib mib> <sib mib la> <sib mib> <sib mib la> <sib mib> |
    <do fa sib> <do fa> <sol do fa> <do fa> <re sold dod> <re sold dod> |
    
    <do sol' re'> <do sol' re'> <do la' re> <do la' re> |
    <do sol' re'> <do sol' re'> <do la' re> <do la' re> |
    <do sol' re'> <do sol' re'> <do la' re> <do la' re> |
    <do sol' re'> <do sol' re'> <do la' re> <do la' re> |
    <do sol' re'> <do sol' re'> <do la'   > <do la'   > |
    <re sib'> <re sib'> <fa lad si> <fa lad si> |
    <mi sib' do> <mi sib' do> <mib sib' dod> <mib sib' dod> |
    <re sib' re> <re sib' re> <re sib' re> <re sib' re> |
    <re sib' re> <re sib' re> <re sib' re> <re sib' re> |
    <mi do' mi>8 r R4 | r8 <re sib' re>16 <re sib' re> <mi do' mi>8 r R4 | 
    <dod sib' dod>16 <dod sib' dod> <re sib' re> <re sib' re> |
    <mi do'! mi> mi <mi sold> <mi sold> <mi la> do <dod mi> <dod mi>|
    <do fa> do <mi sold> <mi sold> | <mi la> <sold dod> <red la' red> <red la' red>|
    <re la' mi'> <re la' mi'> <re si' mi> <re si' mi> |
    <re la' mi'> <re la' mi'> <re si' mi> <re si' mi> |
    <re la' mi'> <re mi> <re mi> <re mi> |
    <re mi sold> <re mi> <re mi sold> <re mi> |
    <re mi la> <re mi> <dod red> <dod red> |
    <dod red fad> <dod red> <dod red fad> <dod red> |
    <dod red sol> <dod red> <dod red> <dod red> |
    <dod red> <do re sol> <do re sol> <do re sol> |
    <do re sol> <do re sol> <do re sol> <do re sol> |
    
    
  }
}

ActeDeuxSceneTroisMainGauche = {
  \relative { \clef bass
    R4.*9
    <re,, la' mi'>4.~ <re la' mi'>~ <re la' mi'>4 r8 |
    R4.
    <fad dod' sold'>4.~ <fad dod' sold'>~ <fad dod' sold'>8 r4 |
    <fa do' la'>4.\arpeggio \laissezVibrer s4.*6
    <la mi' si'>4.\arpeggio \laissezVibrer s4.*3
    <fa do' la'>4.\arpeggio \laissezVibrer s4.
    <la mi'>4.
    
    dod,16 <sold' la> <mi' fa>8 r | re, <si' fad' sol> r |
    dod,16 <sold' la> <mi' fa>8 r | re, <lad' si fad'> r |
    fad16 dod' sold'8 r |
    sol32~ do,~ fa,~ re'~ <fa, do' re sol la>4~ <fa do' re sol la>4 r8 |
    dod16  <sold' la> <mi' fa>8 r | re, <reb' mib> r |
    dod,16 <fad sold> dod'8 r |
    re32  sol, do,~ sol'~ <do, sol' re'>4~ | <do sol' re'>4 r8 |
    dod16  <sold' la> <mi' fa>8 r | sol,, <lad' si fad'> r |
    dod,16 <sold' la> <mi' fa>8 r | sol, <fa re' mib> lab |
    fad'32~ si,~ mi,16~ <mi si' fad'>4~ <mi si' fad'> r8 | mi re fa
    dod16  <sold' la> <mi' fa>8 r | r r16 dod, \t {dod dod dod} |
    
    \repeat unfold 7 {<re sib'>8 <sib' re>}
    \repeat unfold 4 {<dod, sold'> sold'}
    dod,16 <sold' la> <mi' fa>8  |
    r sold, <dod,sold'> sold'
    si,16 sold' <red' mi>8 r si,16 sold' <red' mi>8 r |
    \repeat unfold 4 {<si,sold'>8 sold'}
    \repeat unfold 3 {<sib, fa'>  fa'  }
    R4
    \repeat unfold 3 {<sib mi la>8 <sib la'>} r8 |
    \repeat unfold 3 {<sib mib la> <sib la'>} R4 |
    \repeat unfold 4 sib8 r sib
    
    sold16 <red' mi> sol!8 r | re, <fad mib'> r |
    sold16 <red' mi> sol!8 r | re, <sib' mib> r |
    sold16 <red' mi> sol!8 r | r sold,16 sold la8 sol4 sib8 |
    fad16  si <mi la>8 r | \pl {do,4 fa8} {r <si mi>4} |
    fad16  si <mi la>8 r | \pl {do,4 fa8} {r <si mi>4} |
    fad8   <si mi> fad
    fa16   si mi8 r16 fad, | <mi re'>4 sol8 |
    mib32~ sib'~ fa'16~ <mib, sib' fa'>8~ | 
    <mib sib' fa'>4~ <mib sib' fa'>~ <mib sib' fa'>~ <mib sib' fa'>8 r |
    <mib sib'>4 sib' |
    <re, sib'>8 <re sib'> <re sib'> <re sib'> <dod sold'> r R4 |
    <sib' re>16 <sib re> <re,sib'> <re sib'> <dod sold'>8 r R4 |
    <mib sib'>8 <re sib'>16 <re sib'>
    <dod sold'>8 sold' <dod, sold'> sold' <dod, sold'> sold' <dod, sold'> sold'|
    do,32[ ~ sol'~ <do, sol' re'>16 sol'8] |
    <do, sol'> sol' <do, sol'> sol' <do, sol'> sol' <do, sol'> sol'  |
    <do, sol'> <si sol'> <sol' si> sol <si, sol'> sol' <si, sol'> sol'|
  }
}
