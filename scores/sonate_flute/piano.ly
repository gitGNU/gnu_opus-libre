%-- Sonate -- piano.ly --------------------------------------------%
% (c) 2013 Valentin Villenave <valentin@villenave.net>

\language "italiano"

\layout {
  \context {
    \PianoStaff
    connectArpeggios = ##t
  }
}

IPianoMd = \relative do' {
  % 0 %
  R1*7/4*2
  \ottava #1
  <fa'' mi'>4*7\laissezVibrer \arpeggio
  \ottava #0
  r4 r8 fad,\laissezVibrer s1*5/4
  <red, fad'>2\laissezVibrer \arpeggio s1*5/4 |
  s8 \pl {
    <red sold>4 lad'8~ lad2 <red, sold lad>4. q
    <red sold>4\laissezVibrer
  } {
    <dod' fad>4 s8 s2 <dod fad>4. q
    <si dod fad>4\laissezVibrer
  } r2. r8 <sold dod>\laissezVibrer r2 |

  % 1 %
  fa'8 mi, sol la si do re fa mi, sol la si do re |
  fa mi, sol la si do re fa mi, sol la si do re |
  fa mi, sol la si do re fa mi, sol la si do re |
  fa mi, sol la si do re fa mi, sol la sib do re |
  fa mi, sol la sib do re fa mi, sol la sib do mib |
  fa mi, sol la sib do mib sol mi, sold si dod re mi |
  sol mib, lab do mib fa solb lab re,, mib fa lab do fa |

  % 2 %
  si4 \mg r \t {r8 sol,,, dod} \t {fad lad dod}
  \md \t {red[ mi] <si' si'>\laissezVibrer }
  \t {r4 mi,8} \t {la sib do} |
  <si mib si'>4 \mg r
  \t {sol,,8 mi' re'} \md \t {dod' <si si'>4\laissezVibrer}
  r4*1/2 s8 \mg \t {r8 sol,, mib'} \t {sib' \md mi la} |
  \t {<dod si'> mi fad} \mg r4 \t {r8 sol,,, mi'}
  \md \t {do' sol' dod} \t {fad lad red}
  mi4*1/2\laissezVibrer s8 \mg r4 |
  \t {re,,,,8 dod' si'} \md \t {sold' mi' si'}
  <fa fa'>2*1/2\laissezVibrer \mg
  \t {r4 re,,,8} \t {do' la' \md fa'}
  \t {dod' fad lad} \t {dod red mi} |
  \ottava #1 <si si'>4\laissezVibrer \ottava #0 \mg r4
  \t {r8 sol,,, si} \t {mi sib' \md fa'}
  \t {reb' sib' <sold sold'>\laissezVibrer } r4 \mg r |
  \t {sol,,,8 dod sold'} \md \t {mi' dod' si'}
  lad'4\laissezVibrer \mg \t {r4 sol,,,,8}
  \t {mib' do' \md sib'} la' la' s4 |
  \mg \t {\stemDown sol,,,,8 fa' \md re'}
  \stemNeutral \t {sib' fa' si}
  \t {mi fa, sol} \t {la si do} re4\laissezVibrer
  \t {la,8 mi' sib'} \ottava #1 \t {mib sol sib~} |

  % 2 %
  \ottava #2 \graceNote sib <mib fab sib>2..\laissezVibrer \arpeggio
  \ottava #0 s2. |
  R1*7/4*2
  \clef bass r2 r4 r8 <re,,,, fadd sold dod>4 <mib re'>8
  <fa la sib mi> <lab dod re sol>4.~ \hideNote q1*7/4 |
  \pl {<re,, la'>8 <fad do'> si} {<sold mib'> do fa}
  <mib sold la re>4.~ \hideNote q1 \clef treble |
  re'''8 do sib la sol fa mi' r r2 r4 |

  % 3 %
  \ottava #2
  \t 4 {
    sib''8 dob, reb mib fa solb
    lab sib dob, reb mib fa
    solb lab sib dob, reb mib
    fa solb lab |
    sib dob, reb mib fa solb
    lab sib dob, reb mib fa
    solb lab sib dob, reb mib
    fa solb lab |
    sib dob, reb mib fa solb
    lab sib si, dod red mi
    fad sold lad si, dod red
    mi fad sold |
    lad si, dod red mi fad sold lad si,
    do re fa solb lab sib si, re mi fa sol sib |
    si, dod re mi sol la sib si, dod
    mi fad sol la <la, do'> do re mib fa
    lab <lab, sib'> la |
    si re fad <sol, si'> sib do
    reb <fad, mib'> sib reb <mi,! mib'> la
    <re, dod'> do' re, dod sol' do mi sol la |
    sib re,, lab' reb fa lab sib mi,, sib' mib sol sib
    sol, dod fad sib si, fa' sib mi, sib' |
  } \ottava #0

  % 4 %
  R2*3
  \ottava #1
  \mg r4 \md r4 r8 <dod,, lad'>16 dod' <dod, lad'>4\laissezVibrer
  \ottava #0
  R2 \clef bass
  <sold,,, red' lad'>16 <dod, fad>4..\laissezVibrer |
  \clef treble \ottava #1
  r8 sold''''' \t {lad <dod, dod'> <red red'>\laissezVibrer } |
  r8 \mg \stemUp <sold,,, lad dod>4 \md \stemNeutral <sold'' sold'>8
  \t {<lad lad'>8 <dod dod'> <red red'>}
  r16 s8. \ottava #0 \clef bass 
  r8 <red,,, lad' mi'>4 <red lad' mi'>8\laissezVibrer
  R2*3

  % 5 %
  R2 \clef treble r4 r8 <do' sib'> |
  r <do sib'> r <sib mi>
  <do sib'>4-. r |
  r4 fad''8~ \t {fad16 red, fad'~} |
  <red, fad'>2\laissezVibrer |
  R2 \mg R2*3
  \md sold'16 la r8 \ottava #1
  <mi mi'>16 <fa fa'>8.~ <fa fa'>4. mi8 |
  \t 8 {
    fa'16 re do si la sol \ottava #0
    mi re do si la sol
  } fa mi' r8 r4 |
  \clef bass
  fa,,,16 mi' re do sib la sol fa
  \t {mi'8 re do} \t {sib la sol}
  fa16 mi' re do sib la sol fa
  \t {mi'8 re do} \t {si la sol}
  fa16 mi' re do si la sol fa
  \t {mi'8 re do} \t {si la sol}
  fa16 mi' re do si la sol fa |
  \clef treble r4 mi'''8-. fa,-. |
  r4 s r8 mi'-. fa,-. r |
  \ottava #1 r <red' fad'>-. r4 \ottava #0
  R2*3
  \t {r4 sold re} fad,2\laissezVibrer
  \t {r4 mi sold,} fa!2\laissezVibrer R2*3

  % 6 %
  mi'8 fa, sol la si do re mi fa, sol la si do re |
  mi fa, sol la si do re mi <fa, si> sol la si? do re |
  mi <fa, si> <sol do> <la re> si do re mi
  <fa, si> <sol do> <la re> si do re |
  mi <fa, la> <sol si> <la do> <si re> do re mi
  <fa, la> <sol si> <la do> <si re> do re |
  mi <fa, sol> <sol la> <la si> <si do> <do re> re mi
  <fa, sol> <sol la> <la si> <si do> <do re> re |
  mi fa, sol la si do re r mi fa, sol la si do |
  re4 r8 mi fa, sol si4 r2 mi8 fa, |
}

IPianoMg = \relative do' {
  % \clef treble
  R1*7/4*2
  <mi fa'>4*7\laissezVibrer \arpeggio
  R1*7/4*11
  \clef bass

  % 1 %
  \t {sol,,8 re' lab'} \md \t {reb fa lab}
  \t {sib <si si'>4\laissezVibrer } r \mg
  \t {r4 sol,,8} \t {do mi do'} r4 |
  \t {sol,8 mib' do'} \md \t {sib' la' sib}
  <si, si'>4\laissezVibrer \mg \t {r4 sol,,8}
  \t {mi' do' \md sol'} \t {dod fad lad}
  <mi dod'>4*1/4\laissezVibrer s8. |
  \mg \t {sol,,,8 re' sib'} \md \t {sol' fa' mi'\laissezVibrer }
  r4 \mg r \t {r fa,,,,8} \t {mib' do' \md lab'}
  \t {mib' la re} |
  <fad, fad'>2*1/2\laissezVibrer \mg r4 \t {re,,,8 mib' do'}
  \md \t {lab' mib' la} \t {re <fad, fad'>4\laissezVibrer }
  \mg \t {r8 re,,, si'} \t {sol' re' sold} |
  \t {fa,, si fad'} \md \t {re' si' la'}
  <sold sold'>4\laissezVibrer r \mg
  \t {r4 sol,,,8} \t {do fad dod'} \md \t {la' fad' mi'} |
  \ottava #1 red'4\laissezVibrer \ottava #0 \mg r4
  \t {sol,,,,,8 re' sib'} \md \t {sol' fa' <mi mi'>\laissezVibrer }
  s4 \mg \t {r8 sol,,, mi'} \t {re' \md dod' si'} |
  sold'4*1/2\laissezVibrer s8 \mg r4 r8 sol,,,,,4 fad'8~
  \t {fad mi' dod'} r2 |

  % 2 %
  \ottava #-1
  <dod,,, dod'>2*7/2\laissezVibrer |
  r4 r8 dod\laissezVibrer s1*5/4 |
  r1 r4 r8 dod\laissezVibrer r4 |
  R1*7/4
  re4 re2\laissezVibrer r8 re\laissezVibrer s2. |
  r1 re2.\laissezVibrer |
  r1 r8 dod8~ dod2 |

  % 3 %
  r2 r4 r8 re\laissezVibrer r2 r4 |
  r4 \t {<re dod'>8 fa sol} <lab sol'>2\laissezVibrer
  r2 r4 |
  r4 r8 <lab sol'>4 <re, dod'>8 <sol lab'>2\laissezVibrer
  \ottava #0 r2 |
  \t {r4 <sol lab'>_"(loco)" <dod re'>} <lab' sol'>2\laissezVibrer r4
  r8 <re dod'>4.\laissezVibrer | \clef treble
  r2 <sol dod re lab'>2\laissezVibrer s2. |
  r1 r4 dod'2\laissezVibrer |
  \t {r8 re4\laissezVibrer } r4 \t {r8 mi4\laissezVibrer} r4
  sol2. |

  % 4 %
  R2*3
  \md r8 r16 <red'' fad, red>
  \set followVoice = ##t \mg <fad,,, red' fad>4~
  \set followVoice = ##f
  <fad red' fad>8 <dod' lad'>16 lad <dod lad'>4\laissezVibrer
  R2 \clef bass \ottava #-1
  <fad,,,, dod'>16 <lad, red sold>4..\laissezVibrer |
  \ottava #0 \clef treble
  r8 <sold'''' sold'> \t {<lad lad'> dod red\laissezVibrer } |
  \clef bass
  r8 \stemDown <sold,,, lad dod>4 \stemNeutral sold''8
  \clef treble \t {lad dod red } 
  r8*1/2 \md <fad' red' fad>16 \mg <red,, fad red'>8~
  <red fad red'>8 \clef bass
  <dod,, si'>4 <dod si'>8\laissezVibrer |
  R2*3

  % 5 %
  R2 r4 r8 <sol' reb' lab'>
  r <sol reb' lab'> r <reb si'? mib> |
  <sol reb' lab'>4-. r |
  R2 \clef treble
  lab'''16 sib reb lab sib reb lab sib |
  reb lab sib reb lab sib reb lab |
  sib reb \md do reb sol reb sol lab |
  do, reb sol reb sol lab do, reb |
  sold la do, reb sold la do, reb |
  \mg r4 <mi,, mi'>16 <fa fa'>8.~ |
  <fa fa'>2\laissezVibrer |
  R2 \clef bass
  fa,16 mi' re do \t {sib8 la sol} |
  lad, si, dod red mid fad sold lad |
  si reb, mib fa sol lab sib do |
  re! mib, fa sol la sib do re |
  mi16 fa, sol la si do re mi |
  R2
  r8 <sib reb mib>-. <lab' sib reb>-. \md <solb' lab sib>-.
  \mg R2*9 r4 si,,( sib,2)\laissezVibrer R2

  % 6 %
  R1*7/4*7
}

IIPianoMd = \relative do' {
  % I’d love to pull off something like this,
  % but it’s just too inconvenient for the pianist.
  % \key fa \major
  <re sib'>8 q4 q q q8 q4 q q |
  q8 q4 q q q8 q4 q q |
  <mib sib'> q8 q4 q q q8 q4 q |
  <reb sib'> q8 q4 q q q q8 q4 |
  <re sib'> q q8 q4 q q q8 q4 |
  <reb sib'> q q q8 q4 <solb sib> <reb sib'> <solb sib>8 |
  \t {<reb sib'> solb reb} <solb sib> <reb sib'>
  solb <sib mib> <reb, solb> <sib' la'> <solb mib'>4
  <sib la'>8 <solb mib'>4 <sib la'>8 |

  %%
  re'16 la re mib, re' sib, re' la
  re mib, re' sib, re' la re mib,
  re' sib, re' fad re mib, la sib,
  re' fa, la do, |
  fa solb, la' do, re' sib re fa,
  sib dob, re' sib re fa, sib dob,
  re' sold re fa, la do, re' si'
  sol lab, re mib, |

  %%
  fad'4*1/5 s4*4/5
  fad4*1/5 s4*4/5
  fad4*1/5 s4*4/5
  fad4*1/5 s4*4/5
  fad4*1/5 s4*4/5
  \ottava #1
  si4*1/5 s4*4/5
  fa'4*1/5 s4*4/5 |

  %%
  \ottava #2
  \ttt 4 {
    sib16 re, fad sib, fad' re
    \tupletsOff
    sib' re, fad sib, fad' re
    sib' re, fad sib, fad' re
    sib' re, fad sib, fa' re
    sib' re, fa sib, fa' re
    sib' re, fa sib, fa' re
    sib' re, fa sib, fa' re |
    sib' reb, fa sib, fa' reb
    sib' reb, fa sib, reb solb
    sib reb, solb sib, solb' reb
    sib' reb, solb sib, mib solb
    sib mib, solb sib, solb' mib
    sib' mib, solb sib, sol' mib
    sib' mib, sol sib, sol' mib |
    \tupletUp \stemUp
    sib' re, sol, \mg sib, \md sol' re'
    sib' mib, sol, \mg sib, \md sol' mib'
    sib' mib, solb, \mg sib, \md solb' mib'
    sib' reb, solb, \mg sib, \md solb' reb'
    sib' reb, fa, \mg sib, \md fa' reb'
    sib' re, fa, \mg sib, \md fa' re'
    \stemUp sib' re, fad, \ottava #0
    \mg \stemUp sib, \md %% Lily keeps complaining here.
    \stemDown fad'^"loco" re \stemNeutral
  }
  \t 4 {
    \tupletsOn
    <fad, fad'>8 <sib re> <fad fad'>
    \tupletsOff <si re> <fad fad'> <si re>
    <fad fad'> <si red> <fad fad'>
    <lad red> <fad fad'> <lad red>
    <fad fad'> <lad dod> <fad fad'>
    <la dod> <fad fad'> <la dod>
    <fad fad'> <la re> la'
    \tupletsOn
  }
  \ottava #1
  \ttt 4 {
    <fad re'>16 si fad <re si'> fad si
    \tupletsOff
    <fa re'> la fa <re la'> fa la
    <fad re'> la fad <re la'> fad la
    <fa re'> sib fa <re sib'> fa sib
    <sol re'> sib sol <re sib'> sol sib
    <sol re'> si sol <re si'> sol si
    <fad re'> sib fad <re sib'> re' fad
  }
  \ottava #2
  \ttt 4 {
    sib fa si, \mg mi, sib fa \md
    sib'' mi, la, \mg mib sib mi, \md
    sib''' mi, la, \mg dod, fad, do \md
    sib''' mib, sol, \mg do, fad, si, \md
    sib''' mib, la, \mg mi sib mib, \md
    \tupletsOn
  } \tttt {sib''' mi, si \mg fa sib, \md si' mi}
  \ttt {sib' fa si, \mg mib, si' fa'\md}
  sib4 sib sib sib sib sib sib8-.--_( mi,-.--)
  \ottava #0

  %%
  \clef bass
  s2. \stemUp re,,,,16 mi \stemNeutral
  <si sol'>8  q r16 q s2 |
  s2. <si la'>16 <sib sib'> <mib dod'>8
  q16 q <la, si> q <mib' dod'> q q <la, si>
  q q <mib' dod'> <la, si> |
  \t 8 {
    do16 mi lab sol si mib
    \tupletsOff
    re, fad sib la dod fa
    mi, sold do \clef treble si red sol
    sib fad re dod la fa
    \tupletsOn
  } sol dod sib mi
  lab, re si fa' \t {la, mib' do} fad8

  %%
  <re sib'>4 q q q8 q4 q q q8 |
  <reb sib'>4 q q8 q4 q q q8 q4 |
  <mib sib'>4 q8 q4 q q q8 q4 q |
  <re sib'>8 q4 q q8 r4 q r2 |
  <reb sib'>8 q4 <solb sib> <reb sib'>8 r2 q4 r |
  q4. q r1 |
  <re sib'>2 r4 r8 <re sib'>~ <re sib'>2. |
}

IIPianoMg = \relative do' {
  % \key fa \major
  \clef bass
  <sib, sol'>8 q4 q q q8 q4 q q |
  q8 q4 q q q8 q4 q q |
  q q8 q4 q <sib solb'> q8 q4 q |
  q q8 q4 q <sib fa'> q q8 q4 |
  q q q8 q4 <sib fad'> q q8 q4 |
  <sib sol'> q q q8 q4 <sib re?> <sib sol'?> <sib re>8 |
  \t {<sib sol'?> re? sol} <sib, re> <sib sol'> re <fa, sib>
  <re' sol> <dob, sib'> <fa re'> <sol'? reb'>
  <dob,, sib'> <fa re'> <sol' reb'> \ottava #-1 <solb,, fa'> |

  %%
  
  \t 4 {
    re8 fad re si' re, fa'
    \tupletsOff
    re, fad re si' re, fa'
    fad, si fa' si, fa' sib
    \ottava #0 mi_"loco" dod' sib, |
    \ottava #-1 re,, dod' fa
    dod fad mib' sol,, sib' fad
    \ottava #0 mib'_"loco" la sib,
    lab, fa' mi' dod, sib' mi, mib' sol do |
  } \clef treble
  \tt 4 {
    \tupletsOn
    fad16 lad red \md la'! re! \mg
    \tupletsOff
    fad,, lad? red? \md la' re \mg
    fad,, la re \md lad' red \mg
    fad,, lad red \md la' re \mg
    \tupletsOn
  } \ttt {fad,, lad red \md la' re fad \mg}
  \tttt {fad,, lad red \md la' re fad si \mg}
  \tttt {lad,, red la' \md re fad si fa' \mg} |

  %%
  <sib,,,, re sol sib>8 q4 q q <sib mib sol sib> q q q8
  <sib mib solb sib>4 q8. <sib reb solb sib>16~ q8 q q
  <sib reb fa sib>4 q8~ q16 <sib re fa sib>8. q8 <re fa sib> |
  \stemDown
  sib16 fad' <re' sib'> fad, sib, fa' <re' sib'> fa,
  sib, fa' <reb' sib'> fa, sib, solb' <reb' sib'> solb,
  sib, solb' <mib' sib'> solb, sib, sol' <mib' sib'> sol,
  sib, sol' <re' sib'> sol, |
  \stemNeutral
  <re re'>8 <sol sib> <re re'> <fad la>
  <re re'> <fa la> <re re'> <sol si>
  <re re'> <fa sib> <re re'> <fad sib> <re re'> sib' |
  \t 4 {
    <fad fad'> <sib re> <fad fad'>
    \tupletsOff <si re> <fad fad'> <si re>
    <fad fad'> <si red> <fad fad'>
    <la re> <fad fad'> <la re>
    <fad fad'> <lad dod> <fad fad'>
    <la dod> <fad fad'> <la dod>
    <fad fad'> <lad red> <fad fad'> |
  }
  \ottava #1
  s1. sib'4
  \ttt 4 {
    \tupletsOn
    re,16 fad re' \md fad re' fad \mg
    \tupletsOff
    mi,, la re \md sol do fa \mg
    fad,, do' mi \md sold do mi \mg
    \tupletsOn
  } \tt {sib, fa' do' \md lab mib' \mg}
  re, sib' do re \t {fad,8 red' dod} sib4 |
  \ottava #0

  %%
  \clef bass
  % Six commas: this must be my record so far.
  \ottava #-1
  sib,,,,,,16 \md sib'' <la dob> \mg sib, \md
  <la' dob> <sol dod> \mg sib,, sib' \md
  <lab' do> <fa mib'> \mg sib, \md <sol' dod>
  \stemDown fad mi \mg \stemNeutral <dod la'>8
  q sib,16 <dod' la'>
  sib \md <dod' sol'> <si la'> \mg sib,, \md
  <mib'' fa> <re fad> \mg sib, \md <do' sold'> \mg |
  mi,, \md mi'' <mib fa> \mg mi, \md
  <re' fad> <do sold'> \mg mi, \md <dod' sol'>
  <do sold'> <si la'> \mg mi, mi, s8
  <sol fa'> q16 q s s q q q s s s q8 |
  \ottava #0
  sold'16_"loco" re' si fa'
  la, mib' do fad
  sib, mi dod sol'
  \ttt 4 {
    sib,, mi sold dod fad la,
    dod, fa sib mi la do,
  } \t 8 {sol si red re fad sib}
  sold,32 do fa re sol mib' r16 |

  %%
  <sib, sol'>4 q q q8 <sib fa'>4 q q q8 |
  q4 q q8 q4 <sib solb'>4 q q8 q4 |
  <sib sol'>4 q8 q4 q <sib solb'>4 q8 q4 q |
  q8 q4 q q8 r4 <sib solb'> r2 |
  <sib sol'>8 q4 <sib re> <sib sol'>8 r2 q4 r |
  <sib solb'>4. <sib solb'> r1 |
  <sib sol'>2 r4 r8 <sib sol'>~ <sib sol'>2. |
}

IIIPianoMd = \relative do' {
  \mg \clef bass R1*6 \md \voiceOne
  mi'8 fa r mi fa fad s mi |
  fa sol lab sol r mi fa sol |
  <dob, sib'> <mib reb'> <solb dob> <lab sib>
  r mi fad <si, sol'> |
  <do la'> do' lab fa mib <sib re> <si fa'> dod |
  \pl {
    s2 s4 s8 sib[
    si] r sib si do r sib si
    dod re do r sib si dod mi
    sol fa mi r s2
  } {
    r8 mi la <sib, do'> <do mib'> <dod re'> fa' sib,
    la fad la sold r mi' do la
    sol fad mi dod r mi' re[ dod]
    si sold r mi' \oneVoice
    <sib, red'> <si dod'>
    dod16 la' mi8
  } \ottava #1
  \acciaccatura sold8 mi'' <do, fa> \ottava #0
  la^"loco" sol fad mi dod4 |
  \pl {
    <si' mi>16 fa' sold,8 fad fa
    mib do lab4 |
    \ottava #1
    sib'8 lab sol fa re4
    la''8 sold fad mib r la
    sib,4\laissezVibrer s s1 s
  } {
    s4 \t {r8 mi fa} fad4 \t 4 {r8 mi? fa
    sol lab sol r mi fa r sib re
    \ottava #2 fad mib re
    r mi fa sol4 sib8 r mi,, fa \oneVoice sol sib re
    sol do si \tupletsOff fad dod la
    fa lab si sol mib do
    \ottava #0
    la-"loco" sol fad mi dod sib}
    <si, mi fad sold>2\laissezVibrer
  } \voiceOne r8 <sol' la> \oneVoice
  <re sol la si>2\laissezVibrer
  \ottava #1 \tupletsOn \t 4 {fa'''8 mi r
  fa mi mib r fa mi re dod re r fa mi \tupletsOff
  re si sold fad mid fa' mi re si sol mib do
  sib la si re fa' mi re si sol re la fa
  \ottava #0
  re-"loco" do si dod mi \ottava #1
  fa'' mi re si sol re sold,
  \ottava #0
  red-"loco" si sold fad fa'' mib do lab mi dod si fa'
  re sib fad mib fa' dod
  } \tupletsOn
  \pl {
    \set followVoice = ##t
    \mg \voiceOne sib,[ si]
    \md \oneVoice do[ re]
  } {
    \t {sold fa' do!} s4
  } dod,4 \t 4 {
    <mi' re'>8 <fa dod'> <mi re'>
    <fa dod'> <fad do'> <mi re'> \tupletsOff
    <fa dod'> <sol si> <fad do'>
    \ottava #1
    <si la'> <do sold'> <si la'>
    <do sold'> <dod sol'> <si la'>
    <do sold'> <re fad> <mib fa>
    <re fad> <si la'> <do sold'>
    <re fad> <mib fa> <do sold'>
    <re fad> <mib fa> <si la'>
    <do sold'> <re fad> <mib fa>
    <re fad> <si la'> <do sold'>
    <dod sol'> <si la'> <do sold'>
    \ottava #2
    <fad mi'> <sol red'> <fad mi'>
    <sol red'> <lab re> <fad mi'>
    <sol red'> <la dod> <sib do>
    <la dod> <fad mi'> <sol red'>
    <lab re> <fad mi'> <sol red'>
    <dod si'> <re sib'> <dod si'>
    <re sib'> <mib la> <dod si'>
    <re sib'> la mi \ottava #0
    si-"loco" fad dod
    <sib, lab'> mib <sib lab'> mib <la, la'> mib'
    <sib lab'> mib <la, la'> <reb mib> <lab sib'> mib'
    <sib fa' lab> mib <la, la'> mib' <sol, si'> mib'
    <re do'> mib <sol, si'> mib' <sib lab'> mib
    \voiceOne <la, la'> mib' <sol, si'>
    \oneVoice mib' re' mib, <re fa'> mib mib'
    \voiceOne mib, <si fad' re'> mib
    \oneVoice <sib lab'> mib <la, sib'>
    mib' <sol si> mib
    <mi re'> <mib fa> fad' mib, <lab sib'> <re mi>
    sol mi, fa' \voiceOne mi, mi' fa,
    \oneVoice re' fa, dod'
    \voiceTwo fa, do' fa, \oneVoice
  }
    \pl \t {fad dod fad} <dod si'>4
    \t {<do do'>8 fad do} |
    \pl \t 4 {
      fad do fad <dod si'> fad dod
      \oneVoice <fad do'> do fad <si, dod'> fad' si,
      \voiceTwo fad' si, fad' <dod si'> fad dod
      <fad do'> do fad
    } {r4 r8 mib'' s2 r8 fa r4 r8 mib}
    \t {\stemUp <sib,, re'>\arpeggio fad' \stemDown re''}
    \t {\stemNeutral <la,, mib''>\arpeggio fad' mib'}
    \ottava #1
    <re' dod'>16 do''32 dod, <do, re>8
    \ottava #0
    r <dod dod'> <do re>[ <red, si' red>] |
    r <re dod'> \acciaccatura dod''16
    <do, re>8[ <mi, sib' mi>] \tupletsOn
    <mib la fa'> <re sib' mi> r <re dod'> |
    \t {<dod fadd sold do! re> <sib' mi> <sol sol'>}
    <mi! la mib' sib'>4\arpeggio <fad do' lab'>8 <sol sol'>
    r <mib lab reb> |
    \t {<re re'> <mi mi'> <sol sol'>} \ottava #1
    <si si'> <red red'> \t {<do do'> <sib sib'> <la la'>}
    r <dod dod'> <do do'> <sib sib'>
    \t {<sol sol'> do mi,} \ottava #0
    fa16-"loco" do fa, fad~ \tt {fad sol,8 sold} | \ottava #1
    \t 4 {
      mi''' fa red mi fa fad red re mi \tupletsOff
      fa sol lab
      sol mib reb do reb mi fa sol sib reb dob sib
      mib, reb sib sol la sib mi fa sol sib re fad
      mib reb do sib sol mib reb sib solb re fa sol
    } lab16 sib reb mib mi fa sol sib \ottava #2
    \t 4 { \tupletsOn
      re8 sol do si fad dod \tupletsOff
      do mi sold sol mib si
      sib dod mi mib do la
      lab sib do si la sol
      \ottava #1
      fad sol lab sol solb fa~
      fa mi fa mi mib fa mi re dod re fa mi
      re si sold la si fa' mi re si lad si lad
      la si lad sold fadd sold si lad sold fa re mi
    } \ottava #0
    r4 <sol,, mi'> \pl dod {fa8[ mib]} <lab, sol'>4 |
    <re sib'> <fad re'> <dod' sol'> dod' |
    \ottava #1 <sol do sold'> <fa' mi'> <si do'> <la fa'>
    <mib si'?> fad \ottava #0 <do,? fa re'> <mi si'?>
    <sib red la'> <la sold'> r r8
    \pl {mi~ mi4 fa} {fa'8~ fa4 mi} r2
}

IIIPianoMg = \relative do' {
  \md R1*2 r2 r4 sib'8 la |
  r sib la sold r sib la sol |
  solb fa r sib la sol mi dod |
  red mi r sib' \stemDown la sol mi \mg do
  lab si dod \md \voiceTwo re
  mi sol \oneVoice r \voiceTwo sib |
  la sol mi \mg do \oneVoice sol re mib lab |
  \md \voiceTwo do? mib fa solb r sib la re, |
  fa \mg \oneVoice sib, mib, sol r fad dod'
  \md \voiceTwo sol' do lab \mg \oneVoice
  \pl {
    mi,,4 fa r mi fa fad \oneVoice r \voiceTwo
    mi fa sol la lab r mi fa
    sol sib reb dob sib r mi, fa
    sol sib re fad mib reb do sib
    sol r reb' la fad mi red dod
    sib r reb' sib lab sol fa r
    reb' dob sib r reb do r sol,\laissezVibrer
  } {
    r8 sib'' la sol s s
    r4 sib2 la4 r2 sib
    la4 r8 sib~ sib4 la
    r8 lab\laissezVibrer s4
    \t 2 {
      r sib la sol fad sol r sib la
      sol fa mi re dod'\laissezVibrer r
      sib la sol mi re dod si re mi fa sol r
      mi fa sol \md \voiceTwo si2*1/2 re4 dod
      si \mg \voiceOne r mi, fa sol sib
    } reb4. mi,8 fad la dod fa
    mib \clef treble do' \clef bass r mi,, sol si
    \clef treble mi la \clef bass
    fa re? si la sold fad r mi
  }
  sold dod sol' dod,
  << { \voiceThree
    lab,,2_\laissezVibrer
    s1 sol2_\laissezVibrer
    s4 sold_\laissezVibrer
    s2 la2*1/2 \voiceTwo r4 r sib2.
     } \\ { \voiceTwo
    s4 sib' la r sib la
    lab r sib la sol fad sold
     } \\ { \voiceOne
    r8 red' mi[ la]
    r mi sib'4 r8 sib[ si] r
    \md \stemDown sib \mg si! \voiceOne do4
    s2 \t {sol,4 lad'8} si dod r sol' fa[ mi]
    sib si r \oneVoice mi
    \clef treble sold do la sol \clef bass
  } >>
  la,,,2. <sib' lab'>8 mib |
  <la, la'> mib' r <sib lab'> mib <la, la'> mib' <lab, sib'> |
  mib'4 <sib lab'>8 mib <la, la'> mib'
  <sol, si'>\arpeggio mib'
  <fad, do''>\arpeggio mib' <sol, si'> mib'
  r <sib lab'> mib[ <la, la'>] |
  <sol si'> mib' fab, mib' reb, mib' mib, la |
  <fab solb'> mib' r \set followVoice = ##t
  <sib mib lab> \md \voiceTwo fa''''2*1/4\laissezVibrer
  \mg \oneVoice la,,,,8 mib'[ <sol, mi' si'>] |
  <reb' mib> fab, \md \voiceTwo mi''''2*1/4\laissezVibrer
  \set followVoice = ##f
  \mg \oneVoice do,,,,8 mib' lab,, mib'' si, |
  <mib' fab> reb, <do' mi> re, r
  \set followVoice = ##t
  <sib' mib lab> \md \voiceTwo fa''''4*1/2\laissezVibrer
  \set followVoice = ##f
  \mg \oneVoice <la,,,, la'>8 |
  mib' <re si'> dod4*1/2
  \set followVoice = ##t
  \md \voiceOne mi'''8\laissezVibrer
  \set followVoice = ##f
  \mg \oneVoice
  <sol,,,, do fa>8 do <fad, fad'> do' |
  fad do <sol fa'> r fad' do <fa, sol'> do' |
  sol' r <sol, fa'> do <fad, fad'> r
  \t {<mi sold'>\arpeggio do' sold'}
  mib, do' \clef treble
  \t 4 {
    <sol' mi'>8 la' mi <la re> mi sol,
    \clef bass si, sol' mi' \tupletsOff
    \clef treble la mi la mi la mib la mi la
    \clef bass mi sol, si, \tupletsOn
  } mi, si' \t 4 {
    fa' sib re \clef treble fa sol lab
    \clef bass mi,, do' sol'
  } dod fad \clef treble \t {lad dod red}
  mi sold, \clef bass \t {dod, sol re} |
  \t 4 {sib fad' dod' fad,, red' si' re,, do' la'}
  \ottava #-1
  <sib,,, sib'>4 <si si'>2 <sib sib'>4 <si si'> |
  <do do'>2 <sib sib'>4 <si si'> <dod dod'> <re re'> <dod dod'>2 |
  <sib sib'>4. <si si'>8~ <si si'>4 <dod dod'> |
  \t {<mi mi'> <sol sol'> <fa fa'>} <mi mi'>2 |
  <mi' mi'>4 <fa, fa'>\laissezVibrer
  \clef treble \ottava #1 mi''''16 la re sol solb reb lab mib |
  \ottava #0
  re_"loco" fad sib re dod la fa dod
  do mib fad la lab fa re si sib do re mi fa mib reb dob
  sib8 si sib si | do sib si dod re dod mi fa |
  mi fa fad mi fa sol lab sol |
  \clef bass
  r4 sib,,, si dod mi \pl {sol8 solb fa4} {sib mi} mi, |
  r sib \pl {si8[ do]} do'4 dod, |
  \pl {re dod} {sib'8 do re4} r \pl {sib, si} {sol'~ sol}
  do, r \pl {sib si2} {dob'4 sib2} r2 |
}