%-- Divertissement -- alto.ly --------------------------------------%
% (c) 2000-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Alto = \relative do' {
  \clef alto
  mib4--\ff\downbow re?--\downbow reb--\downbow r8 do lab4-.\upbow |
  sol2~\>-- -"ten." sol~ sol\! r2 |
  R2 |
  r4 sol--\mp r sol-- |
  r <re re'>-- <re dod'>-- <re do'>-- |
  r <re do'>-- r <re do'>-- |
  <sol re'>-- r <sib dob>~\upbow\p\<( \t {<sib dob> fa8-.)\!} |
  \t {sol sol(\< re')} sol4--\!
  \t {r8 sol,(\< re')} \t {sol4--\! re8-.} |
  \t {r sol,( do)} \t {fa(\< mi la)}
  \t {re(\! la mi} \t {sib-.-"(jeté)" mib,-.) r} |
  \t {r sol(\upbow do)} fa4-- \t {r8 sol,( do)} fa4-- |
  r <re, re'>-- <re dod'>-- <re do'>-- |

  %%% 1 %%%
  red--\downbow\f fa?--\downbow si?--\downbow r8 la do4-.\upbow |
  sol1*5/4--\<~ sol\> sol\p~ sol |
  do4:16-"trem., sul C"\pp reb: sib2.: |
  do4: reb: sib2.: |
  \t {do8 do do} reb reb sib16 sib sib sib
  \t {sib8 sib sib} sib sib |
  \t {do do do} reb reb sib16 sib sib sib
  \t {sib8 sib sib} sib sib |
  \t {do\cresc do do} reb reb sib16 sib sib sib
  \t {sib8 sib sib} sib sib |
  \t {do-> do do} reb-> reb sib4->\! r la16\< do re fa |
  sol8\fp re-. sol4-- re8-. sol4 re8-. sol-. r |
  sol8\cresc re sol4 re8 sol4 re8 sol r |
  r re sol-> re dod fad4-> do8 fa4-> |
  la,8\f re sol-> re dod fad4-> do8 fa4-> |
  r8 re\cresc sol4 fa,8-"détaché" sib mib lab reb re, |
  sol4--\mf \t {r4 re8} sol4-- \t {r4 re8} \t {sol( re dod} |
  \t {fad4) do8} fa4-- \t {r4 do8} fa4-- \t {r4 do8} |
  \t {fa4-- do8} \t {fa( \clef treble sib mib)}
  \t {lab(\< mib lab)} \t {reb(\> lab mib} sib)-.\! \clef alto re,,-. |

  %%% 2 %%%
  lab'4--\downbow\f mi--\downbow mib--\downbow r8 si' <fad dod'>4-.\upbow |
  sol--\mf r sol-- r <re sol>-- r <re re'>-- <re dod'>-- |
  <re do'>-- r <re do'>-- r |
  <re do'>-- r <mib re'>-- <reb si'>8-.\< re'-. |
  <fa, sol>4--\! r <mi sol>-- r |
  <re sol>-- r <dod sol'>-- r |
  <re sol>-- r <mib lab>-- <mib si'>8-.\< re'-. |
  <re sol>4--\! r <lab mib'>-- r |
  <fa sib>--~ <fa sib>8 r16 re sol8.-- do,16 fa4-- |
  <sol do fa>-- r <sol do fa>-- r |
  <re do'>-- \t {r do'8} <do fa>4-- r8 re,-> |

  %%% 3 %%%
  sol-\dyn "sfpp"( re') sol( re) sol,( re') sol( re) |
  sol,( re') sol( re) sol,( re') sol( re) |
  \t {sol,( re sol} \t {re sol re}
  \t {sol re sol} \t {re sol re)} |
  \t {sol( re sol} \t {re sol re}
  \t {sol re sol} \t {re sol re)} |
  \t {sol( re sol} \t {re sol re}
  \t {sol re sol} \t {re sol re)} |
  \repeat tremolo 8 {sol16 re'} |
  \repeat tremolo 8 {fa do} |
  <sol mib'>4--\f <sol mib'>8 <sol mib'>
  \t {<sol mib'> <sol mib'> <sol mib'>}
  <sol mib'>16 <sol mib'> <sol mib'> <sol mib'> |
  r4 la16\mp\< re, sold mi' do8\! r |
  sol4--\downbow\ff lab--\downbow fa--\downbow r8 mib-.\p |
  reb1*5/4-- | r2 r4 mib'-"pizz."--\mp r | do-- r1 |

  %%% 4 %%%
  R1 re,?1-"arco"\pp~ re2.\fermata r4 |
  r2 do~ <do sib'>~ | <do sib'>1~ <do sib'>4\fermata r4 |
  %% Courtesy of S. Prokofiev (hint: piano concerto #2)
  r2 re4-"(non legato)" do | re do re do |
  re do re do | re do re <fa do'> |
  <la mi'>( <sib mib> <la mi'> <sib mib>) |
  <la mi'>( <sib mib> <la mi'> <sib mib>) |
  <si fad'>( <reb lab'>) <si fad'>( <reb lab'>) |
  <si fad'>( <reb lab'>) <si fad'>( <reb lab'>) |
  <la sol'>-- r r2 |
  R1*11
  r2 do,(\p sol') r4 reb~( reb2 si'?~ si lab~ lab2. fa4~ fa2 solb sib\< la! mi' re)\! |
  R1 mib1\f R1 |

  %%% 5 %%%
  r2 re(\pp sol1~) sol2 r |
  dod,\mf\( red fad la, lab mi' re mib re1(\> mib)\)\! |
  r2 fa,4~\pp <fa sib>~ <fa sib>1 <re la'>2. r4 |
  %% I'm assuming there's a-->mib here (was: mi)
  \t {r4 si'8\mf\cresc} fad[ do] sib'2 mib,16[ sol'] fa,[ la lab mi] |
  dod2--\! re1-- |
  re4(\p-"flaut." do? re do <re sib'> <do la'> <re sib'> <do la'> |
  <sib' mib> <la mi'> <sib mib> <la mi'>) |
  R2 <reb, lab'>1-- R1 R2. <mib sib'>1-- |

  %%% 6 %%%
  %% Don't tell me you don't like to play barrés. You know you want to.
  <la mi'>2(\p <sib fa'> <solb reb'>2.) r4 |
  <mib sib'>2.( <sol re'>2) |
  R2
  <mi! si'!>2(\mp <fad dod'> <sol re'>) r |
  <fa do'>( <mib sib'>2.) |
  r4 la16\mp\< re, sold mi' do8\! r |
  sol4--\fp lab-- fa-- r sol-- lab-- fa-- r |

  %%% 7 %%%
  <sol re'>--\mf r <lab mib'>-- r | <fa do'>-- r r2 |
  <sol re'>4-- r <lab mib'>-- r | <fa do'>-- r r2 |
  <sol re'>4--\f r <mib lab>-- r <fa do'>-- r <sol re'>-- <sol re'>-- |
  <re do'>-- r <mib reb'>-- r |
  \t {<re do'>-- r mib2--(\upbow reb--)} |
  \t {sol8 sol(\mf re')} sol4--~ \t {sol8 sol,( re')} sol4--~ |
  \t {sol8 sol,(\< mib')} \t {lab( mi) mib,} <do' la'>4--\! r |
  \t {<sol do fa>4->-- sol8-.} do4-- \t {<re, sol fa'>4->-- sol8-.} do4-- |
  <fa, mi'>--\sf r r2 |

  %%% 8 %%%
  sib2-"sul C"( -\dyn "ff_intense" la4 | si mi fa reb2) |
  do4( mib fad, sold\> | re'2.*2/3) s4\! |
  r4 la16\pp re, sold mi' do8 r |
  sol1*5/4~\pp sol~ sol |
  mib4--\downbow\ff fa--\downbow si--\downbow r8 la do4-. |

  %%% 9 %%%
  sol16->\fp -"net" sol sol8-. r <re sol>-. sol16 sol sol8-. <do, sol'>4-- |
  <mib sib'>-- re8-. re-. sol4-. <do fa>-- |
  sol16-> sol sol8-. r <re sol>-. sol16 sol sol8-. <do, sol'>4-- |
  <mib sib'>-- re8-. re-. sol4-. <mi re'>->-- |
  <sol fa'>--\mf r <sol fa'>-- r |
  <fad re'>-- <fa re'>-- <sol do>-- <la re>-- |
  <fad red'>-- <fa mi'>-- <re do'>-- <mi si' fad'>->-- |
  sol-- r8 reb16\mp\< lab' mib'4.--\! reb,16 lab' mib'8-. re,-.\sf |
  sol4-- r8 reb16\< lab' mib'4.\! reb,16 lab' mib'8-. re,-. |
  sol8-.\sf reb16( lab') mib'8 re,-. sol-.\sf reb16( lab') mib'8 re,-. |
  <sol re'>4--\ff <fad red'>8-. <fad red'>-. <mib re'>4-- <fad dod'>8-. <fad dod'>-. |
  r4 r8 do4->--\upbow( si'8) | sol4-. |

  %%% 10 %%%
  R1*9/8 R1*4/8 R1*6/8 R1*1/8 R1*2/8 |
  re'8-.-"sul C"\p re-. re-. mib-. mib-. mib-. do-. do-. do-. |
  re-.[ re-. re-. re-.] | lab[ lab] sib[ sib] do[ do] | si'-. | sol,4-- |
  sol'8\mp sol sol lab lab lab fa fa fa |
  sol[ sol sol sol] | reb[ reb] mib[ mib] do[ do] | si'-. | sol,\< re' |
  sol\mf sol sol lab lab lab fa fa fa |
  sol[ sol sol sol] | reb[ reb] mib[ mib] do[ do] | si'-. | <re,, sol>4 --|
  do'8 do do reb reb reb sib sib sib |
  do[ do do do] | solb[ solb] lab[ lab] fa[ fa] | mi'-. | sol,!4-- |
  do8\f do do reb reb reb sib sib sib |
  do[ do do do] | solb[ solb] lab[ lab] sib[ sib] | fad'-. | sol,4-- |
  R4

  %%% 11 %%%
  r4. r4. r4 sol8->\mf |
  sol[ sol] lab[-> lab lab] fa[-> fa fa] sol[-> sol] |
  sol[ sol] reb[ reb] mib[ mib] do |
  si' sol[ sol] lab[ lab] fa |
  <la mi'>[ do,] do[ si'] sol[ sol] |
  fa\p sib mi fa, sib mi fa, sib mi fa, sib mi |
  dod[->\ff dod sol] dod[-> dod dod sol] |
  fa\p sib mi fa, sib mi fa, sib mi fa, sib mi |
  fa,\cresc sib mi fa, sib mi fa, sib mi fa, sib mi |
  dod[->\ff dod dod] | sol-. re'-. |
  do4.--\downbow\mf reb--\downbow sib--\downbow | do2--\downbow |
  re,4.(\ff mib do | re2) |
  fad4(\upbow si do,4.) |

  %%% 12 %%%
  <fa do' mi>4--\downbow\sf
  <fa do' mi>--\downbow\sf
  <fa do' mi>--\downbow\sf r8 fa'-.\mp reb4-- |
  <re, sol>2--\f r4 r8 re'-. |
  <re, sol>2-- r4 r8 re'-. |
  <re, sol>2-- r4 r8 re'-. |
  sol,4--\ff re8 la' mi' si' fad' reb,-> |
  <sol, sol'>4->--
}
