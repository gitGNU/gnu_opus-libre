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
  

AdditionalLayout ={
  #(override-auto-beam-setting '(end * *  3 4) 1 4 'Score)
  #(override-auto-beam-setting '(end * *  3 4) 2 4 'Score)
  #(override-auto-beam-setting '(end * *  4 4) 1 4 'Score)
  #(override-auto-beam-setting '(end * *  4 4) 3 4 'Score)
  #(override-auto-beam-setting '(end * *  2 2) 1 4 'Score)
  #(override-auto-beam-setting '(end * *  2 2) 2 4 'Score)
  #(override-auto-beam-setting '(end * *  2 2) 3 4 'Score)
  #(override-auto-beam-setting '(end 1 16 2 2) 1 4 'Score)
  #(override-auto-beam-setting '(end 1 16 2 2) 2 4 'Score)
  #(override-auto-beam-setting '(end 1 16 2 2) 3 4 'Score)
  #(override-auto-beam-setting '(end 1 16 2 8) 1 4 'Score)
  #(override-auto-beam-setting '(end 1  8 2 8) 1 4 'Score)
  #(override-auto-beam-setting '(be  * *  5 8) 1 8 'Score)
  #(override-auto-beam-setting '(end * *  5 8) 5 8 'Score)
  \set Score.ignoreMelismata = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.LyricText #'self-alignment-X = #-0.5
  \override Score.PaperColumn #'keep-inside-line = ##t
  \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
  \override Score.VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 5)
  \override Score.MetronomeMark #'side-axis = #Y
  \override Score.MetronomeMark #'direction = #DOWN
  \override Score.RehearsalMark #'side-axis = #Y
  \override Score.RehearsalMark #'direction = #UP
  \override Score.RehearsalMark #'extra-offset = #'(0.0 . 0.0 )
  \override Score.RehearsalMark #'font-size = #10
  \override Score.RehearsalMark #'self-alignment-X = #left
  \override Score.TimeSignature #'style = #'()
  \override Score.OttavaBracket #'dash-fraction = #0.05
  \override Score.OttavaBracket #'dash-period = #0.25
  \override Score.Accidental #'minimum-X-extent = #'(-0.2 . 0 )
  \override Score.SystemStartBracket #'collapse-height = #1
  \override Score.SystemStartBrace #'collapse-height = #1
  \override Score.BarLine #'hair-thickness = #1.2
  #(set-accidental-style 'neo-modern 'Score)
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
ReductionLayout ={
  \AdditionalLayout
  \override Score.RehearsalMark #'font-size = #4
  \override Score.TimeSignature #'X-extent = #'(0 . 2)
}

