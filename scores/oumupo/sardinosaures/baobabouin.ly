%-- Sardinosaures -- baobabouin.ly --------------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"


BaobabouinVoixTexte = \lyricmode {
  %% Jacques Roubaud.
  Il n’est pas na -- bab
  il n’est pas mar -- souin
  le ba -- o -- ba -- bouin

  il vo -- yage en cab
  a -- vec le pin -- gouin
  le ba -- o -- ba -- bouin

  s’il a pas de rab
  il fait du tin -- touin
  le ba -- o -- ba -- bouin

  un bon chich’ -- ke -- bab
  il ne veut pas mouins
  le ba -- o -- ba -- bouin

  il vous met \dash k. -- o.
  a -- vec son ca -- bas
  c’est un vrai sa -- gouin
  le ba -- o -- ba -- bouin

  \dash là -- bas ou \dash là -- haut
  vo -- yez les é -- bats
  du ba -- o -- ba -- bouin

  il fait du mé -- lo
  pour une pêche mel -- ba
  le ba -- o -- ba -- bouin

  il fait un sa -- bbat
  a -- vec ses sa -- bots
  le ba -- o -- ba -- bouin

  il va \dash d’Saint -- Ma -- lo
  en A -- la -- ba -- ma
  le ba -- o -- ba -- bouin

  il pince comme un crabe
  comme un ma -- rin -- gouin
  le ba -- o -- ba -- bouin_!
}

BaobabouinGrille = \chordmode {
  R2. R
  do1 dod:dim re2.:m sol
  re1:m reb:7 do2. sol/do
  do1 dod:dim re2.:m sol
  re1:m sol:7 do2. do:7
  fa1:m7 sib:7 mib:maj7 do:7
  fa:m7 reb:7 do:maj7 do:7
  fa:m7 sib:7 mib:maj7 do
  re:m9 sol:7
  R
  re:m7 sol:7 do2. sol/do
  re1:m7 sol:7 mi2.:m7 la:7
  re1:m7 sol mi2.:m7 la:m7
  do1/sol mi/sol fa2./sol sol:7
  do1 R1*2
}

BaobabouinVoix = \relative do' {
  \time 3/4
  \tempo "Swing" 4 = 120
  R2.
  r8 mi\(^\mp fa mi fa sol\) |
  \time 4/4
  r4 r8 mi\( fa mi fa sol\) |
  r4 r8 sol-- \times 2/3 {la,4\(-- sol'-- la,--\)} |
  \time 3/4
  re2-- r4 |
  r8 mi\( fa mi fa sol\) |
  \time 4/4
  r4 r8 mi\( fa mi fa sol\) |
  r4 r8 sol-- \times 2/3 {la,4\(-- sol'-- la,--\)} |
  \time 3/4
  mi'2-- r4 |
  r8 mi\( fa mi fa sol\) |
  \time 4/4
  r4 r8 mi\( fa mi fa sol\) |
  r4 r8 sol-- \times 2/3 {la,4\(-- sol'-- la,--\)} |
  \time 3/4
  re2-- r4 |
  r8 mi\( fa mi fa sol\) |
  \time 4/4
  r4 r8 mi\( fa mi fa sol\) |
  r4 r8 sol-- \times 2/3 {la,4\(-- sol'-- la,--\)} |
  \time 3/4
  do2.~-- ^"ten." do8 do do--\(^\< re4\) do8 |
  \time 4/4
  lab'1~^\mf^"ten." lab4 lab \times 2/3 { sib\(-- sol-- sib--\) } |
  re,1~-- re4 do \times 2/3 { do\(-- re-- do--\) } |
  lab'1~--^\< lab4^\!\fermata \breathe sol\p
  \times 2/3 { la,\(--^"ad. lib." sol'-- la,--\) } |
  mi'1-- r4 do^\mf \times 2/3 {sol\( re' do\)} |
  lab'1~-- lab4 lab-- \times 2/3 {sib\(-- sol-- sib--\)} |
  re,1~-- re2. do4-- la?4.^\<-- mi'-- do4~--
  do sol'2.->--^\!\fermata
  r4 r8 mi\(^\p fa mi fa la\) |
  r4 r8 mi\( fa mi sol si,\) |
  r4 r8 do \times 2/3 {la4\( sol' la,\)} |
  \time 3/4
  mi'2-- r4 |
  r8 mi\(^\mf fa la do re,\) |
  \time 4/4
  r4 r8 mi\(^\< fa sol la si\)^\! |
  r4 r8 sol \times 2/3 {re4\(-- do'-- la--\)} |
  \time 3/4
  sol2-- r4 |
  r8 mi\( fa mi re do'\) |
  \time 4/4
  r4 r8 la-. si\( re fad, sol\) |
  r4 r8 sol-. \times 2/3 {la,4^\>-- sol'-- la,--} |
  \time 3/4
  mi'2-- r4 |
  r8 mi\(^\p fa mi fa sol-.\) |
  \time 4/4
  r4 r8 lab\( sib lab sib si-.\) |
  r2 r4 sol-. |
  \time 3/4
  la,-. r sol'-. |
  r la,-. r |
  \time 4/4
  r do'-.^\pp r2 R1*2 \bar "|."
}

BaobabouinPianoMd = \relative do' {
  \times 2/3 {<mi fa>8(\mf la do} <fa, la mi'>4)-.
  <fa sold si mi>8 <mi sol la do>--~ |
  <mi sol la do>4 r2 |
  r8 <si mi sol>-.\p r4 r2 |
  r8 <sib mi sol>-. r4 r2 |
  r4 <do mi>( <si fad' sol>)-. |
  \acciaccatura fad'''8 <sol, sol'>4-. r2 |
  r8 <do,, mi sol> r4 r2 |
  r8 <si mib sol> r4 r2 |
  r4 <do mi>( <si do sol'>)-. |
  \acciaccatura fad'''8 <sol, sol'>4-. r2 |
  r4\mp <si,, mi sol>2-- <si mi sol>4-. |
  r8 <sib mi sol>8~ <sib mi sol>2. |
  r4 <la do mi>( <si fad' sol>)-. |
  \acciaccatura fad'''8 <sol, sol'>4-. r2 |
  r8 <la,, do fa sol>~ <la do fa sol>4
  r8 <la do mi sol>~ <la do mi sol>4 |
  r8 <si mib sol>~ <si mib sol>2 <si? mib fa sib>4 |
  <si re mi sol>-- <si re mi sol>--
  <si re mi sol>8-. <sib do mi sol>~-- |
  <sib do mi sol>2. |
  << {
    r8 sol''4( sib8 \t {lab4 sol re)}
    do8( re mib sib)~ sib2 |
    r4 \acciaccatura dod8 re-. fa4( mib8
    \t {re sib sol)}
    \t {reb'16( mib reb} do4) do8-.\laissezVibrer
  } \\ {
    <lab, do mib sol>1\mf\arpeggio
    <lab re sol>2\arpeggio <lab si re solb>\arpeggio |
    <sol sib re fa>1 <sib mi?>2
  } >>
  r8 <sol sib reb mi>4. |
  \t {r8\< sol( lab} \t {do mib lab}
  \t {sol sib do} \t {mib fa fad}
  <sol, si mib fa sol>2)\arpeggio \fermata \! r |
  r4 <sol, si do mi>-- <sol si do mi>--
  <sol si do mi>8-. <sol sib re mi>~-- |
  <sol sib re mi>1 |
  << {
    r4 mib'''8--( ^"(straight)" mib-- la,?-- la--
    do-- do)--~ do4
    sib8( sib la? la solb solb |
    fa fa4.) \t {mib8(\< fa solb} \t {la sib do)}
  } \\ {
    <lab,, do mib sol>1\arpeggio
    <lab do re sol>2\arpeggio
    <lab si re? solb>\arpeggio |
    <sol sib re fa>1\arpeggio
  } >>
  mib'''8\! \clef bass <mi,,,! sib' mib>~->--
  <mi sib' mib>2 r4 |
  <re fa la do>\<\arpeggio <fa la do mi>\arpeggio
  \clef treble
  <la do mi sol>\arpeggio <mi' la si red>\arpeggio |
  \ottava #1 r8\f dod''16(_\pp lad' fad8-.) dod16( lad'
  fad8-.) fa16( solb) lab_"rit." lab-. sol-. la-.
  <si, si'>4->\arpeggio \fermata
  \ottava #0
  r4 r2
  r8 <do,, mi fa la>-.\p r4 r2 |
  r8 <si mib fa lab>-. r4 r2 |
  r4 <si do mi>( <fad' sol>)-. |
  \acciaccatura fad''8 <sol, sol'>4-. r2 |
  r4\mf <mi, fa la do>2-- <mi fa do'>4-. |
  <re fa sold si>4.-- <re mi la si>8-. r4 <re si'>-- |
  <mi sol si re>4-- <mi si' re>--
  <mi sib' re>8-. <mi sol la do>~ --|
  <mi sol la do>4. <dod sol' do!>8->-. r4 |
  r8 <mi fa la do>-. r4 <mi fa la do>2-- |
  <re fa sol si>4 <fa sold si mi>2-- <fa sold si mib>4 |
  <fad sol si re>4. <sold, sib re sol!>8->-. r4 |
  <si mi sol do>4--\dim <si do mi>2-- |
  r8 <do mi sol>-.\p r4 r2 |
  r8 <mi sold si>-. r4 r2 |
  r4 <fa la do>-. r |
  <fa si re>-. r2 |
  r2 <fa' do'>4-.\pp r |
  <fad do'>4-. r8 <sol do>-. r2 |
  <mi, sol la re>1:32\f\fermata
}

BaobabouinPianoMg = \relative do {
  \clef bass
  re4 sol sol,
  do do,-. r |
  r8 <do' sol'>-. r4 r2 |
  r8 <dod sol'>-. r4 r2 |
  r4 <re la'>( sol,)-. | R2.
  r8 <re' fa la> r4 r2 |
  r8 <reb lab'> r4 r2 |
  r4 <do sol' la>( do,)-. |
  r2 r8 sol'' |
  do,4.-- do8 do4. do8 |
  dod4.-- dod8 dod4. dod8 |
  re4. re8 sol,4-. |
  r2 mi'8( mib) |
  re4.-- re8 la4-- re-- |
  reb4.-- lab8~-- lab reb lab( sol) |
  do2-- r4 | do-. sib8( lab sol4) |
  fa-- sol-- lab-- la-- |
  sib-- sib,8-- si'( do4--) re-- |
  mib-- sol,-- re'-- reb-- |
  do-- sib8-- sol( do,4--) solb'-- |
  fa-- sol-- lab-- \t {fa8( mi mib)} |
  <reb lab'>2 \fermata r4 si
  do4.-- do8 sol4.-- sol8 |
  do4 do'-. sib8( lab sol4) |
  fa-- sol-- lab-- \t {fa8 lab fa} |
  sib4-- si'-- do-- re,--
  mib-- mib,8-- mib'( re4--) reb-- |
  do,8-- fad( sol-.) do~-- do4 do,-- |
  re-- mi-- fa-- fad--
  \set tieWaitForNote = ##t
  << {
    r4 \clef treble
    <fa'' lab si mi>2.\arpeggio \fermata
    s4
  } \\ {
    <sol,,, sol'>1~ \oneVoice
    \clef bass q4_\fermata
  } >>
  r4 r2
  r8 <re'' la'>-. r4 r2 |
  r8 <reb sol>-. r4 r2 |
  r4 <do sol'>( sol)-. |
  r2 mi'4 |
  re4.-- re8 re4 la8( lab) |
  sol4.-- sol8 sol4. fa8 |
  mi4-- fa-- sol8( sold) |
  la( si) do4-- dod-- |
  re4.-- re8 re4 la
  sol-- la-- si-- sol8( fa) |
  mi4-- sol-- sold-- la4.-- la8 la4-. |
  r8 sol-. r4 r2 |
  r8 <sol, sol'>-. r4 r2 |
  r4 sol'-. r |
  sol'4-. r2 |
  R1*2
  <do, sol' sib>2.:32 \fermata
  \ottava #-1
  \acciaccatura sol,8 do,4->-.
}
