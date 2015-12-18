%-- Tuos Duba -- lama.ly ------------------------------------------%
% 2015, Valentin Villenave <valentin@villenave.net>

\language "italiano"

LamaTitre = "Le lama malade"

LamaTubaUn =
\relative do' {
  \clef bass
  \time 3/2
  \tempo "Lento doloroso"
  \tuplet 3/2 {mi4(\mf fa mi} la,2.) r4
  \tuplet 3/2 {re4( mi re} la2.) r4
  \tuplet 3/2 {do4( re do} fa,2.) r4
  \tuplet 3/2 {sib4( do si} mi,2. mi'4)
  \tuplet 3/2 {mi4( fa mi} la,2.) r4
  \tuplet 3/2 {re4( mi re} fa,2.) r4
  \tuplet 3/2 {sib4( do sib} re,2 sold)
  \tuplet 3/2 {r4 do( si} la1)
  s1.*8 % 8 mesures au moins... (probablement plus)
  \bar "|."
}

LamaTubaDeux =
\relative do' {
  \clef bass
  % accompagnement en noires (non-triolets) ?
  % ou contrechant ? (ou mélange des deux) ?
  s1.*16
}
