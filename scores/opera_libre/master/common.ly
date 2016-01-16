%------------------------------------------------------------------%
% Opéra Libre -- common.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008, 2009                               %
%------------------------------------------------------------------%

%% Depends on: decoupage.ly, graphics.ly

%%%%%%%%%%%%%%%%%%%% Main variables inclusion %%%%%%%%%%%%%%%%%%%%%%

\header {
  title = \OperaTitre
  subtitle = \OperaSousTitre
  libretto = \OperaLivret
  composer = \OperaPartition
  tagline = \OperaNotice
  illustration = \Couronne
  scoretype = \FullScore
  copyright = \Copyright
}

%%%%%%%%%%%%%%%%%%%%%%%%%%% Paper Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
%% Page variables -------------------------------------------------%
  page-limit-inter-system-space = ##t
  page-limit-inter-system-space-factor = 1.4
  #(define page-breaking ly:minimal-breaking)

%% Horizontal margins ---------------------------------------------%
  left-margin = #(+ 13 (* 3 mm))
  right-margin = #(+ 7 (* 3 mm))
  line-width = #(- paper-width (+ left-margin right-margin))
  %{ line-width = #(- paper-width (* 40 mm))
  %horizontal-shift = 5
  bottom-margin = #30
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  left-margin = #20
  between-system-space = 1\cm
  between-system-padding = #5 %}

%% Vertical margins -----------------------------------------------%
  page-top-space = #(* 7 mm)
  between-system-space = 2 \mm
  between-system-padding = #5
  %before-title-space = 10 \mm
  %between-title-space = 2 \mm
  %after-title-space = 5 \mm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  bottom-margin = #30

%% Default titling ------------------------------------------------%
  bookTitleMarkup = \markup \null

%% Look and feel --------------------------------------------------%
  %FIXME: this doesn't work well.
  systemSeparatorMarkup = \markup { \null \vspace #10 \null }

  %FIXME: duplicate code with titling.ly
  scoreTitleMarkup = \markup {
    \column {
      \fill-line {
        \center-column {
          \fontsize #10 \fromproperty #'header:acte
          \vspace #0.5
          \fontsize #6 \fromproperty #'header:piece
          \vspace #0.5
          \fromproperty #'header:dessin
        }
      }
    }
  }


%%-----------------------------------------------------------------%
}
