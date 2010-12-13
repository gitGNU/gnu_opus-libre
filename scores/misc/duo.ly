\language "italiano"

fluteUn =
\relative do' {
  \time 3/4
  do2.~ do2 r4 R2.
  do4. re sol2\fermata r4 |
  R2.
  do,2 re4~ re2.~ re2 r4 |
  
  do4-. re-. sol-. re-. sol-. do,-. sol'-. do,-. re-.
  r re16-. re-. r8 sol16-. sol-. r8 |
  re16-. re-. r8 sol16-. sol-. r8 do,16-. do-. r8 |
  sol'16-. sol-. r8 r2 |
  sol4 re do |
  
  r8 re r do r sol' |
  do,4( sol' re) do-. re-. sol-.
  re-. sol-. do,-. sol'-. do,-. re-. |
  do-. re-. sol-. re-. sol-. do,-. sol'-. do,-. re-.
}


fluteDeux =
\relative do' {
  do2.~ do2 r4 R2.
  do2.~ do2\fermata r4
  R2. do2. sol'2.~ sol2 r4
}
\score {
<<
\new Staff \with { midiInstrument = #"flute" } \fluteUn
  \new Staff \fluteDeux
  >> \midi {}
}


