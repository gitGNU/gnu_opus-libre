%-- Étoile sans couleur -- recitant.ly ----------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

RecitantInstrument = \markup \center-column {"Récitant" "(non-amplifié)"}

Recitant = \relative do' {
  \partial 16 do16
  do do do do do do do
  do do do do \times 3/2 {do do} |
  do8 do r8. do4 r8. |
  r8 do r do r do R2.-\fermataMarkup

  %%% 1 %%%
  R2.*3
  r4 r8 do do16 do do do |
  \t {r8 do do} r do r do16 do |
  do4 r2 |
  r8 do16 do \t {r8 do do} \tt {do16 do do do do} |
  \t {do8 do r} \t {r do do} do4 |
  r \t {do8 do do} do do |
  r4 do r |
  \t {r8 do do} \t {do do do} \t {do4 do8} |
  do4 r8 do16 do r4 |
  do r2 |
  \t {r8 do do16 do} do do do8 \t {r do do16 do} |
  do do do do do4 r |
  r8 do do do16 do do do r8 |
  r4 \t {do do8} r do |
  do4 r8 do do do16 do |
  do4 r8 do do16 do do do |
  \t {r8 do do} do16 do do do do do do do |
  do do do do \t {r8 do do} \t {do do do} |
  \t {do4 do8} r do16 do r4 |

  %%% 2 %%%
  R2.
  r4 do r8 do do do16 r do8 do16 r do8 do |
  do4 r r16 do do do |
  do8 do16 do \t {r4 do8} \t {do do do} |
  do4 r do |
  do8 do r do do do |
  do do \t {do do do} \t {do do do} |
  r do do4 r16 do do do |
  do8. do16 do do do do do8. do16 |
  \t {do8 do do} r do16 do \t {do8 do do} |
  \t {do do do} do4 r8 do |
  \t {do do do~} \t {do do do} \t {r do do} |
  \t {do do do} do4 r |
  r8 do \t {do4 do8~} do16 do do do |
  do do do do do4 r8 do |
  do do do4 r8 do |
  do16 do32 do do8 r2 |
  do16 do r8 r4 do16 do r8 |

  %%% 3 %%%
  R2.*5
  r8 do16 do \t {do8 do do} do do |
  do16 do do do do do do8 r4 |
  r16 do32 do do do do16 r do8 do16 r32 do do8. |
  r4 r16 do do do r do8 do32 do |
  \t {do8 do do} \t {r do do} r do |
  do16 do8 do32 do \tt {do16 do do do do} do4 |
  r8 do do do16 do do do r8 |
  \t {r8 do do} \t {do do do} do \t {do16 do do~} |
  \t {do do do} do16. do32 do4 r8 do |
  do do \t {r do do} do4 |
  do8. do16 \t {do4 do16 do} \tt {do do do do do} |
  r do do do do4 \t {r8 do do} |
  do4 \t {r8 do do} do4 |
  r do do16 do8. |

  %%% 4 %%%
  r4 r8 do~ do16 do do do do4 r8 do~ do16 do do8 |
  do4 do16 do do do~ do8 do do16 do do8~ do16 do do do do8 do16 do |
  r4 do do8 do~ \t {do8 do do} \t {do do do} do4 |
  r8 do do do do4 do8 do8~ do do16 do do8 do16 do~ |
  do do do8 r do do4 do8 do~ do do do4 |
  \t {r8 do do} do4 r16 do do do~ \t {do8 do do~} \t {do do do} do4 |
  \t {r8 do do} \t {do do do} \t {do do do} \t {do do do} do4 r8 do |
  r do16 do do4 r8 do r16 do do do do do r do~ do4 |
  r8 do4 do16 do r8 do~ \t {do do do} r2 |

  %%% 5 %%%
  r1 r4 do |
  do8 do do4 r8 do do4 r do8 do |
  do4 r16 do do do r8 do do4 r8 do4. |
  r8 do16 do do8 do do16 do8 do16 r8 do do4 do8 do |
  r16 do do do do do do8 r16 do do do~ do do do8~ do16 do do do~ do4 |
  r4 do8 do do do do do do do do do |
  do do do do r do do16 r r8 do do do4 |
  r \t {do do8} r4 do16 do do do do8 do16 do do8 do16 do |
  r do do8 \t {r do do} do16 do8 do16 do8 do r16 do do do do4 |
  r do8 do r do do do16 r do4 do8 do |
  do4 r8 do r do \t {do4 do8} r16 do8. r8 do |

  %%% 6 %%%
  R1.
  r2 do8 do4. r8 do do do |
  do2 r1 |
  \t {r4 do do} \t {do do do} do2 |
  r4 do r8 do4 do8 do do do4 |
  r2 r4 r8 do do4 r |
  r4 do do8 do16 do do8. do16 r8 do r4 |
  \t {do8 do do~} do do \t {do4 do8} r do do4 \t {do8 do do} |
  r2 r4 do r8 do4 do8 |
  do do do4 r r8 do r4 do |
  \t {r8 do do} do4 r2 do16 do8 do16 do8 do |
  do16 do8 do16 \t {do8 do4} r16 do do do do4 r8 do do do |
  do4 do8 do~ do do do4~ do16 do do do do8 do16 do |
  r8 do do16 do do do do8 do16 do do do do8 r do do16 do8. |

  %%% 7 %%%
  R2.
  r4 do do8 do |
  r4 do8 do do do |
  do do do do \t {do do do} |
  R2.
  do4 r8 do do do |
  do4 r8 do r4 |
  r do8 do do do |
  do4 do8 do do4 |
  r16 do8.~ do16 do do8 do do |
  r4 do2 |
  do4 do16 r do8 do4 |
  r8 do do4 r |
  do do8 do do do |
  do do4 do16 do do4 |
  r8 do do do do4 |
  r2 do8 do |
  do4 r2 |
  r4 do8 do do do |
  r4 r8 do do4 |
  R2.
  r4 \t {do do do} |
  r4 r8 do4 do16 r |
  r2 do4~ |
  do8 do \t {do4 do do} |
  do4 r2 |
  R2.*3
  r4 do2 |
  do8 do4. r4 |
  r4 r8 do4. |
  \t {do4 do2} do8 do |
  do4 r2 |
  R2.*2
  r4 do do |
  do do2 |
  do4. do |
  do do |
  do4 r2 |
  R2.*2
  do4 r2 |
  R2.*2
  do4 r2 |
  R2.*2

  %%% 8 %%%
  R2.
  r4 r8 do16 do~ \t {do8 do do} |
  do4 do8 do do4 |
  \t {r8 do do} do4 r |
  do8 do do4 r8 do |
  \t {do do do} \t {do do do} do4 |
  r do16 do do r \t {r8 do do} |
  do do \t {do do4} r |
  r8 do16 do do4 \t {do8 do do} |
  R2.
  r4 r8 do do16 do do do |
  \t {r8 do do} r do r do16 do |
  do4 r2 |
  r16 do do do do8 do16 do \t {do8 do do} |
  r4 do \t {do8 do4} |
  \t {r do8} r do r4 |
  r r8 do~ \t {do do do} |
  \t {r4 do8} r do \t {do do do} |
  r4 r8 do r4 |
  R2.
  r4 r8 do \t {r do do} |
  \t {r do do} do4 r |
  R2.
  do4 do8 do do4 |
  r r8 do do do |
  do do do4 r |
  r r8 do do4 |
  \t {do8 do4} r2 |
  R2.*3

  %%% 9 %%%
  r8 do do do \t {do do do} |
  \t {do4 do16 r} do8 do \t {do do do} |
  do4 r8 do16 do \t {do8 do do16 do} |
  do8. do16 \t {do8. do16 do8} r4 |
  R2.
  r16 do do do do do do8 r4 |
  r8 do16 do do8 do do16 do do do |
  do8 do16 do r2 |
  r4 r8 do32 do16. r4 |
  r16 do32 do do8 r4 do16 do8. |
  r4 r16 do32 do r8 r4 |
  r2 do8 do |
  do4 \t {r8 do do} do do |
  do16 do8. \t {r8 do do16 do} \t {do8 do8. do16} |
  do do do do do4 \t {do8 do do} |
  r do \t {do do do} \t {do do r} |
  R2.
  r8 do16 do \t {do8 do do} do8 do16 do |
  do8 do16 r r2 |
  do4 r2 \stopStaff
  % This causes a progerror but the output
  % is just sooo outrageously gorgeous.
  \hideNotes s4 do do
}
