%-- Étoile sans couleur -- guitare.ly -----------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Guitare = \relative do' {
  \clef "G_8"
  \partial 16 s16
  R1*7/16*2
  r4 r16 <red red'\harmonic \parenthesize lad'\harmonic>8\laissezVibrer |
  R1*7/16
  la,,4\laissezVibrer dod'\laissezVibrer sib'4*1/2\laissezVibrer 
  \hideNote <la,, dod' sib'>~
  \hideNote \grace <la dod' sib'>4 r4
}
