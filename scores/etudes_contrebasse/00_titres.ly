%-- Études pour contrebasse -- titres.ly ---------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>



\header {
  title = "Douze études pour avoir chaud l’hiver"
  subtitle = "pour contrebasse seule"
  composer = "Valentin Villenave"
  date = "automne 2013 — hiver 2014"
}

% #(set-global-staff-size 17.6)

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {""
    \italic \right-column {
      "Avec une pensée amicale envers mes deux"
      "professeurs, Hervé Moreau et Thierry Barbé."
      "— V.V."
    }
  }
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2014.
      }
      \line {
        \with-url #"http://valentin.villenave.net"
        \typewriter http://valentin.villenave.net
      }
      \vspace #.5
      \override #'(line-width . 100)
      \justify {
        Cette partition est publiée suivant les termes de la licence
        \with-url #"http://artlibre.org/licence/lal"
        \bold { Art Libre }
        \concat { ( \with-url #"http://artlibre.org" \typewriter http://artlibre.org ).}
        Vous pouvez la copier, la modifier et la jouer \italic librement
        sans contrevenir au droit d’auteur, à  condition de respecter les
        termes de la licence (notamment en veillant à  mentionner le nom
        de l’auteur et l’adresse web d’origine).
      }
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

\pageBreak

ZeroTitre   = "Étude 0 : les bottes en caoutchouc"
UnTitre     = "Étude 1 : les moufles"
DeuxTitre   = "Étude 2 : le gilet bleu à pois verts et à rayures rouges"
TroisTitre  = "Étude 3 : l’écharpe en tricot"
QuatreTitre = "Étude 4 : le pantalon de velours"
CinqTitre   = "Étude 5 : l’anorak"
SixTitre    = "Étude 6 : le sous-pull"
SeptTitre   = "Étude 7 : les grosses lunettes"
HuitTitre   = "Étude 8 : le bonnet-lapin"
NeufTitre   = "Étude 9 : les chaussettes (trouées)"
DixTitre    = "Étude 10 : la combinaison de ski"
OnzeTitre   = "Étude 11 : ... le slip !"

% -------- Annexes --------%

SchubertTitre= "Deux phrases romantiques"
SchubertSoustitre= \markup \center-column {
  "(d’après les Sonates pour piano"
  "en La mineur de Franz Schubert)"
}

JimboShortTitre= "Jimbo’s back"
JimboTitre = \markup \center-column {
  \magnify #2.5 \bold "~ Annexe ~"
  \bold "Quelques transcriptions et paraphrases"
  \vspace #3
  \JimboShortTitre
  \vspace #.5
}
JimboSoustitre= "(d’après Claude Debussy)"

FunnyTitre= "Who says funny?"
FunnySoustitre= "(d’après un thème de jazz)"

\paper {
  first-page-number = #-1
  tocTitleMarkup = \markup \huge \bold \column {
    \null \vspace #3
    \fill-line { \null \magnify #2.5 "~ Sommaire ~" \null }
    \vspace #3
  }
  tocItemMarkup = \markup \large \fill-line {
    \tocItemWithDotsMarkup
    \vspace #1.5
  }
}

\markuplist \table-of-contents
\pageBreak
