%-- Étoile sans couleur -- marimba.ly -----------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

%%% Written for a 5-octave marimba.
%%% (Although a 4.5 will do just as fine:
%%% I just require the low F.)

%%% I'm thinking soft or semi-soft sticks.
%%% But that's really up to you, whatever
%%% floats your boat.

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
  s4 <re' sol?>-- r |
  R2.*2
  s2.*7
  R2.*3
  s2.*2

  %%% 3 %%%
  R2.*5
  s2 r4 s2. r2 s4
  R2.*3
  r2 r8 do16\mf do, |
  dod32(-- sold' mi'8) \mg dod,,16
  \md fa'8-. sol-. r4 |
  \lettersOn
  r4 \tt {r16 \letter "v" red''-.
  \letter "e" mi,,-. \letter "r" fa'-. \letter "t" si-.}
  \lettersOff
  mi,,8-. r |
  \lettersOn
  \t {r8 \ottava #1
  \letter "t" si''' \mg \letter "i" dod,,,} \md
  \tt {\letter "t" si'''16 \ottava #0
  \mg \letter "a" la,,, \md \letter "n" sib''
  \letter "i" dod, \mg \letter "a" la,}
  \lettersOff
  \md r4 | \t {r16 red'\cresc \mg mi,, \md dod''' sib, \mg mi,,}
  \md r16 sol'32 sol \mg mi,8 \md \t {r8 si''' \mg dod,,} |
  \md \tt {si''16\sf \mg la,,, \md sib''( dod, \mg la,)} \md r2 |
  R2.*2

  %%% 4 %%%
  r4 <si''' si'>-> s2 r8 <si si'>-> s4 |
  r1 s2 | s2 r1 |
  \lettersOn
  r2 r8 \letter "v" red16->\f \mg \letter "a" la,,,
  \md \letter "i" dod' \letter "n" sib'8.-> r4
  r8 \letter "j" red16\f \mg \letter "a" la,,
  \md \letter "r" fa''''->\sfz \mg \letter "d" re,,,!
  \md \letter "i" dod' \letter "n" sib'->
  r8 \letter "j" red16 \mg \letter "a" la,,
  \md \letter "u" dod''' \letter "n" sib,
  \mg \letter "e" mi,,8 \md r4 r2 |
  \lettersOff
  r1 s4 r | R1.*5

  %%% 5 %%%
  \ottava #1 \tt {r16 si''''\f\> si si si}
  \t {si8 si si}
  si8.\p si16~ si8 si~ \tt {si\< si si si si}
  do2->\f \ottava #0 r1 |
  R1. r1 s2 s2 r1 |
  R1.*2 r4 s s1 s1 r2 |

  %%% 6 %%%
  R1.*7 r2 s1 r2 s1 |
  \t {r8 sol, do,} \t {sold \mg mi, dod'} \md sold'4 r r2 |
  R1.*3 s1 \t {dod8 re la'} \t {sib mib si} |

  %%% 7 %%%
  <do fa>\f do <do fa> do <do fa> do 
  \lettersOn
  <\letter "o" do \letter "r" fa>
  \lettersOff
  do <do fa> do <do fa> do |
  <do fa> si <do fa> si <do fa> si |
  <do fa> si <do fa> si <re sol> si |
  <re sol> si <re sol> si <re sol> si |
  <re sol> <si mi> <re sol> <si mi> <re sol> <si mi> |
  <re sol> <si mi> <re sol> <si mi> <re sol> fa,-- |
  <re' sol> <si mi> <re sol> fa,-- <re' sol> <si mi> |
  <re sol> <si mi> <re sol> fa,-- <reb' sol> <lab reb> |
  <reb sol> <lab reb> <reb sol> <lab reb> <reb sol> <fa, sib> |
  <reb' sol> lab <reb sol> <fa, sib> <reb' sol> fa, |
  <sol dod>\mf <si, mi> <sol' dod> re <sol dod> <si, mi> |
  <sol' dod> fa <reb' sol>-> <fa, sib> <reb' sol> lab |
  <reb sol> fa, <sol dod> <si, mi> <sol' dod> re |
  <sol dod>\> fa <lab reb> <si, mi> <fa' sib> si, |
  <re sol> la <si mi>\! fa <re sol> \mg fa, | \md
  R2.*35

  %%% 8 %%%
  \t {r8 sol''\p dod,} \t {do,4 fa'8\laissezVibrer} r4 |
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
  \lettersOn
  \tt {\letter "h" si,,16 \letter "o" do'
  \letter "r" fa \letter "l" sold, \letter "o" do} |
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
  r4 mi2:32~\pp ^"(bag. douces)" mi2.:32~
  \t {mi8\< mi mi} \tt {mi16 mi mi mi mi} mi8\> mi |
  <la, mi'>4--\pp r8 \t {la16 la la} la4 |
  \tt {r16 la( sib mib mi}
  \t {si'8) \md
  \lettersOn
  \t {\letter "r" fa'16^\mf\letter "o" do \letter "s" sol'}
  \mg \t {\letter "e" mi, \lettersOff mi mi}}
  \pl {la,4 s} {mi'4:32~\> | \t {mi8\! do( dod)}}
  \t {r do( \md dod')}
  \lettersOn
  \tt {\mg r16 \letter "c" do,(\< \md \letter "i" dod'
  \mg \letter "e" mi, \md \letter "l" sold')} |
  \t {\mg r16 \letter "c" do,,( \letter "o" do')}
  \md \letter "u" dod''32\sf \letter "l" sold,
  \mg \letter "e" mi,16~ \lettersOff
  \t {mi8 \md \lettersOn \letter "u" dod'''\mp \letter "r" fa,}
  \letter "s" sol--
  \lettersOff do,,-- | \mg
  fa,,4:32--~ \tt {\stemUp fa16( re' sib' \md \stemDown mi do')}
  \tt {\stemDown sib( re, \mg \stemUp do mi, fa,)} | \stemNeutral
  \lettersOn
  \md r16 \letter "o" do'''(--\p \letter "n" sib--
  \mg \letter "d" re,,--
  \t { \letter "e" mi8-- \md \letter "s" sol''--) r} \mg
  \lettersOff
  \ttt {re,,16\< mi do' sib re, mi} |
  \md dod'4:32~\sfp
  \tt {dod16 \mg re, mi \md sol'' \mg dod,,} \md fa4 |
  \mg fa,,16( dod' re la'
  \ttt {sib \md fa' fad dod' re la')}
  \lettersOn
  \tt {r16 \letter "m" la,-. \mg \letter "a" la,,-.
  \md \letter "t" si'''-. \mg \letter "i" dod,,-.} |
  \md \letter "n" sib'8-.
  \t {\letter "s" sol'16( \letter "o" do, \mg \letter "i" dod,)} \md
  \letter "r" \acciaccatura fa'16^\sfz \mg
  \lettersOff la,,,4:32~\> la16 red la red |
  la2:32~\pp la8 r |

  %%% 2 %%%
  R2.
  mib'8(-\dyn "p_dolce" si' \md <re fad> \mg sib \md <re fad>) \mg mib, |
  \t {lab,( fa' si} \md solb' \mg fa, \md <do' solb'>4) |
  \mg \t {mib,8( mib si'} \md <re la'> do? <re la'>) \mg mi, |
  \tt {sib16( mib \md dod' fad) \mg sold,} mi'4-- \mf r |
  R2.
  r8 lab,,--\pp \t {mi'( do sol')} r4 |
  r8 red( si') sol( \md red' si') | \mg
  r16 sib,,(\< fad' re' \md \t {si'!8 sol' red')\!} \mg \t {la,,,4-- dod'8} |
  \md r16 sib' red'8-. \mg \t {\t {la,,,16\mf la la} la8 dod'16 dod}
  \ttt {dod dod \md sib' \mg la,, dod' \md sib'} |
  \acciaccatura red'16\sfp \mg mi,,,2:32 \md r8 sol'-- |
  r16 fa( \mg lab,, \md sol'') \mg dod,8-- \md sol''--
  \lettersOn
  \tt {r16 \letter "r" fa \mg \letter "i" dod,
  \md \letter "s" sol'' \mg \letter "e" mi,,} |
  \ttt {\letter "d" re(\mp \lettersOff la' \md sol' re' la mi)}
  \ttt {dod'(\< sold' do, dod') mi,-. sold'-.\!}
  r sol,-. do,-. sold-. |
  \mg mi,8(\> dod' \md sold'4)\! r |
  \mg r r8 mi,8:32~\pp\< \ttt {mi16 sol sold do, dod mi} |
  \t {fa,8\mp( do' sol')} mi4:32
  \ttt {fa,16\< mi' dod' dod, sold' sold\!} |
  \t {r8 mi8:32\< dod16 do}
  \tt {mi \lettersOn
  \letter "c" do
  \letter "i" dod
  \letter "e" mi
  \letter "l" sold,}
  \lettersOff mi'8 \t {sol16 do, dod} |
  \t {fa,\p\cresc do' fa,} \t {dod' sol' dod,}
  fa32 do' \md dod sol' fa do' dod sol'
  \tt {red'16-.\fp la,-. sol'-. dod-. mi,-.} |
  \tt {red'-. \mg la,,( \md sol' dod mi,}
  \lettersOn
  \letter "v" red') \mg \letter "a" la,,(
  \letter "g" sol' \md \letter "u" dod')
  \mg \letter "e" mi,,4-- |
  \lettersOff

  %%% 3 %%%
  R2.*4 r4 mi2:32\p |
  \tt {r16 la,(\< sol' mi \lettersOn
  \md \letter "n" sib'')}
  \tt {r16 \letter "u" dod'\> \mg \letter "a" la,,,
  \letter "g" sol' \letter "e" mi~}
  \lettersOff mi4:32\! |
  \lettersOn
  \md \acciaccatura \letter "o" do''16-\dyn "f_subito" ^\sfz
   %% Apparently \dyn messes with \letters
  \lettersOff \lettersOn
  \tt {\mg \letter "i" dod,8-- \md \letter "s" sol''16(
  \mg \letter "e" mi,, \letter "a" la,)}
  \t {\md \letter "u" dod'''-> \letter "x" sold'->
  \lettersOff \mg re,,-\dyn "p_léger"}
  \md sol'-. do-. si-. re,-. la8-. |
  \mg r8 mi,8:32~ \t {mi8( la, sol')} \md
  \tt {r16 sib'\fp dod' \mg la,,,( sol')} |
  mi2:32 r4 |
  \t {r8 fa,(\pp mi')~} mi8:32\laissezVibrer r8 r4 |
  r8 \tt {mi32\< mi mi mi mi} \t {mi8 mi mi} mi\mp mi |
  R2. s4 r2 |
  R2. s2 r4 s2. |
  s4 \tt {sib'16(\> dod, la dod sib} la4:32)~ |
  la8-\dyn "al niente" r r2 |
  R2.

  %%% 4 %%%
  r2 mi'16\mp \md fa' fa \mg mi, mi \md fa' fa \mg mi,
  r4 mi16 \md fa' fa \mg mi, |
  mi\cresc fa, fa mi' mi mi mi mi fa mi mi fa
  \lettersOn
  \letter "c" do \letter "i" dod
  \letter "e" mi \letter "l" sold
  \lettersOff
  \md fa' \mg mi, mi \md fa' fa'-.\! \mg fa,,-. mi'-. \md r16 |
  \lettersOn
  \tt {<\letter "t" si'' si'>8-.\f
  \mg \letter "e" mi,,,-. \md
  \letter "r" fa''-. \letter "r" fa-. \mg
  \letter "e" mi,,-.} r1 |
  \lettersOff
  <si mi>16\mp fa <si mi> fa <si mi> fa <si mi> fa r8 s r4
  <si mi>16\mp fa <si mi> fa r8 s |
  s4 r8 s s4 <si mi>16\mp fa <si mi> fa
  <si mi> fa <si mi> fa <si mi> fa <si mi> fa |
  <re' sol> fa, <re' sol> fa, <si mi> fa <si mi> fa
  <re' sol> fa, <re' sol> fa, <si mi> fa <si mi> fa
  \md fa'''\fp do sol' \mg mi,, <si mi> si <si mi> si |
  <re sol>\< <si mi> <re sol> <si mi> <re sol> <si mi> <re sol> <si mi>
  <re sol> <si mi> <re sol> <re sol> <si mi> <re sol> <si mi> <re sol>
  <si mi> <si mi> <re sol> <si mi> <re sol> <si mi> <re sol> <si mi> |
  <re sol>\f <lab reb> <re sol> <lab reb> <re sol> <lab reb> <re sol> <lab reb>
  <re sol> <si mi> <re sol> <si mi> <re sol> <re sol> <si mi> <re sol>
  <lab reb>\> <re sol> <lab reb> <re sol> <lab reb> <lab reb> <re sol> <lab reb> |
  <re sol>-- si fa <si mi>-- si fa <si mi>-- si
  fa--\p si fa fa fa fa fa fa fa4 r |

  %%% 5 %%%
  R1.*5
  r8 mib'(-\dyn "p_dolce" sib' sol re')
  mib,( \t {sib' sol re'}
  \md \t {fad) \mg sol, re'} mib,16 \md fad' \mg sol, re' |
  \md \tt {si'!8\mf \mg <mib,, sib'> <mib sib'>
  \md <si'! fad'> \mg <mib, sib'>}
  <sol re'>4 r r2 |
  R1.*2
  \t {r8 la,(\p mi'} \md \tupletDown \t {<sold' red'>) \mg si,, fad'}
  \md \t {<fad' dod'> \mg dod, sold'} \md
  \t {<sold' red'> \mg mi, si'}
  \md \t {<fad' dod'> \mg la, mi'} \md \t {<red lad'> \mg la mi'} |
  \md \t {<red lad'> \mg <la mi'> \md <red lad'>}
  \mg \t {<la mi'> \md <red lad'> \mg <la mi'>}
  \md <red lad'>16\> \mg <la mi'> \md <red lad'> \mg <la mi'>
  \md <red lad'>4\! \mg r2 \tupletNeutral |

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
  \tt {fa,,8\p lab sib re dod} \tt {mi fa, si re mi}
  \tt {sol\cresc fa, dod' re la'} |
  \tt {sib \md fa' \mg fa, do' \md reb}
  \tt {lab' \mg la, \md mi' fa do'}
  \mg r2 |

  %%% 7 %%%
  R2.*15 r2 s4 |
  mi,,2.:32~\pp mi4 r2 |
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
  r4 mi'2:32~\pp \t {mi8 mi mi} \tt {mi16 mi mi mi mi} mi8 mi |
  R2.*2
  mi2:32~ \t {mi8 mi mi} <la, mi'>4-- r2 |
  R2. s2 r4 |
  r4 r8 \t {mi'16 mi mi} mi4:32~ mi4 r2 |
  R2.*3
  fa8(\mp do' \md <fa lab>4)-- <fa lab>-- | \mg
  mi,8( si' \md <mi sol> \mg si \md <mi sol>4--) | \mg
  si,8( fad' \md <re' fad>4--) <re fad>-- | \mg
  si, \md <re' fad>-- <re fad>-- | \mg
  sib,8( sol' \md <do mi>4--) <do mi>-- | \mg
  la,8( sol' \md <dod mid>4--) <dod mid>-- | \mg
  re, \md <re' fad>-- <re fad>-- | \mg

  %%% 9 %%%
  re, \md <re' fad> \mg r |
  R2.*3
  \t {la,8(\mp mi' si'} \md \t {fad' dod' sold'} red'4--) | \mg
  r4 s2 |
  la,,,16\pp( mi' si' \md fad') \mg dod,( sold' \md red' mi dod' fad, \mg si, mi,) |
  \lettersOn
  \t {\letter "m" la,8( \letter "a" la' \letter "t" si,}
  \t {\letter "i" dod' \letter "n" sib, \md \letter "s" sol'')}
  \lettersOff
  \mg la,,16( mi' si' mi,) |
  \t {la,8\pp mi' la,} mi'-- la,-- r4 |
  R2.
  r4 s2 |
  r4 mi'2:32~\pp | \t {mi8\< mi mi} \tt {mi16 mi mi mi mi} mi8\> mi\! |
  R2.
  \lettersOn
  \letter "g" sol8\pp \letter "e" mi8:32~
  \t {mi8 \md \letter "h" si'' \letter "o" do'}
  \t {\letter "m" la16 \letter "m" la,
  \mg \letter "a" la,,} \letter "g" sol'8 |
  \letter "e" mi2:32~ \lettersOff mi4 |
  R2.*3 R2.*2-\fermataMarkup
}

%------------------------------------------------------------------%
