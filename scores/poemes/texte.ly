%-- Trois poèmes -- texte.ly --------------------------------------%
% (c) 2004-2010 Valentin Villenave <valentin@villenave.net>

\header {
  title = "Trois poèmes d'Edwige Hudson"
  composer = "Valentin Villenave"
  arranger = "2004"
  tagline = "Partition éditée avec le logiciel libre GNU LilyPond"
}

UnTitre = "I."
DeuxTitre = "II."
TroisTitre = "III."

UnSopranoTexte = \lyricmode {
  \set ignoreMelismata = ##t
  Tu es noi -- re vrai -- ment
  co -- _ mme le sou -- ri -- _ re du soir,
  som -- _ bre co -- mme les pu -- pi -- lles
  di -- la -- tées du so -- mmeil.
  No -- ctam -- bule que ren -- _ versent
  les ray -- ons du So -- leil_;
  re -- _ gar -- de moi,
  mi -- roir au __ _ teint de __ _ pierre. __ _
  Tes yeux pro -- fonds et sombres
  sont des cieux dé -- ser -- tés
  par __ _ le mo -- tif u -- sé
  des é -- toiles en grand nombre.
  Ta clar -- té dé -- ser -- tique
  re -- ssemble é -- tran -- ge -- ment
  _ __ _ _ _ à mon dé -- sir
  fuy -- ant.
  Re -- _ gar -- de moi,
  mi -- roir au teint de pierre.
}

DeuxSopranoTexte = \lyricmode {
  \set ignoreMelismata = ##t
  Fuir, comme un \dash pur -- sang au crin de feu_;
  fuir, fuir, __ _
  %%FIXME: issue #773
  a -- _ veu -- _ _ \leftSyl gle_et __ _ fou,
  dans la fo -- rêt dé -- funte.
  Et em -- bra -- ser __ _ les feu -- illes
  ju -- squ'au sang_;
  qu'il cou -- le, en -- cre pou -- rpre,
  ju -- squ'au ciel_;
  qu'il noie les é -- toiles __ _ _ _ _ _ _ _
  Ces __ _ di -- a -- mants pe -- _ rdus __ _ _ _ _ _
  Se -- mence poi -- vrée des Dieux. __ _ _
}

TroisSopranoTexte = \lyricmode {
  \set ignoreMelismata = ##t
  J'ai re -- spi -- ré ton âme
  dans un bai -- ser, u -- ne la -- rme.
  Et j'ai vu, dé -- sa -- rmée,
  ton re -- gard va -- ci -- ller, __ _
  tes pau -- piè -- res se clo -- re
  en un __ _ trou -- blant my -- stè -- re
  qui file et puis fri -- sso -- nne.
  J'ai sen -- ti sous
  l'é -- to -- ffe des sou -- pirs
  m'e -- ffleu -- rer co -- mme brai -- ses
  des pa -- pi -- llons fu -- rtifs
  qui pa -- lpi -- taient si las
  sur mon corps in -- ca -- rné sous tes doigts.
}
