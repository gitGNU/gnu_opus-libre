%-- 21 Études -- berceuse.ly --------------------------------------%
% 2015 Valentin Villenave <valentin@villenave.net>

\language "italiano"

BerceuseTitre = "Berceuse énurétique"

BerceuseContrebasse = \relative do' {
  \clef bass

  %% TBC
}

BerceusePianoMd = \relative do' {
  <sol do sol'>4^(\arpeggio\pp <sol do> <do sol'> <sol do>
  \repeat unfold 15 {
    <do sol'> <fa, do'> <do' sol'> <fa, do'>)
    <do' sol'>^( <sol do> <do sol'> <sol do>
  }
  <do sol'>1)
}

BerceusePianoMg = \relative do' {
  \clef bass
  \repeat unfold 16 {<do,, do'>1( re)}
}
