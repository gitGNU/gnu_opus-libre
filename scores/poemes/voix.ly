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
  do2 r8 | r4 \grace fa16 re4. |
  \time 2/4
  la!2 |
  \time 5/8 R1*5/8
  \time 2/4 R2
  \time 5/8 R1*5/8
  \time 4/4
  r4 \t {r4 mi8~} \t {mi4 mi si'} |
  fad2 r4 mi | mi mi do do |
  si'2.\fermata r4 \bar "|."
}

DeuxSoprano = \relative {
  \tempo "Presto agitato"
  \time 2/2
  \grace sol'16 sol'2. sol4 |
  sol sol sol8 sol sol sol |
  \time 3/2
  sol2. r4 r fa |
  \time 2/2
  r8 \grace sib,16 sib'8~ sib2. |
  \time 3/2
  r4 re,~ re16 mi sold,4.~ sold8 dod4 sib8 | \break
  \time 2/2
  sol'2. r4 | r2 si,! si si |
  \time 3/2
  si2. si
  \bar "||"
  \time 5/4
  si r2 | R1*5/4
  \time 2/2
  R1*6
  r2 r8 sol4. |
  \grace lab16 sol4. sol \grace la16 sol4~ |
  \time 2/4
  sol sol |
  \time 3/4
  sib2 solb4 | r fa lab | mi'2 r4 |
  r2 mib4 | sol2 re4 | r dod mi | sol2 re4 |
  r si fa' | sib2. | r2 mi,4 | lab4. re,8 sol4 |
  \time 2/2
  \grace sol16 dod1~ |
  \t {dod4 sib do} \t {sol sib fa} |
  \time 3/2
  mi2. r4 r2 |
  \time 2/2
  R1 r4 reb~ reb16 sol mib4. |
  \t {do2 reb sol} |
  do,4.~ sib8~ \t {sib4 reb lab} |
  sib2 r r r8 sib4. | fa4 r r2 |
  r r8 sol4. | re4 r r2 | R1*2
  r2 reb \grace do16 do'1~ do~ do4 r r2\fermata
  \bar "|."
}

TroisSoprano = \relative {
  
}
