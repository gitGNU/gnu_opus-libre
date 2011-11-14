%-- Étoile sans couleur -- recitant.ly ----------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Recitant = \relative do' {
  \set Staff.instrumentName = \RecitantInstr
  \set Staff.shortInstrumentName = \RecitantShortInstr
  \partial 16 do16
  do\mf^"libre" do do do do do do
  do do do do \times 3/2 {do \parenthesize do} |
  do8-- do-- r8. do4 r8. |
  r8 do\> r do r do\! R2.-\fermataMarkup

  %%% 1 %%%
  R2.*3
  r4 r8 do\p do16 do do do |
  \t {r8 do-- do--} r do r do16( do |
  do4) r2 |
  r8 do16 do \t {r8 do\< do} \tt {do16\! do do do do} |
  \t {do8-- do r} \t {r do( do} do4) |
  r \t {do8 do do} do do |
  r4 do-- r |
  \t {r8 do\mp do} \t {do do do} \t {do4 do8} |
  do4 r8 do16 do r4 |
  do r2 |
  \t {r8 do-- \parenthesize do16 do} do do do8
  \t {r do-- \parenthesize do16 \< do} |
  do do do do do4\mp r |
  r8 do do-- do16-.( do-. do-. do-.) r8 |
  r4 \t {do(-- \parenthesize do8} r do |
  do4) r8 do do do16 do |
  do4 r8 do do16 do do do |
  \t {r8 do-- do--} do16 do do do do do do do( |
  do do do) do-. \t {r8 do\dim do} \t {do-- do do} |
  \t {do4\! \parenthesize do8} r do16-.\p do-. r4 |

  %%% 2 %%%
  R2.
  r4 do--\mf ^"ample" r8 do do \parenthesize do16 r
  do8 \parenthesize do16 r do8 do |
  do4 r r16 do\p do do |
  do8-. do16 do \t {r4 do8} \t {do( do do} |
  do4) r do\mf |
  do8 do r do do do |
  do \parenthesize do
  \t {do do do} \t {do do do} |
  r do do4-- r16 do\< do do |
  do8.\! do16 do do do do do8. do16 |
  \t {do8--\> do do} r\! do16 do \t {do8 do do} |
  \t {do do do} do4 r8 do |
  \t {do do do--~} \t {do do do}
  \t {r do\> do} |
  \t {do do do} do4\! r |
  r8 do \t {do4 do8~} do16 do do do |
  do \parenthesize do do do do4 r8 do |
  do do do4 r8 do |
  do16( do32 do do8) r2 |
  do16 do r8 r4 do16-. do-. r8 |

  %%% 3 %%%
  R2.*5
  r8 do16\mp do \t {do8 do do} do do |
  do16 do do-. do-. do-. do-. do8-. r4 |
  r16 do32\< do do do do16\! r do8-- do16 r32 do\> do8.\! |
  r4 r16 do-. do-. do-.
  r do8-- \parenthesize do32 do |
  \t {do8 do do} \t {r do do} r do-. |
  do16( do8 do32 do \tt {do16 do do do do} do4) |
  r8 do do-- do16-.( do-. do-. do-.) r8 |
  \t {r8 do\mp do} \t {do do do}
  \t {do8.\< do16 do do~} |
  \t {do\! do do} do16.-> \parenthesize do32 do4-> r8 do |
  do-- \parenthesize do \t {r do do} do4-- |
  do8.-- do16 \t {do4-- do16 do}
  \tt {do( do do do do)} |
  r do\dim do do do4 \t {r8 do do} |
  do4-- \t {r8 do do} do4--\! |
  r do\pp do16-> do8. |

  %%% 4 %%%
  r4 r8 do~->\mf ^"scandé" do16 do do do do4 r8 do~-> do16 do do8 |
  do4-> do16 do do do~-> do8 do\< do16 do do8~\!
  do16 do-. do-. do-. do8-- do16-> do |
  r4 do--\mf do8-> do~ \t {do8 do( do} \t {do do do} do4) |
  r8 do\cresc do do do4-- do8-. do8~->
  do do16 do do8-> do16 do~-> |
  do\! do do8-> r do-. do4-- do8 do~-- do do do4-- |
  \t {r8 do( do} do4) r16 do do do~
  \t {do8 \parenthesize do do~->} \t {do do do} do4 |
  \t {r8 do(\mf do} \t {do do do} \t {do do do}
  \t {do do do} do4) r8 do-- |
  r do16 do do4 r8 do-- r16 do do do do do r do~-- do4 |
  r8 do4-.( do16 do) r8 do~-.( \t {do do do)} r2 |

  %%% 5 %%%
  r1 r4 do\mp |
  do8( do do4) r8 do( do4) r do8( do |
  do4) r16 do\< do do r8 do-- do4 r8 do4.-- |
  r8\! do16\f ^"précis" do do8 do
  do16-> do8 do16-> r8 do do4-- do8 do-- |
  r16 do-. do-. do-. do-. do-. do8
  r16 do do do->~ do do do8~-> do16 do do do~-- do4 |
  r4 do8--\mf do-- do-- do-- do-- do-- do-- do-- do-- do-- |
  do-- do-- do-- do-- r
  do-- \parenthesize do16 r r8 do-- do-- do4-- |
  r \t {do--\f \parenthesize do8} r4
  do16 do do do do8-> do16 do do8-> do16 do-. |
  r do-> do8 \t {r do\< do} do16 do8-> do16 do8 do->\!
  r16 do do do do4-> |
  r do8\mp do r do do-- \parenthesize do16 r do4-- do8 do |
  do4 r8 do-. r do \t {do4 \parenthesize do8} r16 do8.-. r8 do-. |

  %%% 6 %%%
  R1.
  r2 do8(\mf do4. r8 do do do |
  do2) r1 |
  \t {r4 do( do} \t {do do do} do2) |
  r4 do-. r8 do4-- \parenthesize do8 do do do4 |
  r2 r4 r8 do-> do4 r |
  r4 do\< do8-- do16 do do8. do16 r8 do-. r4 |
  \t {do8\! -> do do~} do do \t {do4-- do8} r do
  do4-- \t {\parenthesize do8 do do} |
  r2 r4 do-.^"scherzando" r8 do4-- \parenthesize do8 |
  do-. do-. do4 r r8 do-. r4 do-- |
  \t {r8 do-\dyn "f_sub." do} do4 r2 do16-> do8 do16-> do8 do |
  do16-> do8 do16 \t {do8 do4} r16 do( do do do4)
  r8 do-.\mp do-. do-. |
  do4 do8 do--~ do do do4~-- do16 do do do do8-> do16 do-> |
  r8 do(\dim do16 do do do do8 do16 do do do do8) r do-. do16->\! do8. |

  %%% 7 %%%
  R2.
  r4 do\f ^"franc" do8 do |
  r4 do8 do do do |
  do\< do do do \t {do do do\!} |
  R2.
  do4-> r8 do do do |
  do4 r8 do-> r4 |
  r do8-. do-. do-. do-. |
  do4-. do8-. do-. do4-. |
  r16 do8.~->\< do16 do do8 do do |
  r4 do2--\ff |
  do4\mf -> \parenthesize do16 r do8-> do4 |
  r8 do-> do4 r |
  do--\< do8 do do do |
  do->\! do4 do16 do do4-> |
  r8 do\dim do do do4-- |
  r2 do8-. do-. |
  do4-. r2 |
  r4 do8-. do-. do-. \parenthesize do |
  r4 r8 do\p do4-. |
  R2.
  r4 \t {do( do do)} |
  r4 r8 do4-- \parenthesize do16 r |
  r2 do4~-- |
  do8 \parenthesize do \t {do4\> do do} |
  do4\! r2 |
  R2.*3
  r4 do2--\p ^"impavide" |
  do8-> do4. r4 |
  r4 r8 do4.-. |
  \t {do4-- do2} do8 do |
  do4-. r2 |
  R2.*2
  r4 do( do |
  do do2 |
  do4.-- do-- |
  do-- do-- |
  do4--) r2 |
  R2.*2
  do4\pp r2 |
  R2.*2
  do4 r2 |
  R2.*2

  %%% 8 %%%
  R2.
  r4 r8 do16--\mp ^"souple" do~ \t {do8 do do} |
  do4 do8(-. do-. do4--) |
  \t {r8 do( do} do4) r |
  do8( do do4) r8 do-. |
  \t {do( do do} \t {do do do} do4) |
  r do16->\p do do r \t {r8 do do} |
  do do \t {do-- do4} r |
  r8 do16 do do4 \t {\hairpinText "(poco)" do8\< do do\!} |
  R2.
  r4 r8 do\mp do16 do do do |
  \t {r8 do-- do--} r do r do16( do |
  do4) r2 |
  r16 do do do do8-- \parenthesize do16 do
  \t {do8(\< do do\!)} |
  r4 do( \t {do8-- do4} |
  \t {r do8} r do--) r4 |
  r r8 do~\> \t {do do do} |
  \t {r4 do8(} r do \t {do do do)\!} |
  r4 r8 do-- r4 |
  R2.
  r4 r8 do( \t {r do do} |
  \t {r do do} do4) r |
  R2.
  do4 do8 do do4 |
  r r8 do do do |
  do do do4 r |
  r r8 do\> do4 |
  \t {do8-- do4\!} r2 |
  R2.*3

  %%% 9 %%%
  r8 do\mp do do \t {do do do} |
  \t {do4 do16 r} do8 do \t {do do do} |
  do4 r8 do16 do \t {do8-- do do16 \parenthesize do} |
  do8. do16 \t {do8. do16 do8} r4 |
  R2.
  r16 do( do do do do do8) r4 |
  r8 do16 do do8 do do16-- do do do |
  do8 do16-- do r2 |
  r4 r8 \xNote {do32^"murmuré" do16. r4 |
  r16 do32 do do8} r4 do16 do8. |
  r4 r16 \xNote {do32 do} r8 r4 |
  r2 do8\p do |
  do4-- \t {r8 do do} do do |
  do16-- do8. \t {r8 do-- do16 do} \t {do8 do8. do16} |
  do do do do do4 \t {do8 do do} |
  r do( \t {do do do} \t {do do) r} |
  R2.
  r8 do16\pp ^"sotto voce" do \t {do8 do do} do8 do16 do |
  do8 do16 r r2 |
  do4 r2 \stopStaff
  % This causes a progerror but the output
  % is just sooo outrageously gorgeous.
  \hideNotes s4 do do
}
