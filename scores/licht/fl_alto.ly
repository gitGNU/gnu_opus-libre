%-- In einem unbestimmten Licht -- fl_alto.ly ---------------------%
% (c) 2001 - 2011 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

FluteAlto =
\relative do' {
  \partial 4 r4 |
  R1*3 R2 R1*7
  do'1~ do2~ do2.~ do8 r |
  \set subdivideBeams = ##f
  \t {fa,16[ re' sol]} la[ sol] la[ si sold do]~
  do[ do8.] do16[ si8] |
  \set subdivideBeams = ##t
  do2 mi, sol4. r8 do2. sol'2. |
  re,4. r8 fa, sol fa' sol do re |
  sol1 | r2\fermata sol,2~ sol2. r4 |
  \graceNote sol8 sol1*7/8~ sol4 r2 |
  sol1~ sol4 r2 |
  r2 sol sol~ sol4\fermata |
  R1 r4 sol4~ sol2~ sol\glissando -"gliss." fad~ fad4 r r2\fermata |
  sol1*1/2 \hideNote sol2 \glissando -"gliss." fad2 r r r4 |
  sol,1\fermata r2 r4 |
  sol'1~ sol4 fad2 | fa1~ fa4 mi2 |

  %%% stringendo %%%
  mib2. -"ten."~ mib~ mib~ mib4 r |
  R2.
  r2 \t {r8 sol4~} sol4~ \t {sol8 fad4~} fad8 r |
  R2.*3
  fa'!16 fa fa fa r2 |
  R2 R2.
  sol,,16 sol sol sol \t {lab4 fad do''} |
  fa8 r r2 | r2 sol,4~ sol fa~ |
  fa mib2 re dod4 |
  R2.
  \t {r4 sol' fad2. fa4} |
  R2*2
  \t {fad2 fa4} |
  R2. R2
  r8 sib,4. |
  r4 r8 si16 sib | sib la sold8 r2 |
  sib2~ sib8 si~ si2
  R2
  do2\fermata r4
  R1
  R1*5/4*2 r8 fa8. sib16 |

  %%% Tempo primo %%%
  mib2. \t {r8 sol,, do} \t {sol' do, sol} |
  \t {r sol do} sol'16 do, fad, sol |
  \tt {la do re mi fa} sol la sib sol |
  do, re mib sol re do fa, sol |
  lab2~ lab8 r |
  sib'2 la,!2.~ la1 |
  r2 r4 fad'~ |

  %%% Lent et blanc %%%
  fad2 mid4 r |
  la2 sold4 r |
  red2 mi4 r |
  lad,2 si4 r |
  do2 sol4 r |
  re'2 dod4 r |
  fad2 sol4 r |
  red2 mi4 r |
  la2 sold4 r |
  re2 dod4 r |
  do'2 mib,4 r |
  la2 si?4 r |
  fad2 mid4 r |
  si'2 lad4 r |
  mi2 red4 r |
  la'2 sold4 r |
  re2 dod4 r |
  sol'2 fad4 r |
  do2 si4 r |
  fa'2 mi4 r |
  mib2 re4 r |
  mi2 red4 r |
  lab'2 sol4 r |
  la2 sold sol solb fa mi4 mib |
  re2 reb do2. do4~\downprall do1 |
  do4. si~ si4 do2. dod1\fermata

  %%% Tempo primo %%%
  
}
