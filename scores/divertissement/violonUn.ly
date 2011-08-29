%-- Divertissement -- violonUn.ly ----------------------------------%
% (c) 2000-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

ViolonUn = \relative do' {
  fad4--\ff\downbow fad--\downbow fad--\downbow r8 fad re?4->\upbow |
  sol,2-- r1. |
  r4 \t {r re''8\mp\upbow} |
  sol4-- \t {r re8} sol4-- \t {r re8} |
  \t {sol( re dod} \t {fad4) do8} fa4-- \t {r do8} |
  fa4-- \t {r do8} fa4-- \t {r do8} |
  \t {fa( sib mib)} \ottava #1 \t {lab(\< mib lab)}
  \t {reb(\> lab mib} \ottava #0 \t {sib4)\! re,8} |
  sol4-- \t {r re8} sol4-- \t {r re8} |
  \t {sol( re dod} \t {fad4) do8} fa4-- \t {r do8} |
  fa4-- \t {r do8} fa4-- \t {r do8} |
  \t {fa( si, mi} \t {sib mib la,)}
  %% Weird enharmonic thing. But somehow I like it.
  \t {re-"(détaché)" sold, dod} \t {lab4 re,8-.} |

  %%% 1 %%%
  sol4--\downbow\f fad--\downbow fa--\downbow r8 fad re4-.\upbow |
  sol,1*5/4--\<~ sol\> |
  <sol re'>\p -"détimbré"~ <sol re'>~ |
  \t {<sol re'>8 q q} q q q16 q q q \t {q8 q q} q q |
  \t {q q q} q q q16 q q q \t {q8 q q} q q |
  %% Was --------> sol4. sol4 re8 originally. Hard to read.
  \t {sol sol( re')} sol4 r8 sol4(-- re8) r sol,-. |
  \t {sol sol( do)} fa4 r8 fa4(-- do8) r sol-. |
  \t {sol sol(\cresc re')} sol4 r8 sol4(-- re8) r sol,-. |
  \t {sol sol( do)} fa4\! r8 fa4(-- do8) mi?16\< lab do mib |
  %% 16th-notes tremolo isn't much. But makes for a cleaner look.
  <sol sol'>1*5/4:16\fp q: q:\pp q:
  <sol fa'>: <sol re'>:\p <sol mib'>: <sol do>2.\upbow\< r4\! r8 re-. |

  %%% 2 %%%
  %% Was originally--> <la,reb>4 |. Shame.
  fad,4--\downbow\f fad--\downbow fad--\downbow r8 fad la,?4-.\upbow |
  \t {sol-- re''8\mf} sol4-- \t {r re8} sol4-- |
  %% And now we're off-beat. Meh.
  \t {r re8} \t {sol( re dod} \t {fad4) do8} fa4-- |
  \t {r do8} fa4-- \t {r do8} fa4-- |
  \t {r do8} \t {fa(\< si dod)}
  %% Was:--> mib sib. Better use sharps everywhere.
  \t {fad(\> red lad)} \t {mi(\! si sold)} |
  \t {r4 re'8->} sol-> re, \t {sol4-- re'8->} sol-> re, |
  \t {sol,4-- re''8->} sol-> re, \t {sol4-- re'8->} sol-> re, |
  \t {sol,4-- re''8->} sol-> re, \t {re'4->\< sol,8} fa'4->\! |
  \t {r re8} sol4-- \t {r re8} sol4-- |
  \t {r re8(\upbow} sol2.)\< |
  \t {r8\! lab\p( si} \t {mi do sol)}
  \t {fad'( si, lab)} \t {sib( solb mib)} |
  \t {sol,(\< lab do} \t {mib si' re)} \ottava #1
  \t {sib'(\> fad mi} \ottava #0 \t {la,-.-"jeté"\! reb,-. fa,-.)} |

  %%% 3 %%%
  sol2.--~ -\dyn "sfp_legato assai" <dod, sol'>4~ <fa sol>2.\<~ <mi sol>4 |
  %% This looks awfully badly written.
  <re sol>2:16\<~ <re lab'>4:~ <reb lab'>: |
  <fa la>2:
  fa4\startTrillSpan
  sol\startTrillSpan
  \pitchedTrill do2\p\startTrillSpan reb
  \pitchedTrill mi\startTrillSpan fad |
  <la, la'>1:16\mp\<\stopTrillSpan |
  <re mib'>1*3/4\mf
  \pl { s4 lab'4--\f lab8 lab \t {lab lab lab} lab16 lab lab lab}
  {\graceNote mi4 \glissando lab4 lab8 lab \t {lab lab lab} lab16 lab lab lab} |
  %% Oh look: a twelve-tone series...
  sol,,16\p sib mib si do\< mi sold re la' dod fad fa' |
  sol2.\! r4 | R1*5/4
  %% Look! A Stravinsky quote...
  reb,,4-"pizz."--\mp r2 mib4-- r | do-- r1 |

  %%% 4 %%%
  R1*2
  mi2.-"arco, senza vib."\pp \fermata r4 |
  r1 r4 mib~ | mib2~ <mib reb'>~ <mib reb'>4\fermata r |
  R1*3
  %% This should be a tie (see upstream issue 1581).
  r2 lab~-"vibrato"\p lab \pitchedTrill do2(\startTrillSpan reb
  do)\> \pitchedTrill mi2\startTrillSpan fad |
  \ottava #1 la'1\!\CaV\stopTrillSpan ~ la\>\CaV |
  %% Was: mib. But it's much more fun this way:
  mi'?4--\!\CaV \ottava #0 r r2 |
  R1*3
  fa,,,2.\mp\( mi4 | fad2 si | do4\> lab2.\! |
  sol2.-"semplice" sib4 | reb,2 mib | la!1( | re,!)\)\CaV |
  R1*6 si'4(\pp mi, sib' do | mib\cresc solb, fa'2 |
  reb re4\! sol | la1\< sold)\mf | R1

  %%% 5 %%%
  <si,? mi\harmonic si''>1\pp~ <si mi\harmonic si''>2 r4
  <sib mib\harmonic sib''>4~ <sib mib\harmonic sib''>1
  do'2\mf\( fa fad re dod mi sol, la mib1(\> lab,)\)\! |
  R1 r2 dod\pp \ottava #1 si''2.\CaV \ottava #0 r4 |
  la,,,4.\mf \cresc sold'8 lad[ red,] mi do16[ si' re,8] fa[ sol] |
  dod,2--\! fad1-- |
  %% I'm actually unsure whether I did want harmonics here.
  <fa' sib\harmonic fa''>1(\pp <sol do\harmonic sol''> <mib lab\harmonic mib''>)
  R2 <fa do'>1-- R1 R2. <si, mi>1-- |

  %%% 6 %%%
  %% I may, or may not, have been listening to
  %% S. Reich's `City Life' prior to writing this.
  <fa sib>2(\p <sol do> <mib lab>2.) r4 |
  %% Was: <la,reb>4. Shame, shame.
  reb2.( <mi la>2) | R2
  <fa sib>2(\mp <sol do> <mib lab>) r2 |
  <mi la>( <si' mi>2.) |
  sol,16\p sib mib si do\< mi sold re la' dod fad fa' |
  sol4--\f r r2 | R1

  %%% 7 %%%
  %% Offbeat again. Let's just pretend it's on purpose.
  \t {r4 re,8\f} sol4-- \t {r4 re8} sol4-- |
  \t {r4 re8} \t {sol( re dod} \t {fad4) do8} fa4-- |
  \t {r4 do8} fa4-- \t {r4 do8} fa4-- |
  \t {r4 do8} \t {fa( sib mib)}
  \ottava #1 \t {lab( mib lab)} \t {reb( lab mib} |
  \ottava #0 \t {sib4) re,8} sol4-- \t {r4 re8} sol4-- |
  \t {r4 re8} \t {sol( re dod} \t {fad4) do8} fa4-- |
  \t {r4 do8} fa4-- \t {r do8} fa4-- |
  \t {r4 do8} \t {fa( sib mib)}
  \ottava #1 \t {lab( mib lab)} \t {reb( lab) mib}
  \ottava #0 <sib, si'!>4-"détimbré" --\p r8 <si! sib'>-.
  <sib si'!>4-- r8 <si sib'>-. |
  <sib si'!>4-- <si sib'>-- <do la'>-- r |
  r16 re'-"(ordin.)"\mp sol8~ sol4
  r16 re sol8~ sol4 | <sib,, si'!>--\sf r r2 |

  %%% 8 %%%
  sib,2-"legato molto"( -\dyn "ff_intense" la4 si mi fa reb2) |
  do4-"espr."( mib fad sold,\> | re'2.*2/3) s4\!
  sol,16\pp sib mib si do mi sold re la' dod fad fa' |
  sol1*5/4-\dyn "(pp_sempre)" sol,,,~ sol |
  sol'4--\downbow\ff fad--\downbow fa--\downbow r8 fad re?4-. |

  %%% 9 %%%
  r8 re'\f sol4-- \t {r4 re8} sol8.-- re16 |
  \t {sol8( fad) dod} fa-. do-. \t {sol4-- re'8} sol4-- |
  r8 re sol4-- \t {r re8} sol8.-- re16 |
  \t {sol8( fad) dod} fa-. do-. sol-> lab-> fa4->-- |
  r8 re'\mf sol4-- r8 re sol8.-- re16 |
  \t {sol8( fad dod} \t {fa do si}
  \t {mi sib mib} \t {la, re sol)} |
  <si,, la'>4-- <do sib'>-- <sol mib'>-- \t {lab'8( reb sol)} |
  sol,4-- r r r8 sib16\< mib lab8-.\! re,-.\sf |
  <sol,, sol'>4-- r r r8 sib'16\< mib lab8-.\! re,-. |
  %% Perhaps the two most useless bars I've ever written:
  sol-.\sf sib,16( mib) lab8 re,-.
  sol-.\sf sib,16( mib) lab8 re,-. |
  sol8\ff lab16( fa) sol8 lab16( fa)
  sol8\< lab16( fa) sol8 lab16 fa\! |
  R2. sol,,8-+ r |

  %%% 10 %%%
  sol'-.\pp sol-. sol-. lab-. lab-. lab-. fa-. fa-. fa-. |
  sol-.[ sol-. sol-. sol-.] | reb[ reb] mib[ mib] do[ do] | si'-. |
  sol, r | sol'-. -"du talon" r4 lab8-. r4 fa8-. r4 |
  sol8-. r r4 | reb8 r mib r do r | si'-. |
  sol,4 | sol'4.-"legato, ordin." lab fa | sol2 |
  reb4 mib do | si'8-. | sol, r |
  \times 3/2 {re'\mf re} \times 3/2 {mib mib} \times 3/2 {do do} |
  re4 re | lab8[ lab] sib[ sib] do[ do] | si'-. | sol,4-- |
  \times 3/2 {sol'8 sol} \times 3/2 {lab lab} \times 3/2 {fa fa} |
  sol[ sol sol sol] | reb4 mib do | si'8 | sol,4 |
  sol'8\f sol sol lab lab lab fa fa fa |
  sol[ sol sol sol] | reb[ reb] mib[ mib] do[ do] | si'-. |
  sol,4-- | r8 re' |

  %%% 11 %%%
  sol->\ff -"détaché" sol sol lab-> lab lab fa-> fa fa |
  sol[-> sol sol sol] reb[ reb] mib[ mib] do[ do] |
  si' sol,[ re'] <sol, sol'>[-> <sol sol'> <sol sol'>] <lab sol'> |
  <reb sol>[-> q q q q] <sol, sol'> |
  <sol sol'> <lab sol'>[ <lab sol'>] <reb sol>[ q q] |
  sol[\p dod,] sol'[ dod,] sol'[ do, re] sol[ do, re] sol[ dod,] |
  dod[->\ff dod sol] dod[-> dod dod sol] |
  sol'[\p dod,] la[ do re] sol[ dod,] la[ do re] sol[ dod,] |
  sol'[\cresc dod,] la[ do re] sol[ dod,] la[ do re] sol[ dod,] |
  dod\ff-> dod dod | sol4-- |
  sol'8\mf-> sol sol lab-> lab lab fa-> fa fa |
  sol[-> sol sol sol] |
  sol4.(\ff lab fa sol2) reb4(\upbow mib do4.) |

  %%% 12 %%%
  <sib' fad' si!>4--\downbow\sf
  <sib fad' si>--\downbow\sf
  <sib fad' si>--\downbow\sf r8 fa'-.\mp reb4-- |
  r2 r8 sib(\upbow\< mib[-.)\! re,]->\f |
  sol,-> sol16 do fa8-. sib,4.-- r8 re-. |
  sol4-- r r8 sib(\upbow\< mib[-.)\! re,]-> |
  sol,8.\ff sol16 re'8 la' mi' si' fad' reb-> |
  <sol, sol'>4->--
}