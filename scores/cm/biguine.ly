% Harmoniques -- biguine.ly ---------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"


BiguinePrune =
\relative do' {
  \tempo "Biguine" 2 = 92
  R\breve*2
  sol'4 la8 re,~ re4 mi re la' do2
  fa,4 si,8 la'~ la4 fa si, do si'2
  r4 sol8 la do re,4. la'8 re,4 do'8~ do2
  la4 re,8 do'~ do la re, do si'2 r
  R\breve*2
  do4 mi,8 si'~ si4 do fa, do' \acciaccatura mi8 fa,2
  r4 si8 re si4 re si8 la4 re,8~ re2
  la'4 re, la' r8 sol~ sol fa sol4 \acciaccatura si8 do,2
  \tuplet 3/2 2 {re4 la' do si mi, si'} mi,2 r
}

BiguineBrice =
\relative do' {
  \clef bass
  R\breve*2
  re,4 mi8 si'~ si4 do re sol, mi2
  sol4 re'8 fa,~ fa4 la mi' re fa,2
  la4 sol mi8 do'4. fa,8 do'4 re,8~ re4 fa8 do'
  re,4 fa do' si do,2 r
  R\breve*2
  do4 si'8 mi,~ mi4 re la' re, \acciaccatura si8 la'2
  re,4 si re si re8 mi4 si'8~ si2
  r4 fa8 do' fa,4 r8 sol~ sol la sol4 \acciaccatura mi do'2
  \tuplet 3/2 2 {si4 fa re mi re' fa,} do'2 r
}

BiguinePianoMd =
\relative do' {
  r8 <sol la> <do mi>4 r <fa, si mi> r <sol do mi> r <la si fa'>
  r8 <sol la> <do mi>4 r <fa, si mi> r <sol do mi> r8 <la do fa>4.
  <la re mi sol>4 q2 q4 r q r <si mi sol>
  <la do fa sol>4 q2 q4 r <si re fa sol> r8 <re fa sol si>4.
  <mi fa la do>4 q2 <mi la do>4 r <do re fa sol> r <do re fa la>
  <si re fa la>4 <do fa la>2 <si fa' la>4
  <si do mi sol> <re sol>8 la' <do, mi si'>2
  %break
  <la' re sol>4 la'8 <si, mi>~ q la re mi
  sol mi si la <do, mi sol>4 <si mi sol>
  <do fa>8 la' do <fa, sol mi'>~ q <fa la> <si re>4
  re8 do la sol mi re do la
  %suite
  <si mi sol>4 q2 q4 r <la do fa sol> r q
  <si fa' la>4 q2 q4 r <la re sol> r8 <la re fa sol>4.
  <do fa la>4 q2 <re fa sol>4 r <mi sol la> <do sol' la do>2
  <la' do>8 <mi fa>4 <la do>8 <re, fa> <sol si>4 <re fa>8
  <mi do'> si' la sol mi la do re
}

BiguinePianoMg =
\relative do' {
  \clef bass
  do,4 r8 sol r re'4 sol,8 do4 la sol re'
  do4 r8 sol r re'4 sol,8 do4 la sol re'
  do4 r8 sol r re'4 sol,8 do4 la sol do
  re4 r8 sol, r la4 sol8 re'4 la sol mi'
  re4 r8 sol, r fa'4 mi8 re4 la si do
  re4 r8 sol, r re'4 sol,8 do sol mi' la sol2
  %break
  do,4. sol'8~ sol4 sol, do4. sol'8 la2
  re,4. la'8~ la4 sol, do4. sol8 do,2
  %suite
  do'4 r8 sol r la4 do8 re4 la sol mi'
  re4 r8 sol, r sol'4 sol,8 fa'4 la, si do
  re4 r8 sol, r la4 si8 do4 re mi sol
  fa re la sol do8 sol mi' la sol2
}
