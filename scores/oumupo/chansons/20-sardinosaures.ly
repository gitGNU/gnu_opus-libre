%-- Chansons Oulipiennes -- sardinosaures.ly ----------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

%% Inclusion des Sardinosaures de Olivier Salon et Jacques Roubaud.
\include "scores/oumupo/sardinosaures/00_textes.ly"

\include "scores/oumupo/sardinosaures/01_cachalotarie.ly"
\include "scores/oumupo/sardinosaures/02_kiwistiti.ly"
\include "scores/oumupo/sardinosaures/03_tortulipe.ly"
\include "scores/oumupo/sardinosaures/04_escargoeland.ly"
\include "scores/oumupo/sardinosaures/05_okapie.ly"
\include "scores/oumupo/sardinosaures/06_baobabouin.ly"
BaobabouinTitre = "Le baobabouin"
SpacerTitre = \markup \center-column {
  \line {\null \magnify #2.5 \huge \bold \smallCaps "~ Annexe ~"}
  \vspace #2
  \huge \bold Sardinosaures
  \medium \normalsize "Valentin Villenave"
  \medium \normalsize "(sur des textes d’Olivier Salon et Jacques Roubaud)"
}

CachalotarieSoustitre = \markup \justify {
  Contrainte "harmonique :" purement tonal, le discours module
  chromatiquement à une fréquence de plus en plus élevée (deux mesures,
  puis une, puis un temps). À chaque modulation, toutes les notes
  du mode doivent être données. Contrainte "mélodique :" chaque phrase
  doit comporter les douze hauteurs du total chromatique.
}

KiwistitiSoustitre = \markup \justify {
  Contrainte de \italic "solmisation inverse" : toutes les syllabes du
  texte évoquant un nom de note, doivent être chantées sur une hauteur
  correspondante. Toutes les autres syllabes doivent être chantées sur
  des hauteurs altérées (les touches noires d’un clavier). La partie
  de piano n’est constituée que par la note Si, sauf lorsque le chant
  lui fournit une autre note naturelle.
}

TortulipeSoustitre = \markup \justify {
  La partie de piano est entièrement algorithmique et combinatoire,
  parcourant systématiquement toutes les possibilités de montée/descente
  sur une octave présentant une symétrie interne (selon un parcours de
  type "« cavalier" sur un "échiquier »)." La ligne de chant est également
  gouvernée par des procédés de parité et de symétrie des hauteurs.
}

EscargoelandSoustitre = \markup \justify {
  Contraintes rythmiques et "structurelles :" un vers par mesure, scandé
  en croches et noires, avec des rétrogradations.
  Contrainte "mélodique :" le chant est sur une seule note. Contrainte
  "harmonique :" le Mi du chant n’est pas donné par le piano (contrainte
  en «liponote»), mais il sert d’axe de symétrie entre les deux mains
  (au diatonisme près, seules les touches blanches étant autorisées).
}

OkapieSoustitre = \markup \justify {
  L’écriture mélodique et harmonique procède d’une combinatoire systématique
  entre des modes 3-1-3-1 complémentaires (par exemple "« do"
  \concat {mi \general-align #Y #DOWN \teeny \flat}
  \concat {mi \general-align #Y #DOWN \teeny \natural} sol
  \concat {la \general-align #Y #DOWN \teeny \flat} si "do »" et "« ré" fa
  \concat {fa \general-align #Y #DOWN \teeny \sharp} la
  \concat {si \general-align #Y #DOWN \teeny \flat}
  \concat {do \general-align #Y #DOWN \teeny \sharp} "ré »),"
  encadrée par des gestes plus polarisés où les fonctions tonales (enchaînements
  II-V-I) sont substituées au plus proche (un demi-ton trop haut ou trop bas).
}

BaobabouinSoustitre = \markup \justify {
  Genre "musical :" jazz (big band swing). Contrainte "mélodique :"
  les syllabes "« ba »" doivent correspondre à un mouvement disjoint
  descendant, les syllabes "« ô »" à un mouvement disjoint ascendant
  (respectivement vers le "\"bas\"" et vers le "\"haut\")." Contrainte
  "rythmique :" hormis au milieu \concat {( \italic "middle eight" ),}
  la chanson est écrite en métrique composée (tantôt quatre temps,
  tantôt trois).
}
