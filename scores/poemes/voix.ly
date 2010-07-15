%-- Trois poèmes -- voix.ly ---------------------------------------%
% (c) 2004-2010 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

UnSoprano = \relative {
  \tempo "Adagio non troppo" 4 = 52
  \time 2/4
  \partial 4 mi16 mi4*3/4 \mp |
  \t {si'4 si si} |
  \time 3/4
  si r8 si~ si16. si32 si8 |
  \time 2/4
  re8. re16~ re re do8 |
  \time 3/4
  si2 r4 |
  \time 2/4
  r8 si~ si si |
  \time 4/4
  re8. re16 do8 do fa fa mib mib |
  lab2 r8 mib4 fad8
  \bar "||"
  re2. r4 |
  \time 6/4 R1.*2
  \time 4/4 R1
  r4 si8 si sib4 re8 re16 fa |
  dod4 si!8 si \t {sib4 mib sib'} |
  re,2. r4 |
  \time 3/4 R2.
  \t {r4 fa,8~} \t {fa4 fa do'} |
  \time 4/4
  sol2 r4 fa | fa4. fa8~ fa fa4 do'8~|
  \time 3/4
  \t {do8 sol4~} sol2 |
  \time 2/4 R2
  \time 3/4
  r2 \t {do,8 do4} |
  \time 6/4
  \t {si'4 si si} si \t {si8 si4} \t {re re do} |
  \time 3/4
  si r r8 sold~ |
  \time 4/4
  sold4 si8 si la4 re ( |
  sold, ) si8 la \t {re4 do fa} |
  \time 3/4
  si,2. | R2.
  \time 2/4
  r4 \t {sib8 sib4} |
  \t {fa'4 fa lab} |
  \time 4/4
  solb4 r8 solb fa fa mib mib |
  \time 3/4
  lab4 \t {r8 fad si!~} si4~ |
  si \t {lab mib fa!} |
  \time 5/8
  do2 r8 | r4 \acciaccatura fa16 re4. |
  \time 2/4
  la2 |
  \time 5/8 R1*5/8
  \time 2/4 R2
  \time 5/8 R1*5/8
  \time 4/4
  r4 \t {r4 mi8~} \t {mi4 mi si'} |
  fad2 r4 mi | mi mi do do |
  si'2.\fermata r4 \bar "|."
}

DeuxSoprano = \relative {
  
}

TroisSoprano = \relative {
  
}
