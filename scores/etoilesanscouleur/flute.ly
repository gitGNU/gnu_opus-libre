
%-- Étoile sans couleur -- flute.ly -------------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"


%%% This part is written for a Hulusi flute, a traditional Chinese
%%% instrument stubstubstub
%%% Here a hulusi "in G" is required, that is natively able to produce
%%% the notes D - E - G - A - B - D - E (half-tones and complementary
%%% notes are obtained with half holes or letting the fingers float
%%% above the holes without covering them). An additional low B may
%%% be obtained stubstubstubs

%%% (sigh) I'm not supposed to say this, but: if you *really* can't
%%% get ahold of a hulusi, then you *may* try and get away with a
%%% tenor recorder. Shame, though.


Flute = \relative do' {
  \partial 16 r16
  R1*7/16*4
  R2. R2.-\fermataMarkup

  %%% 1 %%%
  R2.*10
  r4 si2\pp~ si2 r4 |
  \grace si4( mi2.)~^"(non vib.)" mi8 redsd( mi2) |
  re!4(\glissando -"gliss." mi2)~ | mi\> r4 |
  si(--\pp \t {re16(^"détimbré"\> mi re} \tt {mi32 re mi re mi}
  \pitchedTrill re8)\!\startTrillSpan mibsb r8\stopTrillSpan |
  \tt {sol16\< re) mi sol( fad)} \acciaccatura sol
  \pitchedTrill fad4\mp\startTrillSpan~ solsb
  fad8\stopTrillSpan \t {re16( mi sol)} |
  r re(\> mi sol\glissando fa8.\!) r16 \tt {re--\< mi-- sol-- fad-- la~} |
  la8\mf\glissando sibsb sib16-. fad8--(\glissando mid16) fad8 r |
  re32(\< mi) sol( fad)\t {la16-. mi-. sol-.\!} r16 sol32(\> mi re8\!)~ \t {re resd( re)} |
  \tt {mib16(\> re8) mib16( re} si4)\pp r |

  %%% 2 %%%
  r \t {sol'16(\mf la mi)} fad8~ fad4~ |
  fad4.(\< solsb8\> fad4)~ |
  fad4.\! sol4(\glissando fa8)~ |
  \t {fa8 sol16(\< la mi8\!~} mi4 r8 fadsd-. |
  \acciaccatura la16 \t {sol8 solsd( sol)~} sol4. fad8 |
  la2~\p\< la8( si\glissando |
  dod2.\mp)~-"ten." dod2 r8 \t {sol16(\mf la mi)} |
  fad4~ fad16 la \t {solsd la sold~} sold4 |
  \tt {r16 sol la mi fad~} fad\< sol8( fa16) la8-- si--~ |
  si16\! la\glissando
  do? fa, si4. si,8 |
  r4 r8 \t {sol'16 la re,} mi4~ |
  mi8\glissando fa?~ fa16 fasd fa8 r mi\prall \glissando |
  fad2 mi4 sol2 r4 |
  \tt {r16 sol la re, mi~} mi16 fa32 solsb fad4.~ |
  fad16 sol32 lasb sold4 fad8^\markup \center-column {\musicglyph #"scripts.prall" \tiny \semisharp }
  la4~ | \t {la8 si\glissando dod~} dod2~ dod8 r r2 |

  %%% 3 %%%
  R2.*7
  mi,2~-"(non vib.)" mi8\glissando fa |
  mi2 r4 |
  r2 mi4~ | mi8\glissando fad4. \t {r8 \acciaccatura solsd16 fad8 mi} |
  sol4~ sol16 lasb32 sol la8~ la4~ | la8 r si,2 |
  r2 sol'4~ | sol16 sol32 lab sol8~ \ttt {sol16 la sol la sol la} \ttt {sol mi re mi sol la} |
  sol2~\startTrillSpan sol8\stopTrillSpan \t {sol16 la re,} |
  mi8 re32 mi re mi re2~\startTrillSpan | re8\stopTrillSpan si r2 |
  \acciaccatura misb16 re8 r r4 r8 re32 mi sol la |

  %%% 4 %%%
  si4 r r r8 \t {la16 si la} si4 r |
  r8 \acciaccatura mi,16 re8 r4 r mi4:32~ -"(flatt.)" mi16 fa mi8~ mi4 |
  r8 mi8:32~ mi4 \t {re16 mi re} mi8 r8 \t {re16 mi re} mi4 r8 re32 mi sol la |
  si4 r \tt {si16 la si la sol} \tt {mi re mi sol la} \tt {si la si la sol} \tt {mi re mi sol la} |
  \tt {si la si la sol} \tt {mi re mi sol la} \tt {si la sol mi re}
  \tt {mi sol la si la} \tt {sol mi re mi sol} \tt {la si la sol mi} |
  \tt {re mi re mi re} mi4 r8 re8:32~ re8 r \ttt {mi16 sol mi sol mi sol} \ttt {re si' re, si' re, si'} |
  \ttt {mi, sol mi sol mi sol} \ttt {re si' re, si' re, si'}
  \ttt {mi, sol mi sol mi sol} \ttt {re si' re, si' re, si'} \ttt {mi, sol mi sol mi sol} \t {mi sol mi} r8 |
  \ttt {re16 la' re, la' re, la'} \ttt {mi sol mi sol mi sol} \ttt {re la' re, la' re, la'}
  \ttt {mi sol mi sol mi sol} \ttt {re sol re sol re sol} \ttt {mi fad mi fad mi fad} |
  \tt {re mi re mi re} \t {mi8 re mi} re2~\startTrillSpan re4\stopTrillSpan r |

  %%% 5 %%%
  R1.*4 mi'2~ \t {mi4 re mi~} \tt {mi8 re mi re mi} |
  \tt {re re, mi sol la} \t {sib la sib} \t {la sib la} \t {sib la sib\glissando} la4~ |
  la2:32~ la4 r r2 |
  r1 mi'2~ mi re4 mi~ mi16 re mi re \t {si8 la sib} |
  la2 sol4\glissando la2.~ la4 r r1 |

  %%% 6 %%%
  R1.*2 r2 si1:32\glissando ladsd4 r r1 |
  R1. r2 \pl {si1~ si2.} {si2.\glissando ladsd4 lasd2.} r4
  \pl {si2~ si1} {si2\glissando do1} r8 \pl {si4.~ si1.}
  {si4.\glissando \t {dod4 dodsd dod~} dod1} |
  r4 \pl {\oneVoice si2.~ \voiceTwo si2~ si4} {s2. re2~ re4}
  r4 r2 \t {r4 <mib, si'>4:32~ <re si'>4} |
  r <re si'>4:32~ <re si'>8 r r4 <si si'>2~ |
  <si si'>2. r4 r2 |
  R1.

  %%% 7 %%%
  r2 re16 mi sol la |
  re2 r4 | \acciaccatura mi,8 re4 r2 |
  R2.
  si'4 do dod |
  r \t {mi8 re mi} r4 |
  r4 sib4:32~ \t {sib8 si sib} | la4 r2 |
  R2.
  fad8 fa r2 | \pitchedTrill mib2.:32\startTrillSpan re
  re4\stopTrillSpan r2 |
  R2.*6
  si'2.~ si4\glissando ladsd r |
  R2.*2
  <si dod>2.~ <si re>4 r2 |
  R2.*5
  %% This is a low note, so I wouldn't
  %% worry too much about air.
  si,2.~ si~ si~ si~ si~ si4 r2 |
  R2.
  si2. re2 mi4~ | mi2.~ mi~ mi4 r2 |
  red2.\glissando mi2.~ mi~ mi2 r4 |
  R2.*4

  %%% 8 %%%
  R2. \t {r4 si'8~} si4.\glissando ladsd8 |
  R2.
  si4. do~ do si\glissando dod2.~ dod4 r2 |
  R2.*3
  r2 \t {r8 si,4~} si2 r4 |
  R2.
  r2 si4 mi2\glissando redsd4 |
  R2.*8
  %% This is a quote from Kurt Weill and Bertolt Brecht's
  %% Berliner Requiem (specifically, the Marterl song).
  r2 r8 si'\glissando | do2~ do8 si\glissando | dod2~ dod8 si |
  re2.~ re2 r8 fad, | sol2~ sol8 fad |
  la2~ la8 si\glissando | dod2.~ |

  %%% 9 %%%
  dod4 r2 R2.*3
  red,4 mi~ \t {mi8 red mi} |
  \tt {red16 mi red mi red} mi4 r |
  red2 si4 red2 si4~ si2 r4 |
  R2.
  re!2 si4 re2 si4~ si \t {re8 mi re} \tt {mi16 re mi re mi} |
  re2 mi'4~ mi2.~ mi2 r4 |
  R2.*3 R2.*2-\fermataMarkup
}

%------------------------------------------------------------------%
