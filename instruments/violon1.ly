%------------------------------------------------------------------%
% Opéra Libre -- violon1.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

ViolonUn = {
  \set Staff.instrumentName = \markup { \hcenter-in #23.5 "Violon 1  "}
  \set Staff.shortInstrumentName = "Vl. 1  "
  \set Staff.midiInstrument = "violin"
}

PrologueViolonUn = { \ViolonUn
  \relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2. si'''?2.~ si2.~ 
    si2:16~ si4:32~ si8 r 
    mi,,,2~| mi4 r | mi2.~| mi4 r | fa2 mi2.~| mi4 r R2 |
    <sib mi>2.~| <la mi>4 r | R2 <do mi>2.~| 
    <do mi>4 mi8 mi \t {mi mi mi} \tt {mi16 mi mi mi mi} |
    mi2 r4 R2 sol16 sol sol sol sol sol do do | 
    mib4. r8 dod, r | r dod r4 | r8 dod r4 dod8 r |
    r4 dod | re8 r r re r4| r8 re r4 | mi
  }
}

ActeUnSceneUnBisViolonUn = { \ViolonUn
  \relative {
    R2.*6
    \ttt {lad'16 sold lad dod lad dod}
    \ttt {mi dod mi fad mi fad }
    \ttt {sol fad la sol do la } |
    
    %%% Piu vivo %%%
    re4 re, re,2 | R2.
    re''4 r8 re,,~re2 | R2.
    <fa' re'>4 <fa re'>8 <fa re'>4 <fa re'>8 |
    <mib re'>4 <mib re'>8 <dod re'>4 <dod re'>8 |
    <fad re'>4 <fad re'>8 <si re>4 <si re>8 | <si re>2. |
    R2. r4 fa,2~fa4. r8\fermata r4 |
    R2. r4 fa2~ fa2~fa8 r\fermata r4 |
    R1 R2
    
    %%% Largo %%%
    R2*3 R2. R2 R2.
    mi2~mi4 r2 |
    mib2 mib4 <si sol'>4 r r2 |
    R1 R2. R2
    r2 r8 sib'4. |
    sol2.~\CaV sol2\CaV r4 |
    do2 re~\CaV re4\CaV r2 |
    R2*3 R2. R1 R2.
    r4 <sib, re> <sib mib>2~<sib mib>
    <la red>2. r2 <la red>4 |
    <sold mi'>2.
    
    %%% Adagio %%%
    R1*33 R2*4
  }
}

ActeUnSceneDeuxViolonUn = { \ViolonUn
  \relative {
    %%% Air de la Soprano2 %%%
    
    R2.*2 R1*2  R2.*2 R1*2  R2.*2
    re4-. la'-. sold8( mi re4-.) | 
    mi8( re la' sold)-. r mi sold4-. |
    mi-. re8( la' sold4)-. | la8( sold mi re)-. r4 |
    sold8( la sold mi re4)-. sold8( la) | 
    sold( mi re mi sold4)-. sold8( la) |
    sold( mi re4)-. sold8( la) | 
    sold( mi re mi sold4)-. |
    R1*2 | R2.*2 |
    la8 re la sold re sold la re | 
    la sold re sold la2 |
    r8 la re la sold re | 
    sold la r mi sold4-. |
    re-+ <la'' re> r2 | 
    r8 <la re>8 r4 re,,-+ <la'' re> |
    r8 <la re> r4 <la re> r8 re,,-+ r <la'' re> r4 |
    sol,,-+ <do'' sol'> r2 | 
    r8 <do sol'> r4 sol,,-+ <do'' sol'> |
    r8 <do sol'> r4 <do sol'> | 
    r8 sol,,-+ r <do'' sol'> r4 |
    sol,,-+ <do'' sol'> r2 | 
    la,,4 re8 si r la si4 |
    re4 sol8 fa do'4 | fa,8 sol si do r4 |
    << lab'2 \\ {re,8 mib re sib} >> lab8 sib re mib | 
    re sib lab sib re4 r |
    <re lab'>8 mib re sib <re lab'> mib | 
    re sib <re lab'> mib re sib | 
    <re lab'>1 ~ <re lab'>4 r sol,, lab | 
    do8 re fa2~| fa r4 |
    R1*2 R2.*2 R1*2 R2.*2 |
    <re la'!>1~\CaV<re la'>~\CaV | 
    <re la'>2.~\CaV <re la'>~\CaV| 
    <re la'>1~\CaV <re la'>~\CaV | 
    <re la'>2.~\CaV <re la'>2\CaV  r4|
    sold8 la sold mi re mi  sold la | 
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | 
    sold mi re mi sold4 |
    sold8 la sold mi re mi  sold la | 
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | 
    sold mi re mi sold4 |
    R1*2 R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1 R1-\fermataMarkup  |
    
    %%% Récitatif %%%
    
    r4 r8 sib4. | sol2.~|sol1~|sol2 r4 |
    r4 r8 sib4. | sol2.~|sol1~|sol2 r4 |
    R2. | r4 r8 sib4 sol8~| sol2.~| sol8 sol~ \t {sol sol sol} 
    \repeat tremolo 8 sol32 |
    sol8 r r2 | R2 | r4 r8 sol4. | 
    mi?1~ mi~ | mi2.~ mi~ mi~ mi2 r4 | R2. R1 |
    
    %%% Duo %%%
    
    r8 \pizz <sib re>
    \repeat unfold 15 {r8 <sib re>} <sib re>4 |
    \repeat unfold 7 {r8 <do mi>} |
    \repeat unfold 3 {r8 <red fad>} <red fad>4 |
    \repeat unfold 4 {r8 <dod fad>} r4 | R2
    \arco sol'8
    \repeat unfold 27 sol
    \repeat unfold 14 red'
    \repeat unfold 8  lad'
    re! sol, do, re' sol, do, | 
    re' sol, do, re' sol, re' |
    R2. R1 |
    
    %%% Piu vivo %%%
    sol,,16 sol sol, sol sol' sol sol, sol sol' sol sol, sol |
    sol' sol sol, sol sol' sol sol, sol sol' sol sol, sol sol' sol sol, sol |
    fad' fad sol, sol fad' fad sol, sol mi' mi sol, sol |
    mi' mi sol, sol dod dod sol sol dod dod sol sol |
    <sol sol'>4 <sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> |
    dod2 r4 |
    <sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'>4 |
    dod2 r4 |
    sol4 sol \t {mi' re fa} |
    dod2 \tt {sib16 la lab sib si} |
    sol4 r2 |
    \pizz <sol re' la'>4 <sol re' la'> <sol re' la'> <sol re' la'> r2 |
    si4 si si | sib r2 |
    \arco re4 r8 re r16 re re8 |
    re4 \tt {sib16 dod red mi fad } \tt { mi fad la si do } |
    re4 \tt {sib,16 do reb mib fad} \tt {mib fad sold la si}|
    re4 \tt {sib,16 si dod mi fad } \tt { mi fad sol la do} |
    re4 \tt {sib,16 do mib fa solb} \tt {fa solb lab si dod}|
    re4 \tt {do,16 mib fa fad sold} \tt {fad sold si re dod}|
    mi4 \tt {mib,16 fa fad sold si} \tt {sold si re dod mi} |
    sol4 \ttt {si,16 si re re dod dod} \ttt {sol' sol mi mi la la} |
    
    %%% Poco allargando %%%
    sib2. la4~|la4. sol8~sol2 | mi re4 r |
    %%% Tempo giusto %%%
    dod16 re, re re dod re re re dod' re, re re dod re re re |
    re' re, re re re re re' re, re' re, re re re re re' re, |
    mi' mi, mi mi mi mi mi' mi, mi' mi, mi mi mi mi mi' mi, |
    sol' sib, sib sib sib sib sol' sib, sol' sib, sib sib sib sib re sib |
    si' mib, mib mib do mib mib mib si' mib, mib mib fa fa sold sold |
    dod2 r4
    <mi, la\harmonic mi''>1~ <mi la\harmonic mi''>~ <mi la\harmonic mi''>4 r2
    R2
    <mi la\harmonic mi''>2~ <mi la\harmonic mi''>~ <mi la\harmonic mi''>2.~
    <mi la\harmonic mi''>8 r \tt {dod,16 mi fad la si} \tt {la si re mi sol}|
    <la, la'>4 <la la'> <la si'> <la si'> |
    <la la'> <la la'> <la si'> <la si'> |
    <la la'>16 re, sol la re mi sol la |
    <mi re'>4 <mi re'> <re mi'> <re mi'>
    <mi re'> \pizz <sol mi'>8 r r2 |
    
    %%% Largo assai %%%
    R1 R2.*3 R2
    \arco sib,,2.~ sib2. r4 | 
    r2 \pizz la'4 sold | sol r dod, r | re r r2 |
  }
}

ActeUnSceneTroisViolonUn = { \ViolonUn
  \relative {
    R2.*6 <mib re'>2.:32 <mib re'>4 r2 |
    r4 \pizz sold r | r mi r r8 mib r dob sib4 |
    \arco dod2.:32 R2.*2 dod2.:32 sold': |
    <mi red'>8 <mi red'>4 <mi red'>8 <mi red'>4~
    <mi red'>8 <mi red'>4 <mi red'>8 <mi red'>4~
    <mi red'> r \pizz si sib r2 |
    R2.*4
    
    %%% Lamento %%%
    R1.*6 R1*5/4*5 R1*4
    \arco <sol'mib' sib'>4 <mib' sib'>8 <mib sib'> \t {<mib sib'><mib sib'><mib sib'>}
    <sol, mib' sib'>4 <mib' sib'>8 <mib sib'> \t {<mib sib'> <mib sib'> <mib sib'>}|
    <mib re'>16 <mib re'> <mib re'> <mib re'> \t {re' re re} <la sold'>8 r4 |
    R2*2
    
    %%% Tempo I %%%
    \pizz re,,4 si r do la r |
    R2.*7
    \repeat tremolo 12 {\arco fa'32 sol} lab4 r2 |
    R2. \pizz la!4 r sol r2 fad4 |
    
    %%% Tempo II %%%
    R1.*3 r2 sol,4 lab2 mib'4~ mib2. r4 r2 |
    R1.
    r2 r4 <re mi' dod'> r | R1 R2. R2
  }
}

ActeUnSceneTroisBisViolonUn = { \ViolonUn
  \relative {
    R1*8 r2 la'8 sol sib4 fad4 r r2 |
    R1*20
    do1 do2 do do do do do |
    fa'4\glissando re8 r re4\glissando si8 r |
    la\glissando fad16 r fad8\glissando mib16 r mib8 do16 r |
    R1*16
    r2 r4 r8 \pizz <la fa'> |
    r <la fa'> r4 r r8 <la fa'> |
    R1*3
    r2 \arco do' si~si4 lad | fad r r2 |
    R1*4
    <lad, mi'>1 dod~dod~dod~dod~dod~dod\fermata
  }
}

ActeUnSceneTroisTerViolonUn = { \ViolonUn
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4 r2
    r4 \arco sol2~ sol2.~ sol4 r2 |
    \pizz <sib, sib'>4 r2 R2.
    <si si'>4 r r2 <do do'>4 r <dod dod'> r |
    <re re'> r r2 R1*3 R2. |
    
    %%% Poco meno %%%
    \arco
    <re sol\harmonic re''>2.:32 ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>4
    \ordin re''2:32~ re2.: ~ re:~ re: ~ re4: ~ si: sib:
    re2.:32~ re8 r r2 | R2.*13
    
    r4 <re,,sib'>2 <re sib'> <re sib'>4~<re sib'>2 r4 |
    r  <re  sib'>2 <fad re'> <sib fad'>4~<sib fad'>2 r4 |
    R2.*3 R1 R2.
    r4 sib2~ sib4 la2 | R2.
    r4 \t {la8 mi la} \t {mi la mi} \t {la mi la} \t {mi la mi} la4 |
    r  \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {fad si fad} \t {si fad si} r2 |
    r4 \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {fad si fad} \t {si fad si} r2 |
    r4 \t {re8 sib re} \t {sib re sib} \t {re sib re} \t {sib re sib} \t {red si red}
    \t {si red si} red4 r |
    r  \t {re8 sib sib} \t {sol sol re} \t {sol' re re} \t {sib sib sol}
    \t {fad' red red} \t {si si fad} \t {si' fad red} \t {re' sib sol} |
    r si sib sol fad mib re' si sib sol fad mib |
    re' si sib sol fad mib re si4 fad mib8~ mib2 r4 |
    R2.*4
    
    la4 sol fa mi fa8 mi fa sol la4 mi2~ mi2.~ mi2 r4 |
    la4 mi2~ mi2.~ mi2.~ mi2 r4 R2.
  }
}

InterludeTroisViolonUn = { \ViolonUn
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    <dod la'>16 <dod la'>8 <dod la'> <dod la'> <dod la'>
    <dod la'> <dod la'> <do sold'> <re sib'>16 |
    <dod la'> <dod la'>8 <dod la'> <dod la'>
    <do sold'> <lad fad'> <dod la'>16 |
    <la'fa'> <la fa'>8 <la fa'> <la fa'>
    <do lab'> <sib solb'> <dod la'>16 |
    <la fa'> <la fa'>8 <la fa'> <la fa'> <la fa'>16 |
    <si sol'> <si sol'>8 <si sol'> <si sol'>
    <si sol'> <la fa'> <re sib'>16 |
    <si sol'> <si sol'>8 <si sol'> <si sol'> <si sol'>16 |
    <mi do'> <mi do'>8 <mi do'>16 <mi do'> <mi do'>8 <mi do'>16 |
    <sol mib'> <sol mib'>8 <sol mib'>16 <sol mib'> <sol mib'>8 <sol mib'>16 |
    R2*2
    \tt {sol,16 si sib re dod} fa32 mi lab sol si sib re dod |
    fa8 r r4 |
  }
}

ActeUnSceneQuatreViolonUn = { \ViolonUn
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    r2 r16 re re re sol4 re re8 la' r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2
    
    %%% Agitato %%%
    re,2.:32 re8 r \t {mi' la re} \t {sol re la} |
    mi8 r r2 <mi, la>2.:32 <mi la>8 r r2 R2.*2
    do'2.:32 do8 r r2 |
    r16 sol' sol sol do8 re, sol la, | re4 r2 |
    r16 sold sold sold dod8 red, sold la, re4 r2 |
    r16 la' la la re8 r r16 sib, sib sib |
    mib8 r r16 si! si si mi!8 r |
    r16 do do do fa8 r r16 dod dod dod |
    fad8 r r16 re re re sol8 r |
    r16 re re re la'8 r r16 re, re re |
    la'8 r16 la, la la do'8 la, sol' |
    dod16 re dod la sol la dod re dod8 r |
    dod16 re dod la sol la dod re dod8 r |
    dod16 re dod la sol la dod re dod8 r |
    re16 mib re sib lab sib re mib re8 r |
    re16 mib re sib lab sib la si red8 r |
    red16 mi red si la si red mi red8 r |
    sold16 mi re la re mi sold mi re la re mi |
    sold mi re la re mi sold mi re la re mi |
    la8 r r4 r2 <re,,, mi>4 <re mi> <re mi> <re mi>2. r4 |
    <re mi>4 <re mi> <re mi> <re mi>2 <re mi>4 <re mi> <re mi> |
    <mib fa>2 <mib fa>4 <mib fa> <mib fa> |
    <mi fad>2 <mi fad> <mi fad>4 |
    \t {r4 la la} la2~ la2. r4 |
    \t {r4 la la} la2~ la2. r4 |
    \t {la la la} \t {lab lab lab} \t {sol sol sol} |
    \t {fad fad fad} fad~ fad2. r4 |
    
    %%% Andante a piacere %%%
    \repeat tremolo 16 {la,32 dod} la2. r4 |
    \repeat tremolo 16 {la32 dod} la2. r4 |
    \repeat tremolo 16 {sold32 si} sold2. r4 |
    \repeat tremolo 16 {sold32 si} sold2. r4 |
    \t {r <la'dod><la dod>} \t {<la dod><la dod><la dod>} |
    \t {<sold re'><sold re'><sold re'>} <la mib'>8<la mib'> |
    \t {r4 <re fad> <re fad>} \t {<re fad><re fad><re fad>} |
    \t {<mi sold><mi sold><mi sold>} <red la'>8<red la'> |
    R1*7 R2*3 R2.*3
    r2 r8 r16 \t {do,32 reb mib} |
    fad8 r r4 r8 r16 \t {la32 do re} |
    mib8 r r2 |
    
    %%% A tempo %%%
    <re,mi>2 <re mi>4 <re mi> |
    <mi sol> <mi sol>2 <mi sol>4 |
    <fa sib> <fa sib> <fa sib> r |
    sol1~\CaV sol4\CaV r2 |
    sib,1~ sib4 r2 |
    r2 r4 \t {do8 reb mib} fad2.~ fad2 red4 mid fad2 r4 |
    <la' dod>2 <la dod>4 <la dod> <la dod>4. <la dod>8~<la dod>4 r8 fa16 la |
    dod2 \t {dod,8 fa la} dod2 \t {red,8 sol si} |
    red8. red16 red8 red4 red8 | red8. red16 red8 red4 red8~red4 |
    <sol, red'>~ \t {<sol red'>8 <sol red'>4~} \t {<sol red'> <si fa'>8~}<si fa'>r|
   
    dod,,16 si si dod dod si si dod dod si si dod |
    dod si si dod dod si | sib2.~sib8 r4 |
    dod16 si si dod dod si si dod | dod si si dod dod si |
    do2~do4. r8 |
    mi16 re re mi mi re re mi | mi re re mi mi re |
    mi2~mi4 r |
    mi16 re re mi mi re re mi | mi re re mi mi re |
    sol fa fa sol sol fa fa sol | sol fa fa sol sib sol sol sib |
    R2 R4. r2 sib16 dod fad la |

    re4 r r dod16 do sib do, | 
    re,4\CaV re16 re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    fad fad fad fad fad fad fad fad fad fad fad fad sold sold sold sold |
    sold sold sold sold sold sold sold sold si si si si si si si si |
    si si si si dod dod dod dod dod dod dod dod dod dod dod dod |
    re re, re re re re re' re, re'4 re, | R1*3 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    R2.*11
    r4 sib'2~sib r4 |
    r4 sib2~ sib r4 |
    r4 sib2~ sib r4 | R2.
    r4 sib2~ sib r4 | R2.
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5
    R1 R1. R1 R1.
    R1 R1.*5 R1 R1. R1
  }
}

EntracteViolonUn = { \ViolonUn
  \relative {
    R2*9
  }
}

ActeDeuxSceneUnViolonUn = { \ViolonUn
  \relative {
    <la' re\harmonic la''>2. ~
    \simile la''2.~ la2.~ la2.~ la2~ 
    la2.~ la2.~ la2~ la2.~ la2.~ la2.~ la4 r |
    R2. R2 | R2.*2 | R2 | 
    r4 \t { r8 sib, dod } la'4~ | la2.~ |
    la2.~| la4 r | la2.~ | 
    la4 la~ | la2~ la4~ | la8 la4. la4 | la la |
    \repeat unfold 11 { \ttt { la16[ la la la la la] } } |
    
    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {la16[ la la la la la] } \t {la la la} r8 r4 |
    r4 r8 \t {re,16 re re} \ttt {re re re re re re} | R1 R2. R2 R2. R1
    
    %%% Andantino %%%
    R1*2 R2.*4 R2
    R2.*5 R1 R2. R2
    r4 <mi,,la> r <mi la> r <mi la> r | <mi la> r <mi la> |
    r <mi la> r <mi la> | r <mi la> r | <mi la> r <mi la> r |
    r sol r | r sol r sol | r fa r | fa r fa r |
    r mi r | r re r re | r re r |
    r mi r mi r mi r | mi r mi r | mi r mi |
    r mi r mi | r mi r | <mi la>2. r4 |
    <mi la>2.~ <mi la>2. r4 |
    
    %%% Entrée de la Contralto %%%
    r2 <mi la>4 | r <mi la> r <mi la> | r <mi la> r | <mi la> r <mi la> r |
    r <mi la> r | <mi la> r <mi la> r | r <mi la> r | <mi la> r <mi la> r |
    r8 \pizz re r re r re | r fad r fad r do' r do | r sol r fad r re |
    r re r la r2 R2. r4 r8 re r la' r la | r mi r re r la | r2 r4 \arco <mi'la> |
    r2 \pizz re4 | r4 r8 re r2 | r2 re4 | r4 r8 re r4 r8 re |
    r4 re sol sol, fa' sib mib lab r |
    r4 r8 \arco <do,,fa> r4 | r4 r8 <si mi> r4 |
    r4 r8 <do fa> r4 | r4 r8 <si mi> r4 |
    r8 <si mi>4 <do fa>8 <re sol>4 <fa sib>2.~<fa sib>2 r4 | R1 R2.
    R1 R2. R1 r4 solb r r fa r fa | r solb r r fa r sib | R2. R1
    re,2.:32~ re1:32~ re2.~ re4 r | R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisViolonUn = { \ViolonUn
  \relative {
    \pizz mi4 r r2 R2. R2
    
    %%% Presto agitato %%%
    R1*5/4*2
    \arco <red sold>1*5/4~ <red sold>~ <red sold>2. r2 |
    \repeat tremolo 8 {\ind #"sul tasto"sol16*5/4 mi}    %%FIXME: Issue #453
    \repeat tremolo 8 {sol mi} sol2. r2 |
    \repeat tremolo 8 {mi16*5/4 sol}
    \repeat tremolo 8 {mi sol} mi2. r2 |
    \repeat tremolo 8 {sol16*5/4 mi}
    \repeat tremolo 8 {sol mi} sol2. r2 |
    \repeat tremolo 16 {mi32 sol} mi4 |
    sol8 la sol mi re mi sol la sol4 |
    sol8 la sol mi re mi sol la sol4 |
    sol8 la sol mi re mi sol la sol4 |
    sol8 la sol mi re mi sol la sol mi |
    sol la sol mi re mi sol la re, mi |
    sol la re, mi sol la re, mi sol la |
    \ordin mib4 re8 re re re mib4 re8 re |
    mib4 re8 re mib4 re8 re re re |
    mib re re re re mib re re re re | re4 r1 |
    R1*5/4*10
    r2 r8 dod mi dod mi dod |
    mi dod mi fa mi dod mi dod mi dod |
    mi dod mi fa mi dod mi dod mi dod |
    fa4 mi8 mi mi mi fa4 mi8 mi |
    fa4 mi8 mi fa4 mi8 mi mi mi |
    fa mi mi mi mi fa mi mi mi mi | mi4 r1 | R1*5/4
    dod4 r1 | R1*5/4-\fermataMarkup
  }
}

ActeDeuxSceneDeuxViolonUn = { \ViolonUn
  \relative {
    R1.*6 R1*2 R2.
    r16 dod dod8 dod16 dod8 dod16 dod8 dod16 dod |
    r16 <sib mi> <sib mi> <sib mi> <sib mi>8 <sib mi>16 <sib mi> r <sib mi> <sib mi> <sib mi> |
    <la re>8 <la re>16 <la re> r16 <sib mi> <sib mi> <sib mi> <sib mi>8 <sib mi>16 <sib mi> |
    r16 <la re> <la re> <la re> mib'8 mib16 mib mi8 mi16 mi |
    la1.~ la1 r2 |
    R1. R1*2 R2.
    
    r16 dod, dod8 dod16 dod8 dod16 dod8 dod16 dod r dod dod dod |
    r <la re> <la re> r <la re> <la re> |
    r mi' mi mi mi mi mi mi mi mi mi mi mi mi mi mi |
    r mi mi mi mi mi mi mi mi mi mi mi mi mi mi mi |
    r mid mid mid mid mid mid mid mid mid mid mid mid mid mid mid |
    sold sold sold sold sold sold sold sold sold sold sold sold red'red red red |
    red red sold,sold dod,dod red'red lad'lad red,red sold,sold lad'lad |
    fa'fa sib,sib fa fa fa'fa sib,sib mib,mib mib'mib fa fa |
    
    R2. R1. R1*2
    r4 \t {do,,8 la do} \t {la do la} |
    r4 \t {do8 sib do} \t {sib do sib} |
    r4 \t {do8 la do} \t {la do la} |
    r4 \t {si8 sold si} | \t {si sold si} \t {sold si sold} \t {do la do} |
    \t {do la do} \t {la do la} \t {dod lab dod} |
    \t {re sib re} mi4 r | la' mi | R4. |
    
    r16 mi, mi mi mi mi mi mi mi mi mi mi mi mi mi mi |
    mi mi re re mi mi re re mi mi re re mi mi re re |
    fa fa mi mi fa fa mi mi fa fa mi mi fa fa mi mi |
    fa fa mi mi fa fa mi mi fa fa mi mi fa fa mi mi |
    si'si si si <re,si'> <re si'> <re si'> <re si'> <re si'> <re si'> <re si'> <re si'> re're re re |
    red red mi mi red red mi mi red red mi mi red red mi mi |
    red red mi mi red red mi mi red red mi mi red red mi mi |
    red red mi mi red red mi mi sold sold lad lad sold sold lad lad |
    <red,si'> <red si'> <red si'> <red si'> <red si'> <red si'> <red si'> <red si'>
    <red si'> <red si'> <red si'> <red si'> <red si'> <red si'> <red si'> <red si'> |
    si'si si si si si si si si si si si |
    
    R1. R1 R1.
    la,4 sol fa mi fa8 mi fa sol | la4 mi r | R1
    \pizz la,4 r2 r8 sol'4. r2 | fa4 r2 r8 mi4. r2 |
    fa4 mi fa sol la r2 | R2.
    fa4 mi fa sol la4 r2 | mi4 r r2 | R2. R1 R2. R1
    \arco \pl {la,4\stopped s2 s1 s2. s1 s2. s1 s2}
    {la'2.~ la1~ la2.~ la1~ la2.~ la1~ la2} r4 |
    
    fa16 mi fa sol la sold la si dod do reb mib fa mi fa sol |
    la4 r R2. <la, la'>4 r r2 | R1 sol8 fa sib la re16 si do re fa red mi fad |
    la4 r r8 | sold sold la r4 | la4 la,8 re mib | sold sold la r4 |
    <re,, mib'>4 re8 re mib | <la, sold'>4 <la sold'> r8 |
    <sold re' la'>4 r r8 | <sold' la la'>4 r re'8 |
    re mib r4 r8 | <la,,sold'>4 <la sold'> r8 | <sold re'la'>4 r r8 |
    sold'8 sold la r4 | r8 sold4 sold | la r r8 |
    
    R1*2 dod,4 r r2 |
    r4 \pizz dod' lad r r sib sol r |
    r2 \arco sol2 |
    mi1:32~ mi: ~ mi2.:32 <mi do'>4:32 |
    sold'4 r2 | r8 \pizz re r4 | R1
    r4 \arco sol,,2.~ sol4 r2 | R2.*3
    r4 \pizz mi'' r r fad r R2. |
    
    la4 r R2 | R2.*2 R2*2
    \arco red4 dod si lad si8 lad sib16 la sib do |
    re8 r r16 re,,\stopped \pizz sib re |
    r re\stopped sib re r re\stopped sib re |
    r re\stopped sib re r re\stopped sib re |
    r re\stopped sib re r8 r16 \arco re |
    mi mi do mi r red si red r re sib re r dod la dod |
    r do lab do r8 sol16 si | r8 sib16 sib r8 la16 la |
    R2 r8 sold'16 sold la8 r | R2
    re,16\stopped \pizz re sib re re\stopped re sib re |
    re\stopped re sib re mi8 \arco sold16 sold |
    la8 fad16 fad sol8 r | R2*2
    \pizz re4 r dod r mib r | R2
    
    R2.*2 la'2.~\CaV la~\CaV la2\CaV r4 |
    la,2.~ la2 r4 |
    R2.*9
  }
}
