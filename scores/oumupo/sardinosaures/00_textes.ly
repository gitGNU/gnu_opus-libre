%-- Sardinosaures -- textes.ly ------------------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>,
% Olivier Salon et Jacques Roubaud.

SardinosauresTitre = "Sardinosaures"

TortulipeTitre = "La tortulipe"
EscargoelandTitre = "L’escargoéland"
OkapieTitre = "L’okapie"
KiwistitiTitre = "Le kiwistiti"
CachalotarieTitre = "Le cachalotarie"
BaobabouinRawTitre = "Le baobabouin"
BaobabouinTitre = \markup \center-column {
  \smallCaps { ~ Annexe ~ }
  \BaobabouinRawTitre
}

TortulipeToc = \TortulipeTitre
EscargoelandToc = \EscargoelandTitre
OkapieToc = \OkapieTitre
KiwistitiToc = \KiwistitiTitre
CachalotarieToc = \CachalotarieTitre
BaobabouinToc = \BaobabouinRawTitre

dash = {
  \once \override LyricHyphen #'minimum-distance = #4
  \once \override LyricHyphen #'length = #2
  \once \override LyricHyphen #'thickness = #1.2
}

TortulipeVoixTexte = \lyricmode {
  Co -- nnai -- \dash ssez -- vous la tor -- tu -- lipe
  qui se pro -- mène fu -- mant sa pipe

  douce est la tor -- tu -- li -- pe blan -- che
  qui fait son mar -- ché le di -- manche

  len -- te la tor -- tu -- li -- pe rouge
  à peine on di -- rait qu’elle bou -- ge

  c’est au prin -- temps dans les sa -- lades
  que les tor -- tu li -- pes gam -- badent

  les tor -- tu -- li -- pes de cou -- leur
  sont sa -- ges et ne font pas peur

  mais si vous la croi -- sez le soir
  gare à la tor -- tu -- li -- pe noire
}

EscargoelandVoixTexte = \lyricmode {
  A -- vec ses deux ailes
  Qui traî -- nent à terre
  Co -- mme dez hal -- tères
  Au bout de bre -- telles,
  L’es -- car -- go -- é -- land
  Ja -- mais ne se presse_:
  Il sait que sans cesse
  L’es -- car -- go -- é -- land.
}

CachalotarieVoixTexte = \lyricmode {
  Un ca -- cha -- lot d’ex -- ce -- llente com -- po -- si -- tion
  Ren -- contre un jour une o -- ta -- rie à la na -- ture heu -- reu -- se.
  Par ti -- mi -- di -- té, cha -- cun cache à \dash l’au --
  Tre son bo -- nheur si simple et si beau,
  Mais leur en -- fant, qui hé -- rite au -- ssi -- tôt
  de leurs jo -- vi -- a -- les na -- tures
  Se met à ri -- re, mais à rire, en -- core plus fort que ce -- la,
  Et plus il a -- vance en na -- ge,
  Plus il rit, plus il rit, plus il rit, en -- core plus fort que ce -- la.

  Les sa -- vants et les spé -- cia -- listes
  Se pen -- chent le front sou -- ci -- eux
  Et in -- te -- rro -- gent gra -- ve -- ment
  Ce ca -- ra -- ctè -- re peu co -- mmun.
  Ils ont à l’a -- ni -- mal do -- nné
  Le nom de ca -- cha -- lo -- ta -- rie.
}

OkapieVoixTexte = \lyricmode {
  Ô -- \dash te -- donc, o -- ka -- pie,
  ton ké -- pi, ton cha -- peau,
  ta ki -- pa, pâle o -- ka -- pie, o -- kay_?
  Dé -- ca -- po -- \dash te -- toi,
  mets ta cape au pi -- quet
  et cla -- \dash que -- nous
  tes airs de pi -- peau,
  tes airs de pi -- cco -- lo,
  tes airs d’é -- po -- que,
  tes airs de pa -- co -- ti -- lle
  qui cla -- po -- tent co -- mme des bé -- cots,
  pen -- dant qu’on pi -- cole,
  pa -- pi -- lles pi -- co -- tantes,
  les col -- chiques aux cols chics
  et pen -- dant qu’on pi -- co -- re les co -- quilles
  o -- pa -- ques de co -- co,
  et le ka -- pok à pi -- cots
  qu’on pique à Pâques
  à Vla -- di -- vo -- stok
  con -- tre quel -- ques ko -- peks.
  On t’é -- coute, tout é -- bau -- bis,
  \dash porc -- é -- pics pires
  qu’au Pecq, et les quat’ co -- pies
  de \dash porc -- é -- pics
  "(oh" la co -- quine a -- po -- co -- "pe)"
  qui sont nos p’tits
  "(co" -- pie d’a -- po -- co -- "pe)"
  et qui ont la co -- li -- que
  dans les  co -- que -- li -- cots
  et les bro -- co -- lis.
  On dan -- se la pol -- ka, belle o -- ka -- pie,
  comme un co -- lloque é -- pi -- que
  dans les é -- pis et les coques.
  Qui donc est l’o -- ka -- pie
  qui claque à nos ké -- pis_?
}

KiwistitiVoixTexte = \lyricmode {
  Le ki -- wi -- sti -- ti
  Est un sim -- ple fruit
  Vert, et vert au -- ssi.
  Qui, oui,
  Pro -- vient d’Au -- stra -- lie,
  Mais pousse au -- ssi
  Dans le Mi -- di.
  Quand le ki -- wi -- sti -- ti
  S’en -- nuie
  Ou quand il est en -- dur -- ci
  Il se ba -- lance, de ci
  De là, et re -- joint par i -- ci,
  Grand mer -- ci,
  La bran -- che que voi -- ci_:
  Il est a -- lors a -- dou -- ci.
  Pour fai -- re ce -- ci
  Le ki -- wi -- sti -- ti
  Par la queue sa -- pri -- sti
  Se ba -- lan -- ce sans sou -- ci
  Et s’é -- lance ain -- si_:
  Il a ré -- u -- ssi_!
  On dit par là, ou par ci
  Que le ki -- wi -- sti -- ti
  Dan -- se le twist i -- \dash ti --
  Né -- rant, mais si_!
  Les ki -- wi -- sti -- tis
  É -- vo -- luent \dash gra -- ci --
  Eu -- se -- ment par ban -- des de six
  Ou par -- fois dix.
  Quand le mois d’août rou -- ssit
  Tous les fruits,
  Les ki -- wi -- sti -- tis
  De so -- leil a -- bru -- tis,
  Tom -- bent en con -- fe -- tti.

  \dash Ci -- gît six p’tits ki -- wi -- sti -- tis.
}


BaobabouinVoixTexte = \lyricmode {
  %% Jacques Roubaud.
  Il n’est pas na -- bab
  il n’est pas mar -- souin
  le ba -- o -- ba -- bouin

  il vo -- yage en cab
  a -- vec le pin -- gouin
  le ba -- o -- ba -- bouin

  s’il a pas de rab
  il fait du tin -- touin
  le ba -- o -- ba -- bouin

  un bon chich’ -- ke -- bab
  il ne veut pas mouins
  le ba -- o -- ba -- bouin

  il vous met \dash k. -- o.
  a -- vec son ca -- bas
  c’est un vrai sa -- gouin
  le ba -- o -- ba -- bouin

  \dash là -- bas ou \dash là -- haut
  vo -- yez les é -- bats
  du ba -- o -- ba -- bouin

  il fait du mé -- lo
  pour une pêche mel -- ba
  le ba -- o -- ba -- bouin

  il fait un sa -- bbat
  a -- vec ses sa -- bots
  le ba -- o -- ba -- bouin

  il va \dash d’Saint -- Ma -- lo
  en A -- la -- ba -- ma
  le ba -- o -- ba -- bouin

  il pince comme un crabe
  comme un ma -- rin -- gouin
  le ba -- o -- ba -- bouin_!
}

