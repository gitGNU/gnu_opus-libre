%-- Divertissement -- global.ly ------------------------------------%
% (c) 2000-2011 Valentin Villenave <valentin@villenave.net>

Titre = "Divertissement en sol"
ViolonUnInstr = "Violon 1"
ViolonDeuxInstr = "Violon 2"
AltoInstr = "Alto"
VioloncelleInstr = "Violoncelle"


\header {
  title = \markup {
    \vconcat
    \center-column {
      \larger "Divertissement en sol"
    }
  }
  subtitle = "pour quatuor à cordes"
  composer = "Valentin Villenave"
  date = "mars 2000"
}

\paper {
  first-page-number = #-1
}

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2000-2011.
      }
      \line {
        \with-url #"http://valentin.villenave.net"
        \typewriter http://valentin.villenave.net
      }
      \vspace #.5
      \override #'(line-width . 100)
      \justify {
        Cette partition est publiée suivant les termes de la licence
        \with-url #"http://fr.wikipedia.org/wiki/Wikipedia:CC-BY-SA"
        \bold { Creative Commons, Paternité, Partage des
        conditions initiales à \concat {l'identique \medium . }}
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
        \concat { #(ly:export (string-append "version " (lilypond-version) ".")) }
      }
    }
  }
}
\pageBreak

Mesures = {
  \set Score.markFormatter = #format-mark-box-numbers
  \tempo "Vif"
  \time 5/4 s1*5/4
  \time 8/4 s1*2
  \time 2/4 s2
  \time 4/4 s1*8
  \mark \default
  \time 5/4 s1*5/4*19
  \mark \default s1*5/4
  \time 4/4 s1*11
  \mark \default s1*10
  \time 5/4 s1*5/4*3
  \tempo "Plus calme"
  \mark \default
  \time 4/4 s1*3
  \tempo "Mélancolique"
  s1*31
  \mark \default s1*12
  \time 11/8 s1*11/8
  \time 2/4 s2
  \time 4/4 s1*4
  \time 2/4 s2
  \time 4/4 s1*2
  \time 3/4 s2.
  \time 4/4 s1
  \mark \default s1*2
  \time 5/4 s1*5/4
  \time 2/4 s2
  \time 4/4 s1*2
  \time 5/4 s1*5/4
  \tempo "Peu à peu au Tempo I"
  \time 3/4 s2.
  \time 4/4 s1*2
  \mark \default s1*12
  \tempo "Plus vite"
  \mark \default
  \time 3/4 s2.
  \time 5/4 s1*5/4
  \time 4/4 s1
  \time 3/4 s2.*2
  \time 5/4 s1*5/4*4
  \tempo "Tempo I"
  \mark \default
  \time 4/4 s1*11
  \time 3/4 s2.
  \time 2/8 s4
  \tempo "Presto"
  \mark \default
  \time 9/8 s1*9/8
  \time 4/8 s2
  \time 6/8 s2.
  \time 1/8 s8
  \time 2/8 s4
  \time 9/8 s1*9/8
  \time 4/8 s2
  \time 6/8 s2.
  \time 1/8 s8
  \time 2/8 s4
  \time 9/8 s1*9/8
  \time 4/8 s2
  \time 6/8 s2.
  \time 1/8 s8
  \time 2/8 s4
  \time 9/8 s1*9/8
  \time 4/8 s2
  \time 6/8 s2.
  \time 1/8 s8
  \time 2/8 s4
  \time 9/8 s1*9/8
  \time 4/8 s2
  \time 6/8 s2.
  \time 1/8 s8
  \time 2/8 s4
  \time 9/8 s1*9/8
  \time 4/8 s2
  \time 6/8 s2.
  \time 1/8 s8
  \time 2/8 s4*2
  \mark \default
  \time 9/8 s1*9/8
  \time 10/8 s1*10/8
  \time 7/8 s1*7/8
  \time 6/8 s2.*2
  \time 12/8 s1.
  \time 7/8 s1*7/8
  \time 12/8 s1.*2
  \time 3/8 s4.
  \time 2/8 s4
  \time 9/8 s1*9/8
  \time 4/8 s2
  \time 9/8 s1*9/8
  \time 4/8 s2
  \time 7/8 s1*7/8
  \tempo "Tempo I"
  \mark \default
  \time 5/4 s1*5/4
  \tempo "Vite"
  \time 4/4 s1*4
  \time 1/4 s4
  \bar "|."
}