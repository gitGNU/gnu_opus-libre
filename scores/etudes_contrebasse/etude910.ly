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
  sib'4)\mf r8 sib(\>\downbow mi, sib
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
  mi2.\CaV ~ mi2\) r4 \bar "||"
  sol'8\((\pp\upbow \CaV mi sol\CaV mi) sol(\CaV mi
  mib sol)\CaV mib( sol\CaV mib mi)
  sol(\CaV mi la,\harmonic sol'\))\CaV r4
  mib8(\(\upbow mi mib mi) sol(\CaV mib
  mi sol)\CaV re( mib sol\CaV dod,)
  re( dod re dod) re( sol\CaV
  si, do) dod( re sib si)
  do( dod sib si) sol4--\CaV\downbow
  do2--\downbow\)\harmonic _"(sul G)" r8 sol\upbow \p \CaV
  mib^"(misterioso)"-1 si-2 la'-1\cresc fa-2 dod-4 sib'-2
  fad-4 re\!\CaV re'\>\CaV sol,\CaV
  mib-1 re\!\CaV re'\>\CaV sol,\CaV mib-1 si-2\! r4 \bar "||"
  la'2.\p\harmonic ^"(sul D)" sol'4\CaV_"(G)" la,2\harmonic ^"(D)"~
  la4\harmonic r8
  la,(\upbow \mp \< mib' la mib'4)\! r sol\p \downbow \CaV
  la,\harmonic_"(D)" mi\harmonic ^"(A)" re'\CaV
  mi,4.\harmonic ^"(A)" mi,8(\mp sib' mi sib'4) r8 re4.\CaV
  mi,4.\harmonic ^"(A)" mi,8(\p sib' mi sib') r sol'4\pp\CaV la,\harmonic
  mi2\harmonic sib8(\> mi
  sib' dod)\! r2
  <sol-1\harmonic re'-4\harmonic>2.\ppp \upbow _"G" _"D"
  <mi, mi'\harmonic>2.\< ^"(sul A)" ~ <mi mi'\harmonic>4\> r8 <>\!
  \bar "|."
}
