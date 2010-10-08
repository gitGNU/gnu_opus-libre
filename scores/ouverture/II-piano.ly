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

  <la la'>2*2\laissezVibrer | s1 R1
  <sib, sib'>32 <do do'>4...\laissezVibrer s2 |
  la''2\laissezVibrer
  \pl {<sib,, do la'>2~ <sib do la' do>\laissezVibrer
  \bracketDown "m.s." la2}
  {\t {sib'8 do4~} do~ \hideNote do2*2} |
  R1 \bracketDown "m.s." <do, la>4 <la do> q q q q q |
  \bracketUp "m.d." <la do> \bracketDown "m.s." <do la>
  <la do> q q q q | q q q q q q q |
  <sib' la'>4.\arpeggio sib8~ <sib la'>4 r8 |

  <sib la'>2 q q4. q | q q8~ q4 q~ q q2 |
  <si red>4 <si red>2 <do mi>4 <si red> <si re> <si red> |
  <do mi> <si red>2.\laissezVibrer s2. |
  <sold sol'!>4. <la sold'>8 <sib la'>8. <si lad'>16~ <si lad'>8 |

  <lad red fad si>4\laissezVibrer s2 \clef bass |
  R2. r4 <sol, mi'> <la red> <lad mi'> <si red> r |
  r <sib re mi> <la dod red> r <si dod mi> <lad sid red> |
  r <sol do mi> <fad si red> r <fa sib mi> <mi la red> |
  R2. \clef treble
  r4 r8 red'' fa, dod | mi4. la,8 fa dod' |
  mi2 r8 dod mi mi do' sold si si |
  \t {sol' red fad} \t {fad re' lad} dod4 |
  r4. \pl {<la,, dod mi la> <mib' sol sib> <reb fa lab>}
  {<dod' mi la> <mib sol sib mib> <reb fa lab reb>}
  <sold sold'>4\laissezVibrer s2 |
  \stemUp \mg mi,32 \md <mi mi'> la <la la'>
  do <do do'> dod <dod dod'> mi <mi mi'> fa <fa fa'> |
  \stemNeutral <sold sold'>2.\laissezVibrer R4.
  \t {r4 <sib, sib'> <mi, mi'>} |
  <la la'>4. <sib sib'>8 <sib sib'> <mi, mi'> |
  <sol la dod mi sol la>4. <la, la'>8 <sib' sib'> <mi, mi'> |
  <la la'>4 <la, la'>8 <sib' sib'> <sib sib'> <mi, mi'> |
  <la fa' la>4\laissezVibrer r2 | \clef bass
  <mi, la dod mi>4 <fa lab do> <fad lad dod> |
  <sol si re> <sold sid red> <sib re mi> |

  <fa lab sib reb>16 <sol sib do mib>4..\laissezVibrer s2
  \clef treble
  R2. s1*7/16*3 R8. s1*7/16*2 R1*7/16
  <mib' mib'>16 \mg \stemUp mi,, <fa fa'> re <reb reb'> mi <fa fa'> |
  \md \stemNeutral R2. s2. s1

  \bracketDown "m.s." <do'' la>4. <la do> q q q q q~ q4*4\laissezVibrer |
  R1*5
  do4. do do do\laissezVibrer | R2. R4.
  <si mi sold si>2 <si mi sol do> |
  \pl {<si mi fad> mi4 red}
  {do' la <si, fad' si>2} \clef bass |

  \pl <fa la si>2. {re'16 mi8.~ mi2}
  <re, re'>16 <mi mi'>8.~ <mi mi'>4 <fa fa'> |
  \clef treble <fa fa'>16 <sib sib'>4..~
  \t {<sib sib'>4 <do do'> <sib sib'>} |
  <fa fa'>16 <sol sol'>4.. <sib sib'>4 <reb reb'> |
  <sold sold'>16 <la la'>4..~
  \t {<la la'>4 <si si'> <la la'>} |
  <re re'>16 <mi mi'>4.. \clef bass
  <re,, re'>16 <mi mi'>8.~ <mi mi'>8 <sol sol'>~ |
  \t {<sol sol'>4 <la la'> <sol sol'>} \clef treble
  <mi mi'>16 <sol sol'>8.~ <sol sol'>8 <la la'>~ |
  \t {<la la'>4 <sib sib'> <la la'>}
  <sol sol'>16 <la la'>8.~ <la la'>8 <do do'>~ |
  \t {<do do'>4 <mib mib'> <do do'>}
  <sib sib'>16 <do do'>8. <mib mib'>16 <fa fa'>8. |
  <re' re'>16 <mi mi'>8. <re, mi re'>16 mi'8. |
  <re,, re'>16 <mi mi'>8. <sol sol'>8 <la la'> |
  \t {<sib sib'>16 <do do'>8. <mib mib'>4 <fa fa'>} |
  <fad fad'>16 <sold sold'>8. <si si'>8 <dod dod'> |
  \t {<re re'>16 <mi mi'>8. <re, re'>4 <fa fa'>}
  <sol sol'>16 <sold sold'>8. <lad lad'>8 <dod dod'> |
  <red red'>16 <mi mi'>8. s8 | s4.*7
  r4 \pl {\ottava #1 <re la'>16 <mi si'!>8.}
  {<re' sol sib re>16 <mi la do mi>8.} \ottava #0 |
  <re,, sol re'>16 <mi la mi'>~ <mi la mi'>4\laissezVibrer
  s4. r4 <mi mi'> |

  <re re'>16 re re re re re re re re re re re re re re re
  re re re re re re re re re re re re |
  re mi fa sol re8 mi fa sol16 re mi8 fa
  sol re16 mi r8 fa sol re |
  mi fa sol16 re mi8 fa16 sol8 re16 mi fa sol8
  re16 mi fa8 sol re16 mi fa sol re mi |
  fa8 sol16 re mi fa8 sol16 re mi fa8 r16 sol8 re16
  mi fa sol8 re mi16 fa sol re mi fa |
  sol8 re16 mi sib fa' sol8 <la, re>16 mi'8 fa16
  <si, re>8 <sol mi'>16 <la fa'> re sol re la
  mi' fa sib, sol' re do mi fa |
  re8 mi fa sol16 re r mi8 fa16~ fa sol8 re16
  mi8 fa sol <re re'>16 <mi mi'> r <fa fa'>8 <sol sol'>16 |
  \pl r2 <fad' la re>\laissezVibrer
  <re, sib'>8 <mi do'> <fa reb'> <sol mib'>16 <re sib'>
  r <mi do'>8 <fa reb'>16 <sol mib'>8 r sib16 do reb mib |
  \pl {s8 re,16 s re s re s} {re re re re re re re re}
  s4*5 s4*7
  <sol do fa>8 <la re sol> <sib mib lab> <do fa sib>
  <sol do fa>16 <la re sol>8 <sib mib lab>16 <do fa sib>8
  <sol do fa> <la re sol>16 <sib mib lab> <do fa sib>8
  <fa sib mib> <sol do fa> <lab reb solb> <sib mib lab> |
  %% First version:
  %s4*7*2
  %% Second version:
  <si mi la>\laissezVibrer s s1 |
  \mg \stemUp sold,,,32 dod red sold sold dod \md red sold
  sold dod red sold sold dod red sold |
  \ottava #1
  \t {<sold mi'!>8 <sold mi'>16 dod, <sold' mi'> dod,}
  \t {<sold' mi'!>8 <sold mi'>16 dod, <sold' mi'> dod,}
  <sold' mi'> <sold mi'> \t {dod, <sold' mi'> dod,}
  <sold' mi'> <sold mi'> \t {dod, <sold' mi'> dod,}
  <re sold dod re>8 <sold dod>16 <mi mi'> <sold dod>8
  <fa fa'> <sold dod>16 <sol sol'> <sold dod>8 \ottava #0 | %%%

  R2. <la,,, do>4. <la do> q q q q |
  q2\laissezVibrer s4 | r \ind "simile" <la do>2\laissezVibrer |
  s2.
  re16 <mi, mi'>4..\laissezVibrer s4 s2.
  \ind "(ordin.)" re'2.\startTrillSpan ~ re~ re~ re2\stopTrillSpan |
  s1*2
  <re re'>4 r16 <mi mi'>8. <re re'>4 r16 <mi mi'>8. <re re'>4 |
  <re re'>16 <mi mi'>8.~ <mi mi'>2 re\startTrillSpan |
  <re mi>4\laissezVibrer \stopTrillSpan s4. |
  \clef bass <re, fad re'>16 <mi la mi'>8
  \clef treble <fad si fad'> <la re la'> <si fad' si>16 <re la' re>8
  <mi si' mi>2\laissezVibrer s8 |
  \clef bass <re, la' re>16 <mi do' mi>8
  \clef treble <sol re' sol>16
  <sib mi sib'>8 <do sol' do> <re sib' re>16
  <fa do' fa>2\laissezVibrer s16 |
  \clef bass <re, la' re>16 <mi si'! mi>8
  \clef treble <sol sol'>16 <sib sib'> <do do'> <re re'>8 <fa do' fa>16
  <lab re lab'>4~ <lab re lab'>16 |
  <fa fa'> <lab lab'> <sib sib'>8 <do do'>16 |
  <mib sib' mib>4~ <mib sib' mib>16 |
  \ottava #1
  <do do'>16 <mib mib'> <solb solb'> <lab lab'> <sib sib'> |
  <reb reb'>4~ <reb reb'>16 |
  <do, do'> <mib mib'> <solb solb'> <lab lab'> <sib sib'> |
  <reb reb'>8 \ottava #0
  \lightBeams { \graceNotes {sib32 lab fa re}
  do \graceNotes {re fa lab sib lab fa re}
  do \graceNotes {re fa lab sib lab fa re}
  do \graceNotes {re fa lab sib lab fa re} |
  do \graceNotes {re fa lab sib lab fa re}
  do \graceNotes {re fa lab sib lab fa re} |
  do \graceNotes {re fa lab sib lab fa re}
  do \graceNotes {re fa lab sib lab fa re} |
  do \graceNotes {re fa lab sib lab fa re}
  do \graceNotes {re fa lab sib lab fa re} |
  do \graceNotes {re fa lab sib lab fa re}
  do \graceNotes {re fa lab sib lab fa re |
  mib' do sib lab fa lab sib do
  mib do sib lab fa lab sib do | \ottava #1
  solb' mib reb dob lab dob reb mib
  solb mib reb dob lab dob reb mib |
  lab fa mib reb sib reb mib fa
  lab fa mib reb sib reb mib fa}
  \tt {la \graceNotes {fad mi re si}}
  \tt \graceNotes {la fad mi re si} \ottava #0 }

  \mg \ottava #-1
  \t {<la,,,, la'>16 \ottava #0 \graceNotes {mi''' si'}}
  \md \graceNotes {<re mi>32 la' si re}
  \lightBeams {\stemUp 
  mi \graceNotes {re si la \t {<re, mi>16 \mg si mi,}}
  \t {la, \graceNotes {mi' si'}}
  \md \graceNotes {<re mi>32 la' si re}
  mi \graceNotes {re si la \t {<re, mi>16 \mg si mi,}} |
  \t {la, \graceNotes {mi' si'}}
  \md \graceNotes {<re mi>32 la' si re}
  mi \graceNotes {re si la \t {<re, mi>16 \mg si mi,}}
  \t {la, \graceNotes {mi' si'}}
  \md \graceNotes {<re mi>32 la' si re}
  mi \graceNotes {re si la \t {<re, mi>16 \mg si mi,}}
  \stemNeutral } |

  \md \ottava #1
  <sib''' re sib'>16 <do mi do'>8 <reb fa reb'>16
  r <mib sol mib'>8 <sib re sib'>16 <do mi do'>8 <reb fa reb'>
  <mib sol mib'> <sib re sib'>16 <do mi do'> |
  <reb fa reb'>8 <mib mib'>16 <sib sib'>
  <do mi do'> <reb fa reb'> <mib sol mib'>8
  <sib re sib'>8. <do mi do'>16~ <do mi do'>8 <mib sol mib'> |
  <dod dod'>16 <red red'>8 <mi mi'>16 r <fad fad'>8 <dod dod'>16
  <red red'> <mi mi'> <fad fad'>8
  <dod dod'>16 <red red'> <mi mi'> <fad fad'> |
  <dod dod'> <red red'> <mi mi'> <fad fad'>
  <sold sold'>8 <dod, dod'>16 <red red'>
  <mi mi'> <fad fad'> <sold sold'>8
  <dod, dod'>16 <red red'> <mi mi'> <fad fad'> |
  <sold sold'>8 <dod, do'>16 <red red'>
  <mi mi'> <fad fad'> <sold sold'> <la la'>
  <lad lad'> <si si'> <do do'> <do do'> | \ottava #0
  \clef bass r2 |
  <re,,,, mi la re>4 <re mi sold si re> |
  <re mi sol la sib re> <fad sold si dod re> |
  <re mi lab do re> r2 |
  \clef treble \ottava #1
  \stemDown <la'''' re mi la>16
  \mg \stemUp <la,,,, re mi la>8.~ <la re mi la>2 \md s4 |
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
  \pl {<mi' mi'>2 \laissezVibrer %%FIXME
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

  <la la'>2 la~ la la \pl la la''1*1/2\laissezVibrer
  la,,2~ la la <la la'>4 la2. | la4 la2 la4 |
  <la la'>2*2\laissezVibrer \ottava #0 s1 s2. |
  \ottava #-1 <la la'>2*2\laissezVibrer \ottava #0 s2. s1 s2. |
  \clef treble <la''' do>4 <la do> <la do> r8 |
  q4 q q q q q q | q q q q q q q |
  \pl {lab2 lab lab4. lab lab2*2\laissezVibrer}
  {<mi' sol>4 <mi sol>2 <red fad>4 <mi sol> <fad sol> <mi sol>
  <red fad> <re sol>2.} s2.
  <la do>8 q q q <la dod> <sib re> <si red> |

  <sold do mi>4\laissezVibrer s2 \clef bass
  R2. \ottava #-1
  <sold,, fadd'>4*3\laissezVibrer <dodd, red'>\laissezVibrer
  <sold' sold'>\laissezVibrer <sold sold'>\laissezVibrer
  <sold fadd'>\laissezVibrer <dod, dod'>\laissezVibrer
  <dod sid'>\laissezVibrer <sid dod'>\laissezVibrer
  <la sold'>\laissezVibrer <dod sid'>\laissezVibrer
  <fadd sold'>\laissezVibrer <sid, dod'>\laissezVibrer
  <la sold'>2\laissezVibrer \ottava #0 s4 s2.
  <sold' sold'>2\laissezVibrer s4
  \stemDown <mi'' mi'>16 \md <la la'> <do do'>
  <dod dod'> <mi mi'> <fa fa'> \mg \stemNeutral |
  <sold,,, sold'>4 <sold sold'> q q q8~ q q q q |
  <dod mi sold dod>4\laissezVibrer <dod' mi fa do'!> <dod mi fa do'> |
  <sold, sold'>\laissezVibrer <dod' fa sol do!> <dod fa sol do> |
  \ottava #-1 <dod,, do'!>\laissezVibrer \ottava #0
  <dod'' sol' do!> <dod sol' la do> | \ottava #-1
  <re,, re'>4\laissezVibrer r <red red'> |
  mi2.\startTrillSpan ~ \afterGrace mi2. {red16[ mi]\stopTrillSpan } |
  \repeat tremolo 16 { fa32 fa'} \ottava #0
  \repeat tremolo 12 { fa, fa'}

  \pl { r16 <fa, fa'>8 <fa' fa'> <fa fa'>
  r16 <fa mi'>8 <fa mi'> <fa mi'>
  r16 <fa mib'>8 <fa mib'> <fa mib'>}
  {<mib' mib'>16 fa, fa' fa reb fa fa
  fa' mi, reb' mi, fa mi mib
  reb' mib, mib mib fa mib reb}
  R8.
  \pl { s16 <sol, fad'>8 <fad mi'> <fa mib'>
  s16 <fad mi'>8 <fa mib'> <mi re'>}
  {<mib' mib'>16 fad fa mi reb mib fa
  mib' mi, fa mib reb re fa}
  R1*7/16
  r16 \ottava #-1 \stemDown <mi,, mi'>8 <re re'> <mi mi'>
  \ottava #0 \stemNeutral R2.
  \ottava #-1 re32 mi re' mi \ottava #0
  re mi re' mi re mi \md re' mi re mi re' mi
  re mi re' mi \ottava #1 re mi re' mi
  \pl {r4 re,\startTrillSpan \stopTrillSpan } %%FIXME: issue 1297.
  re'2\startTrillSpan la'64\stopTrillSpan mi re la
  \t {mi32 re la} \ottava #0
  la'64 mi re la \t {mi32 re la}
  la'64 mi re la \t {mi32 re la} la' mi re la |
  \mg s2.*3 s4. s1 R1*5 R2.*3 R4. R1*2

  \ottava #-1
  <mi,, mi'>2 <mi mi'>4~ <mi mi'> <mi mi'>2 |
  \t {<mi mi'> <mi mi'> <mi mi'>} <mi mi'> <mi mi'> |
  <mi mi'> <mi mi'>4 <mi mi'> <mi mi'>4. <mi mi'> <mi mi'>4 |
  <mi mi'> <mi mi'> <mi mi'>4. <mi mi'>8~
  <mi mi'>4 <mi mi'> <mi mi'> <mi mi'> |
  \t {<mi mi'>2 <mi mi'>4} <mi mi'> <mi mi'> |
  \t {<mi mi'> <mi mi'> <mi mi'>} <mi mi'> <mi mi'> |
  \t {<mi mi'> <mi mi'> <mi mi'>} <mi mi'> <mi mi'> |
  \t {<mi mi'> <mi mi'> <mi mi'>} <mi mi'> <re re'> |
  \ottava #0
  \ind "loco" <mi' mi'>8 <dod dod'>16 <dod' dod'> <si, si'> <si' si'> |
  <lad, lad'> <lad' lad'> <sol, sol'> <sol' sol'> <fad, fad'> <fad' fad'> |
  <mi, mi'> <mi'' mi'> <re, re'> <re' re'> <si, si'> <si' si'> |
  <la, la'> <la' la'> <sold, sold'> <sold' sold'> <fa, fa'> <fa' fa'> |
  <mi, mi'> <mi'' mi'> <red, red'> <red' red'> <dod, dod'> <dod' dod'> |
  <lad, lad'> <lad' lad'> <sold, sold'> <sold' sold'> <sol, sol'> <sol' sol'> |
  <mi, mi'> <sib'' sib'> <sol, sol'> <sol' sol'> <fa, fa'> <fa' fa'> |
  <mi, mi'> <si'' si'> <la, la'> <la' la'> <fad, fad'> <fad' fad'> |
  <mi, mi'>4 s |
  <re' sib' re>16 <mi do' mi>~ <mi do' mi>4\laissezVibrer
  \pl {\ottava #-1 <mi, si' re>4.}
  <fa' sold si re mi> \ottava #0 r4 <mi mi'> |

  <re re'>16 r r8 r2 r1 | R1*7/4
  re'16 re re re re re re re re re re re
  re re re re re re re re re re re re re re re re |
  re mi fa sol re8 mi <re fa> sol16 re
  mi8 fa <re sol> re16 mi re8 fa sol re |
  mi16 fa <sol la>8 re16 mi fa8 sol16 re mi8
  fa16 sol re8 mi16 fa sol8 re16 mi fa8 sol16 re mi8 |
  fa sol re mi fa sol re mi fa sol
  <re, re'> <mi mi'> <fa fa'> <sol sol'> |
  \pl <re sol do>2\laissezVibrer r2
  <sib' solb'>8 <do lab'> <reb la'> <mib si'>16 <sib sol'>
  r <do lab'>8 <reb la'>16 <mib si'>8 r sib16 do reb mib |
  <re, re'>8 s s4
  \pl {re'16 s re s re s re s
  <re, re'> s <re re'> s <re re'> s <re re'> s
  <re re'>4*1/2 re'16 s <mi, mi'>4 <fa fa'> <sol sol'>
  <re re'> <mi mi'> <fa fa'> <sol sol'> }
  {re'16 <re re'> re <mi re'> re <fa re'> re <sol re'>
  re <re re'> re <mi re'> re <fa re'> re <sol re'>
  re <re re'> re <re re'> mi <re re'> re <re re'>
  fa <re re'> re <re re'> sol <re re'> re <re re'>
  re <re re'> re <re re'> mi <re re'> re <re re'>
  fa <re re'> re <re re'> sol <re re'> re <re re'>}
  <si mi la>8 <dod fad si> <re sol do> <mi la re>
  <si mi la>16 <dod fad si>8 <re sol do>16 <mi la re>8
  <si mi la> <dod fad si>16 <re sol do> <mi la re>8
  <dod, fad si> <red sold dod> <mi la re> <fad si mi>
  %% First version:
  %\ottava #-1 <re, re'>16 <re re'> <mi, mi'> <mi' mi'>
  %<fa, fa'> <fa' fa'> <sol, sol'> <sol' sol'> \ottava #0
  %<re re'> <re' re'> <mi, mi'> <mi' mi'>
  %<fa, fa'> <fa' fa'> <sol, sol'> <sol' <sol'>
  %<re re'> \md <re' re'> \mg <mi, mi'> \md <mi' mi'>
  %\mg <fa, fa'> \md <fa' fa'> \mg <sol, sol'> \md <sol' sol'>
  %<re re'> <re' re'> <mi, mi'> <mi' mi'> |
  %<fa, fa'> <fa' fa'> <sol, sol'> <sol' sol'>
  %\mg <re,, re'> \md <re' re'> \mg <mi, mi'> \md <mi' mi'>
  %\mg <fa, fa'> \md <fa' fa'> \mg <sol, sol'> \md <sol' sol'>
  %\mg <re,, re'> <re' re'> <mi, mi'> <mi' mi'>
  %<fa, fa'> <fa' fa'> <sol, sol'> <sol' sol'>
  %<re re'> \md <re' re'> \mg <mi, mi'> \md <mi' mi'>
  %\mg <fa, fa'> \md <fa' fa'> \mg <sol, sol'> \md <sol' sol'> \mg
  %% Second version:
  \t {<dod sold'>8 <dod sold'>16 <mid, dod'> <dod' sold'> <mid, dod'>}
  \t {<dod' sold'>8 <dod sold'>16 <mid, dod'> <dod' sold'> <mid, dod'>}
  \t {<dod' sold'>8 <dod sold'>16 <mid, dod'> <dod' sold'> <mid, dod'>}
  \t {<dod' sold'>8 <dod sold'>16 <mid, dod'> <dod' sold'> <mid, dod'>}
  \t {<dod' sold'>8 <dod sold'>16 <mid, dod'> <dod' sold'> dod} |
  \stemDown \t {mid, dod' sold'} \t {mid, dod' sold'}
  \stemNeutral \t {mid, dod' sold'} \t {mid, dod' sold'} |
  \t {<mid, dod'>8 <mid dod'>16 sold' <mid, dod'> sold'}
  \t {<mid, dod'>8 <mid dod'>16 sold' <mid, dod'> sold'} |
  <mid, dod'> <mid dod'> \t {sold' <mid, dod'> sold'}
  <mid, dod'> <mid dod'> \t {sold' <mid, dod'> sold'} |
  <mib' lab reb mib>8. <fa fa'>16~ <fa fa'>8
  <fad la re fad>~ <fad la re fad>16 <sold sold'>8. | %%%

  R2. s2.*6
  <re, re'>16 mi4..\laissezVibrer s4 s2.*4 s2 |
  \lightBeams {
  \t {mi16 \graceNotes {la re}} \graceNotes {mi32 fa sib re
  \t {mi,16 la re} \md mi32 fa sib re
  \t {mi,16 la re} mi32 fa sib re \ottava #1
  \t {mi,16 la re} mi32 fa sib re}
  \pl \lightBeams {mi32 \graceNotes {re sib fa mi re la mi}}
  mi''32*8 \ottava #0 \graceNotes {
  \t {re,16 sib fa} mi32 re la mi
  \t {re'16 sib fa} mi32 \mg re la mi
  \t {re'16 sib fa} mi32 re la mi}}
  \ottava #-1
  <re, re'>4 r16 <mi mi'>8. <re re'>4 r16 <mi mi'>8. r16 <mi mi'>8. |
  \ottava #0 \ind "loco"
  <re' re'>16 <mi mi'>8.~ <mi mi'>1 |
  <mi, mi'>2\laissezVibrer s8 |
  mi'4. mi8 mi | <mi, mi'>2\laissezVibrer s8 |
  mi'8 mi mi mi8. <mi, mi'>2\laissezVibrer s16 |
  mi'4~ mi16 <si si'>8 <re re'> |
  <mi mi'>4~ <mi mi'>16 |
  <mi, mi'>8. <re' re'>8 |
  <mi mi'>4~ <mi mi'>16 |
  <mi, mi'>4~ <mi mi'>16 |
  <mi' mi'>4~ <mi mi'>16 |
  <mi, mi'>4~ <mi mi'>16 |
  <mi' mi'>8 \clef treble \lightBeams {
  \graceNotes {la'32 do re mi}
  sol \graceNotes {mi re do la do re mi} |
  sol \graceNotes {mi re do la do re mi}
  sol \graceNotes {mi re do} la8 | \clef bass
  <mi,, mi'> \graceNotes {la''32 do re mi}}
  sol16 <fad,, fad'>8. | \lightBeams {
  <mi, mi'>8 \graceNotes {la''32 do re mi}}
  sol16 <si,,, si'>8. | \lightBeams {
  <mi, mi'>8 \graceNotes {la''32 do re mi}}
  sol16 <sold,,, sold'>8. | \lightBeams {
  <mi mi'>8 \graceNotes {la''32 do re mi}}
  sol16 \ottava #-1 <dod,,,, dod'>8. |
  <red red'>4 <dod dod'>8 <red red'>~ |
  <red red'> <dod dod'> <red red'>4 |
  <dod dod'>8 <red red'>
  <sib sib'>16 <do do'>8. <dod dod'>16 <red red'>8. |
  %% This might not be needed, but let's play it safe anyways.
  s8 \ottava #0 s4. s2 | s1
  \t {la'16 mi' si'?} la mi' \t {si' mi, la,} si mi,
  \t {la, mi' si'} la mi' \t {si' mi, la,} si mi, |
  \t {la, mi' si'} la mi' \t {si' mi, la,} si mi,
  \t {la, mi' si'} la mi' \t {si' mi, la,} si mi, |
  \t {la, mi' si'} la mi' \t {si' mi, la,} si mi,
  \t {la, mi' si'} la mi' \t {si' mi, la,} si mi, |  
  \t {la, mi' si'} la mi' \t {si' mi, la,} si mi,
  \t {la, mi' si'} la mi' \t {si' mi, la,} si mi, |
  \t {la, mi' si'} \t {la mi' si'}
  \t {la, mi' si'} \clef treble \t {la mi' si'}
  \t {la, mi' si'} \t {la mi' si'} | \clef bass
  R2
  <fad,,, fad'>4_\markup \indic "sopra" <fa fa'> <mib mib'> <do do'> |
  <sib sib'> r2 | s2. \ottava #-1 la,4 \ottava #0
}
