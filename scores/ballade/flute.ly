%-- Ballade -- flute.ly -------------------------------------------%
% (c) 2003-2010 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Flute = \relative do' {
  \time 3/4
  \tempo \markup \indic "très libre"
  mi''16( fa) r8 r la,( \t {sib) red,( mi)} |
  lad,( si) \t {fad4( sol8)} r4
  \bar "||"

  \mark \default %%% A
  \tempo Andantino 4 = 66 %FIXME: 60 - 76
  dod4\p( re8 mi sol4)~ |
  sol8 mi'\( mib reb4 do8 |
  sib\> reb lab4( sol8)\! \) r |
  la(\p sol4 sib fad8 |
  red sol,) fad'4( \ind "poco" sol8\< mi')~ |
  mi\! \breathe sol4( fa8 sib mi, |
  \time 4/4
  \t {dod4 do sib} sol2\>) |

  \mark \default %%% B
  r2\! r8 dod,,(\mf \t {re mi sol} |
  \time 3/4
  la4)~ \t {la8( sold' fa} si,4) |
  \time 2/4
  r8 do( la' red) |
  \time 3/4
  red,4( \t {re8 dod si} sold4) |
  \time 2/4
  \t {r8 fad'( fa} mib do) \breathe |
  \time 3/4
  fad4( sol8 la do4) |
  \time 2/4
  r8 fad,,(\p \t {sol la do} |
  \time 4/4
  re2.) r4 |

  \mark \default %%% C
  \time 2/4
  dod2(\mp re4 mi sol2)~ |
  sol8( mi') mi4 |
  r8 dod(~ \t {dod fa dod} |
  sib2)( lab4) \t {r8 sib( lab)} |
  sol( fa) sib16->( lab8.) |
  \t {r8 sol( fa)} sib->( lab) |
  \time 3/4
  r8 sib16( lab \t {dod4 re mi} |
  \bar "||"

  \mark \default %%% D
  \tempo "Stesso tempo"
  \time 3/8
  \ind "dolce" sol4.)\startTrillSpan \mp \> |
  sol8\stopTrillSpan \! r4
}