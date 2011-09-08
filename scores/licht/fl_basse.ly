%-- In einem unbestimmten Licht -- fl_basse.ly --------------------%
% (c) 2001 - 2011 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

FluteBasse =
\relative do' {
  \clef "F^8"
  \partial 4 r4 |
  R1*3 R2 R1*7
  sol1~ sol2~ sol2.~ sol8 r |
  \set subdivideBeams = ##f
  sol'16[ sol, fad si] mi4 fa8[ lab,]~ lab8. |
  \set subdivideBeams = ##t
  sol2~ sol8 r re'4 | sol2 re'2~ re8 r | sol2. |
  sol,,4. sol8 do re sol do re fa |
  sol2 r4 sol,, |
  lab'2.\fermata r4 |
  R1 R1*7/4*3 R1*5 R1*7/4
  re1\fermata r2 r4 |
  R1*7/4 fad,1~ fad4 do2 |

  %%% stringendo %%%
  sol2. -"ten."~ sol~ sol~ sol4 r |
  R2.*7 R2 R2.*3
  r4 \tt { fad'8 fad fad fad fa} |
  r8 dod16 dod dod dod re8 |
  R2.*2
  r8 mi? si'? do r4 |
  r r8 mi,16 mi mi mi red8 r4 |
  \tupletDown \t {r4 si' \tupletUp \t {re,4 sol do} mi, sib} \tupletNeutral
  R2 r4 sold'4. mi8 |
  R2
  r8 mi4. |
  r8 sol, si fad' |
  la r \t {fa mi re} mib4 |
  fa?2~ fa8 fad~ fad2 |
  R2
  sol,2\fermata r4 |
  R1 R1*5/4*2 r8 fa'4 |

  %%% Tempo primo %%%
  do'2. \t {do,8 sol' r} \t {r4 sol8} |
  \t {do, fad sol} \t {r do, fa,} |
  do'8. sol'16 do,8. sol'16 |
  dod,8 sol'16 re~ re sol mib8 |
  sol16 mi8 sol16 \tt {fa8 fad sol fa si} |
  mi4 r | r r8 la, sol,4~ sol1 R1

  %%% lent et blanc %%%
  R1*10 r4 fad'2 mid4 |
  r do2 sol4 |
  r sold2 la4 |
  r red2 mi4 |
  r si2 lad4 |
  r re2 dod4 |
  r fad2. |
  r4 do?2. |
  r4 mi2. |
  r4 sib2. |
  r4 re2. |
  r4 la2. |
  r4 lab2. |
  r4 sol' si2 |
  r4 sol sib2 |
  r4 fad la2 |
  r4 sol, lab'2 |
  sol,4 lab'2 sol,4 |
  lab'2 sol,4 lab'~ |
  lab sol, lab'~ lab sol,2. lab'1

  %%% Tempo primo %%%
  
}


