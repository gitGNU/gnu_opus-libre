%-- Tuos Duba -- panthere.ly --------------------------------------%
% 2014, Valentin Villenave <valentin@villenave.net>

\language "italiano"

PanthereTitre = "La panthère penchée"

PanthereTubaUn =
\relative do' {
  \clef bass
  \time 2/2
  \tempo "Andantino"
  sol4(\mp mi) mi-. sol-.
  sol( mi) mi-. sol-.
  lab(\< fa lab)\! r
  do,--\p r r2
  sol'4(\mp mi) mi-. sol-.
  sol( mi) mi-. sol-.
  fa(\> dod fa)\! r
  R1
  sol4(\mf\< mi) mi-. sol-.
  sol\! r r2
  lab\mp fa
  r4 mi-. r lab-.
  r lab(\> sol fa)\!
  r2 r4 mi-.\p
  \bar "|."
}

PanthereTubaDeux =
\relative do {
  \clef bass
  mi4--\p r r2
  mi4-- r r2
  fa4-- r r2
  lab4(\mp fa lab) r
  mi--\p r r2
  mi4-- r r2
  do4-- r r2
  mi4(\< re mi fad)
  mi--\! r r2
  sol4(\mf mi) sol( mi)
  do(\< fa sol2)\!
  r4 re-.\mp r sol-.
  r do,(\> fa re)\!
  r2 r4 mi-.\p
}