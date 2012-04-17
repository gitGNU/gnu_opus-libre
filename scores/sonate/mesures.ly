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

%\pointAndClickOff

#(set-global-staff-size 17)


UnMesures = {
  %%% Variation I %%%
  \time 5/4
  \tempo Lent
  s1*5/4*21
  \bar "||"
  
  %%% Variation II %%%
  \time 7/4
  \tempo "Stesso Tempo"
  s1*7/4*15
  \bar "||"
  
  %%% Variation III %%%
  \time 3/4 s2.
  \time 4/4 s1*2
  \time 3/4 s2.*2
  \time 4/4 s1*2
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.*2
  \time 4/4 s1*2
  \time 3/4 s2.*2
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1*2
  \time 3/4 s2.*2
  \time 4/4 s1*2
  \time 3/4 s2.
  \bar "||"
  
  %%% Variation IV %%%
  \time 3/4
  \tempo "(Non allargando)"
  s2.*35
  \bar "||"
  
  %%% Variation V %%%
  \time 2/4
  \tempo "A piacere"
  s2*5
  \time 3/4
  \tempo "Tempo di minuetto"
  s2.*25
  \time 2/4
  \tempo "Tempo I"
  s2*5
  \bar "||"
  
  %%% Variation VI %%%
  \time 5/4
  \tempo "Un poco più largo"
  s1*5/4*21
  \bar "||"

  %%% Variation VII %%%
  \tempo "Tempo I"
  s1*5/4*21
  \bar "|."
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
  \tempo "Vif (avec souplesse)"
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
  \time 2/4
  \tempo "Presto possibile"
  s2*63 \bar "||"
  \tempo "Presto commodo"
  s2*2
  \time 3/4 s2.*2
  \time 2/4 s2*4
  \time 3/4 s2.*2
  \time 2/4 s2*4
  \time 3/4 s2.*2
  \time 2/4 s2*3
  \time 3/4 s2.
  \time 2/4 s2*2
  \time 3/4 s2.
  \time 2/4 s2*3
  \time 3/4 s2.*2
  \time 2/4 s2*4
  \time 3/4 s2.*2
  \time 2/4 s2*4
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2*2
  \time 3/4 s2.
  \time 2/4 s2*3
  \time 3/4 s2.*2
  \time 2/4 s2*4
  \time 3/4 s2.*2
  \time 2/4 s2*4
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2 \bar "||"
  s2*63 \bar "||"
  s2*7 \bar "|."
}
