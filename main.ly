%------------------------------------------------------------------%
% Opéra Libre -- main.ly                                           %
%                                                                  %
% (c) Valentin Villenave, 2008, 2009                               %                                                                 %
%------------------------------------------------------------------%

\version "2.13"

%%%%%%%%%%%%%%%%%%%%%%%% Common Inclusions %%%%%%%%%%%%%%%%%%%%%%%%%

\include "italiano.ly"

\include "./definitions/music-functions.ly"
\include "./definitions/text-functions.ly"
\include "./definitions/graphics.ly"
\include "./definitions/settings.ly"

\include "./texte/nomenclature.ly"
\include "./texte/decoupage.ly"
\include "./texte/didascalies.ly"
\include "./texte/texte.ly"

\include "./master/mesures.ly"

\include "./voix/soprano1.ly"
\include "./voix/soprano2.ly"
\include "./voix/contralto.ly"
\include "./voix/tenor.ly"
\include "./voix/baryton1.ly"
\include "./voix/baryton2.ly"

%%%%%%%%%%%%%%%%%%%%%%%% Edition selection %%%%%%%%%%%%%%%%%%%%%%%%%

%% Uncomment one of the two following lines.

\include "./master/full_score.ly"
%\include "./master/vocal_score.ly"

%%%%%%%%%%%%%%%%%%%%%%%%% The actual score %%%%%%%%%%%%%%%%%%%%%%%%%
%showFirstLength = s1*40
\book {
  \include "./master/common.ly"
  \include "./master/titling.ly"
  \include "./master/master.ly"
}
