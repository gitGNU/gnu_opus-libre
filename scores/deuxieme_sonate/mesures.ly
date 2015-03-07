%-- Piano Sonata -- mesures.ly -------------------------------------%
% (c) 2009-2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"


UnTitre = "I."
DeuxTitre = "II."
TroisTitre = "III."

\header {
  title = "Deuxième sonate"
  subtitle = "pour piano seul"
  composer = "Valentin Villenave"
  date = "été 2014 — printemps 2015"
}

\paper {
  first-page-number = #-1
  % page-breaking = #ly:page-turn-breaking
}

\layout {
  \context {
    \Staff
    \consists "Arpeggio_engraver"
  }
  \context {
    \Voice
    \remove "Arpeggio_engraver"
  }
}

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2014-2015.
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
        sans contrevenir au droit d'auteur, à  condition de respecter les
        termes de la licence (notamment en veillant à  mentionner le nom
        de l’auteur et l’adresse web d'origine).
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

DeuxMesures = {
  \tempo "Adagietto"
  \repeat unfold 7 {
    \time 7/8 s1*7/8*6
    \time 4/4 s1
  }
  \time 7/8 s1*7/8
  \bar "|."
}
