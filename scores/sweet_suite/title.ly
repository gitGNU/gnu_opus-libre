%-- Iowa suite -- title.ly -----------------------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

#(ly:set-option 'use-variable-names #t)

\header {
  title = "Iowa Suite"
  subtitle = "pour clavecin seul"
  composer = "Valentin Villenave"
  date = "printemps 2014"
}

%#(set-global-staff-size 18)

\paper {
  first-page-number = #-1
}

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    ""
    \right-column \italic {
      "Pour Richard Siegel."
    }
  }
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2009-2011.
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
        \concat {
         ( \with-url #"http://artlibre.org"
         \typewriter http://artlibre.org ).
        }
        Vous pouvez la copier, la modifier et la jouer \italic librement
        sans contrevenir au droit d'auteur, à  condition de respecter les
        termes de la licence (notamment en veillant à  mentionner le nom
        de l’auteur et l’adresse web d’origine).
      }
      \vspace #.5
      \line {
        Gravure réalisée au moyen du logiciel libre
        \with-url #"http://www.LilyPond.org"
        \concat {\bold "GNU LilyPond" ,}
        \concat { $(string-append "version " (lilypond-version) ".") }
      }
    }
  }
}
\pageBreak
