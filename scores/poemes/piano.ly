%-- Trois poèmes -- piano.ly --------------------------------------%
% (c) 2004-2010 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

%-----------------------------    I    ----------------------------%

UnPianoMd = \relative {
  r4 | R2-\dyn "ppp_très clair"
  \pl <si' red sold>2.\arpeggio \laissezVibrer
  <si' red sold>\arpeggio \laissezVibrer |
  \pl <la, do fa>2\arpeggio \laissezVibrer
  <la' do fa>\arpeggio \laissezVibrer |
  r4 \pl { \set tieWaitForNote = ##t
  \ind "(dolce)" lab,8~ reb~ fa4~ <lab, reb fa>2 }
  {s4 \set tieWaitForNote = ##t
  \t {s8 sol'~ do~} <sol do mib>2 } |
  r2 \pl <sol, sib mib>\arpeggio <fa' la re>\arpeggio
  \pl <solb, dob mib>\arpeggio \laissezVibrer
  <fa' sib reb>\arpeggio \laissezVibrer s2 |
  
  \t {la'8(-\dyn "ppp_sempre"\< re, la} re-- re,--) \t {la'( re, la} re-- la--) |
  <re, la'>-\dyn "pp_ben legato" do <re la'> la
  <re la'> do <re la'> la
  <re la'> do <re la'> la |
  <si sold'> sold <red' sold> sold,
  <si sold'> sold <red' sold> sold,
  <si sold'> sold <red' sold> sold, |
  <re'! la'> do <re la'> la
  <re la'> do <re la'> la |
  <re la'> do <re la'> la
  <re sol> sol, <sib sol'> sol |
  <re' la'> do <re la'> la
  <si sold'> sold <red' sold> sold, |
  \ttt {la'16(-\dyn "pp_sempre" re, do la' re, la}
  \ttt {la' re, do la' re, la}
  \ttt {la' re, do la' re, la}
  \ttt {la' re, do la' re, la)} |
  \ttt {<sold' si>( mi si <sold' si> mi si}
  \ttt {<sold' si> mi si mi sold si)}
  \ttt {<la do>( fa do fa do' do)} |
  \pl {r4 r8 <do la'>-. fa,-. do-.} <fa' la? do>2.-- |
  <reb, sol>8 do <reb sol> do
  <reb sol> do <reb sol> do |
  <mib sol> do <mib sol> do
  <mib sol> do <mib sol> do |
  <re! sol> la <re sol>4 la |
  \set tieWaitForNote = ##t
  <re sol> \t {r8 la~ re~} <la re sol>2. |
  
  r2 \pl {<si' red sold> <la do fa>}
  {<si' sold'>32 red8..\laissezVibrer s4
  <la fa'>32 do8..\laissezVibrer s4 } |
  r4 r8 \pl <fa,, la re!> {<fa' re'!>32 la16.}
  r16 \pl <red,, fad si>8. {<red' si'>32 fad~ fad8} |
  r4 <lab sol'>32 re8..\laissezVibrer
  r8 <mi, red'>32 lad16.\laissezVibrer r4 |
  \t {r8 <do, si'>32 fad16. <la, sold'>32 red16.\laissezVibrer }
  r4 \t {sib,8 \change Staff = "mg" sib, la' \change Staff = "md" }
  lab' la, | <mib si' mi!>2.~ \arpeggio <mib si' mi>2 r4 |
  R2*2 \clef bass
  \t {r8 mib~ lab~} <mib lab>2. |
  \t {r8 sib~ fa'~} <sib, fa'>2 |
  \t {r16 la!~ mi'!~} mi8~ <la, mi'>2~ <la mi'> r8 |
  R1*5/8 \clef treble
  <re' la'>8 do <re la'>~ la~ <la re la'>2*5/4 |
  <re la'>8 do <re la'>4~ <re la'>2*5/4 |
  <re la'>8~ dod mi si~ <si la'>2 |
  \pl {re4 \set tieWaitForNote = ##t sib~ fad'2~
  <sib, fad'>1\laissezVibrer }
  {la'1~ la\laissezVibrer } | r2
  \pl <red, sol! do>\fermata <sold' si>\fermata
}

UnPianoMg = \relative {
  \clef bass
  r4 | <mi,,, mi'>2\laissezVibrer s2. s2
  <mi mi'>2.\laissezVibrer s2 |
  mi2*2\laissezVibrer s1
  sol!8( sol' \t {sol'-- sol, sol)}
  sol,( sol' \t {fad'-- sol, sol)} |
  \pl { sol,2 sol' sol si si si sol! sol
  <sol, sol'> sib' <sol, sol'> si'! }
  {
    \t {r8 <do fa> re} \t {<do fa> re <do fa>}
    \t {re <do fa> re} \t {<do fa> re <do fa>}
    \t {re <do fa> re} \t {<do fa> re <do fa>}
    \t {<mi la> red <mi la>} \t {red <mi la> red}
    \t {<mi la> red <mi la>} \t {red <mi la> red}
    \t {<mi la> red <mi la>} \t {red <mi la> red}
    \t {re! <do fa> re} \t {<do fa> re <do fa>}
    \t {re <do fa> re} \t {<do fa> re <do fa>}
    \t {r <do fa> re} \t {<do fa> re <do fa>}
    \t {<mib lab> re <mib lab>} \t {re <mib lab> re}
    \t {r <do fa> re} \t {<do fa> re <do fa>}
    \t {<mi la> red <mi la>} \t {red <mi la> red}
  }
  \t {<sol, do fa> sol, <do' fa>} \t {re <do fa> re}
  \t {<sol, do fa> re' <do fa>} \t {<sol re'> <do fa> re} |
  \t {fa,, fa' fa,} \t {fa' mib, re'} \t {reb, reb' reb} |
  <reb' lab'>2. |
  
  \t {<mib lab>8 sol <mib lab>} \t {sol <mib lab> sol}
  \t {<mib lab> sol <mib lab>} \t {sol <mib lab> sol} |
  \t {<reb lab'> sol <reb lab'>} \t {sol <reb lab'> sol}
  \t {<reb lab'> sol <reb lab'>} \t {sol <reb lab'> sol} |
  \t {<do, fa> sib' <do, fa>~} \t {<do fa> sib' <do, fa>}
  sib' fa | \pl {s2 r4 fa,2}
  { \set tieWaitForNote = ##t \oneVoice \t {do'8~ fa~ sib~} sib4~
  \voiceOne <do, fa sib>2. } |
  
  <mi,, mi'>2*3\laissezVibrer |
  \t {mi4 mi'8~} mi16 mi'8.\laissezVibrer s4 |
  mi,,8 mi' \pl {\t {mi' mi, mi} \t {mi, mi' mi} fa' mi, |
  mi, mi' \t {sol' mi, mi} mi,[ mib']} {mi'4 s fa s sol s} re |
  \pl {dod,,8 dod4 dod8~ dod4} <re' do'!>2.\arpeggio |
  <dod, dod'>8 q4. q4 | q8 q4. q8 q4. |
  q8 q4. dod'2 | <dod, dod'>8 q~ q2 |
  dod'8 dod~ dod2 | do!8 do2 | sib8 sib2 |
  \pl { sol2 s2*5/4 fa'2~ fa}
  { \t {r8 <do' fa> re} <do fa>4~ \oneVoice <sol do fa>2*5/4
  \voiceOne \t {mib'8 re <mib sol>~} <do sol'>4~ <do sol'>2*5/4 }
  \t {sol4~ re'~ fad~} <sol, re' fad>2 |
  \pl {s1 do,1 \laissezVibrer }
  {\oneVoice <do' sol'>1~ \voiceOne <do sol'>\laissezVibrer } |
  <mi,, mi'>2*2\laissezVibrer
}

%-----------------------------    II   ----------------------------%

DeuxPianoMd = \relative {
  \pl {
    s8 s16 <sib' mi> s <mi la> s <mi la>
    s <sib mi> s <sib mi> s <mi la> s <mi la>
    s <sib mi> s <sib mi> s <mi la> s <mi la>
    s <sib mi> s <sib mi> s <mi la> s <mi la>
    s <sib mi> s <sib mi> s <mi la> s <mi la>
  }
  {
    <mi fa sib mi>8 <sib' mi>16 mi,
    <fa sib> la <fa sib> la
    <sib mi> mi, <sib' mi> mi,
    <fa sib> la <fa sib> la
    <sib mi> mi, <sib' mi> mi,
    <fa sib> la <fa sib> la
    <sib mi> mi, <sib' mi> mi,
    <fa sib> la <fa sib> la
    <sib mi> mi, <sib' mi> mi,
    <fa sib> la <fa sib> la
  }
  <sib mi> la <sib mi> la
  <sib mi> <mi, fa> <sib' mi> <mi, fa>
  <sib' mi> la <sib mi> la
  <sib mi> <mi, fa> <sib' mi> <mi, fa> |
  \pl
  {
    s4 <lab, do re sol>8 s s4 <lab do re sol>8 s
     %%FIXME: Issue #984
    s <lab do re sol> s16 <mi lad dod>8 s16
    s8 <lab do re sol> s16 <mi lad dod>8 s16
    s8 <lab do re sol> s16 <mi lad dod>8 s16
  }
  {
    <mi'' si'!> sib <sib mi> fa
    sol fa <sib mi> mi
    <mi si'!> sib <sib mi> fa
    sol fa <sib mi> mi |
    <mi si'!> sib sol <sib mi>
    %%FIXME: Issue #984
    fa red <re'! sol> la
    <mi' si'!> sib sol <sib mi>
    fa red <re'! sol> la
    <mi' si'!> sib sol <sib mi>
    fa red <re sol> la |
  }
  \pl
  {
    s <lab, re> s <lab reb> s <la do> s <fa la>
    s <fa lab> s q s <fa la> s q
    s <fa lab> s q s <fa la> s q
    s <fa lab> s q s <fa la> s q
    s fa s fa s lab s lab s fa s fa s la s la
  }
  {
    <mib' lab> re <mib lab> reb
    <re lab'> do <re lab'> la
    <mib' lab> lab, <mib' lab> lab,
    <re lab'> la <re lab'> la
    <re sol> lab <re sol> lab
    <dod sol'> la <dod sol'> la
    <re sol> fa, <re' sol> fa,
    <dod' sol'> lab <dod sol'> lab
    <re sol> fa, <re' sol> fa,
    <dod' sol'> la <dod sol'> la
  }
  solb' reb solb reb do reb do reb
  solb reb solb reb do reb do reb
  solb reb solb reb \t {do8 reb si}
  <lab do mib sol>2.*5/3\laissezVibrer R1*5/4
  \clef bass
  mi,4. fa8 sol sib4.~ sib1~ sib |
  mi,4. fa8 sol \pl lad4. { si!4 do8 }
  <re, re'>4. \acciaccatura <mib'' fad>16 <fa,! re'>8~
  <fa re'>2~ <fa re'>1 |
  <mib fad re'> <re? fad dod'> <re sol dod>2 |
  <mib la? re>4 q2 q2. <solb mib' fa>4 q2 q2. |
  \clef treble
  <fa do'? solb'>4 q2 <do'? solb' si>2 <fa, do' solb'>4 |
  <la! mib' lab>4 q2 <mib' lab mi'!>2 <la,! mib' lab>4~
  q <fa'! la! mi'!>2 q4 q q <do re fad sib> <re fa sib re>2 |
  
  <re'' sol>16 la <re sol> la <sol dod> mi <sol dod> mi
  \pl
  {
    <dod, fad sol si>4 <sol' si dod mi>
    <dod, fad sol si> <sol' si dod mi>
    <dod, fad sol si> <sol' si dod mi>
    <dod, fad sol si> <sol' si dod mi>
    <dod, fad sol si>2
  }
  {
    <re'' sol>16 la <re sol> la
    <sol dod> mi <sol dod> mi
    <re' sol> la <re sol> la
    <sol dod> mi <sol dod> mi
    <re' sol> la <re sol> la
    <sol dod> mi <sol dod> mi
    <re' sol> la <re sol> la
    <sol dod> mi <sol dod> mi
    <re' sol> la <re sol> la
    <sol dod> mi <sol dod> mi
  }
    <re' sol> la <re sol> la dod la dod la
    \pl
    {
      s4 <fa, sol sib reb>
      <do reb sol sib> <fa sol sib reb>
      <do reb sol sib> <fa sol sib reb>
      <do reb sol sib> <fa sol sib reb>
      <do reb sol sib> sol' fa do
      sol4*2
    }
    {
      <sol'' reb'>16 lab sol mib reb mib sol lab
      <sol reb'> lab sol mib reb mib sol lab
      <sol reb'> lab sol mib reb mib sol lab
      <sol reb'> lab sol mib reb mib sol lab
      <sol reb'> lab sol mib lab sol mib reb
      mib reb sib fa sol fa reb do
      fa re! dob sib \change Staff = "mg" lab mi si lab
    }
    r2 R1*2
    <sol' lab sib reb>1~ q |
    <fa sol sib>~ q~ q~ q |
    \change Staff = "mg"
    \set tieWaitForNote = ##t
    reb,4~ lab'~ \change Staff = "md"
    \t { solb' la!~ \change Staff = "mg"
    re,!~ \change Staff = "md" }
    fa'2~ \change Staff = "mg"
    do,,,2~ \change Staff = "md"
    mi''''1*1/16\fermata \laissezVibrer
    \hideNotes fa, la, \change Staff = "mg"
    re, lab reb, do, s s2
}

DeuxPianoMg = \relative {
  \clef bass
  <sol,, sol'>2*4\laissezVibrer
  r2 r4 <sol sol'>4. <lab lab'>4 <sib sib'>8 |
  <reb reb'>2*5\laissezVibrer
  R1*3
  fa'8 lab fa la fa lab fa la fa lab fa r |
  <mi,, mi'>4 q1 q4 q1 |
  \ottava #-1
  \pl
  {
    mi4. fa8 sol sib4.~ sib1~ sib1
    mi,4. fa8 sol lad4.
    <mi mi'>4 mi2. mi4 mi2. mi4 <mi mi'>2.
    %%FIXME: issue #1110
    <mi red'>4 <mi red'>2 <mi red'>4
  }
  {
    mi4 <mi mi'>2.
    <mi mi'>4 <mi mi'>2.
    <mi mi'>4 <mi mi'>2.
    mi4 <mi mi'>2. s4 s8 fa'~ fa2~ fa1~ fa1
    fa?1
  }
  fa,2 <sol mi'? lab>4 q2 q2~ q8 <do, lab'>
  \ottava #0
  <dod' sol'? re'>4 q2 q
  \ottava #-1
  dod,4
  \ottava #0
  <re' mi dod'>4 q2 <mi dod' fa>2 <re mi dod>4 |
  <dod sib' re>4 q2 q q4~ q <sol'! fad' sold>2 |
  q4 q q <re dod'> <re lad' si fad' sold>2\arpeggio
  
  <sol, sol'>1~ q~ q \t {<dod dod'>4 <re re'> <mi mi'>} |
  <sol sol'>1~ q~ q r4 s
  sol'16 fa re sib lab mi si! lab |
  \pl { sol4 sol2. sol4 sol2. } { lab'1~ lab } |
  <sol, sol'>4 q2. q4 q2.
  <mi mi'>4 q2. q4 q2.
  <re re'>4 q2. q1 |
  s1*3
}

%-----------------------------   III   ----------------------------%

TroisPianoMd = \relative {
  mi4 mi2 mi4 |
  <mi sol> q2 q4 |
  <reb solb> <do fa>2 q4 |
  r4 r8 <la' re>~ q2 |
  <si, mi>8 <la' re> <si, mi> <la' re>~ q2 |
  <si, mi>8 <la' re> <si, mi> <la' re>~ q2 |
  \pl
  {
    \hideNotes s4 <si, mi> ~ \unHideNotes <si mi>
    \hideNotes s <si mi> ~ \unHideNotes <si mi>
    \hideNotes s <do fa> ~ \unHideNotes <do fa>
    \hideNotes s <do fa> ~ \unHideNotes <do fa>
    \hideNotes s <mi la> ~ \unHideNotes <mi la>
    \hideNotes s <mi la> ~ \unHideNotes <mi la>
    \hideNotes s <reb solb> ~ \unHideNotes <reb solb>
    \hideNotes <do fa>8 ~ \unHideNotes <do fa>4
  }
  {
    <si mi>8 <la' re> <si, mi> <la' re>~ <la re>4
    <si, mi>8 <la' re> <si, mi> <la' re>~ <la re>4
    <do, fa>8 <si' mi> <do, fa> <si' mi>~ <si mi>4
    <do, fa>8 <si' mi> <do, fa> <si' mi>~ <si mi>4
    <mi, la>8 <re' sol> <mi, la> <re' sol>~ <re sol>4
    <mi, la>8 <re' sol> <mi, la> <re' sol>~ <re sol>4
    <reb, solb sib>8 <mib' lab> <reb, solb> <sib' mib lab>~ <sib mib lab>4
    <do, fa>8 <sib' mib lab>4
  }
  r8 <fad, si!> r q r q r q r q r q |
  r <fad do' fa!> r q r q r q |
  r <sol? do? fad> r q r q r q r q |
  r <sol! reb' solb> r q r q |
  r8 <la! re! mi!>4 mi'8 fa fa |
  \pl
  {
    r8 <fa, do'> r <fa do'>~ <fa do'>4 s s1
    \voiceOne r2 r4 r8 <si' mi la>~ <si mi la>2
  }
  {
    sol2. \oneVoice <fa, do' sol'>4 <do' fa si>1~
    \voiceTwo <do fa si>~ <do fa>2
  }
  r2\fermata 
}

TroisPianoMg = \relative {
  \clef bass
  R1*3 \pl fad,1 {r4 <si mi>2.}
  R1*2 R2.*2
  <re, sol>2. q
  \pl { <do fa> <do fa> <sib mib>}
  { si'4 si2 si4 si2 lab4 lab2 }
  <sib, mib lab>4. |

  re,8 <sol do> re <sol do> |
  re <sol do> re <sol do> |
  re <sol do> re <sol do> |
  re <sol dod> re <sol dod> |
  re <sol dod> re <sol dod> |
  re <sold dod> re <sold dod> re <sold dod> |
  re <sold dod> re <sold dod> |
  mib <lab re?> mib <lab re> mib <lab re> |
  \pl
  { s4 \hideNotes mi~ \unHideNotes mi }
  { mi!8 <lad red> mi <lad red>~ <lad red>4 }
  \set tieWaitForNote = ##t
  mi8 si' mi,~ si'~ <mi, si'>4 si' |
  \pl
  {
    \set tieWaitForNote = ##t
    s4 \hideNotes <mi, la>~ \unHideNotes <mi la>2
    \hideNotes mi8~ la~ \unHideNotes <mi la>2.~ <mi la>2
  }
  {
    \set tieWaitForNote = ##t
    <mi la>8 <re' sol> <mi, la> <re' sol>~ <re sol>2
    <mi, re'>8~ <la sol'>~ <re sol>2.~ <re sol>2
  }
  r2\fermata
}
