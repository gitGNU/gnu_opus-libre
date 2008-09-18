\paper {
  tagline = ##f
}

\layout {
  indent = 0
  ragged-right= ##f
  \context {
    \Staff
    \type "Engraver_group"
    \name "Spacer"
    \remove "Bar_engraver"
    \remove "Instrument_name_engraver"
    \remove "Time_signature_engraver"
    \remove "Key_engraver"
    \remove "Clef_engraver"
    \override StaffSymbol #'line-count = #1
    \override StaffSymbol #'color = #(rgb-color 0.9 0.9 0.9) 
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
  }
  \context { \Staff
    \remove "Time_signature_engraver"
    \override  Clef #'color = #(rgb-color 0.6 0.6 0.6)
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
    \override StaffSymbol #'thickness = #2.2
  }
  \context { \Score
    \accepts "Spacer"
  }
}

\score {
  << #(set-global-staff-size 16)
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \new Voice { s1 }
            \new Staff \new Voice { s1 }
          >>
        \new GrandStaff
          <<
            \new Staff \new Voice { s1 }
            \new Staff \new Voice { s1 }
          >>
        \new GrandStaff
          <<
            \new Staff \new Voice { s1 }
            \new Staff \new Voice { s1 }
          >>
      >>
    
    \new Spacer { s1 }

    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \new Voice { s1 }
            \new Staff \new Voice { \clef bass s1 }
          >>
      >>

    \new Spacer { s1 }

    \new ChoirStaff
       <<
         \new Staff \new Voice { s1 }
         \new Staff \new Voice { \clef bass s1 }
       >>

    \new Spacer { s1 }

    \new StaffGroup 
      <<
        \new GrandStaff 
          <<
            \new Staff \new Voice { s1 }
            \new Staff \new Voice { s1 }
            \new Staff \new Voice { s1 }
          >>
        \new GrandStaff
          <<
            \new Staff \new Voice { \clef alto s1 }
            \new Staff \new Voice { \clef alto s1 }
          >>
        \new GrandStaff 
          <<
            \new Staff \new Voice { \clef bass s1 }
            \new Staff \new Voice { \clef bass s1 }
          >>
        \new Staff \new Voice { \clef bass s1 }
      >>
      
    \new Spacer { s1 }
    
    \new PianoStaff
      <<
        \new Staff \new Voice { s1 }
        \new Staff \new Voice { \clef bass s1 }
      >>
  >>
}

