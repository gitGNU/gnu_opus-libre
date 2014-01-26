%------------------------------------------------------------------%
% opus_libre -- notationrules.ily                                  %
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

%% Notation rules.

\layout {
  \context {
    \Score
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t
    autoAccidentals = #modern-accidentals-style % see liblayout.scm
    autoCautionaries = #modern-cautionaries-style
    extraNatural = ##f

    scriptDefinitions = #modern-script-alist
    timeSignatureSettings = #modern-time-signature-settings
    subdivideBeams = ##t
  }
  \context {
    \PianoStaff
    connectArpeggios = ##t
  }
}
