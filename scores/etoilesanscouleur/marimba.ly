%-- Étoile sans couleur -- marimba.ly -----------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

MarimbaMd = \relative do' {
  \partial 16 r16
  R1*7/16*4
  R2. R2.-\fermataMarkup

  %%% 1 %%%
  R2.*13
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
  R2.*5
  s2 r4 s2. r2 s4
  R2.*3
  r2 r8 do16 do, |
  dod32 sold' mi'8 \mg dod,,16 \md fa'8 sol r4 |
  r4 \tt {r16 red'' mi,, fa' si} mi,,8 r |
  \t {r8 \ottava #1 si''' \mg dod,,,} \md
  \tt {si'''16 \ottava #0 \mg la,,, \md sib'' dod, \mg la,}
  \md r4 | \t {r16 red' \mg mi,, \md dod''' sib, \mg mi,,}
  \md r16 sol'32 sol \mg sol,8 \md \t {r8 si'' \mg dod,,} |
  \md \tt {si''16 \mg la,,, \md sib'' dod, \mg la,} \md r2 |
  R2.*2

  %%% 4 %%%
  r4 <si''' si'> s2 r8 <si si'> s4 |
  r1 s2 | s2 r1 |
  r2 r8 red16 \mg la,,, \md dod' sib'8. r4
  r8 red16 \mg la,, \md fa'''' \mg re,,,! \md dod' sib'
  r8 red16 \mg la,, \md dod''' sib, \mg mi,,8 \md r4 r2 |
  r1 s4 r | R1.*5

  %%% 5 %%%
  \ottava #1 \tt {r16 si'''' si si si} \t {si8 si si}
  si8. si16~ si8 si~ \tt {si si si si si} do2 \ottava #0 r1 |
  R1. r1 s2 s2 r1 |
  R1.*2 r4 s s1 s1 r2 |

  %%% 6 %%%
  R1.*7 r2 s1 r2 s1 |
  \t {r8 sol, do,} \t {sold \mg mi, dod'} \md sold'4 r r2 |
  R1.*3 s1 \t {dod8 re la'} \t {sib mib si} |

  %%% 7 %%%
  <do fa> do <do fa> do <do fa> do |
  <do fa> do <do fa> do <do fa> do |
  <do fa> si <do fa> si <do fa> si |
  <do fa> si <do fa> si <re sol> si |
  <re sol> si <re sol> si <re sol> si |
  <re sol> <si mi> <re sol> <si mi> <re sol> <si mi> |
  <re sol> <si mi> <re sol> <si mi> <re sol> fa, |
  <re' sol> <si mi> <re sol> fa, <re' sol> <si mi> |
  <re sol> <si mi> <re sol> fa, <reb' sol> <lab reb> |
  <reb sol> <lab reb> <reb sol> <lab reb> <reb sol> <fa, sib> |
  <reb' sol> lab <reb sol> <fa, sib> <reb' sol> fa, |
  <sol dod> <si, mi> <sol' dod> re <sol dod> <si, mi> |
  <sol' dod> fa <reb' sol> <fa, sib> <reb' sol> lab |
  <reb sol> fa, <sol dod> <si, mi> <sol' dod> re |
  <sol dod> fa <lab reb> <si, mi> <fa' sib> si, |
  <re sol> la <si mi> fa <re sol> \mg fa, | \md
  R2.*35

  %%% 8 %%%
  \t {r8 sol'' dod,} \t {do,4 fa'8\laissezVibrer} r4 |
  fa,16 do sol' \mg mi,~ mi2:32 \md
  R2.*13
  r2 red'''4 \mg \t {mi,,,4 \md sib'' si'} r4 |
  R2.*5
  r4 s2 r4 s2 r4 s2 r4 s2 r4 s2 r4 s2 r4 s2

  %%% 9 %%%
  r4 s r |
  R2.*3
  r4 s2 \t {r8 do do,} dod,16 sold' mi' \mg dod,, fa4 \md |
  s2. r4 s r |
  R2.*2
  \t {sol''8 do, sold} \mg \t {mi, dod' \md sold'} r si' |
  R2.*2
  \t {r16 re,, mi} sol''32 dod,, fa'16~ fa4
  \tt {si,,16 do' fa sold, do} |
  r4 s2 |
  R2.*4 R2.*2-\fermataMarkup
}

MarimbaMg = \relative do {
  \clef bass
  \partial 16 r16
  R1*7/16*4
  R2. R2.-\fermataMarkup

  %%% 1 %%%
  R2.*9
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
  \mg r r8 mi,8:32~ \ttt {mi16 sol sold do, dod mi} |
  \t {fa,8 do' sol'} mi4:32 \ttt {fa,16 mi' dod' dod, sold' sold} |
  \t {r8 mi8:32 dod16 do} \tt {mi do dod mi sold,} mi'8 \t {sol16 do, dod} |
  \t {fa, do' fa,} \t {dod' sol' dod,}
  fa32 do' \md dod sol' fa do' dod sol' \tt {red'16 la, sol' dod mi,} |
  \tt {red' \mg la,, \md sol' dod mi,} red' \mg la,, sol' \md dod' \mg mi,,4 |

  %%% 3 %%%
  R2.*4 r4 mi2:32 |
  \tt {r16 la, sol' mi \md sib''} \tt {r16 dod' \mg la,,, sol' mi~} mi4:32 |
  \md \acciaccatura do''16 \tt {\mg dod,8 \md sol''16 \mg mi,, la,}
  \t {\md dod''' sold' \mg re,,} \md sol'-. do-. si-. re,-. la8-. |
  \mg r8 mi,8:32~ \t {mi8 la, sol'} \md \tt {r16 sib' dod' \mg la,,, sol'} |
  mi2:32 r4 |
  \t {r8 fa, mi'~} mi8:32\laissezVibrer r8 r4 |
  r8 \tt {mi32 mi mi mi mi} \t {mi8 mi mi} mi mi |
  R2. s4 r2 |
  R2. s2 r4 s2. |
  s4 \tt {sib'16 dod, la dod sib} la4:32~ |
  la8 r r2 |
  R2.

  %%% 4 %%%
  r2 mi'16 \md fa' fa \mg mi, mi \md fa' fa \mg mi,
  r4 mi16 \md fa' fa \mg mi, |
  mi fa, fa mi' mi mi mi mi fa mi mi fa do dod mi sold
  \md fa' \mg mi, mi \md fa' fa' \mg fa,, mi' \md r16 |
  \tt {<si'' si'>8 \mg mi,,, \md fa'' fa \mg mi,,} r1 |
  <si mi>16 fa <si mi> fa <si mi> fa <si mi> fa r8 s r4
  <si mi>16 fa <si mi> fa r8 s |
  s4 r8 s s4 <si mi>16 fa <si mi> fa
  <si mi> fa <si mi> fa <si mi> fa <si mi> fa |
  <re' sol> fa, <re' sol> fa, <si mi> fa <si mi> fa
  <re' sol> fa, <re' sol> fa, <si mi> fa <si mi> fa
  \md fa''' do sol' \mg mi,, <si mi> si <si mi> si |
  <re sol> <si mi> <re sol> <si mi> <re sol> <si mi> <re sol> <si mi>
  <re sol> <si mi> <re sol> <re sol> <si mi> <re sol> <si mi> <re sol>
  <si mi> <si mi> <re sol> <si mi> <re sol> <si mi> <re sol> <si mi> |
  <re sol> <lab reb> <re sol> <lab reb> <re sol> <lab reb> <re sol> <lab reb>
  <re sol> <si mi> <re sol> <si mi> <re sol> <re sol> <si mi> <re sol>
  <lab reb> <re sol> <lab reb> <re sol> <lab reb> <lab reb> <re sol> <lab reb> |
  <re sol> si fa <si mi> si fa <si mi> si
  fa si fa fa fa fa fa fa fa4 r |

  %%% 5 %%%
  R1.*5
  r8 mib' sib' sol re' mib, \t {sib' sol re'}
  \md \t {fad \mg sol, re'} mib,16 \md fad' \mg sol, re' |
  \md \tt {si'!8 \mg <mib,, sib'> <mib sib'> \md <si'! fad'> \mg <mib, sib'>}
  <sol re'>4 r r2 |
  R1.*2
  \t {r8 la, mi'} \md \tupletDown \t {<sold' red'> \mg si,, fad'}
  \md \t {<fad' dod'> \mg dod, sold'} \md \t {<sold' red'> \mg mi, si'}
  \md \t {<fad' dod'> \mg la, mi'} \md \t {<red lad'> \mg la mi'} |
  \md \t {<red lad'> \mg <la mi'> \md <red lad'>} \mg \t {<la mi'> \md <red lad'> \mg <la mi'>}
  \md <red lad'>16 \mg <la mi'> \md <red lad'> \mg <la mi'>
  \md <red lad'>4 \mg r2 \tupletNeutral |

  %%% 6 %%%
  R1.
  r1 \t {r4 <la, sib> <la sib>} \pl la2*3 {sib1:32~ \t {sib4 sib sib}} |
  sib4 sib r1 |
  r1 r4 <la sib> |
  \tt {sib8 la sib sib la} <la sib>4 r r2 |
  R1.
  <fa fa'>4 do'' \md <fa lab>2 <fa lab> |
  \mg mi,4 si' \md <mi sol>2 <mi sol> |
  \mg r4 s4 r1 |
  R1.*2
  \tt {fa,,8 lab sib re dod} \tt {mi fa, si re mi} \tt {sol fa, dod' re la'} |
  \tt {sib \md fa' \mg fa, do' \md reb} \tt {lab' \mg la, \md mi' fa do'}
  \mg r2 |

  %%% 7 %%%
  R2.*15 r2 s4 |
  mi,,2.:32~ mi4 r2 |
  R2.*7
  r2 mi4:32~ mi4 r fa,4:32~ fa4 r mi' r fa, mi' |
  R2.*6
  re4 r mi |
  R2.
  r8 sol, r2 |
  R2.
  r8 dod r2 |
  r2 fa,4:32~ fa4 mi' fa, |
  R2.*10

  %%% 8 %%%
  s2.
  R2.*7
  r4 mi'2:32~ \t {mi8 mi mi} \tt {mi16 mi mi mi mi} mi8 mi |
  R2.*2
  mi2:32~ \t {mi8 mi mi} <la, mi'>4 r2 |
  R2. s2 r4 |
  r4 r8 \t {mi'16 mi mi} mi4:32~ mi4 r2 |
  R2.*3
  fa8 do' \md <fa lab>4 <fa lab> | \mg
  mi,8 si' \md <mi sol> \mg si \md <mi sol>4 | \mg
  si,8 fad' \md <re' fad>4 <re fad> | \mg
  si, \md <re' fad> <re fad> | \mg
  sib,8 sol' \md <do mi>4 <do mi> | \mg
  la,8 sol' \md <dod mid>4 <dod mid> | \mg
  re, \md <re' fad> <re fad> | \mg

  %%% 9 %%%
  re, \md <re' fad> \mg r |
  R2.*3
  \t {la,8 mi' si'} \md \t {fad' dod' sold'} red'4 | \mg
  r4 s2 |
  la,,,16 mi' si' \md fad' \mg dod, sold' \md red' mi dod' fad, \mg si, mi, |
  \t {la,8 la' si,} \t {dod' sib, \md sol''} \mg la,,16 mi' si' mi, |
  \t {la,8 mi' la,} mi' la, r4 |
  R2.
  r4 s2 |
  r4 mi'2:32~ | \t {mi8 mi mi} \tt {mi16 mi mi mi mi} mi8 mi |
  R2.
  sol8 mi8:32~ \t {mi8 \md si'' do'} \t {la16 la, \mg la,,} sol'8 |
  mi2:32~ mi4 |
  R2.*3 R2.*2-\fermataMarkup
}

%------------------------------------------------------------------%
