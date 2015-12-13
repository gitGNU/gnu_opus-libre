\language "italiano"

SolCb =
% \transpose re do
\relative do' {
  \clef bass
  \key la \minor
}

SolPianoMd = \relative do' {
  \key la \minor
}

SolPianoMg = \relative do' {
  \clef bass
  \key la \minor
}
%{
\include "articulate.ly"
\score {
  \articulate <<
   {\set Score.skipTypesetting=##t
    %r1*4*10
    \set Score.skipTypesetting=##f
   }
  \new Staff \with { midiInstrument = "baritone sax" } \transpose do do, \SolCb
  \newPianoStaff $"SolPiano"
  >>
  \midi {}
}
%}