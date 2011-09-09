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
  \ottava #1
  \mg dod'16 \md dod dod' dod,
  \mg do \md do do' do,16*1/2\mg \lightBeams \graceNotes \t {lab,32*1/2[ sol' \md solb]} |
  \md fa'16 \mg fa \md fa' fa,
  \mg mi \md mi mi' \mg \lightBeams \graceNotes \tt {sib,,32*1/2[ mi \md la re sol]} |
  \mg \ottava #1 si16 \md si si' si,
  \mg sib \md sib sib' sib, |
  \mg \ottava #0 <si, sol'> \md sol' sol'
  \mg <lad,, fad'> \md fad' fad'
  \mg <sol,, mib'> \md mib' mib'
  \mg re, \md re re'
  \mg <mi,, do'> \md do'' \mg si, \md si'
  \mg <do,, la'> \md la'' \mg <dob,, lab'> \md lab'' |
  \ttt {sol8[ fad fa mi mib re]}
  \tt {dod16 do si sib la}
  \tt {lab sol fad fa mi} \ottava #0
  \tt {dod do si lab sol} |
  \t {fad8 mi re} re dod \clef bass sib[ la] <solb lab>[ fa] |
  \pl {fa2 mi\fermata} <sol do>1\fermata |

  %%% Lent et blanc %%%
  R1*12 <lab, mi'>1 <si? sol'> <fad re'> <reb' lab'> <sib la'> |
  <mi! sib' mib> \clef treble <la do re fa> <si dod mi fad sold> |
  <re mi sol la si> <fad sold si dod red> <la si re mi sol> |
  <sol sib do re fa?> <lab sib reb mib solb> <do? mib fa sol sib> |
  <fad, la si re mi>2 <lab sib reb mib fa> |
  <si dod mi fad sold> <re mi fad la si> |
  \ottava #1 <lab' sib do mib fa>1 <reb mib solb lab sib>2. \ottava #0
  R1 <la,, re>1\fermata

  %%% Tempo primo %%%
  <sol' sol'>1~ <sol sol'>2
  si16 mi fad sib \tt {mib, re reb mi, lab}
  \graceNote fad'16 <sol, do sol'>2.*11/12~
  sol'16 do re lab |
  si mi, mi' fad, sib fa mib sib
  \tttt {re mib, do fa reb' la si} |
  \graceNote lab <sol do sol'>2.*11/12~
  <sol do sol'>4*3/4 \graceNotes {fa'16*1/2 sol}
  fa8 mi16 la, \t {fa'8 <sib, sib'> <do do'>} |
  <solb solb'>4 <reb' reb'>~ \t {<reb reb'>8 <re re'> <mi mi'>}
  \ottava #1 la'16 <re, re'> \ottava #0 <lab lab'> <reb, reb'>~
  <reb reb'>2 s4 r2 |
  \graceNote <fad, lab'>16_"(m.s.)"
  \pl {do'2*7/8 si2\fermata\laissezVibrer}
  <sol re' sol>1*15/16^"(m.d.)"
  R1*4 \clef bass <mib, sol re'>4 <re sold dod>2.\fermata R1*2

  %%% lent et statique %%%
  R1*7/4*2
  s2. R1*5/4 s2. R1*5/4*2

  %%% lento e simplice %%%
  R2. R1
  <mib, sib'>1 <do sol'> <re la'>2.~ <re la'> R2.
  <mib sib'>1 <si fad'>2. <re la'> |
  <do sol'>~ <do sol'>2 |
  <sol' do sol'>2.~ <sol do sol'> |
  lab2 fa | R1 R2 R1
  r4 <sol' si re>4. <solb sib mib> |
  R1*2

  %%% au mouvement %%%
  \pl {
    \t {r8 sol si} \t {sol si sol} \t {si sol si} \t {sol si sol}
    \t {r solb sib} \t {solb sib solb} \t {sib solb sib} \t {solb sib solb}
    \t {r sol si} \t {sol si sol} \t {si sol si} \t {sol si sol}
  }
  {
    \t {re' si re} \t {si re si} \t {re si re} \t {si re si}
    \t {mib sib mib} \t {sib mib sib} \t {mib sib mib} \t {sib mib sib}
    \t {re si re} \t {si re si} \t {re si re} \t {si re si}
  }
  \t {mi <mi, si'> <sold mi'>} \t {<mi si'> <sold mi'> <mi si'>}
  \t {<sold mi'> <mi si'> <sold mi'>} \t {<mi si'> <sold mi'> <mi si'>} |
  \t {re' <sol, si> <si re>} \t {<sol si> <si re> <sol si>}
  \t {<si re> <sol si> <si re>} \t {<sol si> <si re> <sol si>} |
  \t {mib' <solb, sib> <sib mib>} \t {<solb sib> <sib mib> <solb sib>}
  \t {<sib mib> <solb sib> <sib mib>} \t {<solb sib> <sib mib> <solb sib>} |
  \t {re' <sol, si> <si re>} \t {<sol si> <si re> <sol si>}
  \t {<si re> <sol si> <si re>} \t {<sol si> <si re> <sol si>} |
  \t {mi' <mi, si'> <sold mi'>} \t {<mi si'> <sold mi'> <mi si'>}
  \t {<sold mi'> <mi si'> <sold mi'>}
  \pl \t {mi sold \mg \stemUp red \stemNeutral} \t {\md si' mi \clef treble sold} |
  \ttt {<si re>16 re, <sol si> re <si' re> re,}
  \ttt {<sol si> re <si' re> re, <sol si> re}
  \ttt {<si' re> re, <sol si> re <si' re> re,} |
  \ttt {<dob' mib> mib, <lab dob> mib <dob' mib> mib,}
  \ttt {<lab dob> mib <dob' mib> mib, <lab dob> mib}
  \ttt {<dob' mib> mib, <lab dob> mib <dob' mib> mib,} |
  \ttt {<si' re> re, <sol si> re <si' re> re,}
  \ttt {<sol si> re <si' re> re, <sol si> re}
  \ttt {<si' re> re, <sol si> re <si' re> re,} |
  \ttt {<dod' mi> mi, <la dod> mi <dod' mi> mi,}
  \ttt {<la dod> mi <dod' la'> mi, <dod' mi> mi,}
  \ttt {<do' lab'> lab <do mi?> lab <do lab'> lab} |
  \ttt {<sol' si re> re <sol, si re> re <sol' si re> re}
  \ttt {<sol, si re> re <sol' si re> re <sol, si re> re}
  \ttt {<sol' si re> re <sol, si re> re <solb' mib'> <mib sib'>} |
  \ttt {<mib, solb sib> sib <solb'' mib'> <mib sib'> <mib, solb sib> sib}
  \ttt {<solb'' mib'> <mib sib'> <mib, solb sib> sib <solb'' mib'> <mib sib'>}
  \ttt {<mib, solb sib> sib <solb'' mib'> <mib sib'> <mib, solb sib> sib} |
  \ttt {<sol'' si re> <re sol si> <sol, si re> re <sol' si re> <re sol si>}
  \ttt {<sol, si re> re <sol' si re> <re sol si> <sol, si re> re}
  \ttt {<sol' si re> <re sol si> <sol, si re> re <re' sol si> si} |
  \ttt {<sold' si mi> mi <mi, sold si> si <sold'' si mi> mi}
  \ttt {<mi, sold si> si <sold'' si mi> mi <mi, sold si> si}
  \ttt {<si'' mi sold> sold <mi, sold si> si \ottava #1 <si'' sold'> mi} |

  %%% toujours très calme %%%
  \t {si'16*2/3 sold mi} \ottava #0 \t {si sold mi} \t {si sold mi}
  \mg \t {si sold mi} \t {si mi sold} \md \t {si mi sold} |
  \t {do, fa la} \t {do la fa} \t {do fa la}
  \t {do fa la} \ottava #1 \t {do fa la} \t {dod, fad lad}
  \t {si16 sold mi} \ottava #0 \t {si sold mi} \t {si sold mi}
  \mg \t {si sold mi} \t {si mi sold} \md \t {si mi sold} |
  \t {do, fa la} \t {do fa la} \ottava #1 \t {do fa la} \t {dod, fad lad} |
  \t {si sold mi} \ottava #0 \t {si sold mi} \t {si sold mi} \t {si mi sold} |
  \t {do, fa la} \t {do fa la} \ottava #1 \t {do fa la} \t {dod, fad lad} |

  %%% a tempo %%%
  <si, mi sold si>2.~ _"(non arp.)" <si mi sold si>~ <si mi sold si>2 r4 |
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
  <do, sol' re'>2.\arpeggio\laissezVibrer
  \clef treble s2*3 s1*5/4
  <mib''' sib'>2 <la, mi'>4 <re, la'>4. \clef bass <sol, re'>8 |
  <do, sol'>4 <la mi'> <fa do'> <reb lab'> |
  <do sol'>1\fermata

  %%% Lent et blanc %%%
  R1*12
  \ottava #-1 <sol red'>1 <sib fad'> <mid, dod'> <do' la'?> re |
  <fa, do'> \ottava #0 <mib' mib'> <re re'> <la la'> <mi mi'> |
  <fa fa'> <fad fad'> <do' do'> <dod dod'> <sold sold'>~ |
  <sold sold'>4 <sol sol'>2.~ <sol sol'>2 \ottava #-1 <si,? si'?>~ |
  <si si'>2. \ottava #0 sib'1 <si' mi>\fermata

  %%% Tempo primo %%%
  \ottava #-1 do,,4 fa sol \ottava #0 do |
  fa sol reb' sib |
  do, fa sol si | mi la <re, sib'> |
  do, fa sol do sol' do |
  sol do, sol fa mib' lab |
  \md <si fa' sol si> \mg <mib, reb' mib> <sol, fa'> |
  R1*5
  <reb lab'>4 <mib la>2.\fermata |
  R1*2

  %%% lent et statique %%%
  R1*7/4*2
  \ottava #-1 \graceNotes {do,16*1/2[ sold' si] \ottava #0 \md mi[ sib' re]}
  \mg dod2.*18/24\fermata _"loco"
  R1*5/4
  \ottava #-1 \graceNotes {do,,16*1/2[ sol'! si] \ottava #0 \md fa'[ si! mi]}
  \mg dod2.*18/24\fermata _"loco"
  R1*5/4*2

  % %% lento e simplice %%%
  R2.
  <sold la'>2. fad4 |
  \ottava #-1 mib,1 do re2.~ re |
  \ottava #0 <solb' lab'>2 <fa sol>4
  \ottava #-1 mib,1 si2. re do~ do2 |
  <do do'>2.~ <do do'>
  <do do'>2 <do do'> \ottava #0
  <sol' sol'>1~ <sol sol'>2
  <fa fa'>1~ <fa fa'>
  <fa fa'>~ <fa fa'> |

  %%% au mouvement %%%
  <fa fa'>~ <fa fa'> <fa fa'>~ <fa fa'> |
  <fa fa'>~ <fa fa'> <fa fa'>~ <fa fa'>1*3/4 s4 |
  \pl {<fa fa'>2.~ <fa fa'> <fa fa'>~ <fa fa'>4. <re re'>}
  {
    \ttt {r8 si'''16 re, sol re}
    \ttt {si' re, sol re si' re,}
    \ttt {sol re si' re, sol re} |
    \ttt {r8 dob'16 mib, lab mib}
    \ttt {dob' mib, lab mib dob' mib,}
    \ttt {lab mib dob' mib, lab mib} |
    \ttt {r8 si'16 re, sol re}
    \ttt {si' re, sol re si' re,}
    \ttt {sol re si' re, sol re} |
    \t {r8 dod'16 mi, la8} r4 \t {r8 mi'?16 lab, do8}
  }

  %%% toujours très calme %%%
  <fa,,, fa'>2.~ <fa fa'> <fa fa'>~ <fa fa'>
  <fa fa'>2\laissezVibrer r8 <re re'>4.
  <fa fa'>2.\laissezVibrer <re re'>2
  <fa fa'> <re re'>4 <sol sol'> |
  <fa fa'>2.~ <fa fa'>~ <fa fa'>2 r4 |

  %%% Più mosso %%%
  
}