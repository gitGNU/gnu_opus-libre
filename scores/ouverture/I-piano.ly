%-- Ouverture -- I-piano.ly ---------------------------------------%
% (c) 2002-2010 Valentin Villenave <valentin@villenave.net>

PianoIMd = \relative do' {
  R1\ff
  \keepDyn <sold la re>16\sf <la si mi>8.->~
  <la si mi>2. |
  <la re>16\sf <do mi>8->(
  <re fad>->\< <mi sold>-> <fad la>-> <sold si>16->) |
  <la re>2->\! r8 |
  <la, re>16\sf <do mi>8->(
  <re fad>->\< <mi sol>-> <fad la>-> <sol do>16->) |
  <la re>2->\!
  \pl { r16 <re, sol do>-> <mi la re>8-> s s4}
  {r16 \keepDyn <fa' sib fa'>-\dyn "fff_éclatant"
  <sol do sol'>8 \mg <re,, re'>16
  \md <mi' mi'>->~ <mi mi'>4 }

  R2. R2 s4.
  <sol, re'>8\mp( <fad la mi'> <sol sib fa'> <la re sol>) fad16 |
  <la re>^\sf <si mi>8->
  <re fa>-> <mi sold>-> <sol si>-> |
  <sold do>16^\sf <fa si re>8.-> <sib mi>8_\mp(
  <sol do fa> <la dod sol'>16) |
  <la, re>\sf <si mi>8->
  <la re fa>->\cresc <si mi sol>-> <re fa sib>16->~ |
  <re fa sib> <mi sol do>8 <fa sib dod>
  <sol do re> <fa sib mi>16~ |
  <fa sib mi> <sol do fad>8 <sib re la'>8. |
  <re sol re'>16->\fff <mi la mi'>8.->
  <re, re'>16-> <mi mi'>8.->~
  \t {<mi mi'>4( <re re'>-- <mi mi'>--)} |

  <re la' re>8\sf s s4
  \pl {re8-. lab'-. re-. lab'-.}
  {s8 \lightBeams { \tt {lab,32( \graceNotes {do mib solb sib)}}
  s8 \tt {lab32( \graceNotes {do mib solb sib)}}}}
  \ottava #1
  \stemUp
  \mg s8 \lightBeams { \tt {lab32 \md \graceNotes {do mib solb sib}}
  \mg s8 \tt {lab,32 \md \graceNotes {solb' mib do sib}}
  \mg s8 \tt {lab32 \md \graceNotes {do mib solb sib}}
  \mg s8 \tt {lab,32 \md \graceNotes {solb' mib do sib}}
  \mg s8 \tt {lab32 \md \graceNotes {do mib solb sib}}
  \mg s8 \tt {lab,32 \md \graceNotes {solb' mib do sib}}
  \tt {\mg re,[ \md \graceNotes {fad la do mi]}}
  \tt {\mg lab,[ \md \graceNotes {do mib solb sib]}}
  \tt {\mg re,[ \md \graceNotes {la' fad mi do]}}
  \tt {\mg lab[ \md \graceNotes {solb' mib do sib]}}
  \tt {\mg re,[ \md \graceNotes {fad la do mi]}}
  \tt {\mg lab,[ \md \graceNotes {do mib solb sib]}}}
  \mg re,8-. \md  \ottava #0 r |
  \stemNeutral

  <sol,,, \whiteNote re' sol>16->\f <la la'>4..*3/7
  \ottava #1 \keepDyn re''8-.\pp mi-. \ottava #0
  <sol,,, \whiteNote re' sol>16-> <la la'>4.. |
  <sol \whiteNote re' sol>16-> <la la'>8. <sib sib'>16-> <do do'>8. |
  s1 s2 |
  <dod dod'>16-> <red red'>4..*1/7
  \ottava #1 fa''8-. la-. \ottava #0 re,,\rest 
  <dod, dod'>16-> <red red'>4.. |
  <dod dod'>16->( <red red'>8 <do do'>16-> <sib sib'>8
  <fad fad'>16-> <mi mi'>~ <mi mi'>8 <mib la>-.) |
  <\whiteNote re sol dod>16-> <la' red>4..*3/7
  \ottava #1 \keepDyn mib'''16-.\pp fa-. la8-. \ottava #0
  <dod,,,, \whiteNote sib' dod>16-> <red red'>4.. |
  <dod dod'>16->( <red red'>8 <la la'>16 <sib sib'>8
  <sold' sold'>16 <la la'>~ <la la'> <fad' fad'> <sol sol'>8) |

  \lightBeams {
  <sold sold'>8-. \graceNotes { la,,32 re mi la }
  \bracketDown "m.s." mi'( \graceNotes {
  \bracketUp "m.d." la, mi re la \mg mi re la)}
  re,( \graceNotes {la' re mi \md la re mi la)}
  mi'(-"simile" \graceNotes {la, mi re la \mg mi re la)} |
  re,( \graceNotes {la' re mi \md la re mi la)}
  mi'( \graceNotes {la, mi re la \mg mi re la)}
  re,( \graceNotes {la' re mi)}
  la,( \graceNotes {re la' re)}
  re,( \graceNotes { \md la' mi' la)} \mg
  la,( \graceNotes { \md re la' re)}}
  \ottava #1
  \keepDyn <sold' sold'>8-.-> -\dyn "pp_staccato" <red red'>16-. dod'-.
  <sold sold'>8-. mi-. |
  do'16-. sib-. <sold sold'>-> la-.
  <red, red'>-. <dod dod'>-. <sold' sold'>8-. |
  <sold sold'>16-.-> <red red'>-. dod'-. <sold sold'>->
  mi-. do'-. sib-. <sold sold'>-. |
  la-. <red, red'>-. <dod dod'>8-.
  <sold' sold'>16-> mi-. do-. sib-. |
  \ottava #0
  <re, fad re'>16->\f-"loco" <mi sold mi'>8. r16 \ottava #1
  \keepDyn <sold' sold'>-.\p <red red'>-. dod'-. |
  <sold sold'>8-. mi16-. do'-.
  sib-. <sold sold'>-> la-. red-. |
  <dod, dod'>8-. <sold' sold'>16-. la-.
  <red, red'>-. dod'-. \t {<sold sold'>( red' dod)} |
  \t {<mi, mi'>(\< do' sib)}
  \t {<sol sol'>( re' do)}
  \t {<sold sol'>( red' dod)} |

  <la la'>2*2\fff \laissezVibrer \ottava #0 s1 R1
  \stemDown \keepDyn <sib,, sib'>32->\ff
  \stemUp <do do'>4...->\laissezVibrer \stemNeutral
  s2 -\dyn "peu à peu plus souple" |
  \keepDyn la''2--\f\laissezVibrer la,,~\mp |
  la\>( \mg la,--)\p \md |
  \t {sib4(-"dolce espr." do8~} do4. sib8~ \t {sib4 do8~)} |
  do1\laissezVibrer s2. R1 R2.
  sib'4.( -\dyn "p_très clair" do8~) do2~\> |
  do4 do2\ppp\laissezVibrer s2 R4.

  <dod mi>4--( -\dyn "pp_calme" <dod mi>2-- <dod fa>4--) |
  <dod mi>-- <do mib>--( <dod mi>--) |
  <dod fa>4--( <dod mi>2.--)\laissezVibrer s2. |
  <la sold'>2-.-- q-.-- | q4.-.-- q-.-- | q2 q | q4. q |
  <si mi sol>8--\mf <si mi sol>~
  \t {<si mi sol> <do fa la> <si mi sol>} |
  <lad red fad>^\>( <si mi sol> <re sol sib>) |
  <si red sold si>4^\p\laissezVibrer s2 \clef bass |
  s4 <fa, mi'>( <fad red'>) | R2.
  r2 \keepDyn fa8\mf(-"légèrement en dehors" dod |
  mi4.) la,8( fa' dod |
  mi4) la8( la, fa' dod |
  mi) \acciaccatura fa mi( red \keepDyn{ mi\> do'! sold |
  si2\!)\laissezVibrer s4 } |
  r\mp <mi, sold red'>( <fad si dod>) |
  <red mi sold dod>( <sid red la' sid>) r |
  r <fad' lad si fad'>( <mi sold mi'>) |
  r <mi sold si mi>( <red fadd red'>) |
  \clef treble r <lad' si red lad'>(\< <sold sold'>) |
  <si dod mi si'>(\! <lad lad'>) <red red'> |
  \clef bass r sold,,--_(^\p sold--
  sold-- sold-- \mg <dod,, dod'>--^) \md | \clef treble

  \ottava #1 <sold'''''' sold'>8\f
  \t { sol16->(\( re la)} \t {mi'->( si fa)} \t {red'->( lad mi)}
  \t {do'( sol reb)} \t {si'( fad do)} |
  <dod red sold>4.--\laissezVibrer \)

  \ottava #0
  <sold sold'>4.\f \pl {
  \keepDyn <mi la dod>--_\dyn "mp_sub."(
  <do! mi sol do>-- <sib reb fa>2--)\laissezVibrer}
  {<mi' la dod mi>4.--( <mi sol do!>-- <sib reb fa sib>2--)\laissezVibrer }
  r4 \ottava #1 \pl {
  \acciaccatura <re' sol la>16~ <re sol la>4
  \acciaccatura <dod fad sold>16~ <dod fad sold>4}
  {<si' dod fad>->-- <sol sib do fa>->--}
  r4 \pl {
  \acciaccatura <sib, mib fa>16~ <sib mib fa>4
  \acciaccatura <la re mi>16~ <la re mi>4}
  {<sol' la re>->-- <fad sold dod>->--} \ottava #0
  r8 \pl {sold,,16. mi'32~ mi4 <mib sib'>--}
  {s8 <red' sold>4--( <do sol'>--)} |
  \acciaccatura {mi,16[ fa']} mi,8( <re re'>
  <dod dod'> <re re'> <fa fa'>) %\noBeam %%FIXME
  dod,-\dyn "p_sub." |
  mi2*1/2 \acciaccatura red''16-"m.s. (sopra)"
  mi8-. r \pl {
  fad,,8( dod \oneVoice mi4)
  \voiceTwo red8( re') re( sold,)}
  {\slurDown \acciaccatura mi''16
  \stemUp fa!8-. r s4 \slurNeutral
  \acciaccatura fad16 sol8-. r
  \acciaccatura fadd16 sold8-. r \stemNeutral}
  <la,,, dod mi la>4 la''8-. r r2 \clef bass

  reb,,,16-> mib8.~ mib4. <mib, mib'>8-> |
  <fa fa'>\sfz r r8. \clef treble |
  R1*7/16*2 s1*3/16 R1*7/16*2 s1*7/16 R1*7/16 |
  re''16-> mi8. re16-> mi8. <la, re>16 mi'8. | s2. s1 |
  R2.*3 R4.

  <re' fad la re>2--(-\dyn "p_dolce espr., très calme"
  <dod fad lad dod>--) |
  <dod fa la dod>--( <dod fa la do!>--) |
  <do fa la do>--( <do? mi sold dod>--) |
  <si mi sold dod>--( <si mi sol do>--) |
  <sib mi sol do>--( <sib mib sol reb'>--) |
  \pl {<la sol' reb'>--( <lab reb fa do'>--)}
  {reb4( mib\> s2)}
  <do mi sol do>2--\!\laissezVibrer s4 |
  r4. \bracketDown "m.s." <do, la>--(-\dyn "p,_blanc" |
  <la do>-- <la do>-- <la do>--)~
  <\blackNote la \blackNote do>1\laissezVibrer | R1

  \clef bass
  <re, re'>16->(-\dyn "f_sub., très intense"
  <mi mi'>8.~ <mi mi'>2~ |
  <mi mi'>4~ \t {<mi mi'> <fa fa'> <mi mi'>)} |
  \clef treble
  <sol sol'>2 <mi mi'>16->( <fa fa'>8. <sib sib'>4) |
  <reb reb'>16->( <mib mib'>4..~
  \t {<mib mib'>4 <solb solb'> <mib mib'>)} |
  <sol, sol'>--( <sib sib'>--)
  <do do'>16-> <reb reb'>4.. \clef bass |
  <re, re'>16->( <mi mi'>8.~ <mi mi'>8 <sol sol'>--~
  \t {<sol sol'>4 <la la'> <sol sol'>)} | \clef treble
  <la la'>16->( <sib sib'>8.~ <sib sib'>8 <do do'>--~
  \t {<do do'>4 <mib mib'> <do do'>)} |
  <mib mib'>16->( <fa fa'>8.~ <fa fa'>8 <solb solb'>--~
  \t {<solb solb'>4 <lab lab'> <solb solb'>)} |
  <lab lab'>16-> <si si'>8.~ <si si'>8 <dod dod'>
  \t {<si si'>4--( <re re'>-- <dod dod'>--)} |
  <re,, re'>16-> <mi mi'>8. <fa fa'>8 <sol sol'> |
  \t {<sib sib'>16-> <do do'>8. <dod dod'>4 <red red'>} |
  <fad fad'>16->-\dyncresc "poco cresc."
  <sold sold'>8. <la la'>8 <si si'> |
  \t {<re re'>16-> <mi mi'>8. <re, re'>4 <mib mib'>} |
  <fa fa'>16-> <sold sold'>8. <lad lad'>8 <si si'> |
  \t {<dod dod'>16-> <mi mi'>8. <lad,, lad'>4 <dod dod'>} |

  <red red'>16->\! <mi mi'>8.\laissezVibrer s8 | s4.
  re!16->\f mi~ mi4\laissezVibrer s4. \clef bass |
  <re, re'>16-> <mi mi'>8
  <sol sol'>-> <fa fa'>16 \clef treble |
  <sold sold'>16-> <lad lad'>8
  <dod dod'>-> <si si'>16 |
  <do do'>16-> <dod dod'>8 <red red'>16
  <mi mi'>->\< <fad fad'>~ |
  <fad fad'> <sol sol'> <la la'>-> <si si'>8. |
  <re re'>16->\f <mi mi'>8.~ <mi mi'>8 r |
  <re fad re'>16->\ff <mi sold mi'>->~ <mi sold mi'>4\laissezVibrer |
  s8. <re, re'>->~ <re re'>4 <mi mi'>(\ff |

  <re re'>16-.) r fa8-.\mf sol-- re16-. mi-.
  r8 fa-. sol-- re16( mi
  fa8-.) sol--~ sol16 re( mi fa sol8--) re-. |
  mi-. fa-. sol-- re16( mi)
  r fa8--( sol16-.) r re( mi fa)
  r sol8-- re16( mi fa sol8--) re-. mi-. |
  fa16( sol re mi fa8-.) sol-. re16-. mi-. fa-. sol-.
  r re( mi fa) r sol8--( re16) mi8-. fa-. sol16 re mi fa |
  sol8-- re16 mi r8 fa-. sol16 la re, mi fa8-. sol-.
  r16 re-\dyncresc "poco a poco cresc."
  mi fa sol8.-- re16 mi8 fa16 sol |
  <do, re>8-. <re mi>16( la <si? fa'>8-.) <do sol'>16 sol
  re' la mi' sib <do fa>8-. <do sol'>16 re
  sib8 <do mi>-. fa-. sol-. <la, re>16( si <do mi>8-.)
  <sol la re>16-- mi'8 <sib do fa>16--
  sol'8 <sol, la re>16-- mi'~
  mi <sib do fa>-- sol'8 <sol, la re>16 mi'8 <sib do fa>16
  sol' <la, re>8 <si mi>16--~
  <si mi>8 <do fa>->--~ <do fa>16 <re sol>8.->-- |
  <fa sib>8-.\f <sol do>-. <sib reb>-. <do mib>-.
  <fa, sib>16 <sol do>8 <sib reb>16 <do mib>8-. <fa, sib>-.
  <sol do>16 <sib reb> <do mib>8--
  sib16( do reb mib) solb,( lab la si) |
  re,8-.\mp \dyncresc "cresc." mi-. fa-. sol-.
  re16 mi8 fa16 r sol8-- re16
  mi fa8 sol16 r re( mi fa sol8-.) mi-. |
  re16 mi8 fa16 sol8 re16 mi fa8 sol
  re16 mi8 fa16 sol8 re16 mi fa8 sol re16 mi fa8-. |
  <re' re'>16->\ff <mi mi'>8.~ <mi mi'>4
  <sol, do fa>8-.\f <la re sol>-. <sib mib lab>-.
  <fa' fa'>16->\ff <sol sol'>~ <sol sol'>4
  <sol, do fa>8-.\f \< <la re sol>-.
  <sib mib lab>-. <do fa sib>-.\! |
  %% First version:
  % s1*7/4*2 %%%
  %% Second version:
  r2 re,4. mi | fa4 sol |
  \t {<re sol sib re>8 <re sol sib re> <re sol sib re>}
  \t {<mi sol sib mi> <mi sol sib mi> <mi sol sib mi>} |
  \t {<fa sol sib re fa> <fa sol sib re fa> <fa sol sib re fa>}
  <la sib re sol> <la sib re sol> |
  <re, re'>8. <mi mi'>16~ <mi mi'>8
  <fa fa'>~ <fa fa'>16 <sol sol'>8. | %%%

  R2.*4
  re2.\startTrillSpan ~ re re
  \mg \stemUp \lightBeams \graceNotes {
  re,,32\stopTrillSpan mi re' mi re mi \md re' mi
  re mi re' mi re mi re' mi \stemNeutral \ottava #1
  re mi re' mi re mi re mi |
  re, mi re mi \ottava #0 re, mi re mi re, mi re mi \mg
  re, mi re mi re, mi re' mi re mi \md re' mi} |
  \pl { re\startTrillSpan mi s16
  re32 mi s16 re32 mi \hideNote s4..-"simile"
  \oneVoice re2.\stopTrillSpan}
  {s16 re32 mi s16 re32 mi s16 \hideNoteHeads {re32 mi} s4.}
  <la, do>2. | \clef bass

  <re, re'>16 <mi mi'>8. <re re'>16 <mi mi'>8. |
  <re re'>16 <mi mi'>4..\laissezVibrer s2 R1 \clef treble
  r16 <mi' mi'>8. <re re'>4 r16 <mi mi'>8. <re re'>4 r16 <mi mi'>8. |
  <re re'>16 <mi mi'>8.~ <mi mi'>1 | \clef bass
  <re, la' re>16 <mi si' mi>8 \clef treble <sol re' sol>
  <la mi' la> <si sol' si> <re sol re'>16 |
  <mi la mi'>2\laissezVibrer s8 \clef bass
  <re, la' re>16 <mi do' mi>8 \clef treble <sol re' sol>
  <la mi' la>16 <do sol' do>8 <re la' re> |
  <mi do' mi>2\laissezVibrer s16 \clef bass
  <re, la' re>16 <mi do' mi> <sol re' sol>8 \clef treble
  <sib fa' sib> <do sol' do> <re sib' re>16 |
  <fa do' fa>4\laissezVibrer s16*5 |
  <do mi do'>16 <re sol re'>8 <fa fa'>16 <lab lab'> |
  <sib sib'>4~ <sib sib'>16 |
  \ottava #1
  <lab lab'>16 <do do'> <mib mib'> <solb solb'>8 |
  <lab mib' lab>8. <sib sib'>8 |
  <do, do'>16 <mib mib'> <solb solb'> <lab lab'> <sib sib'> |
  <reb reb'>4~ <reb reb'>16 |
  \lightBeams {
  reb'32 \graceNotes {sib lab solb mib solb lab sib}
  reb \graceNotes {sib lab solb mib solb lab sib} |
  reb \graceNotes {sib lab solb mib solb lab sib
  reb sib lab solb mib solb lab sib |
  reb sib lab solb mib solb lab sib
  reb sib lab solb mib solb lab sib |
  reb sib lab solb mib solb lab sib
  reb sib lab solb mib solb lab sib |
  reb sib lab solb mib solb lab sib
  reb sib lab solb mib solb lab sib |
  reb sib lab solb mib solb lab sib
  reb sib lab solb mib solb lab sib |
  reb sib lab solb mib solb lab sib
  reb sib lab solb mib solb lab sib |
  reb sib lab solb mib solb lab sib
  reb sib lab solb mib solb lab sib} |
  reb \graceNotes {sib lab solb mib solb lab sib}
  reb \graceNotes {sib lab solb mib solb lab sib}}
  \t {reb16 sib lab} solb32 lab sib reb |
  <red, red'>8 <lad lad'>16 sold' <red red'>8 <red red'>16 mi
  lad sold <red red'> dod' <sold sold'> mi' do sib |
  <red, red'>8 <lad lad'>16 sold' <red red'>8 <red red'>16 mi
  do'? sib <red, red'> lad' <sold, sold'>8 <red' red'> |
  <sold sold'> <red red'>16 dod' <sold sold'>8 <sold sold'>16 red'
  <dod, dod'>8 <sold' sold'>16 la <red, red'> dod' <sold sold'>8 |
  <sold sold'>16 red' dod <sold sold'> la <red, red'> dod'8
  <sold sold'>16 mi do' sib <sold sold'> la <red, red'> dod' |
  <sold sold'>8 <sold sold'>16 la <red, red'> dod' <sold sold'>8
  <sold sold'>16 la <red, red'> dod' <sold sold'>8 <red red'>16 dod' |
  <sold sold'> red' dod <sold sold'> red' <sold, sold'> red' dod
  <sold sold'> red' <sold, sold'> red' <mi, mi'> do' sib <sold sold'> |
  red' dod <lad lad'> red <do do'> q q q q q q q \ottava #0 R2
  \mg s16 \stemUp <mi,,,, mi'>8. s16 <mi mi'>8. |
  s16 <mi mi'>8. s16 <mi mi'>8. |
  s16 <mi mi'>8. \md \stemNeutral r4 r8. \t {re'''32 mi sol} |
  \stemDown <la, re mi la>16
  \stemUp <la,, re mi la>8.~ <la re mi la>2 \stemNeutral s4 |
}

PianoIMg = \relative do' {
  \clef bass
  \keepDyn {
  \bracketDown "m.s." re16\sf
  \bracketUp "m.d. (sopra)" <mi, mi'>8.->
  re'16\sf <mi, mi'>8.->
  re'16\sf <mi, mi'>8.->
  re'16\sf <mi, mi'>8.-> |}
  \pl {mi,2( mi,-|)}
  {mi''16 fad8.~ fad2. }
  <mi, mi'>8. <mi' sold>8->(
  <fad la>-> <sold si>-> <la re>16->) |
  <si mi>2-> r8 |
  <mi,, mi'>8. <mi' sol>8->(
  <fad la>-> <sol do>-> <la re>16->) |
  <do mi>2-> s8 | s2 |

  \keepDyn {
  re,16\sf <mi mi'>8.->
  re16\sf <mi mi'>8.->
  re16\sf <mi mi'>8.-> |}
  <re mi la si re mi>16\sf <mi,, mi'>4..->~
  <mi mi'>8 \md re'''''16-.^\dyn "pp_staccato leggiero"
  re,-. \mg re,-. re,-. |
  \pl {mi,8~ \hideNote mi4.}
  {<sold mi'>16 si~ <mi, si'>4.} r16 |
  <mi mi'>8.\ff <mi' sold>8 <fa la> <fad si> |
  \keepDyn <la re>16\sf <si mi>4.. r16 |
  <mi,, mi'>8. dod'8 red <mi, mi'>16~ |
  <mi mi'> sib'8 sol'8.
  \keepDyn <mi la re>16\sf <fad si mi>->~ |
  <fad si mi> <sold do fa>8 <la re sol>8. |
  \ottava #-1
  <re,,, re'>16 <mi mi'>8. \ottava #0
  <re' re'>16 <mi mi'>8.~
  \t {<mi mi'>4( <re re'>-- <mi mi'>--)} |
  \pl {<re la' re>8-. lab'-.^\pp re-. \md lab'-. }
  {s8 \lightBeam \tt {lab,32( \graceNotes {do mib solb sib)}}
  s8 \md \lightBeam \tt {lab32( \graceNotes {do mib solb sib)}}} \mg
  s2
  \clef treble \ottava #1
  \stemDown
  re'8-. lab'-. re-. lab-. re,-. lab'-. re-. lab-. |
  re,-. lab'-. re-. lab-. |
  re,-. lab'-. re-. lab-. re,-. lab'-. re r | \stemNeutral

  \clef bass \ottava #0
  <\whiteNote re,,,, si' mi>16-> <dod' fad>4..
  <\whiteNote re, si' mi>16-> <dod' fad>4.. |
  <\whiteNote re, si' mi>16-> <dod' fad>8. \clef treble
  <re sol>16-> <mi la>8. \clef bass
  \lightBeams {
  \t {re,,16( \graceNotes {la' mi'}} \graceNotes { \t {re la' mi')}
  \t {si,( fad' dod'} \md \t {lab mib' sib')} \mg
  \t {sib,,( fa' do'} \md \t {sol re' la')} \mg
  \t {sol,,( re' la')} \t {mi'( la, re,)}
  \t {fa,( do' sol'} \md \t {la mi' si')}} \mg
  \t {fad,( \graceNotes {dod' sold'}} \md
  \t {sib \graceNotes {fa' do')}} \mg |
  \t {<sol,, sol'>( \graceNotes {re' sol,)}} \t {re( \graceNotes {la' re)}}
  \t {sol,( \graceNotes {re' sol,)}} \t {re( \graceNotes {la' re)}}
  \t {sol,( \graceNotes {re' sol,)}} \t {re( \graceNotes {la' re)}}
  \t {sol,( \graceNotes {re' sol,)}} \t {re( \graceNotes {la' re)}} |
  \t {sol,( \graceNotes {re' sol,)}} \t {re( \graceNotes {la' re)}}
  \t {sol,( \graceNotes {la re)}} \t {sol( \graceNotes {re sol,)}}
  \t {re'( \graceNotes {la re,)}} \t {sol( \graceNotes {re la)}}
  \t {sol( \graceNotes {re' la'}} \graceNotes \t {re, sol re)}
  \graceNotes { \t {sol,( re' la'} \t {re, sol re)}}
  \t {mi,( \graceNotes {si' fad'}} \graceNotes \t {si, re si)}
  \t {mi,( \graceNotes {si' fad'}} \graceNotes \t {si, re si)} |
  \t {mib,( \graceNotes {sib' sol'}} \t {\graceNote sib,) mib, \graceNote sib'}
  \t {\graceNotes {sol' sib,} mib,} \graceNotes \t {sib' sol' sib,}}
  \t {mib, \graceNote sib' mib,} \t {sib' mib, la}

  \ottava #-1 <re,, re'>2*1/2\laissezVibrer \ottava #0 s2. | s1 \clef treble
  \t {re''16( la' mi'} re la') \t {mi'( la, re,} mi la,) |
  \t {re,( la' mi'} re la') \t {mi'( la, re,} mi la,) |
  \t {re,( la' mi'} re la' \t {mi' la, re,} \t {mi la, re,)} \clef bass
  \t {re,( la' mi')} \t {la,( re la')}
  \t {re,( la' mi')} \t {la,( re la')} \clef treble |
  <mi sol sib>16-> <re la' do>4.. |
  <mi sol re'>16-> <fa la mi'>4.. |
  <mi sol la re>16->( <fa la si mi>8 <sol si do fa>16->
  <la do re sol>8) <fa sib re mi>16-> <sol do mi fad>->~ |
  <sol do mi fad>8 \clef bass
  r16 <dod,,, dod'>8.-- |

  <la la'>2 la->~ la_\> la_\mp
  \pl la la''1*1/2--^\f\laissezVibrer la,,2~ la
  la_\dyn "(mp_sempre)" |
  <la la'>4 la2. | la4 la2*1/2 s4_\> la_\! |
  \pl {s1 la--\laissezVibrer}
  {\oneVoice \t {la'4\mp(\> sib8~}
  sib4. do8~ \t {do4 \bracketUp "m.d." la'8~)} |
  \voiceOne la1\! _\pp \laissezVibrer} s2. |
  \ottava #-1 la,,,2*2^\ppp\laissezVibrer \ottava #0 | R2. \clef treble
  <sib''' do la'>2.\laissezVibrer \pl {red4~ red fa!2\laissezVibrer}
  {<fad sold>4~<fad sold>2.} s2 | R4.

  <fa lab>4--( <fa lab>2-- <mi lab>4--) |
  <fa lab>-- <fad la>--( <fa lab>--) |
  <mi lab>--( <fa lab>2.--)\laissezVibrer | s2.
  \keepDyn {\hairpinText "(poco)" <la, do>4--\> <la do>\!
  q--\> q\! | q--\> q q\! |
  q--\> q\! q--\> q\! | q--\> q q\! }|
  \pl { sol-- sol} {<red' fad sold>8 <red fad sold>~
  \t {<red fad sold> <re fa sol> <red fad sold>}}
  <sol, mi' sol la> <red' fad sold> \clef bass <red, la' dod> |

  <sold,, fadd'>4_\f\laissezVibrer
  <red'' mi'>-\dyn "f_ample"( <mi red'>) |
  \ottava #-1 <dodd,, red'>4*3\laissezVibrer
  <fadd sold'>\>\laissezVibrer <red dodd'>--\!\laissezVibrer |
  <sold sold'>\laissezVibrer <sold fadd'>\laissezVibrer |
  <fadd sold'>\laissezVibrer <dod dod'>\laissezVibrer |
  <dod dod'>\laissezVibrer <dod sid'>\laissezVibrer |
  <fadd sold'>\laissezVibrer <sid, dod'>\laissezVibrer |
  <la sold'>\laissezVibrer <dod sid'>\laissezVibrer |
  \ottava #0
  <sold' sold'>2\laissezVibrer -"loco" s4 |
  s4 \ottava #-1 s2 |
  <la, sold'>8--\laissezVibrer \ottava #0 \clef treble
  <mib''''' si'?>--( <do la'>-- <si fad'>--
  <lab fa'>-- <sol re'>-- |
  <mi la si>4.--)\laissezVibrer | \clef bass \ottava #-1
  <la,,,, sold'>2.\laissezVibrer \ottava #0 |
  s4. s4.. \acciaccatura
  <dod'' dod'>16 s16 \ottava #-1
  <dod,, fa lab dod>4*3\f\laissezVibrer
  \ottava #0 \acciaccatura <sold''' sold'>16 <sold,, sold'>4*3
  \md \acciaccatura <dod'' dod'>16 \mg <dod,, dod'>4*3 |
  <re re'>4\laissezVibrer r8 <la' la'> <fa' fa'> dod |
  mi,4\laissezVibrer r s mi s2 |

  la4 \clef treble \ottava #1
  \acciaccatura sold''''16 la8-.
  \ottava #0 r r4 \clef bass fa,,,,,_\p |
  \keepDyn {fa8-> fa->
  \t {fa->\< fa-> fa->} fa16-> fa fa fa |
  fa8\! } r r8. | R1*7/16*2
  \pl \keepDyn {<re' mib si'>16->\sfz <mi fa? dod'>8->}
  {<re' sol re'>16->\ff <mi la mi'>8->} |
  R1*7/16*2
  \pl \keepDyn {<re, sol sib>16->\sfz <mi la do>8.->
  <re sold dod>16->\sfz <mi lad red>8->}
  {<mib' fad si re>16->\ff <fa sold dod mi>8.->
  <mi la re>16-> <fad si mi>8->}
  R1*7/16
  <sib, mib lab>4--\f <sol do fad>--\cresc <fa sib reb solb>-- |
  \pl {<re re'>16\ff <mi la do>4..\laissezVibrer}
  {re''16-> <fa, sold dod mi>4..\laissezVibrer}
  \graceNotes \lightBeams \keepDyn
  {mi,32( re' mi re') mi,( re' \md mi re')
  \t {mi,16(\ff re' mi} re'8)
  \ottava #1 re'32--( sib fa mi re sib fa mi \ottava #0
  re'64 sib fa mi \hairpinText "molto" re^\> sib fa mi re' sib fa mi
  \mg re sib fa mi re'^\! sib fa mi re sib fa mi
  \t {re'32 sib fa} \t {mi re sib}} |
  \ottava #-1 mi,4*3)\pp\laissezVibrer \ottava #0 |
  R2.*2 R4. R1*6 R2. s2.*2 s4. R1*2

  \ottava #-1 <mi mi'>2.-- <mi mi'> <mi mi'>2 <mi mi'> |
  \t {<mi mi'> <mi mi'> <mi mi'>}
  <mi mi'>4.~ <mi mi'>8~ <mi mi'> <mi mi'>4. |
  <mi mi'>4 <mi mi'> <mi mi'> <mi mi'>~ |
  <mi mi'>8 <mi mi'>4. <mi mi'>4 <mi mi'> |
  <mi mi'> <mi mi'>4. <mi mi'> |
  <mi mi'>2 \t {<mi mi'>4 <mi mi'>2} |
  <mi mi'>4 <mi mi'> \t {<mi mi'> <mi mi'> <mi mi'>} |
  <mi mi'> <mi mi'> \t {<mi mi'> <mi mi'> <mi mi'>} |
  <mi mi'> <mi mi'> \t {<mi mi'> <mi mi'> <re re'>} |
  <mi mi'>4.\laissezVibrer \ottava #0 s4.
  <re' mi re' mi>->\laissezVibrer s |
  \ottava #-1 <mi, mi'>8 <fa fa'> <sol sol'> |
  \ottava #0 <sib sib'> <dod dod'> <red red'> |
  <mi mi'> <fa fa'> <sol sol'> |
  <sib sib'> <dod dod'> <red red'> |
  <mi mi'>4. r8 |
  <re fa! la re>16-> <mi sol! si mi>->~ <mi sol si mi>4\laissezVibrer
  \pl {\ottava #-1 <mi,, si' re>8.-\dyn "sfffz"} <fa' sold si re mi> \ottava #0
  s r4 <mi mi'>( |

  <re re'>16-.) r r8 r2 r1 |
  re'16 re re re re re re re re re re re re re re re
  re re re re re re re re re re re re |
  <re la'>8-. si'-. do-- re16-. la-. si8-. do-.
  re-- la16( si do8-.) re-- la16( si do8-.) re( la-.) |
  si-. do-. re8.-- la16 si8-. do-. re-. la16 si
  do8-. re-- la16( si do8-.) re16( la si8-.) |
  sol8-. re16( mi fa8-.) sol16 re mi8 fa16 sol
  re8 mi16 fa sol8 re16 mi fa8 sol16 re mi8 fa16 sol |
  re16 mi8 fa16 sol8 re16 mi~ mi fa sol8
  re16 mi8 fa16 sol <re sol>8 <mi la>16~
  <mi la>8-- <fa sib>->--~ <fa sib>16 <sol do>8.->-- |
  <sib, reb>8-. <do mib>-. <reb solb>-. <mib lab>-.
  <sib reb>16 <do mib>8 <reb solb>16 <mib lab>8 <sib reb>
  <do mib>16 <reb solb> <mib lab>8--
  sib16( do reb mib) solb( lab la si) |
  r2 re,8-. mi-. fa-. sol-.
  re mi fa sol lab16( sib si dod) |
  fa,( lab sib si dod) fa,( lab sib
  si dod) fa,( lab sib si dod)
  fa,( lab sib si dod) lab( sib si dod) lab( sib si dod) |
  <re,, re'>-> <mi mi'>8.~ <mi mi'>4
  <sib' mib lab>8-. <do fa sib>-.
  <re sol do>-. <fa, fa'>16-> <sol sol'>~ <sol sol'>4
  <si mi la>8-. <dod fad si>-.
  <re sol do>-. <mi la re>-. |
  %% First version:
  %<re, re'>16 <re' re'> <mi, mi'> <mi' mi'>
  %<fa, fa'> <fa' fa'> <sol, sol'> <sol' sol>
  %<re re'> \md <re' re'> \mg <mi, mi'> \md <mi' mi'>
  %\mg <fa, fa'> \md <fa' fa'> \mg <sol, sol'> \md <sol' sol'>
  %<re re'> <re' re'> <mi, mi'> <mi' mi'>
  %<fa, fa'> <fa' fa'> <sol, sol'> <sol' sol'>
  %\mg <re,, re'> \md <re' re'> \mg <mi, mi'> \md <mi' mi'> |
  %\mg <fa, fa'> \md <fa' fa'> \mg <sol, sol'> \md <sol' sol'>
  %\mg <re,, re'> <re' re'> <mi, mi'> <mi' mi'>
  %<fa, fa'> <fa' fa'> <sol, sol'> <sol' sol'>
  %<re re'> \md <re' re'> \mg <mi, mi'> \md <mi' mi'>
  %\mg <fa, fa'> \md <fa' fa'> \mg <sol, sol'> \md <sol' sol'>
  %<re re'> <re' re'> <mi, mi'> <mi' mi'>
  %<fa, fa'> <fa' fa'> <sol, sol'> <sol' sol'> |
  %% Second version:
  fa,,2\laissezVibrer <re'' sol si>4. <fa si re> |
  <fa re'>16 <si mi>8. <si mi>16 <re fa>8. |
  <re, sol si!>8 <re sol si> <mi sol si re> <mi sol si re> |
  <fa si? re> <fa si re> \t {<sol si re sol> q q} |
  <mib,, mib'>4 <fa fa'> <solb solb'>8 <lab lab'> | %%%
  R2.*4 s2.*3
  \stemDown \lightBeams \graceNotes {
  re32 mi s16 re'32 mi s16 \md re'32 mi s16 re'32 mi s16 } \mg s4 |
  \stemNeutral s2.*4 \ottava #-1
  <re,,,, re'>16 <mi mi'>8. <re re'>16 <mi mi'>8. |
  <re re'>16 <mi mi'>4..\laissezVibrer s2 \ottava #0 R1
  \ottava #-1
  r16 <mi mi'>8. <re re'>4 r16 <mi mi'>8. <re re'>4 <re re'> |
  \ottava #0 <re' re'>16-"loco" <mi mi'>8.~ <mi mi'>4
  \ottava #-1 mi,2. \ottava #0 |
  mi'2 mi8 <mi, mi'>2\laissezVibrer s8 |
  mi'4 mi8 mi mi <mi, mi'>2\laissezVibrer s16 |
  mi'4~ mi16 <fad fad'>8 <re re'> |
  <mi mi'>4\laissezVibrer s16*5 |
  <mi, mi'>8 <re' re'>8. | <mi mi'>4~ <mi mi'>16 |
  <mi, mi'>4 <re' re'>16 | <mi mi'>4~ <mi mi'>16 |
  <mi, mi'>4~ <mi mi'>16 | <mi' mi'>4~ <mi mi'>16 |
  <mi,? mi'?>2\laissezVibrer |
  <re' re'>16 <mi mi'>8. <re re'>16 <mi mi'>8. |
  <re re'>16 <mi mi'>8.
  \lightBeams { \graceNotes {sol''32 mi re do} la8}
  <re,, re'>16 <mi mi'>8.
  \lightBeams { \graceNotes {sol''32 mi re do} la8}
  <re,, re'>16 <mi mi'>8.
  \lightBeams { \graceNotes {sol''32 mi re do} la8}
  <re,, re'>16 <mi mi'>8.
  \lightBeams { \graceNotes {sol''32 mi re do} la8}
  <re,, re'>16 <mi mi'>8.
  \lightBeams { \graceNotes {la'32 fad mi re} si8}
  <re, re'>16 <mi mi'>8.
  \lightBeams { \graceNotes {la'32 fad mi re} si8}
  <re, fad si re>16 <mi sold mi'>8.~ <mi sold mi'>2 |
  \t {la,16 mi' si'} la mi' \t {si' mi, la,} si mi,
  \t {la, mi' si'} la mi' \t {si' mi, la,} si mi, |
  \t {la, mi' si'} la mi' \t {si' mi, la,} si mi,
  \t {la, mi' si'} la mi' \t {si' mi, la,} si mi |
  \t {la, mi' si'} \clef treble la mi'
  \t {si' mi, la,} \clef bass si mi,
  \t {la, mi' si'} \clef treble la mi'
  \t {si' mi, la,} \clef bass si mi, |
  \t {la, mi' si'} \clef treble la mi'
  \t {si' mi, la,} \clef bass si mi,
  \t {la, mi' si'} \clef treble la mi'
  \t {si' mi, la,} \clef bass si mi, |
  \t {la, mi' si'} \clef treble la mi'
  \t {si' mi, la,} \clef bass si mi,
  \t {la, mi' si'} \clef treble la mi'
  \t {si' mi, la,} \clef bass si mi, |
  \t {la, mi' si'} \clef treble la mi'
  \t {si' mi, la,} \clef bass si mi,
  \t {la, mi' si'} \clef treble la mi'
  \t {si' mi, la,} \clef bass si mi, |
  \t {la, mi' si'} \clef treble \t {la mi' si'}
  \t {la, mi' si'} \t {mi, la re} \t {la mi' si'} \t {mi, la re} |
  \clef bass R2
  <re,,, re'>16 s8. <re re'>16 s8. |
  <re re'>16 s8. <re re'>16 s8. |
  <re re'>16 s8. r2 |
  s2. \ottava #-1 la,,4 \ottava #0 |
}
