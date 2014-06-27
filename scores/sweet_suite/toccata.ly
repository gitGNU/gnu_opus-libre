%-- Sweet suite -- toccata.ly --------------------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

ToccataClavecinMd =
\relative do' {
  \time 3/4
  \clef bass
  s4 \tuplet 3/2 {fa,8\rest sol,, \tuplet 3/2 {lad16 dod red}}
  mi4 fa'8\rest sol,,16 fa''\rest s4
  \stemUp
  \tuplet 3/2 {r8 <do re la'>[ q]}
  \mg \stemDown r8 mi,32 red mi dod~ dod32 si16 sib32 re8~ re4
  \md \stemUp \tuplet 3/2 {r8 sol' mi~} mi4 s \stemNeutral
  \mg <solb,, dob reb>8 r
  \pl {s4 r16 dod16. re32 si16~ si4}
  {\md sol''16 fa sol mi~ mi4 s}
  \md \stemUp \tuplet 7/4 {r16 la sold sol fad la <la, fa'>~}
  <la fa'>4
  \pl { \oneVoice
  \mg \tt {r16 <fad, fad'> <sold sold'> <mid mi'> <la la'>~}
  <la la'>4~ \stemDown la'}
  { \md s2 \oneVoice r16 <la, sib> r <la sib> }
  \mg \tttt {sol'8 fad mi16 re dod}
  \md \ttt {r mi' sol sib do reb}
  \mg \tttt {do,, si sib la lab sol solb}
  \md \clef treble r8 <do''' si'>32 <mib sib'> <do si'> <dod sold'>~
  <dod sold'> <mi sol>16 <sib la'>32 <dod fad>4 r8
  <solb fa'>32 <do mi> <solb fa'> <la mib'>16. <si re>16~
  <si re>32 <sib reb>16 <mib, reb'>32 <la fa'>8-. <lab do>4--
  s4
  \t {r8 <mib re'?> <fad dod'>} <sol sib>4~
  <sol sib>16 <reb lab'>8 <mib sib'>16 <si sol'>4. r8
  \mg \clef bass
  \t {r8 <mib,, sib'>4~} <mib sib'>16 <do sol'>8 <re la'>16
  <reb lab'>4~ <reb lab'>8 <sib' mib fa la>~
  q16 <si re mi sold>8.~ \t {q8 la' si}
  \clef treble \tupletsOff
  \tttt {s8. \md \stemUp <si' red mid lad>16 s8 \mg \stemDown si16~}
  \tupletsOn
  \stemNeutral si8 <mib, sib'>4 <sol si>8
  <lab, reb mib sol>4 r16 <la re mi fad>8 <lab reb mib sol>16~ q8 r
  \t 4 {
    \tupletUp \md r8 <sol'' si> <lab sib>
    \tupletDown \mg <mi, si'> <sol sib> <la re>
    \tupletUp \md <mib' reb'> <lab do> <si mi>
  } \mg \clef bass sib,,,4
  \stemUp
  \md r16 re'' mib si
  \tupletNeutral \stemNeutral
  \mg \clef bass \t {do,,,8 si' re}
  \stemDown reb''4
  \md \stemUp do'8 mib, \mg \stemNeutral
  \t {re re reb} \stemDown do2*1/2
  \tupletsOff \md \stemUp \tttt {s4 s8 mi'16}
  \tupletsOn \stemNeutral \tttt {fa fa fa fa fa fa fa}
}

ToccataClavecinMg =
\relative do' {
  \clef bass
  \tuplet 7/4 4 {
  fa,,,16 \md fa fa fa fa fa fa
  fad \mg fad fad fad fad fad fad
  sol \md sol sol sol sol sol sol
  sold \mg sold sold sold sold sold sold
  la \md la la la la la la
  sib \mg sib sib sib sib sib sib
  si \md si si si si si si
  do do do do do do do
  dod \mg dod dod dod dod dod dod
  re \md re re re re re re
  red \mg red red red red red red
  mi \md <fa, la si mi> \mg mi' mi
  \md <fa, la si mi> mi' mi
  fa fa fa fa fa fa fa
  \mg solb solb solb solb solb solb solb
  \md \stemDown sol sol sol sol sol sol sol
  \mg \stemUp sold sold sold sold sold sold sold
  \md \stemDown la la la la la la la
  \mg \stemNeutral sib sib sib sib sib sib sib
  \md si si si si si si si
  do do do do do do do
  \mg \stemUp dod dod dod dod dod dod dod
  \md \stemNeutral re re re re re re re
  \mg red red red red red red red
  \md mi mi mi mi mi mi mi
  \mg fa fa fa fa fa fa fa
  fad fad fad fad fad fad fad
  sol sol sol sol sol sol sol
  sold sold sold sold sold sold sold
  la la la la la la la
  sib sib sib sib sib sib sib
  \stemUp
  \md si \mg si \md si \mg si \md si \mg si \md si
  \stemNeutral
  \mg do do do do do do do
  dod dod dod dod dod dod dod
  \clef treble
  re re re re re re re
  red red red red red red red
  mi mi mi mi mi mi mi
  \md fa fa fa fa fa fa fa
  fad fad fad fad fad fad fad
  sol sol sol sol sol sol sol
  sold sold sold sold sold sold sold
  la la la la la la la
  sib sib sib sib sib sib sib
  \mg <do, mi fad si> \md \stemDown si' \mg \stemUp si
  \md \stemDown si \mg \stemUp si \md \stemDown si
  \mg \stemUp si
  \md \stemNeutral do do do do do do do
  dod dod dod dod dod dod dod
  re re re re re re re
  red red red red red red red
  mi mi mi mi mi mi mi
  \mg fa fa fa fa fa fa \md fa
  fad fad fad fad fad fad \mg fad
  \tupletDown
  sol sol sol sol sol sol \md sol
  \tupletNeutral
  sold sold sold sold sold sold \mg \clef treble sold
  la la la la la la \md la
  sib sib sib sib sib sib \mg \clef treble sib
  \stemUp si si si si si si \md \stemDown si
  \tupletDown %FIXME: doesn't work.
  do \mg \stemNeutral do do do do do \md do
  \tupletNeutral
  dod dod dod dod dod dod \mg dod
  \stemUp re re re re re re \md \stemNeutral re
  red red red red red red \mg red
  mi mi mi mi mi mi mi
  \bar "|."
  }
}
