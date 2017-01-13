%-- Arkipel -- cbI-1.ly -------------------------------------------%
% (c) 2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Cs =
\relative do' {
  mi'2.\ppp\CaV~ mi~ mi~
  mi2 mi4--~ mi2 mi4--~ mi2 r4
  mi2.~ mi mi
  r4 sol2~\mp\downbow ^"solo"
  sol2 sol4--\< sol-- sol(-- sol--)
  sol2(\>^"espr." fa4~ fa2.) r4\! mi2\upbow\<
  fa4(\mp sol2)~ sol2.~ sol2 r4
  r2 sol4~\downbow sol2 sol4--\<
  sol-- sol(-- sol--)
  sol2(\> fa4~ fa2.~ fa4)\! r mi~\downbow
  mi2 fa4~ fa2.\<
  sol2.~\p sol2 r4
  r mi8(\mf\<\downbow dod) mi( dod mi4)
  sol4--\! r8 fa~ fa4
  sol8( lab) fa4-- r8 lab(\upbow sib4)
  sol-- r8 fa~ fa4~ fa2 mi4~\p\< ^"espr."
  mi8 fa4.~ fa4 sol2~\>
  sol2.~ sol8 mi(\pp sol mi sol4)
  sol8( mi sol mi sol4)
  sol8( mi sol mi sol4)
  sol8(\cresc mi sol mi sol4)
  sol8( mi sol mi)
  r4\! mi8(\<\upbow dod mi4)
  <fad, si>2--\mf r4
  q4.-- q--
  r8 q~-- q2
  q4->-- r8 mi\p ^"pizz." re si
  \clef bass
  dod fad, dod' fad,
  r dod' fad, dod'
  fad,4 r8 dod'
  fad, dod' r4
  r fad,8(\mp ^"arco" la) mi4
  red8^"pizz." dod' sold dod
  r red, dod' sold
  dod4 sold8 dod
  sold4 dod8 sold
  si?4 mi8 si
  \clef treble
  r la'4\<\downbow ^"arco" do(-> lad8)
  red2.~\mp red2 r8 red~
  red4 sold,( red'8) r
  mi( dod4) sid8
  red2.~^"ten." red2 sold,8 red'~\downbow
  red4 dod\downbow sid8-. red(->~
  red mi) re( dod)
  mi4.-- la,8-. mi'(->\downbow si) re4--\downbow
  dod8 mi4(-> fa8) re( si)
  mi4--\downbow mi8(\downbow re-.)
  mi(\downbow re) dod-. mi4--\downbow fa8-.
  re( sol-.) fad(-. fa-.)
  mi4--\downbow r8 re4->\downbow dod8-.
  mi( fa-.) re4--\downbow r8 mi4\downbow re8-.
  fad4.->-- mi8(~\upbow mi4~ mi red) fad(
  sol) mi2\upbow red4( fad2~
  fad8) sol-.\upbow mi-. red-. r4
  <mib sol>->-- \dyn "f_molto" q2->-- q->-- q4->--
  \t 4 {r mi8(\< dod) fa( re)}
  <mib sol>4->--\! q2->-- q->--
  r8 mi:16\< red: fad:
  \t 4 {
    sol(\! mi sol) mi( sol mi)
    sol( mi sol) mi( sol mi)
    sol( mi sol) mi( sol mi)
    sol( mi si) sold( si mi)
  } sol(\mf mi) sol( mi)
  sol-- r sol(\downbow mi) sol( mi)
  sol-- r sol(\downbow mi) sol( mi)
  sol4-- r2
  fa4.(\f sol8~ sol2~^"ten." sol4) r
  R2*3 R2.*2
  \clef bass
  \t {fad,,,4->\downbow\ff fad8->\downbow}
  r fad->\downbow r4 fad->\downbow
  r8 lad-.\upbow\< red16 mi fad la
  \t {fad,4->\!\downbow fad8->\downbow}
  r fad->\downbow r fad->\downbow
  r lad16\< lad red red mi8
  \t 4 {r\! fad,-> fad-> r fad-> r}
  dod''16-> si lad8 r re16-> dod si lad r8
  mi'16(-> re) mi si->(
  la) si sib(-> lab) sib fa(-> mib) fa
  \improvisationOn
  \t {mi,4\f ^"perc." mi8} r mi
  \improvisationOff
  r do'16\< do fad fad si8
  \improvisationOn
  \t {mi,,4\! mi8}
  \improvisationOff
  r mi'16\< fa sol sold lad si
  fad,->\! mid' fad,-> mid' sold la sid dod
  fad,,-> mid' fad,-> la' si\< re mi sol
  fad,,->\! mid' fad,-> la' dod\< mi sold si
  mi,,\! la si do dod[ fad sol\< sold
  \clef treble
  lad red]\! \clef bass mi,,[ sol la dod re fa]
  \clef treble fad lad sid red
  \clef bass mi,, sol si do
  \clef treble re[ fa sol lab
  do mib] \clef bass mi,,[ sol
  la si do dod] re8 r r4
  \clef treble
  \ttt {mi''16(->\ff red re dod\< re red)}
  \ttt {mi(\! red re dod\< re red)}
  \ttt {mi(\! red re dod\< re red)}
  \ttt {mi(\! red re dod_"simile" re red)}
  \ttt {mi( red re dod re red)}
  \ttt {mi( red re dod re red)}
  \ttt {mi( red re dod re red)}
  \ttt {mi(\sfp red re dod re red)}
  r2 r4 \t {dod16(-> do si)} r8
  r \t {re16(-> dod do)} r4
  <mi, sol>8.->--\ff q16 q8-.
  <fa sol>4->-- q->-- <mi sol>8->-. q2.->--
  r2 \ttt {dod16(\sfp do si sib si do)}
  r8 \t {lab'16(-> sol fad)}
  r4 \t {si16(-> sib la)}
  r8 r \t {dod16(\upbow do si)}
  \ttt {mi(->\ff red re dod re red)}
  \ttt {mi( red re dod re red)}
  \ttt {mi( red re dod re red)}
  \ttt {mi( red re dod re red)}
  \t 8 {
    \halfBeat
    mi(\fp red re) re( dod do)
    do( si sib) sib( la lab)
    lab( sol fad) fad( fa mi)
  } mi8 \t {sol16(\upbow fad fa)}
  r8 \t {sol16(\upbow fad fa)}
  \fullBeat
  \ttt {sol(\p\< fad fa mi fa fad)}
  \ttt {sol( fad fa mi fa fad)}
  \ttt {sol( fad fa mi fa fad)}
  \ttt {sol(\ff\> fad fa mi fa fad)}
  \ttt {sol( fad fa mi fa fad)}
  \ttt {sol( fad fa mi fa fad)}
  \ttt {sol(\pp fad fa mi fa fad)}
  \ttt {sol( fad sol fad sol fad)}
  \repeat tremolo 2 {sol16( fad)^"simile"}
  \repeat tremolo 6 {sol fad}
  \repeat tremolo 6 {sol fad}
  \repeat tremolo 6 {sol fad}
  \repeat tremolo 4 {sol fa}
  \repeat tremolo 2 {mi fa}
  \repeat tremolo 6 {mi fa}
  \repeat tremolo 6 {mi? fa}
  \repeat tremolo 6 {mi fa}
  \repeat unfold 7 \ttt {sol( fad fa mi fa fad)}
  \repeat tremolo 2 {sol( fad)}
  \repeat tremolo 2 {mi^"simile" fa}
  \repeat tremolo 2 {sol fad}
  \repeat tremolo 2 {mi fa}
  \repeat tremolo 2 {sol fad}
  \repeat tremolo 2 {mi fa}
  \repeat tremolo 2 {sol fad}
  \t {sol8--\< sol(-- sol--)}
  fadd->\f^"solo" sold,(-. dod,-.) mid'4-> sold,8-.
  fadd'(-> sold-.) dod,,-- mid'-. sold,-- fadd'(
  sold) mid-. dod,--\downbow mid'-. sold, redd'-.
  fadd( sold) mid-. dod,-- sold''( lad)
  sold->-. sol4->-- fa->-- mi8-.
  <dod sol'>4\downbow \dyn "f_sempre"
  <si fa'>\downbow mi8-. <dod sol'>(\downbow
  sold') <si, fa'>4\downbow
  <sib mi>8-. <dod sol'>( sold')
  lad-- <dod, sol'>-- <si fa'>-- mi--
  do'(-.\upbow sib-.
  la-.) <dod, sol'>4\downbow
  <do fad>8-. <mib la> (\downbow sib')
  la-. <dod, sol'>4\downbow
  <do fad>8-. <mi sib'>(\downbow la)
  <dod, sol'>4--\> <do fad>-- <si fa'>--
  <mi sib'>8->\! <re sold> <do fad>
  <mib la>-> <dod sol'> <si fa'>
  <sib mi>->\dim <la red>4--\upbow
  <sold re'>8\upbow
  <sol dod>-> <fad do'>4-- <fa si>8~\downbow
  q2~\mp q~ q~ q r4
  R2.*2
  \improvisationOn
  do8^\dyn "mp_strict" do r2
  R2. do4 r2 r4 r8 do r4 r do r16 do r8
  \improvisationOff
  sol'16(\fp lab) sib(-. sol-.) fa8--\downbow
  mi16(\dotsDown sol) lab-. fa8(\downbow mi16-.)
  sol\<\downbow lab sib dob
  sib\fp lab sol fa sib lab sol fa
  sib\cresc lab sol fa sib lab sol sib lab sol lab sol
  mi( sib') sol lab \clef bass fad,,
  \clef treble red''' dod( do)
  re,( si') la( fa)
  sib( mi,) sol fad sold \clef bass si,,
  \clef treble dod'' re do mib( fa) la,,
  sol''-. do,-. fa( mi) la(-.\upbow re,-.)
  sold( fad) si(-. red,-.) lad'-- dod--
  <>\ff
  \repeat unfold 7 \ttt {mi( red re dod re red)}
  r8 fa,,16\< do' dod sold' la8
  <>\ff
  \repeat unfold 4 \ttt {mi'16( red re dod re red)}
  \t {r8 fa,,\<\upbow la} \t {dod4 re red}
  <>\ff
  \repeat unfold 3 \ttt {mi'16( red re dod re red)}
  \clef bass
  r8 fad,,,4.--\mp\upbow
  r4 dod'-\harmonic ^"pizz." r
  R2.*4
  r2 r8 la\p ^"(pizz.)"
  \t {r4 mi si} r r r8 fad r4
  R2. r8 fad \t {mi'4 si la'}
  R2. \clef treble
  r4 do''(\upbow\dyn "mp_solo" ^"arco" sib)
  la( sol2) fad(^"espr." mi4)
  red2.~ <la red>2.~ q2 r4
  r si'2\p\downbow lad( sold4)
  si(\< dod) sib~ sib2\! sib4
  lab4.(\>\upbow sib)
  sol2.~\pp <re sol>~ q2 sol4~
  sol2 mi4 sol2.~ sol2 r4
  r dod2\<\upbow dod4-- dod(-- dod--)
  dod4.(\mf do8~ do4)
  \tuplet 4/3 {r sib(\upbow reb mib)}
  do2.~ do4 mi( re)
  dod2.( si)~ <mi, si'>~ q2 <mi, si'>4--\upbow
  q-- q(-- q--) r
  sol'2\f fa4(~ fa8 mi) sol\< lab sib4\!
  r8 la4(-> sol8) sib( do) la4--\upbow
  \t {sold4(\> si8)\!} r4
  la8(\upbow sold) fad-- fa-- sol4--
  r8 fa4(\upbow\dyn "(f)" mi8) lab\< sib
  \t {sol4(-- la--) dod--\!~}
  dod2~ <mi,\harmonic dod'>~ q4 r
  mi'8:16\ff\> re: dod: re: dod: si:
  mi: re: dod: re: dod: si:
  sib:\mp la: sol: la: sol: fad:
  sib: la: sol: la: sol: fad:
  dod'4\dyn "mf_(solo)" sid4.( lad8)
  dod( red) sid4( lad)
  r8 dod sid( lad) r red(
  sid lad sold) dod( sid lad)
  sol?2.(~ sol4 fa) sib
  mi,2.~\dyn "mf_intenso" mi4
  r8 sib'4(\upbow fa8)
  sol2.(~ sol8 fa!) \t {sib4( dod) sol~}
  sol2.~ sol4 r fad8(\>\upbow mi)
  \t {red4( dod8~}
  dod4) re mi(\mp fa2)~ fa2.~ fa~
  fa~ fa~ fa~ fa~
  fa~ fa2 r4 R2.*2
  r4 r8 si~\upbow\dyn "mp_solo" si4
  si--\< si(-- si--)
  si2(\! ^"espr." la4~ la2) r4
  r sol2\upbow la(\> si4)~ si2.\!~ si~ si2 r4
  r si2 si4--\< si(-- si--)
  si4.(\! la8~ la4~ la2)
  r4 r8 sol(~ sol4 la~
  la) si2~ si2.~ <sol si>~ q~ q~ q~ q r4
  la,4(\pp fad la fad la fad)
  la( fad la fad la fad)
  sold( mid sold mid fad mid)
  \clef bass
  r4 r8 si,4.\p\CaV\laissezVibrer ^"pizz."
  mi2\ppp\CaV\laissezVibrer s4
  \clef treble
  <>^"arco"
  mi''2.~\CaV mi~\CaV mi~\CaV mi4\CaV r8
  do\<^"pizz. al fine" mib fad
  sib4\mf r8 sib\> fad do
  mi,4\!\CaV r2 R2.
  r4 r8 dod'\< fa la
  do4\mp r8 do\> la dod,
  mi,4\!\CaV r2 R2.*2 r4 r8
  re'\p\> fa do' red4\! r2
}
