%-- Études pour contrebasse -- etude2.ly ---------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Deux =
\relative do' {
  \tocItem \DeuxTitre
  \clef bass
  \time 3/4
  \tempo "Minuetto"
  \partial 4 \t {fad,8(\upbow \mp fa mi)}
  red4-.\downbow la-.\downbow \t {fa'?8( mi mib)}
  re4-.\downbow mi,-.^"simile"\downbow \t {fad'8( fa mi)}
  red-. la--\mf \< sib( do) \t {dod( re sol)}
  <red lad'>4->-.\downbow \sfz mi,-.\downbow \p \t {fad'8( fa mi)}
  red-. mi,-. la4-. \t {fa'?8( mi mib)}
  re-. la-. mi4-. \t 4 {fad'8( fa mi)
  red la(\< sib) si( do dod) mi( fa fad)}
  <re sold>4->-.\sfz\downbow mi,-.\downbow \p \t {mi'8(\mf\> fa fad)}
  sol4-.\! fad,-.\p \t {red'8(\mf\> mi mid)}
  fad4-.\! sib,-.\p \t {mi8(\mf fa fad)}
  sol\downbow fad,--\downbow la-- mi'-- \t {re(\< mib fa)}
  fad4->-.\sfz\downbow la,-.\p\downbow \t {la'8(\< sib si)}
  do(\f re, dod re) \t {sold(\< la lad)}
  si?-.\! la,(\downbow sol la) \t 4 {la'--\f sib-- si--
  do( re,) la' sib(\> si do) sold( la lad}
  si?-.)\p la,--\downbow sib-- la-- \t {fad'(\< \upbow fa mi)}
  red4-.\! \t 4 {la8(\p si dod) fa?(\mf\> mi mib)}
  re4-.\! \t 4 {fa,8(\p sol la) fad'(\mf mi mib)}
  red4-. \t 4 {la8( sold sol) mib'(\p fa mib)}
  re4-- \t 4 {sold8(\<\upbow la sol la si sib)}
  re4-.\downbow\mf\CaV re,-.\downbow
  \bar "|."
}
