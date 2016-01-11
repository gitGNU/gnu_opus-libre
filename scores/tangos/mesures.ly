%-- 7 Tangos -- mesures.ly ----------------------------------------%
% 2015 Valentin Villenave <valentin@villenave.net>

\header {
  title = "Siete tangos"
  subtitle = "para contrabajo y piano"
  composer = "Valentin Villenave"
  % dedication = "À Denis Germain"
  date = "29 de marzo – 31 de diciembre 2015"
}

SiTitre = "Tangosi"
LaTitre = "Tangola"
SolTitre= "Tangosol"
FaTitre = "Tangofa"
MiTitre = "Tangomi"
ReTitre = "Tangore"
DoTitre = "Tangodo"

#(set-global-staff-size 16)


\paper {
  first-page-number = #-1
}


\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {"" \italic "À Denis Germain."}
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2015.
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
        \concat { ( \with-url #"http://artlibre.org"
        \typewriter http://artlibre.org ).}
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
