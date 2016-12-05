%{
\score {
  \unfoldRepeats \transpose do do, <<
    \Mesures
    \new Staff \with { midiInstrument = "contrabass" }  \Cs
    \new Staff \with { midiInstrument = "contrabass" }  \Css
    \new Staff \with { midiInstrument = "contrabass" }  \Cb
    \new Staff \with { midiInstrument = "contrabass" }  \Cbb
  >>
  \midi {
    \context {
      \Voice
      \remove Dynamic_performer
    }
  }
}
%}