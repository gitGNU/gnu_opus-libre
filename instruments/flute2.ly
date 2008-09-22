%------------------------------------------------------------------%
% Opéra Libre -- flute2.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

FluteDeux = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Flûte 2  "}
  \set Staff.shortInstrumentName = "Fl.2  "
  \set Staff.midiInstrument = "flute"
}

PrologueFluteDeux = { \FluteDeux
  \relative {
    %%% Introduction %%%
    
    \partial 4 r4 \pitchedTrill la'''2.~\startTrillSpan si
    la2.~ la~ la2~\stopTrillSpan la4~ la8 r | 
    mi,,2~mi4 r | mi4~ \repeat tremolo 8 mi32 ~ mi8 r |
    mi2~ mi mi2.~ mi4 r |
    R2 | re2.~ | re4 r |
    R2 | red2.~| mi4 r |
    r r8 \t { re!16 mi la} | re2 r4 | R2*2 | sib'2 r4 |
    r4 \tt {fad16 sold la red, sold} si!2 r4|
    R2 r2 \tt {re16 la si solb lab} | mib8 r r4 |
  }
}

ActeUnSceneUnFluteDeux = { \FluteDeux
  \relative {
    R2*2 R2. R2*2 R2. |
    do2~ do do'4. r8 r4 | do,2~ do sol'4. r8 r4 |
    r8 do, \t { do do do} do4. r8 | dod'4. r8 r4 |
    r8 do, \t { do do do} do4. r8 | red'4. r8 r4 |
    red1 si2 r4 | sol1 mi!2 r4 |
    mi'1 | dod2 r4 | dod2. sold4~| sold8 r sold'4 mi | fa1 |
  }
}
    
ActeUnSceneUnBisFluteDeux = { \FluteDeux
  \relative {
    R2.*6
    \ttt {re16 dod re dod re dod}
    \ttt { re mib fa lab sib si }
    \ttt { dod mi fad sol la do } |
    
    %%% Piu vivo %%%
    re4 r r2 | r4 \tt {re,,16 dod re dod mi } \tt { sol si mi sol sib } |
    re4 r r2 | r4 \tt {re,,16 do re do mi } \tt { lab sib mib sol la } |
    re8. re16 re8 re~ re16 re re8 |
    re8. re16 re8 re r4 |
    re8. re16 re8 re~ re16 re re8 | re4 r8 re4 re8 |
    R2. mi,2.~ mi4. r8\fermata r4 |
    R2. mi2.~ mi2~ mi8 r\fermata r4 |
    R1 R2 |
    
    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 lab, | sol2 r4 lab | sol2 r4 R2 R1
    R2.*2 R2*2 
    r2 r8 lab | sol4 r8 lab | sol2 |
    r8 fad r4 | r8 fad la r r4 |
    r2 r8 fad la sib |
    R2. R2*3 R2.*3
    
    %%% Adagio %%%
    R1*5
    mi,1~mi2 r | R1*3
    r2 r4 la | mi32 re8..~re4 r8 mi32 re16.~re4~|
    re  mi32 re8..~re4 mi32 re8..~|
    re4 mi32 re8..~re4 mi32 re8..~|
    re4 mi32 re8..~re4 mi32 re8..~|
    re4 re32 mi8.. mi4 re32 mi8.. |
    re4 re do do re re do do |
    re8 mi do4 do8 mi re4 |
    re8 mi do4 re  re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re re re r2 |
    r sol4 sol | sol r r2 |
    r4 sol sol sol |
    R1*2 R1-\fermataMarkup |
    R2*4
  }
}

ActeUnSceneDeuxFluteDeux = { \FluteDeux
  \relative {
    %%% Air de la Soprano2 %%%
    
    R2.*2 R1*2  R2.*2 R1*2  R2.*2 R1*2  R2.*2 R1*2  R2.*2
    sold'8 la sold mi re2~ | re4 re8 mi sold4 sold8 la |
    sold mi re4 sold8 la | sold4 r4 r |
    R1*2  R2.*2
    sold8 la sold mi re4 sold8 la | sold mi re mi sold4 sold8 la |
    sold mi re4 sold8 la | sold mi re mi sold4 |
    sol'! sol' si,8 sol fa4 | fa8 sol sol' si, r sol sol'4 |
    sol, fa8 do' si4 | do8 sol' si, sol r do |
    fa, sol sol'4 do, fa,8 do' | r fa, sol' si, do4 sol'8 fa, |
    sol4 si do8 sol | r re' si la fa4 | \repeat unfold 6 {R1*2 R2.*2}
    re,2 la' | sold4 mi re2~| re2. | R2. | mi4 re la' sold~| sold2. r4 |
    R2. r4 mi2 | sold1~ sold2. r4 | R2. r4 re8 mi sold la |
    sold2. r4 | r2 lab8 sib re mib | re2 r4 | R2. | r4 lab8 sib re2~| re2. r4|
    R2.*2 R1 | r2 si'?\fermata |
    
    %%% Récitatif %%%
    
    R2.*2 R1 R2.*3 R1 R2.*5 | mib,8 r r2 R2 R2. R1*2 R2.*5 R1 |
    
    %%% Duo %%%
    
    \repeat unfold 4 {R2. R1} R2. r16 fa fa fa si?8 r |
    R2 r8 \t {mi,16 fa sol} sib8 \t {mi16 fa sol} sib8 r |
    r8 r16 fad,, si!16. sib'32 fa!8 r2 |
    r2 r8 mi32 sol fa sib mi8 r |
    r2 r8 \t {mi16 red dod} lad8 r r2 |R1
    lad1 re!2.~ re~re4 r8 r16 \t {do32 si la} fad8 r | R1
    
    %%% Piu vivo %%%
    R2. R1 R2.
    \ttt {do,16 re mi sol lab sib}
    \ttt {reb mib mi fad la si }
    \ttt {do reb mib mi fa fad }
    sol4 r r2 |
    r16 re re re sol4 fa | sol8 re~ re4 r2 |
    r16 re re re sol4 fa | sol8 re~ re4 r2 |
    r16 mi mi mi sold4 fad  mi8 la~ la4 r  | R2.
    r16 mi mi mi la4 sold|  mi8 la~ la4 r  |
    r8  la   re,4   la  | re8 dod~dod4 r  |
    R2.*6 r4 r8 mi, r4 |
    
    %%% Poco allargando %%%
    sib'2. la4~| la4. sol8~ sol2 | si, re |
    %%% Tempo giusto subito %%%
    dod4 r r2 | R1*3
    r2 r8 si la do | dod2 r4 |
    dod4.  si8 sold'2 |
    dod,4. si8 sold'2~| sold8 r r2 |
    \tt { r16 re, fad sold si}
    \tt { re mi sol la re }
    sold,4 r8 si, | sold'2
    sold,4. si8 sold'4~ | sold8 r r2 |
    r8 re mi re |
    r  re la're,|
    r  re mi si |
    r  re la're,|
    r  re mi re |
    r sol re'sol,
    r sol la sol r sol | sol' r r2
    R1 R2.*3 R2 solb,,2.~ solb2. r4 R1*3
  }
}

ActeUnSceneTroisFluteDeux = { \FluteDeux
  \relative {
    R2.*6 la''2.~ la8 r r2 |
    R2.*8 r2 \t {mib8 mib mib} la4 solb lab8 mib~ mib4 r2 |
    R2.*5
    
    %%% Lamento %%%
    R1.*6 R1*5/4*5
    solb2 fa4 r | solb2 fa4 r |
    solb2 fa4 r | dod2 re4 r |
    sib8 sib'8~ sib4 sib4~ sib mib, la | re4. r8 r4 | R2*2
    
    %%% Tempo I %%%
    R2.*9 fa,,2. fa8 r r2 |
    R2.*3
    
    %%% Tempo II %%%
    R1.*4 mi2. r | R1.
    r2. lab'8 r r4 |
    mi,1~ mi4 r2 | r4 fa |
  }
}

ActeUnSceneTroisBisFluteDeux = { \FluteDeux
  \relative {
    do1~do~do R1
    r2 do do do R1
    r2 do do r | R1*7
    r2 dod~ dod~ dod8 r dod4 |
    mi2 dod~dod~ dod8 r dod4 |
    mi2. dod8 r | R1
    \t {sol'8 mi r} \t {sol mi r} \t {sol mi r} \t {sol mi r} |
    \t {la sol r} \tt {la16 reb, mi sol la} do8 r \tt {reb,16 mi sol la do} |
    fad,4 r r2 R1*10 R2. R1*7
    \tt {fa16  lab sib si do} dod8 r
    \tt {fa,16 lab sib si do} dod8 r
    \tt {fa,16 lab sib si do} dod8 r
    \tt {fa,16 do mib fad la} re8 r |
    fad,1~fad2. r4 |
    r2 r4 dod mi2 dod | r r4 do! mib2 do~do2. r4 |
    R1*7
    fad2 r4 red dod2 red~red4 r r2 |
    R1*9
  }
}

ActeUnSceneTroisTerFluteDeux = { \FluteDeux
  \relative {
    R2*3 R2. R2*2 R2.*4
    re'8 fad16 re dod8 fa16 do r red mi si |
    sib8 r r2 R2. sol8 fad mib re~ re4 r |
    lab'8 sol mi red la' sold fa mi |
    re r r4 r2 | R1*3 R2.
    
    %%% Poco meno %%%
    re''2.~ re~ re2 r4 |
    r8 si, sib sol fad mib re'2. r8 si sib sol fad mib re'2. R2.*2
    \t {r8 dod' do} \t {la4 sold fa} | dod'2 r4 |
    \t {r8 dod do } \t {la sold fa~} \t {fa sold la} |
    \t {mi'dod do~} \t {do la sold} \t {fa dod' mi~} |
    \t {mi la, sold} \t {fa dod' mi~} \t {mi16 r la,8 sold} |
    \t {fa dod' mi} \t {sold, dod mi} \t {do dod mi} |
    fa32 mi dod8.~ \t {dod8 do la} \t {la mi dod~} |
    \t {dod do la} \t {r sold fa~ } \t {fa mi dod} | do2 r4 |
    
    r mib2~ mib re4~ re2 r4 |
    r mib2~ mib re4~ re2 r4 |
    r sib'2~sib si4~ si2 r4 |
    r sib2~ sib si4~ si2 r4 |
    r fad'2 fad fad4~ fad2 r4 |
    r fad2  sib re4~ re r2 | R2.*3
    sol16 re lab mib la, lab' r8 r2 |
    R2. r4 fa,2~ fa4 mi2 |
    R2. r4 mi4. la8~ la4 mib'2 |
    r4 sol,2 sol fad4~ fad r2 |
    r4 sol2  sol fad4~ fad r16 fa'' mi dod do la sold' si |
    r4 sib,,2 sib si4 r mi'16 dod do la sold' si re, re |
    mi mi r8 r4 sib, re2 red4~ red fad sib |
    
    r8 sol fad mib re si sib' sol fad mib re si |
    \t {r dod' do} \t {la sold fa} \t {mi' dod do} |
    \t {la fa dod'} \t {mi dod do} \t {la fa dod'} |
    \t {mi sold, la} \t {mi' la, do} mi16 do dod mi|
    \grace fa8 \pitchedTrill mi2.\startTrillSpan fa mi4\stopTrillSpan r2 |
    R2.*12
  }
}

ActeUnSceneQuatreFluteDeux = { \FluteDeux
  \relative {
    \partial 4 r4 la'' la fa8 mi4 r16 fad sol la |
    sib do sib la sol la sol fa mi re dod mi la,8 r |
    la'4 la fa8 fa4 r r8 re r mi fa4 r2 | R2*3-\fermataMarkup
    
    %%% Allegretto comodo %%%
    R1 R2. R1*2 R1. R1*2 do2 do do do do do2. r4 |
    
    %%% Agitato %%%
    sol8 r r2 R2.*6 sol2.~ sol8 r r4 do,16 fa sold dod |
    re4 re re re r8 re \t {re re re} |
    dod'4 mi, mi dod' r8 sib, \t {do mib sold} |
    si4 r2 | R2.*4
    r2 re,,16 mi sol la
    re8 r r4 re32 re16.~re16 re |
    re8 r r4 re8 r re8.. re32 re8 r r4 |
    mib8 r r4 mib32 mib16. r8 mib8.. mib32 mib8 r r4 |
    mi!8 r r mi r4 |
    la,16 re mi sold la4 sold'16 la sold mi re mi, sold la re,2 |
    la'8 r r4 r2 | R2. R1 R2.
    r4 re,8 r | R2.
    r8 fa8 r4 | R2.
    R2 fad8 dod dod4 r |
    
    %%% Placando assai %%%
    r2 fa~ fa2. r4 |
    r2 fa~ fa2. r4 |
    fa,2 mi mib re2.~ re r4 |
    
    %%% Andante a piacere %%%
    r2 \t {dod4 dod dod} \t {re re re} mib r |
    r2 \t {dod4 dod dod} \t {re re re} mib r |
    r2 \t {fa4 fa fa} \t {fad fad fad} sol r |
    r2 \t {fa4 fa fa} \t {fad fad fad} sol r |
    r2 do' sol4. mib si'2 fad sold4. sol |
    R1*7 R2*3 R2.*6
    
    %%% A tempo %%%
    r4 sol, sib do |
    r dod red fad sold'2\startTrillSpan sold4\stopTrillSpan r4 |
    sol,,!1~ sol8 r r2 |
    r2 r4 r8 \t {fa16 fad sold} |
    si2.~si8 r r4 r2 |
    mi,2. re2 red4 mid fad2 r4 |
    fa'!8. fa16 fa8 fa~fa fa fa4 |
    r16 fa fa8~fa fa~fa fa fa fa |
    \t {la, dod fa~} \t {fa fa4} fa8 fa |
    r fa \t {fa4 fa fa} si4. r8 si4 |
    sol r8 \t {lab,16 si re} sol8. sol16 sol8 sol~|
    sol4 sol r8 sold4 \t {re'16 mib fa} |
    sold8 r r4 sold,4\startTrillSpan sold8\stopTrillSpan r4 |
    re,2~ re8 r | r4 \t {re'16 mi la} |
    si4. \t {mi,16 la re} | sold8 r4 |
    fa,,2~ fa8 r r \t {sol'16 sib do} |
    dod4. \t {re16 fa sol} sold8 r \t {re16 mi sold} |
    la'8 r r4 R2*2
    re,,,4.~re4 r16 sib'8.~sib4 solb' |
    R2 R4. R2.

    re'4 r r2 | r4 r8 \t {sib,16 fa sol} \t {mi4 la sol} |
    sib4 r r2 | R1 r2 \t {re,4 do re} | mib2. r4 |
    r8 si'4 re8 mi4. fa8~fa4 sol la sib |
    re,4 r r2 R1*3 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    R2.*21
    R1. R1 R1. R1 R1. r2 sol,4 r | R1. R1
    la,4 sol fa mi fa8 mi fa sol la2 mib4 r |
    R1.*5 r2 reb4 r | R1. R1 r2 r4 la' sol fa |
    mi r r2 | R1.*5 r2 sol4 r | r2 r4 la fa? r |
    r2 mi4 r |
    
  }
}

ActeDeuxSceneUnFluteDeux = { \FluteDeux
  \relative {
    R2.*4 R2 R2.*2 R2 | r2 \t {si''8 re fa}| fad2 red8 r16 fad! | 
    re!2.~ | re4 r |
    R2. R2 | la'2.~ | la2.~ | la4 r | r \t {sib,8 reb mib~} mib4~ |
    mib16. fad32 do8~ do2 | 
    \tt {si!16 do si sold sol } mib'16 mi,!8.~ mi4~| 
    mi r | R2. R2 R2.*2 R2 |
    la2.~| la2.~| la2.~| la4 r |
  }
}
