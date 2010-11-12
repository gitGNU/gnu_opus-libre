%------------------------------------------------------------------%
% opus_libre -- contexts.ily                                       %
%                                                                  %
% (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        %
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

%% Contexts, Engravers,...

\layout {
  \context {
    \Dynamics
    \name PianoDynamics
    \alias Voice
    \alias Staff
    \remove "Script_engraver"
    \remove "Text_engraver"
  }
  \context {
    \PianoStaff
    \accepts PianoDynamics
  }
}
