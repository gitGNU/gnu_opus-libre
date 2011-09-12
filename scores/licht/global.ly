%-- In einem unbestimmten Licht -- global.ly ----------------------%
% (c) 2001 - 2011 Valentin Villenave <valentin@villenave.net>

FluteSopranoInstr = "Flûte soprano"
FluteAltoInstr = "Flûte alto"
FluteTenorInstr = "Flûte ténor"
FluteBasseInstr = "Flûte basse"
PianoInstr = "Piano"
FluteSopranoShortInstr = "S. "
FluteAltoShortInstr = "A. "
FluteTenorShortInstr = "T. "
FluteBasseShortInstr = "B. "

\header {
  title = \markup {
    \center-column {
      \italic "In einem unbestimmten Licht"
      "∽ Nocturne ∼"
      \vspace #0
    }
  }
  subtitle = "pour quatre flûtes à bec et piano"
  composer = "Valentin Villenave"
  date = "hiver 2001"
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
        Copyright & copyleft © Valentin Villenave, 2001-2011.
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
  \tempo "Lent et lunaire" 4 = 52
  \time 4/4
  \partial 4 s4
  s1*3
  \time 2/4 s2
  \time 4/4 s1*8
  \time 2/4 s2
      \equiv "4. = 4"
  \time 6/8 s2.
  \time 2/8 s4
      \equiv "4 = 4."
  \time 15/16 s1*15/16
  \time 4/4 s1
  \time 2/4 s2
  \time 3/4 s2.*2
      \equiv "8 = 8"
  \time 5/8 s2*5/4*2
  \time 4/4 s1*3
  \time 7/4 s1*7/4*3
  \time 4/4 s1*5
  \time 7/4 s1*7/4*4 \bar "||"

  \time 3/4 s2.*0\startText "stringendo"
  s2.*3
  \time 2/4 s2
  \time 3/4 s2.
  \tempo "Piu mosso" 4 = 116
  s2.\stopText
  s2.*5-"(quasi improvisato)"
  \time 2/4 s2
  \time 3/4 s2.*4
  \time 2/4 s2
  \time 3/4 s2.*3
  \time 2/4 s2*0\startText "poco string."
  s2*5
  \time 3/4 s2.
  \time 2/4 s2*2
  s2\stopText
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 s1
  \time 5/4 s1*5/4*2
      \equiv "8 = 8"
  \time 3/8 s4.

  \time 3/4
  \tempo "Tempo I" 4 = 56
  s2.
  \time 2/4 s2*4
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 s1*2 \bar "||"

  \tempo "Lent et blanc" 2 = 30
  s1*27
  s1*0\startText "rit."
  s1*2
  \time 3/4 s2.
  \time 4/4 s1
  s1\stopText \bar "||"

  \tempo "Tempo I" 4 = 56
  s1*3
  \time 3/4 s2.
  s2.*0\startText "stringendo"
  s2.*4
  \tempo \markup \medium \italic "a tempo"
  s2.\stopText
  \time 4/4 s1*3
  s1*0\startText "poco string."
  s1*2
  s1\stopText
  s1 \bar "||"

  \tempo "Lent et statique" 4 = 48
  s1
  \time 7/4 s1*7/4*2 \bar "||"
  \time 3/4 s2.
  \time 5/4 s1*5/4
  \time 3/4 s2.
  \time 5/4 s1*5/4*2

  \time 3/4
  \tempo "Lento e simplice" 4 = 56
  s2.
  \time 4/4 s1*3
  \time 3/4 s2.*3
  \time 4/4 s1
  \time 3/4 s2.*3
  \time 2/4 s2
  \time 3/4 s2.*2
  \time 4/4 s1*2
  \time 2/4 s2
  \time 4/4 s1*4
  \tempo "Au mouvement, surtout sans lenteur"
  s1*4
  \tempo \markup \medium \italic "en animant peu à peu..."
  s1*4
  \time 3/4 s2.*4
  \tempo \markup \medium \italic "toujours en animant..."
  s2.*4
  \time 2/4
  \tempo \markup {Très calme \medium \italic "(ralentir au besoin)"}
  s2*2
      \equiv "4. = 4"
  \time 6/8 s2.
      \equiv "8 = 8"
  \time 4/8 s2*3
  \time 3/4
  \tempo "Tempo I"
  s2.*3 \bar "||"
  \time 7/4
  \tempo "Più mosso" 4 = 132
  s1*7/4
  \time 5/4 s1*5/4*2
      \equiv "8 = 8"
  \time 3/8 s4.
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2*2
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.*2
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2*2
  \time 3/4 s2.
  \time 2/4 s2
      \equiv "8 = 8"
  \time 3/8 s4.
  \time 3/4 s2.
  \time 2/4 s2*2
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 s1
  \time 5/4 s1*5/4*5
  \time 2/4 s2
      \equiv "8 = 8"
  \time 5/8 s2*5/4
  \time 3/4 s2.*2
  \time 5/4 s1*5/4*2
  \time 3/4 s2.
  \time 5/4 s1*5/4*4
  s1*0\startText "ral. e dim."
  s1*5/4*2
  s1*5/4\stopText \bar "||"

  \time 3/4
  \tempo "Lent et paisible" 4 = 52
  s2.*3
  \time 4/4 s1
  \time 3/4 s2.*2
  \time 4/4 s1*5
  \time 2/4 s2*2
  \time 3/4 s2.
  \time 4/4 s1*0\startText "rit."
  s1
  s1\stopText
  \tempo \markup \medium \italic "au mouvement"
  s1
  \time 5/4 s1*5/4
  \tempo \markup \medium \italic "en pressant très légèrement"
  s1*5/4 \bar "||"

  \time 4/4
  \tempo \markup {Più lento \medium \italic "(très calme)"}
  s1*11
  \time 6/4 s1.*2
  \time 4/4 s1*3
  \time 6/4 s1.*3
  \time 3/4 s2.
  \time 4/4 s1*6
  \tempo \markup \medium \italic "très clair"
  s1*5 \bar "|."
}
