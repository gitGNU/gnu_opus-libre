%-- Étoile sans couleur -- recitant.ly ----------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

%% Since the text has to be spoken,
%% we're using rhythmic notation,
%% à la "l'Histoire du soldat".
%%
%% (Although -- granted -- some rhythms
%% will be a tad more complex here.)

Recitant = \relative do' {
  \set Staff.instrumentName = \RecitantInstr
  \set Staff.shortInstrumentName = \RecitantShortInstr
  \dynamicUp
      %% The text opens with a quote by PJ Jouve.
      %% Since there's no "title" per se, let's
      %% use it as such.
  \partial 16 do16
  do\mf^"libre" do do do do do do
  do do do do \times 3/2 {do \parenthesize do} |
  do8-- do-- r8. do4 r8. | % Enter Guitar.
  r8 do\> r do r do\! % (playful dialogue?)
  R2.-\fermataMarkup

  %%% 1 %%%
  R2.*3 % Guitar presents the "v a i n" motive
      %% (and turns it into a groovy loop,
      %% you know how guitarists are)
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
  R2. %% A short gymnopédie-like waltz.
  r4 do--\mf ^"ample" r8 do do \parenthesize do16 r
  do8 \parenthesize do16 r do8 do |
  do4 r r16 do\p do do |
      %% (just so you won't be too surprised
      %% when the Weill quote comes later on)
  do8-. do16 do \t {r4 do8} \t {do( do do} |
  do4) r do\mf |
  do8 do r do do do |
  do \parenthesize do
  \t {do do do} \t {do do do} |
  r do do4-- r16 do\< do do |
  do8.\mf do16 do do do do do8. do16 |
  \t {do8--\> do do} r\! do16 do \t {do8 do do} |
  \t {do do do} do4 r8 do |
  \t {do do do--~} \t {do do do}
  \t {r do\> do} |
  \t {do do do} do4\! r |
  r8 do \t {do4 do8~} do16 do do do |
  do \parenthesize do do do do4 r8 do |
  do do do4 r8 do |
  do16( do32 do do8) r2 | do16 do r8 r4
  do16-. do-. r8 | % "C'est tout". That's all.
  %% Oh no wait, there's more:

  %%% 3 %%%
  R2.*5 %% Yup, pianists too can play!
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
      %% From Titania (here) to Hélène (below).
  do-- \parenthesize do \t {r do do} do4-- |
  do8.-- do16 \t {do4-- do16 do}
  \tt {do( do do do do)} |
  r do\dim do do do4 \t {r8 do do} |
  do4-- \t {r8 do do} do4--\! |
  r do\pp do16-> do8. |

  %%% 4 %%%
  r4 r8 %% Part rap, part rock n'roll. What's not to like?
  do~->\mf ^"scandé" do16 do do do do4 r8 do~-> do16 do do8 |
  do4-> do16 do do do~-> do8 do\< do16 do do8~\!
  do16 do-. do-. do-. do8-- do16-> do |
  r4 do--\mf do8-> do~ \t {do8 do( do} \t {do do do} do4) |
  r8 do\cresc do do do4-- do8-. do8~->\f
  do do16 do do8-> do16 do~-> |
  do do do8-> r do-. do4-- do8 do~-- do do do4-- |
  \t {r8 do( do} do4) r16 do do do~
  \t {do8 \parenthesize do do~->} \t {do do do} do4 |
      %% Oh look, an alexandrine...
  \t {r8 do(\mf do} \t {do do do} \t {do do do}
  \t {do do do} do4) r8 do--\sf |
  r do16 do do4 r8 do--\sf r16 do do do do do r do~-- do4 |
  r8 do4-.(\mf do16 do) r8 do~-.( \t {do do do)} r2 |

  %%% 5 %%%
  r1 r4 do\mp | %% Let's not forget I'm a pianist.
  do8( do do4) r8 do( do4) r do8( do |
  do4) r16 do\< do do r8 do-- do4 r8 do4.-- |
  r8\! do16\f do do8-.^"précis" do
  do16-> do8 do16-> r8 do-. do4-- do8 do-- |
  r16 do-. do-. do-. do-. do-. do8->
  r16 do do do->~ do do do8~-> do16 do do do~-- do4 |
      %% This is the longest verse. Right at the middle.
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
  R1. %% The most chaotic section.
  r2 do8(\mf do4. r8 do do do |
  do2) r1 |
  \t {r4 do( do} \t {do do do} do2) |
      %% If left untampered with, this verse
      %% wouldn't fit in the overall syllable scheme.
      %% Can't say I get why.
  r4 do-. r8 do4-- \parenthesize do8 do do do4 |
  r2 r4 r8 do-> do4 r |
  r4 do\< do8-- do16 do do8. do16 r8 do-. r4 |
  \t {do8\! -> do do~} do do \t {do4-- do8} r do
  do4-- \t {\parenthesize do8 do do} |
  r2 r4 do-.^"scherzando" r8 do4-- \parenthesize do8 |
  do-. do-. do4 r r8 do-. r4 do-- |
  \t {r8 do-\dyn "f_sub." do} %% W. T. F.
  do4 r2 do16-> do8 do16-> do8 do |
  do16-> do8 do16 \t {do8 do4} r16 do( do do do4)
  r8 do-.\mp do-. do-. |
  do4 do8 do--~ do do do4~-- do16 do do do do8-> do16 do-> |
      %% This is _the_ verse I couldn't get my head around.
      %% Wrong syllable count, no particular meaning,...
      %% Oh well. Better get it over with:
  r8 do(\dim do16 do do do do8 do16 do do do do8) r do-. do16->\! do8. |

  %%% 7 %%%
  R2. %% A sort of tarentella.
  r4 do\f ^"franc" do8 do |
  r4 do8 do do do |
  do\< do do do \t {do do do\!} |
  R2.
  do4-> r8 do do do |
  do4 r8 do-> r4 |
      %% PG-rated, anyone?
  r do8-. do-. do-. do-. |
  do4-. do8-. do-. do4-. |
  r16 do8.~->\< do16 do do8 do do |
      %% (Don't go pretending you
      %% haven't heard it: )
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
      %% From this point on, I have to
      %% delay the text so that the music
      %% can make its transition (so far
      %% it's been the other way around).
  R2.*3
  r4 do2--\p ^"impavide" |
  do8-> do4. r4 |
  r4 r8 do4.-. |
  \t {do4-- do2} do8 do | %% "très peu comprendront".
  do4-. r2 | %% (Can't say *I* have.)
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
  R2. %% Gradually introducing the Weill quote...
  r4 r8 do( \t {r do do} |
  \t {r do do} do4) r |
  R2. %% ... aaand there it goes.
  do4 do8 do do4 |
  r r8 do do do |
  do do do4 r |
  r r8 do\> do4 |
  \t {do8-- do4\!} r2 |
  R2.*3 % Cute(ish) piano transition...

  %%% 9 %%%
  r8 do\mp do do \t {do do do} |
  \t {do4 do16 r} do8 do \t {do do do} |
  do4 r8 do16 do \t {do8-- do do16 \parenthesize do} |
  do8. do16 \t {do8. do16 do8} r4 |
  R2. %% The TITLE! Yay!
  r16 do( do do do do do8) r4 |
  r8 do16 do do8 do do16-- do do do |
    %% Music's getting a bit neotonal here.
    %% (<insert contemporary culture ramble>)
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
    %% \hideNotes causes a progerror here but the
    %% output is just sooo outrageously gorgeous.
  \hideNotes s4 do do
}

%------------------------------------------------------------------%
