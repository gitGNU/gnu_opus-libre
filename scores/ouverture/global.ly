%-- Ouverture -- global.ly ----------------------------------------%
% (c) 2002-2010 Valentin Villenave <valentin@villenave.net>

Titre = "Ouverture"
PianoIInstr = "Primo"
PianoIIInstr = "Secondo"
PianoIShortInstr = "I."
PianoIIShortInstr = "II."

\include "italiano.ly"

% TODO: Use global-measures context.

PianoIDynamics = {
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
  \time 2/4 s2
  \time 3/8 s4. \bar "||"

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
  \time 4/4 s1*5
  \time 2/4 s2*6
  \time 3/8 s4.*8
  \time 2/4 s2
  \time 3/8 s4.*2
  \time 2/4 s2 \bar "||"
  
  \tempo "Poco stringendo" 4 = 100 %FIXME: use markup?
  \time 7/4 s4*7*10
  \time 5/4 s4*5
  \time 2/4 s2*3
  \time 3/4 s2. \bar "||"

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