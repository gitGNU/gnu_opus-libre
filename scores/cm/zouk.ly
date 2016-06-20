% Harmoniques -- zouk.ly ------------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"

ZoukGrille =
\chordmode {
  %% Soul %%
  do2:m do:m/sib do:m/la lab:7
  do:m sib do:m/la lab:7
  do:m sib lab sol
  do:m sib lab sol
  do:m sib lab sol
  fa:m reb:7 sol:7 s
  %% Rock %%
  do:m fa sib reb
  do:m fa sib reb
  do:m fa sib sol
  reb solb si mi
  do:m fa sib reb
  do:m fa sib reb
  do:m fa sib sol
  lab reb fad si
  sol:5 s lab:/sol s la:/sol s sol:7.9- s
  do:m fa sib reb
  do:m fa sib reb
  do:m fa sib sol
  reb s solb s
  %% Soul %%
  do:m do:m/sib do:m/la lab:7
  do:m do:m/sib do:m/la lab:7
  do:m sib lab sol
  fa:m7 re:7.9+ sol:7 s
  %% Rock %%
  do:m fa sib reb
  do:m fa sib reb
  lab reb fad si
  mi la re sol
  do:m fa sib reb
  do:m fa sib reb
  do:m fa sib sol
  reb s solb s
  sol:5 s lab:/sol s la:/sol s sol:7.9- s
  do:m fa sib reb
  do:m fa sib reb
  do:m fa sib reb
  do:m fa sib reb
  lab reb fad si
  mi la re sol
  do:m fa sib reb
  do:m fa sib reb
  do:m fa sib sol
  reb s solb s mib:m s
  fa1:sus4 s s s s s
  fa:sus4 sib:/fa
  fa:sus4 sib:/fa
  fa:sus4 sib:/fa
  fa:sus4 sib:/fa
  fa:sus4 sib:/fa
  fa:sus4 sib:/fa
  fad:sus4 si:/fad
  fad:sus4 si:/fad
  dod2:m7 s red:m7 mi
  do:7/sol s s s
  dod:m7 s fad:7 s
  si:maj7 s s s
}

ZoukFlo =
\relative do' {
  \key do \minor
  \tempo "Slow Soul" 4 = 72
  R1*4
  sol'4 fad r8. fa16 mib4
  lab4. re,8 r2
  sol4 re r8. mib16 fa4
  sib4. fad8 r2
  sol4 fad fa sib8. lab16~
  lab4. re,8 r2
  do4 fa~ \t {fa reb fad~}
  fad8 sol4. re4 r
  \bar "||"
  \tempo "Punk rock" 4 = 166
  r4 do fa2 do4 fa8 sol~ sol2
  r4 re sol2 fa8 mib fa2.
  r2 do re4. mib re4 reb1~ reb4 r r2
  r2 re4 mib lab2. la4 sib2 r4 fa
  mib4. lab re,?4 sol2 r4 re
  sol re8 sol re4 r r4 mib lab sib
  r si fad2~ fad2. r4
  R1*4
  r4 r8 do fa do fa sol~ sol2 r
  r4 r8 re sol lab sol fa~ fa2 do
  re4. mib re4 reb1~ reb4 r r2
  \bar "||"
  \tempo "Slow soul" 4 = 72
  R1*4
  sol4 fad8. fa16~ fa4 mib
  lab4. re,8 r2
  \t {do4 fa sol} r la
  sib4. fa8 r2
  \bar "||"
  \tempo "Punk rock" 4 = 166
  r4 sol sol8 do4. lab4 reb2.
  r4 sol, do4. sol8 r4 do8 reb~ reb2
  r4 lab8 reb4 sol,8 do fad,~ fad2. r4
  r8 mi la si r sib fa4~ fa2. r4
  R1
  r4 r8 mib lab mib lab sol~ sol2 r
  r4 r8 re sol lab sol fa~ fa2 do
  re4. mib re4 reb1~ reb4 r r2
  sol4 fad fa reb8 solb~ solb4 r r sol
  re4. mib fa4 sib4.( si8) r2
  r4 fad do'4. sol8~ sol reb' lab2 r4
  r lab re la mib'4. sib8~ sib4 r
  r la sol8 do lab reb~ reb2. r4
  r4 r8 sol, do sol do reb~ reb2. r4
  r4 lab8 reb4 sol,8 do fad,~ fad2. r4
  r8 mi la si r sib fa4~ fa2. r4
  R1
  r4 r8 mib lab mib lab sol~ sol2 r
  r4 r8 re sol lab sol fa~ fa2 do
  re4. mib re4 reb1~ reb4 r r2
  R1
  \bar "||"
  \tempo "Zouk (slow)" 2 = 48
  \key sib \major
  R1*4
  r4 do8 fa do8. sib16~ sib8 mib
  r4 sib8 mib sib8. mib16~ mib8 fa
  \tempo "Zouk" 2 = 56
  R1*2
  do4 fa do8 fa do4
  re sol re8 sol re4
  \tempo 2 = 64
  R1*2
  mib8. fa16~ fa8 sib r fa sib4
  fa8. sib16~ sib8 fa r sib do4
  R1*2
  sol8. do16~ do8 sol~ sol do sol4
  la8. re16~ re8 do~ do si fad4
  \tempo "Zouk" 2 = 68
  \key si \major
  R1*2
  sold8. dod16~ dod8 sold~ sold dod si4
  fad8. si16~ si8 lad~ lad sold fad4
  r2 dod red4. mi red4 mi1~ mi2 r
  r mi red4. mi mid4 fad1~ fad2 r
  R1
  \bar "|."
}

ZoukPrune =
\relative do' {
  \key do \minor
  R1*4
  R1*4*2
  R1*4*4
  sol'4 fad fa mi8 lab~ lab4 r r fa
  la4. fad la4 sib4.( si8) r2
  r4 lab do2 la4 do8 sib~ sib2 r4
  sol sib do4~ do8 la4 reb8~ reb4 r
  sib1 la4. sol fad4 fa1~ fa4 r r2
  R1*4
  R1*4
  R1*4 R1
  fad8 lad si4 sold8 do4. R1
  la8 sib4 lab8 sol si4.
  r4 lab do2 la4 do8 sib~ sib2 r4
  sol sib do4~ do8 la4 reb8~ reb4 r
  sib1 la4. sol fad4 fa1~ fa4 r r2
  R1*4
  R1*4 R1
  r4 sol sib sol8 lab do2 r
  la8 sib4 do8 reb4 fa~ fa2 r
  dod4 mi8 red4 si8 re4~ re2 r
  si8 sib4 lab8 sol si4.
  r4 lab do2 la4 do8 sib~ sib2 r4
  sol sib do4~ do8 la4 reb8~ reb4 r
  sib1 la4. sol fad4 fa1~ fa4 r r2
  r2 la4 fa
  %% Zouk
  \key sib \major
  mib8. fa16~ fa8 sol~ sol sold la sol
  la8. do16~ do8 la8~ la sol r4
  r fa8 mib sol8. mib16~ mib8 sol
  r4 mib8 re fa8. re16~ re8 fad
  R1*2
  mib4 sol mib8 sol mib4
  re fa re8 fa re4
  R1*2
  mib8. sol16~ sol8 mib r fa la4
  fa8. sol16~ sol8 la r sib re4
  R1*2
  sib8. re16~ re8 mib~ mib do mib4
  do8. re16~ re8 mib~ mib re fa4
  R1*2
  \key si \major
  red8. fad16~ fad8 red~ red fad mi4
  dod8. mi16~ mi8 red~ red si red4
  R1*2
  r2 si lad4. sold soldd4 lad1~ lad2 r
  r si lad4. sold lad4 si1~ si2 r
  R1
}

ZoukPianoMd =
\relative do' {
  \key do \minor
  \t {r4 <do re mib sol>8~} q4
  \t {r4 <do re mib sol>8~} q4
  \t 4 {r4 <do mib sol>8~ q fa mib} <sib do mib solb>2
  \t {r4 <do re mib sol>8~} q4
  \t {r4 <do re mib sol>8~} q4
  \t 4 {r4 <do mib sol>8~ q fa mib} <sib do mib solb>2
  \t {r4 <sib re mib sol>8~} q4
  \t {r4 <do re fa>8~} q4
  \t {r4 <solb do mib>8~} q4
  <fa do' re>4 r
  \t {r4 <sib re mib sol>8~} q4
  \t {r4 <do re fa>8~} q4
  \t {r4 <solb do mib>8~} q4
  <fa do' re>4 r  \t {r4 <sib re mib sol>8~} q4
  \t {r4 <do re fa>8~} q4
  \t {r4 <solb do mib>8~} q4
  <fa do' re>4 r
  \t 4 {r4 <sol lab do mib>8~ q4 <fa lab dob mib>8~} q4 r
  \t 4 {r4 <fa do' re>8~ q4 sib'8}
  <dob, mib fa sib>4. r8
  %% Rock
  <sol do>8 r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sol,, do> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sib sol'> mib do <do la'> la do mib fa
  <re sib'> q q <mib sib'> sib <re sib'> <si! re sib'> q
  <reb, lab'> q q <reb solb> q q <si fad'> q
  q <si mi> q q <la si mi> <sol la re> <fa sol do> <mib fa sib>
  <do sol'> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sol,, do> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sib sol'> mib do <do la'> la do mib fa
  <re sib'> q q <mib sib'> sib <re sib'> <si! re sib'> q
  <lab mib'> q q <lab reb> q q <fad dod'> q
  q <fad si> q q <mi fad si> <re mi la> <do re sol> <sib do fa>
  <re, fa sol do re> q q q r2
  <mib sol lab do>8 q q q r2
  <dod mi sol la>8 q q q r2
  <sib dob mib fa>8 q q q r <re sol> q q
  <do sol'> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sol,, do> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sib sol'> mib do <do la'> la do mib fa
  <re sib'> q q <mib sib'> sib <re sib'> <si! re sib'> q
  <reb, mib lab> q q <dob reb solb> q q <la si mi> q
  <lab sib mib> <solb lab reb> <fa sol do> <dob mib fa sib> r2
  %% Soul
  \t {r4 <do re mib sol>8~} q4
  \t {r4 <do re mib sol>8~} q4
  \t 4 {r4 <do mib sol>8~ q fa mib} <sib do mib solb>2
  \t {r4 <do re mib sol>8~} q4
  \t {r4 <do re mib sol>8~} q4
  \t 4 {r4 <do mib sol>8~ q fa mib} <sib do mib solb>2
  \t {r4 <sib re mib sol>8~} q4
  \t {r4 <do re fa>8~} q4
  \t {r4 <solb do mib>8~} q4
  <fa do' re>4 r
  \t 4 {r4 <sol lab do mib>8~ q4 <fad sib do fa!>8~} q4 r
  \t 4 {r4 <re' fa sol>8~ q4 <dob mib fa sib>8~} q4. r8
  %% Rock
  <sol do>8 r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sol,, do> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <lab mib'> lab mib <lab reb> lab reb, lab' reb,
  <fad dod'> fad dod <fad si> fad si, fad' si,
  <mi si'> si <mi la> la, <re la'> la <re sol> sol,
  <sold dod fad> <sol do fa> <fa sib mib> <mi la re>
  r <fa, sol> q q
  <sol do> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sol,, do> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sib sol'> mib do <do la'> la do mib fa
  <re sib'> q q <mib sib'> sib <re sib'> <si! re sib'> q
  <reb, mib lab> q q <dob reb solb> q q <la si mi> q
  <lab sib mib> <solb lab reb> <fa sol do> <dob mib fa sib> r2
  <re fa sol do>8 q q q r2
  <reb fa solb sib>8 q q q r2
  <do mib sol lab>8 q q q r2
  <do re sol>8 q q q r2
  <sol do>8 r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sol,, do> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sol,, do> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sol,, do> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <lab mib'> lab mib <lab reb> lab reb, lab' reb,
  <fad dod'> fad dod <fad si> fad si, fad' si,
  <mi si'> si <mi la> la, <re la'> la <re sol> sol,
  <sold dod fad> <sol do fa> <fa sib mib> <mi la re>
  r <fa, sol> q q
  <sol do> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sol,, do> r r <la do> r r r r <fa do'> r r <lab reb> r <solb'' lab reb> r r
  <sib sol'> mib do <do la'> la do mib fa
  <re sib'> q q <mib sib'> sib <re sib'> <si! re sib'> q
  <reb, mib lab> q q <dob reb solb> q q <la si mi> q
  <lab sib mib> <solb lab reb> <fa sol do> <dob mib fa sib> r2
  R1
  %% Zouk
  \key sib \major
  <fa, sib do mib>1 R1
  fa8. fa16 fa8 fa r8. fa16 fa8 fa
  r8. fa16 fa8 fa r8 fa16 fa fa8 r
  fa8. fa16 fa8 fa r8. fa16 fa8 fa
  r8. fa16 fa8 fa r8 fa16 fa fa8 r
  \repeat unfold 6 {
    <mib' sol sib>8. q16 q8 q r q <fa la do>4
    <re fa sib>8. q16 q8 q r q <sib mib sol>4
  }
  \key si \major
  \repeat unfold 2 {
    <mi sold si>8. q16 q8 q r q <fad lad dod>4
    <red fad si>8. q16 q8 q r q <si mi sold>4
  }
  <mi' sold si>8. q16 q8 <fad lad dod>4 <mi sold si>16 q <fad lad dod>4
  q16 q q q r8 <red fad lad>16 q
  r <mi sold si>8 <dod mi sold>16 q <mi sold si>8.
  <do sol' sib re>8 q16 q~ q q q8 r16 <sol' sib re fad> q q q8 r
  <mi sib' re fad>2. r4
  <mi sold si>8. q16 q8 q r16 q q q q4
  <fad dod' fad>8. q16 q q q8 <mi do' fad>16 q <fad dod' fad> q r q q8
  <lad red si'>8. <red, fad sold si>16 q8 <dod, red fad lad>16 q
  <red fad sold si>8 <red' fad red'> <fad red' fad> <sold red' sold>
  <si red si'>4 si si, si,16 si si si si4 r r2
}

ZoukPianoMg =
\relative do' {
  \clef bass
  \key do \minor
  do,4 r8. do16 sib4 r8. sib16 la4 r8. la16 lab8. mib'16~ \t {mib8 fa mib}
  do4 r8. do16 sib4 r8. sib16 la4 r8. la16 lab8. mib'16 \t {solb8 fa mib}
  do4 r8. do16 sib4 r8. sib16 lab4 r8. lab16 sol4 sib16 si8.
  do4 r8. do16 sib4 r8. sib16 lab4 r8. lab16 sol4 sib16 si8.
  do4 r8. do16 sib4 r8. sib16 lab4 r8. lab16 sol4 \t {r8 sol solb}
  fa4 mib reb lab' sol8. sib16 si8. \acciaccatura fad'8 sol16~ sol4 r
  %% Rock
  do,8 do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' lab sol, sol' sol, fa' mib
  reb reb reb solb solb solb solb solb
  si, si' si, mi mi mi mib' reb
  do do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' lab sol, sol' sol, fa' sol
  lab, lab lab reb reb reb reb' reb,
  fad fad' fad, si si, si sib' lab
  <sol, sol'> q q q r2
  q8 q q q r re' fa sol
  <sol, sol'> q q q r2
  q8 q q q r <lab lab'> <sib sib'> <si si'>
  do' do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' lab sol, sol' sol, fa' mib
  reb reb reb' reb, dob' reb mib, fa
  <solb, solb'> q q <sol sol'> r2
  %% Soul
  do4 r8. do16 sib4 r8. sib16 la4 r8. la16 lab8. mib'16~ \t {mib8 fa mib}
  do4 r8. do16 sib4 r8. sib16 la4 r8. la16 lab8. mib'16 \t {solb8 fa mib}
  do4 r8. do16 sib4 r8. sib16 lab4 r8. lab16 sol4 \t {r8 sol' solb}
  fa4 r8. mib16 re4 \t {r8 dod' re}
  sol,8. sib16 si8. \acciaccatura fad'8 sol16~ sol4 r
  %% Rock
  do,8 do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  lab, lab, lab reb reb reb reb' reb,
  fad fad, fad' si si, si si' si,
  mi mi mi la la, la la' la,
  re re re sol r lab sib si
  do8 do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' lab sol, sol' sol, fa' mib
  reb reb reb' reb, dob' reb mib, fa
  <solb, solb'> q q q r re' mib fa
  <sol, sol'> q q q r2
  q8 q q q r re' fa sol
  <sol, sol'> q q q r2
  q8 q q q r <lab lab'> <sib sib'> <si si'>
  do'8 do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  lab, lab, lab reb reb reb reb' reb,
  fad fad, fad' si si, si si' si,
  mi mi mi la la, la la' la,
  re re re sol r lab sib si
  do8 do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' sib, reb reb reb reb' mib
  do do, do fa fa fa fa' fa,
  sib, sib' lab sol, sol' sol, fa' mib
  reb reb reb' reb, dob' reb mib, fa
  <solb, solb'> q q q r2
  <mib mib'>8 q q q r2
  %% Zouk
  \key sib \major
  fa'4 r fa r fa fa fa r
  fa r fa r fa fa fa8 fa fa do
  fa4 r fa r fa fa fa8 fa fa sib,
  fa'4 fa fa'2 fa,4 fa fa'2
  fa,4 fa fa'2 fa,4 fa fa'2
  \repeat unfold 4 {
    fa,8. fa'16~ fa8 fa, do'4 mib8 fa
    fa,8. fa'16~ fa8 fa, sib4 do8 fa
  }
  \key si \major
  \repeat unfold 2 {
    fad,8. fad'16~ fad8 fad, dod'4 mi8 fad
    fad,8. fad'16~ fad8 fad, si4 dod8 fad
  }
  dod, dod' sold' dod, dod' sold dod, sold'
  red, red' lad' red, mi, mi' fad, fad'
  sol, sol' do sol do do, sol' sol, sol,2. r4
  dod8 dod' sold' dod, dod' sold dod, sold'
  fad, fad' dod' fad, fad, fad, dod'' fad,
  si si' dod sold fad fad' red, dod
  si4 si'16 si si si si4 si, si, r r2
}
