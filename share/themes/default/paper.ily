%------------------------------------------------------------------%
% opus_libre -- paper.ily                                          %
%                                                                  %
% (c) 2008-2011 Valentin Villenave <valentin@villenave.net>        %
%                                                                  %
%     opus_libre is a free framework for GNU LilyPond: you may     %
% redistribute it and/or modify it under the terms of the GNU      %
% General Public License as published by the Free Software         %
% Foundation, either version 3 of the License, or (at your option) %
% any later version.                                               %
%     This program is distributed WITHOUT ANY WARRANTY; without    %
% even the implied warranty of MERCHANTABILITY or FITNESS FOR A    %
% PARTICULAR PURPOSE.  You should have received a copy of the GNU  %
% General Public License along with this program (typically in the %
% share/doc/ directory).  If not, see http://www.gnu.org/licenses/ %
%                                                                  %
%------------------------------------------------------------------%

%% Titles and margins.

%% TODO: add copyright and stuff.

\paper {
  left-margin = 12\mm % default is 10
  right-margin = 12\mm % default is 10
  top-margin-default = 10\mm % default is 5
  bottom-margin = 12\mm % default is 6

  tagline=\markup \fill-line {
    ""
    \indic \concat {
      \fromproperty #'header:date
      .
    }
  }

  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \fill-page {
      \rounded-box \column {
        \vspace #1
        \fill-line { \fromproperty #'header:dedication }
        \override #'(baseline-skip . 3.5)
        \column {
          \huge \larger \bold
          \fill-line {
            \larger \fromproperty #'header:title
          }
          \fill-line {
            \large \smaller \bold
            \larger \fromproperty #'header:subtitle
          }
          \fill-line {
            \smaller \bold
            \fromproperty #'header:subsubtitle
          }
          \fill-line {
%             \fromproperty #'header:poet
%             { \large \bold \fromproperty #'header:instrument }
            \fromproperty #'header:composer
          }
          \fill-line {
            \fromproperty #'header:meter
            \fromproperty #'header:arranger
          }
          \fill-line {
            \fromproperty #'header:date
          }
          \vspace #1
        }
      }
    }
  }

  scoreTitleMarkup = \markup {
    \column {
      \vspace #2
      \on-the-fly #print-all-headers { \bookTitleMarkup \hspace #1 }
      \fill-line {
        \huge \bold % default was regular size and weight
        \fromproperty #'header:piece
    %      \fromproperty #'paper:papersizename
      }
      \fill-line {
        \fromproperty #'header:piece-subtitle
      }
      \vspace #1
      \fill-line {
        \fromproperty #'header:instrument
        \fromproperty #'header:author
      }
    }
  }

}

\pageBreak
