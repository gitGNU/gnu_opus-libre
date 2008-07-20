%------------------------------------------------------------------%
% Opéra Libre -- livret_score.ly                                   %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


\include "italiano.ly"

\include "./definitions/common.ly"
\include "./definitions/functions.ly"
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
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "tenor" \PrologueTenor
        \new Lyrics \lyricsto "tenor" { \PrologueTenorTexte }
        \new InvisibleStaff \new InvisibleVoice = "baryton" \PrologueBarytonDeux
        \new Lyrics \lyricsto "baryton" { \PrologueBarytonDeuxTexte }
      >>
  >>
}

ActeUnSceneUn = {
  <<
    \new TopLine \ActeUnSceneUnMesures
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "soprano" \ActeUnSceneUnSopranoUn
        \new Lyrics \lyricsto "soprano" { \ActeUnSceneUnSopranoUnTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonUn" \ActeUnSceneUnBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneUnBarytonUnTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonDeux" \ActeUnSceneUnBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneUnBarytonDeuxTexte }
      >>
  >>
}

ActeUnSceneUnBis = {
  <<
    \new TopLine \ActeUnSceneUnBisMesures
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "barytonUn" \ActeUnSceneUnBisBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneUnBisBarytonUnTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonDeux" \ActeUnSceneUnBisBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneUnBisBarytonDeuxTexte }
      >>
  >>
}

InterludeUn = {
  \new TopLine \InterludeUnMesures
}

ActeUnSceneDeux = {
  <<
    \new TopLine \ActeUnSceneDeuxMesures
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "soprano" \ActeUnSceneDeuxSopranoDeux
        \new Lyrics \lyricsto "soprano" { \ActeUnSceneDeuxSopranoDeuxTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonDeux" \ActeUnSceneDeuxBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneDeuxBarytonDeuxTexte }
      >>
  >>
}

InterludeDeux = { %TODO
}

ActeUnSceneTrois = {
  <<
    \new TopLine \ActeUnSceneTroisMesures
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "tenor" \ActeUnSceneTroisTenor
        \new Lyrics \lyricsto "tenor" { \ActeUnSceneTroisTenorTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonUn" \ActeUnSceneTroisBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneTroisBarytonUnTexte }
      >>
  >>
}

ActeUnSceneTroisBis = {
  <<
    \new TopLine \ActeUnSceneTroisBisMesures
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "contralto" \ActeUnSceneTroisBisContralto
        \new Lyrics \lyricsto "contralto" { \ActeUnSceneTroisBisContraltoTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonUn" \ActeUnSceneTroisBisBarytonDeux
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneTroisBisBarytonDeuxTexte }
      >>
  >>
}

ActeUnSceneTroisTer = {
  <<
    \new TopLine \ActeUnSceneTroisTerMesures
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "soprano" \ActeUnSceneTroisTerSopranoUn
        \new Lyrics \lyricsto "soprano" { \ActeUnSceneTroisTerSopranoUnTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonUn" \ActeUnSceneTroisTerBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneTroisTerBarytonUnTexte }
      >>
  >>
}

ActeUnSceneQuatre = {
  <<
    \new TopLine \ActeUnSceneQuatreMesures
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "sopranoDeux" \ActeUnSceneQuatreSopranoDeux
        \new Lyrics \lyricsto "sopranoDeux" { \ActeUnSceneQuatreSopranoDeuxTexte }
        \new InvisibleStaff \new InvisibleVoice = "contralto" \ActeUnSceneQuatreContralto
        \new Lyrics \lyricsto "contralto" { \ActeUnSceneQuatreContraltoTexte }
        \new InvisibleStaff \new InvisibleVoice = "tenor" \ActeUnSceneQuatreTenor
        \new Lyrics \lyricsto "tenor" { \ActeUnSceneQuatreTenorTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonUn" \ActeUnSceneQuatreBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneQuatreBarytonUnTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonDeux" \ActeUnSceneQuatreBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneQuatreBarytonDeuxTexte }
      >>
  >>
}

ActeDeuxSceneUn = {
  <<
    \new TopLine \ActeDeuxSceneUnMesures
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "sopranoUn" \ActeDeuxSceneUnSopranoUn
        \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneUnSopranoUnTexte }
        \new InvisibleStaff \new InvisibleVoice = "sopranoDeux" \ActeDeuxSceneUnSopranoDeux
        \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneUnSopranoDeuxTexte }
        \new InvisibleStaff \new InvisibleVoice = "contralto" \ActeDeuxSceneUnContralto
        \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneUnContraltoTexte }
      >>
  >>
}

ActeDeuxSceneUnBis = {
  <<
    \new TopLine \ActeDeuxSceneUnBisMesures
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "tenor" \ActeDeuxSceneUnBisTenor
        \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneUnBisTenorTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonUn" \ActeDeuxSceneUnBisBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneUnBisBarytonUnTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonDeux" \ActeDeuxSceneUnBisBarytonUn
        \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneUnBisBarytonDeuxTexte }
      >>
  >>
}

ActeDeuxSceneDeux = {
  <<
    \new TopLine \ActeDeuxSceneDeuxMesures
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "sopranoUn" \ActeDeuxSceneDeuxSopranoUn
        \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneDeuxSopranoUnTexte }
        \new InvisibleStaff \new InvisibleVoice = "sopranoDeux" \ActeDeuxSceneDeuxSopranoDeux
        \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneDeuxSopranoDeuxTexte }
        \new InvisibleStaff \new InvisibleVoice = "contralto" \ActeDeuxSceneDeuxContralto
        \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneDeuxContraltoTexte }
        \new InvisibleStaff \new InvisibleVoice = "tenor" \ActeDeuxSceneDeuxTenor
        \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneDeuxTenorTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonUn" \ActeDeuxSceneDeuxBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneDeuxBarytonUnTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonDeux" \ActeDeuxSceneDeuxBarytonUn
        \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneDeuxBarytonDeuxTexte }
      >>
  >>
}

ActeDeuxSceneTrois = {
  <<
    \new TopLine \ActeDeuxSceneTroisMesures
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "sopranoUn" \ActeDeuxSceneTroisSopranoUn
        \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneTroisSopranoUnTexte }
        \new InvisibleStaff \new InvisibleVoice = "sopranoDeux" \ActeDeuxSceneTroisSopranoDeux
        \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneTroisSopranoDeuxTexte }
        \new InvisibleStaff \new InvisibleVoice = "contralto" \ActeDeuxSceneTroisContralto
        \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneTroisContraltoTexte }
        \new InvisibleStaff \new InvisibleVoice = "tenor" \ActeDeuxSceneTroisTenor
        \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneTroisTenorTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonUn" \ActeDeuxSceneTroisBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneTroisBarytonUnTexte }
        \new InvisibleStaff \new InvisibleVoice = "barytonDeux" \ActeDeuxSceneTroisBarytonUn
        \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneTroisBarytonDeuxTexte }
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
  %{
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
      piece = \ActeUnBisSceneUnTitre
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
  %}
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
