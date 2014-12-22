%-- Études pour contrebasse -- etude11.ly --------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Onze =
\relative do' {
  \tocItem \OnzeTitre
  \clef bass
  \time 3/4
  \tempo "Vivo"
  sol'16\f\CaV sol sol sol sol-.\noBeam r sold,,8(\mf\upbow la sib)
  sol''16\f sol sol sol sol-.\noBeam r si,,8(\mf\upbow do dod)
  sol''16\f sol sol sol sol-.\noBeam r re,(\<\downbow mib) \t {mi8( fa fad)}
  sol'16->\f sol r mib-> mib r mi-> mi r8 re16 re
  dod-> dod dod dod dod-.\noBeam r fa,,8--\mp \cresc si-- sold--
  \t 4 {dod-- sib-- mib-- do--\< fad-- mi,--} re'--\CaV la--\CaV
  sol''16\f sol sol sol sol-.\noBeam r <fad, sol>\upbow q q q q-. r
  <mi, sib'>->\ff q-> q-> q-> q->\noBeam r dod'8(\mp \upbow fad fa)
  <mi, sib'>16->\ff q-> q-> q-> q->\noBeam r mib'8(\mp la fa)
  <mi, sib'>16->\ff q-> q-> q->
  <fa si>-> q-> q-> q-> q->\noBeam r fad'-.\p \upbow sold-.
  la la la la la-.\noBeam r fad-.\downbow sold-. la re, sol, re'
  fad-. sold-. la-. la fad-. sold-. la-. la si\cresc la si la
  dod^"(non legato)" si dod si re do mib dod \t {re8(--\< fa--) fad--}
  sol16->\f\CaV\noBeam r do,(\upbow re)
  mib-. fa-. sol-.\CaV\noBeam r si,(\<\upbow sol) si-. mib-.
  sol-.\!\CaV\noBeam r mi,-.\downbow\p \< sold-.
  sib( la) red,-. fad-. do'( si) sold-. re'-.
  sol\f\CaV sol sol sol sol-.\noBeam r sold,,\upbow\mp sold la la sib-. r
  sol''\f sol sol sol sol-.\noBeam r si,,\upbow\mp si do do dod-. r
  sol''->\f sol r mi-> mi r fa-> fa r8 re16\CaV re
  mi,(\p\< mib) fad la sol fad sold si lab( sol) dod re
  <mi,, sib'>->\ff r q->\upbow q-> r q->\upbow q-> q-> r8 re''16\< mi
  sol\!\CaV sol sol sol sol-.\noBeam r mib,\upbow\mf mib do do si-. r
  sol''\ff sol sol sol sol-.\noBeam r dod,,\upbow\mp dod la la sold-. r
  sol''\ff sol sol sol sol-.\noBeam r si,,\upbow\p\> sib sol fad fa-.\! r
  sol''\dyn "ff_al_fine" sol sol sol
  sol,\CaV sol sol sol sol,-> sol-> sol-> sol->
  \bar "|."
}
