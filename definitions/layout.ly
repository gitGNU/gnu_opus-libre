%------------------------------------------------------------------%
% Opéra Libre -- layout.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%%%%%%%%%%%%%%%%%%%%%%%%%%% Score Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%

includeLayout = \layout {
%% Spacing Variables ----------------------------------------------%
  indent = 2.0\cm
  \context {
    \Staff
    \remove "Axis_group_engraver"
    \consists "Hara_kiri_engraver"
    \accepts "Lyrics"
    \override Beam #'auto-knee-gap = #'()
    \override VerticalAxisGroup #'remove-empty = ##t
  }
  \context { \RhythmicStaff
    \remove "Time_signature_engraver" 
    \remove "Axis_group_engraver"
    \override VerticalAxisGroup #'remove-empty = ##t
    \consists "Hara_kiri_engraver"
  }
  \context { \DrumStaff
    \remove "Time_signature_engraver" 
    \remove "Axis_group_engraver"
    \override VerticalAxisGroup #'remove-empty = ##t
    \consists "Hara_kiri_engraver"
  }
  \context {
    \Score
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 5)
  }

%% Notation Rules -------------------------------------------------%
  \context {
    \Score
    \override TimeSignature #'style = #'()
    \override SystemStartBracket #'collapse-height = #1
    \override SystemStartBrace #'collapse-height = #1
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t
    autoBeamSettings = #modern-auto-beam-settings
    autoAccidentals = #modern-style
    ignoreMelismata = ##t
  }

%% Text inclusion -------------------------------------------------%
  \context {
    \type "Engraver_group"
    \name "TopLine"
    \consists "Output_property_engraver"
    \consists "Axis_group_engraver"
    \consists "Script_engraver"
    \consists "Dynamic_engraver"
    \consists "Mark_engraver"
    \consists "Text_engraver"
    \consists "Text_spanner_engraver"
    \consists "Metronome_mark_engraver"
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0 )
  }
  \context {
    \Score
    \remove "Mark_engraver"
    \remove "Metronome_mark_engraver"
    \accepts "TopLine"
    \override RehearsalMark #'side-axis = #Y
    \override RehearsalMark #'direction = #UP
    \override RehearsalMark #'extra-offset = #'(0.0 . 0.0 )
    \override RehearsalMark #'font-size = #10
    \override RehearsalMark #'self-alignment-X = #left
    \override MetronomeMark #'side-axis = #Y
    \override MetronomeMark #'direction = #DOWN
  }

%% Look and feel --------------------------------------------------%
  \context {
    \Score
    \override Accidental #'minimum-X-extent = #'(-0.2 . 0 )
    \override BarLine #'hair-thickness = #1.2
    \override OttavaBracket #'dash-fraction = #0.3
    \override OttavaBracket #'dash-period = #0.9
    \override TextSpanner #'dash-fraction = #0.3
    \override TextSpanner #'dash-period = #0.9
    \override LyricText #'self-alignment-X = #-0.5
    markFormatter = #format-mark-box-letters
    subdivideBeams = ##t
    beatLength = #(ly:make-moment 1 8)
  }

%% Vocal score layout  --------------------------------------------%
  \context {
    \Staff
    \type "Engraver_group"
    \name "StaffUp"
    \alias Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 5)
    \override StaffSymbol #'staff-space = #(magstep -1)
    fontSize = #-1
  }
  \context {
    \StaffUp
    \type "Engraver_group"
    \name "StaffDown"
    \alias Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 3)
  }
  \context {
    \type "Engraver_group"
    \name "Dynamics"
    \alias Voice
    \consists "Output_property_engraver"
    \consists "Axis_group_engraver"
    \consists "Dynamic_engraver"
    \consists "Skip_event_swallow_translator"
    \consists "Piano_pedal_engraver"
    %\consists "Bar_engraver"
    %\override BarLine #'transparent = ##t
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    \override TextScript #'font-size = #2
    \override TextScript #'font-shape = #'italic
    \override DynamicText #'extra-offset = #'(0 . 2.5)
    \override Hairpin #'extra-offset = #'(0 . 2.5)
    pedalSustainStrings = #'("Ped." "*Ped." "*")
    pedalUnaCordaStrings = #'("una corda" "" "tre corde")
  }
  \context {
    \Staff
    \type "Engraver_group"
    \name "StaffPiano"
    \alias Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
    \override StaffSymbol #'staff-space = #(magstep -1)
    fontSize = #-1
  }
  \context { \PianoStaff 
    \accepts "StaffUp"
    \accepts "Dynamics"
    \accepts "StaffDown"
    \accepts "StaffPiano"
    connectArpeggios = ##t % to avoid collisions with pianoDynamics
  }
  \context {
    \Score
    \override RehearsalMark #'font-size = #4
    %\override TimeSignature #'X-extent = #'(0 . 2)
  }

%%-----------------------------------------------------------------%
}
