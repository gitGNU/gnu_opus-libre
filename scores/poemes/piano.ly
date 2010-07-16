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
