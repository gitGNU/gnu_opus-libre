\language "italiano"

FaCb =
% \transpose re do
\relative do' {
  \clef bass
  \key la \minor
}

FaPianoMd = \relative do' {
  \key la \minor
}

FaPianoMg = \relative do' {
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
  \new Staff \with { midiInstrument = "baritone sax" } \transpose do do, \FaCb
  \newPianoStaff $"FaPiano"
  >>
  \midi {}
}
%}