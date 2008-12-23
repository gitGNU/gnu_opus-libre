%------------------------------------------------------------------%
% Opéra Libre -- master.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%%% This is where all scenes are compiled sequentially.

%%% Depends on: either vocal_score.ly or full_score.ly,
%%% plus everything else.

%{
\score {
  \Prologue
  \header {
    piece = \PrologueTitre
  }
} %{
\score {
  \Ouverture
  \header {
    piece = \OuvertureTitre
  }
} %
\score {
  \ActeUnSceneUn
  \header {
    acte = \ActeUnTitre
    piece = \SceneUnTitre
  }
} %
\score {
  \ActeUnSceneUnBis
  \header {
    piece = \Separateur
  }
} %
\score {
  \InterludeUn
  \header {
    piece = \InterludeTitre
    dessin = \Arrosoir
  }
} %
\score {
  \ActeUnSceneDeux
  \header {
    piece = \SceneDeuxTitre
  }
} %
\score {
  \InterludeDeux
  \header {
    piece = \InterludeTitre
    dessin = \Arrosoir
  }
} %
\score {
  \ActeUnSceneTrois
  \header {
    piece = \SceneTroisTitre
  }
} %
\score {
  \ActeUnSceneTroisBis
  \header {
    piece = \Separateur
  }
} %
\score {
  \ActeUnSceneTroisTer
  \header {
    piece = \Separateur
  }
} %
\score {
  \InterludeTrois
  \header {
    piece = \InterludeTitre
    illustration = \Arrosoir
  }
} %
\score {
  \ActeUnSceneQuatre
  \header {
    piece = \FinaleTitre
  }
} %}
\score {
  \Entracte
  \header {
    piece = \EntracteTitre
  }
} %{
%\pageBreak
\score {
  \ActeDeuxSceneUn
  \header {
    acte = \ActeDeuxTitre
    piece = \SceneUnTitre
  }
} %
\score {
  \ActeDeuxSceneUnBis
  \header {
    piece = \Separateur
  }
} %
\score {
  \ActeDeuxSceneDeux
  \header {
    piece = \SceneDeuxTitre
  }
} %
\score {
  \ActeDeuxSceneTrois
  \header {
    piece = \FinaleTitre
  }
} %}
