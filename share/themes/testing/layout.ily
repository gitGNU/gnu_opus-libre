%------------------------------------------------------------------%
% opus_libre -- layout.ily                                         %
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

%% Only cosmetic stuff.
%% i.e. don't use this file to fiddle with things that
%% affect input syntax, like ignoreMelismata etc.

\layout {
  \context {
    \Voice
    \override LaissezVibrerTie #'details =
      #'((height-limit . 2.0) ; default 1
        (note-head-gap . -2.6) ; default 0.2
        (horizontal-distance-penalty-factor . 51)) % default 10
    \override LaissezVibrerTie #'extra-offset =
    #'(2.5 . 0) % has to match note-head-gap. Sort of.
  }
}
