%-- In einem unbestimmten Licht -- fl_tenor.ly --------------------%
% (c) 2001 - 2011 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

FluteTenor =
\relative do' {
  \partial 4 r4 |
  R1*3 R2 R1*7
  re1~ re2~ re2.~ re8 r |
  fa'8[ mib16 re] mib8[ re] do4~ do16[ la8] |
  si1 do2~ do2. sol'4 r2 |
  sol,4 sol8 do re sol do, re fa fad |
  sol1 sol,2.\fermata r4 |
  R1 R1*7/4*3 R1*5 R1*7/4
  sol'1\fermata r2 r4 |
  R1*7/4 do,1~ do4 si2 |

  %%% stringendo %%%
  fad2. -"ten."~ fad~ fad~ fad4 r |
  R2.*4
  r4 \t {r4 sol8} \t {sol sol sol} |
  \t {lab lab lab} \t {lab fad fad} \t {fad fad r} |
  R2. R2
  r2 r8 sol |
  \t {r4 do, si'} mib8 r |
  R2.*2
  fad,16 fad fad fad fa8 r |
  R2.*2
  r8 mib' sib sol r4 |
  R2
  mi!4 r |
  R2*3
  r4 la4. mib8 |
  R2
  r8 fad4. | \t {fa4 mib reb} |
  r4 \t {do si' lab} |
  \graceNote fad'16 sol,2*7/8~ |
  sol8 do,~ do2 |
  R2
  re2\fermata r4 |
  R1 R1*5/4*2 r8 re' mi,16 do' |

  %%% Tempo primo %%%
  lab'2. \t {re,8 do re} \t {do re do} |
  re16 sol, re do \tt {re sol do re sol} |
  la re, sol, do, re fa do' sol' |
  si4 do,, fa sol la? la'2 |
  r4 la,8 re,4.~ re1 R1

  %%% lent et blanc %%%
  R1*7
  r2 dod' sid4 r mi2 |
  red4 r lad2 si4 r fa'2 |
  fad4 r sol2 re4 r la2 |
  sold4 r dod2 re4 r lad2 |
  si4 r mi2 red4 r la'2 |
  sold4 r mib2 re4 r sol2 |
  fad4 r reb2 do4 r si2 |
  sib4 r sol'2 fad4 r fa2~ |
  fa4 mi2 red4~ red re2 reb4~ |
  reb do2 r4 |
  do si sib2 |
  fa2. fa4~ fa1 fa4. mi~ mi4 re2. mib1\fermata

  %%% Tempo primo %%%
  
}
