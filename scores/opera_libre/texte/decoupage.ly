%------------------------------------------------------------------%
% Opéra Libre -- decoupage.ly                                      %
%                                                                  %
% (c) Lewis Trondheim & Valentin Villenave, 2008                   %
%                                                                  %
%------------------------------------------------------------------%

%% Depends on: graphics.ly, text-functions.ly

%%%%%%%%%%%%%%%%%%%%%%% Main text variables %%%%%%%%%%%%%%%%%%%%%%%%

%%% These variables are gathered here for two reasons:
%%%   - makes localization easier (hehe, world domination plan inside ;)
%%%   - helps defining the dual license of the whole thing
%%%      (obviously, if you're using any character- or text-related
%%%       variable from any file inside this directory, then you're making a
%%%       "narrative" fork and therefore must comply with the
%%%       relevant license).


%% Common variables -----------------------------------------------%

OperaTitre= "Affaire étrangère"
OperaSousTitre= "Opéra en deux actes"
FullScore = "Partitura"
VocalScore = "Version avec piano"
Livret = "Paroles et didascalies"
TableTitre= "Table des matières"

%% Legal stuff ----------------------------------------------------%

OperaLivret= "Lewis Trondheim"
OperaPartition= "Valentin Villenave"
OperaNotice= "Gravure réalisée au moyen du logiciel libre GNU LilyPond (www.lilypond.org)."
Copyright = "Lewis Trondheim et Valentin Villenave, 2008."

BigNotice = \markup {
  \center-column {
    \justify {
      © Lewis Trondheim et Valentin Villenave, 2008,
      d'après une oeuvre de Lewis Trondheim et Jochen Gerner,
      L'Association, 2001.
    }
    \vspace #.5
    \justify {
      Cette partition est publiée suivant les termes de la
      \with-url #"http://valentin.villenave.net/opera"
      \line { Licence Opéra Libre,}
      version 0.2 ou ultérieure, (dont le texte intégral est
      consultable dans le code source ou à
      l'adresse \with-url #"http://valentin.villenave.net/opera"
      \line { valentin.villenave.net/opera }). Vous pouvez la copier,
      la modifier et la jouer
      librement. Dans sa version actuelle,
      cette licence n'autorise aucun
      usage commercial de l'histoire ou des personnages. Veuillez contacter
      l'un des auteurs si vous souhaitez en faire un tel usage.
    }
    \vspace #.5
    \line {
      Gravure réalisée au moyen du logiciel libre
      \with-url #"http://www.LilyPond.org"
      \bold {GNU LilyPond}.
      \concat { #(ly:export (string-append "version " (lilypond-version))) } .
    }
  }
}


%%%%%%%%%%%%%%%%%%%%%%% Narrative structure %%%%%%%%%%%%%%%%%%%%%%%%


%% Main sections --------------------------------------------------%

ActeUnTitre= "Acte I"
ActeDeuxTitre= "Acte II"
SceneUnTitre= "Premier Tableau"
SceneDeuxTitre= "Deuxième Tableau"
SceneTroisTitre= "Troisième Tableau"
SceneQuatreTitre= "Quatrième Tableau" %unused


%% Special sections -----------------------------------------------%

PrologueTitre= "Prologue"
OuvertureTitre= "Ouverture"
InterludeTitre= "Interlude"
EntracteTitre= "Entr'acte"
FinaleTitre= "Finale"

Separateur = \Skyline
InterTitre= \markup { \with-dimensions #'(0 . 10) #' (0 . 0) \draw-line #'(10 . 0) }
FunnyFooter = \markup \fill-line { \Bilboquet }


%%  Quotes --------------------------------------------------------%

PrologueQuote= "Majesté, Majesté, Majesté !"
ActeUnSceneUnQuote= "Comment est-il ? / Endormi, endormi, depuis midi."
ActeUnSceneUnBisQuote= "Un étranger ! En nos murs !"
ActeUnSceneDeuxQuote= "Mes mains n'ont pas assez de doigts pour porter à la fois"
ActeUnSceneTroisQuote= "Étranger... Le Roi voudrait savoir"
ActeUnSceneTroisBisQuote= "Un souci, mon ami ?"
ActeUnSceneTroisTerQuote= "Et ce soir, et ce soir, que devient votre mémoire ?"
ActeUnSceneQuatreQuote= "Étranger, votre trachée est-elle nouée ?"
EntracteQuote= "Ennuyeux, très ennuyeux, extrêmement ennuyeux."
ActeDeuxSceneUnQuote= "Sont-ce là les restes étalés"
ActeDeuxSceneUnBisQuote= "Étranger, bonne nouvelle, très bonne nouvelle"
ActeDeuxSceneDeuxQuote= "Voler, voler... / Ces briques... je me souviens de ma maison"
ActeDeuxSceneTroisQuote= "Où suis-je ? Qu'est-ce donc que cet endroit ?"

%%-----------------------------------------------------------------%
