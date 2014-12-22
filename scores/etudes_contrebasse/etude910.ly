%-- Études pour contrebasse -- etude10.ly --------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Dix =
\relative do' {
  \tocItem \DixTitre
  \set harmonicDots = ##t
  \clef bass
  \time 3/4
  \tempo "Tempo di barcarola"
  \partial 4.
  mi,,8(\upbow \< sib' mi
  sib'4)\mf r8 sib(\> mi, sib
  mi,4)\! r re''\(\CaV \p ~ re la2\harmonic _"(sul D)"
  sol'4(\CaV _"(sul G)" re)\harmonic sol\CaV
  la,4.--\)\harmonic \breathe mi,8(\upbow sib' mi
  sib'4) r la\(\harmonic ~
  la\harmonic sol'\CaV la,\harmonic
  mi2(_"(sul A)"\harmonic re'4)\CaV
  mi,--\)\harmonic r8 la,(\CaV \mp \upbow mib' la
  mib'4) r8 mib( la, mib
  la,4)\< mib'-- la--
  mib'--\!\upbow r8 sol4.\(\p\CaV
  mib4\upbow sol\CaV la,\harmonic
  mi2.\harmonic ~ mi4\harmonic r8 la4.\harmonic
  mi2.\CaV ~ mi2\) r \bar "||"
  sol'8(\pp \CaV mi sol\CaV mi sol\CaV mi
  mib sol\CaV mib sol\CaV mib mi
  sol\CaV mi la,\harmonic sol')\CaV r4
  mib8( mi mib mi sol\CaV mib
  mi sol\CaV re mib sol\CaV dod,
  re dod re dod re sol\CaV
  si, do dod re sib si
  do dod sib si) sol4--\CaV
  do2--\harmonic _"(sul G)" r8 sol\upbow \p
  mib^"(misterioso)" si la'\cresc fa dod sib'
  fad re\!\CaV re'\> sol, mib re\! re'\> sol, mib si\! r4 \bar "||"
  la'2.\p\harmonic sol'4\CaV la,2\harmonic ~ la4\harmonic r8
  la,(\upbow \mp \< mib' la mib'4)\! r sol\p \downbow \CaV
  la,\harmonic mi\harmonic re'\CaV
  mi,4.\harmonic mi,8(\mp sib' mi sib'4) r8 re4\CaV
  mi,4.\harmonic mi,8(\p sib' mi sib') r sol'4\pp\CaV la,\harmonic
  mi2\harmonic sib8(\> mi
  sib' dod)\! r2
  <sol\harmonic re'\harmonic>2.\ppp \upbow
  <mi, mi'\harmonic>2.\< ~ <mi mi'\harmonic>4\> r8 <>\!
  \bar "|."
}
