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
%% For critical settings, that affect contexts or input syntax,
%% (like ignoreMelismata etc.), see etc/layout/*.ily.


\layout {
  \context {
    \Score
    subdivideBeams = ##t
    \override TrillPitchAccidental #'avoid-slur = #'inside
    \override TimeSignature #'style = #'()
    \override SystemStartBracket #'collapse-height = #1
    \override SystemStartBrace #'collapse-height = #1

  %% TextScript indications are printed using the \indic markup command
  %% (see bin/markup-commands.scm)
    \override TextScript #'stencil =
      #(lambda (grob)
         (let ((grob-markup (ly:grob-property grob 'text)))
           (grob-interpret-markup grob (make-indic-markup grob-markup))))
    \override TextScript #'direction = #UP
  }
}
