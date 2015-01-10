%-- Chansons Oulipiennes -- textes.ly -----------------------------%
% (c) 2012-2013 Valentin Villenave <valentin@villenave.net>,
% Jacques Roubaud, Olivier Salon, Frédéric Forte,
% Ian Monk, François Caradec, Jacques Jouet,
% Paul Fournel.

Titre = "Chansons Oulipiennes"

AntilopeTitre = "L’antilope et l’antiquaire"
AutobusTitre = "Chanson de l’autobus"
CharlesTitre = "Habanera de Charles"
DebutTitre = "Début"
IdeechansonTitre = "L’idée de la chanson"
MakimococoTitre = "Le maki mococo"
PetitmariTitre = "Le petit mari"
PopincourtTitre = "Chanson de Popincourt"
QuandjepenseTitre = "Quand je pense"
RaisonTitre = "Sans raison"
TelephoneTitre = "Le téléphone"

AntilopeAuteur = "Jacques Roubaud"
AutobusAuteur = "François Caradec"
BaobabouinAuteur = "Jacques Roubaud"
CharlesAuteur = "Olivier Salon"
DebutAuteur = "Hervé Le Tellier"
IdeechansonAuteur = "Frédéric Forte"
MakimococoAuteur = "Jacques Roubaud"
PetitmariAuteur = "Paul Fournel"
PopincourtAuteur = "Jacques Jouet"
QuandjepenseAuteur = "Jacques Roubaud"
RaisonAuteur = "Ian Monk"
TelephoneAuteur = "Jacques Roubaud"

AntilopeToc = \markup { \AntilopeTitre \concat { ( \AntilopeAuteur ) } }
AutobusToc = \markup { \AutobusTitre \concat { ( \AutobusAuteur ) } }
CharlesToc = \markup { \CharlesTitre \concat { ( \CharlesAuteur ) } }
DebutToc = \markup { \DebutTitre \concat { ( \DebutAuteur ) } }
IdeechansonToc = \markup { \IdeechansonTitre \concat { ( \IdeechansonAuteur ) } }
MakimococoToc = \markup { \MakimococoTitre \concat { ( \MakimococoAuteur ) } }
PetitmariToc = \markup { \PetitmariTitre \concat { ( \PetitmariAuteur ) } }
PopincourtToc = \markup { \PopincourtTitre \concat { ( \PopincourtAuteur ) } }
RaisonToc = \markup { \RaisonTitre \concat { ( \RaisonAuteur ) } }
TelephoneToc = \markup { \TelephoneTitre \concat { ( \TelephoneAuteur ) } }

QuandjepenseToc = \markup \left-column {
  \line {\QuandjepenseTitre \concat { ( \QuandjepenseAuteur ) } }
  \vspace #1
  \huge \smallCaps "~ Annexe ~"
  \huge \bold Sardinosaures
  \vspace #.5
}


#(define-markup-command (choose-text layout props untainted-text tainted-text) (markup? markup?)
  (let ((text (if (ly:get-option 'untainted)
                  untainted-text
                  tainted-text)))
  (interpret-markup layout props text)))

\header {
  title = \markup { \choose-text "" Quelques \Titre }
  subtitle = \markup \choose-text "" "extraites du spectacle"
  subsubtitle = \markup \choose-text "" \general-align #Y #0.5 {
    \epsfile #X #30 #"scores/oumupo/chansons/chantoulipo.eps"
  }
  composer = \markup \center-column {
    \vspace #2
    "Valentin Villenave & Mike Solomon"
    \choose-text "(d’après des auteurs de l’Oulipo)"
    "(sur des textes d’auteurs de l’Oulipo)"
  }
  copyright = \markup {
    © et \translate #'(1.5 . 0) \scale #'(-1 . 1) ©
    V. Villenave \concat {\italic "et al.",} 2012.
    Musique sous Licence Art Libre.
  }
  date = "2012"
}

\pointAndClickOff
#(set-global-staff-size 16)


\paper {
  first-page-number = #-1
  bottom-margin = 40
  tocTitleMarkup = \markup \huge \bold \column {
    \null \vspace #3
    \fill-line { \null \magnify #2.5 \smallCaps "~ Sommaire ~" \null }
    \vspace #3
  }
  tocItemMarkup = \markup \large \fill-line {
    \tocItemWithDotsMarkup
    \vspace #1.5
  }
  scoreTitleMarkup = \markup {
    \center-column {
      \vspace #2
      \on-the-fly #print-all-headers { \bookTitleMarkup \hspace #1 }
      \fill-line {
        \huge \bold % default was regular size and weight
        \fromproperty #'header:piece
    %      \fromproperty #'paper:papersizename
      }
      \override #'(line-width . 65)
      \fill-line {
        \italic \line { [ \fromproperty #'header:piece-subtitle ] }
      }
      \vspace #1
      \fill-line {
        \fromproperty #'header:instrument
        \fromproperty #'header:author
      }
    }
  }
}

taintedText =
\markup \center-column {
  \justify {
    Les textes contenus dans cette partition restent propriété
    de leurs auteurs, pour lesquels tous droits demeurent réservés.
    La musique est en revanche publiée suivant les termes de la licence
    \with-url #"http://artlibre.org/licence/lal"
    \bold { Art Libre }
    \concat { ( \with-url #"http://artlibre.org" \typewriter http://artlibre.org ).}
    Vous pouvez la copier, la modifier et la jouer \italic librement
    sans contrevenir au droit d’auteur, à  condition de respecter les
    termes de la licence (notamment en veillant à  mentionner le nom
    des auteurs et adresses web d’origine).
  }
  \vspace #.2
  \justify {
    Pour obtenir une partition entièrement sous licence Libre, veuillez
    recompiler la partition avec l’option \concat { \typewriter untainted , }
    ce qui aura pour effet de remplacer tous les mots du texte d’origine
    par des syllabes aléatoires (par défaut \concat { « pa » ,}
    \concat { « ta » } et \concat { « touille »). } La partition ainsi
    produite pourra être diffusée librement, sans autres restrictions que
    celles indiquées par sa licence.
  }
}

untaintedText =
\markup \center-column {
  \justify {
    Les textes éventuellement contenus dans cette partition restent propriété
    de leurs auteurs, pour lesquels tous droits demeurent réservés.
    Toutefois, cet exemplaire a été compilé avec l’option
    \concat { \typewriter untainted  : } tout ou partie des textes d’origine
    ont été remplacés par des syllabes aléatoires, et peuvent donc être
    diffusés suivant les termes de la licence
    \with-url #"http://artlibre.org/licence/lal"
    \bold { Art Libre }
    \concat { ( \with-url #"http://artlibre.org" \typewriter http://artlibre.org ).}
  }
  \vspace #.2
  \justify {
    La partition ainsi obtenue peut être \italic librement copiée,
    interprétée et modifiée sans contrevenir au droit d’auteur,
    à condition de respecter les termes de la licence (notamment
    en veillant à  mentionner le nom des auteurs et adresses web d’origine).
  }
}

\pageBreak
\markup \fill-line {
  \center-column {
  \vspace #6
  \fill-line {
    ""
    \general-align #Y #0.5 {\epsfile #X #30 #"scores/oumupo/oumupo.eps" }
    \line {
      \override #'(line-width . 45)
      \wordwrap {
        \hspace #4 Ces chansons s’inscrivent dans le cadre de
        l’Ouvroir de Musique Potentielle
        \concat { ( \with-url #"http://oumupo.org" \typewriter http://oumupo.org ),}
        dédié à l’écriture musicale sous contraintes formelles.
      }
    }
    ""
  }
  \vspace #2
  \fill-line {
    \center-column {
      \huge \bold "Pour en savoir plus sur ces chansons :"
      \choose-text "" \huge \with-url #"http://chantoulipo.net" \typewriter http://chantoulipo.net
      \huge \with-url #"http://valentin.villenave.net/chansons-oulipiennes" \typewriter http://valentin.villenave.net/chansons-oulipiennes
      \huge \with-url #"http://valentin.villenave.net/sardinosaures" \typewriter http://valentin.villenave.net/sardinosaures
    }
  }
  \vspace #4
  \fill-line {
    \override #'(box-padding . 6)
    \override #'(line-width . 100)
    \box \center-column {
      \bold "Textes d’origine :"
      \justify {
        Jacques Roubaud,
        François Caradec,
        Olivier Salon,
        Hervé Le Tellier,
        Frédéric Forte,
        Paul Fournel,
        Jacques Jouet,
        et Ian Monk.
        Ces textes ont été réunis ou rédigés dans le cadre du spectacle
        \italic "Chant’Oulipo"
        \concat { ( \with-url #"http://chantoulipo.net" \typewriter http://chantoulipo.net )}
        sur une idée de Jehanne Carillon et dans une mise en scène de Laurent Gutmann.
        Ils sont ici mis en musique et utilisés avec l’aimable autorisation
        de leurs auteurs, tous membres de l’Oulipo
        \concat { ( \with-url #"http://oulipo.net" \typewriter http://oulipo.net ).}
      }
      \vspace #.5
      \justify {
        Les \italic "Sardinosaures & compagnie" sont un recueil
        de Jacques Roubaud et Olivier Salon, publié en 2008 aux
        éditions Les mille univers.
      }
      \vspace #.5
      \bold "Mise en musique :"
      \line {
        Copyright & copyleft © Valentin Villenave, 2012 pour la mise en musique.
      }
      \line {
        \with-url #"http://valentin.villenave.net"
        \typewriter http://valentin.villenave.net
      }
      \justify {
        Les chansons « Début » et « Quand je pense » sont mises
        en musique par \bold "Mike Solomon"
        \concat { ( \with-url #"http://mikesolomon.org" \typewriter http://mikesolomon.org ),}
        de l’Oumupo.
      }
      \vspace #.5
      \choose-text \untaintedText \taintedText
      \vspace #.5
      \line {
        Gravure réalisée au moyen du logiciel libre
        \with-url #"http://www.lilypond.org"
        \concat {\bold "GNU LilyPond" ,}
        \concat { $(string-append "version " (lilypond-version) ".") }
      }
    }
  }
  }
}

\pageBreak

\markup \fill-line {
  \override #'(line-width . 65)
  \center-column {
    \justify \italic {
    C’est en décembre 2011, peu après l’émergence de l’Oumupo dans
    sa forme actuelle, que Jehanne Carillon me présenta son projet
    de "« cabaret" "oulipien »", pas encore intitulé Chant’Oulipo.
    Pendant les douze mois suivants, Mike Solomon et moi-même, bientôt
    rejoints par Jean-François Piette, rédigeâmes une trentaine de
    chansons et numéros musicaux, inspirés par divers langages musicaux
    populaires et "« de" "variété »." J’en présente ici les plus
    marquants du point de vue des contraintes formelles utilisées,
    avec des arrangements réécrits pour l’occasion ainsi que quelques
    explications techniques.
    }
    \vspace #.5
    \justify \italic {
    À cette même époque, Olivier Salon m’offrit un exemplaire de son
    recueil Sardinosaures, co-écrit avec Jacques Roubaud, qui me donna
    l’occasion d’écrire un court cycle de mélodies pour soprano et piano,
    dans un style plus personnel et plus savant (évoquant par exemple
    certaines mélodies de Francis Poulenc, par exemple sur des poèmes
    d’Apollinaire), là encore sous diverses contraintes d’écriture.
    }
    \vspace #.5
    \justify \italic {
    Avec mes remerciements aux auteurs oulipiens, ainsi qu’à mon collègue
    oumupien Mike Solomon pour m’avoir permis d’utiliser ici deux de ses
    chansons.
    }
    \vspace #.5
    \italic "Bonne lecture !"
    \fill-line {"" \italic "Valentin Villenave, janvier 2015."}
  }
}
\markuplist \table-of-contents

\pageBreak

\pageBreak

AntilopeVoixTexte = \lyricmode {
  % Jacques Roubaud.
  É -- trange, é -- trange est l’an -- ti -- lope
  L’an -- ti -- lope de l’an -- ti -- sa -- vane
  Qui an -- ti -- broute et an -- ti -- ga -- lope
  Et se nou -- rrit d’an -- ti -- ba -- nanes
  É -- trange, é -- trange est l’an -- ti -- lope

  É -- trange, é -- trange est l’an -- ti -- quaire
  L’an -- ti -- quaire des an -- ti -- car -- pathes
  Qui met son an -- ti -- cha -- peau sur l’an -- ti -- pa -- tère
  Et vend des an -- ti -- ta -- bleaux qu’il an -- ti -- date
  É -- trange, é -- trange est l’an -- ti -- quaire

  É -- trange, é -- trange est l’an -- ti -- lope
  L’an -- ti -- lope de l’an -- ti -- cam -- brousse
  Qui boit de l’an -- ti -- punch et fume des an -- ti -- clopes
  L’an -- ti -- lope an -- ti -- an -- ti -- rousse
  É -- trange, é -- trange est l’an -- ti -- lope
}

AntilopeSoustitre = \markup \justify {
  Style musical évoquant les mélodies françaises du début du
  \concat { \smallCaps xx \super \tiny e} siècle. La mélodique en lignes
  brisées s’approche chromatiquement de la tonique et de la "quinte ;"
  l’harmonisation oscille (de façon combinatoire) entre accords mineurs
  et majeurs.
}

AutobusVoixTexte = \lyricmode {
  % François Caradec.
  On a -- tten -- dait sous la pluie l’au -- to -- bus
  on se de -- man -- dait que \dash fait -- il_?
  \dash y_a -- \dash t_-_il un bou -- chon rue Pic -- pus
  u -- ne ma -- nif un in -- cen -- die_?
  On a -- tten -- dait long -- temps long -- temps.
  Au -- jour -- d’hui j’a -- ttends l’au -- to -- bus
  dans la rue sous un a -- bri -- bus
  je co -- nnais le temps de l’a -- ttente
  il faut bien que je m’en con -- tente.
  On a -- ttend tou -- jours l’au -- to -- bus.
}

AutobusSoustitre = \markup \justify {
  Genre "musical :" Song à la manière de Kurt Weill.
  Contrainte "mélodique :" Sérialisme «détendu» dans un contexte
  purement "tonal :" toutes les hauteurs du tempérament doivent
  être données un même nombre de fois (4 fois, puis 2 puis enfin
  "1 :" la fin de la mélodie est une véritable série).
}

CharlesChantTexte = \lyricmode {
  % Olivier Salon.
  Je re -- gar -- de Charles
  Je le re -- gar -- de len -- te -- ment
  Charles est ce gars
  Glabre et sans barbe
  Et les dents blan -- ches
  Charles est ex -- tra
  Franche -- ment ex -- tra -- va -- gant.

  É -- trange et pâle,
  Cé -- ré -- bral et fa -- tal,
  Le re -- gard na -- cré
  char -- mant et a -- ffable,
  Charles me chan -- te des fables_:

  Sa -- va -- mment, me na -- rre Car -- thage,
  É -- lé -- ga -- mment, me pa -- rle Gar -- ga -- melle
  et, ga -- la -- mment, me pa -- sse Ra -- vel...

  Je ne me la -- sse pas
  d’en -- ten -- dre le grand Charles
  Char -- les me rend ma -- lade.

  Ce -- pen -- dant, a -- vec Charles
  être en re -- tard
  n’est pas pen -- sa -- ble
  car dans ce cas,
  Charles a -- ttend.
}

CharlesSoustitre = \markup \justify {
  Genre "musical :" habanera. La mélodie suit fidèlement le
  bi-vocalisme des paroles (les seules voyelles autorisées sont
  A et E), en montant ou descendant d’une sixte à chaque changement
  de voyelle. Contrairement à l’écriture obligatoire d’une habanera,
  la ligne de basse est rédigée sans aucune quinte (contrainte en
  «lipovalle»).
}

DebutVoixTexte = \lyricmode {
  % Hervé Le Tellier.
  Tell’ -- ment tell’ -- ment
  on s’est tell’ -- ment
  com -- ment ça peut com -- ment ça peut
  si vite aus -- si et pour tou -- jours et à ja -- mais
  com -- ment ça peut
  c’est pas pos -- sible
  moi ce que je
  tout ce que je
  ça se -- rait que
  en -- fin bien sûr si c’est pos -- sible
  si toi tu veux au -- tant que moi ou juste un peu
  ça suf -- fi -- rait pour un dé -- but
  au dé -- but tu
  au dé -- but je
  mais ça pass’ -- rait
  à pe -- tits
  et toi et moi
  on ou -- blie -- rait
  ça re -- vien -- drait
  pas comme a -- vant
  mais mieux qu’a -- vant
  parce qu’on sau -- rait
  que toi et moi
  ça s’en va pas
  comm’ ça
}

DebutSoustitre = \markup \justify {
  Genre "musical :" samba-bossa.
  Contrainte "mélodique/rythmique :" la mélodie ne s’éloigne de
  sa note-pivot que toutes les cinq croches, vers des intervalles
  variés fournissant in fine le total chromatique.
  Contrainte "harmonique :" la tonique ne se fait pas entendre
  avant le dernier temps du morceau.
}

IdeechansonVoixTexte = \lyricmode {
  % Frédéric Forte.
  c’est simple un mot
          en suit un autre
  et tout se passe
          au ra -- len -- ti
  ré fa ré fa mi do mi do
  la mé -- lo -- die
          est u -- ne vitre

  par -- fois le verbe
          et par -- fois pas
  y_a comme des trous
          ça fait pa -- ssoire
  ré fa ré fa mi do mi do
  fau -- drait re -- voir
          le mode d’em -- ploi

                  Quelle est l’i -- dée de la chan -- son_?
                  Com -- bien de cou -- leurs au Ja -- pon_?
                  J’veux pas sa -- voir je m’en tam -- ponne
                  Le pa -- ra -- dis c’est mo -- no -- tone

  je fais le tour
          de je n’sais quoi
  mon train de vie
          est é -- clec -- tique
  do mi ré fa fa ré mi do
  j’aime -- rais a -- voir
          la tête à qui

                  Le pa -- ra -- dis c’est mo -- no -- tone
                  Quelle est l’i -- dée de la chan -- son_?
                  J’veux pas sa -- voir je m’en tam -- ponne
                  Com -- bien de cou -- leurs au Ja -- pon_?

  de temps en temps
          quand ça s’a -- llonge
  je louche un peu
          je crie pa -- pa
  fa ré fa fa ré mi do mi mi
  et puis tout dort
          \dash tais -- toi mon ange

                  Com -- bien de cou -- leurs au Ja -- pon_?
                  Le pa -- ra -- dis c’est mo -- no -- tone
                  J’veux pas sa -- voir je m’en tam -- ponne
                  Quelle est l’i -- dée de la chan -- son_?

  ré fa ré fa mi do mi do
  fa ré fa ré do mi do mi
  ré fa ré fa mi sol mi sol...
  La mé -- lo -- die
          (s’a -- rrête i -- ci)

                  Quelle est l’i -- dée de la chan -- son_?
                  Com -- bien de cou -- leurs au Ja -- pon_?
                  J’veux pas sa -- voir je m’en tam -- ponne
                  Le pa -- ra -- dis c’est mo -- no -- tone
}

IdeechansonSoustitre = \markup \justify {
  Genre "musical :" reggae-fusion.
  Contrainte "harmonique :" à proprement parler, le discours est ici
  atonal, s’appuyant dans les couplets sur des accords de quinte
  augmentée (gamme par tons) et dans les refrains sur des accords
  enrichis recombinés chromatiquement (en dodécaphonisme) de façon
  dépolarisée. La mélodie procède également d’une écriture
  combinatoire, dans ses motifs en tierces majeures (couplet) ou en
  arpèges brisés suivis de mouvements conjoints (refrain).
}


MakimococoVoixTexte = \lyricmode {
  % Jacques Roubaud.
  Le Ma -- ki Mo -- co -- co
  son ki -- mo -- no a mis
  pour un goû -- ter d’a -- mis
  Ma -- caque et O -- ka -- pi
  L’Ma -- caque vient d’Ma -- ca -- o
  L’O -- ka -- pi d’Ba -- ma -- ko.

  Le Ma -- ki Mo -- co -- co
  fait goû -- ter ses a -- mis
  pas de ma -- ca -- ro -- nis
  mais d’un cake aux ki -- wis
  % [Missing in Roubaud’s updated version:]
  % d’esquimaux au moka
  % et kakis en bocaux
  quart de lait de co -- co
  Ca -- ca -- o ou co -- ca
  Dans des bols en mi -- ca.

  «_Qui joue au mi -- ka -- do_?_»
  dit l’Ma -- ki Mo -- co -- co
  le Ma -- ca -- que dit oui
  l’O -- ka -- pi ne dit mot.

  L’Ma -- caque est un co -- quin
  l’a -- co -- lyte O -- ka -- pi
  est du même a -- ca -- bit
  Le Ma -- caque qu’a un coup
  pour gru -- ger les go -- gos
  ra -- fle tous les ko -- peks
  du Ma -- ki Mo -- co -- co.

  «_Ah, mais quoqu’ -- c’est quoqu’ -- ça_?_»
  dit l’Ma -- ki Mo -- co -- co
  «_ton bien est mal ac -- quis_»
  le Ma -- caque dit «_quoi_? Quoi_?_»
  «_Qui_? qui_?_» dit l’O -- ka -- pi.

  Le Ma -- caque dé -- mas -- qué
  par l’Ma -- ki Mo -- co -- co
  prit sa ka -- lach -- ni -- koff
  ac -- quise à Ma -- la -- koff
  de Pé -- pé le Mo -- ko
  qu’en canne il ma -- qui -- lla
  c’est kif kif Chi -- ca -- go.

  Mais l’Ma -- ki Mo -- co -- co
  au men -- ton les bo -- xa
  le Ma -- caque est K. -- O.
  l’O -- ka -- pi dans l’co -- ma.

  «_Ah mes jo -- lis co -- cos
  comme vous ê -- tes co -- miques_!_»
  dit l’Ma -- ki Mo -- co -- co
  sai -- si -- ssant son Ko -- dak
  pour i -- mmor -- ta -- li -- ser
  ce -- tte scène à ja -- mais
  en un bel e -- ma -- ki
  à ven -- dre sur les quais
  Con -- ti ou Ma -- la -- quais
  et qu’on ne l’ou -- blie plus.

  Le Ma -- ki Mo -- co -- co
  est né à Me -- xi -- co
  il s’a -- ppelle Du -- du.
}

MakimococoSoustitre = \markup \justify {
  Genre "musical :" afro-jazz.
  Contrainte "rythmique :" mesure irrégulière en miroir (2+2+3+3+2+2).
  Contrainte "harmonique :" modulations par tierces mineures.
}

PetitmariVoixTexte = \lyricmode {
  % Paul Fournel.
  J’ai ache -- té un pe -- tit ma -- ri
  Un jour de soldes à Mo -- no -- prix
  Ni é -- chan -- gé ni re -- pris
  Un pe -- tit ma -- ri au ju -- ste prix

  À l’a -- rri -- vée à la mai -- son
  Je l’ai sor -- ti de son cai -- sson
  Il é -- tait clair comme un tout neuf
  Et il fai -- sait un e -- ffet meuf
  Je l’ai po -- sé dans le ca -- na -- pé
  Je lui ai pan -- tou -- flé les pieds
  Et j’ai re -- cu -- lé pour l’in -- spec -- ter

  J’a -- vais ache -- té un pe -- tit ma -- ri
  Un jour de soldes à Mo -- no -- prix
  Ni é -- chan -- gé ni re -- pris
  Un pe -- tit ma -- ri au ju -- ste prix

  Cô -- té dé -- co c’é -- tait O -- K
  Res -- tait à voir ce qu’il va -- lait
  Un deux_! Un deux_! pe -- tits tra -- vaux
  Coup de ba -- lai vai -- sselle à l’eau
  Il ne vou -- lait rien a -- tta -- quer
  Il res -- tait sur son cul plom -- bé

  J’ai ache -- té un pe -- tit ma -- ri
  Un jour de soldes à Mo -- no -- prix
  Mais on ne m’a pas ven -- du la clef
  La clef qui sert à le mon -- ter

  Il res -- te sage à la mai -- son
  J’en -- lève la peau de son sau -- ci -- sson
  Il me re -- garde ve -- nir a -- ller
  Sans e -- ssay -- er de se le -- ver
  Il ne me ta -- pe pas sur les fesses
  Il ne ré -- clame pas de ca -- resse

  Je suis dé -- çue par ce ma -- ri
  A -- che -- té en soldes à Mo -- no -- prix
  C’est bien jo -- li d’ê -- tre jo -- li
  Mais il pou -- rrait ê -- tre po -- li

  J’ai vé -- ri -- fié tou -- tes les pièces
  Il a ce_qu'il faut à son es -- pè -- ce
  Sim -- ple -- ment il ne mar -- che pas
  Sim -- ple -- ment il ne bou -- ge pas
  Moi qui vou -- lais un brin de cour
  Je peux re -- pa -- sser pour l’a -- mour

  J’ai ache -- té un pe -- tit ma -- ri
  Un jour de soldes à Mo -- no -- prix
  Il mar -- che pas il est mi -- gnon
  Mais c’est du toc et du bi -- don


  N’a -- che -- tez ja -- mais vos pe -- tits ma -- ris
  Les jours de soldes à Mo -- no -- prix
  Le prix vous sem -- ble juste et bon
  Mais a -- rri -- vées à la mai -- son
  Vous se -- rez dé -- çues et con -- ster -- nées
  Moi je n’ai pas ter -- gi -- ver -- sé
  J’ai re -- mis le mien sur e -- Bay_!
}

PetitmariSoustitre = \markup \justify {
  Genre "musical :" opérette française kitsch.
  La musique est ici construite (sous une forme sérieusement détraquée)
  sur une célèbre comptine enfantine ayant pour thème l’insatisfaction
  sexuelle féminine dans un cadre conjugal. Contrainte "harmonique :"
  le cycle des quintes est ici remplacé par des sauts de tierce majeure.
}

PopincourtVoixTexte = \lyricmode {
  % Jacques Jouet.
  Po -- pin -- court Po -- pin -- court
  ci -- té, im -- passe, rue Po -- pin -- court
  mieux qu’Cher -- bourg ou \dash Saint -- Pe -- ters -- burg
  ou même que Bou -- \dash logne -- Bi -- llan -- court
  il me dit viens, bah moi j’a -- ccours
  ça_s' -- ra le_p' -- tit bo -- nheur du jour
  Po -- pin -- court Po -- pin -- court
  le lieu des ren -- \dash dez -- vous d’a -- mour

  Po -- pin -- court Po -- pin -- court
  a -- sile ou mar -- ché Po -- pin -- court
  je_m' pom -- ponne comme la Pom -- pa -- dour
  fau -- drait pas_qu' j’a -- rrive à la bourre
  j’lui pré -- pare mes yeux de ve -- lours
  ça vaut mieux que de beaux dis -- cours
  Po -- pin -- court Po -- pin -- court
  le lieu des ren -- \dash dez -- vous d’a -- mour

  Po -- pin -- court Po -- pin -- court
  tout près_d' la Fo -- \dash lie -- Mé -- ri -- court
  j’ai un bou -- quet de belles de jour
  plus un tu -- pper -- ware de boul -- gour
  une pro -- vi -- sion de ca -- lem -- bours
  j’ai même a -- ppor -- té des_p' -- tits fours
  Po -- pin -- court Po -- pin -- court
  le lieu des ren -- \dash dez -- vous d’a -- mour

  Il est pas là, je crie au_s' -- cours_!
  le temps de rê -- ver est bien court
  quand_j' fais_l' poi -- reau j’ai les doigts gourds
  l’a -- mour pé -- dale dans le yo -- gourt
  rou -- lez trom -- pettes sou -- fflez tam -- bours
  c’est ma chan -- son mor -- ceau_d' bra -- voure
  Po -- pin -- court Po -- pin -- court
  le lieu des grands râ -- teaux d’a -- mour_?

  mais le voi -- là, et même il court
  qu’il est long dans son pan -- ta -- court
  sa coi -- ffure comme un a -- \dash bat -- jour
  il est beau comme un frais la -- bour
  qu’on a -- per -- çoit en con -- \dash tre -- jour
  tou -- jours l’a -- mour bon -- jour tou -- jours
  Po -- pin -- court Po -- pin -- court
  le lieu des ren -- \dash dez -- vous d’a -- mour
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  le lieu des ren -- \dash dez -- vous d’a -- mour
}

PopincourtSoustitre = \markup \justify {
  Genre "musical :" java. Contraintes "mélodiques :" les rimes en «our»
  (il s’agit d’un poème monorime) tombent systématiquement sur la même
  note, même lorsque le discours module. En revanche, la tonique
  est systématiquement évitée, jusqu’à la dernière note.
}

QuandjepenseVoixTexte = \lyricmode {
  % Jacques Roubaud.
  Quand je pense
  quand je pense
  quand je pense à toi
  je me de -- mande
  je me de -- mande
  si tu penses à moi
  et s’il se trouve que tu penses
  que tu penses à moi
  au mo -- ment même où je me de -- mande
  où je me de -- mande
  si tu penses à moi
  est-ce que tu te de -- mandes
  te de -- mandes
  si je pense à "toi ?"
  et tant je me de -- mande
  de -- mande
  si tu penses à moi
  qu’à la fin je me de -- mande
  je me de -- mande
  si j’ai pen -- sé à toi
}

QuandjepenseSoustitre = \markup \justify {
  Genre "musical :" ballade (slow).
  Contrainte "harmonique :" l’harmonisation n’est composée que
  d’«anatoles» (enchaînements VI-II-V-I) incomplets.
  Contrainte "mélodique :" la mélodie est entièrement gouvernée par
  les prédicats du texte (lequel n’est constitué que de groupes verbaux,
  avec seulement deux verbes différents).
  Le verbe «penser» produit une quinte, le verbe «demander» une tierce.
  Suivant qu’il s’agit de la première ou de la deuxième personne, l’intervalle
  est ascendant ou descendant (et inversement selon le verbe). Enfin,
  la deuxième personne majore les tierces mais minore les secondes.
}

RaisonVoixTexte = \lyricmode {
  % Ian Monk.
  Tu me de -- man -- des la rai -- son
  de ce -- tte danse
  y_en a pas tu sais
  le mou -- ve -- ment su -- ffit à lui -- même
  pour scul -- pter sa pla -- ce dans l’air

  Pour scul -- pter sa pla -- ce dans l’air
  tu me de -- man -- des la rai -- son
  de cette spi -- rale tou -- jours la même
  et je ré -- ponds quand on danse
  y_en a pas tu sais

  Tu me de -- man -- des si je sais
  de quoi ça a l’air
  et je ré -- ponds quand on danse
  on ne fait pas une rai -- son
  de cette spi -- rale tou -- jours la même

  C’est du pa -- reil au même
  tu me de -- man -- des si je sais
  on ne fait pas une rai -- son
  de quoi ça a l’air
  si c’est nous per -- dus dans la danse

  Si c’est nous per -- dus dans la danse
  c’est du pa -- reil au même
  c’est l’air
  du temps tu sais
  y_a pas de rai -- son
}

RaisonSoustitre = \markup \justify {
  Genre "musical :" rock lent.
  Contrainte "structurelle :" cinq carrures de cinq mesures à cinq temps.
  Contrainte "mélodique :" la mélodie n’utilise que cinq hauteurs,
  correspondant aux cinq mots-rimes du texte (en «quenoum»), et
  suivant une écriture combinatoire similaire. Contrainte
  "harmonique :" les notes de la mélodie, bien qu’invariantes,
  sont tantôt perçues dans un contexte de ré mineur, tantôt de
  mi \general-align #Y #DOWN \teeny \flat mineur.
  Contrainte "rythmique :" les appuis tombent toutes
  les cinq double-croches (en décalage avec les temps).
}

TelephoneVoixTexte = \lyricmode {
  % Jacques Roubaud.
  Dans les her -- bes, dans les bui -- ssons
  Dans les fleurs bleues, rou -- ges ou jaunes
  C’est pour en -- ten -- dre ta chan -- son
  Que je t’a -- ppelle ô Té -- lé -- phone.

  Gaie co -- mme ce -- lle du pin -- son
  Ce -- lle de la grive en au -- tomne
  Si dou -- ce qu’elle donne le fri -- sson
  Est la no -- te du Té -- lé -- phone.

  Très peu u -- tile est l’ha -- me -- çon
  Sans in -- té -- rêt le sa -- xo -- phone
  Pas be -- soin de tant de fa -- çons
  Pour la pri -- se du Té -- lé -- phone.

  À l’é -- po -- que de la mou -- sson
  Pour fuir l’o -- ra -- ge qui l’é -- tonne
  Il court et tom -- be chez les poi -- ssons
  À l’eau, à l’eau, le Té -- lé -- phone.

  Plu -- ma -- ges bruns, plu -- ma -- ges blonds
  Plu -- ma -- ges roux co -- mme l’au -- tomne
  Ces cous courts ou bien ces cous longs
  Ce sont des cous de Té -- lé -- phone.

  Becs ou -- verts a -- vec con -- vi -- ction
  Pia -- illant ju -- squ’à s’en rendre a -- phones
  Pour ré -- cla -- mer dou -- ble ra -- tion
  Tels sont les fi(l)s du Té -- lé -- phone.

  Fin co -- mme le pa -- pier Can -- son
  Co -- mme le bec de la ci -- gogne
  Ou la tru -- ffe du hé -- ri -- sson
  Tu as beau nez ô Té -- lé -- phone.

  Mais on dit qu’il a l’am -- bi -- tion
  D’être é -- lu mai -- re de Car -- ca -- ssonne_!
  Je crains que dans ces con -- di -- tions
  Las, on ne rie du Té -- lé -- phone.
}

TelephoneSoustitre = \markup \justify {
  Genre "musical :" \concat {
    \bold fa \general-align #Y #DOWN \teeny \sharp
    \bold do \general-align #Y #DOWN \teeny \flat .
  }
  Contrainte de "hauteurs :" la partition est rédigée
  pour clavier téléphonique à double-fréquence (norme
  DTMF), en écriture concertante avec la voix et la basse.
  La tonalité de si mineur est choisie pour correspondre
  approximativement aux sons du téléphone, qui ne se situent
  pas dans le tempérament harmonique habituel.
}

\layout {
  \context {
    \Score
    \override SystemStartBrace #'collapse-height = #1
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t
    \override TimeSignature #'style = #'()
    \override TextScript #'stencil =
      #(lambda (grob)
          (let ((grob-markup (ly:grob-property grob 'text)))
            (grob-interpret-markup grob (make-italic-markup grob-markup))))
    \override TextScript #'direction = #UP

    autoAccidentals = #`(Staff ,(make-accidental-rule 'same-octave 0)
                          ,(make-accidental-rule 'any-octave 0)
                          ,(make-accidental-rule 'same-octave 1)
                          ,neo-modern-accidental-rule)
    autoCautionaries = #`(Staff ,(make-accidental-rule 'same-octave 1)
                          ,(make-accidental-rule 'any-octave 1))
    extraNatural = ##f
    melismaBusyProperties = #'(melismaBusy tieMelismaBusy)
  }
}

\pageBreak
