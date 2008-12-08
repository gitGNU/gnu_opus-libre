%------------------------------------------------------------------%
% Opéra Libre -- paper.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%% Depends on: decoupage.ly, graphics.ly

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'delete-intermediate-files #t)

%%%%%%%%%%%%%%%%%%%%%%%%%% Common Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Paper size -----------------------------------------------------%
% #(set-default-paper-size "a4" 'landscape)

%% Page breaking --------------------------------------------------%
#(define page-breaking ly:minimal-breaking)

%% Staff size -----------------------------------------------------%
#(set-global-staff-size 14)


%%%%%%%%%%%%%%%%%%%%%%%%%%% Paper Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
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


%% Titles and Table of Contents -----------------------------------%

  bookTitleMarkup = \markup {
    \vspace #20
    \override #'(baseline-skip . 3.5)
    \column {
      \combine
      \column {
        \fill-line {
          \fontsize #5 \sans \fromproperty #'header:libretto
          \null
        }
        \vspace #4
        \line { \fontsize #15  \transparent "A" }
        \vspace #4
        \fill-line {
          \null
          \fontsize #5 \sans \fromproperty #'header:composer
        }
      }
      \column {
        \line { \fontsize #5 " " }
        \vspace #4
        \fill-line {
          \fontsize #15 \sans \fromproperty #'header:title
        }
        \fill-line {
          \fontsize #2 \sans \fromproperty #'header:subtitle
        }
      }
      \vspace #4
      \fill-line {
        \fromproperty #'header:illustration
      }
    }
  }

  tocTitleMarkup = \markup \column {
    \vspace #8
    \fill-line {
          \fontsize #3 \OperaLivret
          \fontsize #3 \OperaPartition
        }
    \fill-line {
          \fontsize #10 \bold \OperaTitre
        }
    \fill-line {
          \fontsize #2 \OperaSousTitre
    }
    \vspace #4
    \fill-line {
      \fontsize #2 \underline \TableTitre
    }
    \vspace #1
  }

  tocActMarkup = \markup \large \column {
    \hspace #1
    \fill-line { \null \bold \fromproperty #'toc:text \null }
    \hspace #1
  }
  tocItemMarkup = \markup \large \fill-line {
    \fromproperty #'toc:text \fromproperty #'toc:page
  }
  tocQuoteMarkup = \markup {
    \hspace #4 \italic \fromproperty #'toc:text
  }

  oddFooterMarkup = \markup {
  \column {
    \fill-line {
      %% Copyright header field only on first page.
      \on-the-fly #first-page
      \fontsize #2 \sans \rounded-box\fromproperty #'header:scoretype
    }
    \vspace #1
    \fill-line {
      \on-the-fly #first-page
      \fontsize #1 \sans \fromproperty #'header:copyright
    }

    \fill-line {
      %% Tagline header field only on last page.
      \on-the-fly #last-page \fromproperty #'header:tagline
    }
  }
  }
  scoreTitleMarkup = \markup {
    \column {
      \on-the-fly #print-all-headers { \bookTitleMarkup \hspace #1 }
      \fill-line {
        \center-column {
          \fontsize #10 \fromproperty #'header:acte
          \vspace #1
          \fontsize #6 \fromproperty #'header:piece
          \vspace #1
          \fromproperty #'header:dessin
        }
      }
    }
  }

%%-----------------------------------------------------------------%
}
