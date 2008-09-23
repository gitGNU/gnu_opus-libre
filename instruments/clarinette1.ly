%------------------------------------------------------------------%
% Opéra Libre -- clarinette1.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

ClarinetteUn = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Clarinette 1  "}
  \set Staff.shortInstrumentName = "Cl. 1  "
  \set Staff.midiInstrument = "clarinet"
  \clef treble
}

ClarinetteBasse = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Clarinette Basse  "}
  \set Staff.shortInstrumentName = "Cl. B.  "
  \set Staff.midiInstrument = "clarinet"
  \clef bass
}

PrologueClarinetteUn = { \ClarinetteUn
  \relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2.*3 R1 | mi,2~ mi4 r | mi'2 r4 |
    fa,2~ fa mi2.~ mi4 r R2 | \tt {sol16 sold si lad si} re2~|
    re4 r | R2 \tt {fad,16 sol la do sib} mib4. red8 |
    mi4 r | r r8 \t {si16 re mi}|
    la2 r4 | R2*2 | fad'2 r4 | R2 r2 mi,8 mi~|
    mi2 | mi2
  
  }
}

ActeUnSceneUnClarinetteUn = { \ClarinetteUn
  \relative {
    R2*2 R2. R2*2 R2. |
    r8 do \t {do do do~} do2~ do r4 | 
    r8 do \t {do do do~} do2~ do r4 |
    \t { fa,4 solb sib} do2~ do8 r r2 | 
    \t {solb4 sib do} mib2~ mib8 r r2 |
    \t {la,8 mib' si'} \t {solb' si, mib,} \t {la,4 mib'8} si'8 r |
    \t {la,8 mib' si'} \t {solb' si, mib,} la,8 r |
    \t {la8 mi'! sol!} mib'8 r  \t {mi,! sol do} \t {solb' do, mi,} |
    \t {la,8 mi'! sol!} mib'8 r |  \t {mi,! sol do} |
    \t {fa, lab mi'} \t {la! mi lab,} \t {do,4 lab'8} reb8 r |
    \t {fa, lab mi'} \t {la! mi lab,} fa8 r |
    \t {do4 lab'8} reb8 r \t {fa, lab mi'} \t {la! mi lab,}|
    \t {do,4 lab'8} reb8 r \t {do, lab' mi'} |
    \t {do' fa, lab,} \t {re,!4 fa'8} \t {do' fa, lab,} \t {re,4 fa'8}|
    \t {do' fa, lab,} \t {re,4 lab'8} \t {fa'4 sib8}|
    mi4
  }
}

ActeUnSceneUnBisClarinetteUn = { \ClarinetteBasse
  \relative {
    R2.*3
    \ttt {fa,,16 mi re dod re mi} \ttt {fa mi fa dod re mi} \ttt {fa mi re dod re mi} |
    fa8 r \ttt {fa'16 mi re si re mi} fa8 r |
    \ttt {re16 dod re mi fa sol} lab8 r \ttt {re,16 dod re mi sol la} |
    sib8 r \ttt {re16 do la sol fad mi} \ttt {dod si lad sold fa mib} |
    
    %%% Piu vivo %%%
    re4 r r2 | fad2. |
    re4 r r2 | sib'4. lab4. |
    sol2.~sol8 r sol4. r8 |
    sol4 r reb sol2 r4 |
    \t {sol16 lab sib } reb8~reb2~ reb2.~reb4. r8\fermata r4 |
    \t {sol,16 lab sib} reb8~reb2~ reb2.~reb2~reb8 r\fermata r4 |
    R1 R2
    
    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 solb, | reb2 r4 solb | reb2 r4
    lab'2~lab r |
    R2.*2 R2*2 
    r2 r8 solb | reb4 r8 solb | reb2 |
    \t {sol!16 lab sib} reb8 r4 | r8
    \t {la16 sib do} mib8 r r4 |
    r2 r8 \t {lad,16 si dod} mi8 si' |
    R2. R2*3 R2.*3
    
    %%% Adagio %%%
    R1*2
    do,2~do4. sold8~|
    sold2 r4 do~|
    do2~do8 sold4.~|
    sold4 r sol2~ |
    sol4. dod8~dod2|
    r4 sol2. | sol8 dod~dod2 r4 |
    sol1~sol2 r4 sib~ |
    sib2~sib8 sol4.~|
    sol4 r sib2~sib4. sol8~sol2 |
    r4 sib sol2~sol4 r r2 |
    mi1~mi2. r4 |
    R1*5 \clef treble
    r2 r4 r8 la'' |
    r la sol si r si sol la |
    r la sol si r si sol la |
    r la sol si sol2~sol4. r8 
    fa4 fa8 la | sol4 r r2 |
    r4 fa fa sol |
    R1*2 R1-\fermataMarkup |
    R2*4
  }
}

ActeUnSceneDeuxClarinetteUn = { \ClarinetteUn
  \relative {
    %%% Air de la Soprano2 %%%
    R2.*2 R1*2  R2.*2 R1*2  R2.*2 R1*2  R2.*2 R1*2  R2.*2
    re,8 fad sold si sold si sold fad | re4 r r2 |
    re8 fad sold si r4 | r2 sold'8 la |
    sold mi re si sold si sold fad | re4 r r2 |
    R2.*2 |
    sold'8 la sold mi re4 sold8 la | sold mi re mi sold4 r |
    r2 re8 mi | re si sold4 r |
    r fa!8 la si la fa mi | fa la si la fa4 r |
    r2 la8 si | re fa sol si sol4 | R1*2 R2.*2 |
    lab'1~ lab2. r4 | R2.*2 | lab1~|lab2. r4 |
    R2.*2 R1*2 | sold,,8 re' sold, re r re | sold4 r2 |
    \repeat unfold 5 {R1*2 R2.*2} |
    r4 sold'8 la sold mi re mi |
    sold2 r4 sold8 la | sold mi re mi sold4~| sold2 r4 |
    r4 re'8 mib re sib lab sib | re2. r4 | r lab2 |
    r4 lab8 sib re mib | re2. r4 |
    r2 r4 si!8 dod | mid fad mid2~| mid2 r4 | 
    si8 dod mid fad mid2~| mid4 r do!2\fermata |
    
    %%% Récitatif %%%
    
    R2.*2 R1 R2.*3 R1 R2.*4 
    \repeat tremolo 12 {mib32 mi!} | mib8 r r2 R2 R2. R1*2 R2.*4
    \repeat unfold 7 {r8 re,,} | 
    
    %%% Duo %%%
    
    \repeat unfold 18 sib'8 r
    \repeat unfold 13 sib r sib
    \repeat unfold 14 do
    \repeat unfold 4  mib r
    \repeat unfold 3  mib
    \repeat unfold 8  solb r4 | r8
    \repeat unfold 3  sol,!
    \repeat unfold 10 si r
    \repeat unfold 13 si r
    \repeat unfold 3  si
    \repeat unfold 2  mi
    \repeat unfold 2  {sold sold lad lad} sold sold lad r
    \repeat unfold 2  {red red mi mi} sol!2.~ sol~sol4 r2 | 
    r4 \t {mi8 red dod} r la,4. |
    
    %%% Piu vivo %%%
    
    sol'4 r2 | R1 R2.*2 R1
    r16 re're re sol4 fa | lab8 re,~ re4 r2 |
    r16 re re re sol4 fa | lab8 re,~ re4 r2 |
    r16 mi mi mi la4 sold| la8  re~  re4 r  | R2.
    r16 mi,mi mi la4 sold| la8  re~  re4 r  |
    r16 la la la re4  do | re8 sol~ sol4 r  |
    R2.*2 r16 mi,32 re mi8 r2 |
    R2.*2 r4 r16 re32 mi r8 r4|
    r r8 sol r4 |
    
    %%% Poco allargando %%%
    \t {re,re re}
    \t {re re re}
    \t {re re re}
    \t {re8 r sold4 sold}
    \t {sold sold sold}
    \t {la la la} |
    %%% Tempo giusto subito %%%
    sib r r2 |
    r4 sib,8 sib r2 |
    r4 sib8 sib r2 |
    r4 si8 si r2 |
    r8 si si4 r2 | R2.
    r8 si lad'2 si'4 |
    r8 si,, lad'2 si'4~| si8 r r2 | R2
    r8 re,, dod'4~| dod8 do si'4 |
    r8 re,, dod'4. do8 | si' r r2 |
    r8 mi,la mi
    r  la,mi'la,
    r  mi'sol re
    r  la mi'si
    r  mi la mi
    r  la re la
    r  mi mi'la, r mi | mi' r r2 |
    
    %%% Largo assai %%%
    r4 re,2. dod4. r8 dod4 do4. r8 do4 si4. r8 r4 | r si |
    
    %%TODO: trouver doigté alternatif pour cette note
    sib2.~ | sib2. r4 | r2 la4 lab sol r dod, r re r r2 |
  }
}

ActeUnSceneTroisClarinetteUn = { \ClarinetteUn
  \relative {
    R2.*4 do'8 la4 do8 la4 r r8 la4 solb8 mib2.~ mib8 r r2 |
    R2.*8 r2 \t {la'8 la la} re4 do re8 la~ la4 r2 |
    R2.*5
    
    %%% Lamento %%%
    R1.*6 R1*5/4
    sol,2 mi4 r2 |
    solb2 mib4 r2 |
    sol2  mi4 r2 |
    sol2 lab4 r2 |
    reb2 sib4 r |
    do2 la4 r |
    reb2 sib4 r |
    sol2 re'!4 r|
    mib2 mib4~ mib8 do,~ do sib'4. la' r8 r4 |
    R2*2
    
    %%% Tempo I %%%
    R2.*8 sib,,2. re do8 r r2 |
    R2.*3
    R1.*3 r2 sol4 lab2 mib'4~| mib2. r4 r2 |
    r2 r4 re'2.~re~re8 r r4 |
    mib,1 mib4 r2 | r4 fa
  }
}

ActeUnSceneTroisBisClarinetteUn = { \ClarinetteBasse
  \relative {
    fad4 red8 r fad4 red8 r |
    fad4 red8 r fad4 red8 r |
    fad4 red8 r fad4 red8 r | R1 r2
    fad4 red8 r 
    fad4 red8 r fad4 red8 r | R1 r2
    fad4 red8 r fad4 red8 r 
    r2 | R1*11 r2 r4
    lad16 dod8 lad16 |
    \tt {fa    lab sib reb mi} sol8 r
    \tt {fa,16 lab sib reb mi} sol8 r
    \tt {fa,16 lab sib reb mi} sol8 r
    \tt {fa,16 lab sib reb mi} sol8 r
    \tt {fa,16 lab sib reb mi} sol8 r
    \tt {fa,16 lab sib reb mi} sol8 r |
    fad,4 r r2 R1
    fad'4 red8 r fad4 red8 r |
    fad4  red8 r fad4 red8 r |
    fad4 red8 r16 sol,
    fad'4 red8 r |
    fad~ \t {fad16 si,, sol'} red'8 r
    fad4 red8 r16 mi, |
    fad'4 red16 r \t {sol, sib do}
    fad8. fa32 mi red8 r |
    fad4 red8 r
    fad16 sol,~ \t {sol si, lab} red'8 r |
    fad16 mi, lab,32 sol' sib do red8 r
    fad4 red8 r
    fad4 red8 r fad4 red8 r |
    fad8 la16 r red,8 fad16 r do8 mib16 r sol,8 sib16 r |
    dod,8 r r2 |
    r4 fad2 fad4 mi2 fad~fad2. r4 | R1*2
    \tt {fad16  sol la do re} r4
    \tt {fad,16 sol la do re} r4 |
    \tt {fad,16 sol la do re} fa8 r
    \tt {fad,16 sol la do re} fa8 r |
    \tt {fad,16 sol la do re} fa8 r
    \tt {fad,16 sol la do re} fa8 r |
    \tt {fad,16 sol la do re} fa8 r
    \tt {fad,16 sol la do re} fa8 r |
    fad,2. r4 | R1*6
    r4 fad do8 r r4 |
    r  fad do8 r r4 |
    fad do8 r fad4 do8 r |
    R1*7
    do'2 la~la4 r r2 |
    R1*5-\markup "Prenez la Clarinette" \ClarinetteUn
    r2 sol' do1\fermata
  }
}
    

ActeUnSceneTroisTerClarinetteUn = { \ClarinetteUn
  \relative {
    r4 r16 lab' lab lab | reb2 | 
    r4 r16 lab lab lab |
    reb8 lab16 lab reb2 |
    r4 r8 lab16 lab | 
    reb8 lab16 lab reb8. lab16 |
    lab lab lab lab r8 reb4 la!16 la|
    re!8 r r2 |
    R2.*3-\markup "Prenez la Cl. Basse" \ClarinetteBasse
    fad,8 fa re dod fad, fa sib la dod, re fa, fad |
    mib2 mib'8 re lad si mi,2 la''8 sold fa mi, |
    re8 r r4 r2 | R1*3 R2.
    
    %%% Poco meno %%%
    
    re2.~ re2 r4 |
    re,2.~re2 r4 |
    R2.
    re2.~ re2 r4 |
    R2.
    re2 r4 | \clef treble
    r8 si''' sib sol fad mib re'2 r4 |
    r8 si sib sol fad mib re'2 r4 |
    r8 si sib sol fad mib re'2 r4 |
    re,4 r2 \clef bass
    r4 \t {r8 mi dod} \t {sold fa do} |
    r8 sold la do dod mi | fa,2.~ fa4 r2 |
    r8 sold la do dod mi | fa,2.~ fa4 r2 |
    r8 sold la do la sold| dod,2.~dod4 r2|
    r8 mi fa la sold4 | dod2.~ dod4 r2 |
    r8 mi,fa sold mi4 | la2.~la~la2 r4 |
    la2.~la~la4 r2 | R2.*3
    r2 r8 la''16 mi sib la si, fa' |
    fad,2.~fad~ fad2 r4 |
    fad2.~ fad~ fad2 r4 |
    fa2.~ fa4 r2 r4 dod'2 |
    fa,2.~fa4 r2 r4 la2 |
    dod,2.~dod4 r2 r4 la'2 |
    dod,2.~ dod4 r2 | \clef treble
    mib''4 sib' si |
    r8 sib si fad sol re mib sib' si fad sol re |
    mib sib' si4 \clef bass r8 sib, si4 sib, r |
    R2.*15
  }
}

InterludeTroisClarinetteUn = { \ClarinetteBasse
  \relative {
    sol,4 mi8 r r4 r | sol mi8 r r4 |
    sol8 mi sol mi sol mi sol lab | sol mi sol mi sol lab16 r |
    sol8 mi sol mi sol mi sol lab | sol mi sol mi sol lab16 r |
    sol8 mi sol mi sol mi sol lab | sol mi sol mi sol lab16 r |
    sol8 mi sol mi sol mi sol lab | sol mi sol mi sol lab16 r |
    sol8 mi sol mi sol lab | sol mi sol lab16 r |
    sol8 mi sol mi sol lab | sol mi sol lab16 r |
    sol8 mi sol lab | si lab si do | R2*4
  }
}

ActeUnSceneQuatreClarinetteUn = { \ClarinetteUn
  \relative {
    \partial 4 r4 fa' mi re8 dod4 r16 do sib la |
    sol la sol fa mi fa mi re dod si la si dod8 r |
    fa'4 mi re8 do4 r16 fad, fad fad |
    sib4 sol la r2 |
    R2*3-\fermataMarkup
    
    %%% Allegretto comodo %%%
    R1 R2. R1*2 \t {sol4 la sol} \t {la sol la} \t {sol la sol} |
    la2. r4 | \t {fad4 sol fad} \t {sol fad sol} |
    la r \t {fad2 sol4~} \t {sol fad2} | \t {sol2 fad4} \t {sol fad sol} |
    \t {sib, dob sib} \t {dob sib dob} |
    
    %%% Agitato %%%
    re8 r r2 | R2.*4
    r8 la' la la re4~| re do do8 do | fa2.~ fa8 r r2 |
    re,4 r4 r16 la' la la | re4 do re8 la~ | la4 r r16 si si si |
    mi4 re mi8 si~ | si4 r2 |
    mib,,2. mi2 r4 | fad2 sol4 lab lab lab |
    mi16 sol la do re mi sol la do re mi sol |
    la8 r r4 la32 la16.~la16 la |
    la8 r r4 la8 r la8.. la32 la8 r r4 |
    sib8 r r4 sib32 sib16. r8 sib8.. sib32 sib8 r r4 |
    si!8 r r si r4 | mi,2 re4 mi2 re4 |
    mi8 r mi,16 re mi re mi re mi re mi re mi re |
    \t {mi8 re mi} \t {re mi re} mi8 r |
    mi16 re mi re mi re mi re mi re mi re mi re mi re |
    \t {mi8 re mi} \t {re mi re} mi8 r |
    mi16 re mi re mi8 r | mi16 re mi re mi re mi re mi8 r |
    fa16 mib fa mib fa8 r | fa16 mib fa mib fa mib fa mib fa8 r |
    \t {fad8 mi fad} \t {mi fad mi} | \t {fad mi fad} \t {mi fad mi} fad8 r |
    
    %%% Placando assai %%%
    r2 si~ si2. r4 |
    r2 si~ si2. r4 |
    si,2 sib la lab2.~ lab r4 |
    
    %%% Andante a piacere %%%
    r2 dod re mib4 r |
    r2 dod re mib4 r |
    r2 fa fad sol4 r |
    r2 fa fad sol4 r |
    r2 dod re4. mib fad2 re lab4. mib' |
    R1 r2 re,~ re4 re fa2 re2. r4 |
    R1*3 R2*3 R2.*6
    r8 sol~ \t {sol sol sol} \t {sib sib sib} \t {do do do} |
    r  reb~ \t {reb reb reb} \t {mib mib mib} \t {solb solb solb} |
    \t {lab lab lab} \t {la la la} \t {la la la} r4 |
    R1 R2. R1 R2. R1 R2. R1 R2.
    la8. la16 la8 la~ la la la4 |
    r16 la la8~ la la~ la la la la |
    \t {dod, fa la~} \t {la la4} la8 la |
    r la \t {la4 la la} |
    sol4. r8 sol4 | si r si8. si16 si8 si~ |
    si4 si r8 si4 re,8 |
    reb2.~reb8 r4 | sol,,2~sol8 r |
    re16 la' si mi la re | lab'2~lab8 r4 |
    sol,,2~sol8 r \ttt {re16 sol do fa sib mib} |
    lab2~lab8 r4 | sol8 r r \t {r16 mi re} | mi8 r r4 |
    r4 si,~si4.~si2 mib' | R2 R4. R2.

    re'4 r r2 | re,,1 mib fa solb2. r4 |
    r2 solb4. lab8~lab4 si2 mi4~ mi la reb, lab |
    re4 r r2 | R1*3-\markup "Prenez la Cl. basse"
    \ClarinetteBasse R2 R2.*2 R2 R1

    %%% Piu lento %%%
    re,,,2.~re2 r4 | R2.
    re2.~re2 r4 | re2 r4
    \t {r8 \ottava #1 sib''' solb}
    \t {fa \ottava #0 dob sib} \t {re, reb mib,} |
    re2.~re2 r4 |
    re2.~re2 r4 | R2. re2 r4 |
    \t { \ottava #1 re'''8 sib la} \t {fad mi re}
    \t { \ottava #0 si sib fad} |
    re,2.~re2 r4 | R2.*2
    re2 r4 | R2.*2

    R1. R1 R1. R1 R1.
    r2 si'4 r | R1. re8 mi4 re8 fa2~fa1.~solb2. r4 |
    R1.*5 r2 fa,4 r | R1. R1 R1. do'4 r r2 |
    R1.*5 r2 si4 r | r2 r4 do reb r | r2 la4 r | 
  }
}

ActeDeuxSceneUnClarinetteUn = { \ClarinetteUn
  \relative {
    R2.*3 | re''8 sib~ sib2~ | sib4 r | 
    si!8 sol~ sol2~ | sol2 r4 | r sold | 
    mi2.~ | mi2.~ | mi2.~ | mi4 r |
    R2. R2 R2.*2 r4 r8 la, | 
    mi2.~ | mi2.~ | mi2.~ | mi4 r |
    R2. R2 R2.*2 R2 | R2. mi'2.~| mi2.~| mi4 r |
  }
}
