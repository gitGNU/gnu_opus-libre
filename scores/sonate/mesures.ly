%-- Piano Sonata -- mesures.ly -------------------------------------%
% (c) 2009-2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"


UnTitre = "I."
DeuxTitre = "II."
TroisTitre = "III."

\header {
  title = "Sonate"
  subtitle = "pour piano seul"
  composer = "Valentin Villenave"
  date = "printemps 2009 — printemps 2012"
}

\paper {
  page-breaking = #ly:page-turn-breaking
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

#(set-global-staff-size 17.6)

\pointAndClickOff
\pageTurn
\markup \fill-page {
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2009-2012.
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

UnMesures = {
  %%% Variation I %%%
  \time 5/4
  \tempo Lent
  s1*5/4*7 \allowPageTurn
  s1*5/4*7 \allowPageTurn
  s1*5/4*7 \allowPageTurn
  \bar "||"

  %%% Variation II %%%
  \time 7/4
  \tempo "Stesso Tempo"
  s1*7/4*2 \allowPageTurn
  s1*7/4*2 \allowPageTurn
  s1*7/4 \allowPageTurn
  s1*7/4*2 \allowPageTurn
  s1*7/4 \allowPageTurn
  s1*7/4*2 \allowPageTurn
  s1*7/4*2 \allowPageTurn
  s1*7/4*2 \allowPageTurn
  s1*7/4 \allowPageTurn
  \bar "||"

  %%% Variation III %%%
  \time 3/4 s2.
  \time 4/4 s1*2
  \time 3/4 s2. \allowPageTurn s
  \time 4/4 s1 \allowPageTurn s
  \time 3/4 s2. \allowPageTurn
  \time 4/4 s1
  \time 3/4 s2.*2
  \time 4/4 s1 \allowPageTurn s
  \time 3/4 s2. \allowPageTurn s
  \time 4/4 s1 \allowPageTurn
  \time 3/4 s2.
  \time 4/4 s1*2 \allowPageTurn
  \time 3/4 s2.*2 \allowPageTurn
  \time 4/4 s1*2
  \time 3/4 s2. \allowPageTurn
  \bar "||"

  %%% Variation IV %%%
  \time 3/4
  \tempo "(Non allargando)"
  s2.*8 \allowPageTurn
  s2.*6 \allowPageTurn
  s2.*3 \allowPageTurn
  s2.*2 \allowPageTurn
  s2.*2 \allowPageTurn
  s2.*3 \allowPageTurn
  s2.*4 \allowPageTurn
  s2.*5 \allowPageTurn
  s2.*2 \allowPageTurn
  \bar "||"

  %%% Variation V %%%
  \time 2/4
  \tempo "A piacere"
  s2*5 \allowPageTurn
  \time 3/4
  \tempo "Tempo di minuetto" % or waltz?
  % OTOH, minuetto refers to ancient music
  % so it’s sort of fitting in this context.
  s2.*10 \allowPageTurn
  s2.*10 \allowPageTurn
  s2.*5 \allowPageTurn
  \time 2/4
  \tempo "Tempo I"
  s2*5 \allowPageTurn
  \bar "||"

  %%% Variation VI %%%
  \time 5/4
  \tempo "Un poco più largo"
  s1*5/4*3 \allowPageTurn
  s1*5/4*3 \allowPageTurn
  s1*5/4*3 \allowPageTurn
  s1*5/4*3 \allowPageTurn
  s1*5/4*3 \allowPageTurn
  s1*5/4*2 \allowPageTurn
  s1*5/4 \allowPageTurn
  s1*5/4*3 \allowPageTurn
  \bar "||"

  %%% Variation VII %%%
  \tempo "Tempo I"
  s1*5/4*7 \allowPageTurn
  s1*5/4*6 \allowPageTurn
  s1*5/4*3 \allowPageTurn
  s1*5/4*5 \allowPageTurn
  \bar "|." %\pageBreak
}

ter = {
  \set Score.baseMoment = #(ly:make-moment 3 16)
  \set Score.beatStructure = #'(2 2 2 2)
}

bin = {
  \set Score.baseMoment = #(ly:make-moment 1 4)
  \set Score.beatStructure = #'(1 1 1 1 1 1)
}

off = {
  \set Score.baseMoment = #(ly:make-moment 3 2)
  \set Score.beatStructure = #'(1)
}

DeuxMesures = {
  \time 6/4
  \set beamExceptions = #'()
  \set subdivideBeams = ##t
  \tempo "Vif (avec souplesse)"
  \off s1.*3 \allowPageTurn
  \ter s1.
  \bin s1.
  \ter s2. \bin s2.
  \off s1.
  \bin s1. \allowPageTurn
  \bar "||"
  s1.*3 \allowPageTurn
  \ter s1.
  \bin s1.*2
  \ter s2. \bin s2.
  \off s1. \allowPageTurn
  \bar "||"
  s1.*3 \allowPageTurn
  \ter s2. \bin s2.
  \off s1. \allowPageTurn
  s1.*3 \allowPageTurn
  \bar "|." %\pageBreak
}

TroisMesures = {
  \time 2/4
  \tempo "Presto possibile"
  s2*21 \allowPageTurn
  s2*14 \allowPageTurn
  s2*7 \allowPageTurn
  s2*10 \allowPageTurn
  s2*11 \allowPageTurn
  \bar "||"
  \tempo "Presto commodo"
  s2*2
  \time 3/4 s2.*2
  \time 2/4 s2*4
  \time 3/4 s2.*2
  \time 2/4 s2*2 \allowPageTurn s
  \time 3/4 s2.*2
  \time 2/4 s2*3
  \time 3/4 s2.
  \time 2/4 s2 \allowPageTurn s
  \time 3/4 s2.
  \time 2/4 s2*3
  \time 3/4 s2.*2
  \time 2/4 s2*4
  \time 3/4 s2. \allowPageTurn s
  \time 2/4 s2*4
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2 \allowPageTurn s
  \time 3/4 s2.
  \time 2/4 s2*3
  \time 3/4 s2.*2
  \time 2/4 s2*4
  \time 3/4 s2.*2
  \time 2/4 s2*2 \allowPageTurn s
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2 \allowPageTurn \bar "||"
  \tempo "Tempo I"
  s2*15 \allowPageTurn
  s2*6 \allowPageTurn
  s2*7 \allowPageTurn
  s2*14 \allowPageTurn
  s2*21 \allowPageTurn
  \bar "||"
  \tempo "poco calando"
  s2*7 \bar "|."
}
