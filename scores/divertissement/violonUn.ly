%-- Divertissement -- violonUn.ly ----------------------------------%
% (c) 2000-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

ViolonUn = \relative do' {
  fad4 fad fad r8 fad re?4 |
  sol,2 r1. |
  r4 \t {r re''8} |
  sol4 \t {r re8} sol4 \t {r re8} |
  \t {sol re dod} \t {fad4 do8} fa4 \t {r do8} |
  fa4 \t {r do8} fa4 \t {r do8} |
  \t {fa sib mib} \ottava #1 \t {lab mib lab}
  \t {reb lab mib} \ottava #0 \t {sib4 re,8} |
  sol4 \t {r re8} sol4 \t {r re8} |
  \t {sol re dod} \t {fad4 do8} fa4 \t {r do8} |
  fa4 \t {r do8} fa4 \t {r do8} |
  \t {fa si, mi} \t {sib mib la,}
  %% Weird enharmonic thing. But somehow I like it.
  \t {re sold, dod} \t {lab4 re,8} |

  %%% 1 %%%
  sol4 fad fa r8 fad re4 |
  sol,1*5/4~ sol |
  <sol re'>~ <sol re'>~ |
  \t {<sol re'>8 q q} q q q16 q q q \t {q8 q q} q q |
  \t {q q q} q q q16 q q q \t {q8 q q} q q |
  %% Was --------> sol4. sol4 re8 originally. Hard to read.
  \t {sol sol re'} sol4 r8 sol4 re8 r sol, |
  \t {sol sol do} fa4 r8 fa4 do8 r sol |
  \t {sol sol re'} sol4 r8 sol4 re8 r sol, |
  \t {sol sol do} fa4 r8 fa4 do8 mi?16 lab do mib |
  %% 16th-notes tremolo isn't much. But makes for a cleaner look.
  <sol sol'>1*5/4:16 q: q: q:
  <sol fa'>: <sol re'>: <sol mib'>: <sol do>2. r4 r8 re |

  %%% 2 %%%
  %% Was originally--> <la,reb>4 |. Shame.
  fad,4 fad fad r8 fad la,?4 |
  \t {sol re''8} sol4 \t {r re8} sol4 |
  %% And now we're off-beat. Meh.
  \t {r re8} \t {sol re dod} \t {fad4 do8} fa4 |
  \t {r do8} fa4 \t {r do8} fa4 |
  \t {r do8} \t {fa si dod}
  %% Was: mib sib. Better use sharps everywhere.
  \t {fad red lad} \t {mi si sold} |
  \t {r4 re'8} sol re, \t {sol4 re'8} sol re, |
  \t {sol,4 re''8} sol re, \t {sol4 re'8} sol re, |
  \t {sol,4 re''8} sol re, \t {re'4 sol,8} fa'4 |
  \t {r re8} sol4 \t {r re8} sol4 |
  \t {r re8} sol2. |
  \t {r8 lab si} \t {mi do sol}
  \t {fad' si, lab} \t {sib solb mib} |
  \t {sol, lab do} \t {mib si' re} \ottava #1
  \t {sib' fad mi} \ottava #0 \t {la, reb, fa,} |

  %%% 3 %%%
  sol2.~ <dod, sol'>4~ <fa sol>2.~ <mi sol>4 |
  %% This looks awfully badly written.
  <re sol>2:16~ <re lab'>4:~ <reb lab'>: |
  <fa la>2:
  fa4\startTrillSpan
  sol\startTrillSpan
  \pitchedTrill do2\startTrillSpan reb
  \pitchedTrill mi\startTrillSpan fad |
  <la, la'>1:16\stopTrillSpan |
  <re mib'>1*3/4
  \pl { s4 lab'4 lab8 lab \t {lab lab lab} lab16 lab lab lab}
  {\graceNote mi4 \glissando lab4 lab8 lab \t {lab lab lab} lab16 lab lab lab} |
  %% Look, a twelve-tone series...
  sol,,16 sib mib si do mi sold re la' dod fad fa' |
  sol2. r4 | R1*5/4
  %% Look, a Stravinsky quote...
  reb,,4-"pizz." r2 mib4 r | do r1 |

  %%% 4 %%%
  R1*2
  mi2.-"arco" \fermata r4 |
  r1 r4 mib~ | mib2~ <mib reb'>~ <mib reb'>4\fermata r |
  R1*3
  %% This should be a tie (see upstream issue 1581).
  r2 lab~ lab \pitchedTrill do2(\startTrillSpan reb
  do) \pitchedTrill mi2\startTrillSpan fad |
  \ottava #1 la'1\CaV\stopTrillSpan ~ la\CaV |
  %% Was: mib. But it's more fun this way:
  mi'?4\CaV \ottava #0 r r2 |
  R1*3
  fa,,,2. mi4 | fad2 si | do4 lab2. |
  sol2. sib4 | reb,2 mib | la!1( | re,!)\CaV |
  R1*6 si'4 mi, sib' do | mib solb, fa'2 |
  reb re4 sol | la1 sold | R1

  %%% 5 %%%
  <si,? mi\harmonic si''>1~ <si mi\harmonic si''>2 r4
  <sib mib\harmonic sib''>4~ <sib mib\harmonic sib''>1
  do'2 fa fad re dod mi sol, la mib1( lab,) |
  R1 r2 dod \ottava #1 si''2.\CaV \ottava #0 r4 |
  la,,,4. sold'8 lad[ red,] mi do16[ si' re,8] fa[ sol] |
  dod,2 fad1 |
  %% I'm actually unsure whether I did want harmonics here.
  <fa' sib\harmonic fa''>1 <sol do\harmonic sol''> <mib lab\harmonic mib''>
  R2 <fa do'>1 R1 R2. <si, mi>1 |

  %%% 6 %%%
  %% I may, or may have not, listened to
  %% S. Reich's `City Life' prior to writing this.
  <fa sib>2 <sol do> <mib lab>2. r4 |
  %% Was: <la,reb>4. Shame, shame.
  reb2. <mi la>2 | R2
  <fa sib>2 <sol do> <mib lab> r2 |
  <mi la> <si' mi>2. |
  sol,16 sib mib si do mi sold re la' dod fad fa' |
  sol4 r r2 | R1

  %%% 7 %%%
  %% Offbeat again. Let's just pretend it's on purpose.
  \t {r4 re,8} sol4 \t {r4 re8} sol4 |
  \t {r4 re8} \t {sol re dod} \t {fad4 do8} fa4 |
  \t {r4 do8} fa4 \t {r4 do8} fa4 |
  \t {r4 do8} \t {fa sib mib}
  \ottava #1 \t {lab mib lab} \t {reb lab mib} |
  \ottava #0 \t {sib4 re,8} sol4 \t {r4 re8} sol4 |
  \t {r4 re8} \t {sol re dod} \t {fad4 do8} fa4 |
  \t {r4 do8} fa4 \t {r do8} fa4 |
  \t {r4 do8} \t {fa sib mib}
  \ottava #1 \t {lab mib lab} \t {reb lab mib}
  \ottava #0 <sib, si'!>4-"détimbré" -- r8 <si! sib'>-.
  <sib si'!>4-- r8 <si sib'>-. |
  <sib si'!>4-- <si sib'>-- <do la'>-- r |
  r16 re'-"(ordin.)" sol8~ sol4
  r16 re sol8~ sol4 | <sib,, si'!>--\sf r r2 |

  %%% 8 %%%
  sib,2-"legato molto" la4 si mi fa reb2 |
  do4-"espr." mib fad sold, | re'2.
  sol,16 sib mib si do mi sold re la' dod fad fa' |
  sol1*5/4 sol,,,~ sol |
  sol'4 fad fa r8 fad re?4 |

  %%% 9 %%%
  r8 re' sol4 \t {r4 re8} sol8. re16 |
  \t {sol8 fad dod} fa do \t {sol4 re'8} sol4 |
  r8 re sol4 \t {r re8} sol8. re16 |
  \t {sol8 fad dod} fa do sol lab fa4 |
  r8 re' sol4 r8 re sol8. re16 |
  \t {sol8 fad dod} \t {fa do si}
  \t {mi sib mib} \t {la, re sol} |
  <si,, la'>4 <do sib'> <sol mib'> \t {lab'8 reb sol} |
  sol,4 r r r8 sib16 mib lab8 re, |
  <sol,, sol'>4 r r r8 sib'16 mib lab8 re, |
  sol sib,16 mib lab8 re,
  sol sib,16 mib lab8 re, |
  sol8 lab16 fa sol8 lab16 fa
  sol8 lab16 fa sol8 lab16 fa |
  R2.

  %%% 10 %%%
  sol,,8 r | sol' sol sol lab lab lab fa fa fa |
  sol[ sol sol sol] | reb[ reb] mib[ mib] do[ do] | si' |
  sol, r | sol' r4 lab8 r4 fa8 r4 |
  sol8 r r4 | reb8 r mib r do r | si' |
  sol,4 | sol'4. lab fa | sol2 |
  reb4 mib do | si'8 | sol, r |
  \times 3/2 {re' re} \times 3/2 {mib mib} \times 3/2 {do do} |
  re4 re | lab8[ lab] sib[ sib] do[ do] | si' | sol,4 |
  \times 3/2 {sol'8 sol} \times 3/2 {lab lab} \times 3/2 {fa fa} |
  sol[ sol sol sol] | reb4 mib do | si'8 | sol,4 |
  sol'8 sol sol lab lab lab fa fa fa |
  sol[ sol sol sol] | reb[ reb] mib[ mib] do[ do] | si' |
  sol,4 | r8 re' |

  %%% 11 %%%
  sol sol sol lab lab lab fa fa fa |
  sol[ sol sol sol] reb[ reb] mib[ mib] do[ do] |
  si' sol,[ re'] <sol, sol'>[ <sol sol'> <sol sol'>] <lab sol'> |
  <reb sol>[ q q q q] <sol, sol'> |
  <sol sol'> <lab sol'>[ <lab sol'>] <reb sol>[ q q] |
  sol[ dod,] sol'[ dod,] sol'[ do, re] sol[ do, re] sol[ dod,] |
  dod[ dod sol] dod[ dod dod sol] |
  sol'[ dod,] la[ do re] sol[ dod,] la[ do re] sol[ dod,] |
  sol'[ dod,] la[ do re] sol[ dod,] la[ do re] sol[ dod,] |
  dod dod dod | sol4 |
  sol'8 sol sol lab lab lab fa fa fa |
  sol[ sol sol sol] |
  sol4. lab fa sol2 reb4 mib do4. |

  %%% 12 %%%
  <sib' fad' si!>4 <sib fad' si> <sib fad' si> r8 fa' reb4 |
  r2 r8 sib mib[ re,] |
  sol, sol16 do fa8 sib,4. r8 re |
  sol4 r r8 sib mib[ re,] |
  sol,8. sol16 re'8 la' mi' si' fad' reb |
  <sol, sol'>4
}