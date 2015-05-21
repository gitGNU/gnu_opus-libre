%-- Études pour contrebasse -- etude1.ly ---------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

% 2 décembre 2013.

Un =
\relative do' {
  \tocItem \UnTitre
  \clef bass
  \tempo "Adagio non troppo"
  \time 3/4
  mi,8(\downbow \sf fa) r2 |
  mi8(\downbow\> fad) sib4.\! r8 |
  mi,8\((\downbow\mf fa) la( si) la fa |
  mi( fa) la( si) la fa\) |
  mi( fad) la( sib) la fad |
  \t {mi\< fad la} sib(\upbow la)
  fad-- mi-- | la,4--\fermata \f
  mi'8(\mf \downbow fa) la( si) |
  \t {la( fa) mi} fa(\> la) si4\! \upbow |
  mi,8(\mp fad) la( sib) \t {la( fad) mi} |
  fad--\> la-- sib4--\downbow \!\fermata
  la8(\downbow fad | do\< dod) mi4.( fa8) |
  dod(\mf\> do) mi4-- do--\fermata\! |
  sol8(\p\downbow sold) fad( sol) dod4 |
  \t {sol8( sold) sol} fad sold do4\upbow |
  mi,4.\downbow \f fad8 la si |
  mi,4\downbow la8--( si--) re\CaV-- fa-- |
  mi,4 \t {la8\CaV(\< re\CaV mi)} sol\CaV-- sib-- |
  mi,,2^>^-\! sold8^-^(\> sol^-) |
  mi2^-\p r4 |
  dod'16(\(\downbow re\CaV) mi( fa)
  \t {re8( mi fa)} sol\CaV( mi) |
  fad(\< sol) sib2\mp\)^"(ten.)" |
  si16\(( la si la) fad( mi fad mi) do( la si la) |
  \t {fad8(^"(senza dim.)" mi fad)} mi2\) |
  \t {la8(\downbow re) sol}
  re16( la) si( la) \t {mi8-.--\downbow sol'( re)}
  <<
    {sol2.\p ~ sol2} \\
    {\voiceTwo r4 r8 re_+ la4_+ mi_+ r}
  >> sol'4\glissando \upbow \< |
  sib8\((\f\downbow la) fa( fad) la4~\downbow |
  la\) fa8\((\upbow \mf mi) do\downbow dod\upbow |
  mi2\)\downbow si8\((\upbow\mp do) |
  fad,\>\downbow sold\upbow do4\downbow\)\p\fermata
  mi,-.^"pizz." | la->\laissezVibrer la'-> r \bar "|."
}
