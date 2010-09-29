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
  \mg s8 \tt {re32[ \md \graceNotes {la' fad mi do]}}
  \mg s8 \tt {re,32[ \md \graceNotes {fad la do mi]}}
  \mg s8 \tt {re32[ \md \graceNotes {la' fad mi do]}}
  \mg s8 \tt {re,32[ \md \graceNotes {fad la do mi]}}
  \mg s8 \tt {re32[ \md \graceNotes {la' fad mi do]}} s8 |
  \mg re,32[ \md \graceNotes {do' la fad]}
  \mg sold,[ \md \graceNotes {fad' mib do]}
  \mg dod,[ \md \graceNotes {mib' do la]}
  \mg sol,[ \md \graceNotes {do' la fad]}}
  \ottava #0 s2 \stemNeutral |

  s2 \ottava #1 <sold' sold'>8 \ottava #0 s s4 | s2 |
  <sol,, \whiteNote sib \whiteNote re sol>16 <la la'>4..
  <sol sib re sol>16 <la dod mi la>4.. |
  <sol sol'>16 <la la'>8. <sib sib'>16 <do do'>8 mi,32 la |
  <dod, \whiteNote fad \whiteNote sib \whiteNote do!>16 red'4..
  <dod, \whiteNote sol' \whiteNote sib dod>16 <red red'>4..*3/7
  \ottava #1 <si''' la'>8 \ottava #0 r |
  <dod,,, dod'>16 <red red'>8. <re re'>16 <mi mi'>8.~
  \t {<mi mi'>8 <sol sol'> <sib sib'>} |
  <dod dod'>16 <red red'>4..
  <dod dod'>16 <red red'>4..*3/7
  \ottava #2 <fa' fa'>16 <sol sol'> <si si'>8 \ottava #0 |
  <dod,, dod'>16 <red red'>8 <do do'>16
  <mi mi'>8 <sib sib'>16 <la la'>~ <la la'>8
  s32 \ottava #1 s16.

  <sold'' sold'>8 <red red'>16 dod'
  <sold sold'>8 <sold sold'>16 la
  <red, red'> dod' <sold sold'>8
  <sold sold'>16 mi do' sib |
  <sold sold'>8 <red red'>16 dod'
  <sold sold'>8 mi16 do'
  sib <sold sold'> la <red, red'>
  <dod dod'>8 <sold' sold'> |
  \ottava #0
  <mi,, sol re'>16 <re la' mi'>8.
  r16 \ottava #1 <sold'' sold'> <red red'> dod' |
  <sold sold'>8 \ottava #0
  \t {\ind #"loco" mi16 la, re,} s4 |
  \t {<mi, la re>8 <fa sib mi> <sol do fa>~} <sol do fa> <la dod sol'> |
  <re, sol re'>16 <mi la mi'>8.
  \t {la16 re mi} \ottava #1 la32 re mi la |
  <sold sold'>8 <red red'>16 dod' <sold sold'>8 mi16 do' |
  sib <sold sold'> la <red, red'> dod' <sold sold'> mi do' |
  sib8 <sold sold'>16 red' dod <mi, mi'> do' sib |
  <sold sold'>8 \ottava #0 \ind #"loco"
  <fad,, do' re fa!> <sold re' mi sol!> |

  <la la'>2*2\laissezVibrer
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
  \pl {<re re'>8 sold' re' sold}
  \lightBeams {\tt {re,32 \graceNotes {fad la do mi}} s8
  \tt {re32 \graceNotes {fad la do mi}} s8}
  s2 \clef treble \ottava #1
  re''8 sold re' sold, re sold re' sold, |
  re sold re' sold, | \ottava #0
  \ind "loco"
  re8 sold, dod, sol
  \stemNeutral \lightBeam
  \mg mib32 \md \graceNotes {fa' re si}
  \mg sib, \md \graceNotes {mib' do la}
  \mg \clef bass fad, \md \graceNotes {lab' fa re}
  \mg \t {la16 mi la,} |

  \lightBeams {
  \t {re, \graceNotes {la' mi'}} \md \graceNotes \t {mi' \mg la, re,}
  \t {re, \graceNotes {la' mi'}} \md \graceNotes \t {mi' \mg la, re,}
  \t {re, \graceNotes {la' mi'}} \md \graceNotes \t {mi' \mg la, re,}
  \t {re, \graceNotes {la' mi'}} \md \graceNotes \t {mi' \mg la, re,}
  \t {re, \graceNotes {la' mi'}} \md \graceNotes \t {mi' \mg la, re,}
  \t {re, \graceNotes {la' mi'}} \md \graceNotes {re'32 la' re mi}} | \mg

  <\whiteNote re,, la' \whiteNote mi' \whiteNote fa>16 sib'4..
  <\whiteNote sib, lab' \whiteNote re>16 sol'4.. |
  <fa, sib fa'>4 <reb lab' reb> |
  \lightBeams {
  \t {sol,16 \graceNotes {re' sol}} \graceNotes \t {la sol re}
  \t {sol, \graceNotes {re' sol}} \graceNotes \t {la sol re}
  \t {sol, \graceNotes {re' sol}} \graceNotes \t {la sol re}
  \t {sol, \graceNotes {re' sol}} \graceNotes \t {la sol re} |
  \t {sol, \graceNotes {re' sol}} \graceNotes \t {la sol re}
  \t {sol, \graceNotes {re' sol}} \t {re \graceNotes {la' re}}
  \t {sol, \graceNotes {re' sol}} \t {re \graceNotes {la' re}} |
  \t {sol, \graceNotes {re' sol}} \graceNotes \t {re la' re,}
  \t {sol, \graceNotes {re' sol}} \graceNotes \t {re la' re,}
  \t {sold, \graceNotes {re' fad}} \graceNotes \t {re sol re}
  \t {sold, \graceNotes {re' fad}} \graceNotes \t {re sol re}
  \t {fa, \graceNotes {dod' <sol' la>}} \graceNotes \t {dod, <sol' la> dod,}
  \t {fa, \graceNotes {dod' <sol' la>}} \graceNotes \t {dod, sol' dod,}}
  mi,32 sol sib dod la' \md dod'' red fad
  \mg \clef treble
  <mi,,, sol do re>16 <re la' mi'>4.. <mi sol la mi'>2 |
  <mi sol do re>16 <fa sib mi>8. <mi la fa'>16 <re sol mi'>2 <fa sib do>8. |
  \clef bass
  re,,8 \t {la'16 mi' la} re, la' <re mi>8 |
  \clef treble
  <mi sol re'>16 <re la' mi'>8.
  \md \t {mi'16 sib la} \t {re, \mg mi la,} \clef bass |
  <re,, re'>8 <do do'> \t {<si si'> <sib sib'> <sold sold'>} |
  <re'' fa do'>16 <mi sol re'>4.. |
  \t {re,16 la' mi'} re la' \t {mi' la, re,} mi la, |
  \t {re, la' mi'} re la' \t {mi' la, re,} mi la, |
  <re, re'>4 <sold, sold'> |
  \ottava #-1
  <red red'>8 <do do'> <sib sib'> |

  <la la'>2
}
