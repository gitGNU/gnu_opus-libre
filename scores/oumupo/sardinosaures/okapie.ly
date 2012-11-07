%-- Sardinosaures -- okapie.ly ------------------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

OkapieVoix = \relative do' {
  \time 4/4
  \tempo "Presto alla Poulenca" 4 = 96
  \dynamicUp
  r2 r4 r8 mi16^"leggiero"\mp sol |
  si8-- red,16 sol si8-- fad16 sol
  si8-- red,16 sol do8-- fa,16 la |
  si8-- dod16->\< mi, sold si8-. la16
  re8--\! r mi16-.\sf si-. sol-. mi-. |
  re8-- dod16 dod mi-. re-. re-. sol-.--
  r8 mi16\< la~ la fa sib8--\! |
  \time 3/4
  r8 sol--^"precioso"\mf \times 2/3 { lab\( do sol'} fa4\) |
  r8 sib,-. sol16-.\( sib-. re-. fa-. mib4--\) |
  red8\(\< mi4\! dod8 mi\> sib16\)\! do-. |
  mi16\fp^"secco" si sol mi re dod mi re sol8-- fa16\< sib--~ |
  \time 2/4
  sib lab lab lab reb4--\! |
  \time 3/4
  r8 sol,\(\mf lab do-.\) \times 2/3 { r sol'\(\> fa\!\)~} |
  fa sib,-. sol16\(-. sib-. re-. fa\)-. mib4-- |
  \times 2/3 {si!8\(\mp dod re\)~} \times 2/3 {re sib-- do--} r re-- |
  \time 2/4
  r dod-.\f mi16-> si-. sol-. mi-. |
  \time 4/4
  re-. dod-. mi-. sol-. la8-- sol16 sib--~
  sib mi,\> sol la do8-.\! mib16-> sib |
  fa'-> la, do sib fa'8-. lab,16-> do
  mib fa8-- do16 solb-.\< do-. fa-. solb-.\! |
  r4 r8 solb,16-.\p ^"semplice" lab-. solb-. fa-. mib-. do-. r4 |
  r2 r4 r8 mi16\p sol |
  si4-. r16 si red, sold do4-. r8 mi,16^"sempre stacc." sol |
  si8 mib,16 lab do8 fad,16 la dod\< dod dod la fa sib re8-.\! |
  \time 2/4
  la'4.\mf\( fa8\) |
  \time 3/4
  mi\( sol\) re16\( mi re8\> do16\)\! la-.[^ "secco" fa-. la-.] |
  \time 2/4
  reb8-. r sib'\(\mp solb\) |
  \time 3/4
  fa16\( lab reb,8\> do16\!\) r mi,\p sold do8-. red,16 sol |
  \time 4/4
  si si mi, fad sol-.\( sol-. la8-.\)
  si-. si16 si do8-.\> fa-. |
  \time 3/4
  mi8-.\! r r2 |
  \time 4/4 r2 r4 r8 r16 si\mf |
  mi-> si sol re dod8-- r16 sol'\<
  re si' mi8->\! r dod16-.\p sol-. |
  mi'-. sold,-. do-. mi->~ mi sib dod-. red-. mi\< si re mi fa4->-.\! |
  r2 r8 r16 mi,\f ^"risoluto" mi' sol, re si' |
  dod,8-> r16 fad\< dod' dod, lad' red mi4-.\! r |
  R1
  \bar "|."
}

OkapiePianoMd = \relative do' {
  \stemUp
  mi''16-.-5^(\p ^ "leggiero" si-.-3 fa-.-2 sib,-.)
  do'-.^( sol-. dod,-. fad,-.)
  \stemNeutral sold'-.( red-. la-. fad-.)
  <<
    { \voiceOne <mi mi'>4->-. } \\
    { \voiceTwo mi16 \mg \stemUp sib-. mi,8^>}
  >>
  \md \stemNeutral
  R1 r2
  sold''16-.\sfz mi-. si-. fa!-. sib,4-> |
  do16\pp ^"secco" sold si sol
  sib fad' la fa
  sold mi' sol red
  fad(-.\< dod'-. re-. la')-.\! |
  r8 <lab,,, mib'>(\mp <do sol'> <lab' mib'>) <dod sol'>(\> re\!) |
  r <sol,, re'>( <sib fa'>) <mi reb'>( <fad sib> <sol mi'?>) |
  sold,(\< <la mi'> <dod sold'> <la' mi'>)
  <dod-2 sold'-5>16-.\fp dod-.-3 sol-. re-. |
  \mg \stemUp
  <fad, lad>16\p <fad lad> dod <fad lad> <fa la> <fa la>
  re <fa la> <fad lad> <fad lad> dod <fad lad> |
  la \md \stemNeutral fa' sold mi
  la(-.\< mib'-. sib'-. solb')-.\! |
  r8 <lab,,, mib'>(\mf <do sol'> <lab' mib'>) <si sol'>( re) |
  r <sol,, re'>( <sib fa'>) <re sib'>( <mi? reb'> <fad do'>) |
  <sol si>(\> <re fad> <si la'> <re sol> <mi dod'> <la mi'>) |
  <dod la'>16-.\fp fad-. re-. la-. s4 |
  \mg \stemUp
  <sold, si>16^\p ^"non legato" <sold si> red <sold si>
  \md \stemNeutral
  <fa re'>->( dod') mi sol la
  \stemUp fa, \stemNeutral sold si? dod-4 <si-1 mi-3> <dod sol'> la' |
  <sib do> <la fa'> <la fa'> <do mib>
  <la fa'>->( mib' sib) <do lab'>->(
  mib\< fa) <mib si'>->( solb lab) <do, reb'>-. <si' re>8-.\! |
  R1
  mi16(-.\mp si-. fa-. sib,)-. do'(-. sol-. dod,-. fad,)-.
  sold'(-. red-. la-. fad)-. <mi mi'>-> sib'-. mi,8-> |
  \clef bass
  <sol, si>16 <sol si> mi <sol si> <lab do> <lab do> red, <lab' do>
  <sol si> <sol si> mi <sol si> <lab do> <lab do> red, <lab' do> |
  <si red> <si red> sold <si red>
  <do mi>\p sol <mib' sol-5>( <mi sold-4>)
  \clef treble
  dod <fa la-5>( <fad lad-4>) mi
  <sol si>( <lab do>) re,-. dod'-. |
  <la fa'>(\mf <sib re> <sib re> <la fa'>
  <la fa'> <sib re> <sib re> <la fa'>) |
  <sib reb>( <sol mi'> <sol mi'> <sib do> la dod,)
  <sold do>[^ "secco" <sold do>]
  \mg \stemUp mi \md \stemNeutral
  <sold do> <sold do> sib |
  <dob solb'>( sib') <sib solb'>( <dob mib>
  <dob mib> <sib solb'>) <sib solb'>( <do mib>) |
  <solb mib'>( <sib do>) <fa do'>( <solb sib>)
  <do, sib'>( <mib solb>)
  \clef bass <lab, do>[^ "secco"\> <lab do>] mib <sol si> <sol si> mi |
  <sib' re>\p <sib re> fa <sib re> <la dod> <la dod> fad <la dod>
  <si red> fad <si red> <sib re> sol\< <sib re> <mi sib'>8-.\! |
  \clef treble \ottava #1
  mi'''16(-.\f si-. fa-. sib,)-.
  do'(-. sol-. dod,-. fad,)-.
  sold'(-. red-. la-. re,)-.
  \ottava #0 \clef bass 
  r8
  <<
    { \voiceOne <re,, sol si!>8^. <re sol si>4^>^- } \\
    { \voiceTwo <solb, sib mib>8 <solb sib mib>4 }
  >>
  r8
  <<
    { \voiceOne <sold' dod mi>8^. <sold dod mi>4^>^- } \\
    { \voiceTwo <do,! fa la>8 <do fa la>4 }
  >> |
  r8 << { \voiceOne <re sol si!>^. } \\ { \voiceTwo <solb, sib mib> } >>
  r << { \voiceOne <sold' dod mi>^. } \\ { \voiceTwo <do,! fa la> } >>
  r <re sol si>^. <sold la do!>4^- |
  \clef treble
  r16 <la sib re mib fad>-.[ r <la sib re mib fad>-.
  r <la sib re mib fad>-. r <la sib re mib fad>-.]
  <fa' la>-.^"leggiero" <mib si'>-. <solb sib>-. <fa reb'>-.
  <lab do>-. <sol red'>-. <si red!>-. <sib fad'>-. |
  r4 \ottava #1 sib'''16(-.\sfp mi,-. sib-. mi,)-.
  do'(-. fa,-. si,-. fad)-. sold'(-. dod,-. sol-. re)-. |
  \ottava #0 mi'(-.\< si-. fa-. sib,)-.
  do'(-. sol-. dod,-. fad,)-. sold'(-. red-. la-. re,)-.\!
  r8 <sid dod>--\f | <la re>-- <sol do mib>16 fa'
  <sold, dod fad>4-.
  r8 <sol do mi>->-- \ottava #1 mi''''4-.
}

OkapiePianoMg = \relative do' {
  \clef bass
  mi16-.
  \md \stemDown
  si'-. r8
  \mg \stemNeutral
  sold,16-. red'-. \md \stemDown la'8-.
  \mg \stemNeutral
  do,,16_(-. sol'-. dod-. re)-. r16 \stemDown sib,-. mi,8_> |
  <<
    { \voiceOne
      <sol' si>16^\p <sol si> re? <sol si> <fad lad> <fad lad> red <fad lad>
      <sol si> <sol si> re <sol si> <fad lad> <fad lad> red <fad lad> |
      <sol si> <sol si> re <sol si> <fad lad> fad lad re
      <fad, si>16 <fad si> re fad <sol? sib> <sol sib> sol sib
    } \\
    { \voiceTwo
      <mi,, red'>4-- la,?-- <mi' red'>-- la,-- |
      <mi' re'!>-- la,-- re'4-- la,-- } 
  >> | \stemNeutral
  mi'16 mi' red mi fa re' dod re do, si' sold sol mi8-. si-. |
  <<
    { \voiceOne
      r8 do^( mib4) r8 fad s2 mi8^( sib')
      r dod, r fa
    } \\
    { \voiceTwo
      <fa,, fa'>2-- <si si'>4--
      \oneVoice <mib, mib'>4.-- <do' do'>8--~ \voiceTwo <do do'>4
      <fad, fad'>4-- <sib sib'>2--
    }
  >>
  \stemDown
  <si si'>4--_"pesante" mi,-- si'-- |
  mi16_(-. \stemNeutral si'-. fa'-. sib)-. re8-. si,-. |
  <<
    { \voiceOne
      r8 do^( mib4) r8 mi
      s2 sol8^ ( sib)
      r si,^( sol'4)
    } \\
    { \voiceTwo
      <fa,, fa'>2-- <la? la'?>4--
      \oneVoice <mib' mib'>4.-- <do do'>8--~ \voiceTwo <do do'>4
      <mi, mi'>2--
    }
  >> <sib' sib'>4
  <re, re'> \md mib'''16(-.
  \mg sold,-. do,!-. red,)-. |
  \stemDown mi4-- \stemNeutral
  sib'8-. mi,-. fad'4*1/4(->
  \md \stemDown
  \hideNotes fa4*3/4) \unHideNotes
  \stemNeutral \mg
  sib,16(-> la) do? red |
  <mi, fa'>8-. sib'-. <sol fad'>-. do-.
  <la si'>-. mib'-. <sib reb'>-. fa'-. |
  R1
  mi,16(-. la-. mib'-. sib')-. sold,(-. dod-. sol'-. re')-.
  do,(-. fa-. si-. re)-. r mi,-. mi,8-> |
  sib8-. la'-. <fa, dod'>4-- <sib la'>-- fa8-. fad'-. |
  sib,-._\pp <re la'>-. fa,-. <dod' fad>-. sib-. <re la'>-. fa,-. <fad' dod'>-. |
  <<
    { \voiceOne
      r8 re'^( la' sib)
      r sol^( sib) s4.
      r8 solb^( dob) r
      fa,^([ sib])
    } \\
    { \voiceTwo
      <sol,, sol'>2-- <do do'>4.-- \voiceOne fad,8->-.
      \voiceTwo r16 \oneVoice <si dod'>8._\sfz
      \voiceTwo
      <lab lab'>4.-- <mib' mib'>8--~ <mib mib'>4
    }
  >> r8 la,->-. r16 re8.-> |
  sold4-- red'-- sold,-- do,?-- |
  <mi mi'>8-. r \clef treble
  <re'' fad la dod>-.--\arpeggio r
  <lab do mib sol>-.--\arpeggio r |
  \clef bass
  dod,,4->\sustainOn ^\f r\sustainOff sol->\sustainOn r\sustainOff |
  dod-- sol-- r8 dod-. <sol' dod mi fa>->--( sol,) |
  dod-.-- sol-.-- dod-.-- sol-.-- dod'16-. sol-. re'-. la-. mi'-. si-. sol'-. re-. |
  r4 \clef treble mi'16(-. sib'-. mi-. sib')-.
  dod,,(-. fad-. do'8-.) sol,16(-. do-. fad-. dod')-. |
  \clef bass
  mi,,(-. la-. red)-. r sold,-.( red'-. la'-.) r do,-. sol'-. r8
  r8 <sol, lab>-- | <do, fa>-- <lad si>16 fad <re sol do>4-.
  r8 <mi' sold si>->-- \ottava #-1 mi,,4-.
}
