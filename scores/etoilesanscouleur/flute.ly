%-- Étoile sans couleur -- flute.ly -------------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Flute = \relative do' {
  \partial 16 r16
  R1*7/16*4
  R2.*12

  %%% 1 %%%
  r4 si2~ si2 r4 |
  \grace si4 mi2.~^"(non vib.)" mi8 redsd mi2 |
  re!4\glissando -"gliss." mi2~ | mi r4 |
  si \t {re16 mi re} \tt {mi32 re mi re mi}
  \pitchedTrill re8\startTrillSpan mibsb r8\stopTrillSpan |
  \tt {sol16 re mi sol fad} \acciaccatura sol \pitchedTrill fad4\startTrillSpan~ solsb
  fad8\stopTrillSpan \t {re16 mi sol} |
  r re mi sol\glissando fa8. r16 \tt {re mi sol fad la~} |
  la8\glissando sibsb sib16 fad8\glissando mid16 fad8 r |
  re32 mi sol fad \t {la16 mi sol} r16 sol32 mi re8~ \t {re resd re} |
  \tt {mib16 re8 mib16 re} si4 r |

  %%% 2 %%%
  r \t {sol'16 la mi} fad8~ fad4~ |
  fad4. solsb8 fad4~ |
  fad4. sol4\glissando fa8~ |
  \t {fa8 sol16 la mi8~} mi4 r8 fadsd |
  \acciaccatura la16 \t {sol8 solsd sol~} sol4. fad8 |
  la2~ la8 si\glissando |
  dod2.~ dod2 r8 \t {sol16 la mi} |
  fad4~ fad16 la \t {solsd la sold~} sold4 |
  \tt {r16 sol la mi fad~} fad sol8 fa16 la8 si~ |
  si16 la\glissando do? fa, si4. si,8 |
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
}
