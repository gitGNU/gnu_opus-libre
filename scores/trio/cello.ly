%-- Trio -- cello.ly ----------------------------------------------%
% (c) 2003-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Violoncelle = \relative do' {
  \clef bass r8 do,,~^\ff
  \once \override Stem #'direction = #DOWN
  do4^\sfz ^\< s4. s8^\!
  R1*4
}

VioloncelleGhost = \relative do' {
  s4
  \once \override Stem #'cross-staff = ##t
  \once \override Stem #'length = #30
  \once \override Stem #'flag-style = #'no-flag
  \once \override Stem #'direction = #DOWN
  <\blackNote la'fad' re'>2~ <fad' re'>8~ <fa re'> \stopStaff
  s1*4
}