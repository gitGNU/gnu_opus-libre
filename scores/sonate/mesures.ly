%-- Piano Sonata -- mesures.ly -------------------------------------%
% (c) 2009-2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"


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



UnMesures = {

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
  \tempo "Vif"
  \off s1.*3
  \ter s1.
  \bin s1.
  \ter s2. \bin s2.
  \off s1.
  \bin s1. \bar "||"
  s1.*3
  \ter s1.
  \bin s1.*2
  \ter s2. \bin s2.
  \off s1. \bar "||"
  s1.*3
  \ter s2. \bin s2.
  \off s1.*4 \bar "|."
}

TroisMesures = {

}
