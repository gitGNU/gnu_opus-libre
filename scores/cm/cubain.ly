% Harmoniques -- cubain.ly ----------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"


CubainMarc =
\relative do' {
  \time 2/4
  \tempo "Guajira" 4 = 66 % Puis Changui et Cumbria
  \clef bass
  R2*3 r8. la16 mi'8 la,16 sol
  r8. re'16 do si sol8
  \acciaccatura mi si'4 r8 si16 la
  sold8 la16 si~ si do fa,8
  mi4 r8 si' \t {la fa mi~} mi16 sold la si
  mi,4 r
  fa8 sol16 \acciaccatura mi sold~ sold \acciaccatura re' do fa, si
  mi,4. r8
}

CubainPrune =
\relative do' {
  R2*5
  r16 la' la sol si mi, r8
  R2
  r8 si'16 la re, mi r8
  R2
  r8 si'16 la do8 r
  R2
  r8 mi,16 si' fa do' r8
}

CubainBrice =
\relative do' {
  \clef bass
  R2*5
  r16 do, do do la sol' r8
  R2
  r8 do,16 re la' sol r8
  R2
  r8 do,16 re la'8 r
  R2
  r8 re,16 sold re la' r8
}

CubainPianoMd =
\relative do' {
  \repeat unfold 6 s2*4
}

CubainPianoMg =
\relative do' {
  \clef bass
  \repeat unfold 6 {
    mi,,16 si' \md sold' <re' fa> r <re mi>8 \mg la16
    la,8\noBeam r16 \md la'32 si do16 la sol fa \mg
    \t {mi,8 si' \md <sold' re' fa>} r16 <sold re' mi>8. \mg
    la,16 la' r \md do32 red mi16 do la fa \mg
  }
}
