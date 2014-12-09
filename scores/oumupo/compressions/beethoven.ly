\header {
  piece = "Beethoven en short"
}

\language "italiano"
\pointAndClickOff

#(set-global-staff-size 18.5)

BeethovenMd = \relative do' {
  \time 3/4
  \tempo "Moderato"
  \mark \markup \bold 14
  sold4(\p \1 dod mi
  \t {sold, dod8)~} dod16\< <sid sold' red'\2>8.--
  <sold' dod mi sold\3>8-.\f q-. |
  \mark \markup \bold 4
  <sol la dod mi sol\1>2~\> <sol la dod>4
  \acciaccatura {re'16[\! mi]} \t {fa4 \2 solb8~}
  solb8 <fa, lab fa'\3>16 re' <red, fad red'>8 r |
  \mark \markup \bold 31
  \pl {fab4 mib} <sol reb'\1>2\p <mib lab do\2>8-. <lab do>-. |
  <sol sib>16( <fa lab> <mib sol>8)
  \tempo "Poco rit."
  \pl \t 4 {lab lab lab lab lab lab}
  {reb4 \3 ~ \t {reb8 mib fab16 lab}}
  sol16 \4 do sib32( lab sol16) r8
  \mark \markup \bold 13
  \t {lab,16( \1 fa mib}
  \tt {re fa re do sib)} |
  \time 2/4 \clef bass
  \ttt {r16 \< sib8 \2 mi, sib16}
  \clef treble
  \ttt {r16 sib''8 sol do,16} |
  \time 4/4
  \grace sol''4( lab16 \3 sol32 lab sol lab sol lab
  sol lab\f sol lab sol lab sol lab)
  <fa lab\4>16( sib) <sib, re>(\< sib')
  <sib, re>( sib') <do, mib>( do') |
  \mark \markup \bold 23
  \ttt 4 {sib(\1\!  reb sol, sib fa sol fa sol sib sol fa sol)
  reb[\2( lab' sol lab] reb,[ lab' sol lab] reb,[ sib' la sib])} |
  r \dyn "f_sempre" fa(\3 si re fa sol fa mib re mib re do si do re si) |
  \mark \markup \bold 5
  r4 <sol, sol'>2~-- \1 \fp q16( <re' re'> <fa fa'>8-.) |
  \time 2/4
  si,16( \2 \< mib, do' mib, dod' mib, re' mib,)
  sol'32 \3\!( lab sol fad sol8-.)
  sol32( lab sol fad sol16-.) \clef bass <re,, fa si>->\sfz |
  \mark \markup \bold 8
  r4 <mib sol do\1>~\ff <mib sol do>8..
  <sol do>32 <sol si re>8.. <sol do mib>32
  <fad la si red\2>8-- la'32->( \3 do, re mib
  re do) si'->( si, do re do si) |
  \mark \markup \bold 21
  \tempo "Tempo giusto"
  r16 <do, mi\1>-. q-. q-.
  q-. q-. <re fad>-. <re fad>-.
  \mg <si, si'>8 \md <si'' re sol\2>
  \ttt {\mg <sol,, sol'>16 \md sol''\3
  \mg <la,, la'> \md la'' \mg <si,, si'> \md si''}
  \mark \markup \bold 17
  \t {do, \1 <do mi la>-. <re fa sib>->~} q la'-.
  sold-. <do, mib fa la\2>~ la'32\< \clef treble dod'(\3 la' dod
  \mark \markup \bold 18
  \time 6/8
  fa4 )\1 \afterGrace lab,8\startTrillSpan {sol16\stopTrillSpan lab}
  sol16. \2 <fa, fa'>32 <mi mi'>16 <re re'> do8
  <la' mib' la\3>4\f <sib, mib sib'>8 <do' mib lab do>2*1/4
  \t 8 {do'16 lab mib do lab mib}
  \mark \markup \bold 7
  \tuplet 2/3 4. {re8-.\< \1 fad-. <la, la'>-. <dod dod'>-.
  <re re'>-. <mi mi'>-. <fad fad'>-. <sol sol'>-.}
  \acciaccatura la8 la'2.\p \2 la4 la8 \3 <red, fad>( <mi sol> <sol si>)
  \mark \markup \bold 1
  \tempo "ad lib."
  <do, mib lab\1>4--\cresc <sib sol'\2>-- <lab fa'\3>--
  <mi sol sib reb mi\4>--
  \mark \markup \bold 2
  <mi la dod\1>-- <si re si'\2>--
  <do mib lab\3>-- <red fad\4>(\> mi8)\! r
  \mark \markup \bold 3
  <si re\1>4-.\p <si sol'>-. <si fad'\2>--
  \tuplet 2/3 4 {<do' mib fad la\3>8( <si re sol>)
  <re fa sol si\4>(\> <mi sol do>)}
  \mark \markup \bold 27
  \time 2/4
  \tempo "A tempo"
  <si re\1>16\mf sol <si re> sol <si re> sol <si re> sol
  <sol sib\2>8(\p <la do> <sib re>4)
  <sol si\3>8--\f dod-- <fad, re'>16--
  \mark \markup \bold 10
  re(\p \1 re' lad si fad sol8)
  \pl {<re do'>8-- \mg <re la'> <sol, sol'>4}
  {r16 re''\2 mi fad fad( sol) re si}
  \ttt {do8 sol'16( fa mi re}
  \tt {dod8)
  \mark \markup \bold 6
  re8( sib) sol( la)\turn}
  \time 3/4
  <fa re'\2> sol16 fa sol'( \3 fa mi re do sib la sol) \bar "||"
  \time 2/2
  \tempo Allegro
  \mark \markup \bold Violon
  la'2(\mf sol16 fa mi fa sol fa mi re)
  \mark \markup \bold 22
  <fa, la do\1>4~ q8. <re fa re'>16
  <mi sol sib>8. <do mi do'>16 <re la'\2>( fa'\3 mi sol,
  fa re' do mib,)
  \mark \markup \bold 19
  re8-. \1 sib'-. sol( fad sol-.) <re do'>->~
  \time 2/4
  q \acciaccatura {sol16[ la]} sib8(\> la sol
  \time 6/8
  fad8)\!
  \mark \markup \bold 20
  \t 8 {re16( \1 sol si re do la)}
  sol16.( \2 fad32) fad4
  \mark \markup \bold 11
  <lad, dod sol'\1>4\< <si fad'>8 <mi mi'\2>4 <mi mi'>8
  <red red'>8-.\!
  \clef bass
  \mark \markup \bold Bartók
  sold,,4~(\f  sold16 lad) si8-> si->
  \time 2/4
  \tempo Doppio
  \mg <mi, sold si>^> \md si'-> \mg si^> \md si->
  \mg <mi, sold si>^> \md si'-> \ottava #-1 si,,^\sfz\noBeam
  \ottava #0 si''->
  \mark \markup \bold 29
  \clef treble
  r8.\ff <re'' fa sib re\1>16 q8 <re fa sib mib>16 <re fa sib re>
  q8 <sib re fa sib>4 r16. <la' fa'\2>32\pp
  <do fa>8.( <fa, re'>16) r8 sib16. <fad re'>32
  <la re>16( <re, sib'>)
  <sib reb fa sib\3>\ff <reb fa sib reb>
  <do fa do'> <fa, la do fa> <fa' fa'> <reb reb'>
  \cadenzaOn
  <la'\4 do>32[ fa mib do] <la do>[ fa mib do]
  \mg fa,,[_"Ped." fa'] \md \stemUp fa[\5 fa']
  \stemDown fa[ fa'] \stemUp fa[ fa']
  s8 \pl {\afterGrace
  \pitchedTrill la,,1\startTrillSpan sib
  {sol16\stopTrillSpan la]} sib2}
  {fa'2\p mib re} \bar "|" \cadenzaOff
  \tempo Tranquillo
  \mark \markup \bold 24
  \time 4/4
  reb4( \1 <reb, solb> <reb fa> <reb solb>)
  <solb do>4.. <fa reb'>16 <fa lab>4 r
  \time 3/4
  \mark \markup \bold Berg
  fad,8^( la \t {mi' do sol'} <re fad si re>4^-
  <do mi sib'>^- <sol si mib>^- <sib re sol>^-)
  \time 7/8
  \tempo Allegro
  \mark \markup \bold Boulez
  mib''16\f \ottava #1 mi' sol,\ottava #0 sib,
  dod sold si-- fa' mib8 fa,16 fad' <re, sold> si
  \time 3/4
  <fad' sold> dod' sold' mi si sib,
  sol'8\dim lab'16 mib <reb, fa> mi
  <la,! lab'> sol~ <fad, sol'>8\laissezVibrer
  \mark \markup \bold 28
  \tempo Andante
  s2
  \time 2/4 r4 \t {si''8( \2 la sold)}
  <sol mi'\2>4 \ottava #1 <sol' sib sol'>8(\pp <fa la fa'>)
  \ottava #0
  \t {re8\< \3 <mi, sol sib dod> <mi, sol dod>}
  dod32[ \mg re,, mi fad] si,[ \md si''''\4 dod re]
  \t {sold,16 \mg mi,,, la,\sf}
  \mark \markup \bold 27
  \md <do'' mi fad\1>4\p <dod mi fad>8
  \pl {<lad mi'>4 <la mi'>} {sold'8( \2 fad4 fad8)}
  \mark \markup \bold 30
  \t {r4 <sid, red fad la>(-- <dod mi sold>--)}
  \mark \markup \bold 32
  r16. <mib la do mib>32 q4~->
  <mib la do mib>16.\> <la do>32
  \pl {fad8_( sol)} do4 re8.( sol,16)
  sol4\pp\fermata r
  \mark \markup \bold 26
  <mib sol>4 <sib fa'> <sol mib'>2\fermata \bar "|."
}

BeethovenMg = \relative do' {
  \clef bass
  <dod,, dod'>2.~ q4 r q8-. sold'-.
  \t 4 {la8 la' la la la la la la la}
  <sol si re fa>4\arpeggio r <si, si'>8 r
  <lab, sib'>2 <lab lab'>8 <lab'' do>-.
  <sib reb>4
  \t 4 {<fab lab>8 <fab lab reb> q q <mib lab do> <reb lab' reb>}
  \clef treble mi'16 lab sol do sib32([ lab sol16)]
  \clef bass \t {lab,16[( fa mib]}
  \tt {re fa re do sib)}
  \t 4 {do,8 mi sib' mi, sol do}
  <re, fa sib>2
  sib'16( sib' la, la' lab, lab' sol, sol')
  \t 4 {<mi mi'>8 \clef treble <sol sol'> <sib sib'> <reb reb'> q q}
  <reb fa lab>4-- \t {r8 <solb, sib reb mib solb>4--}
  \clef bass
  sol,16 <fa' sol> <re si'> <fa sol> <re si'> <fa sol> <re si'> <fa sol>
  <re si'> <fa sol> <re si'> <fa sol> <re si'> <fa sol> <re si'> <fa sol>
  mib sol fa sol si,-- sol' re sol do, sol' si,-- sol' do, sol' re sol~
  <lab, mib' sol>8 lab' <sib, mib sib'> <si mib si'>
  <dod' mi>16-. q-. <re fa>8-. <dod mi>16-. q-. <re fa>-. <sol,,, sol'>->
  r4 <do mib sol do>~ q8.. mib'32 re8.. do32
  \t {<si, si'>16 q q} r16. <fad' do' mib fad>32->--
  r8 r32 <fa si re fa>16.->--
  do16-- <do sol'> q q q q <do la'> q
  s2
  \t {do16 <do mi la> <re fa sib>~->} q la'-.
  sold-. <do, fa>~ fa32 la,( fa' mi
  re16) sib( re fa sib re mib4) r8
  fad'4 <sol,, sol'>8 <lab do mib lab>4.
  \tuplet 2/3 4 {<re, re'>8-. fad-. <la, la'>-. <dod dod'>-.
  <re re'>-. <mi mi'>-. <fad fad'>-. <sol sol'>-.
  do( la') <mi sol'>\arpeggio ^( la')}
  \clef treble si( la sol) <la do>( <sol si> <mi sol>)
  <lab, do mib lab>4-- \clef bass <fa mi'>-- do'--
  \t {fa,8( sib reb)} la4-- <si, sol'>--
  mib \pl {mi~ mi8} {r16 la[ si la] sold8} r
  <sol, sol'>4-. q-. <la red>--
  \tuplet 2/3 {<sol' do mib>8( <sol si re>)}
  r4 \acciaccatura fad16 sol8-.
  \acciaccatura lad16 si8-. \acciaccatura fad16 sol8-.
  \acciaccatura dod16 re4--
  <sol,, sol'>8 <fa fa'> sib fa' <la, mi'>4( re8) r
  r sol,16( si re8) s s4
  \ttt {do16( mi sol mi do mi}
  \tt {sib8) <sib' do>( sol) <mi do'>_( <fa do'>)}
  <sib re>4
  do,,16 do' do, do' do, do' do, do'
  \pl fa,1 {la'8 do fa do la do fa do}
  \t 4 {fa,,,8 fa' fa fa fa fa fa fa fa}
  r la' sib fad r4 <sib re>8( <la do> <sol sib>-.)
  <fad la>~ q <dod' mi>4.(
  re8) r4
  \tuplet 4/3 {<sol, si>8 re' <la do> re}
  \pl {si,16 si si si si si} {mi4^( red8)} <do lad'>4.
  \t {fad16( la si)} sold,,4~( sold16 lad) si8-> si->
  \stemDown <mi sold> r <re lad'> r <mi sold> r <re lad' si>
  \stemNeutral sib\noBeam
  <fa'' sib re>8. q16 q8 q16 q q8 <re fa sib>4
  \clef treble r16. <fa' do'>32
  <la do>8.( <sib re>16) r8 <sol sib>16. <re la'>32
  <fad la>16[( <sol sib>)] \clef bass sib,,,32 sib' sib, sib'
  la, la' mib mib' reb, reb' sib, sib'
  fa,[ la do mib] fa[ la do mib]
  s4. do2 fa, sib
  solb8 solb' sib solb dob solb sib solb
  <mibb solb>4.. <reb lab'>16 <dob reb>4 r
  <re, la' do>2\pp \t {r8 sold,( la}
  \t {fad'_\< re lad'} mi'4--_\! do--)
  \clef treble
  r8 do''' re, fad16-- do \ottava #1 la' mi' <do sib'> sol' la <dod, mib>
  sol do <sib mib> \ottava #0 dod, fa mi'8 re,16 fa, la'8 <si, do'>16~
  <si fad'> <re, sib'> mib' <dod, do'!>\arpeggio \laissezVibrer s4
  \t {la'8(\pp \1 si dod} red,4) \pl re \t {sold8( la si)}
  <dod, lad'>4 \clef bass \ttt {do,,16 do' do, do' do, do'}
  \t {<sol mi'>8 sol' sib} s4
  s8 la,4 lad8 dod16 mi dod mi do mi do mi
  \t {r4 <sid red fad la>--( <dod mi sold>8--) <mib mib'>\ff }
  <fad, fad'>16. <fad, fad'>32 <fad' fad'>4->~ q16. <fad' mib'>32
  \pl {lab8_( sol)} mib'4 <si,, sol'> q\fermata r
  R2 <do do'>2\fermata
}
