%-- Ouverture -- II-piano.ly --------------------------------------%
% (c) 2002-2010 Valentin Villenave <valentin@villenave.net>

PianoIIMd = \relative do' {
  <la si re>4 <si dod re> <la do re> <sol do re> R1
  <sol re'>16 <fad la mi'>~ <fad la mi'>2 |
  <la re>16 <do mi>8 <re fad> <mi la> <fad si> <la do>16 |
  <si re>2 r8 |
  <sol, re'>16 <do mi>8 <re fa> <mi sol> <fa sib> <sol do>16 |
  <sib re>4~ <sib re>16 \mg
  <re,,,, re'> <re'' re'> <re, re'> \md |
  <fad' sold lad do re>4 <sol! lad si re> <fad la sib dod re> |
  <fad sol re'>16 <la sib mi>4..~ <la sib mi>4. |

  <la re>16 <sib mi>8 <dod fa> <re sol> <fa lab> |
  <fa sib mib>16 <sol do mi>4.. r16 |
  <la, re>16 <sib mi>8 <dod fa> <re sol> <fa lab> |
  <fa sib>16 <sol do> <sib re>8 <do mi> <dod fad> |
  <red sold> <dod mi la> <red sold si> <mi la re> |
  \ottava #1
  <fad si mi> <sold re' fa> <si! re fa sib> |
  <re fad re'>16 <mi sold mi'>4.. \ottava #0
  \clef bass
  <fa,,,, sold si re mi>2 \clef treble |

  s2 \pl {re''8 sold re' sold}
  \lightBeams { \tt {re,32 \graceNotes {fad la do mi}} s8
  \tt {re32 \graceNotes {fad la do mi}} s8}
  \stemUp \ottava #1
  \mg \lightBeams {\tt {re32 \md \graceNotes {fad la do mi}}
  \mg s8 \tt {re32 \md \graceNotes {la' fad mi do}}
  \mg s8 \tt {re,32 \md \graceNotes {fad la do mi}}
  \mg s8 \tt {re32 \md \graceNotes {la' fad mi do}}
  \mg s8 \tt {re,32 \md \graceNotes {fad la do mi}}
  \mg s8 \tt {re32 \md \graceNotes {la' fad mi do}}
  s2 \ottava #0 s2 \stemNeutral |
  s2 \ottava #1 <sold sold'>8 s s4 | s2 |
}



PianoIIMg = \relative do' {
  \clef bass
  <mi, fad sold>4 <re mi sol la> <do mi fad sol> <si mi fa> |
  <re mi la si re mi>16 <mi,, mi'>8.~ <mi mi'>2
  r8 <re re'>16 re'' |
  \pl {mi,8~ \hideNote mi2 }
  { <la mi'>16 si~ <mi, si'>2 }
  <mi mi'>8. <mi' la>8 <fad si> <la do> <si mi>16 |
  <do fad>2 r8 |
  <mi,, mi'>8. <mi' sol>8 <fa sib> <sol re'> <sib mi>16 |
  <do fa>4~ <do fa>16 s s s |
  <mid,, mid'>4 <dod dod'> <sol sol'> |
  \pl {<mi' mi'>2 \laissezVibrer %fixme
    mi,4. }
  {si''16 dod4..~ <mi, dod' mi>4.}

  <mi mi'>8. <mi' sol>8 <fad la> <sol sib> |
  <mi dod'> <fa mi'> <fad fa'!> <la sol'> sib,16 |
  <mi, mi'>8. <mi' sol>8 <fad la> <sol sib> |
  <mi, mi'>8. <fad' la>8 <sold si> <mi la re>16 |
  <fad si mi>8 <la re fa> <si mi sol> \clef treble
  <re fa sib> | <mi sol do> <fa sib dod> <sol do re> |
  \clef bass <re, la' re>16 <mi si' mi>4..
  \ottava #-1
  <mi,, si' re>2 \ottava #0
  \stemDown
  <re re'>8 sold' re' sold s2 \clef treble \ottava #1
  re'r8 sold re' sold, re sold re' sold, |
  re sold re' sold, | \ottava #0 \stemNeutral
  \ind "loco"
  re32 \md do' la fad
  \mg sold, \md fad' mib do
  \mg dod, \md mib' do la
  \mg sol, \md do la fad
  \mg mib, \md fa' re si
  \mg sib, \md mib' do la
  \mg \clef bass fad, \md lab' fa re
  \mg \t {la16 mi la,} |

  \t {re, la' mi'} \md \t {mi' \mg la, re,}
  \t {re, la' mi'} \md \t {mi' \mg la, re,}
  \t {re, la' mi'} \md \t {mi' \mg la, re,}
  \t {re, la' mi'} \md \t {mi' \mg la, re,}
  \t {re, la' mi'} \md \t {mi' \mg la, re,}
  \t {re, la' mi'} \md re' la' re mi |
}