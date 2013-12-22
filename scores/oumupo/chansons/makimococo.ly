%-- Chansons Oulipiennes -- makimococo.ly -------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"
\include "articulate.ly"
MakimococoGrille =
\chordmode {
  do1*7/4:m s s la:m s
  do:m s s la:m s
  do:m s mib:m s sib:m mib:m s
  do:m s s s s fad:m s
  lab2*7/4 sib lab sib lab sib la1*7/4:m s
  do:m s mib:m s2*7/4 sib:m mib1*7/4:m re:m dod:m
  do:m s
}

MakimococoVoix =
\relative do' {
  \time 7/4
  \tempo 4 = 160
  \key do \minor
  r4 do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 do si do re
  mi1. r4 | R1*7/4
  r4 do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 do si do re
  mi1~ mi8 la si la si la |
  mi1. r4 |
  r do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 do si do re |
  mib4 r sib'8 reb4 do sib lab fa8 |
  r4 r8 fa solb lab solb fa mib4 solb8 sib4 reb8
  r8 do4 lab r8 fa2 r2 |
  r8 mib8 solb sib r mib, solb lab4 fa8 solb lab solb fa |
  mib4 mib8 solb sib mib, solb lab4 fa8 mib re mib fa |
  sol1. r4 |
  r8 do re do re do sol4 r8 re mib fa mib re
  do4 r sol'8 sib4 la8 fa4 sol re
  r4 do8 mib sol do, r4 mib fa r |
  r2 re r8 mib r8 fa mib re |
  reb1. r4 | R1*7/4
  r4 do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 do si do re
  mi2~ mi8 la si4 la2 si8 la |
  mi1. r4
  r do8 mib sol do, mib fa4 re8 mib fa mib re
  do4 do8 mib sol do, mib fa4 re8 do si do re |
  mib4 r sib'8 reb4 do8 sib lab4 fa8 r4 |
  solb4 sib8 reb4 do8 lab4 fa8 fa solb lab solb fa |
  mib4 mib8 solb sib mib, solb lab4 fa8 solb lab solb mib |
  re4 re8 fa la re, fa sol4 mi8 fa sol fa re |
  dod4 dod8 mi sold dod, mi fad4 fa8 mib re mib fa |
  sol!1~ sol8 do re do re do |
  sol1. r4
  r4 do,8 mib sol do, mib fa4 re8 mib fa mib re |
  do4 do8 mib fa4 r r sol-. do,-. \bar "|."
}

MakimococoPianoMd =
\relative do' {
  \key do \minor
  r2 <sol sib mib>4-. r8 <la do re fa>--~ q2 r4
  r2 <sol sib mib>4-. r8 <la do re fa>~ q2 r4
  r2 <sib re mib sol>4-. r8 <la do re fa>~ q2 r4
  r4 <do mi>8( sol' si <do, mi> <sol' si>)
  <do, re la'>4-. <do re fad>8( sol' la <mib fad> re) |
  <si do mi>( si <do mi> sol' si <do, sol' re'>-.) r
  <mib la re>4-- do'8 <dod re>( do fa, sol~) |
  sol2 <sol, sib mib>4-. r8 <la do re fa>--~ q2 r4 |
  r2 <re mib sib'>4-. r8 <do mi fa la>--~ q2 r4 |
  r2 <sib re mib sol>4 r8 <la do re sol>~ <la do re sol>2 r4 |
  r4 re'8( mi <si do sol'>-.) r si'8 <do, re la'>4--
  <la re fad> fad'8( sol la |
  fad re) mi( do sol <la re>-.) r <mi si'>4-- do'8( si sol fa sol~)|
  sol4. mib8 sib( fa' re la-.) r4 <lab mib'>-. <sib fa'>-. |
  <do re sol>4-- <sol do>8 <re' sol> r <sol, do re>-. r
  <mi' fa la>4.-- <sib mib fa sib>4-.-- <do fa sol do>-.-- |
  <sib fa' solb reb'>4\arpeggio \laissezVibrer
  sib8( mib solb sib, mib fa4) reb8( mib fa solb lab) |
  mib( reb do4) reb8( do lab sib) r reb( mib solb sib4) |
  r8 <mib, fa lab do>-. r <do mib fa lab>-. r4
  <lab reb>8( sib reb <do mib> <reb fa> solb <mib lab> <fa sib>
  mib4) r <reb mib solb sib>-. r8 <do mib fa lab>--~ q2 r4 |
  r2 <sib dob solb'>4-. r8 <lab sib fa'>--~ q2 r4 |
  r4 sol'8( sib re sol, sib <mi, fa la do>4) la8( sib la sol fa |
  <sib, re mib>4) <do mib>8( sol' <re sib'> mib sol <do, fa la>4)
  re8( mib re sib lab | sol2) <sib' mib>8\mp <re sol>4 <do fa>8
  <mi, la re>4 <re sol do>^(\> <sib mib sol>) |
  \clef bass
  <fa sol do re>4--\! <fa sol>8( <do' re>4) <sol la>8( <do re>4)
  <lab sib mib>-> <la sib fa'>-> mib'8 do |
  <fa, sol do re>4 <fa sol>8( <do' re>4)
  \clef treble <sib do>8( <mib fa>)
  lab,( <reb mib> <lab' sib>) r fa( sib do) |
  mi( dod la <si red>4-.) la8 mi'( dod la <si red>4-.) la8 mi'( dod  |
  la <dod sold'>) \times 2/3 {si'(\> fad sold} \times 2/3 {red mid do)\!}
  <si do fad>( la fad mi) <dod fad>4-- <re fad>-- |
  <lab do mib sol>4 r <do sol'> r8 <re fa>~q4 <mib fa>-- <re fa>-- |
  <do sol'>4-- r <do mib solb> r8 <do re fa>~q4 <re fa>8( mib <re fa>4) |
  <do mib sib'>4 sol'8 <mib sol lab do>4 re'8 <sol, lab do mib>
  fa'4 re16(\< do si8 do mi sol) |
  <si, do mi si'>4.\mf\arpeggio si'4-- lad8( si4-.)
  <do, mi sold do>4.\arpeggio do'4-- si8( |
  do4-.) <re, mib fad re'>2--\arpeggio <fad sol do>4(\>
  <si, do sol'> <fad la mi'> <mi si'>) |
  <mib sol>4-.\! re8( mib sib' re, mib <do mi fa la>4--)
  fa8( sol la sib re) | <fa, sib mib>4 sib8( sol mib) la( fa re)
  sol( mib do) fa( re sib |
  solb4) mib'8( solb sib mib, solb <fa lab>4.) r8 solb,( lab reb |
  mib4) <fa solb>8 <sib reb>4-> <fa lab>8 <do' mib>4-> <lab sib fa'>->
  r8 fa'(\> solb lab) |
  sib4.(\p mib,8)~ mib2. r8 sib'~ sib4 |
  la4( do8) sold4 re8~ re2 r8 mi'~ mi4 |
  red8( sold, dod,) si'( mi, la,) sold'(
  dod, fad,) mi'( la, re,) sib( si) |
  do4-- re8( mib sol sib, mib <la, do re fa>4) 
  re8( mib fa mib re) |
  do4-- re8( mib sol sib) r <fad' sol do> fa( mib)
  <la, mi' fa>( mib' sib sol) |
  do,2-- <sol sib mib>4-. r8 <la do re fa>--~q2 r4 |
  r4 r2 <la sib mib fa>4->-- q->-- r2
}

MakimococoPianoMg =
\relative do' {
  \clef bass
  \key do \minor
  do,,2 r r4 sib'-- si--
  do2 r r4 sib si
  do2 r r4 do_( si8 sib
  la2) <sol' do>4-. r8 <mi fad la>--~q4 mi, sol |
  la2 <sol' mi'>4-. r8 <fad la re>~-- q4
  <sib,, sib'>->-- <si si'>->-- |
  <do do'>2-- r r4 fad8( sol sib4) |
  <do, do'>2 r r4 \acciaccatura dod'8 re4-- do8-. sol-. |
  do,2-- r <do do'> si'8( sib |
  <la sol' do>2)\arpeggio
  <sol' do mi>4-. r8 <la re fad>--~q4 <lad, si>8( la mi la,) |
  la'2 <sol' do mi>4-. r8 <fad si re>~-- q4 <sib,, sib'>-- <si si'>-- |
  <do do'>2-- r r4 solb'8( fa mib sib) |
  do2-- r4 la'8( mi' la) sol,( re' sol) fa,( do') |
  <mib, mib'>2-- <reb' solb>4-. r8 <mib lab do>--~ q4 mib-. sib-. |
  mib,2 <fa' solb sib>4-. r8 <do mib fa>--~ q4 sib,-. reb-. |
  mib8 sib' r reb r do fa4.-- reb-- sib4-. |
  mib,2 r r4 reb'-- re-- |
  mib2 r r8 mib~( mib4 re8 reb) |
  <do, do'>2 <sol'' sib mib>4-. r8 <la re>--~ q4 sib,-. si-.
  do2 <re mib sol>8 mi r <fa sol>~ q4 do sol |
  do,2 <do'' fa>8 <sib mib>4 <la re>8 <sol do>4 <re la'>( sol,)  |
  <do, re'>2 do'4-. r8 do-. r4 solb( fa) |
  <do si'>4-. r <do sib'>-. r2 <do' sib'>4 <do lab'> |
  <fad, fad'>2 <si' dod sold'>4-. r8 <la dod red fad>--~ q4
  mi, mid | fad2 <sold' la mi'>4-. fad'8 <fad, sold si red>4
  dod8 fad( dod fad,4) |
  <lab, lab'>4 lab-. r lab8~ <lab sib'>4 mib'8
  <lab, sib'>( mib') <lab, sib'>( mib') |
  <lab, lab'>4 lab-. r lab8~ <lab sib'>4 mib'8
  <lab, sib'> mib'' <lab, sib'> mib |
  <lab, lab'>4 lab' <do sol' lab>8 lab mib' <lab, fa' sib>4 re8
  mib lab, lab, lab' |
  <la, la'>4\laissezVibrer do''8( mi sol do, mi <la, si fad'>~) q4
  sol, sold | <la, la'>4\laissezVibrer sol''8( do mi sol, si
  <fad la re mi>~) q4 sib,,8( sib') si,( si') |
  <do, do'>2-- <mib' sol>4-. r8 <fa la>~ q4 sib, si |
  do2 <sol' sib do>4-. r8 <mib fa la>~ q4 do, re |
  mib8( sib' fa' solb reb'4-.) r8 <mib, do'>~ q4 reb re |
  mib4 r <solb sib reb mib>4-. r8 <fa lab do mib>~q4
  sibb,( lab) | mib4\laissezVibrer mib'( <solb sib reb>)
  mib8 <fa lab do>4-- mib8 <fa lab do> mib <fa lab do>4-. |
  re,4 re'8( fa <la do>4) re,8 <fad sol si>4-- re8
  <mi sol si> re <mi sol si> re |
  dod4 dod,8 sold' <mi' sold si>( do4) <red fad lad>8~ q4
  <mib, mib'>4 <re re'>8 <reb reb'> |
  <do do'>2 <mib' sib'>4-. r solb8( fa mib re do sol) |
  do,2 <sol'' sib do mib>4-. r8 <fa la sib re>--~q4 sib,,\> si |
  do2 r r4\! sib'(-. si-. |
  do4--) r2 <sol, sol'>4->-- <sol sol'>->-- r2
}
