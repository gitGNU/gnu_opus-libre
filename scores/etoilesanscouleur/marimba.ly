%-- Étoile sans couleur -- marimba.ly -----------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

MarimbaMd = \relative do' {
  \partial 16 r16
  R1*7/16*4
  R2.*15

  %%% 1 %%%
  s2.*8 R2.

  %%% 2 %%%
  R2.
  s2.*3
  s4 <re' sol?> r |
  R2.*2
  s2.*7
  R2.*3
  s2.*2

  %%% 3 %%%
  
}

MarimbaMg = \relative do {
  \clef bass
  \partial 16 r16
  R1*7/16*4
  R2.*11

  %%% 1 %%%
  r4 mi2:32~ mi2.:32~
  \t {mi8 mi mi} \tt {mi16 mi mi mi mi} mi8 mi |
  <la, mi'>4 r8 \t {la16 la la} la4 |
  \tt {r16 la sib mib mi}
  \t {si'8 \md \t {fa'16 do sol'} \mg \t {mi, mi mi}}
  \pl {la,4 s} {mi'4:32~ | \t {mi8 do dod}} \t {r do \md dod'}
  \tt {\mg r16 do, \md dod' \mg mi, \md sold'} |
  \t {\mg r16 do,, do'} \md dod''32 sold, \mg mi,16~
  \t {mi8 \md dod''' fa,} sol do,, | \mg
  fa,,4:32~ \tt {\stemUp fa16 re' sib' \md \stemDown mi do'} 
  \tt {\stemDown sib re, \mg \stemUp do mi, fa,} | \stemNeutral
  \md r16 do''' sib \mg re,, \t {mi8 \md sol'' r} \mg
  \ttt {re,,16 mi do' sib re, mi} |
  \md dod'4:32~ \tt {dod16 \mg re, mi \md sol'' \mg dod,,} \md fa4 |
  \mg fa,,16 dod' re la' \ttt {sib \md fa' fad dod' re la'}
  \tt {r16 la, \mg la,, \md si''' \mg dod,,} |
  \md sib'8 \t {sol'16 do, \mg dod,} \md
  \acciaccatura fa'16 \mg la,,,4:32~ la16 red la red |
  la2:32~ la8 r |

  %%% 2 %%%
  R2.
  mib'8 si' \md <re fad> \mg sib \md <re fad> \mg mib, |
  \t {lab, fa' si} \md solb' \mg fa, \md <do' solb'>4 |
  \mg \t {mib,8 mib si'} \md <re la'> do? <re la'> \mg mi, |
  \tt {sib16 mib \md dod' fad \mg sold,} mi'4 r |
  R2.
  r8 lab,, \t {mi' do sol'} r4 |
  r8 red si' sol \md red' si' | \mg
  r16 sib,, fad' re' \md \t {si'8 sol' red'} \mg \t {la,,,4 dod'8} |
  \md r16 sib' red'8 \mg \t {\t {la,,,16 la la} la8 dod'16 dod}
  \ttt {dod dod \md sib' \mg la,, dod' \md sib'} |
  \acciaccatura red'16 \mg mi,,,2:32 \md r8 sol' |
  r16 fa \mg lab,, \md sol'' \mg dod,8 \md sol''
  \tt {r16 fa \mg dod, \md sol'' \mg mi,,} |
  \ttt {re la' \md sol' re' la mi} \ttt {dod' sold' do, dod' mi, sold'}
  r sol, do, sold |
  \mg mi,8 dod' \md sold'4 r |
  \mg r r8 mi8:32~ \ttt {mi16 sol sold do, dod mi} |
  \t {fa,8 do' sol'} mi4:32 \ttt {fa,16 mi' dod' dod, sold' sold} |
  \t {r8 mi8:32 dod16 do} \tt {mi do dod mi sold,} mi8 \t {sol16 do, dod} |
  \t {fa, do' fa,} \t {dod' sol' dod,}
  fa32 do' \md dod sol' fa do' dod sol' \tt {red'16 la, sol' dod mi,} |
  \tt {red' \mg la,, \md sol' dod mi,} red' \mg la,, sol' \md dod' \mg mi,,4 |

  %%% 3 %%%

}
