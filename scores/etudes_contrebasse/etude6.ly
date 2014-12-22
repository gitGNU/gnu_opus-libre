%-- Études pour contrebasse -- etude6.ly ---------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Six =
\relative do' {
  \tocItem \SixTitre
  \clef bass
  \time 2/2
  \tempo "Comodo"
  do8-.\mf re-. sol,4->--
  do8-.\downbow re-. la4->--
  do8-.\downbow re-. sol,-. do-. la4->-- r
  re,8(\p ^"(sotto voce)"
  mib sol4) lab8( sol re4)
  re8( mib sol lab) re,( solb mib4)
  do'8-.\mf re-. la4->--
  sol8-.\downbow la-. do4->--
  sol8-.\downbow do-. la-. sol-. mi-. re'-. la4->--
  re,8(\p mib lab4) fa8( mib re4)
  re8( mib lab solb) lab4-- r
  do16-.\f re-. do-. re-. sol,4->--
  re'16-.\downbow do-. re-. do-. la4->--
  do16-. re-. do-. re-.
  sol,-. la-. sol-. la-.
  mi-. re-. mi-. re-. sol4->--
  sib,8(\downbow \mp re) la16 (sib la sib)
  mi(\< mib sol sold) la4\!
  do16-.\f re-. do-. re-. la,8(\mp si sib la)
  do'16-.\f re-. do-. re-.
  r8 sib,(\upbow \mp sib) do'16-.\ff ^"staccatissimo" re-.
  r8 sold,,(\upbow \p\< si sib)
  re-.\mf re'-. mi,-. do'-. la-. sol-.
  re'->( mi)
  mi,-.\> sol-. la-. re,-. mi4--\p r
  sib8( la sib16 la sib la)
  sold8(\cresc la) sold16( la sold la)
  mib'( re mib re) lab'(\< sol lab sol)
  dod4->--\upbow \! re,-.\CaV\sfz
  \bar "|."
}
