%-- In einem unbestimmten Licht -- global.ly ----------------------%
% (c) 2001 - 2010 Valentin Villenave <valentin@villenave.net>

skel = "piano"

\include "italiano.ly"

Mesures = {
  \tempo "Modérément lent."
  \time 2/4
  \partial 4 s4 s2*2
  \time 4/4 s1
  \time 12/8 s1.
  \time 6/8 s2.
  \time 12/8 s1.*8
  \time 14/8 s1*7/4
  \time 15/16 s1*15/16
  \time 12/8 s1.*2
  \time 3/4 s2.
  \time 5/8 s1*5/8*2
  \time 12/8 s1.*2
  \time 4/4 s1
  \time 7/4 s1*7/4*3
  \time 3/4 s2.
  \time 5/4 s1*5/4*2
  \time 4/4 s1
  \time 7/4 s1*7/4*4 \bar "||"
  \tempo "Più mosso (quasi doppio tempo)"
  \time 14/4 s1*14/4
  \time 9/4 s1*9/4
  \time 11/4 s1*11/4
  \time 9/4 s1*9/4
  \time 11/4 s1*11/4
  \time 3/4 s2.
  \time 4/4 s1*2
  \time 9/4 s1*9/4
  \time 5/4 s1*5/4
  \time 7/4 s1*7/4
  \time 3/4 s2.
  \time 4/4 s1
  \time 5/4 s1*5/4
  \time 13/8 s1*13/8
  \tempo "Tempo primo"
  \time 3/4 s2.
  \time 2/4 s2*2
  \time 1/8 s8
  \time 2/4 s2
  \time 5/4 s1*5/4
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 s1*2
  \tempo "A tempo"
  \time 3/4 s2.
  \time 2/2 s1*28
  \time 3/4 s2.
  \time 2/2 s1*2
  \time 4/4 s1*3
  \time 3/4 s2.*6
  \time 2/2 s1*6 \bar "||"
  s1*3
  \time 7/4 s1*7/4
  \time 5/4 s1*5/4*2 \bar "||"
  s1*5/4*5
  \time 3/4 s2.
  \time 4/4 s1*3
  \time 6/4 s1.
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.*3
  \time 2/4 s2
  \time 3/4 s2.*2
  \time 4/4 s1
  \time 3/2 s1.
  \time 5/4 s1*5/4
  \time 3/4 s2.
  \time 4/2 s1*6
  \time 2/2 s1*2
  \time 5/4 s1*5/4
  \time 4/4 s1
  \time 7/4 s1*7/4
  \tempo "Più mosso"
  s1*7/4
  \time 5/4 s1*5/4
  \time 13/8 s1*13/8
  \time 5/4 s1*5/4
  \time 4/4 s1
  \time 5/4 s1*5/4
  \time 3/4 s2.
  \time 7/8 s1*7/8
  \time 5/4 s1*5/4*3
  \time 4/4 s1
  \time 5/4 s1*5/4*3
  \time 3/4 s2.
  \time 5/4 s1*5/4
  \time 2/4 s2
  \time 5/8 s1*5/8
  \time 3/4 s2.*2
  \time 5/4 s1*5/4*2
  \time 3/4 s2.
  \time 5/4 s1*5/4*7
  \tempo "A tempo"
  \time 3/4 s2.*3
  \time 4/4 s1
  \time 6/4 s1.
  \time 12/8 s1.*5
  \time 2/4 s2*2
  \time 3/4 s2.
  \time 4/4 s1*2
  \time 12/8 s1.
  \time 5/4 s1*5/4*2
  \time 6/4 s1.*5
  \time 12/4 s1.*4
  \time 9/4 s1*9/4*4
  \time 6/4 s1.*2
  \time 9/4 s1*9/4*3
  \time 3/4 s2.
  \time 2/4 s2
  \time 4/4 s1*4
  \time 2/2 s1
  \time 2/4 s2*2
  \time 5/16 s1*5/16
  \time 2/8 s4
  \time 3/8 s4.
  \once \override TimeSignature #'stencil = ##f
  \time 4/4 s1 \bar "|."
}