%------------------------------------------------------------------%
% Opéra Libre -- structure.ly                                      %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

OperaTitre = \markup  {
\center-align {\fontsize #8.5 \OperaTitreTexte
\fontsize #5 \OperaSousTitreTexte }
}

OperaLivret = \markup  {
\fontsize #5 \OperaLivretTexte 
}

OperaPartition = \markup  {
\fontsize #5 \OperaPartitionTexte
}

OperaNotice = \OperaNoticeTexte

FullScore = "Partitura"

Reduction = "Version avec piano"

Livret = "Paroles et didascalies"

%%%%%%

PrologueTitre = \markup  {
\fill-line { \center-align {\fontsize #10 \PrologueTitreTexte " "}}
}

ActeUnSceneUnTitre = \markup {
	\fill-line { \center-align {\fontsize #10 \ActeUnTitreTexte " "
	\fontsize #6 \SceneUnTitreTexte " "}}
}

ActeUnSceneDeuxTitre = \markup {
	\fill-line { \center-align {\fontsize #6 \SceneDeuxTitreTexte " "}}
}

ActeUnSceneTroisTitre = \markup {
	\fill-line { \center-align {\fontsize #6 \SceneTroisTitreTexte " "}}
}

ActeUnSceneQuatreTitre = \markup {
	\fill-line { \center-align {\fontsize #6 \FinaleTitreTexte " "}}
}

EntracteTitre = \markup {
	\fill-line { \center-align {\fontsize #10 \EntracteTitreTexte " "}}
}

ActeDeuxSceneUnTitre = \markup {
	\fill-line { \center-align {\fontsize #10 \ActeDeuxTitreTexte " "
	\fontsize #6 \SceneUnTitreTexte " "}}
}

ActeDeuxSceneDeuxTitre = \markup {
  	\fill-line { \center-align {	\fontsize #6 \SceneDeuxTitreTexte " "}}
}

ActeDeuxSceneTroisTitre = \markup {
  	\fill-line { \center-align {	\fontsize #6 \FinaleTitreTexte " "}}
}

Interlude = \markup {
\fill-line { \center-align {\fontsize #6 \InterludeTitreTexte }}}

Separateur = \markup {
	\fill-line { \center-align {\fontsize #10 " " "***" " "}}
}
