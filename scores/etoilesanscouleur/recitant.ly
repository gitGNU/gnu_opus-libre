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
  do16 do do do~ \t {do8 do do} \t {r do do} |
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


}
