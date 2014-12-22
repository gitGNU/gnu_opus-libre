%-- Études pour contrebasse -- etude0.ly ---------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

% 12 décembre 2013.

Zero =
\relative do' {
  \tocItem \ZeroTitre
  \clef bass
  \time 5/4
  \tempo "Moderato deciso"

  mi,,4\mf^"pizz." fa sol sib-- sol8 fa |
  mi4\laissezVibrer r1 |
  sol'2\((\downbow ^"arco" re4) sol( lab) |
  sol(\> re) do--\upbow mib-- re-- |
  sol2.\)\mp r2 |
  \bar "||"

  mi,4^"pizz."\mf fa8 sol sib4--\> sol fa |
  mi\!\laissezVibrer r
  r8 re'\laissezVibrer\p r2 |
  sol4\((\mf re) mib-- do-- si-- |
  sol'2-- sib4(\>\upbow la lab) |
  sol4\!\) r r8 sol,^"pizz." r2 |
  \bar "||"

  si4--\mp do8 re r8 fa4-- re8 do4
  \phrasingSlurDashed |
  si r sib'2^"arco"(\mf re,4) |
  sib'\(\upbow la,( si) sib' si,\downbow |
  sib'2\)\upbow mi,4\(\>\downbow fa si,~ |
  si sib'2.\p\)\upbow r4 |
  \bar "||"

  mi,8\pp^"pizz. (leggiero)" fa sol sib
  r4 si,2^"arco (cantabile)"\mp |
  la4( si2) sib'8^"pizz. simile"\p la sol\> fa |
  sib mi,\! r4 \stemDown si2.--\mp ^"arco" \upbow |
  \stemNeutral
  mi4*1/2^"pizz." s16 s
  si2.^"arco"(\sfp \downbow \> la4\upbow |
  sib2.)\downbow r2\! |
  \bar "||"

  mi,4->--^"(arco) détaché"\f \downbow
  fa->-- sol->-- sib->-- sol8-- fa-- |
  mi2->-- re'4\mp ^"pizz." fa\< sol |
  lab\! r mi,2.--\f ^"arco" | \stemUp
  si'4\p ^"pizz." do\> re fa\! r |
  mi,2--^"arco"\f si'4->--\upbow
  fa'->-- sib8->-.\upbow mi,,->-.\downbow
  \bar "|."
}
