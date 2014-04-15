%-- Alcools -- texte.ly -------------------------------------------%
% (c) 1999-2014, Valentin Villenave <valentin@villenave.net>
% (c) 1898-1913, Guillaume Apollinaire
% (c) 1823-1824, Heinrich Heine

SopranoInstr = "Soprano"
PianoInstr = "Piano"

MarieTitre = "Marie"
AdieuTitre = "L’adieu"
AutomneTitre = "Automne"
ColchiquesTitre = "Les colchiques"
MaiTitre = "Mai"
PontTitre = "Le pont Mirabeau"
ClotildeTitre = "Coltilde"
ChantreTitre = "Chantre"
SigneTitre = "Signe"
SaltimbanquesTitre = "Saltimbanques"
VentTitre = "Le vent nocturne"

\header {
  title = \markup {
    \vconcat
    \center-column {
      \larger "Alcools"
      \smaller "G. Apollinaire"
      \vspace #.5
    }
  }
  subtitle = "pour soprano et piano"
  composer = "Valentin Villenave"
  date = "mars 1999 − mai 2014"
}

\paper {
  first-page-number = #-1
  ragged-last-bottom = ##f
}

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 1998-2014.
      }
      \line {
        \with-url #"http://valentin.villenave.net"
        \typewriter http://valentin.villenave.net
      }
      \vspace #.5
      \override #'(line-width . 100)
      \justify {
        Cette partition est publiée suivant les termes de la licence
        \concat {
          \with-url #"http://artlibre.org" \bold { Art libre }
          .
        }
        Vous pouvez la copier, la modifier et la jouer \italic librement
        sans contrevenir au droit d'auteur, à condition de respecter les
        termes de la licence (notamment en veillant à mentionner le nom
        de l'auteur et l'adresse web d'origine).
      }
      \vspace #.5
      \line {
        Gravure réalisée au moyen du logiciel libre
        \with-url #"http://www.LilyPond.org"
        \concat {\bold "GNU LilyPond" ,}
        \concat { "version " $(lilypond-version) "." }
      }
    }
  }
}
\pageBreak

MarieSopranoText = \lyricmode {
  \set ignoreMelismata = ##t

  Vous y dan -- siez pe -- ti -- te fi -- lle
  Y dan -- se -- \dash rez  -- vous mè -- \dash re -- grand
  C’est la ma -- clo -- tte qui sau -- ti -- lle
  Tou -- tes les clo -- ches so -- nne -- ront
  Quand donc re -- vien -- \dash drez -- vous Ma -- rie

  Des ma -- sques sont si -- len -- ci -- eux
  Et la mu -- sique est si loin -- taine
  Qu’elle sem -- ble ve -- nir des cieux
  Oui je veux vous ai -- mer mais vous ai -- mer à peine
  Et mon mal est dé -- li -- ci -- eux

  Les bre -- bis s’en vont dans la neige
  Flo -- cons de laine et ceux d’a -- rgent
  Des sol -- dats pa -- ssent et que n’ai_-_je
  Un cœur à moi ce cœur chan -- geant
  Chan -- geant et puis en -- cor que sais_-_je

  Sais_-_je où s’en i -- ront tes che -- veux
  Cré -- pus co -- mme mer qui mou -- to -- nne
  Sais_-_je où s’en i -- ront tes che -- veux
  Et tes mains feu -- illes de l’au -- tomne
  Que jon -- chent au -- ssi nos a -- veux


  Je pa -- ssais au bord de la Seine
  Un livre an -- ci -- en sous le bras
  Le fleuve est pa -- reil à ma peine
  Il s’é -- coule et ne ta -- rit pas
  Quand donc fi -- ni -- ra la se -- maine
}

AdieuSopranoTexte = \lyricmode {
  \set ignoreMelismata = ##t

  J’ai cue -- illi ce brin de bruy -- ère
  L’au -- tomne est mo -- rte sou -- \dash viens -- t’en
  Nous ne nous ve -- rrons plus sur terre
  O -- deur du temps brin de bruy -- ère
  Et sou -- \dash viens -- toi que je t’a -- ttends
}

MirabeauSopranoTexte = \lyricmode {
  \set ignoreMelismata = ##t

  Sous le pont Mi -- ra -- beau cou -- le la Seine
                  Et nos a -- mours
           \dash Faut -- il qu’il m’en sou -- vienne
  La joie ve -- nait tou -- jours a -- près la peine

          Vie -- nne la nuit so -- nne l’heure
          Les jours s’en vont je de -- meure

  Les mains dans les mains re -- stons face à face
                 Tan -- dis que sous
          Le pont de nos bras passe
  Des é -- ter -- nels re -- gards l’on -- de si lasse

          Vie -- nne la nuit so -- nne l’heure
          Les jours s’en vont je de -- meure


  L’a -- mour s’en va co -- mme cette eau cou -- rante
                      L’a -- mour s’en va
            Co -- mme la vie est lente
  Et co -- mme l’E -- spé -- rance est vi -- o -- lente

            Vie -- nne la nuit so -- nne l’heure
            Les jours s’en vont je de -- meure

  Pa -- ssent les jours et pa -- ssent les se -- maines
                      Ni temps pa -- ssé
            Ni les a -- mours re -- viennent
  Sous le pont Mi -- ra -- beau cou -- le la Seine

            Vie -- nne la nuit so -- nne l’heure
            Les jours s’en vont je de -- meure
}

ColchiquesSopranoTexte = \lyricmode {
  \set ignoreMelismata = ##t

  Le pré est vé -- né -- neux __ _ mais jo -- li en au -- tomne
  Les va -- _ ches y pai -- ssant
  Len -- te -- ment s’em -- poi -- sonnent __ _
  Le col -- chi -- que __ _ cou -- leur de cerne et de li -- las
  Y fleu -- rit tes yeux __ _ sont co -- mme ce -- tte \dash fleur -- _ là
  Vio -- lâ -- tres co -- mme leur ce -- rne et co -- mme cet au -- tomne
  Et ma vie pour tes yeux len -- te -- ment s’em -- poi -- sonne

  Les en -- fants de l’é -- cole vie -- nnent a -- vec fra -- cas
  Vê -- tus de ho -- que -- tons et jou -- ant de l’har -- mo -- ni -- ca
  Ils cue -- illent les col -- chi -- ques qui sont co -- mme des mères
  Filles de leurs filles et sont cou -- leur de tes pau -- pières

  Qui ba -- ttent co -- mme les fleurs ba -- ttent au vent dé -- ment

  Le ga -- rdien du trou -- peau chan -- te tout dou -- ce -- ment
  Tan -- dis que len -- tes et meu -- glant les va -- ches a -- ban -- donnent
  Pour tou -- jours ce grand pré mal fleu -- ri par l’au -- tomne
}

MaiSopranoTexte = \lyricmode {
  \set ignoreMelismata = ##t

  Le mai le jo -- li mai en ba -- rque sur le Rhin
  Des da -- mes re -- gar -- daient du haut de la mon -- tagne
  Vous ê -- tes si jo -- lies mais la ba -- rque s’é -- loi -- gne
  Qui donc a fait pleu -- rer les sau -- les ri -- ve -- rains

  Or des ver -- gers fleu -- ris se fi -- geaient en a -- rrière
  Les pé -- ta -- les tom -- bés des ce -- ri -- si -- ers de mai
  Sont les on -- gles de ce -- lle que j’ai tant ai -- mée
  Les pé -- ta -- les flé -- tris sont co -- mme ses pau -- piè -- res

  Sur le che -- min du bord du fleu -- ve len -- te -- ment
  Un ours un singe un chien me -- nés par des tzi -- ganes
  Sui -- vaient une rou -- lo -- tte traî -- née par un âne
  Tan -- dis que s’é -- loi -- gnait dans les vi -- gnes rhé -- nanes
  Sur un fi -- fre loin -- tain un air de ré -- gi -- ment

  Le mai le jo -- li mai a pa -- ré les ru -- ines
  De lierre de vi -- gne vierge et de ro -- si -- ers
  Le vent du Rhin se -- coue sur le bord les o -- siers
  Et les ro -- seaux ja -- seurs et les fleurs nues des vignes
}

ClotildeSopranoTexte = \lyricmode {
  \set ignoreMelismata = ##t

  L’a -- né -- mone et l’an -- co -- lie
  Ont pou -- ssé dans le ja -- rdin
  Où dort la mé -- lan -- co -- lie
  En -- tre l’a -- mour et le dé -- dain

  Il y vient au -- ssi nos ombres
  Que la nuit di -- ssi -- pe -- ra
  Le so -- leil qui les rend sombres
  Avec e -- lles di -- spa -- raî -- tra

  Les dé -- i -- tés des eaux vives
  Lai -- ssent cou -- ler leurs che -- veux
  Passe il faut que tu pou -- rsuives
  Ce -- tte be -- lle om -- bre que tu veux
}

AutomneSopranoTexte = \lyricmode {
  \set ignoreMelismata = ##t

  Dans le brou -- illard s’en vont un pa -- y -- san ca -- gneux
  Et son bœuf len -- te -- ment dans le brou -- illard d’au -- tomne
  Qui ca -- che les ha -- meaux pau -- vres et ver -- go -- gneux

  Et s’en a -- llant \dash là -- bas le pa -- y -- san chan -- tonne
  Une chan -- son d’a -- mour et d’in -- fi -- dé -- li -- té
  Qui pa -- rle d’une bague et d’un cœur que l’on brise

  Oh_! l’au -- to -- mne l’au -- tomne a fait mou -- rir l’é -- té
  Dans le brou -- illard s’en vont deux si -- lhou -- e -- ttes grises
}

ChantreSopranoTexte = { }

SigneSopranoTexte = { }

SaltimbanquesSopranoTexte = { }

VentSopranoTexte = { }

NuitSopranoTexte = { }

LoreleySopranoTexte = \lyricmode {
  \set ignoreMelismata = ##t

       Ich weiß nicht, was soll_es be -- deu -- ten,
  Daß ich so trau -- rig bin;
  Ein Mäh -- rchen aus al -- ten Zei -- ten,
  Das kommt mir nicht aus dem Sinn.

       Die Luft ist kühl und es du -- nkelt,
  Und ru -- hig fließt der Rhein;
  Der Gi -- pfel des Be -- rges fu -- nkelt
  Im A -- bend -- so -- nnen -- schein.

       Die schö -- nste Ju -- ngfrau si -- tzet
  Dort o -- ben wu -- nder -- bar
  Ihr gold’ -- nes Ge -- schmei -- de bli -- tzet,
  Sie kämmt ihr gold’ -- nes Haar.

       Sie kämmt es mit gold’ -- nem Ka -- mme,
  Und singt ein Lied da -- bei;
  Das hat ei -- ne wu -- nder -- sa -- me,
  Ge -- wa -- lti -- ge Me -- lo -- dei.

       Den Schi -- ffer im klei -- nen Schi -- ffe
  Er -- greift es mit wi -- ldem Weh;
  Er schaut nicht die Fe -- lsen -- ri -- ffe,
  Er schaut nur hi -- nauf in die Höh’.

       Ich glau -- be, die We -- llen ver -- schli -- ngen
  Am E -- nde Schi -- ffer und Kahn;
  Und das hat mit ih -- rem Si -- ngen
  Die Lo -- \dash re -- Ley ge -- than.
}
