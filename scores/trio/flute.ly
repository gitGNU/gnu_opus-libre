%-- Trio -- flute.ly ----------------------------------------------%
% (c) 2003-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

afterGraceFraction = #'(15 . 16)

Flute = \relative do' {
  \t {r16 \once \override Hairpin #'rotation = #'(30 1.2 -2) do^\< sol'}
  re'32 si' fa' la
  \afterGrace dod2.~\ff \< \parenthesize dod8-\dyn "sffz"
  r2 r4 dod,,~ |
  dod2 dod'4 r8. dod32 fa |
  re2. r8. dod32 fa |
  re2 fa8 \downGliss dod4.-"(gliss.)" \glissando |
  dosd8 r r8. dod32 fa |
  \t {re4 dod fa8 r16 dod32 fa} |
  \t {re4 dod fa8 r16 dod32 fa} |
  re2~
  \t {re4 fa dod~}
  \downGliss dod2\glissando
  dosd8 r r4 |
  r2 \downGliss dod,2\glissando |
  dosd4 r8. si32 fa' \downGliss dod2\glissando |
  \t {dosd4 si sol8. si16} |
  fa2..-"(ten.)" r16 fa32 si |
  sol2. r4 |
  si8 fa'4 r8 |
  si, fa'~ fa16 re' fa, la |
  \t {si,8 fa' la~} la4~ |
  la8 re fa, la16. la32 |
  sol,2.-"(ten.)" r4 | R1*5
  R2 r4 r16 si la' re |
  la'2.~ \t {la8 fa, re'} |
  la'4~ la16 la, re fa, \t {sol,8 si fa'} la4~ |
  la8 re fa, la16. la,32 |
  si2.-"ten." r4 | r2 r4 si~ |
  \t {si sold sol} | r2 r4 si~ |
  \t {si sol mi} mib r | R1*2
  r4 r8 \t {mi'16 fa fad} |
  sol2~ sol8 \t {mi16 fa fad} sol8 \t {sold16 la lad} |

  %%% Tempo giusto %%%
  si2. sib4 sol8 si,32 si' si si' |
  si4. sib8 sol4. fad16 r32 fad |
  si,4. \t {sib16 la lab} sol4. r16 sol32 sib |
  fad2. r4 |
  r4 \pitchedTrill do,\startTrillSpan re
  \pitchedTrill re\startTrillSpan mib
  \pitchedTrill mib\startTrillSpan fad
  r\stopTrillSpan
  \pitchedTrill do\startTrillSpan re
  \pitchedTrill re\startTrillSpan mib
  mib16\stopTrillSpan fad mib fad |
  \pitchedTrill mib2\startTrillSpan fad
  \pitchedTrill mi\startTrillSpan fad!
  \lightBeams \graceNotes { \slashStem \t {mi16[\stopTrillSpan fad si} \t {mi fad si]}}
  si,2 si'4 |
  lad dod la la sold si |
  sol2~ sol8 r \lightBeams \graceNotes { \t {sol,16 sol' si} \t {re fa la}} |
  dod2 do4 la | \t { r dod do} la4. sold8 |
  dod4 do la lab | mib re si lad |
  \downGliss si,2\glissando sisb( r4) |

  %%% Calme et étrange %%%
  R1*4
  r8. dod32 fa re2.~ |
  re2 dod4 lad | \t {r re dod} lad4. \acciaccatura fa'16 la,8 |
  r2 sib4 la | fad2. r8 \t {dod16 fad lad} |
  \t {re2 dod \acciaccatura fa16 lad,2} |
  si2. r8.. fa'32 | si,4~ \t {si8 fa' lab} fa4 \t {r8 si, fa'} |
  lab fa4 \acciaccatura lab8 mi8~ mi red re fa |
  si,2 fa8 fad la si | \t {re mib fa} lab la4. fa,8 sol |
  si re \t {mib16 si mib} fa8 si, sold'16 mi32 sold fa8 si, |
  sold'
}
