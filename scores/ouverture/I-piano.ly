%-- Ouverture -- I-piano.ly ---------------------------------------%
% (c) 2002-2010 Valentin Villenave <valentin@villenave.net>
showLastLength = R16*883

PianoIMd = \relative do' {
  R1
  <sold la re>16 <la si mi>8.~ <la si mi>2. |
  <la re>16 <si mi>8 <re fad> <mi sold> <fad la> <sold si>16 |
  <la re>2 r8 |
  <la, re>16 <do mi>8 <re fad> <mi sol> <fad la> <sol do>16 |
  <la re>2
  \pl { r16 <re, sol do> <mi la re>8 s s4}
  {r16 <fa' sib fa'> <sol do sol'>8
  \mg <re,, re'>16 \md <mi' mi'>~ <mi mi'>4 }

  R2. R2 s4.
  <sol, re'>8 <fad la mi'> <sol sib fa'> <la re sol> fad16 |
  <la re> <si mi>8 <re fa> <mi sold> <sol si> |
  <sold do>16 <fa si re>8. <sib mi>8 <sol do fa> <la dod sol'>16 |
  <la, re> <si mi>8 <la re fa> <si mi sol> <re fa sib>16~ |
  <re fa sib> <mi sol do>8 <fa sib dod> <sol do re> <fa sib mi>16~ |
  <fa sib mi> <sol do fad>8 <sib re la'>8. |
  <re sol re'>16 <mi la mi'>8.
  <re, re'>16 <mi mi'>8.~ \t {<mi mi'>4 <re re'> <mi mi'>} |

  <re la' re>8 s s4
  \pl {re8 lab' re lab'}
  {s8 \lightBeams { \tt {lab,32 \graceNotes {do mib solb sib}}
  s8 \tt {lab32 \graceNotes {do mib solb sib}}}}
  \ottava #1
  \stemUp
  \mg s8 \lightBeams { \tt {lab32 \md \graceNotes {do mib solb sib}}
  \mg s8 \tt {lab,32 \md \graceNotes {solb' mib do sib}}
  \mg s8 \tt {lab32 \md \graceNotes {do mib solb sib}}
  \mg s8 \tt {lab,32 \md \graceNotes {solb' mib do sib}}
  \mg s8 \tt {lab32 \md \graceNotes {do mib solb sib}}
  \mg s8 \tt {lab,32 \md \graceNotes {solb' mib do sib}}
  \tt {\mg re,[ \md \graceNotes {fad la do mi]}}
  \tt {\mg lab,[ \md \graceNotes {do mib solb sib]}}
  \tt {\mg re,[ \md \graceNotes {la' fad mi do]}}
  \tt {\mg lab[ \md \graceNotes {solb' mib do sib]}}
  \tt {\mg re,[ \md \graceNotes {fad la do mi]}}
  \tt {\mg lab,[ \md \graceNotes {do mib solb sib]}}}
  \mg re,8 \md  \ottava #0 r |
  \stemNeutral

  <sol,,, \whiteNote re' sol>16 <la la'>4..*3/7
  \ottava #1 re''8 mi \ottava #0
  <sol,,, \whiteNote re' sol>16 <la la'>4.. |
  <sol \whiteNote re' sol>16 <la la'>8. <sib sib'>16 <do do'>8. |
  s1 s2 |
  <dod dod'>16 <red red'>4..*1/7
  \ottava #1 fa''8 la re,\rest \ottava #0
  <dod,, dod'>16 <red red'>4.. |
  <dod dod'>16 <red red'>8 <do do'>16 <sib sib'>8
  <fad fad'>16 <mi mi'>~ <mi mi'>8 <mib la> |
  <\whiteNote re sol dod>16 <la' red>4..*3/7
  \ottava #1 mib'''16 fa la8 \ottava #0
  <dod,,,, \whiteNote sib' dod>16 <red red'>4.. |
  <dod dod'>16 <red red'>8 <la la'>16 <sib sib'>8
  <sold' sold'>16 <la la'>~ <la la'> <fad' fad'> <sol sol'>8 |

  \lightBeams {
  <sold sold'>8 \graceNotes { la,,32 re mi la }
  \bracketDown "m.s." mi' \graceNotes {
  \bracketUp "m.d." la, mi re la \mg mi re la}
  re, \graceNotes {la' re mi \md la re mi la}
  \ind #"simile" mi' \graceNotes {la, mi re la \mg mi re la} |
  re, \graceNotes {la' re mi \md la re mi la}
  mi' \graceNotes {la, mi re la \mg mi re la}
  re, \graceNotes {la' re mi}
  la, \graceNotes {re la' re}
  re, \graceNotes { \md la' mi' la} \mg
  la, \graceNotes { \md re la' re}}
  \ottava #1
  <sold' sold'>8 <red red'>16 dod' <sold sold'>8 mi |
  do'16 sib <sold sold'> la <red, red'> <dod dod'> <sold' sold'>8 |
  <sold sold'>16 <red red'> dod' <sold sold'> mi do' sib <sold sold'> |
  la <red, red'> <dod dod'>8 <sold' sold'>16 mi do sib |
  \ottava #0
  \ind #"loco"
  <re, fad re'>16 <mi sold mi'>8. r16 \ottava #1
  <sold' sold'> <red red'> dod' |
  <sold sold'>8 mi16 do' sib <sold sold'> la red |
  <dod, dod'>8 <sold' sold'>16 la
  <red, red'> dod' \t {<sold sold'> red' dod} |
  \t {<mi, mi'> do' sib}
  \t {<sol sol'> re' do}
  \t {<sold sol'> red' dod} |

  <la la'>2*2\laissezVibrer \ottava #0 s1 R1
  <sib,, sib'>32 <do do'>4...\laissezVibrer s2 |
  la''2\laissezVibrer la,,~ | la \mg la, \md |
  \t {sib4 do8~} do4. sib8~ \t {sib4 do8~} |
  do1\laissezVibrer s2. R1 R2.
  sib'4. do8~ do2~ | do4 do2\laissezVibrer s2 R4.

  <dod mi>4 <dod mi>2 <dod fa>4 |
  <dod mi> <do mib> <dod mi> |
  <dod fa>4 <dod mi>2.\laissezVibrer s2. |
  <la sold'>2 q | q4. q | q2 q | q4. q |
  <si mi sol>8 <si mi sol>~ \t {<si mi sol> <do fa la> <si mi sol>} |
  <lad red fad> <si mi sol> <re sol sib> |
  <si red sold si>4\laissezVibrer s2 \clef bass |
  s4 <fa, mi'> <fad red'> | R2.
  r2 fa8 dod | mi4. la,8 fa' dod |
  mi4 la8 la, fa' dod |
  mi \acciaccatura fa mi red mi do'! sold |
  si2\laissezVibrer s4 |
  r <mi, sold red'> <fad si dod> |
  <red mi sold dod> <sid red la' sid> r |
  r <fad' lad si fad'> <mi sold mi'> |
  r <mi sold si mi> <red fadd red'> |
  \clef treble r <lad' si red lad'> <sold sold'> |
  <si dod mi si'> <lad lad'> <red red'> |
  \clef bass r sold,, sold sold sold s4 | \clef treble

  \ottava #1 <sold'''' sold'>8
  \t { sol16 re la} \t {mi' si fa} \t {red' lad mi}
  \t {do' sol reb} \t {si' fad do} | <dod red sold>4.\laissezVibrer

  \ottava #0
  <sold sold'>4. \pl {
  <mi la dod> <do! mi sol do> <sib reb fa>2\laissezVibrer}
  {<mi' la dod mi>4. <mi sol do!> <sib reb fa sib>2\laissezVibrer }
  r4 \ottava #1 \pl {
  \acciaccatura <re' sol la>16~ <re sol la>4
  \acciaccatura <dod fad sold>16~ <dod fad sold>4}
  {<si' dod fad> <sol sib do fa>}
  r4 \pl {
  \acciaccatura <sib, mib fa>16~ <sib mib fa>4
  \acciaccatura <la re mi>16~ <la re mi>4}
  {<sol' la re> <fad sold dod>} \ottava #0
  r8 \pl {sold,,16. mi'32~ mi4 <mib sib'>}
  {s8 <red' sold>4 <do sol'>} |
  \acciaccatura {mi,16[ fa']} mi,8 <re re'>
  <dod dod'> <re re'> <fa fa'> %\noBeam %%FIXME
  dod, |
  mi2*1/2 \acciaccatura red''16 mi8 r \pl {
  fad,,8 dod \oneVoice mi4 \voiceTwo red8 re' re sold,}
  {\acciaccatura mi''16 \stemUp fa!8 r s4
  \acciaccatura fad16 sol8 r
  \acciaccatura fadd16 sold8 r \stemNeutral}
  <la,,, dod mi la>4 la''8 r r2 \clef bass

  reb,,,16 mib8.~ mib4. <mib, mib'>8 | <fa fa'> r r8. \clef treble |
  R1*7/16*2 s1*3/16 R1*7/16*2 s1*7/16 R1*7/16 |
  re''16 mi8. re16 mi8. <la, re>16 mi'8. | s2. s1 |
  R2.*3 R4.

  <re' fad la re>2 <dod fad lad dod> |
  <dod fa la dod> <dod fa la do!> |
  <do fa la do> <do? mi sold dod> |
  <si mi sold dod> <si mi sol do> |
  <sib mi sol do> <sib mib sol reb'> |
  \pl {<la sol' reb'> <lab reb fa do'>}
  {reb4 mib \hideNote fa }
  <do mi sol do>2\laissezVibrer s4 |
  r4. \bracketDown "m.s." <do, la> |
  <la do> <la do> <la do>~ <la do>1\laissezVibrer | R1

  \clef bass
  <re, re'>16 <mi mi'>8.~ <mi mi'>2~ |
  <mi mi'>4~ \t {<mi mi'> <fa fa'> <mi mi'>} |
  \clef treble
  <sol sol'>2 <mi mi'>16 <fa fa'>8. <sib sib'>4 |
  <reb reb'>16 <mib mib'>4..~ \t {<mib mib'>4 <solb solb'> <mib mib'>} |
  <sol, sol'> <sib sib'> <do do'>16 <reb reb'>4.. \clef bass |
  <re, re'>16 <mi mi'>8.~ <mi mi'>8 <sol sol'>~
  \t {<sol sol'>4 <la la'> <sol sol'>} | \clef treble
  <la la'>16 <sib sib'>8.~ <sib sib'>8 <do do'>~
  \t {<do do'>4 <mib mib'> <do do'>} |
  <mib mib'>16 <fa fa'>8.~ <fa fa'>8 <solb solb'>~
  \t {<solb solb'>4 <lab lab'> <solb solb'>} |
  <lab lab'>16 <si si'>8.~ <si si'>8 <dod dod'>
  \t {<si si'>4 <re re'> <dod dod'>} |
  <re,, re'>16 <mi mi'>8. <fa fa'>8 <sol sol'> |
  \t {<sib sib'>16 <do do'>8. <dod dod'>4 <red red'>} |
  <fad fad'>16 <sold sold'>8. <la la'>8 <si si'> |
  \t {<re re'>16 <mi mi'>8. <re, re'>4 <mib mib'>} |
  <fa fa'>16 <sold sold'>8. <lad lad'>8 <si si'> |
  \t {<dod dod'>16 <mi mi'>8. <lad,, lad'>4 <dod dod'>} |

  <red red'>16 <mi mi'>8.\laissezVibrer s8 | s4.
  re!16 mi~ mi4\laissezVibrer s4. \clef bass |
  <re, re'>16 <mi mi'>8 <sol sol'> <fa fa'>16 \clef treble |
  <sold sold'>16 <lad lad'>8 <dod dod'> <si si'>16 |
  <do do'>16 <dod dod'>8 <red red'>16 <mi mi'> <fad fad'>~ |
  <fad fad'> <sol sol'> <la la'> <si si'>8. |
  <re re'>16 <mi mi'>8.~ <mi mi'>8 r |
  <re fad re'>16 <mi sold mi'>~ <mi sold mi'>4\laissezVibrer |
  s8. <re, re'>~ <re re'>4 <mi mi'> |

  <re re'>16 r fa8 sol re16 mi r8 fa sol re16 mi
  fa8 sol~ sol16 re mi fa sol8 re |
  mi fa sol re16 mi r fa8 sol16 r re mi fa
  r sol8 re16 mi fa sol8 re mi |
  fa16 sol re mi fa8 sol re16 mi fa sol
  r re mi fa r sol8 re16 mi8 fa sol16 re mi fa |
  sol8 re16 mi r8 fa sol16 la re, mi fa8 sol
  r16 re mi fa sol8. re16 mi8 fa16 sol |
  <do, re>8 <re mi>16 la <si? fa'>8 <do sol'>16 sol re' la mi' sib
  <do fa>8 <do sol'>16 re sib8 <do mi> fa sol <la, re>16 si <do mi>8
  <sol la re>16 mi'8 <sib do fa>16 sol'8 <sol, la re>16 mi'~
  mi <sib do fa> sol'8 <sol, la re>16 mi'8 <sib do fa>16
  sol' <la, re>8 <si mi>16~ <si mi>8 <do fa>~ <do fa>16 <re sol>8. |
  <fa sib>8 <sol do> <sib reb> <do mib>
  <fa, sib>16 <sol do>8 <sib reb>16 <do mib>8 <fa, sib>
  <sol do>16 <sib reb> <do mib>8 sib16 do reb mib solb, lab la si |
  re,8 mi fa sol re16 mi8 fa16 r sol8 re16
  mi fa8 sol16 r re mi fa sol8 mi |
  re16 mi8 fa16 sol8 re16 mi fa8 sol
  re16 mi8 fa16 sol8 re16 mi fa8 sol re16 mi fa8 |
  <re' re'>16 <mi mi'>8.~ <mi mi'>4
  <sol, do fa>8 <la re sol> <sib mib lab> <fa' fa'>16 <sol sol'>~
  <sol sol'>4 <sol, do fa>8 <la re sol> <sib mib lab> <do fa sib> |
  %% First version:
  % s1*7/4*2 %%%
  %% Second version:
  r2 re,4. mi | fa4 sol |
  \t {<re sol sib re>8 <re sol sib re> <re sol sib re>}
  \t {<mi sol sib mi> <mi sol sib mi> <mi sol sib mi>} |
  \t {<fa sol sib re fa> <fa sol sib re fa> <fa sol sib re fa>}
  <la sib re sol> <la sib re sol> |
  <re, re'>8. <mi mi'>16~ <mi mi'>8
  <fa fa'>~ <fa fa'>16 <sol sol'>8. | %%%

  R2.*4
  re2.\startTrillSpan ~ re re s2.*2\stopTrillSpan |
  \pl { re32\startTrillSpan mi\stopTrillSpan s16
  re32 mi s16 re32 mi \hideNote \ind "simile" re4..\startTrillSpan
  \oneVoice re2.\stopTrillSpan}
  {s16 re32 mi s16 re32 mi s16 \hideNoteHeads {re32 mi} s4.}
}

PianoIMg = \relative do' {
  \clef bass
  \bracketDown "m.s." re16
  \bracketUp "m.d. (sopra)" <mi, mi'>8.
  re'16 <mi, mi'>8. re'16 <mi, mi'>8. re'16 <mi, mi'>8. |
  \pl {mi,2 mi,}
  {mi''16 fad8.~ fad2. }
  <mi, mi'>8. <mi' sold>8 <fad la> <sold si> <la re>16 |
  <si mi>2 r8 |
  <mi,, mi'>8. <mi' sol>8 <fad la> <sol do> <la re>16 |
  <do mi>2 s8 | s2 |

  re,16 <mi mi'>8. re16 <mi mi'>8. re16 <mi mi'>8. |
  <re mi la si re mi>16 <mi,, mi'>4..~
  <mi mi'>8 \md re'''''16 re, \mg re, re, |
  \pl {mi,8~ \hideNote mi4.}
  {<sold mi'>16 si~ <mi, si'>4.} r16 |
  <mi mi'>8. <mi' sold>8 <fa la> <fad si> |
  <la re>16 <si mi>4.. r16 |
  <mi,, mi'>8. dod'8 red <mi, mi'>16~ |
  <mi mi'> sib'8 sol'8. <mi la re>16 <fad si mi>~ |
  <fad si mi> <sold do fa>8 <la re sol>8. |
  \ottava #-1
  <re,,, re'>16 <mi mi'>8. \ottava #0
  <re' re'>16 <mi mi'>8.~ \t {<mi mi'>4 <re re'> <mi mi'>} |
  \pl {<re la' re>8 lab' re \md lab' }
  {s8 \lightBeam \tt {lab,32 \graceNotes {do mib solb sib}}
  s8 \md \lightBeam \tt {lab32 \graceNotes {do mib solb sib}}} \mg
  s2
  \clef treble \ottava #1
  \stemDown
  re'8 lab' re lab re, lab' re lab |
  re, lab' re lab |
  re, lab' re lab re, lab' re r | \stemNeutral

  \clef bass \ottava #0
  <\whiteNote re,,,, si' mi>16 <dod' fad>4..
  <\whiteNote re, si' mi>16 <dod' fad>4.. |
  <\whiteNote re, si' mi>16 <dod' fad>8. \clef treble
  <re sol>16 <mi la>8. \clef bass
  \lightBeams {
  \t {re,,16 \graceNotes {la' mi'}} \graceNotes { \t {re la' mi'}
  \t {si, fad' dod'} \md \t {lab mib' sib'} \mg
  \t {sib,, fa' do'} \md \t {sol re' la'} \mg
  \t {sol,, re' la'} \t {mi' la, re,}
  \t {fa, do' sol'} \md \t {la mi' si'}} \mg
  \t {fad, \graceNotes {dod' sold'}} \md
  \t {sib \graceNotes {fa' do'}} \mg |
  \t {<sol,, sol'> \graceNotes {re' sol,}} \t {re \graceNotes {la' re}}
  \t {sol, \graceNotes {re' sol,}} \t {re \graceNotes {la' re}}
  \t {sol, \graceNotes {re' sol,}} \t {re \graceNotes {la' re}}
  \t {sol, \graceNotes {re' sol,}} \t {re \graceNotes {la' re}} |
  \t {sol, \graceNotes {re' sol,}} \t {re \graceNotes {la' re}}
  \t {sol, \graceNotes {la re}} \t {sol \graceNotes {re sol,}}
  \t {re' \graceNotes {la re,}} \t {sol \graceNotes {re la}}
  \t {sol \graceNotes {re' la'}} \graceNotes \t {re, sol re}
  \graceNotes { \t {sol, re' la'} \t {re, sol re}}
  \t {mi, \graceNotes {si' fad'}} \graceNotes \t {si, re si}
  \t {mi, \graceNotes {si' fad'}} \graceNotes \t {si, re si} |
  \t {mib, \graceNotes {sib' sol'}} \t {\graceNote sib, mib, \graceNote sib'}
  \t {\graceNotes {sol' sib,} mib,} \graceNotes \t {sib' sol' sib,}}
  \t {mib, \graceNote sib' mib,} \t {sib' mib, la}

  \ottava #-1 <re,, re'>2*1/2\laissezVibrer \ottava #0 s2. | s1 \clef treble
  \t {re''16 la' mi'} re la' \t {mi' la, re,} mi la, |
  \t {re, la' mi'} re la' \t {mi' la, re,} mi la, |
  \t {re, la' mi'} re la' \t {mi' la, re,} \t {mi la, re,} \clef bass
  \t {re, la' mi'} \t {la, re la'}
  \t {re, la' mi'} \t {la, re la'} \clef treble |
  <mi sol sib>16 <re la' do>4.. |
  <mi sol re'>16 <fa la mi'>4.. |
  <mi sol la re>16 <fa la si mi>8 <sol si do fa>16
  <la do re sol>8 <fa sib re mi>16 <sol do mi fad>~ |
  <sol do mi fad>8 \clef bass
  r16 <dod,,, dod'>8. |

  <la la'>2 la~ la la
  \pl la la''1*1/2\laissezVibrer la,,2~ la la |
  <la la'>4 la2. | la4 la2*1/2 s4 la |
  \pl {s1 la\laissezVibrer}
  {\oneVoice \t {la'4 sib8~} sib4. do8~ \t {do4 \bracketUp "m.d." la'8~} |
  \voiceOne la1\laissezVibrer} s2. |
  \ottava #-1 la,,,2*2\laissezVibrer \ottava #0 | R2. \clef treble
  <sib''' do la'>2.\laissezVibrer \pl {red4~ red fa!2\laissezVibrer}
  {<fad sold>4~<fad sold>2.} s2 | R4.

  <fa lab>4 <fa lab>2 <mi lab>4 |
  <fa lab> <fad la> <fa lab> |
  <mi lab> <fa lab>2.\laissezVibrer | s2.
  <la, do>4 <la do> q q | q q q |
  q q q q | q q q |
  \pl { sol sol} {<red' fad sold>8 <red fad sold>~
  \t {<red fad sold> <re fa sol> <red fad sold>}}
  <sol, mi' sol la> <red' fad sold> \clef bass <red, la' dod> |

  <sold,, fadd'>4\laissezVibrer <red'' mi'> <mi red'> |
  \ottava #-1 <dodd,, red'>4*3\laissezVibrer
  <fadd sold'>\laissezVibrer <red dodd'>\laissezVibrer |
  <sold sold'>\laissezVibrer <sold fadd'>\laissezVibrer |
  <fadd sold'>\laissezVibrer <dod dod'>\laissezVibrer |
  <dod dod'>\laissezVibrer <dod sid'>\laissezVibrer |
  <fadd sold'>\laissezVibrer <sid, dod'>\laissezVibrer |
  <la sold'>\laissezVibrer <dod sid'>\laissezVibrer |
  \ottava #0
  \ind "loco" <sold' sold'>2\laissezVibrer s4 |
  s2 \ottava #-1 <dod, dod'>4 |
  <la sold'>8\laissezVibrer \ottava #0 \clef treble
  <mib''''' si'?> <do la'> <si fad'> <lab fa'> <sol re'> |
  <mi la si>4.\laissezVibrer | \clef bass \ottava #-1
  <la,,,, sold'>2.\laissezVibrer \ottava #0 | s4. s2 \acciaccatura
  <dod'' dod'>16 \ottava #-1 <dod,, fa lab dod>4*3\laissezVibrer
  \ottava #0 \acciaccatura <sold''' sold'>16 <sold,, sold'>4*3
  \md \acciaccatura <dod'' dod'>16 \mg <dod,, dod'>4*3 |
  <re re'>4\laissezVibrer r8 <la' la'> <fa' fa'> dod |
  mi,4\laissezVibrer r s mi s2 |

  la4 \clef treble \ottava #1 \acciaccatura sol''''16 la8
  \ottava #0 r r4 \clef bass fa,,,,, |
  fa8 fa \t {fa fa fa} fa16 fa fa fa |
  fa8 r r8. | R1*7/16*2
  \pl {<re' mib si'>16 <mi fa? dod'>8}
  {<re' sol re'>16 <mi la mi'>8} |
  R1*7/16*2
  \pl {<re, sol sib>16 <mi la do>8. <re sold dod>16 <mi lad red>8}
  {<mib' fad si re>16 <fa sold dod mi>8. <mi la re>16 <fad si mi>8}
  R1*7/16
  <sib, mib lab>4 <sol do fad> <fa sib reb solb> |
  \pl {<re re'>16 <mi la do>4..\laissezVibrer}
  {re''16 <fa, sold dod mi>4..\laissezVibrer}
  mi,32 re' mi re' mi, re' \md mi re' | \t {mi,16 re' mi} re'8
  \ottava #1 re'32 sib fa mi re sib fa mi \ottava #0
  re'64 sib fa mi re sib fa mi re' sib fa mi
  \mg re sib fa mi re' sib fa mi re sib fa mi
  \t {re'32 sib fa} \t {mi re sib} |
  \ottava #-1 mi,4*3\laissezVibrer \ottava #0 |
  R2.*2 R4. R1*6 R2. s2.*2 s4. R1*2

  \ottava #-1 <mi mi'>2. <mi mi'> <mi mi'>2 <mi mi'> |
  \t {<mi mi'> <mi mi'> <mi mi'>}
  <mi mi'>4.~ <mi mi'>8~ <mi mi'> <mi mi'>4. |
  <mi mi'>4 <mi mi'> <mi mi'> <mi mi'>~ |
  <mi mi'>8 <mi mi'>4. <mi mi'>4 <mi mi'> |
  <mi mi'> <mi mi'>4. <mi mi'> |
  <mi mi'>2 \t {<mi mi'>4 <mi mi'>2} |
  <mi mi'>4 <mi mi'> \t {<mi mi'> <mi mi'> <mi mi'>} |
  <mi mi'> <mi mi'> \t {<mi mi'> <mi mi'> <mi mi'>} |
  <mi mi'> <mi mi'> \t {<mi mi'> <mi mi'> <re re'>} |
  <mi mi'>4.\laissezVibrer \ottava #0 s4.
  <re' mi re' mi>\laissezVibrer s |
  \ottava #-1 <mi, mi'>8 <fa fa'> <sol sol'> |
  \ottava #0 <sib sib'> <dod dod'> <red red'> |
  <mi mi'> <fa fa'> <sol sol'> |
  <sib sib'> <dod dod'> <red red'> |
  <mi mi'>4. r8 |
  <re fa! la re>16 <mi sol! si mi>~ <mi sol si mi>4\laissezVibrer
  \pl {\ottava #-1 <mi,, si' re>8.} <fa' sold si re mi> \ottava #0
  s r4 <mi mi'> |

  <re re'>16
}
