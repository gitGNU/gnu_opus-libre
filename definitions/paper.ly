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
  
%% Horizontal margins ---------------------------------------------%
  left-margin = #20
  right-margin = #20
  line-width = #(- paper-width (* 40 mm))

%% Vertical margins -----------------------------------------------%
  page-top-space = #(* 5 mm)
  between-system-space = 10 \mm
  between-system-padding = 4 \mm
  before-title-space = 10 \mm
  between-title-space = 2 \mm
  after-title-space = 5 \mm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  bottom-margin = #20

%%-----------------------------------------------------------------%
}

