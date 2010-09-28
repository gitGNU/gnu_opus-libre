%-- Ouverture -- I-piano.ly ---------------------------------------%
% (c) 2002-2010 Valentin Villenave <valentin@villenave.net>

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

  <la la'>2*2\laissezVibrer \ottava #0
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

  <la la'>2
}
