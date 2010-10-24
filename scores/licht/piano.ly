%-- In einem unbestimmten Licht -- piano.ly -----------------------%
% (c) 2001 - 2010 Valentin Villenave <valentin@villenave.net>
\include "italiano.ly"
PianoMd =
\relative do'' {
  r4 R2*2 R1 s1. R2.
  \pl { s2. do4. re}
  {<sol, sol'>2.~ sol'}
  <lab, sol'>2. \times 3/4 {si8 mi fad lad}
  \times 3/5 {mib re reb mi, lab} |
  \pl {sol4 do re lab} { sol'2. sol4}
  do re8 lab~ | lab4.~ lab8 <mi si'> <fad mi'>
  <fa sib> <sib, mib> <mib, re'> <do fa> <la' dod> <lab si>|
  <sol sol'>2. \grace {fa'16 sol} \times 3/2 {fa8 mi16 la,}
  fa'8 <sib, sib'> <do do'> |
  \pl {solb8. sib} solb'4.
  <la, la'>8 <re re'> <mi mi'> <lab, lab'>4.
  \pl {s4. s8 mib'4} {<reb reb'>4.~ <reb reb'>}
  <sib re sib'> \pl {reb,8. mi} <mib mib'>4. <sib sol'> |
  R1.
  do8 sol' si fad' re sol,
  mi' si' re la' dod, fad, sold red |
  R1*15/16 R1.
  r2. <sol, sol'>4.~ sol16 do re fa do' re |
  \set tieWaitForNote = ##t
  \repeat tremolo 8 {lab32~ sol'~} <lab, sol'>4 |
  \set tieWaitForNote = ##f
  R1*5/8*2 R1.*2 R1 R1*7/4*3
  R2. R1*5/4*2 R1 R1*7/4
  \ottava #1 <la re mib la>1*7/4 \arpeggio \laissezVibrer
  \ottava #0 R1*7/4
  <si,, dod lad'>1*7/4

  R1*14/4 \clef bass
  mi,,4 sold do re2 si4 dod lad sid |
  mi,2 sold4 do re si dod la si fad2 |
}

PianoMg =
\relative do {
  \clef bass
  do4~ do8 si mib re la sib mi,! fa |
  \t {solb reb' lab'~} lab2 sol4 |
  <do,,, do'>8 \md sol''' do sol' do, sol
  \mg do, sol' do sol' do, sol |
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' sol, do, |
  do, sol' do fa, do' sol'
  sol, do sol' reb, lab' fa' |
  \clef treble do' sol' do sol do, sol \clef bass
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do \stemDown sol' do, sol |
  do, \stemNeutral sol' do sol' do, sol
  do, sol' do sol do sol |
  <do,,, do'> sol'' do sol' do, fa,
  do' re sol do sol re | R1*14/8
  R1*15/16
  <do,, do'>8 si' fad' dod' re la'
  \clef treble sol' do sol \clef bass do, sol fa |
  do sol' do sol' do, sol
  do, sol' do sol' do, sol |
  \set tieWaitForNote = ##t
  \clef treble \repeat tremolo 8 {sol'32~ sol'~} <sol, sol'>4 |
  \set tieWaitForNote = ##f
  R1*5/8*2 R1*12/8*2 R1 R1*7/4*3 R2. R1*5/4*2 R1 R1*7/4
  <la red mi>1*7/4 \arpeggio\laissezVibrer |
  R1*7/4 \clef bass <sol,, re'>1*7/4 |

  \ottava #-1
  do,,4 fa sol reb2 mi4 la si mib, lab2 solb4 sib re |
  do, mi lab sib2 sol4 la fad sold |
  do,2 mi4 lab sib sol la fa sol re2 |
  do4 mi lab sib2 sol4 la fad sol |
  do,2 mi4 lab sib sol la fa sol mi fad |
  re2 sib'4 |
  \ottava #0
  do mi sol fad | si2 fa4 reb |
  do mi sol2 fad4 si fa reb2 |
  do4 mib sol la mi |
  do mib sol la re, r2 |
  <do si'>4 <re la'>2\fermata |
  <do sol'>4 <mib sib'> <fad dod'>2\fermata |
  <do do'>4 <lab' mib'> sib mi2\fermata |
  <do, lab'>4 <fa do'> sib mib dod fad4. |

  \pl <do, sol' re'>2. <fa' sib fa'> |
  R2*2 R8 R2 R1*5/4 \clef treble
  <mib'' sib'>2 <la, mi'>4 <re, la'>4. <sol, re'>8 |
  \clef bass <do, sol'>4 <la mi'> <fa do'> <reb lab'> |
  <do sol'>1\fermata |

  R2. R1*11
  \ottava #-1
  <sol red'>1 <sib fad'> <mid, dod'> <do' la'> |
  re <fa, do'> \ottava #0 |
  <mib' mib'> <re re'> <la la'> <mi mi'> |
  <fa fa'> <fad fad'> <do' do'> <dod dod'> |
  <sold sold'> <sol sol'>4 <sol sol'>2.~ |
  <sol sol'>2 \ottava #-1 <si, si'>~ <si si'>2. |
  \ottava #0 sib'1 <si' mi la re>1\fermata |

  \ottava #-1
  do,,4 fa sol \ottava #0 do fa sol reb' sib |
  do, fa sol si mi la <re, sib'> |
  do, fa sol do sol' do sol do, sol |
  fa mib' lab \clef treble <si fa' sol si>
  \clef bass <mib, dod' mib> <sol, fa'> |
  R1*5
  <reb lab'>4 <mib la>2.\fermata |

  R1*3 R1*7/4 R1*5/4*2
  \ottava #-1
  \graceNotes {do,8*1/3 sold' si \md mi sib' re}
  \mg dod,2*2\fermata |
  \ottava #0 R1*5/4 \ottava #-1
  \graceNotes {do,8*1/3 sol'! sib \md fa' si mi}
  \mg dod,2*2\fermata |
  \ottava #0 R1*5/4*2
  R2. <sold' la'>2. fad4 |
  \ottava #-1 mib,1 do re1*3/2 |
  \ottava #0 <solb' lab'>2 <fa sol>4 |
  \ottava #-1 mib,1 si2. re do~ do2 |
  do2.~ do \ottava #0
  <do' do'>2 <do do'> |
  <sol sol'>1*3/2
  <fa fa'>1*5/4~ <fa fa'>2. |
  <fa fa'>\breve q q q1 q |
  <fa fa'>2. <re re'>2 |
  <fa fa'> <re re'>4 <sol sol'> |
  <fa fa'>1*7/4 |

  \ottava #-1
  do4 mi lab sib sol la r |
  do, mi sol fad sib |
  do, mi lab sib sol la r8 |
  do,4 mi sol fad si |
  do,8 \md mi' \mg mib, \md sol'
  \mg fa,4 r |
  do8 \md do' \mg fa, \md fa'
  \mg sol, \md sol' \mg reb,
  \md <si''' do reb>4 reb,8 \mg |
  mib,, \md mib' \mg lab, \md lab' \mg sib, \md sib' |
  \mg re,, \md re' \mg sol, \md sol'
  \mg dod, \md dod' fad, | \mg
  \ottava #0
  <do, do'> \md do'' \mg <fa,, fa'> \md fa''
  \mg <sol,, sol'> \md sol'' \mg <reb,, reb'>2
  <mi mi'>8 \md mi'' \mg <la,, la'> \md la''
  \mg <si,, si'> \md si'' \mg <mi,, mi'> \md mi''
  \mg <sib,, sib'> r |
  la4 r r2 re8 re' |
  sol, sol' do, do' reb, reb' lab, lab' |
  reb,, reb' mib, mib' lab, lab'
  mi, mi' la, la' |
  si, si' fad, fad' dod, dod'
  <la, fadd' sold>4 r | r <la fadd' sold> r2. |

  R2. R1*5/4 R2 R1*5/8
  <sol' re' la'>4. r8 r4 | R2.
  r4 <re la' mi'> r2 <sol re' la'>4 |
  r1 <sol, re' la'>4 | r <lab mib' sib'> r |
  <do sol' re' mi>1 r4 |
  r2. <fad, sold dod la'>2 |
  <do' sol' re' mi>1 r4 |
  <do sol' re' mi>1 r4 |
  \ottava #-1
  <do, sol' re' mi>1 r4 |
  \ottava #0 R1*5/4*2

  do'''2 sib4~ sib lab solb fa2. |
  mi2 r R1*3/2
  <do,, do'>1.\laissezVibrer | R1*12/8*4
  R2*2 R2.
  <do'' sol'>4 <la mi'> <fa do'> <reb lab'> |
  <do do'>2 <sol sol'> |
  <do, do'>8 \md sol''' do sol' do, sol \mg
  do, sol' do \md sol' do sol' \mg R1*5/4*2 |
  do,,,8 sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' \clef treble <do mi>
  <sol' si> <do, mi> \clef bass sol
  do, sol' \clef treble <do mi>
  <sol' si> <do, mi> \clef bass sol
  do, sol' \clef treble <do mi>
  <sol' si> <do, mi> \clef bass sol |
  \pl reb,1*3/4 {do'8 sol' do sol' do, sol}
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  \pl <lab, do>1*3/4 {\hideNote do8 sol' do
  sol' do, sol} do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol
  do, sol' do sol' do, sol |
  do, sol' do sol' do, sol
  r sol do sol' do, r4 sol8 do sol'4. |
  \ottava #-1 <do,,,, do'>1*3/4\laissezVibrer
  \ottava #0 R2 R1*3
  <dod''' re>1
  R1-\fermataMarkup R2
  <fa,, reb' solb>2~ <fa reb' solb>4~
  q16~ q4~ q4. |
  <do sol' re'!>1\fermata
}