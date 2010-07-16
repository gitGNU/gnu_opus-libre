%-- Trois poèmes -- piano.ly --------------------------------------%
% (c) 2004-2010 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

%-----------------------------    I    ----------------------------%

UnPianoMd = \relative {
  r4 | R2
  \pl <si' red sold>2.\arpeggio \laissezVibrer \ppptresclair
  <si' red sold>\arpeggio \laissezVibrer |
  \pl <la, do fa>2\arpeggio \laissezVibrer
  <la' do fa>\arpeggio \laissezVibrer |
  r4 \pl { \set tieWaitForNote = ##t
  lab,8~ reb~ fa4~ <lab, reb fa>2 }
  {s4 \set tieWaitForNote = ##t
  \t {s8 sol'~ do~} <sol do mib>2 } |
  r2 \pl <sol, sib mib>\arpeggio <fa' la re>\arpeggio
  \pl <solb, dob mib>\arpeggio \laissezVibrer
  <fa' sib reb>\arpeggio \laissezVibrer s2 |
  
  \t {la'8 re, la} re re, \t {la' re, la} re la |
  <re, la'> do <re la'> la
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
  \ttt {la'16 re, do la' re, la}
  \ttt {la' re, do la' re, la}
  \ttt {la' re, do la' re, la}
  \ttt {la' re, do la' re, la} |
  \ttt {<sold' si> mi si <sold' si> mi si}
  \ttt {<sold' si> mi si mi sold si}
  \ttt {<la do> fa do fa do' do} |
  \pl {r4 r8 <do la'> fa, do} <fa' la do>2. |
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
  sol8 sol' \t {sol' sol, sol}
  sol, sol' \t {fad' sol, sol} |
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
  
}

DeuxPianoMg = \relative {
  
}

%-----------------------------   III   ----------------------------%

TroisPianoMd = \relative {
  
}

TroisPianoMg = \relative {
  
}
