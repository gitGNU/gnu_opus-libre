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

PianoDeuxMains=
#(define-music-function (parser location droite gauche) (ly:music? ly:music?)
#{
  \new PianoStaff <<
    \new Staff = "md" { \clef treble $droite }
    \new Staff = "mg" { \clef bass $gauche }
  >>
#})

PercuDeuxMains=
#(define-music-function (parser location droite gauche) (ly:music? ly:music?)
#{
  \new PianoStaff <<
    \new Staff = "percuDroite" { \clef treble $droite }
    \new Staff = "percuGauche" { \clef bass $gauche }
  >>
#})


%%%%%%%%%%%%%%%%%%%%%%%%%% Part selection %%%%%%%%%%%%%%%%%%%%%%%%%%
\include "./master/common.ly"

\header {
  scoretype = "Saxophones"
}

\paper { #(define page-breaking ly:page-turn-breaking) }


\include "./master/titling.ly"
\include "./master/instruments.ly"

