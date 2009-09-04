%------------------------------------------------------------------%
% Opéra Libre -- livret_score.ly                                   %
%                                                                  %
% (c) Valentin Villenave, 2008, 2009                               %
%                                                                  %
%------------------------------------------------------------------%


\include "italiano.ly"

\include "./definitions/common.ly"
\include "./definitions/music-functions.ly"
%%% Special hack for non-standard tempo indications
#(define-markup-command (mvt layout props arg) (markup?)
    (interpret-markup layout props
    (markup #:hspace 0)))

\include "./definitions/paper.ly"
\include "./definitions/layout.ly"
\include "./definitions/markup.ly"

\include "./texte/decoupage.ly"
\include "./texte/personnages.ly"
\include "./definitions/structure.ly"
\include "./texte/didascalies.ly"
\include "./definitions/mesures.ly"

\include "./texte/texte.ly"

\include "./voix/soprano1.ly"
\include "./voix/soprano2.ly"
\include "./voix/contralto.ly"
\include "./voix/tenor.ly"
\include "./voix/baryton1.ly"
\include "./voix/baryton2.ly"



%%%%%%%%%%%%%%%%%% Paper and layout declarations %%%%%%%%%%%%%%%%%%%

\paper {
  \includePaper
}

\layout {
  \includeLivretLayout
}

%%%%%%%%%%%%%%%%% Scene-by-scene lyrics inclusion %%%%%%%%%%%%%%%%%%

Prologue = {
  <<
    \new TopLine \PrologueMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "tenor" \PrologueTenor
        \new Lyrics \lyricsto "tenor" { \PrologueTenorTexte }
        \new Staff \new Voice = "baryton" \PrologueBarytonDeux
        \new Lyrics \lyricsto "baryton" { \PrologueBarytonDeuxTexte }
        \new Staff \new Voice \PrologueBarytonDeux
      >>
  >>
}

ActeUnSceneUn = {
  <<
    \new TopLine \ActeUnSceneUnMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "soprano" \ActeUnSceneUnSopranoUn
        \new Lyrics \lyricsto "soprano" { \ActeUnSceneUnSopranoUnTexte }
        \new Staff \new Voice = "barytonUn" \ActeUnSceneUnBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneUnBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \ActeUnSceneUnBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneUnBarytonDeuxTexte }
        \new Staff \new Voice \ActeUnSceneUnBarytonDeux
      >>
  >>
}

ActeUnSceneUnBis = {
  <<
    \new TopLine \ActeUnSceneUnBisMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "barytonUn" \ActeUnSceneUnBisBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneUnBisBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \ActeUnSceneUnBisBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneUnBisBarytonDeuxTexte }
        \new Staff \new Voice \ActeUnSceneUnBisBarytonDeux
      >>
  >>
}

InterludeUn = {
  \new TopLine \InterludeUnMesures
}

ActeUnSceneDeux = {
  <<
    \new TopLine \ActeUnSceneDeuxMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "soprano" \ActeUnSceneDeuxSopranoDeux
        \new Lyrics \lyricsto "soprano" { \ActeUnSceneDeuxSopranoDeuxTexte }
        \new Staff \new Voice = "barytonDeux" \ActeUnSceneDeuxBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneDeuxBarytonDeuxTexte }
        \new Staff \new Voice \ActeUnSceneDeuxBarytonDeux
      >>
  >>
}

InterludeDeux = { %TODO
}

ActeUnSceneTrois = {
  <<
    \new TopLine \ActeUnSceneTroisMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "tenor" \ActeUnSceneTroisTenor
        \new Lyrics \lyricsto "tenor" { \ActeUnSceneTroisTenorTexte }
        \new Staff \new Voice = "barytonUn" \ActeUnSceneTroisBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneTroisBarytonUnTexte }
        \new Staff \new Voice \ActeUnSceneTroisBarytonUn
      >>
  >>
}

ActeUnSceneTroisBis = {
  <<
    \new TopLine \ActeUnSceneTroisBisMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "contralto" \ActeUnSceneTroisBisContralto
        \new Lyrics \lyricsto "contralto" { \ActeUnSceneTroisBisContraltoTexte }
        \new Staff \new Voice = "barytonUn" \ActeUnSceneTroisBisBarytonDeux
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneTroisBisBarytonDeuxTexte }
        \new Staff \new Voice \ActeUnSceneTroisBisBarytonDeux
      >>
  >>
}

ActeUnSceneTroisTer = {
  <<
    \new TopLine \ActeUnSceneTroisTerMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "soprano" \ActeUnSceneTroisTerSopranoUn
        \new Lyrics \lyricsto "soprano" { \ActeUnSceneTroisTerSopranoUnTexte }
        \new Staff \new Voice = "barytonUn" \ActeUnSceneTroisTerBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneTroisTerBarytonUnTexte }
        \new Staff \new Voice \ActeUnSceneTroisTerBarytonUn
      >>
  >>
}

ActeUnSceneQuatre = {
  <<
    \new TopLine \ActeUnSceneQuatreMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "sopranoDeux" \ActeUnSceneQuatreSopranoDeux
        \new Lyrics \lyricsto "sopranoDeux" { \ActeUnSceneQuatreSopranoDeuxTexte }
        \new Staff \new Voice = "contralto" \ActeUnSceneQuatreContralto
        \new Lyrics \lyricsto "contralto" { \ActeUnSceneQuatreContraltoTexte }
        \new Staff \new Voice = "tenor" \ActeUnSceneQuatreTenor
        \new Lyrics \lyricsto "tenor" { \ActeUnSceneQuatreTenorTexte }
        \new Staff \new Voice = "barytonUn" \ActeUnSceneQuatreBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneQuatreBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \ActeUnSceneQuatreBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneQuatreBarytonDeuxTexte }
        \new Staff \new Voice \ActeUnSceneQuatreBarytonDeux
      >>
  >>
}

ActeDeuxSceneUn = {
  <<
    \new TopLine \ActeDeuxSceneUnMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "sopranoUn" \ActeDeuxSceneUnSopranoUn
        \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneUnSopranoUnTexte }
        \new Staff \new Voice = "sopranoDeux" \ActeDeuxSceneUnSopranoDeux
        \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneUnSopranoDeuxTexte }
        \new Staff \new Voice = "contralto" \ActeDeuxSceneUnContralto
        \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneUnContraltoTexte }
        \new Staff \new Voice \ActeDeuxSceneUnContralto
      >>
  >>
}

ActeDeuxSceneUnBis = {
  <<
    \new TopLine \ActeDeuxSceneUnBisMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "tenor" \ActeDeuxSceneUnBisTenor
        \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneUnBisTenorTexte }
        \new Staff \new Voice = "barytonUn" \ActeDeuxSceneUnBisBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneUnBisBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \ActeDeuxSceneUnBisBarytonUn
        \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneUnBisBarytonDeuxTexte }
        \new Staff \new Voice \ActeDeuxSceneUnBisBarytonUn
      >>
  >>
}

ActeDeuxSceneDeux = {
  <<
    \new TopLine \ActeDeuxSceneDeuxMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "sopranoUn" \ActeDeuxSceneDeuxSopranoUn
        \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneDeuxSopranoUnTexte }
        \new Staff \new Voice = "sopranoDeux" \ActeDeuxSceneDeuxSopranoDeux
        \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneDeuxSopranoDeuxTexte }
        \new Staff \new Voice = "contralto" \ActeDeuxSceneDeuxContralto
        \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneDeuxContraltoTexte }
        \new Staff \new Voice = "tenor" \ActeDeuxSceneDeuxTenor
        \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneDeuxTenorTexte }
        \new Staff \new Voice = "barytonUn" \ActeDeuxSceneDeuxBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneDeuxBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \ActeDeuxSceneDeuxBarytonUn
        \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneDeuxBarytonDeuxTexte }
        \new Staff \new Voice \ActeDeuxSceneDeuxBarytonUn
      >>
  >>
}

ActeDeuxSceneTrois = {
  <<
    \new TopLine \ActeDeuxSceneTroisMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "sopranoUn" \ActeDeuxSceneTroisSopranoUn
        \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneTroisSopranoUnTexte }
        \new Staff \new Voice = "sopranoDeux" \ActeDeuxSceneTroisSopranoDeux
        \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneTroisSopranoDeuxTexte }
        \new Staff \new Voice = "contralto" \ActeDeuxSceneTroisContralto
        \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneTroisContraltoTexte }
        \new Staff \new Voice = "tenor" \ActeDeuxSceneTroisTenor
        \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneTroisTenorTexte }
        \new Staff \new Voice = "barytonUn" \ActeDeuxSceneTroisBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneTroisBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \ActeDeuxSceneTroisBarytonUn
        \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneTroisBarytonDeuxTexte }
        \new Staff \new Voice \ActeDeuxSceneTroisBarytonUn
      >>
  >>
}

%%%%%%%%%%%%%%%%%%%%%%%%% The actual score %%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \header {
    title = \OperaTitre
    subtitle = \Livret
    poet = \OperaLivret
    composer = \OperaPartition
    tagline = \OperaNotice
  }
  \score {
    \Prologue
    \header {
      piece = \PrologueTitre
    }
  }
  \score {
    \ActeUnSceneUn
    \header {
      piece = \ActeUnSceneUnTitre
    }
  }
  \score {
    \ActeUnSceneUnBis
    \header {
      piece = \Separateur
    }
  }
  \score {
    \InterludeUn
    \header {
      piece = \Interlude
    }
  }
  \score {
    \ActeUnSceneDeux
    \header {
      piece = \ActeUnSceneDeuxTitre
    }
  }
  \score {
    \ActeUnSceneTrois
    \header {
      piece = \ActeUnSceneTroisTitre
    }
  }
  \score {
    \ActeUnSceneTroisBis
    \header {
      piece = \Separateur
    }
  }
  \score {
    \ActeUnSceneTroisTer
    \header {
      piece = \Separateur
    }
  }  
  \score {
    \ActeUnSceneQuatre
    \header {
      piece = \ActeUnSceneQuatreTitre
    }
  } 
  \score {
    \ActeDeuxSceneUn
    \header {
      piece = \ActeDeuxSceneUnTitre
    }
  }
  \score {
    \ActeDeuxSceneUnBis
    \header {
      piece = \Separateur
    }
  }
  \score {
    \ActeDeuxSceneDeux
    \header {
      piece = \ActeDeuxSceneDeuxTitre
    }
  }
  \score {
    \ActeDeuxSceneTrois
    \header {
      piece = \ActeDeuxSceneTroisTitre
    }
  }
}
