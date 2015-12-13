\language "italiano"

DoCb =
% \transpose re do
\relative do' {
  \clef bass
  \key la \minor
  \tempo "Andante con moto" 4=104
  do,8 re16 mib fa8 fad4 mib8 do si'~
  si fad do mib'4 fad,8 si do,
  mi fad16 sol la8 lad4 si,8 mi red'~
  red si, mi sol'4 fad8 fa red
  mi mi, do' si la4 sol fad fa2 mi4
  mi'8 mi, si' la sol4 fad fa mi2 sold,4
  la8 \clef treble mi'' la16 si do re mi8 re16 do si do re si
  do si la sold la sol fa mi fa8 do si\prall la
  si16 red mi fad sol la fad la sol8 la16 si do si red mi
  fa mi sol mi sold mi la mi do' si re si la sold fad sold
  la8 sol16 fa mi re do si la sol fa' mi re do si la
  sol fa mi' re do si la sol fa mi re do si la sold8
  \clef bass
  la16 si do re red re do si la si do re red re do si
  la8 la16 la la4 r2 \clef treble
  dod''8 si16 la sold8 sol4 fad16 mid fad dod re mi
  re8 mi, \clef bass si, \clef treble mi'''\flageolet r2
  si8 la16 sol fad8 fa4 mi16 red mi8 red16 mi
  mid8 \clef bass la,, si, \clef treble dod'''\flageolet r
  \clef bass re,,, si' sold'
  \clef treble
  la la' dod, re mi4 fad sol sold2 la4
  la,8 la' re, mi fad4 sol sold la2 si4
  sib,8 sib' re, mib fa solb lab sib
  do, do' mi, fa solb lab sib do
  re re, re'4 re,8 re'4 re,8~
  re re' \t 4 {do lab fa re si sol \clef bass re do sib}
  la4 r8 mi fad re sol si,
  do do' mi, fa16 sol la8 fa sib re, mib sol
  lab sib16 do reb8 lab fad sold16 lad si8 red,
  dod re16 mi fad8 sol r4
  \clef treble
  do8 re16 mib fa8 fad4 mib8 do si'~
  si fad do mib'4 fad,8 si do,
  mib fa16 solb lab8 la4 sib,8 mib re'~
  re sib, mib solb' fa mi mib dod
  la16 re mi fa sol8 lab4 sol8 fa\prall mi16 red
  mi mi, fad' sol la8 sib4 do8 sib\prall lab16 sol
  lab8 lab16 sib do8 re re,16 mib fa8 sol sol,
  \clef bass
  do,8 re16 mib solb8 fa <la, mib'> <la re> <la do> <la re>
  <mi si'>4 r8 <mi sib'>4. <si fa'>4
  <mi si'>4 r8 <mi sib'>4 <si fa'>8 <fad do'> q
  <mi' si'>4 r8 <mi sib'>4 <sold re'>8 \t {<sol dod> <fad do'> <fa do'>}
  <mi si'> <si mi> <mi sib'> <mi si'> <si mi> <mi sib'> <mi si'>16 <fad, si> q q
  \clef tenor
  <mi' red'>8 mid'16 fad <mi, sold'>8 <mi la'>4 fad'8
  \clef treble
  la16 si do re
  red re do si do si la sold
  la sold fad mid fad mi re do
  \clef bass r4 la8 si16 do re8 red4 do8
  la sold'4 red8 r4 <mi, la>8 \clef treble <do'' do'>
  \bar "|."
}

DoPianoMd = \relative do' {
  \key la \minor
  R1*4
  la8 si16 do re8 red4 do8 la si'~
  si mi, do \t {re'16 mib re} do8 si sib la
  \voiceOne mi' fad16 sol la8 sib4 si,8 mi red'~
  red si, mi sold' sol fad fa red
  \oneVoice mi mi, do' si la4 sol fa mi red8 mi fad4
  << {mi'8 mi, si' la sol4 fad fa mi8 re fa mi16 re do8 re} \\
     {
       \mg \voiceOne mi,,8 \md \voiceTwo fad'16 sol
       la8 sib4 \mg \voiceOne si,?8 \md \voiceTwo mi red'~
       red \mg \voiceOne si, \md \voiceTwo mi do'4 si8 mi, si'
  } >>
  <do mi>16 la' si do re8 red~ red16 mi, fa sol la8 sib~
  sib16 si, do re mi8 fa~ fa16 sold, la si do mi, fad sold
  la8 la, sol' fa mi re do si la4 r r2
  <fad' la>8 dod <si mid> dod <sol? la fad'> <dod mid> <la fad'> dod
  <do fa sol> si16 la si8 <fa' sol re'> r sol la16 si do re
  <si mi>8 sol <fa si> sol16 la <mi sol>8 si <dod red fad> sid
  <mid sold>16 si re la' mid sold <re' si'>8 r2
  dod'4 dod, la'2 sold fad4 mi
  si' si, sold'2 fad mi4 re
  <sib solb'> solb <sib fa'> <solb fabb'>
  <sib mib>8 <solb do?> <mib sib'> <reb solb>
  <fa do'> <solb sib> <do, fa> <reb mib>
  \clef bass
  mib,16 la sib do reb solb, re' re,
  re' \clef treble la' sib do reb solb, re' re,
  re' mib solb sib \ottava #1 re mib solb sib
  <re, solb sib re>2 \arpeggio \ottava #0
  << {do2. si4 la sol4. sol16 sold la4} \\
     {do,8 re16 mi fa8 <do fad>4 dod8 re lad
      <si mi> do16 dod re8 <la mib'>4. re8 la}>>
  <sol reb'> lab16 sib do8 fa,4 fad16 sold <mi lad>8 dodd
  red sold dod, <do fad>4. <si fa' sol>4
  << {
      \oneVoice r2 do8 re16 mib fa8 fad~
      \voiceTwo fad do mib si'4 do,8 fad mib'~ mib fad,8 si \mg \voiceOne sib,
      mib \md \voiceTwo fa16 solb lab8 la~ la solb sib, re' dod la sib sol
     } \\ { \voiceOne
       s1 r2 do8 re16 mib fa?8 fad~
       fad mib do si'4 mib,8 do solb'
       fa mib4 re8 dod sold' sol mi
  } >>
  <fa, fa'>16 mi' re dod re8 do16 sib la8 <si, fa' lab>~ lab'16 sol fad sol
  mi mi' re do si8 sib4 lab8\prall sol16 lab do mib
  re fa, do' sib lab8 <re, sol>4 re8 <do sol'>16 fad sol8
  << {
       <fa do'>16\prall sib lab sol fad8 <mib sol>4
       \oneVoice <la>8\arpeggio sol fa
     } \\ {
       s4. si,8[ do] <la re>4.\arpeggio
  } >>
  \clef bass
  <si mi>2 r8 fa sol16 la sib8
  <si mi>4 r r8 sold la16 si do8
  <fa, re' mi>4 r \clef treble si?8 do16 re mi8 <la, mi' fa si>~
  q4 r re16 mib fa sol sold la si re
  <fa si re mi>8 r do8 re16 mib fa8 fad4 mib8
  << { r16 sold' sol fa mi8 do si16 la sold8 fad16 mi re do}
  \\ {do8 si' red, dod16 do sib8 la4.} >>
  r4 la'8 sol16 fad mi8 red dod16 do si8 la sol16 fad mi8 red r4
  s8 \ottava #2 s
}

DoPianoMg = \relative do' {
  \clef bass
  \key la \minor
  R1*6
  \md \voiceTwo
  sol'8 sol, fad'4 mi re
  do si2 sib4
  \mg \oneVoice
  <la, la'>8 si16 do re8 red4 do8 la sold'~
  sold do, la do'4 fad,8 si <la, red>
  \voiceTwo sol4 \oneVoice mi do' si8 sib16 la
  sol4 do8 si la4 sold
  la mi'16 sold la si do8 dod~ dod16 re, mi fa
  sol8 lab~ lab16 do, re mi fa8 fad~ fad16 sold la si
  do8 la, si' la sol fa fad sold
  r4 r8 sold, la16 si sid8 re? dod
  fad,4 sold la re, sol la8 si r2
  do,4 re mi sold dod, sold'8 dod r2
  la,8 <la' si> la <si mi> la la <la si> la,
  la <la' si> la <si mi> la la <la si> la,
  la <re' mi> la <si mi> la la <re mi> la,
  la <re' mi> la <si mi> la la <re mi> la,
  la sib' mib la, mib' sib mib la,,
  la sib' mib la, mib' sib mib la,,
  <la la'>4 <mib mib'>2 <la la'>4
  <sib sib'> <mi, mi'>2 <sold sold'>4
  <la la'>4 la'' re, <sol, sol'>
  <do, do'> do'' <fa,, fa'> sib
  <mib, mib'> <lab lab'> <reb, reb'> <fad fad'>
  si8 mi, <la, la'>4 <re re'> <sol sol'>
  r1
  do,8 re16 mib fa8 fad4 mib8 do si'~
  si mib, sib \voiceTwo mib'4 \oneVoice fad,8 si re,
  mib fa16 solb lab8 la4 fa8 sol la
  re, re' mi, fa sol4 si
  do8 do, re' mi <fa, mib'>4 lab
  sib8 sib' sib, <mib sib'> re16 do sib8 <lab sol'>4
  re,8 re' re, <sol sol'> la16 sol <fa mib'>4 do16 re
  mi8 fa16 sol la8 sib4 r8 sib sib,
  mi8 fa16 sol la8 sib4 si,8 si' si,
  mi8 fa16 sol la8 sib4 re8 do\prall si
  mi,8 fa16 sol la8 sib4 sib' sib,8
  <mi,, mi'>8 r <mi mi'>4 <mi fad'>8 sold'16 la
  << {\oneVoice si8 do~ \voiceOne do[ red]} \\ {s4 mi,}>>
  <fa, fa'>4 <sol sol'> <sold sold'> r4
  la8 si16 do re8 red mid16 fad sold8 la si16 do re8 red r4
  \ottava #-1
  <la,, la'>8 \md <do'''''' do'>
}
