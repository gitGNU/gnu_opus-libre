%-- Piano Sonata -- carillon.ly ------------------------------------%
% (c) 2009-2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

DeuxPianoMd = \relative do' {
  re'4.\dyn "pp_con Ped." dod'8 la4.
  sol?4 dod8 la2
  mib4. dod'8 la4 sib,8
  fad'4. do'8 la4.
  re,4 do'8 la4 si,?8 dod'
  sol4. do8 la4.
  dod,2 do'8 la4.
  mi'16\dyn "pp_sempre" fa,8. dod'4 la sol8~
  <dod, sol'>4 do'16 la~ la2
  sol4.~ sol16 re8 dod'16 sol la8.~
  la8 la4~ la16 <fa mi'>8 dod16~ dod4
  << {do'16 la~ la4. sol?8 la4~ la s8 s2}\\
  {s2 s4 s8 re,8. \oneVoice mi'16~ mi fa, la2}>>
  sol4 do8 la~ la2
  <fa mi'>4 <la sold'>8 mib'4. do,?8
  dod'16 la~ la4 <lab sol'>8 mib'4.
  mi,4 la8
  << {r4 fa' re?4.}\\{fad,2~ fad8 dod4} >>
  la'4 fa~ fa4. sold'8 la,4.
  fa2 dod'16 la~ la4
  sol4. do8. sold'16 la,?4.
  reb,4. do'8 la4.
  reb,4 do'8 la4 sib,
  sol'8. dod16 la2 do8~
  do la4.
  <<{sold,16 la'~ la4}\\{s8 r sib,}>>
  re4 dod' sold, la'8~
  la16 sib, la'4. <fa mi'>8. <mib re'>
  <do si'>4 fad8. la16~ la sib, dod'4 re,?8~
  re mib' la,4 sol do8
  re,4 dod'8 la4
  <<{
    \oneVoice sold'8 sol,~\voiceOne sol4.
    s2 \voiceTwo r8 sol4 dod16 la~ la4
    }\\{
    s4 sib,4. \oneVoice la'8 fa mi' sold~
    \voiceOne sold2 s4
  }>>
  re,8~ re8. mib'16 mi,8. la16~ la4.
  r8 mi'16 fa,~ fa8. la16~ la8 si4~
  si8 fad16 sold'~ sold8. la,16~ la4 <fa mi'>~
  q4. dod'4 la~ la sol do8 la4
  <re, mib'>8 sol sold'4 <fa, mi'> <la dod>8~
  q4 <si, do'> la'4. do, dod'8 la4.
  si,4 do'16 la~ la4 mi8 fa'
  sol,4. do4 la4.
  \ottava #1
  r4 <do si'> <la sold'>4.
  r4 <do? si'>4. <la sold'>4
  r8 <do si'>4 <la sold'>2
  <do si'>4. <la sold'>2
  <do? si'>4 <la sold'>2 r8
  <do si'?>4 <la sold'>2 \ottava #0 r8
  r4 <la sold'>4 <fa mi'>8 <lab sol'>4 r8
  r dod4 la2\fermata
}

DeuxPianoMg = \relative do' {
  \clef bass
  r8 mi, red'4 r8 sol, sold'
  r8 <la, sold'>4 r8 sol fad' red
  r dod, re'4 r8 si4
  r8 sol fa'?4 r8 <sib, dod> sold'
  r8 <mi, red'>4 r8 sib'4.
  r8 fa fad'4 r8 mi, sib'
  r <mib, re'> fad si
  \clef treble
  r4 sol'8 sib
  \clef bass
  r <mib,, re'>4 <do? si'>8 fad mib mi'
  r <mib, re'>4 sol8 sold' <solb, fa'> si
  r fa fad' red do, si' r
  <mib, re'>4 <do si'>8 re' mib,4 si'8
  \clef treble r sib' sol, sold' \clef bass r red mi,
  r do dod' r sol fad' sib,
  r <fad sold'> r4 sib8 fad' \clef treble re dod'
  \clef bass r8 <fad,, sol'>4 r8 re dod'4
  r8 mi, fa'4 r8 do, dod'
  r <do, si'>4 r8 sol'4 red'8~
  red r sib4 sol fad'8
  do, si' \clef treble sib'4 r8 sol, fad'
  \clef bass r <red, mi'>4 <do si'>8 r re sib'
  r <mib, re'> <fad dod'> \clef treble r <lad si'> r sib' si,
  \clef bass r mib, re'?4 r8 sol, sold'
  r <mib, re'?>4 r8 <do si'>4 fad8
  \clef treble r sold4 re'8 sib' dod4
  \clef bass <do,, si'> <mib re'>8 <fad, sol'>4 q
  r8 <mi' red'>4 <fad, sol'> q
  <do' si'> sol'8 fad'4 sold,8 dod
  r <mib, re'>4 <do si'>8~ q fad, <mi' red'>4
  <do si'>4. fad4 sold
  r8 <do, si'>4. fa
  r8 do si'?4~ si8. <mib, sib'>
  <do si'>4 q r8 mib4
  <do! dod'>4 r8 sol' sold'8. sib,
  <do, re'>4~ <do sol' re'>2 do8~
  <do mib'>4 \clef treble si'8 sib'4
  \clef bass <re,, sol>8 dod'4
  \clef treble << do'4.*1/3 \\ r8 >>
  si, red r sold r sol,
  fad'16 fa,8. r8 <sib sold'> r sold' si
  \clef bass r16 dod,~ dod4 do, si'
  red,8 mi'4 sold <sol, fad'>
  r8 si sib,4 r8 fad sol'
  r <sol! sold'>4 re8 red'4.
  \clef treble
  fad8 <sib, si'!> \clef bass fa4 sold' sol,
  mib8 re'4 \clef treble dod' si,8 sib'
  re, dod'4 \clef bass mib,,8 mi'4 \clef treble sib'8
  sol,4 fad' sib8 si,4
  \clef bass r8 mib, re'4 \clef treble si8 dod'4
  r8 sol,4 fad'8 si, sib'4
  r8 mi16 fa,8. r8 sib, dod'4
  \clef bass <mi,, red'>2._\dyn "Ped. al fine" r4
  \clef treble re''4. sold,2\fermata
}
