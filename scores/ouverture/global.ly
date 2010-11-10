%-- Ouverture -- global.ly ----------------------------------------%
% (c) 2002-2010 Valentin Villenave <valentin@villenave.net>

Titre = "Ouverture pour deux pianos"
PianoIInstr = "Primo"
PianoIIInstr = "Secondo"
PianoIShortInstr = "I."
PianoIIShortInstr = "II."

\language "italiano"

% TODO: Use global-measures context.

#(ly:set-option 'auto-piano-dynamics "both")

\layout {
  \context {
  \type "Engraver_group"
  \name Dynamics
  \alias Voice
  \alias Staff
  \consists "Output_property_engraver"
  \consists "Bar_engraver"
  \consists "Piano_pedal_engraver"
  \consists "New_dynamic_engraver"
  \consists "Dynamic_align_engraver"
  \consists "Text_spanner_engraver"
  \consists "Axis_group_engraver"

  pedalSustainStrings = #'("Ped." "*Ped." "*")
  pedalUnaCordaStrings = #'("una corda" "" "tre corde")
  \override VerticalAxisGroup #'staff-affinity = #CENTER
  \override VerticalAxisGroup #'inter-staff-spacing = #'((space . 5) (padding . 0.5))
  \override TextScript #'font-shape = #'italic
  \override DynamicLineSpanner #'Y-offset = #0

  \description "Holds a single line of dynamics, which will be
centered between the staves surrounding this context."
}
}

Mesures = {
  \tempo "Très décidé" 4 = 92
  \time 4/4 s1*2
  \time 5/8 s1*5/8*4
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/8 s4.
  \time 9/16 s16*9*3
  \time 2/4 s2*2
  \time 3/8 s4.
  \time 4/4 s1 \bar "||"

            s1*2
  \time 2/4 s2
  \time 4/4 s1*2
  \time 2/4 s2
  \time 4/4 s1
  \time 2/4 s2
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1*2
  \time 2/4 s2*7
  \time 3/8 s4. \bar "||"

  \tempo "Plus large" 4 = 60
  \time 2/2 s1*8
  \time 3/4 s2.
  \time 2/2 s1
  \time 3/4 s2.
  \time 2/2 s1
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/8 s4.

  \time 2/2 s1
  \time 3/4 s2.
  \time 2/2 s1
  \time 3/4 s2.
  \time 2/2 s1
  \time 3/4 s2.
  \time 2/2 s1
  \time 3/4 s2.
  \time 2/4 s2 -\startText "rit."
  \time 3/8 s4 s8\stopText \bar "||"

  \tempo "A tempo" 4 = 60
  \time 3/4 s2.*17
  \time 3/8 s4.
  \time 3/4 s2.
  \time 3/8 s4.
  \time 2/4 s2
  \time 3/4 s2.*6
  \time 4/4 s1
  \time 3/4 s2.
  \time 7/16 s16*7*3
  \time 3/16 s16*3
  \time 7/16 s16*7*4
  \time 3/4 s2.*2
  \time 4/4 s1
  \time 3/4 s2.*3
  \time 3/8 s4.
  \time 2/2 s1*6
  \time 3/4 s2.*3
  \time 3/8 s4.
  \time 2/2 s1*2 \bar "||"

  \time 3/4 s2.*2
  \time 4/4 s1*7
  \time 2/4 s2*6
  \time 3/8 s4.*8
  \time 2/4 s2
  \time 3/8 s4.*2
  \time 2/4 s2 \bar "||"

  \tempo "Poco stringendo" 4 = 100 %FIXME: use markup?
  \time 7/4 s4*7*10
  %% First version:
  %\time 7/4 s4*7*2 %%%
  %% Second version:
  \time 5/4 s4*5
  \time 2/4 s2*3
  \time 3/4 s2. %%%
                \bar "||"

  \tempo "Tempo I" 4 = 92
            s2.*12
  \time 2/4 s2
  \time 4/4 s1*2
  \time 5/4 s4*5*2
  \time 5/8 s8*5*3
  \time 9/16 s16*9*3
  \time 5/16 s16*5*6
  \time 2/4 s2*8
  \time 3/4 s2.
  \time 4/4 s1*6
  \time 3/4 s2.
  \time 2/4 s2*3
  \time 3/4 s2.
  \time 4/4 s1 \bar "|."
}