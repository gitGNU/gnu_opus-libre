%-- Sweet suite -- capriccio.ly ------------------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

CapriccioClavecinMd =
\relative do' {
  \tempo "A Leg Grow"
  do''16 do si la sol fa mi re do do si la sol fa mi re
  \clef bass
  do-- sol mi sol mi sol mi sol re'-- la fa la mi'-- si sol? si
  do-- sol mi sol mi sol mi sol re'-- la fa la mi'-- si sol si
  \clef treble
  fa'-- do la do sol'-- re la'-- mi
  si'-- mi, do'-- fa, dod'-- fa, re'-- fad,
  % 1 %
  sol'-- sol fad mi re do si la sol sol fad mi re do si la
  \mg \stemUp sol-- \md red' si' sol' sol si, red, \mg sol,
  la-- \md fad' dod' la' \mg si,,-- \md sol' red' si'
  \mg sol,,-- \md red' si' sol' sol si, red, \mg sol,
  la-- \md sol' dod la' \mg si,,-- \md sol' red' si'
  \stemNeutral do,, sold' mi' sold, re-- sib' fad' mi,--
  do' sold' fad,-- re' sib' sold,-- mi' si'
  % 2 %
  fa' mi re dod do dod re red mi red dod re mi fa mi re
  dod red fa mi re dod red fa mi re dod red fa mi re dod
  red fa mi re dod red fa mi dod red fa mi dod red fa mi
  re dod do si re si dod sib do la si sold sib sol sold si
  % 3 %
  la-- la sold fad mi re dod si la la sold fad mi re dod si
  la( re) si' dod la( re,) si' dod sib( mib,) do' re mib fa sol la
  la,( re,) si' dod sib( mib,) do' reb mib fa sol lab si, dod red mi
  do re mi reb mib fa re mi fad mib fa sol fad sold lad si
  % 4 %
  mi( mi,) mi'( red) red( dod) dod( si)
  si( la) la( sold) sold( fad) fad( mi)
  si'( do,) fad-. red'-. do,( si') fad-. red'-.
  do,( si') red-. fad,-. si( do,) red'-. fad,-.
  sol( fa') do( dod,) re'( red,) la'( sib,)
  si'( do,) sol( fa') la,( sold') mi,( red')
  red, mi red mi fa mi fad mi red mi red mi fad mi red dod
  % 5 %
  \slurUp
  \stemUp \mg si!-- si( \md re') \mg red,(
  \md fa') \mg fad,( \md la') lad,(
  re') do dod,( re') mi,( fa') sold,( fa') \stemNeutral
  \slurNeutral
  si,-- lad sold fad mi red dod si
  dod'-- lad sold fad red'-- sold, fad dod
  re' do la do red dod mi red re do sold do mi dod fa dod
  red( sol,) mi' fa si,( do,) do' dod
  sol( la,) sold' la mib( lab,) fab'( sib,)
  % 6 %
  \slurUp
  \stemUp sol'! sib \mg fa,( \md do')
  \md reb,( \md la') \mg sib,( \md fa')
  \mg solb, solb( \md mi'?) \mg mib,(
  \md sib') \mg dob,( \mg sol') \mg lab,(
  \md \stemNeutral \clef bass \ottava #-1
  solb)-- fa mib reb dob sib lab solb
  \slurNeutral
  lab'-- solb fa dob sib'-- do, mib reb
  sol solb fa solb sol lab mib fa la lab sol lab dob sib la sib
  \ottava #0 do re mi fa re mib solb fa
  mi sol fa lab solb sib lab dob \clef treble
  % 7 %
  re! mi fad sol la si dod re do re mi fa sol la si do
  reb-- la solb lab reb, fa lab fa
  mib'-- sib lab sib fa'-- do solb do
  reb-- lab fa lab do, lab' fa lab
  dob solb reb solb la re, sol, re'
  fa mi fa mi red mi re dod fa mi si dod red si' sol si
  % 8 %
  mib sol, fad mi re? do si? la? sol la sold fad mi re dod si
  la( re) sib'( do) re, fad reb'( mib) fad, la fa'( sol) la, si dod sib
  do re si dod red do re mi reb mib fa re mi fad mib fa
  sol lab sib do reb do sib lab la sol fa sold fad mi sol fa
  % 9 %
  sib( mib,) fa sol lab sib do re mib,( mib') re do sib lab sol fa
  mib-- sib lab sib lab sib lab sib
  fa'-- sib, sol sib sol'-- do, fa, sib
  mib-- lab, reb, lab' reb, sib' reb, lab'
  fa'-- sol, do, sib' sol'-- sib, dob, sib'
  la'-- sib, la' sib, sib'( si,) si'( do,)
  la'-- sib, la' sib, lab' re, lab mib
  % 10 %
  re' si, dod red mi fad sold lad si la si dod re mi fad sold
  la-- do, mib fad, dod fa la dod
  si'-- red, sol, red' dod'-- fa, la, fa'
  sib-- re, fad, re sib re sib' re
  do'-- mi, solb, mi' re'-- fad, sib, fad'
  si fad dod' fad, red' fad, do' sol re' sol, mib' sol, dod lab mi' sol,
  % 11 %
  fa'-- mi re do sib la sol fa mi'-- re do si la sol fa mi
  re'-- do sib la sol fa mib re do'-- sib la sol fa mi re do
  si do re mi reb fa mib sol fad fad sold lad fa sol la si
  do,( do') re, mi fa sol la si do( do,) si' la sol fa mi re
}

CapriccioClavecinMg =
\relative do' {
  \clef treble reb'16 si lad sold fad mi red dod
  \clef bass si reb do sib lab solb fa mib
  dod fad dod fad lad fad dod fad si, mi sold mi la, re fad re
  dod fad dod fad lad fad dod fad do mib lab mib si red fad red
  sib mib sol mib la, dod fad dod lab mib' lab, fad' re sold dod, la'
  % 1 %
  si, fad'' mid red dod si lad sold fad lab sol fa mib reb do sib
  \stemDown lab fad' re' \md si' si \mg re, fad, lab,
  fad mib' do' mib, mi, dod' sib' dod,
  lab mi' dod' \md si' si \mg dod, mi, lab,
  sol mi' do' \md sib' \mg solb,, mib' do' \md la'
  \mg \stemNeutral fa,, do' si fad' sold, red' re la'
  si, mi red sold la re \clef treble red sold
  % 2 %
  la re dod si la sol fad mi \clef bass
  re re, mi fad sol la si dod
  re-- la sol la sol la sol la mi'-- la, fa? la fad'-- si, mi, la
  re-- sol, do, sol' do, la' do, sol'
  mi'-- fad, si, la' fad'-- si, sib, fa'
  \clef treble sol'-- re la re la'-- re, si'-- mi,
  dod'-- sol re'-- fad, red'-- mi, fad'-- re,
  % 3 %
  \clef bass mi,, sib' do re mib fa sol la sib lab sib do
  \clef treble reb mib fa sol
  sold( la) reb, do sib( mib) sib lab reb( lab) sib si la re do fa
  mib reb sib do \clef bass lab solb si la sol fa mib reb do sib si la
  fad sib lab fa la sol mi sol fa mib mi re mib re reb do
  % 4 %
  fa, sol la sib do re mi fa mib fa sol la sib do re red
  mi-- si sold si mi, sold si sold
  fad'-- dod si dod sold'-- red la dod
  mi-- si sold si sol si sold si
  fad'-- dod sold re' sold-- red sol, mi'
  fad mid fad sib, mi fad red la fad' mid fad mid mi mib re do
  % 5 %
  \slurDown
  \stemDown sib do dod'( fa,) mi'( la,) \md sold'( \mg do,)
  \md si' si( \mg \stemUp \clef treble mi,) \stemDown \md red'(
  \mg \stemUp sol,) \md  \stemDown fad'(
  \mg \stemUp si,) \md \stemDown lad'(
  \mg \stemNeutral sib,) do sib do dod do re do
  \slurNeutral
  sib do sib do dod do re do
  si-- lad sold fad mi red dod si
  dod'-- si lad sold red'-- lad sold fad
  lad( si) sol' lab re,( solb,) mib' fa
  si,( dod,) dod' re sol,( sib,) la'( reb,)
  % 6 %
  \slurDown
  \clef bass \stemDown solb solb( solb,) mib'(
  re,?) dob'( la,?) lab'(
  fa,) sol? fa'( do,) reb'( re,) sib'( do,) \stemNeutral \ottava #-1
  \slurNeutral
  fa, sol? fa sol lab fad la lab si lab sib lab lab solb lab fa
  solb-- lab sib dob reb mib fa solb
  lab,-- dob reb mib sib-- fa' solb lab
  \ottava #0 solb-- fa mib reb lab'-- solb sol si
  sib-- solb la sol do-- lab sib solb
  % 7 %
  reb'( reb,) reb'( mib) mib( fa) fa( solb)
  solb( lab) lab( sib) sib( do) do( reb)
  re,( dod') sold-. la,-. re( dod') la,-. sold'-.
  dod( re,) la-. sold'-. dod( re,) sold-. la,-.
  sib( la') re( mib,) reb( do') sol( fad')
  mib( mi,) la( \clef treble lab') solb( sol,) si'( do,)
  la' sib la sib dob sib do sib la sib la sib si mib, si sol
  % 8 %
  \clef bass lab,-- lab sib do reb mib fa sol
  \clef treble lab lab sib do reb mib fa sol
  lab( sib) fa mi do'( reb) sol, fa
  mib'( fa) lab, sol sol'( lab) re, fad
  sol dod, mi fa la, si do mi, fa solb do, fa solb mi fa solb
  dob, fa solb mi fa solb sol lab re, lab' la fa sib si do re
  % 9 %
  mib-- re dod re mib re dod do dod re mib re reb do sib lab
  sol mib fa re sol solb fa fab mib re reb do si do si sib
  \clef bass lab sol solb fa mi fa mi mib
  reb do' la lab do, la' si, sib
  sold la' sold, la' si, sib' do, sib
  sold la' sold, la' do, lab' do, do'
  % 10 %
  sib,-- sib do re mib fa sol la
  sib sib \clef treble do re mib fa sol la
  sib re, \clef bass fad, la sib, fad' re' fad,
  lab, mi' do' mi, fad, re' sib' re,
  la fa' dod' fa, la mib fad do sol red' si' red, fa, dod' la' dod,
  sib, la sib lab sib sol sib reb la sib lab sib sol sib solb mib'
  % 11 %
  sol fa, sol la si do re mi fa sol, la sib do re mi fa
  la re, mi fa sol la si do mi fa, sol la sib do re mi
  fa mi fad sold \clef treble sib re do mi
  fa sol la si fad fad mi re
  mi sol la si do re mi fa mi sol, re mi fa sol la si
  \bar "|."
}
