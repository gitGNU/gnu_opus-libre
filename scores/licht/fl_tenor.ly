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
  lab'2.
}
