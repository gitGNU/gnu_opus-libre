%------------------------------------------------------------------%
% Opéra Libre -- parts.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


\version "2.12"

%%%%%%%%%%%%%%%%%%%%%%%% Common Inclusions %%%%%%%%%%%%%%%%%%%%%%%%%

\include "italiano.ly"

\include "./definitions/functions.ly"
\include "./definitions/text-functions.ly"
\include "./definitions/graphics.ly"
\include "./definitions/settings.ly"

\include "./texte/nomenclature.ly"
\include "./texte/decoupage.ly"
\include "./texte/didascalies.ly"

\include "./master/mesures.ly"

%%%%%%%%%%%%%%%%%%%%%%%% Layout declarations %%%%%%%%%%%%%%%%%%%%%%%

\layout {
  \includePartsLayout
}

%%%%%%%%%%%%%%%%%%%%%%%%%% Part selection %%%%%%%%%%%%%%%%%%%%%%%%%%
\include "./master/common.ly"

\header {
  scoretype = "Contrebasse"
}


%\include "./master/titling.ly"
\include "./master/instruments.ly"

