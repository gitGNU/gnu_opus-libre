%-- Sardinosaures -- cachalotarie.ly ------------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

CachalotarieMesures = {
  \time 2/2
  \tempo "Allegro risoluto"
  \partial 2
  %\key sol \minor
  s1.
  %\key fad \minor
  s1*2
  %\key fa \minor
  s1*2
  %\key mi \minor
  s1
  %\key red \minor
  s1
  %\key re \minor
  s1
  %\key dod \minor
  s1
  %\key do \minor
  s1
  %\key si \minor
  s2
  %\key sib \minor
  s2
  %\key la \minor
  s2
  %\key sold \minor
  s2
  %%%%%%%%%%
  %\key sol \major
  s1
  %\key do \major
  s1
  %\key fad \major
  s1
  %\key si \major
  s1
  %\key fa \major
  s1
  %\key sib \major
  s1
  %\key mi \major
  s1
  %\key la \major
  s1
  %\key mib \major
  s1
  %\key lab \major
  s1
  %\key re \major
  s1
  %\key dod \major
  s1
  %\key do \major %% More like "null".
  s1
  %%%%%%%%%%
  \tempo "Lento"
  %\key sol \major
  s2
  %\key lab \major
  s2
  %\key la \major
  s2
  %\key sib \major
  s2
  %\key si \major
  s2
  %\key do \major
  s2
  %\key reb \major
  s2
  %\key re \major
  s2
  %\key sol \major % + \key sol \major
  s2
  %\key fad \major % + \key lab \major
  s2
  %\key fa \major % + \key la \major
  s2
  %\key mi \major % + \key sib \major
  s2
  %\key mib \major % + \key si \major
  s2
  %\key re \major % + \key do \major
  s2
  %\key reb \major % + \key dod \major
  s2
  %\key re \major % + \key re \major
  s2
  %\key reb \minor % + \key dod \minor
  s2
  %\key do \minor % + \key re \minor
  s2
  %\key si \minor % + \key mib \minor
  s2
  %\key sib \minor % + \key mi \minor
  s2
  %\key la \minor % + \key fa \minor
  s2
  %\key lab \minor % + \key fad \minor
  s2
  %\key sol \minor % + \key sol \minor
  s1. \bar "|."
}

CachalotarieVoix = \relative do' {
  \tempo "Allegro risoluto"
  \dynamicUp
  re'4--\mf sol8-. re-. sol,4-- mib8-. fad-. sib-.\> re,-. do-. la'-.\! |
  fad4-- r dod'--\f dod8-- la dod4-- fad,-- sold-- si-- |
  do4-- r8 fa-. sib,-. lab-. sol-. fa-. do'4-- mi,-- r2 |
  fad'4\(\mp la sol^"espr." fad
  dod2.\) r4 |
  re4\( fa mi re |
  sold,2.-- red4\) |
  sib'\( re do sib |
  fad\) si,8-. mi-.
  sib'4-> r |
  r2
  r4 r8 red-. |
  %%%%%%%%%%
  sol4-.\mf mi-. fad4.-- re8-. |
  mi-.\( re-. do-. la-. sol4--\) r |
  mid\(\> fad\)\! lad-- red,8\( dod\) |
  mi4\(\> fad\)\! si-- r8 dod-.\dyn "p_leggiero" |
  fa re mi do re sib mi8.-- do16\cresc |
  fa4-- re-- sol-- do,8\< mib |
  si'4\sfz r r red,-.\mp |
  \times 2/3 {mi\( re dod} si\) r |
  r8 sol'-. r4 fa\(\> mib\)\! |
  fa,\( sol\) do-- lab8-. sib-. |
  dod4-- la8-. si-. mi4-- r8 re-.\cresc |
  fad4-- red-- sold-- dod,8\< mid |
  si'4\sfz r r2 |
  %%%%%%%%%%
  \tempo "Lento"
  sol,4--\(\dyn "mf_ben sostenuto" sol--
  sol-- lab-- |
  mi-- la8 dod
  fa4\) r8 do |
  red4\( si\)
  mi\( sol,\) |
  solb\( sib
  re\) r |
  si4--\( re8 fad,
  dod4-- red-- |
  la'-- mi--
  la,2--\mf\) |
  sold'4--\( sold8 sold
  sol4-- sol-- |
  do,8\< fa sib2--\)\!
  r4 |
  \tempo "Allargando al fine"
  r8 sold\(\mp si4.\) fa8 sol\( re |
  si'4.\) fad8\( red'4\) r8 la |
  do4(^"dolce" lab2) dod,4 |
  si'--\> mi,-- mib-- sib'-- |
  re,2--\p
}

CachalotariePianoMd = \relative do' {
  r2 R1
  \clef treble la8(-. si-. dod-. re-.)
  <fad la>( re) <mi sold>( dod) |
  <re fad>( si) <dod mi>( la) <si re>( sold) <la dod>( mid) |
  lab-.( <sol sib>-. <lab do>-. <sib reb>-.)
  <do mib>4-- <sib fa'>8( lab) |
  <sol mi'>4-- \stemUp do8^( re \stemNeutral
  mi\mp \> fa sol lab) |
  si^(\dyn "p_con Ped." sol do, la' mi sol re fad,) |
  sib( fa' lab'-- mib dob'-- reb, sib'-- solb,) |
  fa'--( sib, la mi sol re do sib) |
  la( fad' mi'-- si la'-- dod, sold'-- red) |
  re(-- re, sib' mib, lab fa sol do,) |
  <re fad>( sol,) <la dod>( mi')
  <sib mib>( solb') <do, fa>( la') |
  <re, fa sold>(\< si') <mi, la>( do') <lad red fad>4->-.\! r |
  %%
  R1 do,8 re mi fa! sol la si do |
  dod red mid fad sold lad si dod |
  <fad, red'>(-. <mi dod'>-. <red si'>-. <dod lad'>-.)
  sold' fad mi red |
  <fa do'>( do) <mi la>( la,) <re fa>( fa,) <mi' sib'>( sib) |
  sol'(\cresc sol,) mib'( mib,) la'( la,) fa'( fa,) |
  <mi mi'>8_(\fp fad sold la si\> dod red mi) |
  <dod fad>(\pp la) <sold dod>( mi)
  <re sold>( fad) <si mi>( sold) |
  <sol do>( mib) <fa sib>( re) <fa' sib>( sib,) <mib fa>( fa,) |
  do'(-._\< do'-. sol-. fa-.) fa'(-. do-. sol-. fa-.) |
  <re' la'>4->-._\sfz r r2 |
  sid,,8\< dod red mid fad sold lad sid\! |
  r4 \ottava #2 do'''-.\pp \ottava 0 r2 |
  %%
  <sol,,,, si re sol>2--(\mp <sol sib mib sol>--) |
  <fad la dod fad>--( <fa la do fa>--) \clef bass |
  <mi sold si mi>--( <mi sol si mi>--) |
  <mib solb sib mib>--( <re fad la re>--) |
  <sol si re>--( <sol sib reb>--) |
  <fad la dod>--( <fa la do>--) |
  <mi sold si>--( <mi sol si>--) |
  <mib solb sib>--( <re fad la>--) | \clef treble
  red'''8(_\dyn "p_dolce" sold, mi red) re'( la fa mi) |
  re'( sib solb mib) do'( si sol mi) |
  do'(\dim lab fa reb) si'( la fad dod) |
  sib'( mib, sol, re)
  \set tieWaitForNote = ##t
  la''~\! re,~ sol,4~ <sol re' la'>2*1/2
  \ottava #1 la''4\laissezVibrer
}

CachalotariePianoMg = \relative do' {
  \clef bass
  r4 \ottava #-1 \pl
  { \acciaccatura fad,,,8\dyn "mp_sévère" \stemDown sol4-.}
  { \acciaccatura fad'8 \stemUp sol4-.}
  r \pl
  {\acciaccatura la,8 \stemDown sib4-.}
  {\acciaccatura la'8 \stemUp sib4-.}
  \ottava #0 r \pl
  {\acciaccatura re,8 \stemDown mib4-.}
  {\acciaccatura re'8 \stemUp mib4-.} |
  fad,8-.(\dyn "p_sans nuances" sold-. la-. si-.)
  dod4-- si-- | la-- sold-- fad-- mi-- |
  fa8-.( sol-. fa-. mib-.) reb4--\mf sol-- |
  do,-- \stemDown \md do''8_( \mg \stemNeutral sib
  lab sol fa mib) |
  mi,4--\laissezVibrer sol'( si la) |
  mib,--\laissezVibrer solb'( sib dob) |
  re,,--\laissezVibrer fa'( sol mi) |
  dod,--\laissezVibrer sold''( fad mi) |
  do,--\laissezVibrer fa'( re si) |
  si,-- lad'-- sib,-- <lab' reb>-- |
  la,-- <re' sol>8( la) <sold dod mi si'>4->-. r |
  %%
  \pl {
    sol,8\dyn "p_non legato" la si do re mi fad sol
  } {
    si do re mi fad sol la si
  } la, si do re mi fa sol la |
  lad si dod red \clef treble mid fad sold lad |
  si lad sold fad
  <mi dod'>(-. <red si'>-. <dod lad'>-. <si sold'>-.) |
  \clef bass sib la sol fa mi re do sib |
  la sol fa mib re do sib la |
  sold4->-- r r2 |
  r4 \acciaccatura sold8 la4-. r \acciaccatura dod8 re4-. |
  r \acciaccatura sol8 lab4-. \acciaccatura re8 mib4-.
  \acciaccatura sib'8 do4-. |
  \clef treble reb8_"non legato" mib fa sol lab sib do reb |
  \clef bass fad,,,,^\dyn "p_sempre" sol la si
  \pl {dod re mi fad} {mi' fad sol la} |
  sold, lad sid dod red mi fad sold |
  r4 \ottava #-1 la,,,-. \ottava #0 r2
  %%
  sol''1 fad2( fa) mi1 mib2( re) |
  <sol si re>(-- <lab dob mib>)-- |
  <la do mi>(-- <la dod mi>--) |
  <sib re fa>(-- <si re fad>--) |
  <do \parenthesize mib lab>(-- <do mi sol>--) \breathe |
  dod,8( sold' red' mi) re,( mib sol do) |
  re,( fad si dod) mib,( fa sib reb) |
  mi,( la do fa) mi,( si' red sold) |
  fad,( re' la' do)
  \set tieWaitForNote = ##t
  sol,~ re'~ la'4~ <sol, re' la'>2*1/2
  sol,4\laissezVibrer
}

