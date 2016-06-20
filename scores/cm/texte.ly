% Harmoniques -- texte.ly -----------------------------------------%
% (c) 2013-2016 Nicolas Graner <http://graner.net/nicolas>

%% version 37

#(ly:set-option 'use-variable-names #t)
%#(set-global-staff-size 28)

\layout {
  \context {
    \Staff
    %  \override StaffSymbol.thickness = #3
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène I     %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Java (Marc) ----------------------------------------------------%

JavaMarcTexte =
\lyricmode {
  Je ne me sens pas ma -- la -- de
  Ce n’est pas la dé -- ban -- da -- de
  Ma tê -- te ne va pas mal
  Pas tra -- ce de re -- tard men -- tal

  Et ce -- pen -- dant c’est la ga -- lè -- re
  Ce tra -- vers me dé -- ses -- pè -- re_:
  Des ter -- mes, de temps en temps,
  M’é -- chap -- pent, c’est em -- bê -- tant.

  Je ne sem -- ble pas ca -- pa -- ble
  D’a -- che -- ver, c’est la -- men -- ta -- ble.
  Mes phra -- ses s’ar -- rê -- tent, vlan_!
  En cré -- ant d’é -- tran -- ges blancs.

  Ça me me -- na -- ce sans trê -- ve
  Ça me han -- te dans mes rê -- ves
  Ça me prend en ba -- var -- dant,
  En man -- geant, en gam -- ba -- dant,

  À la cam -- pagne, en va -- can -- ces,
  Chez ma mère et à la dan -- se,
  Et même en na -- geant le crawl
  Ce n’est fran -- che -- ment pas dr…

  % [Parlé: ] Par exemple ! Même en chantant ça me reprend !
  Et même en na -- geant le crawl
  Ce n’est fran -- che -- ment pas dr…

  % [Parlé: ] Attendez, je prends de l’élan :
  Et même en na -- geant la brasse
  Ça me gêne et m’em -- bar -- rasse
  Et même en na -- geant le crawl
  Ce n’est fran -- che -- ment pas dr… pas dr…

  % [accablé] C’est franchement pas marrant !
  % [Il se prend la tête dans les mains.]
}


%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène II    %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Tango (Marc, Flo) ----------------------------------------------%

TangoList =
\lyricmode {
  \tag #'Marc {
    % Je me pré -- sente, je m’ap -- pelle Marc.

    % FLO
    % [à part] Oh, bonne mère, ce ton ! Ces notes sonores ! Les ténors m’ensorcèlent. Bon, tentons de répondre de même.

    % [à Marc] dans son style à elle, plutôt coquine/aguicheuse
    %Je me pré -- sente, je me nomme Flo.

    %MARC
    % En -- chan -- té.

    %FLO
    %Ho -- no -- rée.

    En es -- thè -- te très cé -- ré -- bral
    Je re -- cherche, et je m’en ré -- gale,
    Les grands ta -- lents, les bel -- les âmes,
    Et pas l’as -- pect char -- nel des dames.
  }
  \tag #'Flo {
    %[à part]
    Cet hom -- me rê -- ve de No -- bel,
    Non de cho -- per des top mo -- dels.
    Ces -- sons donc de pren -- dre des poses
    Dé -- ve -- lop -- pons de for -- tes gloses.

    %[à Marc] elle essaye d’imiter son style sans y arriver vraiment,
    % elle est un peu ridicule
    Com -- me je com -- prends vos pro -- pos_!
    Met -- tons no -- tre corps en re -- pos
    Les mots sont le pro -- pre de l’Homme
    C’est no -- tre cô -- té noble, en somme.
  }
  \tag #'Marc {
    %très à l’aise, comme dans une conversation mondaine
    E -- xac -- te -- ment. D’a -- près les thè -- ses de Des -- car -- tes
    L’â -- me tend à s’é -- le -- ver, la pa -- res -- se l’en é -- carte
  }
  \tag #'Flo {
    No -- tre corps est l’ob -- jet des for -- ces de New -- ton_;
    No -- tre vo -- lon -- té crée le temps, se -- lon Berg -- son.
  }
  \tag #'Marc {
    Le temps n’est pas cré -- é par la pen -- sée, à part
    Dans le cas, je l’ad -- mets, des let -- tres et des arts
  }
  \tag #'Flo {
    Le temps sem -- ble fort long lors des mo -- ments trop sombres
    Les se -- con -- des s’é -- grènent, on en comp -- te le nombre.
    En op -- po -- sé, le temps s’en -- vole promp -- te -- ment
    Lors des bel -- les ren -- contres et des très bons mo -- ments.
    Comme en vo -- tre pré -- sence, mon cher… mon cher… Er -- nest
  }
}

TangoFloTexte = \keepWithTag #'Flo \TangoList
TangoMarcTexte = \keepWithTag #'Marc \TangoList


%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène III   %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Song (Flo) -----------------------------------------------------%

SongFloTexte =
\lyricmode {
  Les hom -- mes rê -- vent de con -- tem -- pler
  Mes mè -- ches blon -- des
  %[Note : selon l’interprète du rôle on peut remplacer blondes par sombres,
  % d’or, ocre, vertes, folles, etc.]
  Les hom -- mes rê -- vent de bé -- co -- ter
  Mes lè -- vres ro -- ses
  Les hom -- mes rê -- vent de dor -- lo -- ter
  Mes ten -- dres for -- _ mes __ _

  Les hom -- mes se com -- por -- tent en hom -- mes, for -- cé -- ment

  Les hom -- mes rê -- vent de pe -- lo -- ter
  Mes té -- tons fer -- mes
  Les hom -- mes rê -- vent de mo -- de -- ler
  Mes fes -- ses ron -- des
  Les hom -- mes rê -- vent de som -- no -- ler
  Con -- tre mon corps

  Les hom -- mes se com -- por -- tent en hom -- mes, for -- cé -- ment

  Les hom -- mes rê -- vent de dé -- ro -- ber
  Mes por -- tes clo -- ses
  Les hom -- mes rê -- vent de pos -- sé -- der
  Mes clés se -- crè -- tes
  Les hom -- mes rê -- vent de consom -- mer
  Mon lot de po -- mmes

  Les hom -- mes se com -- por -- tent en hom -- mes, for -- cé -- ment

  Les hom -- mes rê -- vent de me trom -- per
  Chez les co -- cottes
  Les hom -- mes rê -- vent de me je -- ter
  Je les en -- combre
  Les hom -- mes rê -- vent de m’en -- ter -- rer
  Comme les ombres

  Les hom -- mes se com -- por -- te -- ront en hom -- mes,
  En -- core et en -- core, for -- cé -- ment
}


%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène IV    %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Disco (Flo, Brice) ---------------------------------------------%

DiscoList =
\lyricmode {
  \tag #'Flo {
    Gos -- se pré -- co -- ce, vers mes onze é -- tés,
    Je me ber -- ce de rê -- ves per -- vers
  }
  \tag #'Brice {
    Pe -- ti -- te fille très é -- veil -- lée,
    Elle se ber -- ce de rê -- ves per -- vers
  }
  \tag #'Flo {
    Dès mes for -- mes dé -- ve -- lop -- pées,
    Je prends des mecs, je me rends femme
  }
  \tag #'Brice {
    Vir -- gi -- ni -- té vi -- te dis -- si -- pée,
    Elle prend des mecs, elle se rend femme
  }
  \tag #'Flo {
    J’of -- fre mon corps, je tom -- be les hom -- mes_;
    Je cé -- lè -- bre le sexe en fê -- te
    Je cé -- lè -- bre le sexe en fê -- te
  }
  \tag #'Brice {
    Gri -- sée d’ex -- ci -- ter le dé -- sir,
    El -- le cé -- lè -- bre le sexe en fê -- te
  }
  \tag #'Flo {
    Je dé -- vo -- re les bons mo -- ments,
    Je ré -- vè -- re le temps pré -- sent
  }
  \tag #'Brice {
    C’est le prin -- temps et c’est l’i -- vresse,
    El -- le ré -- vè -- re le temps pré -- sent
  }
  \tag #'Flo {
    Fol -- le de mon corps trop long -- temps,
    Je re -- jet -- te les ser -- ments é -- ter -- nels
  }
  \tag #'Brice {
    Pri -- vi -- lè -- ge de fem -- me li -- bre,
    El -- le re -- jet -- te les ser -- ments é -- ter -- nels
  }
  \tag #'Flo {
    En ce mo -- ment, pro -- che des trente,
    Je rê -- ve d’en -- ten -- te pé -- ren -- ne
    Je rê -- ve d’en -- ten -- te pé -- ren -- ne
  }
  \tag #'Brice {
    Pei -- née de se sen -- tir vieil -- lir,
    El -- le rê -- ve d’en -- ten -- te pé -- ren -- ne
  }
  \tag #'Flo {
    Je pro -- jet -- te de con -- vo -- ler,
    De me ré -- gler et d’ê -- tre mè -- re
    De me ré -- gler et d’ê -- tre mè -- re
  }
  \tag #'Brice {
    Il vient l’en -- vie de s’in -- ves -- tir,
    De se ré -- gler et d’ê -- tre mè -- re
  }
  \tag #'Flo {
    Oh, com -- ment ren -- con -- trer l’homme ho -- no -- ré
    D’ê -- tre le père de mes bé -- bés_!
  }
  \tag #'Brice {
    Il est si dif -- fi -- cile d’ê -- tre digne
    D’ê -- tre le père de ses bé -- bés_!
  }
  \tag #'Flo {
    L’hom -- me bon, fort, noble, cool, drôle, sobre,
    Ten -- dre, zen, le -- ste, ferme et fervent
  }
  \tag #'Brice {
    E -- xi -- \dash ste -- t_-_il, ce phé -- nix pres -- sen -- ti,
    Ten -- dre, zen, le -- ste, ferme et fervent
  }
}

DiscoFloTexte = \keepWithTag #'Flo \DiscoList
DiscoBriceTexte = \keepWithTag #'Brice \DiscoList


%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène V     %%%%%%%%%%%%%%%%%%%%%%%%%%

%(Flo, Brice, Marc)

ChansonList =
\lyricmode {
  \tag #'Brice {
    Di -- tes bien ce -- ci
  }
  \tag #'Flo {
    Ré -- pé -- tons ces mots
  }
  \tag #'Marc {
    Ra -- bâ -- cher ce -- la
  }
  \tag #'Brice {
    Res -- tez pré -- cis
  }
  \tag #'Flo {
    Comme en é -- cho
  }
  \tag #'Marc {
    Ne m’em -- bal -- le pas
  }
  \tag #'Brice {
    Je te dis mes en -- vies,
    Je te dis mes dé -- sirs
  }
  \tag #'Flo {
    Je te con -- te mes vo -- lon -- tés,
    Je te con -- te mes ef -- forts
  }
  \tag #'Marc {
    Je te nar -- re mes at -- ten -- tes,
    Je te nar -- re mes de -- mandes
  }
  \tag #'Brice {
    Je de -- vi -- ne tes i -- dées,
    Tes i -- dées sen -- sibles
  }
  \tag #'Flo {
    Je com -- prends tes pro -- pos,
    Tes pro -- pos pro -- fonds
  }
  \tag #'Marc {
    Je par -- ta -- ge tes sché -- mas,
    Tes sché -- mas é -- lé -- gants
  }
  %{
Dites bien ceci	Répétons ces mots	Rabâcher cela
Restez précis	Comme en écho	Ne m’emballe pas

Je médite tes titres, tes mérites
	Je contemple tes fort bons côtés	Je regarde tes grands avantages

Je m’entiche de l’esprit d’élite
	Je gobe ce corps de Roméo	Je m’attache à cette âme exaltée

Dites bien ceci	Répétons ces mots	Rabâcher cela
Restez précis	Comme en écho	Ne m’emballe pas

Je décide de tisser des liens
	Je m’efforce de former des rencontres	Je tâche de lancer des amarres

Je dessine le destin de ces vies
	Je compose le sort de ces personnes	Je présage l’après de ces âges
  %}
}

ChansonMarcTexte = \keepWithTag #'Marc \ChansonList
ChansonFloTexte = \keepWithTag #'Flo \ChansonList
ChansonBriceTexte = \keepWithTag #'Brice \ChansonList

%{
A - O - I
Traditionnel
Chanson française
Chant grégorien
Milonga
Adagio
Oratorio
Piano
Latino
%}


%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène VI    %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Pastiche (Brice, Marc) -----------------------------------------%

PasticheIMarcTexte =
\lyricmode {
  Ne me la- (Hm hm.)
  Ne me lâ -- che pas…
  Ça va s’ef -- fa -- cer,
  Je pars ef -- fa -- cer,
  Ça s’en va dé -- jà.
  Ef -- fa -- cer le temps
  De la mé -- sen -- ten -- te,
  Le temps de l’at -- tente,
  En se de -- man -- dant
  D’ef -- fa -- cer ces phases
  De re -- cher -- ches blêmes,
  À é -- tran -- gler même
  L’â -- me de l’ex -- tase.
  Ne me lâ -- che pas,
  Ne me lâ -- che pas,
  Ne me lâ -- che pas,
  Ne me lâ -- che pas.

  Je pars te cher -- cher
  Des pe -- rles de mer,
  Ve -- nant de dé -- serts
  Â -- pres et des -- sé -- chés.
  Le sel de ma terre,
  A -- près le tré -- pas,
  Pa -- re -- ra tes ap -- pas
  D’é -- clat et de fer.
  Rè -- gne -- ra sans trê -- ve
  La cé -- le -- ste flam -- me,
  La cé -- le -- ste fem -- me,
  Dé -- es -- se de rê -- ve.
  Ne me lâ -- che pas,
  Ne me lâ -- che pas,
  Ne me lâ -- che pas,
  Ne me lâ -- che pas.
}

PasticheIIBriceTexte =
\lyricmode {
  Ne me re -- tire rien
  Mes te -- rmes in -- ven -- tés
  Mes te -- rmes in -- sen -- sés
  In -- ter -- prè -- te -- les bien
  Je viens i -- ci dire
  Les vies des ché -- ris
  Vi -- ve -- ment re -- pris
  Des pre -- miers dé -- si -- rs
  En -- tends le ré -- cit
  Ter -- rible et in -- time
  De ce prin -- ce vic -- time
  De t’être in -- ter -- dit
  Ne me re -- tire rien
  Ne me re -- tire rien
  Ne me re -- tire rien
  Ne me re -- tire rien
}

PasticheIIMarcTexte =
\lyricmode {
  Ne me lâ -- che pas
  Ne me lâ -- che pas
  Ne me lâ -- che pas
  Ne me lâ -- che pas
}

PasticheIIIMarcTexte =
\lyricmode {
  Dans la ra -- de d’Am -- ster -- dam,
  Des tas de ma -- tafs chantent
  Car des rê -- ves les hantent,
  En par -- tant d’Am -- ster -- dam.
  Dans la ra -- de d’Am -- ster -- dam,
  Des tas de ma -- tafs crêvent,
  Char -- gés d’ale et de drame_;
  Et la clar -- té se lève.
}

PasticheIVList =
\lyricmode {
  \tag #'Brice {
    C’est le twist en six temps
  }
  \tag #'Marc {
    C’est la valse à sept temps
  }
  \tag #'Brice {
    Il prend si bien le temps
  }
  \tag #'Marc {
    Ell’ prend dé -- jà le temps
  }
  \tag #'Brice {
    Il prend si bien le temps
  }
  \tag #'Marc {
    Ell’ prend dé -- jà le temps
  }
  \tag #'Brice {
    De ve -- nir en -- tre -- temps
  }
  \tag #'Marc {
    De re -- prendre en chan -- tant
  }
  \tag #'Brice {
    Res -- sen -- tir le prin -- temps
  }
  \tag #'Marc {
    Les sen -- tences d’an -- tan
  }
  \tag #'Brice {
    C’est le twist en six temps
  }
  \tag #'Marc {
    C’est la valse à sept temps
  }
  \tag #'Brice {
    C’est le twist en vingt temps
  }
  \tag #'Marc {
    C’est la valse à trente ans
  }
  \tag #'Brice {
    Et le twist en vingt temps
  }
  \tag #'Marc {
    Et la valse à trente ans
  }
  \tag #'Brice {
    C’est très im -- per -- ti -- nent
  }
  \tag #'Marc {
    C’est très en -- tre -- pre -- nant
  }
  \tag #'Brice {
    Il sert in -- ti -- me -- ment
  }
  \tag #'Marc {
    Ça per -- met à l’amant
  }
  \tag #'Brice {
    Les pen -- sées des fer -- vents
  }
  \tag #'Marc {
    De pas -- ser à l’avant
  }
  \tag #'Brice {
    C’est le twist en vingt temps
  }
  \tag #'Marc {
    C’est la valse à trente ans
  }
  \tag #'Brice {
    C’est le twist en cent temps…
  }
  \tag #'Marc {
    C’est la valse à cent ans…
  }
}

PasticheIVBriceTexte = \keepWithTag #'Brice \PasticheIVList
PasticheIVMarkTexte = \keepWithTag #'Marc \PasticheIVList


%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène VII   %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Lied (Brice) ---------------------------------------------------%

LiedIBriceTexte =
\lyricmode {
  In die steil -- sten Fel -- sen -- spit -- zen
  si -- cher -- te mich ein Irr -- licht hin:
  Wie ich Frei -- heit wie -- der fin -- de,
  liegt nicht schwer mir in dem Sinn,
  liegt nicht schwer mir in dem Sinn.
}

LiedIIBriceTexte =
\lyricmode {
  Vin, di -- ssi -- pe cet -- te tris -- tes -- se_;
  Je me sens dé -- pé -- rir.
  J’en -- vie les rê -- ves de l’i -- vres -- se
  Et l'im -- per -- ti -- nent rire_!

  Bel é -- li -- xir de li -- es -- se,
  Ver -- se l’i -- vres -- se_;
  Viens rem -- plir mes dé -- sirs,
  Cher é -- li -- xir_:
  Viens rem -- plir mes dé -- sirs_!
}

LiedIIIBriceTexte =
\lyricmode {
  Win -- ter -- time
  When the liv -- in’ is se -- vere
  Fish is freez -- in’
  While the ice is piled high

  Still, this sire is rich
  While this girl is e -- ver smil -- ing
  Be si -- lent li -- ttle child
  Ne -- ver weep
}

%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène IX    %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Blues (Prune) --------------------------------------------------%

BluesPruneTexte =
\lyricmode {
  En -- ten -- dez le blues des gueux
  Les hur -- le -- ments, les mur -- mures
  Des hum -- bles et des té -- né -- breux

  Ce beu -- gle -- ment tu -- mul -- tu -- eux
  N’est qu’un re -- lent de bles -- sure
  En -- ten -- dez le blues des gueux

  Des dé -- chus et des lé -- preux
  Des ex -- clus et des cre -- vures
  Des humbles et des té -- né -- breux

  Entre les pleurs vé -- né -- neux
  Et les huées des en -- flures
  En -- ten -- dez le blues des gueux

  C’est le pus des ul -- cé -- reux
  Les ver -- rues et les ger -- çures
  Des humbles et des té -- né -- breux

  Le dé -- fer -- le -- ment de ceux
  Que les rè -- gle -- ments cen -- surent
  En -- ten -- dez le blues des gueux

  \dash Culs -- ter -- reux, pé -- teux, mer -- deux,
  Trem -- blez d’hu -- mer ce qu’en -- durent
  Les humbles et les té -- né -- breux

  Chefs su -- prêmes, ducs et preux,
  Prê -- cheurs en veste de bure,
  En -- ten -- dez le blues des gueux
  Des humbles et des té -- né -- breux
}


%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène X     %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Zouk (Prune, Flo) ----------------------------------------------%

%   Chorus / Punk rock / Soul / Funkcore

ZoukList =
\lyricmode {
  \tag #'Flo {
    Je cher -- che des po -- ses
    Mo -- der -- nes et drô -- les
    Et je te pro -- po -- se
    Ces for -- mes fo -- fol -- les_:
    Le dos de co -- chon
    Le gros po -- lo -- chon
    Et les vers de terre

    Em -- mê -- lons nos corps
    Et ten -- tons en -- core
    Le bock de ro -- sé
    Le bon -- bon o -- sé
  }
  \tag #'Prune {
    Je te cède en plus
    Mes trucs les plus crus_:
    Le mur de cul -- bute
    Le sculp -- teur de flûte
  }
  \tag #'Flo {
    Le dos de co -- chon
    Le gros po -- lo -- chon
  }
  \tag #'(Flo Prune) {
    Et les vers de terre
  }
  \tag #'Flo {
    Je te sens en for -- me,
    Res -- tons donc \dash hors -- nor -- me_:
    Le bé -- cot fé -- lon
    Le choc de trom -- blon
  }
  \tag #'Prune {
    Le fu -- meur ve -- lu
    Le nez de mer -- lu
  }
  \tag #'Flo {
    Le bock de ro -- sé
    Le bon -- bon o -- sé
  }
  \tag #'Prune {
    Le mur de cul -- bute
    Le sculp -- teur de flûte
  }
  \tag #'Flo {
    Le dos de co -- chon
    Le gros po -- lo -- chon
  }
  \tag #'(Flo Prune) {
    Et les vers de terre
  }
  \tag #'Flo {
    Pro -- lon -- geons l’ef -- fort,
    Mon ten -- dre tré -- sor_:
    Le bol en -- fon -- cé
    Le porc dé -- sos -- sé
  }
  \tag #'Prune {
    Les feux de re -- cul
    Les flè -- ches d’Her -- cule
  }
  \tag #'Flo {
    Le bé -- cot fé -- lon
    Le choc de trom -- blon
  }
  \tag #'Prune {
    Le fu -- meur ve -- lu
    Le nez de mer -- lu
  }
  \tag #'Flo {
    Le bock de ro -- sé
    Le bon -- bon o -- sé
  }
  \tag #'Prune {
    Le mur de cul -- bute
    Le sculp -- teur de flûte
  }
  \tag #'Flo {
    Le dos de co -- chon
    Le gros po -- lo -- chon
  }
  \tag #'(Flo Prune) {
    Et les vers de terre
  }
  \tag #'Prune {
    Quel -- le bel -- le ger -- be
    De ge -- stes su -- per -- bes_!
    Le dé -- jeu -- ner russe %% 3
    Le dres -- seur de puces
  }
  \tag #'Flo {
    Le mon -- stre d’É -- cosse
    Le bo -- lé -- ro corse
  }
  \tag #'Prune {
    Le Turc en -- rhu -- mé
    Le punk dé -- plu -- mé
  }
  \tag #'Flo {
    Le bol en -- fon -- cé
    Le porc dé -- sos -- sé
  }
  \tag #'Prune {
    Les feux de re -- cul
    Les flè -- ches d’Her -- cule
  }
  \tag #'Flo {
    Le bé -- cot fé -- lon
    Le choc de trom -- blon
  }
  \tag #'Prune {
    Le fu -- meur ve -- lu
    Le nez de mer -- lu
  }
  \tag #'Flo {
    Le bock de ro -- sé
    Le bon -- bon o -- sé
  }
  \tag #'Prune {
    Le mur de cul -- bute
    Le sculp -- teur de flûte
  }
  \tag #'Flo {
    Le dos de co -- chon
    Le gros po -- lo -- chon
  }
  \tag #'(Flo Prune) {
    Et les vers de terre
    Et les vers de terre
  }
}

ZoukFloTexte = \keepWithTag #'Flo \ZoukList
ZoukPruneTexte = \keepWithTag #'Prune \ZoukList

%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène XI    %%%%%%%%%%%%%%%%%%%%%%%%%%

%(Prune, Flo, Brice)

%FIXME: TBC

%{
O - U - I
Electronic body music (EBM)
Eurodisco
Hip-house
fusion
gothique ++
symphonique
mélodique
Microhouse
électronique ++
post-industriel
Nu-disco (disco house)
Quiet storm (ballades soul)
communiste
World music +++
%}


%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène XII   %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Biguine (Prune, Brice) -----------------------------------------%

BiguineList =
\lyricmode {
  \tag #'(Brice Prune) {
    C'en est bien fi -- ni, c'est sûr
    Des dis -- pu -- tes ri -- di -- cules
    De ces stu -- pi -- des in -- jures
    Des in -- sul -- tes qui cir -- culent

    L'u -- ni -- té en -- fin re -- luit
    C'est un tel suc -- cès de dire
    Ce sim -- ple ver -- be_: je suis
    Rien ne peut plus l'in -- ter -- dire
  }
  \tag #'Brice {
    Je suis Brice, le seul
  }
  \tag #'Prune {
    Je suis Prune, l'unique
  }
  \tag #'Brice {
    Je suis une belle gueule
  }
  \tag #'Prune {
    Je suis télégénique
  }
  \tag #'Brice {
    Je suis tel Dieu inquiet
  }
  \tag #'Prune {
    Je suis celle qui est
  }
  \tag #'Brice {
    Je suis celui qui fut
  }
  \tag #'Prune {
    Je fuis celui qui sue
  }
}

BiguineBriceTexte = \keepWithTag #'Brice \BiguineList
BiguinePruneTexte = \keepWithTag #'Prune \BiguineList


%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène XIII  %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Musique cubaine (Prune, Brice, Marc) ---------------------------%

CubainMarcTexte =
\lyricmode {
  Hi -- er mi -- di, j’é -- mer -- ge du pieu
  Je me sens le ven -- tre bien vide
  Je cherche un peu, je cher -- che mieux_:
  Rien qui pui -- sse_m’em -- plir le bide.

  Je des -- cends vi -- si -- ter les rues.
  Entre l’fleu -- riste et l’ci -- \dash né -- club
  J’prends une en -- seigne en pleine vue
  Qui dit ce -- ci_: «Great En -- glish Pub»

  Puis je lis en lettres qui brillent_:
  Dix heures – mi -- nuit, bière et gin.
  Der -- rière les vitres, deux filles,
  Une est en jupe et une en jean.

  Dès que je zieu -- te, c’est dé -- ment,
  Je m’in -- vente plein de bê -- tises_:
  Je les re -- tiens, rem -- pli d’ai -- mants,
  Je les sur -- prends en plein \dash strip -- tease.

  Je de -- viens vi -- te leur in -- time,
  Je les en -- fi -- le, je les nique.
  Quel en -- semble, quel -- le dream team,
  Plus li -- bé -- rés que des beat -- niks_!
}

CubainBriceTexte =
\lyricmode {
  …é -- mer -- ge du pieu_!
  …ven -- tre bien vide_!
  …cher -- che mieux_!
  …t’em -- plir le bide_!

  …les rues_!
  …ci -- \dash né -- club_!
  …saigne en pleine vue_!
  …«Great En -- glish Pub»_!

  …lettres qui brillent_!
  …bière et gin_!
  …deux filles_!
  …une en jean_!

  …c’est dé -- ment_!
  …plein de bê -- tises_!
  …pli d’ai -- mants_!
  …en plein \dash strip -- tease_!

  …leur in -- time_!
  …tu les niques_!
  …quelle dream team_!
  …des beat -- niks_!
}

CubainPruneTexte = \CubainBriceTexte


%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène XIV   %%%%%%%%%%%%%%%%%%%%%%%%%%

%(Prune, Brice, Marc, Flo)

%Romantique ? Jazz fusion ?

%FIXME: TBC


%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène XV    %%%%%%%%%%%%%%%%%%%%%%%%%%

%(Prune, Marc, Flo)

%Romantique ? Jazz fusion ?

%FIXME: TBC


%%%%%%%%%%%%%%%%%%%%%%%%%%    Scène XVI   %%%%%%%%%%%%%%%%%%%%%%%%%%

%(Prune, Marc)

%

%FIXME: TBC

