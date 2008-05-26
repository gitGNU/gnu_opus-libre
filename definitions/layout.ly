%------------------------------------------------------------------%
% Opéra Libre -- layout.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

#(use-modules (srfi srfi-39))
#(ly:set-option 'point-and-click #f)

%%%%%%%%%%%%%%%%%%%%%%%%%%% Paper Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Staff size -----------------------------------------------------%
#(set-global-staff-size 14)

%% Paper size -----------------------------------------------------%
#(set-default-paper-size "a4" 'landscape)

%% Page breaking --------------------------------------------------%
#(define page-breaking ly:optimal-breaking)
pageBreakingVariables = \paper {
  page-limit-inter-system-space = ##t
  page-limit-inter-system-space-factor = 1.4
}

%% Horizontal margins ---------------------------------------------%

horizontalMarginsVariables = \paper {
  left-margin = #20
  right-margin = #20
  line-width = #(- paper-width (* 40 mm))
}

%% Vertical margins -----------------------------------------------%

verticalMarginsVariables = \paper {
  page-top-space = #(* 5 mm)
  between-system-space = 10 \mm
  between-system-padding = 4 \mm
  before-title-space = 10 \mm
  between-title-space = 2 \mm
  after-title-space = 5 \mm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  bottom-margin = #20
}

%%%%%%%%%%%%%%%%%%%%%%%%%%% Score Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Common Layout --------------------------------------------------%

indentVariables = \layout {
  #(define (compute-indent amount)
    (let ((indent (* amount mm)))
      (if (or (eqv? #t (ly:get-option 'ancient-style))
              (eqv? #t (ly:get-option 'non-incipit)))
          (begin ;(format #t "~% indent: ~a" indent)
           indent)
          (+ indent (* incipit-width mm)))))

  smallindent = #(compute-indent 10)
  noindent = #(compute-indent 0)
  largeindent = #(compute-indent 25)
  indent = \smallindent
}

spacingVariables = \layout {
  \context {
    \Staff
    \remove "Axis_group_engraver"
    \consists "Hara_kiri_engraver"
    \accepts "Lyrics"
    \override Beam #'auto-knee-gap = #'()
    \override VerticalAxisGroup #'remove-empty = ##t
  }
  \context {
    \Score
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 5)
  }
}

autoRulesVariables = \layout {
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
}

textVariables = \layout {
  \context {
    \type "Engraver_group"
    \name "TopLine"
    \consists "Output_property_engraver"
    \consists "Axis_group_engraver"
    \consists "Script_engraver"
    \consists "Dynamic_engraver"
    \consists "Mark_engraver"
    \consists "Text_engraver"
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
}

miscVariables = \layout {
  \context {
    \Score
    \override Accidental #'minimum-X-extent = #'(-0.2 . 0 )
    \override BarLine #'hair-thickness = #1.2
    \override OttavaBracket #'dash-fraction = #0.05
    \override OttavaBracket #'dash-period = #0.25
    \override LyricText #'self-alignment-X = #-0.5
    markFormatter = #format-mark-box-letters
  }
}

%% Time Signatures layouts ----------------------------------------%
CoolSignatures = {
  \override TimeSignature #'break-visibility = #end-of-line-invisible
  \override TimeSignature #'font-size = #3
  \override TimeSignature #'break-align-symbol = ##f
  \override TimeSignature #'X-offset = #ly:self-alignment-interface::x-aligned-on-self
  \override TimeSignature #'self-alignment-X = #0
  \override TimeSignature #'after-line-breaking = #shift-right-at-line-begin
}

topTimeSig = {
  \CoolSignatures
  \override TimeSignature #'font-size = #4
}

middleTimeSig = {
  \CoolSignatures
%  \override TimeSignature #'break-visibility = ##(#f #t #f)
  \override TimeSig.TimeSignature #'font-size = #3
  \override TimeSig.VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 5)
}

PianoDynamics = {
  \override Dynamics.TimeSignature #'font-size = #1
  \override Dynamics.VerticalAxisGroup #'minimum-Y-extent = #'(-1.5 . 1.5 )
}


%% Vocal score layout  --------------------------------------------%
vocalScoreVariables = \layout {
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
  \context { \PianoStaff 
    \accepts "StaffUp"
    \accepts "Dynamics"
    \accepts "StaffDown"
    connectArpeggios = ##t % to avoid collisions with pianoDynamicss
  }
  \context {
    \Score
    \override RehearsalMark #'font-size = #4
    \override TimeSignature #'X-extent = #'(0 . 2)
}
