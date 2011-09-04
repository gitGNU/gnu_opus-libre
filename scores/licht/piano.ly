%-- In einem unbestimmten Licht -- piano.ly -----------------------%
% (c) 2001 - 2011 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

PianoMd =
\relative do' {
  r4 R1*2 s2 r R2
  \pl {s2 do'4 re}
  {<sol, sol'>2~ sol'}
  <lab, sol'>2\arpeggio
  si16 mi fad sib \tt {mib, re reb mi, lab} |
  \pl {\t {sol4 do re} lab2 s1}
  {
    sol'2 \t {sol4 do re8 lab~} \oneVoice lab4~
    \t {lab8 <mi si'> <fad mi'>}
    \t {<fa sib> <sib, mib> <mib, re'>}
    \t {<do fa> <la' dod> <lab si>}
  } <sol sol'>2*1/16 s2*15/16 \acciaccatura {fa'16[ sol]}
  fa8 mi16 la, \t {fa'8 <sib, sib'> <do do'>} |
  \pl {
    solb8 sib s2 \t {r4 reb, mib'}
    s4 reb,8 mi s4
  } {
    solb'4 \t {<la, la'>8 <re re'> <mi mi'>}
    <lab, lab'>4 <reb reb'>~ <reb reb'>
    <sib re sib'> <mib, mib'> <sib sol'>
  } \clef bass s2 r \clef treble
  \t {do8 sol' si} \t {fad' re sol,} |
  mi' si' re la' dod, fad, | sold red |
  R1*15/16
  r2 s2
  R2 r4 \stemUp <sol, sol'>~ \stemNeutral \ttt {sol16 do re fa do' re} |
  \pl {\repeat tremolo 8 {sol,32 sol,~} <sol sol'>4}
  {\repeat tremolo 8 {sol''32 lab,~} <lab sol'>4}
  R1*5/8*2 R1*3 R1*7/4*3 R1*5 R1*7/4
  <la re? mib la>1\arpeggio r2 r4 |
  R1*7/4
  <si,, dod lad'>1~ <si dod lad'>2. |

  %%% stringendo %%%
  R2.*3 R2 R2.
  \clef bass
  mi,,4 sold do re2 si4 dod sib do! |
  mi,2 sold4 do re si! dod la si fad2 |
  mi4 sold do re2 si4 dod sib fa! |
  mi2 sold4 do re si! dod la si lab sib | solb2 reb'4 |
  mi sold si! sib mib2 la,4 fa |
  mi! sold si!2 sib4 mib la, fa2 |
  mi4 sol! si! dod sold |
  mi sol! si dod fad, |
  R2
  mi4 fad2\fermata
  mi4 sol lad2\fermata |
  mi4 sol <fa do'> <si sold'>2\fermata |
  mib,4 la <solb reb'> \clef treble <sib sol'> <lab fa'> |
  <re la'>4.\arpeggio |

  %%% Tempo primo %%%
  \pl <fa, sib fa' la>2.\arpeggio {r4 \t {r mib' re'}}
%   \ottava #1
}

PianoMg =
\relative do {
  \clef bass
  do4~ |
  do8 si mib re la sib mi, fa |
  \t {solb reb' lab'~} lab2 sol4 | \tupletUp
  \t {<do,,, do'>8\laissezVibrer \md sol''' do}
  \tupletNeutral \t {sol' do, sol} \mg
  \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol}
  \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol}
  \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol}
  \t {do, sol' do} \t {sol' sol, do,} |
  \t {do, sol' do} \t {fa, do' sol'}
  \t {sol, do sol'} \t {reb, lab' fa'} | \tupletUp
  \t {do' \md sol' do} \tupletNeutral \t {sol do, sol} \mg
  \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol}
  \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol}
  \t {do, sol' do} \t {sol do, sol} | \tupletUp
  \t {<do,, do'>\laissezVibrer \md sol'' do}
  \tupletNeutral \t {sol' do, fa,} \mg
  \t {do' re sol} \t {do sol re} |
  R2 R2. R4 R1*15/16
  \t {<do,, do'>8 si' fad'} \t {dod' re la'}
  \md \t {sol' do sol} \mg \t {do, sol fa} |
  \t {do sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \stemDown \md \t {sol' \mg do,? sol} \stemNeutral r4 |
  R2. R1*5/8*2 R1*3 R1*7/4*3 R1*5 R1*7/4 \clef treble
  <la' red mi?>1\arpeggio r2 r4 |
  R1*7/4 \clef bass
  <sol,, re'>1~ <sol re'>2. |

  %%% stringendo %%%
  \ottava #-1
  do,,4 fa sol reb2 mi4 la si mib, lab2 solb4 sib re! |
  do, mi lab sib2 sol!4 la! solb lab |
  do,2 mi4 lab sib sol! la! fa sol re2 |
  do4 mi lab sib2 sol4 la! fad sol |
  do,2 mi4 lab sib sol la! fa sol mi fad |
  re2 sib'4 \ottava #0
  do mi sol fad si!2 fa!4 reb |
  do mi sol2 fad4 si fa! reb2 |
  do4 mib sol la mi |
  do mib sol la re,! |
  R2
  <do si'>4 <re la'>2\fermata |
  <do sol'>4 <mib sib'> <fad dod'>2\fermata |
  <do si'>4 <lab' mib'> sib mi2\fermata |
  <do,lab'>4 <fa do'> sib mib dod | <fad>4.\arpeggio

  %%% Tempo primo %%%
  <do, sol' re'>2.\arpeggio
}
