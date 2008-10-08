%------------------------------------------------------------------%
% Opéra Libre -- violon2.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

ViolonDeux = { 
  \set Staff.instrumentName = \markup { \hcenter-in #23.5 "Violon 2  "}
  \set Staff.shortInstrumentName = "Vl. 2  "
  \set Staff.midiInstrument = "violin"
}

PrologueViolonDeux = { \ViolonDeux
  \relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2. sib'''2.~ sib2.~ 
    \repeat tremolo 8 sib16~ \repeat tremolo 8 sib32~ sib8 r 
    mi,,,2~| mi4 r | mi2.~| mi4 r | fa2 mi2.~| mi4 r R2 |
    <sold, re'>2.~| <la re>4 r | R2 <sol red'>2.~| 
    <sol mi'>4 mi'8 mi \t {mi mi mi} \tt {mi16 mi mi mi mi} |
    mi2 r4 R2 fa16 fa fa fa sib sib sib sib | 
    sib4. r8 dod, r | r dod r4 | r8 dod r4 dod8 r |
    r4 dod | re8 r r re r4| r8 re r4 | mi
  }
}

ActeUnSceneUnBisViolonDeux = { \ViolonDeux
  \relative {
    R2.*5
    r4 \ttt {lab16 sol sib si lad dod } re8 r |
    \ttt {lad'16 sold lad dod lad dod}
    \ttt {mi dod mi fad mi fad }
    \ttt {sol fad la sol do la } |
    
    %%% Piu vivo %%%
    re4 re, re,2 | R2.
    re''4 r8 re,,~re2 | R2.
    <fa' re'>4 <fa re'>8 <fa re'>4 <fa re'>8 |
    <mib re'>4 <mib re'>8 <dod re'>4 <dod re'>8 |
    <fad re'>4 <fad re'>8 <sold re'>4 <sold re'>8 | <sold re'>2. |
    R2. r4 fa,2~fa4. r8\fermata r4 |
    R2. r4 fa2~ fa2~fa8 r\fermata r4 |
    R1 R2
    
    %%% Largo %%%
    R2*3 R2. R2 R2.
    reb2~reb4 r2 |
    <sol, mib'>2 mib'4 si4 r r2 |
    R1 R2. R2
    r2 r8 fa'4. |
    re2.~ re2 r4 |
    sib'2 fa~ fa4 r2 |
    R2*3 R2. R1 R2.
    r4 <sib, re> <sib mib>2~<sib mib>
    <la red>2. r2 <la red>4 |
    <sold mi'>2.
    
    %%% Adagio %%%
    R1*33 R2*4
  }
}

ActeUnSceneDeuxViolonDeux = { \ViolonDeux
  \relative { 
    %%% Air de la Soprano2 %%%
    
    R2.*2 R1*2  R2.*2 R1*2  R2.*2 |
    re4-. la'-. sold8( mi re4-.) | 
    mi8( re la' sold)-. r mi sold4-. |
    mi-. re8( la' sold4)-. | 
    la8( sold mi re)-. r la' |
    R1*2 |  R2.*2 |
    sold8( la sold mi re mi sold la | 
    sold mi re mi sold4)-. sold8( la |
    sold mi re mi sold la | 
    sold mi re mi sold4)-. |
    R1 | re4-. la'-. sold8( mi re4-.) |
    mi8( re la' sold)-. r la | 
    sold mi re mi sold4-. |
    re-+ <sold' re'> r2 | 
    r8 <sold re'>8 r4 re,-+ <sold' re'> |
    r8 <sold re'> r4 <sold re'> r8 re,-+ r <sold' re'> r4 |
    sol,,!-+ <si'' sol'> r2 | 
    r8 <si sol'> r4 sol,,-+ <si'' sol'> |
    r8 <si sol'> r4 <si sol'> | 
    r8 sol,,-+ r <si'' sol'> r4 |
    sol,,-+ <si'' sol'> r2 | la,,4 re8 si r la si4 |
    re4 sol8 fa do'4 | fa,8 sol si do r4 |
    sol, do re8 fa re do | 
    sol do re fa re do sol do | re2.~| re4 r2 | 
    re'8 mib re sib lab sib lab fa | 
    re fa re do sol2 | lab2.~| lab2 r4 |  
    R1*2 R2.*2 R1*2 R2.*2 |
    <re' la'!>1~\CaV <re la'>~\CaV | 
    <re la'>2.~\CaV <re la'>~\CaV | 
    <re la'>1~\CaV <re la'>~\CaV | 
    <re la'>2.~\CaV <re la'>2\CaV  r4|
    sold8 la sold mi re mi  sold la | 
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | 
    sold mi re mi sold4 |
    sold8 la sold mi re mi sold la | 
    sold mi re mi sold4 sold8 la |
    sold mi re mi sold la | 
    sold mi re mi sold4 |
    R1*2 R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1 R1-\fermataMarkup  |
    
    %%% Récitatif %%%
    
    r4 r8 mib,4. | do2.~| do1~| do2 r4 |
    r4 r8 re4. |  si2.~| si1~| si2 r4 |
    R2.| r4 r8 <re sib'>4 <si! sol'>8~|<si sol'>2.~|
    <si sol'>8 <si sol'>~ \t {<si sol'> <si sol'> <si sol'>} 
    \repeat tremolo 8 si32 |
    si8 r r2 | R2 |R2.| R1*2 | R2.*5 | R1 |
    
    %%% Duo %%%
    
    r8 \pizz <sib re>
    \repeat unfold 15 {r8 <sib re>} <sib re>4 |
    \repeat unfold 7 {r8 <do mi>} |
    \repeat unfold 3 {r8 <red fad>} <red fad>4 |
    \repeat unfold 4 {r8 <dod fad>} r4 | R2
    \arco fa!8
    \repeat unfold 27 fa
    \repeat unfold 14 lad
    \repeat unfold 8  mi'
    sol re' sol, do, re' sol, | 
    do, re' sol, do, re' sol, |
    R2. R1 |
    
    %%% Piu vivo %%%
    sol,,16 sol sol' sol sol, sol sol' sol sol, sol sol' sol |
    sol, sol sol' sol sol, sol sol' sol sol, sol sol' sol sol, sol sol' sol |
    sol, sol fad' fad sol, sol fad' fad sol, sol mi' mi |
    sol, sol mi' mi sol, sol dod dod sol sol dod dod |
    <sol sol'>4 <sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> |
    dod2 r4 |
    <sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'>4 |
    dod2 r4 |
    sol4 sol \t {mi' re fa} |
    dod2 \tt {sib16 la lab sib si} |
    sol4 r2 |
    \pizz <sol re'>4 <sol re'> <sol re'> <sol re'> r2 |
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
    sib16 re, re re sib re re re sib' re, re re sib re re re |
    sib' re, re re sib re sib' re, sib' re, re re sib re sib' re, |
    do' mi, mi mi mi mi do' mi, do' mi, mi mi mi mi do' mi, |
    re' fad, fad fad re fad fad fad re' fad, fad fad re sib' sol' sib, |
    sold' do, do do mi, do' do do mib sol sol sol reb reb mi mi |
    <dod dod'>2 r4
    <mi si'\harmonic si'>1~ <mi si'\harmonic si'>~ <mi si'\harmonic si'>4 r2
    R2
    <mi si'\harmonic si'>2~ <mi si'\harmonic si'>~ <mi si'\harmonic si'>2.~
    <mi si'\harmonic si'>8 r \tt {dod,16 mi fad la si} \tt {la si re mi sol}|
    <sol, la mi'>4 <sol la mi'> <re' mi> <re mi> |
    <sol, la mi'> <sol la mi'> <re' mi> <re mi> |
    re16 re, sol la re mi sol la |
    <re,, la' re'>4 <re la' re'> <re sol' la> <re sol' la> <re la' re'> 
    \pizz <fa' mi'>8 r r2 |
    
    %%% Largo assai %%%
    R1 R2.*3 R2
    \arco sib,,2.~ sib2. r4 | 
    r2 \pizz la'4 sold | sol r dod, r | re r r2 |
  }
}

ActeUnSceneTroisViolonDeux = { \ViolonDeux
  \relative {
    R2.*5 <sib la'>2.:32~ <sib la'>: <sib la'>4 r2 |
    r4 \pizz red r | r do r r8 sib r dob sib4 |
    \arco dod2. R2.*2 dod2. re2.:32 |
    <mi red'>8 <mi red'>4 <mi red'>8 <mi red'>4~
    <mi red'>8 <mi red'>4 <mi red'>8 <mi red'>4~
    <mi red'> r \pizz si sib r2 |
    R2.*4
    
    %%% Lamento %%%
    R1.*6 R1*5/4*5 R1*4
    \arco <sol'mib' sib'>4 <mib' sib'>8 <mib sib'> \t {<mib sib'><mib sib'><mib sib'>}
    <sol, mib' sib'>4 <mib' sib'>8 <mib sib'> \t {<mib sib'> <mib sib'> <mib sib'>}|
    <mib re'>16 <mib re'> <mib re'> <mib re'> \t {<mib re'><mib re'><mib re'>} <mib re'>8 r4 |
    R2*2
    
    %%% Tempo I %%%
    \pizz re,4 si r do la r |
    R2.*7
    \repeat tremolo 12 {\arco fa'32 sol} fa4 r2 |
    R2. \pizz mi4 r dod r2 re4 |
    
    %%% Tempo II %%%
    R1.*3 r2 sol,4 lab2.~ lab2. r4 r2 |
    r2 r4 re'2.:32 <re dod'>2.: <re dod'>4 r | R1 R2. R2
  }
}

ActeUnSceneTroisBisViolonDeux = { \ViolonDeux
  \relative {
    R1*8 r2 la'8 sol sib4 fad4 r r2 |
    R1*20
    sib,1 sib2 sib sib sib sib sib |
    fa''4\glissando re8 r re4\glissando si8 r |
    la\glissando fad16 r fad8\glissando mib16 r mib8 do16 r |
    R1*16
    r2 r4 r8 \pizz do |
    r do r4 r r8 do |
    R1*3
    r2 \arco sol' fad mid | fad4 r r2 |
    R1*4
    red1 dod~dod~dod~dod~dod~dod\fermata
  }
}

ActeUnSceneTroisTerViolonDeux = { \ViolonDeux
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4 r2
    r2 \arco fad4~ fad2.~ fad4 r2 |
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
    
    r4 <si,,? re>2 <si re> <si re>4~<si re>2 r4 |
    r  <si re>2 <si! sib'> <mib re'>4~<mib re'>2 r4 |
    R2.*3 R1 R2.
    r4 fa2~ fa4 mi2 | R2.
    r4 \t {mi8 la mi} \t {la mi la} \t {mi la mi} \t {la mi la}  mi4 |
    r  \t {sol8 sib sol} \t {sib sol sib} \t {sol sib sol} \t {sib sol sib}
    \t {si fad si} \t {fad si fad} r2 |
    r4 \t {sol8 sib sol} \t {sib sol sib} \t {sol sib sol} \t {sib sol sib}
    \t {si fad si} \t {fad si fad} r2 |
    r4 \t {sib8 re sib} \t {re sib re} \t {sib re sib} \t {re sib re}  \t {si red si}
    \t {red si red} si4 r |
    r  \t {sib8 sol sol} \t {re re sib} \t {re' sib sib} \t {sol sol re}
    \t {red' si si} \t {fad fad red} \t {fad' red si} \t {sib' sol re} |
    r sol fad mib re si sib' sol fad mib re si
    sib' sol fad mib re si sib sol4 re si8~ si2 r4 |
    R2.*4
    
    la'4 sol fa mi fa8 mi fa sol la4 mi2~ mi2.~ mi2 r4 |
    R2.*5
  }
}

InterludeTroisViolonDeux = { \ViolonDeux
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
    do8 r r4 |
  }
}

ActeUnSceneQuatreViolonDeux = { \ViolonDeux
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    r2 r16 re re re sol4 re re8 mi r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2
    
    %%% Agitato %%%
    re,2.:32 re8 r mi' la re la |
    mi8 r r2 <mi, la>8 r \t {la mi' si'} \t {fad' si, mi,} |
    la8 r r2 R2.*2
    sol2.:32 sol8 r sib,16 do mib fa fad sold si dod |
    re8 sol do16 re, re re sol8 la, | re4 r2 |
    re8 sold dod16 red, red red sold8 la, | re4 r2 |
    r16 la la la re8 r r4 |
    r16 sib, sib sib mib8 r r16 si! si si |
    mi!8 r r16 do do do fa8 r |
    r16 dod dod dod fad8 r r16 re re re |
    sol8 r r16 la la la re8 r |
    r16 la la la mi'8 r r16 sol sol sol |
    dod4 sol8 la dod16 re dod la |
    sol8 re sol la dod16 re dod la |
    sol8 re sol la dod16 re dod sib |
    lab8 mib lab sib re16 mib re sib |
    la!8 mib lab sib red16 mi red si |
    la!8 mi! la si red16 mi red si |
    la re mi sold mi re la re mi sold mi re |
    la re mi sold mi re la re mi sold mi re |
    mi8 r r4 r2 | <re,, mi>4 <re mi> <re mi> <re mi>2. r4 |
    <re mi>4 <re mi> <re mi> <re mi>2 <re mi>4 <re mi> <re mi> |
    <mib fa>2 <mib fa>4 <mib fa> <mib fa> |
    <mi fad>2 <mi fad> <mi fad>4 |
    \t {r4 fa fa} fa2~ fa2. r4 |
    \t {r4 fa fa} fa2~ fa2. r4 |
    \t {fa fa fa} \t {mi mi mi} \t {mib mib mib} |
    \t {re re re} re~ re2. r4 |
    
    %%% Andante a piacere %%%
    \repeat tremolo 16 {la32 dod} la2. r4 |
    \repeat tremolo 16 {la32 dod} la2. r4 |
    \repeat tremolo 16 {sold32 si} sold2. r4 |
    \repeat tremolo 16 {sold32 si} sold2. r4 |
    \t {r <la'dod><la dod>} \t {<la dod><la dod><la dod>} |
    \t {<sold re'><sold re'><sold re'>} <la mib'>8<la mib'> |
    \t {r4 <re fad> <re fad>} \t {<re fad><re fad><re fad>} |
    \t {<mi sold><mi sold><mi sold>} <red la'>8<red la'> |
    R1*7 R2*3 R2.*2
    \pizz si,4 r re fa r2 dod4 r2 sol'4 r2 |
    
    %%% A tempo %%%
    \arco
    <re mi>2 <re mi>4 <re mi> |
    <mi sol> <mi sol>2 <mi sol>4 |
    <fa sib> <fa sib> <fa sib> r |
    R1 R2. la,1~ la4 r2 |
    la1:32 <do mi>2. <dod re>2 si4 dod | re2 r4 |
    <fa' dod'>2 <fa dod'>4 <fa dod'> <fa dod'>4. <fa dod'>8~<fa dod'>4 r8 dod16 fa |
    la2 \t {la,8 dod fa} la2 \t {si,8 red sol} |
    si8. si16 si8 si4 si8 | si8. si16 si8 si4 si8~si4 |
    <red, si'>~ \t {<red si'>8 <red si'>4~} \t {<red si'> <re si'>8~}<re si'>r|
    dod,16 si si dod dod si si dod dod si si dod |
    dod si si dod dod si | lab2.~lab8 r4 |
    dod16 si si dod dod si si dod | dod si si dod dod si |
    do2~do4. r8 |
    mi16 re re mi mi re re mi | mi re re mi mi re |
    dod2~dod4 r |
    re16 mi mi re re mi mi re | re mi mi re re mi |
    mi re re mi mi re re mi mi re re mi sol fa fa sol |
    R2 R4. r2 sib16 dod fad la |

    re4 r r dod16 do sib do, | 
    re,4\CaV re16 re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    mib mib mib mib mib mib mib mib mib mib mib mib mib mib mib mib |
    mib mib mib mib mib mib mib mib fad fad fad fad fad fad fad fad |
    fad fad fad fad sold sold sold sold sold sold sold sold sold sold sold sold |
    re'8 re, re re' re re, re4 | R1*3 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    R2.*11
    r4 do2~do r4 |
    r4 re2~ re r4 |
    r4 mib2~ mib r4 | R2.
    r4 mi!2~ mi r4 | R2.
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5
    R1 R1. R1 R1.
    R1 R1.*5 R1 R1. R1
  }
}

EntracteViolonDeux = { \ViolonDeux
  \relative {
    R2*9
  }
}

ActeDeuxSceneUnViolonDeux = { \ViolonDeux
  \relative {
    \pizz <la' la'>4 r2 R2.*3 R2 r2 \arco <re, sol\harmonic re''>4 ~ 
    \simile re''2.~ re2~ re2.~ re~ re2.~ re4 r |
    R2. do2~ | do2.~ | do4 dod2~ | dod2 | 
    fad2.~| fad2.~| fad2.~| fad4 r | <la,, re\harmonic la''~>2. 
    \simile la''2~ la2.~ la2.~ la4 r |
    \ttt { mi8[ mi16 mi mi mi] } 
    \ttt { mi16[ mi mi mi mi mi] } 
    \ttt { mi16[ mi mi mi mi mi] } | 
    \repeat unfold 8 { \ttt { re16[ re re re re re] } } |
    
    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {mi16[ mi mi mi mi mi] } \t {mi mi mi} r8 r4 |
    r4 r8 \t {la,16 la la} \ttt {la la la la la la} | R1 R2. R2 R2. R1
    
    %%% Andantino %%%
    R1*2 R2.*4 R2
    R2.*5 R1 R2. R2
    r4 sold, r sold r sold r | sold r sold |
    r sold r sold | r sold r | sold r sold r |
    r fad r | r fad r fad | r re r | re r re r |
    r <la re> r | r sib r sib | r sib r |
    r re r re r re r | re r re r | re r re |
    r re r re | r re r | re2. r4 |
    sold2.~ sold2. r4 |
    
    %%% Entrée de la Contralto %%%
    r2 sold4 | r sold r sold | r sold r | sold r sold r |
    r sold r | sold r sold r | r sold r | sold r sold r |
    r8 \pizz do, r do r do | r re r re r sol r sol | r fad r re r do |
    r la r la r la r4 R2. r8 si r si r mi r mi | r re r la r la | r la r4 r \arco sol' |
    r2 \pizz re4 | r4 r8 re r2 | r2 re4 | r4 r8 re r4 r8 re |
    r4 re re sol, re' lab' re mib r |
    r4 r8 fa, r4 | r4 r8 mi r4 |
    r4 r8 fa  r4 | r4 r8 mi r4 |
    r8 \arco mi4 fa8 sol4 sib2.~ sib2 r4 | R1 R2.
    R1 R2. R1 r4 solb r r fa r fa | r solb r r fa r fa | R2. R1
    re2.~\CaV re1~\CaV re4\CaV r2 R2 | R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisViolonDeux = { \ViolonDeux
  \relative {
    \pizz mi4 r r2 R2. R2
    
    %%% Presto agitato %%%
    R1*5/4*2
    \repeat tremolo 16 {\ind #"sul tasto"sol32 mi}
    \repeat tremolo 4 {sol mi}
    \repeat tremolo 16 {sol mi}
    \repeat tremolo 4 {sol mi}
    \repeat tremolo 16 {sol mi}
    \repeat tremolo 4 {sol mi} sol2. r2 |
    \repeat tremolo 16 {mi32 sol}
    \repeat tremolo 4 {mi sol}
    \repeat tremolo 16 {mi sol}
    \repeat tremolo 4 {mi sol} mi2. r2 |
    \repeat tremolo 16 {sol32 mi}
    \repeat tremolo 4 {sol mi}
    \repeat tremolo 16 {sol mi}
    \repeat tremolo 4 {sol mi} sol2. r2 |
    \repeat tremolo 16 {mi32 sol}
    \repeat tremolo 4 {mi sol}
    \repeat tremolo 16 {mi sol}
    \repeat tremolo 4 {mi sol} mi2. r2 |
    sol8 la sol mi re mi sol la sol4 |
    sol8 la sol mi re mi sol la sol4 |
    sol8 la sol mi re mi sol la sol4 |
    sol8 la sol mi re mi sol la sol mi |
    re mi sol la re, mi sol la re, mi |
    sol la re, mi sol la re, mi sol la |
    \ordin mib4 re8 re re re mib4 re8 re |
    mib4 re8 re mib4 re8 re re re |
    mib re re re re mib re re re re | re4 r1 |
    R1*5/4*11
    mi8 dod mi fa mi dod mi dod mi dod |
    mi dod mi fa mi dod mi dod mi dod |
    fa4 mi8 mi mi mi fa4 mi8 mi |
    fa4 mi8 mi fa4 mi8 mi mi mi |
    fa mi mi mi mi fa mi mi mi mi | mi4 r1 | R1*5/4
    dod4 r1 | R1*5/4-\fermataMarkup
  }
}
