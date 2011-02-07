%-- Trio -- global.ly ---------------------------------------------%
% (c) 2003-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

FluteInstr = "Flûte"
VioloncelleInstr = "Violoncelle"
PianoInstr = "Piano"

Titre = \markup \vconcat \center-column {
  \larger "Trio"
  \smaller "pour flûte, violoncelle et piano"
}

\header {
  title = "Trio"
  subtitle = "pour flûte, violoncelle et piano"
  composer = "Valentin Villenave"
  date = "mars 2003"
}

#(set-global-staff-size 18)

\paper {
  first-page-number = #-1
  ragged-last-bottom = ##f
}

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  ""
  \wordwrap {
    Cette pièce a été crée le 7 mai 2003 à l'auditorium Jean-Philippe Rameau
    du conservatoire de Saint-Maur des Fossés.  Les parties de flûte et de
    violoncelle étaient respectivement tenues par Cécile Clouet et Sophie Pécriaux,
    en compagnie de l'auteur au piano.
  }
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2003-2011.
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
  \time 4/4
  \tempo "Modéré" 4 = 72 ~ 84
  s1*3
  \bar "||"
  s1*2
  \time 2/4
  s2*7
  \time 4/4
  s1*2
  \time 2/4
  s2
  \time 4/4
  s1*2
  \time 2/4
  s2*4
  \time 4/4
  s1*6
  \time 2/4
  s2*2
  \time 4/4
  s1*2
  \time 2/4
  s2
  \time 4/4
  s1*2
  \time 2/4
  s2
  \time 4/4
  s1*4
  \time 2/4
  s2
  \time 4/4
  s1
  \bar "||"
  \time 3/4
  \tempo "Tempo giusto"
  s2.
  \time 2/4
  s2
  \time 4/4
  s1*7
  \time 2/4
  s2*3
  \time 4/4
  s1*5
  \time 5/4
  s1*5/4
  \time 4/4
  s1*2
  \bar "||"
  \tempo "Calme et étrange"
  s1*15
  \bar "||"
  \tempo "Risoluto" 4 = 88 ~ 96
  s1*12
  \time 2/4
  s2
  \bar "||"
  \time 2/4
  \tempo "Presto (doppio tempo)" 2 = 96 ~ 104
  s2*33
  \time 3/8
  \mark \markup { \note #"8" #UP = \note #"8" #UP }
  s4.
  \bar "||"
  \time 4/4
  \tempo "Plus large" 4 = 104 ~ 112
  s1*6
  \bar "||"
  \tempo "Tempo primo" 4 = 72 ~ 88
  s1*2
  \time 2/4
  s2
  \time 3/4
  s2.
  \time 4/4
  s1*15
  \bar "|."
}