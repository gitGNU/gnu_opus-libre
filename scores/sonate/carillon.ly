%-- Piano Sonata -- carillon.ly ------------------------------------%
% (c) 2009-2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

TroisPianoMd =
\relative do' {
  %% FIXME: PianoStaff _should_ be reduced to one staff here.
  \override PianoStaff.SystemStartBrace #'collapse-height = #6
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \t {

  %%% 0x7 %%%
  <mi' sold si>4\f \stemUp <mi sold si>8
  red <do mi sold> red |
  <mi sold si> mi, <mi' sold si> 
  \tupletsOff
  do <si red sol> do |
  <mi sold si> \mg mi,, \md <mi'' sold si>
  la, <sib re fad> la |
  <mi' sold si> \mg fad, \md <la dod fa>
  \mg do, \md <dod red fad> \mg sib, | \md
  \stemNeutral \tupletsOn
  <mi'' sold si>4 \stemUp <mi sold si>8
  red <dod mi sold> red \tupletsOff |
  <mi sold si> mi, <red' sold si>
  re <si red sol> re |
  <mi sold si> \mg mi,, \md <re'' fad si>
  fa, <sib re fad> fa |
  <mi' sold si> \mg do, \md <red' sol si>
  \mg do, \md <sol' si red> \mg sib,, | \md
  \stemNeutral \tupletsOn
  <mi'' sold si>4 \stemUp <mi sold si>8
  red <do mi sold> red \tupletsOff |
  %%% blurgh.
  <mi sold si> mi, <fa' sold si> dod <si re fa> dod |
  <mi sold si> sib <mib do'> lab, <la fad'> sol |
  <re' fa sol dod> sib, <re' dod'> la <fad do'> la |
  <re sold dod> fad, <re' dod'> do, <sib' re> fad |
  <re' sol la dod> \mg red, \md <re' dod'>
  %%% blurgh.
  si <mib sib'> do' |
  <re, sol la dod> \mg red, \md <re' dod'>
  %%% blurgh.
  \mg mi,, \md <reb'' fa sol do> \mg si, |
  \md <re' sol la dod> \mg red, \md sib''
  \stemNeutral \tupletsOn
  do <re, sol la dod>4 |
  r8 <dob sib'> do' <re, sol la dod>4 <re dod'>8 |
  r <sol sib> do \tupletUp dod \stemUp fa4 |
  }
  \stemNeutral \tupletsOff \tupletNeutral
  \ottava #1 \acciaccatura {\stemDown fad16[ sol sold]}
  \t {
  \stemNeutral la8 fad mib \ottava #0 do la fad |
  mib do la fad mib do \clef bass la fad mib do la fad |

  %%% 1x7 %%%
  \mg \stemUp s8 fa, s <la si> s <la si> |
  s fa s <la si> s <la si> | \tupletsOn
  s <la' do>[ <sold si>] \tupletsOff s s <la si> |
  s mib s <la, si> s <la si> | \tupletsOn
  s <la' dod>[ <sold do>] \tupletsOff s s <sold do> |
  s <do mi>[ <si red>] s s <si red> |
  s <fad, re'> s <la si> s s | \stemNeutral
  }
  \md \acciaccatura {fad'''16[ sol sold]}
  \t {
  la8 fad mib do la fad mib do la fad do fad |
  \mg \stemUp s <sol, dod> s <la si> s <la si> |
  \md \clef treble \ottava #1 \stemDown
  <re'''' do'> <fad sold> <re do'>
  \ottava #0 \stemUp <lab,, solb'> <do re> <lab solb'> |
  \clef bass \mg s <lab,, do> s <la si> s <la si>
  s <la si> s \stemNeutral 
  \md <la'' si>^"loco" \mg si,,, \md <la'' si>
  \clef treble \stemUp
  s <la' mib' fa si> s <mib'' la si fa'> s s | \stemNeutral
  \clef bass \ottava #-1 reb,,,, \ottava #0
  mi''^"loco" mib \tupletsOn r si re |
  r <sol sib> <fad la> r <reb fa> <sol la> |
  \clef treble r <re' fad> <dod fa> r <la dod> <do fa> |
  r <sol' si> <fad lad> r <fa la> <do' mi> |
  r <si re> <fa' la> r <mi sol> <si' re> | \tupletsOff
  \ottava #1 r <la do> <mi' sol> r <la, si> <fad' la> |
  s2 r4 | \ottava #0

  %%% 2x7 %%%
  \tupletsOn
  <sib, reb fa> \stemUp <sib reb fa>8
  \tupletsOff la <fad sib re> la |
  <sib reb fa> \mg fa, \md <la' dod fa> fad <fa la dod> fad |
  <sib reb fa> \mg fa, \md <sib' reb mi> re, <fad la do> sol |
  \tupletsOn
  \stemNeutral <sib reb fa>4 \stemUp <sib reb fa>8
  \tupletsOff sol <mi sold do> sol |
  <sib reb fa> \mg fa, \md <la' dod fa> mi <red sol si> mi |
  <sib' reb fa> \mg fa,, \md <sol'' do fa>
  si, <sib mib lab> \mg re,\md | \tupletsOn
  \stemNeutral <sib'' reb fa>4 \stemUp <sib reb fa>8
  \tupletsOff  mi, <fa solb la> si, |
  <sib' reb fa> \mg fa,, \md <sib'' re fad> sol <fa la dod> mi |
  <sib' reb fa> \mg fa, \md <si' re sol> mi, <reb' mib fa> la |
  \ottava #1
  <mi' fad sold> \mg fa, \md <fadd' sold la> re <sold la sib> red |
  \stemNeutral <mi red'> \mg \stemUp la, \md \stemNeutral <mi' red'>
  \mg \stemUp fad, \md \stemNeutral <mib' do'> re' |
  <mi, red'> \mg \stemUp fa, \md \stemNeutral re''
  <mi, red'> \mg \stemUp dod, \md \stemNeutral <mi' red'> |
  \tupletsOn
  r <reb do'> re' r <mib, dod'> red' | \tupletsOff
  <fa, mi'> \mg \stemUp lad, \md \stemNeutral <fa' mi'>
  \tupletsOn r <re dod'> red' | \tupletsOff
  <fa, mi'> \mg \stemUp lad, \md \stemNeutral <mi' dod'>
  re' red <fa, mi'> \tupletsOn r red' mi
  <sol, fad'>4 <la sold'>8
  r <fa mi'> fa' <sol, fad'> <la sold'>4 \tupletsOff
  <mi' la>8 <dod fad> <sib mib> <sol do> <sib mib> <dod fad> |
  <mi la> <si fad'> <lab mib'> <fa do'> <lab mib'> <si fad'> |
  <re la'> fa dod sold mi do \ottava #0 |
  sol^"loco" mib si fad re sib |
  }

  %%% 3x7 %%%
  \clef bass r16 lad, si la lad si sol sold |
  la sib mi, fa fad sold la \ottava #-1 do, |
  dod red mi fad sold lad, si do re[ r fa sol] |
  fad si, do si do dod lad si dod re lad si |
  dod re red la sib si do la |
  si do re mi la, sib fa' lab, |
  fad'8 \ottava #0 r r <mib' fa>^"loco" |
  r r16 <si la'> r8 r16 <mib fa> |
  r8 <la si> <mib fa>16 <la si>8 mib16 r8 <si' fa'> |
  la16 sold la sold sol lab sol fad fa sol fad fa |
  mi mib solb fa mi mib re reb |
  sib sol mi dod \ottava #-1 red si sol red \ottava #0 |
  r4 r8 r16 do'\laissezVibrer \clef treble |
  r4 r8 \ottava #1 <re'''' dod'>~
  <re dod'>16 <re dod'>8. <si lad'>8 <do si'> <re dod'>4 |
  \ottava #0 fad,,8 r fad16 sol r8 fad16 sol sold r |
  la sib <re dod'>8 r16 <re dod'>8. |
  <si lad'>16 sid' <re, dod'>4. |
  r16 <mib lab sib re>8. <mib sol la re>8 <do si'>16 do' |
  <re, fad sold dod>8. <mib lab sib re>16~
  <mib lab sib re> dod' <mib, re'>8 r16 <si lad'> sid' <re, sol la dod> |
  r8 \ottava #1 <mi red'>16 mid' <sol, fad'> <re' re'>8. |

  %%% 4x7 %%%
  \ottava #2
  \pl <sib' sib'>2*1/8 r16 sib' la sib lab la sib sol
  sold la fa fad sol sold la mib mi fa fad sol |
  lab la, si dod red fa sol la |
  \tupletsOn
  \t {si8 do sol} la16 mi fad dod |
  re lab sib mib, la sold dod si |
  \t {mi8 re sol fad si fa} si,16 do fa sib |
  la re, do fa \t {mi8 sib lab mib' reb sol,
  fad si la} re16 do fa mib |
  lab sol dod, si' fad mi sib' la |
  \t {sol8 do, si fa mib sib} |
  lab16 re fad dod' mi la do sol |
  fad si, la re \t {dod8 sol fa do' sib mi,}
  \ottava #0
  red8^"loco" la \t {sol do sib red mi, la}
  sol16 do sib red fad, mi la sol |
  do si fa' si, \t {re,8 sold dod}
  red fa,! \t {mi lad sold} |
  red'16 do, fad mi si' la red si, |
  fad' mi sib' la \t {re8 re, lab' sol do sib} |
  red16 dod dodd red si do dod re |
  sib si do dod \t {re8 sold, la lad si do
  dod sol sold} la16 lad si do |

  %%% 5x7 %%%
  R2 R2. R2
  <do, fa sol si>2\laissezVibrer s4 do' |
  <do, fa sol si>2.\laissezVibrer
  R2. R2*2 |
  sold8 re \t {do fa mib sold la, re do fa mib} |
  sold16 la, re do mib mi fa fad fa fad sol sold |
  la, la' sib sold la sib fad sol sold la si do |
  sold re' red mi fa fad sold, la |
  lad si do re, \t {red8 mi fa} |
  <sol, do re fad>2
  \pl <sol do re fad> {r4 <do' mi fad si>\laissezVibrer}
  \ottava #1 sol'''16 sold la lad si, do dod re \t {red,8 mi fa} |
  \ottava #0 r16 <dod,, fad>8. <dod fad>8 <sib mib>16 <do fa> |
  <dod fad>8 r r \clef bass \ottava #-1 si,,, \ottava #0 \clef treble
  r4*1/2 s8 | s4 r16 fa''''' fad, \mg sol, | \md

  %%% 6x7 %%%
  \t {
  <mi'' sold si>4 \stemUp <mi sold si>8 fad, <la dod fa> fad | \stemNeutral
  <mi' sold si>4 \stemUp <mi sold si>8 red <do mi sold> red |
  \tupletsOff <do mi sol> sold <sol si red>
  mi <red sol si> \mg do \md \stemNeutral
  \tupletsOn <mi' sold si>4 \stemUp <fa sold si>8
  \tupletsOff sold, <dod mi sol> do
  <si re fa> mi, <sold si re> \mg \stemUp dod,
  \md \stemNeutral <re fa sold> \mg \stemUp mib, \md \stemNeutral |
  <mi' sol sib> \mg \stemUp la, \md \stemNeutral <sold' si re>
  \mg \stemUp dod, \md \stemNeutral <do' mib fad> \stemUp fa, |
  \stemNeutral \tupletsOn
  <mi' sold si>4 <re fa sol dod>8 \voiceOne r <mib sib'> do' |
  \tupletsOff
  <re, fa sol dod> sib, <re' sold dod> la <fa' sib> do' | \oneVoice
  <re, sol la dod> \mg \stemUp fad, \md \stemNeutral <reb' do'>
  <re sol la dod> \mg \stemUp red, \md \stemNeutral <re' dod'> |
  \mg \stemUp fad, \md <do' si'> dod'
  <mib, re'> \mg mi, \stemNeutral \md <sib' reb fa> |
  \tupletsOn
  <mi sold si>4 \ottava #1 <sib' la'>8 r <sol fad'> sold' |
  \tupletsOff
  <sib, mib fa la> \mg \stemUp re,, \md \stemNeutral <sib'' la'>
  \mg \stemUp dod, \md \stemNeutral <mi si'> \mg \stemUp dod |
  \md \stemNeutral <sib' re la'> \mg \stemUp fad,
  \tupletsOn
  \md \stemNeutral <sib' la'> r <la sold'> <sib la'> |
  r8 <sib mib la>4 \tupletsOff <sol fad'>8 sold' <sib, la'> |
  \tupletsOn
  r <solb fa'> la' \tupletUp <re, dod'> fa'4*1/2 \tupletNeutral
  \lightBeams \graceNotes \t {fad16_[( sol sold)]} \breathe |
  \tupletsOff
  } \ottava #0 <mi,, sold si>4^"loco" \ottava #1 \acciaccatura
  {fad''16_[ sol sold]} \t {la8 fa dod
  la do mib fad re sib fad la do mib si sol \ottava #0
  \tupletsOn
  <sold,, si red>4^"loco" \ottava #1 la''8 \tupletsOff fad mib do |
  \ottava #0 la <dod, fad> <sib mib> \tupletsOn
  \pl r8 <do, mi sol>4*1/2 la8 fad \clef bass |
  \tupletsOff mib do la fad mib do |

  %%% 7x7 %%%
  \mg \stemUp s la, s <mib' fa> s <mib fa> | \tupletsOn
  s <mi' sold>[ <mib sol>] \tupletsOff s s <fad do'> | \tupletsOn
  s <sib re>[ <fa dod'>] \tupletsOff s s
  \md \stemNeutral <sol fad'>^"(loco)" \mg \stemUp |
  s la,, s <mib' fa> s <mib fa> |
  s <do''' mi>[^"loco" <si red>] s <solb sib> <si re> |
  s la,,, s <do sold'> s <do sold'> s si' s <re, fad> s <mib fa> |
  \md \clef treble \stemNeutral s <re''' fad sold dod>
  \mg \stemUp red \md \stemNeutral <re dod'>
  \mg \stemUp sol, \md \stemNeutral <do sib'> |
  do' <re, fad sold dod>
  \mg \stemUp fa \md \stemNeutral <re dod'>
  \mg \stemUp sol, \md \stemNeutral <si do'> | <re dod'>
  \mg \stemUp sib \md \stemNeutral <re fad sold dod>
  \mg \stemUp si \md \stemNeutral <mib sol sib do> <fa la si mi> |
  \tupletsOn
  r <fa la si mi> r <solb sib reb mib> <fa la si mi>4 |
  <fa la si mi>8 r <sol sib> <mib do'> <re fad sold dod>4 |
  \tupletsOff
  <re dod'>8 <do mi sol la> <si red mid lad> \tupletsOn
  <la dod mi fad>4 <fad lad dod red>8} |
  \set tupletSpannerDuration = #'()
  \t {<la dod mi fad>4 <fa la si mi>8[ \mg \stemUp
  <mib sib'>] <re fad sold dod>4} \md \clef bass \stemUp
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \t {
  r8 <dod fa>[ <do mi>] \tupletsOff s s <do mi> | \tupletsOn
  r <sol' si>[ <fad sib>] \tupletsOff s s <fad sib> | \tupletsOn
  r <re' fa>[ <dod mi>] \tupletsOff s s <do mib> | \tupletsOn
  s <si re>[ <fa' sold>] \tupletsOff } \stemNeutral r4
  \t {
  fad,,,8 la do mib sol sib dod mi sol sib dod fa
  \clef treble sold si <la re> <do fa> <red sold> r
  }

  %%% 8x7 %%%
  \stemUp \ottava #1 \t {
  <mib' lab sib re>8 re <mib lab sib re> dod <mi fad la dod> dod
  \stemNeutral \tupletsOn <do fa sol si>4 \stemUp <do fa sol si>8
  \tupletsOff si <do fa sol si> \ottava #0 si, |
  <mib, solb sib> fa \mg <lab,, dob mib> la <dod mi sold> dod' |
  \md <mi sol si> \mg mi, \md <sol sib re> sol' <si re fad> do' |
  \ottava #1
  <mib lab sib re> re <mib lab sib re> dod <mi fad la dod> dod
  <do fa sol si> \ottava #0 si, <do fa sol si> \tupletsOn
  \stemNeutral r \stemUp <la, dod mi>[ \mg <mi sold si>] \tupletsOff
  dod \md <dod' mid sold> \mg la \md <lab' do mib> <sib re fa> s |
  \ottava #1
  <mib' lab sib re> re <mib lab sib re> dod <mi fad la dod> dod |
  <do fa sol si> si <do fa sol si> lad <dod red fad lad> lad |
  \tupletsOn \ottava #0 \stemNeutral \tupletUp <la re mi sold>4
  \stemUp <la, re mi sold>8 \tupletNeutral \tupletsOff
  mi <mi sold la re> \mg la, \md |
  <la' si mi fa>[ la] <sib' do mib sol>[ sol <sib,, do mib sol> sol''] |
  <la re mi sold> sold, <la re mi sold>
  \stemNeutral r \mg \stemUp <la,, re mi sold> \md mi'' |
  <la re mi sold>[ sold <la re mi sold> mi''] <sib do mib sol>[ sol] |
  <fa, sol sib> mi \mg <do, re fa> do' \md <mi fad la> la' |
  <re mi sold> sold, <la re mi sold> sol <sib do mib sol> sol |
  \tupletsOn \stemNeutral <fa la si mi>4 \stemUp <fa la si mi>8
  \tupletsOff mi <fa la si mi> mi |
  <fa la si re mi> sol, <fa la si mi> \mg si,
  \md <do re sol la> \mg si | \md
  <do re mi fa> re' <mi fa sol la si> sold' <la,, re mi sold> reb' |
  <si mi sol>[ sol <sib, do mib> lab <re fad la> \mg sol,,] | \md
  \tupletsOn \stemNeutral <la'' dod mi>4 \stemUp <la dod mi>8
  \tupletsOff fa <mi sold do> fa |
  <sol, si red> sib <mi, sold do> fa <do mi sold> \mg sib |
  }

  %%% Coda %%%
  \md \stemNeutral
  r4  <mi fa si>--~ <mi fa si>
  \pl {s4 <mi fa>2--~ <mi fa>4}
  {\oneVoice <mi fa si>^~ \voiceOne si'4..( do16
  si4)} \tupletsOn
  \graceNotes \lightBeams \t {fad8 sib re}
  \pl \graceNotes \lightBeams { \tupletsOff
    \t {sol, si mib}
    \t {fa sib mib}
    \ottava #1
    \t {s <mi sold si> s}
    \t {<sol sib re> s <si re fad>}
  } \graceNotes \lightBeams { \tupletsOff
    \t {mi,, sold do}
    \t {dod fa la}
    \t {<fad la dod> si <la dod mi>}
    \t {re <do mib sol> fad}
  } <fa lab do>8-. \ottava #0 r16. <red,,, fad lad>32 r4
}

TroisPianoMg =
\relative do {
  \clef bass
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  %%% 0x7 %%%
  r32 <mi,, mi'>4...*7/15 \laissezVibrer \md \stemDown
  \t {
  <sol''' si red>8 s <sol si red> |
  \tupletsOff
  s mi s <sold do> s <sold do> |
  \mg s mi, s \md <dod' fa la> s <dod fa la> |
  \mg s <sib re fad> s <mi, sold do> s sib |
  }
  \stemNeutral
  r32 <mi,, mi'>4...*7/15 \laissezVibrer \md \stemDown
  \t {
  <sol''' si red>8 s <sol si red> |
  s mi s <fad sib re> s <fad sib re> |
  \mg s mi, s \md <la dod fa> s <la dod fa> |
  \mg s <mi sold do> s <mi sold do> s sib |
  }
  \stemNeutral
  r32 mi,4...*7/15 \laissezVibrer \md \stemDown
  \t {
  <sol'' si red>8 s <sol si red> |
  s mi s <sol sib dod> s <sol sib dod> |
  s <dod, sol' sib> s <re fa lab> s <mi sol> |
  s sib s <mib la> s <mib la> |
  s <sol, fad'> s do s <do fad> |
  \mg s <mi, red'> s \md <dod' la' si> s4 |
  \mg s8 <mi, red'> s <fa, mi'> s <la' si> |
  s <mi red'> s \stemNeutral \tupletsOn <re dod'> r fad,, |
  <fa' mi'> r red'' r mi, fa, |
  \tupletsOff
  fad, dod' re' \stemUp red'
  \md \stemDown <mi' fa> \stemUp
  \mg \clef treble sold | \stemNeutral

  mi' dod sib sol mi dod |
  sib fa dod \clef bass sold fa re |
  si sold fa re si sold |

  %%% 1x7 %%%
  \stemDown \ottava #-1
  <fa mib'> fa <fa mib'> la <fa mib'> la |
  <fa mib'> fa <fa mib'> la <fa mib'> la |
  <fa mib'> s s \tupletsOn <mi' sol> <fad sold> s \tupletsOff |
  <fa, mib'> mib' <fa, mib'> la <fa mib'> la |
  <fa mib'> s s <mi' sold> <fa la> s |
  \ottava #0
  <la, si la' si>^"loco" s s
  \tupletsOn <sol' si> <lab do> s \tupletsOff |
  \ottava #-1
  <fa, mib'> fad <fa mib'> la <fa mib'> \stemNeutral r |
  \ottava #0 
  mi'''^"loco" dod sib sol mi dod |
  si sold fa re si sold |
  \ottava #-1 \stemDown
  <fa mib'> sol <fa mib'> la <fa mib'> la |
  \ottava #0 s2. \ottava #-1
  <fa mib'>8 lab <fa mib'> la <fa mib'> la
  <fa mib'> la <fa mib'> s <la, si> s |
  \stemNeutral <fa' mib'> \ottava #0
  \stemDown \md la'' \stemNeutral
  \mg <si,, la'>_"loco"
  \stemDown \md mib''' \stemNeutral
  \mg \ottava #-1 <fa,,,, mib'> <la si>} |
  \ottava #0
  <re do'>_"loco" r <la' sib> r |
  <sold fad'> r <do red mi> r |
  <re do'> r <mi sold> r |
  <si' sold'> r <sol mib'> r |
  \clef treble <reb' lab'> r <la' mib'> r |
  <fa' sib> r <si red> r |
  \t {
  <mi, do'> \md <dod' fa lad> \mg <sib, sol'>
  \md <do' fad si> \mg <mi,, re'> r |
  }

  %%% 2x7 %%%
  \tupletsOn
  r32 <fa, fa'>4...*7/15 \laissezVibrer \md \stemDown
  \t {
  <dod'' fa la>8 s <dod fa la>
  \tupletsOff
  \mg s fa, s \md <sib re fad> s <sib re fad> |
  \mg s fa s \md <sold si re> s <mib' sol> |
  }
  \stemNeutral \mg
  r32 <fa,, fa'>4...*7/15 \laissezVibrer \md \stemDown
  \t {
  <si' red sol>8 s <si red sol>
  \mg s fa s \md <sold do mi> s <sold do mi> |
  \mg \clef bass s fa, s \md <dod' fad si> s \mg <mi,! la! re!> |
  }
  r32 <fa, fa'>4...*7/15 \laissezVibrer \md \stemDown
  \t {
  <sold'' do mi>8 s <mib sol si> |
  \mg s fa, s \md <si' red sol> s <sold do mi> |
  \mg \clef treble s fa s \md <sib dod mi> s <fa' sol la> |
  \mg s fa s \md <sib do re> s <si dod red> |
  \mg s <sib, la'> s <sol fad'>[ s <mi red'>] |
  \tupletsOn r <solb fa'>4 r8 <re dod'>4 |
  }
  \stemNeutral <sib la'>4 <sol' fad'> |
  \t { \stemDown r8 <si lad'>4 } \stemNeutral <sol fad'> |
  \t { \stemDown r8 <si lad'>4 \stemNeutral <sol fad'> <si lad'>8}
  <sol fad'>4 \t {r8 <mib re'>4}
  \set tupletSpannerDuration = #'()
  \t {<si' lad'>8 fad' <mib, re'>4 <mib' re'>}
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \mg <la, la'>8 r \acciaccatura {mi'16[ fad]}
  \t { \tupletsOff
  sold8 fa re si sol mi \clef bass dod sib fa? |
  \tupletsOn fad, r \clef treble si'' \tupletsOff
  sib lab fa \clef bass }
  \set tupletSpannerDuration = #'()
  \tupletsOn \t {do4 mi, mib,} |
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  %%% 3x7 %%%
  <fa si>8 r r16 fad,8. r8 r16 do' r4 |
  fad,8 r la[ r16 fad] r mib' fad,8 |
  \ottava #-1 do8. do16 r8 r16 mib r4 |
  do4 r8 fad r r16 sold do,8 sol' \ottava #0 |
  fad16_"loco" fad' sol fad sol lab sol sold |
  la sib sol sold la lad si sold |
  la lad si do dod sold la lad si do dod re |
  mib4 r8 <fad,, mi'> r r16 <fad mi'> |
  \clef treble r8 r16 <red'''' dod'>_"(sopra)"
  r <sol la> <red dod'>8 |
  <mi, fad> r16 \clef bass <do, sib'> r8 r16 <mi, fad> |
  \ottava #-1 do, do' dod do dod re fad sol \ottava #0
  sold_"loco" la fad sol sold la sib do |
  dod re red mi fa fad sol sold la sib si do |
  r fad mid fad mi mid fad re red mi fa do |
  dod re red mi lad, si do dod |
  re fad, sol sold la lad si dod |
  do fad, sol do, dod re fad, sol |
  \ottava #-1 sold la do, dod re red mi fad, sol sold la lad |
  si do, dod re red mi fa sol |

  %%% 4x7 %%%
  \pl <la, la'>2 { r4 \ottava #0 fa''_"loco"}
  r8 dod'4. r8 fad8~ fad2 \clef treble
  <mib' lab sib re>2 <mi fad la dod> |
  \pl {r4 r8 \clef bass \ottava #-1 la,,,,8~ la4 \ottava #0 }
  <do''' fa sol si>2. \clef treble
  <mib lab sib re>4. <mi fad la dod> |
  <do fa sol si>2\laissezVibrer
  \clef bass \ottava #-1 la,,,2\laissezVibrer \ottava #0 \clef treble
  <mib'''' lab sib re> <mi fad la dod>2*3/4
  \clef bass \ottava #-1
  \graceNote la,,,,8\laissezVibrer  \ottava #0 \clef treble
  <do''' fa sol si>4. <dod red fad lad> |
  <la re mi sold>2.\laissezVibrer
  \clef bass \ottava #-1 la,,,4\laissezVibrer \ottava #0 \clef treble
  <sib''' do mib sol>~ <sib do mib sol>2 |
  <la re mi sold>2\laissezVibrer
  \clef bass \ottava #-1 sib,,,\laissezVibrer \ottava #0 \clef treble
  <la''' re mi sold>2. <sib do mib sol>2*1/2
  \clef bass \ottava #-1
  \graceNote la,,,4\laissezVibrer \ottava #0 \clef treble
  <la''' re mi sold>4.\laissezVibrer
  \clef bass \ottava #-1 sib,,,\laissezVibrer \ottava #0 \clef treble
  R2

  %%% 5x7 %%%
  <si''' do mi fad>2 <si do mi fad>~ <si do mi fad>8 sold' |
  <la, sib mib fa>2\laissezVibrer s
  \clef bass \ottava #-1 si,,,\laissezVibrer \ottava #0 s2.
  \pl {s2. \clef bass \ottava #-1 si2\laissezVibrer }
  {\oneVoice \clef treble
  <si''' do mi fad>4. <si do mi fad>\laissezVibrer \voiceOne
  \t {r8 \clef treble \ottava #0 sold' fad} \t {sold fad sold}}
  fad16 sold mid fad fadd mid fad fadd |
  \clef bass <re, sol? dod>2 <re sol dod>2*3/4
  \ottava #-1 \graceNote si,,8\laissezVibrer \ottava #0
  r4 <si'' mi fad lad> <mib fa lab do> |
  <re sol dod>2 <re sol dod>4 |
  r \ottava #-1 si,,\laissezVibrer \ottava #0 R2 |
  r4 r8 \ottava #-1 si\laissezVibrer \ottava #0 R2 |
  r4 r8 \ottava #-1 si4 do8 \pl si4*1/4 r16
  \ottava #0 <re'' sol>8. <re sol>8 <si mi>16 <dod fad> |
  <re sol>8 fa16 fad sol la, lad si do, dod red \md fa'' |
  fad \mg sol, sold la, <sib, sib'>4*1/2 s8 |

  %%% 6x7 %%%
  r32 <mi, mi'>4...*7/15 \laissezVibrer \md \stemDown
  \t {\tupletsOff
  <sib''' re fad>8 s <sib re fad>
  } \mg \stemNeutral
  r32 <mi,,, mi'>4...*7/15 \laissezVibrer \md \stemDown
  \t {
  <sol''' si red>8 s <sol si red>
  s <mi sold> s <sold, do mi> s \mg <mi sold do>
  } \stemNeutral
  r32 <mi,, mi'>4...*7/15 \laissezVibrer \md \stemDown
  \t {
  <re''' fa sold>8 s <fad la do>
  s <sib, dod mi> s \mg <sol sib dod> s <la, do mib> |
  s <mib' fad la> s <sol sib dod> s \md <si re fa>
  } \mg \stemNeutral
  r32 <mi,,, mi'>4...*7/15 \laissezVibrer \md \voiceTwo
  <sib''' la'>4 \t {s8 sib s } <mib la>4 \mg
  \t {s8 <sol, fad'> s s <mi red'>4} | \tupletsOn
  \t {<sol fad'>8 s \md <sib la'>
  \tupletsOff s \mg <fa mi'> s} \oneVoice
  r32 <mi,, mi'>4...*7/15 \laissezVibrer
  \clef treble <mi''' red'>4
  \t {
  s8 \stemDown re4 <sold dod>8 s <sold dod>
  s <si, fad'> s } \stemNeutral <lab sol'>4
  \t { \tupletsOn
  <fa mi'> <lab sol'>8 <fa mi'>4 si8} \clef bass
  \set tupletSpannerDuration = #'()
  \t {<re, dod'> <sold la> <mib, re'>4 <sold' la>} |
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  r32 <mi,, mi'>4...*7/15
  \t {
  <fa'! fad'>4 \clef treble sol''8 \ottava #1
  \tupletsOff sold' fa' dod la dod fa
  re si sold do mi \ottava #0 r} \clef bass
  r32 do,,,,8.. \clef treble \t {dod''''8 sib sol}
  mi r \clef bass r32 lab,,,,8.. |
  \t {fa'8 re si re si sold} |

  %%% 7x7 %%%
  \stemDown \ottava #-1
  \t {
  <la, si'>8 la <la si'> mib' <la, si'> mib' |
  <la, si'> s s \tupletsOn <sib' re> <reb fa> s \tupletsOff |
  <mib, la> s s \tupletsOn <si' red> <do mi> s \tupletsOff |
  <la, si'> la <la si'> mib' <la, si'> mib' |
  <la, si'> \ottava #0 s s <dod'' fa la> s s | \ottava #-1
  <la,, si'> la <la si'> do <la si'> do |
  <la si'> si' <la, si'> re <la si'> mib' |
  <la, si'> \ottava #0 s <mi''' red'> s <fa, sol'> s |
  s s <mib' fa'> s <la, mi' sol> s |
  s <sib sib'> s <do fad si> s s \stemNeutral \tupletsOn |
  <lab, sol'> \ottava #-1 r <mib fa>
  <la, si'> \ottava #0 r <re'' do'> |
  r <mi, fad'> <lad dod> <sold mid'> r <sol' mib'> |
  r fad, sold' r <lab, do re sol> r |
  \tupletDown r <mib solb sib reb> r
  \tupletNeutral \stemDown r mi fa,
  } | \tupletsOn \stemNeutral
  \ottava #-1 <la, si'>\ottava #0 r
  \md \stemDown \t {<mi'' sold do> <la dod> s}
  \mg \stemNeutral
  \ottava #-1 <mib, fa fa'> \ottava #0 r
  \md \stemDown \t {<sib'' re fad!> <mib sol> s}
  \mg \stemNeutral <la,, si la' si>_"loco" r
  \md \stemDown \t {<do' fa sib> <sol' si> s
  \tupletsOff <mi lad dod> s s \mg \stemNeutral
  \ottava #-1 la,,, do mib dod mi sol \ottava #0
  sib re fa fad la do re fa lab |
  <fa sib> <sold dod> <si mi>
  \clef treble <re sol> <fa sib> r}

  %%% 8x7 %%%
  \md \stemDown \t {
  s <mib' lab sib re> s <mi fad la dod> s <mi fad la dod>
  } \mg \stemNeutral \ottava #-1 \clef bass
  r32 <sib,,,, sib'>4...*7/15 \laissezVibrer
  \md \stemDown \t {
  <do'''' fa sol si>8 s <do, fa sol si>_"loco"
  \mg \ottava #0 s \md <sib reb fa>
  \mg s <re,, fa la> s <fad' la dod> |
  s <la, do mi> s \md <do' mib sol> s <fa' lab do>
  s <mib lab sib re> s <mi fad la dod> s <mi fad la dod>
  s <do, fa sol si>_"loco" \mg \ottava #-1 s \stemNeutral
  <sib,,, sib'>4\laissezVibrer \ottava #0 s8 | \stemDown
  <fad'' lad dod> s <re' fad la> s s \md <mib'' sol sib> |
  s <mib lab sib re> s <mi fad la dod> s <mi fad la dod>
  s <do fa sol si> s <dod red fad lad> s <dod red fad lad>
  } \mg \stemNeutral \ottava #-1
  r32 <dod,,,, dod'>4...*7/15 \laissezVibrer
  \md \stemDown \t {
  <sold''' la re mi>8 \mg \ottava #0 s <re mi sold la> |
  \md s <si' mi fa la> s <sib' do mib sol> s <sib do mib sol> |
  s <la, re mi sold> \mg \ottava #-1 s \stemNeutral
  <dod,,, dod'>4\laissezVibrer \md \stemDown <re''' mi>8
  \mg \ottava #0 s \md <la re mi sold>
  s <re'' mi> s <sib, do mib sol> |
  s <si, dod mi> s \mg <sol la do> s \md <si' re la'> |
  s <la re mi sold> s <sib do mib sol> s <sib do mib sol> |
  } \mg \stemNeutral
  r32 <sol,,, sol'>4...*7/15 \laissezVibrer
  \md \stemDown \t {
  <fa''' la si mi>8 s <fa la si mi> |
  s <do re sol> s \mg <mi, fa si> s <sol la si> |
  s \md <sol' la si do re> s <sid' red sold> s <fa sib reb> |
  s <si, mi sol> s <reb, fa lab> s \mg sol, |
  } \stemNeutral
  r32 <mi,, mi'>4...*7/15 \laissezVibrer
  \md \stemDown \t {
  <la''' dod fa>8 s <la dod fa> |
  s <re, fad sib> s <la dod fa> s \mg <re, fad sib> |
  } \stemNeutral

  %%% Coda %%%
  R2*6 r4 \ottava #-1 <mi,, sold si>4-.
}
