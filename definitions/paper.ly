%------------------------------------------------------------------%
% Opéra Libre -- paper.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%%%%%%%%%%%%%%%%%%%%%%%%%%% Paper Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%

includePaper = \paper {
%% Page variables -------------------------------------------------%
  page-limit-inter-system-space = ##t
  page-limit-inter-system-space-factor = 1.4
  #(define page-breaking ly:minimal-breaking)
  
%% Horizontal margins ---------------------------------------------%
  left-margin = #13
  right-margin = #7
  line-width = #(- paper-width (+ left-margin right-margin))

%% Vertical margins -----------------------------------------------%
  page-top-space = #(* 5 mm)
  %between-system-space = 10 \mm
  %between-system-padding = 4 \mm
  before-title-space = 10 \mm
  between-title-space = 2 \mm
  after-title-space = 5 \mm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  bottom-margin = #10
  
%% Look and feel --------------------------------------------------%
  %FIXME: this doesn't work well.
  %systemSeparatorMarkup = \slashSeparator

%%-----------------------------------------------------------------%
}

