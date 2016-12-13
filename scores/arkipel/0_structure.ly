%-- Arkipel -- 0_structure.ly -------------------------------------%
% (c) 2016 Valentin Villenave <valentin@villenave.net>

%#(set-global-staff-size 22.5)
#(set-global-staff-size 16.5)

#(set-default-paper-size "a4" 'landscape)

\header {
  title = "Arkipel"
  subtitle = "pour quatre contrebasses"
  date = "(automne 2016.)"
  composer = "Valentin Villenave"
}

CsInstr  = "1"
CssInstr = "2"
CbInstr  = "3"
CbbInstr = "4"

partieITitre = "Contrebasse en ré — 1"
partieIITitre = "Contrebasse en ré — 2"
partieIIITitre = "Contrebasse en ut — 3"
partieIIIITitre = "Contrebasse en ut — 4"

\paper { first-page-number = #-1 }

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2016.
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

Mesures = {
  \tempo "Largo" 4 = 100
  \time 3/4
  s2.*9
  \mark \default
  s2.*9
  s2.*6 s2.*4
  \mark \default
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.*2
  \time 2/4 s2
  \time 3/4 s2.*6
  \time 2/4 s2
  \mark \default
  \time 3/4 s2.
  s2.*4^"poco animando..."
  \time 2/4 s2*4
  \time 3/4 s2.
  \time 2/4 s2*5
  \time 3/4 s2.
  \mark \default
  s2.*3
  \time 2/4 s2
  \time 3/4 s2.*3
  \time 2/4 s2*3
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2*2
  \time 3/4 s2.*5
  \mark \default
  \tempo "Tempo I"
  s2.*2
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2*2
  \time 3/4 s2.*2
  \time 2/4 s2*2
  \time 3/4 s2.*3
  \time 2/4 s2*6
  \time 3/4 s2.*2
  \mark \default
  \time 2/4 s2*3
  \time 3/4 s2.
  \time 2/4 s2*2
  \time 3/4 s2.*2
  \time 2/4 s2*2
  \time 3/4 s2.
  \time 2/4 s2*7
  \time 3/4 s2.
  \time 4/4
  \mark \default
  s1^"poco allargando..."
  \time 3/4 s2.*2
  \time 4/4 s1*2
  \time 3/4 s2.*2
  \time 4/4 s1*2
  \time 3/4 s2.
  \time 2/4 s2
  \mark \default
  \tempo "Tempo I"
  \time 3/4 s2.*27
  \time 2/4 s2*5
  \time 3/4 s2.
  \mark \default
  \tempo "Quasi l’istesso tempo"
  s2.*13
  \mark \default
  \time 4/4 s1
  \time 3/4 s2.
  \time 2/4 s2
  \time 4/4 s1
  \time 3/4 s2.*2
  \time 2/4 s2
  \mark \default
  \tempo "Largo non troppo (quasi tempo I)"
  \time 3/4 s2.*38
  \time 4/4 s1
  \mark \default
  \time 3/4 s2.*6
  \time 2/4 s2*4
  \mark \default
  \time 3/4 s2.*20
  \mark \default
  \tempo "Tempo I"
  s2.*28
  \time 4/4 s1
  \mark \default
  \time 3/4 s2.*7
  \mark \default
  \time 3/4 s2.*15
  \bar "|."
}
