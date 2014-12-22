%-- Études pour contrebasse -- etude8.ly ---------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Huit =
\relative do' {
  \tocItem \HuitTitre
  \clef bass
  \time 2/4
  \tempo "Mosso"
  mi16->\mf sib mi sib mib,^"(non legato)" la mib la
  sold re sold re sol, reb' sol, reb'
  \time 3/8
  do->-.\< fad,->-.\! r4
  \time 2/4
  re''16 sold, re' sold, dod, sol' dod, sol'
  fad red do la sol dod re sold
  \time 3/8
  la->-.\< mib'->-.\! r4
  \time 2/4
  mi16\f si la mib' re la sold re'
  \time 3/8
  dod->-. sol->-. r4
  \time 2/4
  sold16\mp re dod sol' fad do si fa'
  \time 3/8
  sib,->-. mi,->-. r4
  re'16(\p sold, la mib') re8-.
  re'16( sold, sol dod) re8-.
  \time 2/4
  do,16(\fp\< la) do-. re-. fad-. sold-. si8-.\f
  \time 3/8
  dod,16(\p sold fad do') dod8-.
  dod'16( sol lab re) dod8-.
  \time 2/4
  si16(\fp re) si-. la-. fa-. si,-. fa'8-.
  do16(\< fad) sol-. dod,-. re( sold) la-. mib-.
  \time 3/8
  mi-.\f\> sib'-. mi8-.\pp r
  \time 4/4
  sold,4.\(--\dyn "f_espr." sol8 sold4.-- sol8
  sold( sol) dod( re) sold,4.\) r8
  \time 3/8
  do(--\upbow si-- fad--)
  \time 4/4
  fa4.\(\mf mi8 fa16( solb fa4) mi8
  fa(\> mi) dod( do) mi4.--\)\! r8
  \time 3/8
  sold,--\<\upbow re'-- red--
  \time 4/4
  la'8.\(\f sib16 la8 sib16( la)
  mib(\downbow la8) sib16 la( sib) re( mib)
  \time 3/8
  la,8--\) mi'16-.\mp\downbow sib-. mi-. sib-.
  \time 4/4
  la8.\(\f sib16 la( mib) la( sib)\)
  sold8.\(\mf la16 sold( re) sold8~
  \time 3/8
  sold\) dod,16(\mp sol') dod,-. sol'-.
  \time 2/4
  sold8-. do,16( fad) do-. fad-. sol8-.
  fad,16^"non legato" do' fad, do'
  sol' dod, sol' dod,
  re\< sold re sold red' la red la
  \time 3/8
  sib->-.\f mi->-. r4
  \time 2/4
  sold,16(\mf\< re) mib-. la-. sib->-. mi->-.\! r8
  sold,,16(\mp\< re') mib-. la-. sib->-. mi->-.\! r8
  \time 3/8
  fa,,16(->\downbow \p si) fad(-> do') sol(-> dod)
  r8 mi16-.\f\> sib'-. mi8-.\pp
  \bar "|."
}
