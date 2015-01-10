%-- Chansons Oulipiennes -- quandjepense.ly -----------------------%
% (c) 2012 Mike Solomon <mike@mikesolomon.org>.

\language "italiano"

QuandjepenseGrille =
\chordmode {
  r4
  fa2.:m9 |
  lab2.:7/sib
  mib4. do4.:
  fa2.:m
  fa4.:m/do sib:/re
  mib2.
  fa4.:m sib
  mi2.:dim
  fad4.:dim7 re:7
  sol2.:m
  fa:m
  sib
  do2.:m %c4.:m %aes
  fa:m %bes
  sib2. %ees2.
  fad4.:dim fa:m
  sib: mib:
  lab2.:maj7
  %bes4.: ees:
  sib2.: mib:
  lab2.:maj7
  sol
  do:m
  fa:m
  sib
  do4.:7 dob:maj7
  sib2.
  mib4. lab4.
  reb:5-
  do:7
  fa:m
  sib
  do4.:m fa4.:m
  sib2.
  do4.:m fa4.:m
  sib2.
  do4.:m fa4.:m
  sib4. do:m
  fa2.:m
  sib1. s
  mib2.:9
}

QuandjepenseVoix =
\relative do' {
  \tocItem \QuandjepenseToc
  \time 6/8
  \key mib \major
  \partial 4
  \tempo Lent
  sib8 do
  sol'4. r8 sib,8 do |
  sol'4. r8 sib,8 do |
  sol'4. ~ sol8 lab4 |
  fa2. |
  do'4. \times 3/2 { do8 sib } |
  sol2. |
  do4. \times 3/2 { do8 sib }
  sol4. ~ sol8 lab sol |
  do,4. ~ do8 sib4 |
  re2. |
  \times 3/2 { r8 sol } \times 3/2 { lab sib }
  lab4 lab sol |
  do,4. ~ do8 lab' sol |
  do,4. ~ do8 sib4 |
  re2. |
  r8 do re mib fa lab |
  do4. \times 3/2 { do8 sib } |
  sol4. r4 lab8 |
  do4. \times 3/2 { do8 sib } |
  sol4. r8 lab sol |
  do,4. ~ do8 sib4 |
  re4. r8 do sib  |
  sol4. \times 3/2 { sol8 lab } |
  do4. r8 sol lab |
  do4. r8 lab' do,8 |
  sol'4. ~ sol8 lab4 |
  fa4. ~ fa8 sol lab |
  do4. \times 3/2 { do8 sib } |
  sol4. ~ \times 3/2 { sol8 sib } |
  sol4. \times 3/2 { lab8 sol } |
  do,4. ~ do8 sib4 |
  re4. mib8 fa lab |
  do4. \times 3/2 { do8 sib } |
  sol2. |
  do4. \times 3/2 { do8 sib } |
  sol4. ~ \times 3/2 { sol8 lab, } |
  fa'4. ~ \times 3/2 { fa8 do } |
  re2.
  lab'2. % fa2.
  % This was not in the original.
  % But it somehow seems amusing -vv
  ~ lab~ lab |
  fa2.\fermata \bar "|."
}

%% Piano part contributed by V. Villenave:
QuandjepensePianoMd =
\relative do' {
  \key mib \major
  r4 r8 sib'( do sol4.) r8 re( sol do,4.)~ do8 sib do
  <sol sib re>4. |
  r8 sol( lab do mib fa
  <mib sol lab>4.)^~ <sib fa' lab> |
  \pl {fa'8.-- mib-- re-- do--} <sib sol'>2.
  <do mib lab>4.^~ <re fa lab>
  <sib reb sol>2.*1/6 sib'8\( do \acciaccatura do reb4.\)
  \pl <fad, la>4. {do'8^( re do <fad, sib mib?>4.)}
  \pl <la sib re>4. \times 6/4 {r16 la'(^\pp sib re)}
  \times 6/4 {sol( re) \times 2/3 {sib32( re sib} la16)}
  lab2. r8. do,-- mib-- re--~
  re8 lab'( sol do,4.)~
  do8 lab'( sol do,4.)
  r8 re,( mib fa lab sib
  <mib, la do>4.)
  \pl {<sol lab> <sib re> <sib mib> <sol lab do>4}
  {\times 6/4 {re'16(^\< mib fa sol)}
  lab8.--^\mf sol-- fa-- fad-- sol4-- }
  re16( sol do, mib fa lab \times 2/3 {sib do re)} |
  <mib, lab mib'>4.(\arpeggio re'8. do) |
  sib8( sol re do8. sib)
  <sib, do mib>2.
  r4. <si mib fa sib!>4-- \times 2/3 {sol'16( fa mib} |
  <do re>4.) <sib mib> \times 3/2 {r8 <sol lab do mib>}
  \times 3/2 {r <sol do mib>} \times 3/2 {r <lab re>}
  \times 3/2 {r <do mib lab>}
  <sib re mib sol>8. sib' <mib, solb sib>4.~ <re lab' sib>8.
  do''-- sib-- lab-- |
  << {\oneVoice <sol, re' sol>4-- sol16 do mib sol8.
  \times 2/3 {lab,16 dob mib~}
  \voiceTwo <lab, dob mib sol>2.~ <lab mib' sol>} \\
  {s2. \voiceOne r8. dob'~ dob8 sib4 r8 dob4 sib8 lab sol} >>
  <sol, lab mib'>4.~ mib'8( re do
  <mib, lab do re>4.)~ <mib lab sib re>4 do'8 |
  <re, mib sib'>4.~ <lab mib' sib'>8 re4
  <fa, lab mib'>4 <sol sib re>8~ q4. |
  <sol mib'>4.~ q8 lab do |
  <lab do re>4. << {mib'4 sib'8} \\ {do,8. sib} >> |
  <lab mib' sol do>4.~^(\arpeggio do'8 re mib |
  <re, lab' re fa>4.~\arpeggio fa'4 sol8~ sol4.)
  r8 sib,,--(\mf do--) |
  << { \voiceTwo
    <lab do mib sol>4.-- r8 sib--( do--)
    <lab dob mib sol>4.--\fermata ~
    <lab dob re sol>8 sib-> do-> |
    <sol do re sol>2.^>\arpeggio \laissezVibrer ^\fermata
  } \\ { \voiceOne
    r8. <sib'' sib'>\arpeggio\laissezVibrer s4.
    r8. <dob dob'>\arpeggio\laissezVibrer s4.
    s8. \oneVoice <do do'>\arpeggio
    <re re'>\arpeggio <la' la'>\arpeggio \laissezVibrer
  } >>
}

QuandjepensePianoMg =
\relative do' {
  \key mib \major
  \clef bass
  r4 <fa,, lab' mib'>2.\mp\arpeggio
  <sib mib lab do>\arpeggio
  <mib sol>4. mi8. do
  fa,2.
  do'4. re mib4.~ mib8 sib mib, |
  fa4. sib mi2. fad,4. re sol2. |
  fa4.( <sol' lab do mib>)
  <sib,, sib'>( <fa'' lab re>4.*5/6) si,,16
  <do mib'>4.\arpeggio <fa' sol sib re>4.*5/6 mi,16
  fa4. <sol' lab do mib>
  <sib,, sib'>2.
  solb''4. fa <sib, sib'> mib lab,( <sib' do mib>) |
  sib,( <lab' sib fa'>)
  mib,8 re' mib sol4.
  <lab, sol'> lab, sol8. si' <sol fa' sol>4.
  \times 3/2 {do,8-- mib'} \times 3/2 {sol,-- mib'} |
  fa,4. lab sib, sib' |
  do, dob sib8 sib' do re4. |
  <mib sol re'> <mib sol lab do> |
  <reb lab' fa'>2.\arpeggio \fermata <do? mi'>\fermata |
  fa,4. mi8.( fa sib8. sib, sib' re) |
  do4.--( fa,-- sib2.--) do4.--( fa-- sib,4--) sib16( si do8.) mi, |
  fa2.-- fab--~ fab4. r | <fa fa'>2.--(
  <sib, sib'>-- <mib, mib'>--)\fermata
}
