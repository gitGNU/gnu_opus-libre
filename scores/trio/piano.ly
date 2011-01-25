%-- Trio -- piano.ly ----------------------------------------------%
% (c) 2003-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

PianoMd = \relative do' {
  r4-\dyn "ff_(décidé)" \ottava #1
  \pl {
    <sol' dod fad>2_\sfz ~ <sol dod fad>8 <dob re mi sib'!>_>
  } {
    <sib' mi lab do!>2~ <sib mi lab do>8 <reb fa sol lab!>^>
  }
  r4
  \pl {<lad, red fad>8_>_. r r2} <do' re la' mi'>2.^>
}

PianoMg = \relative do {
  \clef bass
  <do,, do'>4~ \hideNote <do do'>1*3/4 s1 R1*2
}
