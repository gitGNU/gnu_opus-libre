%-- Études pour contrebasse -- etude9.ly ---------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Neuf =
\relative do' {
  \tocItem \NeufTitre
  \clef bass
  \time 4/4
  \tempo "Grotesco"
  re,4-+\mf_"pizz." la'8(\upbow ^"arco" \< si do4-.)\! sold-.
  re-+_"simile" la'8(\upbow \< si do)\! dod,-.\p mib( fa)
  re4-+\mf la'8(\< si do4-.\!) re,-+
  sib'8(\< do reb4-.) <lab mib'>-.\sfp la,-+
  re-+ la'8(\mf si do4) sold,_"pizz."
  re'8-+ si'(\<\upbow do^"(arco)" re mib4-.\!) fa,8-. la,-+
  sold'(\downbow \mp\> lad si) sol-+ fad(\upbow sold la4-.)
  re,8(\p la') re,( sib')
  <>^"(poco. rit.)"
  si-. dod-. re4-.
  \tempo "A tempo"
  la,-+\f mi''8(\downbow fad) sol4-.\CaV mi,,-+
  la-+ mi''8(\downbow fad sol-.)\CaV mi,,-+ sib'(\upbow do)
  la4-+ re'8(\downbow mib) fa4-. la,,-+
  mi''8( fad) sol-. sol-.
  <>^"(poco rit.)"
  re(-.\upbow \> mib-. fa4-.)
  \tempo "A tempo"
  re,-+\p \t {sold8(\upbow la si)} do4-. mib,8( fa)
  re-+ sold-. \t {la(\downbow\< sib si} do4-.)\! re,-+
  do^"(arco)" \t {si'8(\upbow \< do dod} re4-.)\! sol,-+
  do,8--\downbow \< fad-. \t {sib( si do)} reb4-.
  do, \downbow \mf fa, \downbow
  \t {sold'8(\upbow la sib} si4-.) la,8-+ fa-.\downbow
  \t 4 {la'8(\< \upbow sib si) do( dod re)} mib4-. fa,,--
  \t {mi''8(\f \upbow fa fad} sol4-.)\CaV
  fa,,8-- sol''4--\CaV fa,,8-.
  sol''-.\upbow\CaV mib-. lab,-. si-.
  fa-.\> lab-. mib4-.
  re-+\p sold16(\downbow \< la sib si) do4-.\! sold-.
  re8-+ la'-.\upbow sib16(\< do dod re) mib4-.\!
  sold,,16( la sold la)
  re4-+ mi16(\upbow fa fad sol sold4-.) re-+
  red16(\downbow mi red mi fa4-.)
  mi,16(\< fa fad sol sold4-.)\fp
  re'-+ la'16(\< si do re)
  mib8-. fa-. <dod sol'>4->-.\sfz
  <fa, do'>8-. <fad dod'>-. <fa do'>-. <sol\CaV lab>-.
  <do, sol'>-. <reb lab'>-. <do sol'>-. <re\CaV mib>-.
  \t {fa,--\ff fad-- sol--} <sold la\CaV >4-.r2
  \grace re'8^"pizz."_\CaV re'1\harmonic _"(sul G)" \laissezVibrer
  \bar "|."
}
