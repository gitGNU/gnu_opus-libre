%-- Ouverture -- global.ly ----------------------------------------%
% (c) 2002-2010 Valentin Villenave <valentin@villenave.net>

Titre = "Ouverture pour deux pianos"
Date = "Décembre 2002 − Janvier 2004"
PianoIInstr = "Primo"
PianoIIInstr = "Secondo"
PianoIShortInstr = "I."
PianoIIShortInstr = "II."

\language "italiano"

%%TODO: use automatic headers.
\header {
  title=\Titre
  subtitle="sur le nom d’Anne-Marie de Lavilléon − Verdier"
  composer="Valentin Villenave"
  date=\Date
}

\paper {
  #(set-paper-size "a4" 'landscape)
  min-systems-per-page = #2
  first-page-number = #-1
}
#(set-global-staff-size 18)

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  ""
  \left-column {
    \wordwrap {
      Cette pièce a été crée le 6 février 2004 à l’auditorium
      Jean-Philippe Rameau du conservatoire de Saint-Maur des
      Fossés.
    }
    \vspace #.5
    \wordwrap {
      \bold { Cécile Hugonnard-Roche } tenait la partie de
      premier piano, en compagnie de l’auteur au second piano.
    }
  }
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2004-2010.
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
        \with-url #"http://lilypond.org"
        \concat {\bold "GNU LilyPond" ,}
        \concat { $(string-append "version " (lilypond-version) ".") }
      }
    }
  }
}

\pageBreak


Mesures = {
  \tempo "Très décidé" 4 = 92
  \time 4/4 s1*2
  \time 5/8 s1*5/8*4
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/8 s4.
  \time 9/16 s16*9*3
  \time 2/4 s2*2
  \time 3/8 s4.
  \time 4/4 s1 \bar "||"

            s1*2
  \time 2/4 s2
  \time 4/4 s1*2
  \time 2/4 s2
  \time 4/4 s1
  \time 2/4 s2
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1*2
  \time 2/4 s2*7
  \time 3/8 s4. \bar "||"

  \tempo "Plus large" 4 = 60
  \time 2/2 s1*8
  \time 3/4 s2.
  \time 2/2 s1
  \time 3/4 s2.
  \time 2/2 s1
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/8 s4.

  \time 2/2 s1
  \time 3/4 s2.
  \time 2/2 s1
  \time 3/4 s2.
  \time 2/2 s1
  \time 3/4 s2.
  \time 2/2 s1
  \time 3/4 s2.
  \time 2/4 s2 -\startText "rit."
  \time 3/8 s4 s8\stopText \bar "||"

  \tempo "A tempo" 4 = 60
  \time 3/4 s2.*17
  \time 3/8 s4.
  \time 3/4 s2.
  \time 3/8 s4.
  \time 2/4 s2
  \time 3/4 s2.*6
  \time 4/4 s1
  \time 3/4 s2.
  \time 7/16 s16*7*3
  \time 3/16 s16*3
  \time 7/16 s16*7*4
  \time 3/4 s2.*2
  \time 4/4 s1
  \time 3/4 s2.*3
  \time 3/8 s4.
  \time 2/2 s1*6
  \time 3/4 s2.*3
  \time 3/8 s4.
  \time 2/2 s1*2 \bar "||"

  \time 3/4 s2.*2
  \time 4/4 s1*7
  \time 2/4 s2*6
  \tempo 4. = 72
  \time 3/8 s4.*8
  \time 2/4 s2
  \time 3/8 s4.*2
  \time 2/4 s2 \bar "||"

  \tempo "Poco stringendo" 4 = 100 %FIXME: use markup?
  \time 7/4 s4*7*10
  %% First version:
  %\time 7/4 s4*7*2 %%%
  %% Second version:
  \time 5/4 s4*5
  \time 2/4 s2*3
  \time 3/4 s2. %%%
                \bar "||"

  \tempo "Tempo I" 4 = 92
            s2.*12
  \time 2/4 s2
  \time 4/4 s1*2
  \time 5/4 s4*5*2
  \time 5/8 s8*5*3
  \time 9/16 s16*9*3
  \time 5/16 s16*5*6
  \time 2/4 s2*8
  \time 3/4 s2.
  \time 4/4 s1*6
  \time 3/4 s2.
  \time 2/4 s2*3
  \time 3/4 s2.
  \time 4/4 s1 \bar "|."
}