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
  \tt {\mg re, \md \graceNotes {fad la do mi}}
  \tt {\mg lab, \md \graceNotes {do mib solb sib}}
  \tt {\mg re, \md \graceNotes {la' fad mi do}}
  \tt {\mg lab \md \graceNotes {solb' mib do sib}}
  \tt {\mg re, \md \graceNotes {fad la do mi}}
  \tt {\mg lab, \md \graceNotes {do mib solb sib}}}
  \mg re,8 \md r |
  \stemNeutral

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
}
