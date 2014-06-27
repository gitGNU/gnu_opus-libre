%-- Sweet suite -- ricercar.ly -------------------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

RicercarClavecinMd =
\relative do' {
  la'4 sol fa mi
  re8. la'16~ \t {la4 sol8~} sol fa~ \t {fa8 mi4~}
  mi16 re8. la'4 sol fa
  mi re8. la'16~ la8 sol~ sol16 fa8.
  mi re16~ re4 la' sol
  fa mi re la'
  sol fa mi \t 4{re la'8~
  la sol4 fa mi8~ mi re4} la'
  sol fa mi re8 la'
  sol fa mi re la' sol fa mi
  \t 4 {re la' sol fa mi re la'4 sol8~ sol fa4
  mi re8~ re la' sol fa mi re} la'16 sol fa mi
  \tt 4 {re la' sol fa mi re la' sol fa mi
  re la' sol fa mi} re la' sol fa
  mi re la' sol fa mi re la'
  \ttt 4 {sol fa mi re la' sol
  fa mi re la' sol fa
  mi re la' sol fa mi}
  \tt {re la' sol fa mi}
  \t 4 {re8 la' sol fa mi re}
  la'4 sol fa mi
  re8 la'4 sol fa mi8~ mi re4 la'8 sol4 fa
  mi8 re4 la' sol fa8
  mi4 re8 la' sol4 fa8 mi
  re4 \t {la'4 sol8~} sol fa~ fa16 mi8. |
  \tt 4 {re8 la' sol16~ sol fa8 mi
  re8 la' sol16 fa8 mi re16}
  \t 4 {la'8 sol fa mi re la'}
  sol fa mi re
  la'2 sol fa mi4 r
  \bar "|."
}

RicercarClavecinMg =
\relative do' {
  R1*2
  r4 <dod sib'>2.~ q1
  r4 r8 q~ q2
  r8 dod4 sib'~ sib16 dod,32 sib' dod,4~
  dod8. sib'16~ sib4 r16 dod,32 sib' fad8~ fad4
  dod~ \tt {dod32 red fad lab sib~} sib8~
  sib8. <dod, sib'>16~ q8 fad~
  \tt {fad16 fad fad fad fad~} fad16. <dod sib'>32 fad8~
  \tt {fad16 <dod sib'> fad <dod sib'>8~} q4~ q2
  <do si'>~ q8 <dod sib>4 <do si'>8~ q4 <dod sib'> <do si'>1
  \t {r4 <dod sib'> <do si'>~} q16 <si do'>4..
  \t {r4 <sib dod'>\arpeggio <si do'>}
  \t {r4 <sib dod'>\arpeggio <si do'>}
  \t {r4 <sib dod'>\arpeggio <do si'>}
  <si do'>2~ q8 q2..~ q4 <do si'>2 <si do'>4~
  q4 <sib dod'>~ \tt {q16 lab8 si16 fad}
  \tt {do' red' do fad si,~}
  \t {si8 <dod,, red fad lab sib> <dod'' red fad lab sib>}
  \tt {r16 <dod' red>
  \ottava #-1 <lab,,, sib> \ottava #0
  <dod''' red> r} \ottava #-1 <lab,,, sib>8 \ottava #0 r
  <dod' red fad lab sib>4~
  \t 4 {q8 <sib dod'>\arpeggio <si do'>
  <do si'> <sib dod'>\arpeggio <si do'>}
  \t {<do si'>4 <si do'> <do si'>~}
  q16 <dod sib>4.. <red lab'>4 q~
  q q4. q~ \tt {q16 q q q q} q q q q~
  \t {q8 q q} r16 q8.~ q1 R1
}
