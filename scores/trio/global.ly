%-- Trio -- global.ly ---------------------------------------------%
% (c) 2003-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

FluteInstr = "Flûte"
VioloncelleInstr = "Violoncelle"
PianoInstr = "Piano"

\pointAndClickOff

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