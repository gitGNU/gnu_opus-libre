%-- Sonate pour contrebasse et piano -- piano.ly ------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

\pointAndClickOff

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

PianoMd =
% In case of so-called "solo tuning".
%\transpose do re
\relative do' {
  \mg re,16 lab' \md \clef bass sol re' \mg re sold, \md la? re,
  \mg re lab' \md sol? re' \mg re sold, \md la re,
  \mg re lab' \md sol re' \mg re sold, \md la re,
  \mg re lab' \md sol re' \mg re sold, \md la re,
  \mg re lab' \md sol re' \mg re sold, \md la re,
  \mg re lab' \md sol re' \mg re sold, \md la re,
  \mg re lab' \md sol re' \mg re sold, \md la re,
  \mg reb lab' \md sol re'? \mg mib lab, \md la? re,
  \mg reb lab' \md sol re' \mg mib lab, \md la re,
  \mg reb lab' \md sol re' \mg mib lab, \md la re,
  \mg reb lab' \md sol re' \mg mi sold, \md la re,
  \mg do sold' \md sol? re' \mg mi sold, \md la re,
  \mg do sold' \md sol re' \mg mi sold, \md la re,
  \mg do sold' \md sol re' \mg mi sold, \md la re,
  \mg si \md lab' sol re' fa \mg sold, la? re,
  sib \md \clef treble lab' sol re' fad \mg sold, la re,
  la \md sold' sol' re \mg mi, \md do' sold' la,
  \mg lab, sol'? \md la'? sib, \mg mib, \md sib'' la, re
  \mg sol,, \md si'' la, dod \mg fa, \md do'' \mg mi,, \md red'
  \mg solb,, \md dod'' la, fa' sib, re' mi, \mg mib,
  fa, sol' do, sib' \md red' sold, dod, la'

  % A %
  re, la lab mib' re la' lab mib'
  re sol, sold dod, re \mg sol, sold dod,
  re la' lab \md mib' re la' lab mib'
  re la' lab mib' re sol, sold dod,
  re sol, sold dod, re \mg sol, sold dod,
  re la' lab \md mib' re la' lab mib'
  \ottava #1
  re la' lab mib' re la' lab mib'
  re sol, sold dod, re sol, sold dod,
  \ottava #0
  re sol, sold dod, re \mg sol, sold dod,
  re la' sold re' dod sol lab mib
  \voiceOne
  re la' sold re' dod sol lab mib
  re lab' sol \oneVoice \md dod re lab' sol dod
  mib, la sold re' dod sold' la re,
  mib lab, do sol lab \mg mib \md la' re,
  fa do dod la la' re, fad sib,
  la' mi fa dod la' fad sold red
  <sib sib'>4. <la la'>8~ q2
  r4 <sib sib'>2 <la la'>4~
  q8 <sib sib'> <la la'>2 <sib sib'>4~
  q4 q2 <la la'>4~
  q <sib sib'>8 <la la'>~ q2
  \t {<sib sib'>4 <la la'> <fad fad'>~} q2
  <sol sol'>8 <fad fad'>~ q2 r4
  r <do? sol'>2 q4\laissezVibrer
  \mg \voiceOne
  fad,,16 dod' mi sol
  \md \oneVoice
  do? mi sol la sib la sol mi
  \mg \voiceOne
  do sol reb sol
  \md \oneVoice
  r4 <do sol'>2 q4\laissezVibrer
  \mg \voiceOne
  fad,,16 re' la'
  \md \oneVoice mib' lab do fa sol
  fa re dod la fa re dod la
  fad4 <do' sol'>2 q4~
  q8 <re la'>4 <sib fa'>8 <do sol'>2
  <lab mib'>8 <sib fa'>16 <sol re'> <lab mib'>2 r4
  r8. <re la'>16 <do sol'>4 <fa do'>16 <mib sib'>4..
  <dod sold'>8 <si fad'> <dod sold'> <sold red'>
  <sib fa'> <lab mib'> <sib fa'> <fa do'>
  <sol re'> do re la

  % B %
  sold1~\startTrillSpan
  sold1~
  sold1~
  <fadd sold>~
  q~
  sold
  r4\stopTrillSpan <si' la'>16 si' dod <mi, red'>
  r <fad mi'> <sold fad'>8-. <lad sold'>4
  r2 \ottava #1 <do sib'>4. <sold fad'>8
  r <lad sold'> \ottava #0 r4 r2
  \clef bass
  % Virtually impossible to play in tempo,
  % but that’s the intended effect.
  \lightBeams \graceNotes \tttt 4 {
    sold,,16 la sold sol sold sol fad
    fa sold sol fad sol fad fa
    mi fa fad sold fad fa mi
    mib sol fad fa mi mib re
  }
  \lightBeams \graceNotes \ttt 4 {
    reb mib mi fa fad sold
    fad sol la lab sib si
  }
  \clef treble

  % C %
  do'16 reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb mib fa <mib do'> fa mib reb
  do reb mib fa <mib do'> fa mib reb
  do reb fa sib <reb, do'> sib' fa reb
  do reb fa sib <reb, do'> sib' fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol fa reb do la
  sold mi dod lad sol' mi dod lad
  \clef bass
  dod lad sol do mi, dod' lad sol
  do mi, dod' lad sol do mi, dod'
  lad sol do mi, dod' lad sol do
  fa,? sol fa sol sib do sib sol
  fa sol fa sol sib do sib fa
  sol do reb \clef treble fa sol sib reb mib
  <sol reb'> lab reb lab sol lab sol mib
  reb mib reb sib sol fa reb do
  sol do reb fa sol fa reb do
  sol do reb fa sol fa reb do
  sol dod re fa sol fa re dod
  sol la dod re sol re dod la
  re dod \mg la mi sol mi dod si
  mi si sol fad \md r4
  r r8 \pl \crossStaff {\mg \stemUp <do' sol'>8~ q2} { re'?8~ re2}
  <fa, do' sol'>4\laissezVibrer si?16 do fa sol
  sib dob mib fa <mib sib'> fa mib dob
  sib dob mib fa <mib sib'> fa mib dob
  sib dob mib fa <mib sib'> fa mib dob
  sib dob mib fa <mib sib'> fa mib do
  sib do mib solb <mib sib'> solb mib do
  sib do mib sol <fa sib> sol fa reb
  do reb do sol fad sol fad reb
  \voiceOne r2 \oneVoice <mib' mib'>16 <re re'>4..~
  <re re'>4 r r8 <la la'> <sold sold'>4~
  q2 r2 r

  % D %
  \ottava #2
  re'''4. mib8~ mib2
  r4 re4~ re8 fa16 re mib4~
  mib2~ \t {mib4 re mib}
  r2 re8 lab' sib? fa
  sol16 re mi!8~ mi4 dod8 la'16 sib,~ sib8 mib-.
  fad,4 \ottava #0 do r do
  r r8 do r2
  \ottava #1
  fad4. sold8~ sold mi fad4
  re8-. mi16 dod re4 r8 sold-. fad4
  si8-. la~ la16 sold fad sold
  red dod red sib do sib fa mib
  \ottava #0
  fa sib, la sib fa mib fa do
  \clef bass

  % E %
  re4 \ttt {re,?16 mib re mib re mib}
  re mib re mib re mib re mib
  re4 r <mib, la>8-. r r4
  re'16 mib re mib re mib re mib
  re' mib, re mib re mib re mib
  re'4 r \pitchedTrill re,?2~\startTrillSpan mib
  re1~
  \t {re8\stopTrillSpan sol lab} \t {mib' lab, sol}
  \t {re sol lab} \t {do? fa,? sib,}
  \t {sib' mib, lab,} \clef treble
  <fad'' fad'>4~ q8 <sold sold'>4 <mi mi'>8
  <fad fad'>2 <re re'>4 <mi mi'>16 <dod dod'> <re re'>8~
  q4 <sib' sib'>16 <lab lab'>8. <dod dod'>8 <si si'>4.~
  <si si'>2. r4
  <do! do'!>16 <si si'>4..
  r16 <mi,, fa> <mi' fa> q <mi' fa> <mi, fa> q mi,
  fa do' reb lab' reb, do la do
  reb lab' reb, do fa, do' reb lab'
  reb, do la do reb lab' re, do
  \clef bass
  la do reb do la lab reb, lab'
  la do la lab reb, lab' la do
  la lab fa mi fa mi reb do
  \t {lad4 si fad'}
  \pl {\oneVoice sol2~ sol1} {s2 r \clef treble <do? sol'>}
  \ottava #1 sol'''4. la4 fa8 sol4~
  sol8 \ottava #0 <mib, mib'>4 <fa fa'>16 <re re'>
  \pl {s2 r2} {\oneVoice <mib mib'>2~ \voiceOne mib1*1/2\laissezVibrer}
  r4 <do, sol'>~ q q2 q4~
  q q2 q4~
  q <re la'>2 <sib fa'>4
  <do sol'>2. q4~
  q q2 q q4~

  % F %
  q8 q4. q4 q
  <sol re'>8 <do sol'>4 q q <sol re'>8
  <do sol'>4 q q <sol re'>8 <do sol'>~
  q q4 q8~ q4 <sol re'>~
  \mergeDifferentlyDottedOn
  q8 q <do sol'>4. <lab mib'>
  <lab mib'>2 <sol re'>4. <lab mib'>8~
  q4. <sol re'> <lab mib'>4
  <do sol'> <lab mib'>4. <lab? mib'?>~
  <lab mib'>8 <sol re'>4. <lab mib'>2
  q4. <lab? mib'?>~
  <lab mib'>8 q~ q2
}

PianoMg =
%\transpose do re
\relative do' {
  \clef bass
  s1*10 s2

  % B %
  <mi,,, mi'>4. <fa fa'>8~
  \voiceTwo q2~
  q1~ q2. \oneVoice r4
  r2 <mi mi'>4. <fa fa'>8~
  <fa fa'>1 \voiceTwo
  r4 <mi mi'>2 <fa fa'>4~
  \oneVoice
  <fa fa'>1
  r8 sol' re' sib dod' sold mi' do
  \clef treble
  la'16 mib re lab sol dod re sold
  la mib re lab sol re' do mib
  sib' mib, fa si, fad dod' mib re
  sib' dod, fa si, fad mib' re fa
  sib re, fad sib, fad re' sib fad'
  si re, mi do fa, la re sol
  si? mi, sol re mi do re la
  fa do' re la mi' re sol do,
  si' mi, la, sol' do, fa, do' sol'
  la, mi' si' mi, la, sol' do, fa,
  do' sol' la, mi' si' do fa, sib,
  \clef bass
  fad' si, mi, do' sold mi' do sold'
  do, mi sold, do mi, do' sold mi'
  do mi sol, do mi, sol dod, sol'
  fad, dod' mi sol la sol mi dod
  fad, dod' mi sol sib sol mi dod
  \voiceTwo
  fad,4 \oneVoice r8 <do do'>4 <fad fad'>
  \voiceTwo <do do'>8
  \oneVoice
  fad16 dod' mi sol la sol mi dod
  fad, dod' mi sol sib sol mi dod
  \voiceTwo
  fad,4 \oneVoice <fad fad'>4. <sold sold'>4 <mi mi'>8
  fad16 dod' re la' sib la re, dod
  fad, dod' re la' sib la re, dod
  fad, dod' re dod fad, dod' re dod
  fad, dod' re mi re dod fad, dod'
  sib, fad' dod' re mi, do' mib fa
  solb fa mib do sib la sol mi
  sib fad' dod' re mi, sib' mib fa
  solb fa mib do sib sol dod, sol'
  la sib do mib do sib dod, sol'
  la sib do sib la sol mi re
  dod re mi la sib do mib fa

  % B %
  sol?1~\startTrillSpan
  sol?1~
  sol?1
  <re, sold>8-.\stopTrillSpan r r4 r2
  r2 r4 <re sold>8-. r
  sol'?1(\startTrillSpan
  <fadd sold>)~
  q~
  q(
  sol4)\stopTrillSpan r r2 r8 <fad,, fad'> <do' do'> <fad fad'>

  % C %
  \clef treble
  do''16 reb fa sol do sol fa reb
  do reb fa sol do sol fa reb
  do reb fa sol do sol fa reb
  do reb fa sol do sol fa reb
  do reb fa sol do sol fa reb
  do reb fa sol do sol fa reb
  do reb fa sol do sol fa reb
  do reb mib fa sib fa mib reb
  do reb mib fa sib fa mib reb
  do reb mib sol sib sol mib reb
  sib reb fa sol sib sol fa reb
  sib reb fa sol sib sol fa reb
  lab sib reb mib sol mib reb sib
  lab sib reb mib sol mib reb sib
  fad lad dod mi sold mi dod lad
  fad lad dod mi sol mi dod lad
  \clef bass
  fad lad dod mi dod lad dod lad
  sol fad sol fad mi do mi do
  fad, dod' fad,8~ fad2 <do do'>4~
  q8 <fad fad'>4 <do do'>8 <fad fad'>2~
  q1
  r8 <do do'>4. <fad fad'>2~
  q2 \t {si8 re mi} \t {la mi si}
  <fad, fad'>2 r8 red'4.
  <fad, fad'>2. \t {dod'8 sol sold}
  <red red'>2. red'?4
  r8 <la' la'>4 <mib mib'>8 <la la'>2\laissezVibrer
  \clef treble
  do'16 reb mib solb sib solb mib reb
  do reb mib solb la? solb mib reb
  do8 \clef bass <mib,, mib'>4 <la la'>8~ q2~
  q <mib mib'>\laissezVibrer
  \md do''16 \mg lab sol fab mib fab sol lab
  si? sol fab mib do mib fab sol
  \t {lab8 mib dob} \t {sib dob sib} fa2~
  fa r r4 r8 \ottava #-1 re,
  \ottava #0

  % D %
  re'''4. mib8~ mib2
  r4 re~ re8 fa16 re mib4~
  mib2~ \t {mib4 re mib}
  r2 \clef treble re8 lab' si! fa
  sol16 re mi?8~ mi4 dod8 la'16 sib,~ sib8 mib
  \clef bass
  fad,4 do r do
  r r8 do r2
  \clef treble
  fad''4. sold8~ sold mi fad4
  re8-. mi16 dod re4 r8 sold fad4
  si8 la~ la16 sold fad sold
  red dod red sib do sib fa mib
  \t {fa8 \clef bass do sib} \t {sol la sol}

  % E %
  \pitchedTrill reb1~\startTrillSpan mib
  reb~
  reb~
  \t {reb8\stopTrillSpan re reb} do4
  si16 dod si dod fad dod fad dod
  si mi, si' dod fad dod fad dod
  si mi, si' dod fad dod sold' dod,
  si mi, si' mi, la, mi' si' dod
  fad dod si dod si mi, si' mi,
  la, mi' si' mi, la re sol re
  la mi' si' mi, la re sol, do,
  si' mi, si' mi, la,8
  <mib mib'>4 <la la'> <mib mib'>8
  la16 la' si la mi si' fad' la,
  la, re sol re mi la re sol,
  la, mi' si' la mi si' fad'8
  \pl {<la,,, la'>8 <sib sib'>4.}
  {la'16 re sol do fad, dod' \md sold'8}
  r8 <mi,, mi'>4 <sib sib'>8 <mi mi'>4 r
  \ottava #-1
  <mi, mi'>4. <fa fa'>8~ q2~
  q2. <mi mi'>8 <fa fa'>~
  q4 <sol sol'>16 <mi mi'> <fa fa'>8~ q2~
  q4 <mi mi'>2 <dod dod'>4
  <mi mi'>1
  \ottava #0
  \pl {
    r4 \ottava #-1 mi2.
    \ottava #-1
    \oneVoice sib2 mi?
    \voiceTwo sib4 \ottava #-1 mi2.\laissezVibrer
  } {
    sol''4.^"loco" \ottava #0 la4 fa8 sol4\laissezVibrer
    s1
    \t {r4 \ottava #0 re \ottava #0 la'} do2\laissezVibrer
  }
  s2 <re, la'>\laissezVibrer
  \ottava #-1 mi,,?1\laissezVibrer \ottava #0
  <mib'' sib'>1~
  q2 <re la'>~
  q1 r2

  % F %
  R1*3
  <re la'>2
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \mergeDifferentlyDottedOn
  \override Beam.auto-knee-gap = #7
  re8 la' \md \stemDown sol \mg \stemNeutral re
  la' \md \stemDown sol do \mg \stemNeutral re,
  la' \md \stemDown lab \mg \stemNeutral re, sol
  \md \stemDown lab \mg \stemNeutral la? re, la'
  \md \stemDown sol \mg \stemNeutral re la' \md \stemDown lab
  \mg \stemNeutral sol re la'? \md \stemDown sol
  \mg \stemNeutral re sol \md \stemDown lab \mg \stemNeutral la?
  \ottava #-1
  \pl <re,,, dod'>1\laissezVibrer
  {
    \md \stemDown do'''?8 \mg \stemNeutral \ottava #0 la
    \md \stemDown lab \mg \stemNeutral re,
    la'? \md \stemDown lab
    \mg \stemNeutral sol re
  }
  la' \md \stemDown sol \mg \stemNeutral re sol
  \md \stemDown lab \mg \stemNeutral la? re, la'
  \ottava #-1
  \pl {
    <re,,, dod'>2.\laissezVibrer
    r4 \ottava #-1 <re dod'>2\laissezVibrer
  }
  {
    \md \stemDown lab'''8 \mg \stemNeutral \ottava #0 re,
    la'? \md \stemDown lab
    \mg \stemNeutral sol re
    la' \md \stemDown lab
    \mg \stemNeutral
    dod,, \ottava #0 re' sol lab
  }
}
