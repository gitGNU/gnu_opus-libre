%-- Sardinosaures -- titres.ly ------------------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>,
% Olivier Salon et Jacques Roubaud.

\header {
  title = \SardinosauresTitre
  composer = \markup \center-column {
    "Valentin Villenave"
    "(sur des textes d’Olivier Salon et Jacques Roubaud)"
  }
  copyright = \markup {
    © et \translate #'(1.5 . 0) \scale #'(-1 . 1) ©
    V. Villenave, 2012. Licence Art Libre
  }
  date = "2012"
}

\pointAndClickOff
#(set-global-staff-size 16)

\paper {
  first-page-number = #-1
}

\layout {
  \context {
    \Score
    \override SystemStartBrace #'collapse-height = #1
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t
    \override TimeSignature #'style = #'()
    \override TextScript #'stencil =
      #(lambda (grob)
          (let ((grob-markup (ly:grob-property grob 'text)))
            (grob-interpret-markup grob (make-italic-markup grob-markup))))
    \override TextScript #'direction = #UP

    autoAccidentals = #`(Staff ,(make-accidental-rule 'same-octave 0)
                          ,(make-accidental-rule 'any-octave 0)
                          ,(make-accidental-rule 'same-octave 1)
                          ,neo-modern-accidental-rule)
    autoCautionaries = #`(Staff ,(make-accidental-rule 'same-octave 1)
                          ,(make-accidental-rule 'any-octave 1))
    extraNatural = ##f
  }
}

\pageBreak
\markup \fill-page {
  ""
  \fill-line {
  ""
  \general-align #Y #0.5 {\epsfile #X #30 #"scores/oumupo/oumupo.eps" }
  \line {
    \override #'(line-width . 45)
    \wordwrap {
      \hspace #4 Ces pièces s’inscrivent dans le cadre de
      l’Ouvroir de Musique Potentielle
      \concat { ( \with-url #"http://oumupo.org" \typewriter http://oumupo.org ),}
      dédié à l’écriture musicale sous contraintes formelles.
    }
  }
  ""
  }
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2012.
      }
      \wordwrap {
        D’après le livre \italic Sardinosaures \italic &
        \concat { \italic compagnie ,} de Jacques Roubaud
        et Olivier Salon, publié en 2008 aux éditions Les
        mille univers.
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
