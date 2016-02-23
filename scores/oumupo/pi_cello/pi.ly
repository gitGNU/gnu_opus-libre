\include "pilypi.ly"
% toutes les 7 mesures, je rajoute un temps

Texte = \lyricmode {
    Que j’aime à faire ap -- prendre un nombre u -- tile aux sages_!
    Im -- mor -- tel Ar -- chi -- mède, ar -- tiste, in -- gé -- nieur,
    Qui de ton ju -- ge -- ment peut pri -- ser la va -- leur_?
    Pour moi, ton pro -- blème eut de pa -- reils avan -- tages.
    Ja -- dis, mys -- té -- ri -- eux, un pro -- blème blo -- quait
    Tout l’ad -- mi -- ra -- ble pro -- cé -- dé, l’œuvre gran -- diose
    Que Py -- tha -- gore dé -- cou -- vrit aux an -- ciens Grecs.
    Ô qua -- dra -- ture_! vieux tour -- ment du phi -- lo -- sophe_!
    In -- so -- luble ron -- deur, trop long -- temps vous avez
    Dé -- fié Py -- tha -- gore et ses imi -- ta -- teurs.
    Com -- ment in -- té -- grer l’es -- pa -- ce plan cir -- cu -- laire_?
    For -- mer un tri -- angle au -- quel il équi -- vau -- dra_?
    Nou -- velle in -- ven -- ti -- on_: Ar -- chi -- mède ins -- cri -- ra
    De -- dans un he -- xa -- gone_; ap -- pré -- cie -- ra son aire,
    Fon -- cti -- on du ray -- on. Pas trop ne s’y tien -- dra_:
    Dé -- dou -- ble -- ra chaque é -- lé -- ment an -- té -- ri -- eur_;
    Tou -- jours de l’or -- be cal -- cu -- lée ap -- pro -- che -- ra_;
    La -- quel -- le li -- mite don -- ne l’arc, la lon -- gueur
    De cet in -- quié -- tant cercle, en -- ne -- mi trop re -- belle_!
    Pro -- fes -- seurs, en -- sei -- gnez son pro -- blème a -- vec zèle_!
}

\markup \wordwrap {
  #(map (lambda (x)
          (char->integer x))