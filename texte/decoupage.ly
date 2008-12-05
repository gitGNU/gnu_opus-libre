%------------------------------------------------------------------%
% Opéra Libre -- decoupage.ly                                      %
%                                                                  %
% (c) Lewis Trondheim & Valentin Villenave, 2008                   %
%                                                                  %
%------------------------------------------------------------------%


OperaTitre= "Affaire Étrangère"
OperaSousTitre= "Opéra en deux actes"
OperaLivret= "Lewis Trondheim"
OperaPartition= "Valentin Villenave"
OperaNotice= "Gravure réalisée au moyen du logiciel libre GNU LilyPond (www.lilypond.org)."
Copyright = "Lewis Trondheim et Valentin Villenave, 2008."

BigNotice = \markup { 
  \override #'(box-padding . 1.0)
  \translate #'(-4 . -160)  \fill-line {
    \box \center-column {
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
        version 0.2 ou ultérieure. Vous pouvez la copier,
        la modifier et la jouer
        librement ; dans sa version actuelle,
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
}


FullScore = "Partitura"
VocalScore = "Version avec piano"
Livret = "Paroles et didascalies"


%%%%

PrologueTitre= "Prologue"
InterludeTitreTexte= "Interlude"
EntracteTitreTexte= "Entr'acte"
FinaleTitreTexte= "Finale"

%%%%

ActeUnTitreTexte= "Acte I"
ActeDeuxTitreTexte= "Acte II"
SceneUnTitreTexte= "Premier Tableau"
SceneDeuxTitreTexte= "Deuxième Tableau"
SceneTroisTitreTexte= "Troisième Tableau"

