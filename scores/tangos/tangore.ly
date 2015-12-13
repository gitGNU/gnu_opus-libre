\language "italiano"

ReCb =
% \transpose re do
\relative do' {
  \clef bass
  \key la \minor
  \tempo 4 = 92
  re,4.^"pizz."\mp sib' la4
  re,4. sib' la4
  dod,4. sib' la4
  do,4. sib' la4
  si,4. la' sol4
  sib,4. fa' mi8 sold,
  la4 si do mi
  la sol fa mi
  re8(^"arco"\< la') sib-. sol'8~(\mf \t {sol4 la\> mi~}
  mi4.) fa8(\prall\mp~ fa mi\< fa sold)
  \clef treble
  \t {sold4( sib la~\>} la8 mi4.~
  mi4\!) si' \t {do\< red la'(~}
  la8\f mi sib) dod re4--\> fad,8( re'16 fad,)
  fa4--\! red8( mi) \tt {sol( sold) si re si}
  do4--\mf\prall\> r8 si--\prall~ si r la4--\prall\!
  \clef bass
  r8 fa(\prall\downbow mi) re do(\prall sib-.) sold(-. la-.)
  re,4 re8^"pizz." la' do fa4.
  re,8 la' sib sol'4. sol,,4(^"arco"\mf
  lab) do8^"pizz." fa lab mib'4.
  do,8 fa sib re4. sibb,4(^"arco"
  lab) dob8^"pizz." mib lab sib4.\prall^\markup \flat
  dob,8 reb lab' reb4. lad,4(^"arco"
  si) re8-.\p\cresc fad-. si-. \clef treble fad'-. la-. dod~\downbow
  dod re4( mi8) \t {fa4-- sol(-- sold--)}
  si4.(\f^"espr." mi,8~ mi2~ mi8 do) red( mi) si'( la) r sold16\downbow fad
  sold4.(\> red8~ red4.)\! sold8~--
  \t 2 {sold4 la,--\downbow\< sid-- dod(-- red--) mi--}
  sol4.(\! do,8~ \t {do4) sol'\< lab~}
  lab8 mi'4--\upbow\ff sol,8~ \t {sol4 mi'( sold,)}
  mi'4.(\> la,8~ la4.) mi8~--\p mi8 la,8~-- la4
  \clef bass mi,^"pizz." la
  re,8 fa la sib mi, sib' la mi
  re mi la sib fa sib la fa
  dod la' sib do mi, sold la fa
  do la' si dod fa, la sold mi
  si re la' sol re' fa, mi do
  sib fa' sold re'4 mi8 mi,4
  la \clef treble la'4. mi
  r4 la \t {r mi si'}
  la'2 r8 mi4.
  r4^\markup {\parenthesize \left-column {"Ossia :"
     \score { \new Staff \with { \override TimeSignature.stencil= ##f } {
       \clef bass <la re'\harmonic>4. <mi la\harmonic>} \layout {}
  }}}
  la4. mi r4
  la4. mi r4
  la4. mi r4
  la4. mi r4
  la4. mi r4
  mi2. \clef bass
  re,,1\fermata ^"arco"
  \bar "|."
}

RePianoMd = \relative do' {
  \key la \minor
  r4 <la'' la'>~\arpeggio q8 <mi mi'>4.~
  q4 <fa fa'>~ q8 <mi mi'> <fa fa'> <sold sold'>~
  q4 <la la'>~ q8 <mi mi'>4.~
  \t {q4 <do do'> <red red'>~} q8 <mi mi'> <sib sib'> <dod dod'>
  <la' la'>4. <re, re'>8~ q4. <fad, fad'>8~
  \t 2 {q4 <fa fa'> <sol sol'> <sold sold'> <si si'> <re re'>}
  <do do'>4. <si si'>8~ \t {q4 <la la'> <fa fa'>}
  <mi mi'> dod' sib\prall la
  la''8 la, sib la la' fa la, sib
  la' do, la fa' re la sold' mi
  la red, la la' mi la, sold' fa
  la mi la, mi' la, mi red' la
  re fad, re la' fa si, dod' sold
  do fa, do sold' re sold, si' fa
  <do la'> la <la mi'> mi <mi si'> do <do sold'> la
  <si do sol'>2. r4
  <la' la'>4.\arpeggio mi'8~ mi2~ mi2 sol8\prall fa mi fa
  sol4. re8~ re2~ re4. do8 \t {re4 mib mi}
  fa4. dob8~ dob2
  mib4. sib8~ \t {sib4 la sib}
  <dod dod'>4.\arpeggio <sold sold'>8~ q4 <dod dod'>~
  q <do do'>4~ q8 <fa, fa'>4.
  <si, do mi>4 la q la
  <si do mi> la <la sid red> sold
  \clef treble
  <red' mi sold> dod q dod <red mi sold> dod <reb mi sol> do
  <sol' lab do> fa q fa <sol lab do> fa <fa sold si> mi
  <si' do mi> la <si dod mi> la <sib dod mi> sol <la dod mi> dod,
  <fa, re'> la''4~ la8 mi4.~ mi4 fa~ fa8 mi fa sold~
  sold4 la~ la8 mi4.~
  mi4 la8 mi'~ \t {mi4 fa, fad8 re'}
  \ottava #1
  \t 2 {la'2 re,4~ re fa do'~}
  do8 <sold sold'>4.\arpeggio <red red' do'>2\arpeggio\laissezVibrer
  s1*2
  r4 << <do' si'>2.\arpeggio\laissezVibrer \\ <do, si'>\arpeggio\laissezVibrer >>
  s1 r4 <do si'>4. <la sold'>\laissezVibrer
  r4 <do si'>4. <la sold'>\laissezVibrer
  r4 <do si'>2. <si do sold'>1\arpeggio\laissezVibrer
  s1 <si sold'>4\laissezVibrer \ottava #0 r r2
}

RePianoMg = \relative do' {
  \clef bass
  \key la \minor
  r4 re,8 sib' do sol'4.\laissezVibrer
  r4 re,8 la' sib fa'4.\laissezVibrer
  r4 dod,8 la' sib fa'4.\laissezVibrer
  r4 do,8 sold' la mi'4.\laissezVibrer
  r4 si,8 fad' sol re'4.\laissezVibrer
  r4 sib,8 fa' sold re'4.\laissezVibrer
  r8 la, si red mi sold la do
  si la, fa' la la, red sold mi
  re, la' fa' sib do sol'4.\laissezVibrer
  re,,8 la' mi' la sib fa'4.\laissezVibrer
  dod,,8 sold' la fa' dod' mi4.\laissezVibrer
  do,,8 sold' la red mi sib'4.\laissezVibrer
  si,,8 la' re fa \t {sold4 sol' fa}
  sib,,,8 lab' re fa sib mi4\laissezVibrer sold,,,8
  la mi' si' do, sold' mi' red, mi
  la la' sol, sol' fa, fa' mi, mi'
  re,4 \clef treble re'' <mi fa la> re
  <do re sol> sib <do re sol> sib
  <do mib fa> lab <do mib fa> lab
  <sib do fa> lab <sib do fa> lab
  <sib dob mib> lab <dob mib solb> lab
  <dob reb fa> lab <dob reb fa> lab
  <si re fad> la <la si re> fad
  \clef bass
  <fad la si> re <fa sold si> mi
  la,,8 mi' si' do4 la8 mi' si'
  la,, fa' si do4 sold8 fad' sid,
  dod, sold' red' mi4 dod8 sold' red'
  dod,, la' mi' red4 do8 mi sib'
  fa,, do' sol' lab4 fa8 mib' lab
  fa, do' sol' mi, re' fa sold, sold'
  la, la' si, si' dod, dod' sib, sib'
  la, la' sol, sol' fa, fa' mi, mi'
  re,4. sib' la4
  re,4. sib' la4
  dod,4. la' sold4
  do,4. sold' la4
  si,4. sol' fa4
  sib,4. fa' mi4
  la,4. la8~ la2
  la4. la8~ la2
  la1\laissezVibrer s s s s s s
  \ottava #-1
  re,4\laissezVibrer \ottava #0 r r2
}
