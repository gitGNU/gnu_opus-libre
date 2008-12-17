%------------------------------------------------------------------%
% Opéra Libre -- settings.ly                                       %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%% Depends on: functions.ly

%%%%%%%%%%%%%%%%%%%%%%%%% Output options %%%%%%%%%%%%%%%%%%%%%%%%%%%

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'delete-intermediate-files #t)

%%%%%%%%%%%%%%%%%%%%%%%%%% Common Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Paper size -----------------------------------------------------%
% #(set-default-paper-size "a4" 'landscape)

%% Page breaking --------------------------------------------------%
#(define page-breaking ly:minimal-breaking)

%% Staff size -----------------------------------------------------%
#(set-global-staff-size 14)

%%%%%%%%%%%%%%%%%%%%%%%%%%% Score Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%

includeLayout = \layout {
%% Spacing Variables ----------------------------------------------%
  indent = 2.0\cm
  \context {
    \Staff
    \remove "Axis_group_engraver"
    \consists "Hara_kiri_engraver"
    \remove "Time_signature_engraver"
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
    \override StaffSymbol #'line-count = #1
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
    %\override SystemStartBrace #'collapse-height = #1
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t
    autoBeamSettings = #modern-auto-beam-settings
    autoAccidentals = #modern-accidentals-style
    autoCautionaries = #modern-cautionaries-style
    extraNatural = ##f
    ignoreMelismata = ##t
    tieWaitForNote = ##f %% uglier, but safer
  }

%% Text inclusion -------------------------------------------------%
  \context {
    \type "Engraver_group"
    \name "TopLine"
    \consists "Output_property_engraver"
    \consists "Axis_group_engraver"
    \consists "Script_engraver"
    \consists "New_dynamic_engraver"
    \consists "Dynamic_engraver"
    \consists "Text_engraver"
    \consists "Text_spanner_engraver"
    \consists "Metronome_mark_engraver"
    \consists "Time_signature_engraver"
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0 )
  }
  \context {
    \Score
    \remove "Metronome_mark_engraver"
    \accepts "TopLine"
    \override RehearsalMark #'side-axis = #Y
    \override RehearsalMark #'direction = #UP
    \override RehearsalMark #'outside-staff-priority = #900
    \override RehearsalMark #'self-alignment-X = #left
    \override MetronomeMark #'side-axis = #Y
    \override MetronomeMark #'direction = #DOWN
    \override TextScript    #'outside-staff-priority = #900
    \override TextSpanner   #'outside-staff-priority = #1000
  }
  \context {
    \Lyrics
    \remove "Instrument_name_engraver"
    \override LyricSpace #'minimum-distance = #0.9
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
    \override DynamicText #'self-alignment-X = #-.4
    markFormatter = #format-mark-box-letters
    subdivideBeams = ##t
    beatLength = #(ly:make-moment 1 8)
  }

%% Vocal score layout  --------------------------------------------%

  %FIXME: put in a separate variable
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
    \accepts "StaffDown"
    \accepts "StaffPiano"
    connectArpeggios = ##t % to avoid collisions with pianoDynamics
  }
  \context {
    \Score
    \override RehearsalMark #'font-size = #4
    %\override TimeSignature #'X-extent = #'(0 . 2)
  }


%% Individual parts layout ----------------------------------------%

  %FIXME: put in a separate variable
  \context {
    \Voice
    \type "Engraver_group"
    \name "GhostVoice"
    \remove Multi_measure_rest_engraver
    \remove Rest_engraver
  }
  \context {
    \Score
    \remove Mark_engraver
    \accepts GhostVoice
  }
    \context {
    \name PseudoVoice
    \alias Voice
    \type "Engraver_group"
    \consists "Note_heads_engraver"
    \consists Pitch_squash_engraver
    squashedPosition = #0
    \override NoteHead #'stencil = ##f
  }
  \context {
    \Staff
    \accepts PseudoVoice
  }
%%-----------------------------------------------------------------%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%% Parts Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%

includePartsLayout = \layout {
%% Spacing Variables ----------------------------------------------%
  indent = 2.0\cm
  \context { \Staff
    \consists "Hara_kiri_engraver"
    \override Beam #'auto-knee-gap = #'()
    \override VerticalAxisGroup #'remove-empty = ##t
  }
  \context { \RhythmicStaff
    \override VerticalAxisGroup #'remove-empty = ##t
    \consists "Hara_kiri_engraver"
  }
  \context { \DrumStaff
    \override VerticalAxisGroup #'remove-empty = ##t
    \consists "Hara_kiri_engraver"
    \override StaffSymbol #'line-count = #1
  }
  \context { \Score
    skipBars = ##t
  }

%% Notation Rules -------------------------------------------------%
  \context {
    \Score
    \override TimeSignature #'style = #'()
    \override SystemStartBracket #'collapse-height = #1
    %\override SystemStartBrace #'collapse-height = #1
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t
    autoBeamSettings = #modern-auto-beam-settings
    autoAccidentals = #modern-accidentals-style
    autoCautionaries = #modern-cautionaries-style
    extraNatural = ##f
    ignoreMelismata = ##t
    tieWaitForNote = ##f %% uglier, but safer
  }
  \context {
    \Score
    \override TextScript    #'outside-staff-priority = #900
    \override TextSpanner   #'outside-staff-priority = #1000
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
    \override DynamicText #'self-alignment-X = #-.4
    markFormatter = #format-mark-box-letters
    subdivideBeams = ##t
    beatLength = #(ly:make-moment 1 8)
  }
  \context { \PianoStaff
    connectArpeggios = ##t % to avoid collisions with pianoDynamics
  }

%% Individual parts layout ----------------------------------------%
  \context {
    \Voice
    \type "Engraver_group"
    \name "GhostVoice"
    \remove Multi_measure_rest_engraver
    \remove Rest_engraver
  }
  \context {
    \Score
    \remove Mark_engraver
    \accepts GhostVoice
  }
    \context {
    \name PseudoVoice
    \alias Voice
    \type "Engraver_group"
    \consists "Note_heads_engraver"
    \consists Pitch_squash_engraver
    squashedPosition = #0
    \override NoteHead #'stencil = ##f
  }
  \context {
    \Staff
    \accepts PseudoVoice
  }
%%-----------------------------------------------------------------%
}


%%%%%%%%%%%%%%%%%%%%%%%%% Libretto Layout %%%%%%%%%%%%%%%%%%%%%%%%%%

includeLivretLayout = \layout {
  indent = 2.0\cm

%% Special contexts  ----------------------------------------------%
  \context {
    \ChoirStaff
    \remove "System_start_delimiter_engraver"
    \override SystemStartBar #'stencil = ##f
  }
  \context {
    \Staff
    \remove "Accidental_engraver"
    \remove "Rest_collision_engraver"
    \remove "Ledger_line_engraver"
    \remove "Time_signature_engraver"
    \remove "Key_engraver"
    \remove "Clef_engraver"
    \remove "Ottava_spanner_engraver"
    \remove "Bar_engraver"
    \remove "Instrument_name_engraver"
    \override StaffSymbol #'line-count = #1
    \override StaffSymbol #'color = #(rgb-color 0.9 0.9 0.9)
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1 )
    %\consists "Hara_kiri_engraver"
    %\override VerticalAxisGroup #'remove-empty = ##t
  }
  \context {
    \Voice
    \remove "Grace_engraver"
    \remove "Tuplet_engraver"
    \remove "Tie_engraver"
    \remove "Slur_engraver"
    \remove "Phrasing_slur_engraver"
    \remove "Script_engraver"
    \remove "Dynamic_engraver"
    \remove "New_dynamic_engraver"
    \remove "Grace_beam_engraver"
    \remove "Beam_engraver"
    \remove "Stem_engraver"
    \remove "Rest_engraver"
    \remove "Dots_engraver"
    \remove "Note_heads_engraver"
    \remove "Breathing_sign_engraver"
    \remove "Glissando_engraver"
    \remove "Trill_spanner_engraver"
    \remove "Text_engraver"
    \remove "Text_spanner_engraver"
    \remove "Multi_measure_rest_engraver"
    \remove "Arpeggio_engraver"
    \remove "Pitched_trill_engraver"
  }
  \context {
    \Score
    \override SystemStartBar #'stencil = ##f
  }

%% Text inclusion -------------------------------------------------%
  \context {
    \type "Engraver_group"
    \name "TopLine"
    \consists "Output_property_engraver"
    \consists "Axis_group_engraver"
  }
  \context {
    \Score
    \remove "Metronome_mark_engraver"
    \accepts "TopLine"
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t
    \override RehearsalMark #'side-axis = #Y
    \override RehearsalMark #'direction = #DOWN
    \override RehearsalMark #'outside-staff-priority = #900
    \override RehearsalMark #'self-alignment-X = #left
    \override MetronomeMark #'side-axis = #Y
    \override MetronomeMark #'direction = #DOWN
    \override TextScript    #'outside-staff-priority = #900
    \override TextSpanner   #'outside-staff-priority = #1000
    \override TextSpanner   #'direction = #DOWN
  }

  \context {
    \Lyrics
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1 )
    \override InstrumentName #'font-family = #'sans
    \override InstrumentName #'font-series = #'bold
    \override InstrumentName #'extra-X-extent = #'(0 . 2 )
    \override InstrumentName #'extra-X-extent = #'(-1 . 1 )
  }

%% Additional tweaks  ---------------------------------------------%
  \context {
    \Score
    \override BarNumber #'transparent = ##t
  }
%%-----------------------------------------------------------------%
}
