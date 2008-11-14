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
    mi,,2~mi4 r | mi4~ mi4:32 ~ mi8 r |
    mi2~ mi mi2.~ mi4 r |
    R2 | re2.~ | re4 r |
    R2 | red2.~| mi4 r |
    r r8 \t { re!16 mi la} | re2 r4 | r4 sol, r do | sib'2 r4 |
    r4 \tt {fad16 sold la red, sold} si!2 r4|
    R2 r2 \tt {re16 la si solb lab} | mib8 r r4 |
    red,2.~ red4 r mi2~ mi4 r2 |
    
    %%% Tempo giusto %%%
    \slap { \ind #"slap" re4} r R2*6 r4 mi16 sol do fad |
    re4 r2 | r2 sol,16 do fad mib | re4 r2 R2.
    dod,2. do sol'2 r4 | r8 do mib fa lab si |
    re4 r8 lab4.~ | lab4 r8 solb4. | fa2. r4 R2*2 R2-\fermataMarkup
    
    %%% Solo Ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*7 r2 sol4 sol, r sol' sol, sol' r |
    la si, sib' | R4.
    R4.*2 r8 sol, r lab r sib | R4.*5
    mib8 reb sib sol sol r | R4.*15
    fa'4.~ fa4.~ fa4.~ fa8 r4 |
    r8 r16 fad8.~ fad4.~ fad4.~ fad8 r4 |
    r8 sol4~ sol4.~ sol4 r8 | do la sol |
    
    %%% A tempo %%%
    re'8 re,32 re re re re,8 | re4:32 r8 |
    re''8 re,32 re re re re,8 | re4:32 r8 |
    \t {lab'16 reb solb} \t {fa sib do} \t {sib mib fa} |
    re re re sib r8 | re16 re re sib r8 |
    re16 re re sib r8 | re8 r4 |
    R4.*2 sol,,16 sol r sol sol sol | si8 r4 |
    lad'8 r4 | lad16 lad lad r r8 | lad16 lad lad r r8 |
    lad16 lad lad r r8 | lad16 lad r lad lad lad |
    sol sol sol r r8 | sol16 sol sol r r8 |
    sol16 sol sol r r8 | sol16 sol sol r r8 |
    si16 si si r r8 | dod16 dod dod r r8 |
    mib,16 mib mib r r8 | fad,16 fad fad r r8 |
    R4.*8 r4 r8 \t {do16 fa lab} \t {reb mi la} |
    do2. | sol2 re4 | si r2 |
    
    %%% Adagio %%%
    R1*4 R1.*2 R1*3 R1.*2 R1*2 do,2 r4 |
    
    %%% Valse %%%
    r fa'' fa | r mib mib | r la, la |
    r mib mib | r reb reb | r sol, sol |
    lab4 lab8 r | sol4 lab8 r | sol2.~ sol4 r | R2.*2 R1
    r2 mi'4 mi | r la, la | r dod dod | r la la | r lab lab |
    r solb solb | r reb r do |
    r2 fad8 re'~ re16 fad, re'8 | la'8. re,16 la'8 mib'4. |
    
    %%% Vivo %%%
    re4 r | R2*8
    re,,2~ re~ re~ re4 r | R2*17 r4 mi8 r |
  }
}

OuvertureFluteDeux = { \FluteDeux
  \relative {
   r4 \tttt { mi''16 sold sol si sib, re dod'} \t {la8 fa dod} |
    sib16 sol mi dod mi,4 r | \tttt {mi'16 fa sold la do dod mi }
    \tttt { mi, fa sold la do dod mi} \tttt {do dod mi mi, fa sold la} |
    sib4 
  }
}

ActeUnSceneUnFluteDeux = { \FluteDeux
  \relative {
    R2*2 R2. R2*2 R2. |
    do2~ do do'4. r8 r4 | do,2~ do sol'?4. r8 r4 |
    r8 do, \t { do do do} do4. r8 | reb'4. r8 r4 |
    r8 do, \t { do do do} do4. r8 | mib'4. r8 r4 |
    mib1 si2 r4 | sol1 mi!2 r4 |
    mi'1 | reb2 r4 | reb2. lab4~| lab8 r lab'4 mi |
    \t {fa4 lab,8} \t {re, lab' fa'}
    \t {do'4 lab,8} \t {re, lab' fa'}
    \t {do'4 lab,8} \t {re, lab' fa'} \t {do' fa, lab,} |
    solb8 r \t {solb reb' sib'}
    \t {mi4 reb,8} \t {solb, reb' sib'}
    \t {mi4 solb,8} \t {reb4 solb8} sib4 |
    do r2 | R2.*6 do,1~ do2 r4 |
    
    %%% Ad libitum %%%
    R1 R2.*2 R1 R2.*2
    
    %%% Agitato %%%
    re,1~ re2 r | R1*2
    r2 lab''4 r | r do, r2 |
    R1. r2 r4 \t {r8 re fad} |
    sib4 r r2 | R1. R1
    r8 fad16 la do4 r2 | R1
    R1. R1*2 R1.*3 R1 R1.
    re1 re2 dod1 r2 | R1.
    
    %%% Allegro non troppo %%%
    R1 R2. R1*3 fa,4 r r2 |
    r8 la16 fa r8 la16 fa r2 |
    R2. r8 la16 sol r8 la16 sol r2 |
    R2. r8 la16 sol r8 la16 sol r2 |
    R2. r8 la16 fad r8 la16 fad r2 |
    fa2 r4 | re4 dod2 r4 | R1*2
    r8 sib sib'16 sib, r8 r sib sib'16 sib,8 sib'16 |
    sib,8[ r16 sib] r sib8 sib'16 sib,8 sib'16 sib, r sib8 sib'16 |
    r8 sib, sib'16 sib,8 sib'16 sib,8[ r16 sib] |
    r sib8 sib'16 sib,8 sib'16 sib, r8 sib |
    sib sib'16 sib, r8 sib sib'16 sib,8 sib'16 |
    sib,8[ r16 sib'] sib,8[ r16 sib'] sib,8[ r16 sib'] sib,8[ r16 sib'] |
    sib,8 sib'16 sib, do' do, reb' reb, r4\fermata r8 r16 sib' |
    sib,8[ r16 sib'] sib,8[ r16 sib'] sib,8[ r16 sib'] sib,8[ r16 sib'] |
    sib,8 do'16 do, mib' mib, fa' fa, r4\fermata r8 r16 sib |
    sib,8[ r16 sib'] sib,8[ r16 sib'] sib,8[ r16 sib'] sib,8[ r16 do'] |
    do, fa' fa, solb' solb, lab' la, re mi8 r\fermata r r16 sib |
    
    %%% Moderato %%%
    sib,8[ r16 sib] r sib8 sib'16 sib,8 r sib[ r16 sib'] |
    sib,8 do16 sib r8 sib8 r16 sib8 sib'16 sib,8 r |
    r sib r16 do sib8 r4 |
    r8 sib'16 sib, r sib' sib,8 r16 sib r8 |
    r4 r16 sib8 sib'16 sib,8[ r16 sib] r sib8 sib'16 |
    sib,8 r r2 |
    r8 sib'16 sib, r do sib8 r2 |
    \slap \ind #"slap" do,8 r r2 |
    r8 sib''16 sib, r sib8 sib'16 sib,8 sib' r sib,~ |
    sib2.~ sib2 r4 sib~ sib2.~ sib2 r8 mib,4. |
    sib'4. fa'16 do sib4~ | sib8 mib4.~ mib8 sib'16 fa mib4~ |
    mib8 r mib16 mib do' sib sib,4~ |
    sib8 lab'16 mib sib4 r16 mib do sib'~ sib mib, mib'8 |
    sib8 do,16 sib do' sib8 do,16 sib do' sib8 |
    do16 sib sib, do' sib do, do' sib | R2. R1
    R2*3 r4 r8 sol |
    
    %%% Allegro marcato %%%
    mib'8 r lab, r mib r lab r |
    mib'8 r lab, r mib r r4 R1*3 |
    dod'8 r re, r mi, r sol' r |
    dod r re, r mi, r r4 | R1*2
    r2 r4 sol8. sol16 | si2 sol8 r sol8. sol16 |
    si2 sol8 r r4 | R1 r2 r4 sol8. sol16 |
    si2 sol8 r sol8. sol16 | si2 sol8 r r4 | R1
    r2 r4 sib'8 r lab r fa r mib r fa r |
    mib r re r do r sib' r | lab r fa r mib r r4 |
    lab8 r fa r mib r r4 | r sol,8 r fad r mi r |
    
    %%% Agitato %%%
    re2. r4 r re r re |
    r \t {re'8 mi sol} sold2 |
    re4 re2 r4 | re4 r r8 do r4 | do8 r r4 r2 | R1
    r4 mib8 r r mib r4 | r8 do r4 r2 | r8 la r4 r2 | R1
    lab'8 r r4 r1 | R1*2
    fa8 sib16 fa fa8 sib16 fa fa8 sib16 fa fa8 sib16 fa |
    mi8 sib'16 mi, mi8 sib'16 mi, mi8 sib'16 mi, |
    fa8 do'16 fa, fa8 do'16 fa, | fad8 do'16 fad, fad8 do'16 fad, |
    sol8 dod16 sol sol8 re'16 sol, | sold8 re'16 si sol'!8 r | R2 R1*4
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

InterludeUnFluteDeux = { \FluteDeux
  \relative {
    R1. R1*3 R1. R1 R1.
    mi4 r mi r mi r | mi r sold2~ sold4 r r2 |
    sold4. r8 sold4. r8 sold4. r8 |
    sold4. r8 sold4. r8 sold4. r8 |
    sold4. r8 sold4. r8 mi2 r4 | R2 |
    r4 \ttt {r16 sold la si mi re}
    \ttt {fa re mi fa sib sol} |
    do1~ do2 r8 sib4 sol8 |
    do1 r4 sol | sib1~ sib2 r |
    sol1 r4 \tt {mi16 fa sol do sib} |
    sol4 r8 sol fad'2 | re2. |
    dod2.~ dod4 r2 R2.
    fad,,16 sol fad re do re fad re do re fad sol |
    fad2.~ | fad4 r2 | R2.*10
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
    
    R2. R1 R2. R1 R2. R1 R2. R1 R2. r16 fa fa fa si?8 r |
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

InterludeTroisFluteDeux = { \FluteDeux
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    dod2. r4 dod2 r4 |
    do'4. fa8 mib solb |
    do,4 r8 fad,32 la do fa |
    sol2 fa8 sib sol4. r8 |
    do2 mib4 lab | R2*4
  }
}

ActeUnSceneQuatreFluteDeux = { \FluteDeux
  \relative {
    \partial 4 r4 la'' la fa8 mi4 r16 fad sol la |
    sib do sib la sol la sol fa mi re dod mi la,8 r |
    la'4 la fa8 fa4 r r8 re r mi fa4 r2 | R2*2
    R2-\fermataMarkup
    
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
    la8 r r4 R2*2
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

EntracteFluteDeux = { \FluteDeux
  \relative {
    R2*9
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
    
    %%% Entrée de la Soprano Deux %%%
    R2.*2 R1 R2. \t { r2 mi,1} do2.~ do4 r re2.~re2 r |
    
    %%% Andantino %%%
    r2 re~ re2. r4 R2. | r2 re4~ re2.~ re4 r re~ re r |
    re r2 r re4~ re2.~ re4 r2 R2. | R1 R2. R2
    dod2 r4 r re sold2~ sold4 r2 R1 R2. R1
    do2.~ do2. r4 | R2. R1 re,2 r4 R1 R2.
    r2 r4 re~ re2.~ re2. r4 |
    mi2.~ mi2. r4 | r re2 mi2. r4 |
    re'4. mi4. si4 re la r |
    
    %%% Entrée de la Contralto %%%
    sold8 la sold mi re mi | sold la sold mi re2~ re2.~ re4 r r2 |
    R2. R1 R2. R1 r2 do4~ do do2 r4 | r2 do4~ |
    do2. r4 | r4 re2~ re4 r re r | r do2~ do4 r r2 |
    do''8 r r2 | r r8 do r8 r16 do, | do'8 r r2 | R1 r4 r8 do, r4 |
    do,4 re8 fa4 re8~ | re2 r4 |
    R2.*5 r4 do2~ do r4 | R1 R2. |
    R1 lab'4 solb fa mib fa8 mib fa solb lab4 | mib2.~ mib4 r r2 |
    R2. r4 do2 r4 R2. R1 |
    la'4 sol fa mi fa8 mi fa sol la4 | mi2.~ mi4 r | re2. r4 |
    R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisFluteDeux = { \FluteDeux
  \relative {
    R1 R2. R2
    
    %%% Presto agitato %%%
    sol'2. r2 |
    sol8 mi sol mi sol mi sol mi sol mi | sol2. r2 |
    sol8 mi sol mi sol mi sol mi sol lab| sol2. r2 |
    sol8 mi sol mi sol mi sol mi sol lab| sol mib reb mib sol4 r2 |
    sol8 mi sol mi sol mi sol mi sol lab| sol2. r2 |
    sol8 mi?sol mi sol mi sol mi sol mi | sol4 r sol8 lab sol mib reb mib |
    sol8 mi sol mi sol mi sol mi sol lab| sol2. r2 |
    mi8 sol mi sol mi sol mi sol mi sol |
    mi8 sol mi sol mi sol mi sol mi sol |
    mi4 r1 | R1*5/4
    r2 r4 dod'4 sol8 la | dod re dod4 r r2 | R1*5/4
    dod,8 re dod re dod re dod re dod4 | re4 r1 |
    
    R1*5/4*6
    red1*5/4~ red2. r2 | R1*5/4*3
    mi1*5/4~ mi2. r2 | R1*5/4*9
    
    %%% Boum %%%
    R1*5/4-\fermataMarkup
  }
}

ActeDeuxSceneDeuxFluteDeux = { \FluteDeux
  \relative {
    R1.*4 la'4 sol fa mi fa8 mi fa sol | la4 mi r1 | R1*2 la4 sol fa |
    mi fa8 mi fa sol la4 mi r | R2.*2 | la4 sol fa mi fa8 mi fa sol la1 r2 |
    R1. la4 mi r2 | R1 la4 sol fa mi fa8 mi fa sol la4 mi r8 |
    r4 r8 sold~ sold2~ sold4 r8 sold~ sold2~ sold4 r8 si~ si2~ |
    si4 r8 si~ si4 r | mib16 mib fa8 sib16 sib dob8 mib,8 fa mib fa |
    mib fa mib4 fa16 fa mib8 r4 |
    R2. R1. R1 | la,4. mi8~ mi4 r4 | R2.*2 r2 r8 la~la mi r4 |
    R2.*2 r2 r8 re'~ re mi r4 | R4. re,1~ re2. r4 |
    r8 re' r4 r8 re'16 re, r4 | r4 r8 r16 mi re8 r r4 |
    r2 r4 re16 re re8 | mib4 r r mi16 mi mi8 |
    mib4 r r mi16 mi mi8 | mib4 r r mi16 mi mi8 | mib1~ mib2 r4 |
    
    la,4 sol fa mi fa8 mi fa sol la4 mi r2 |
    la4 sol fa mi fa8 mi fa sol | la4 mi~ mi1~ mi2 r4 | la4 mi r2 |
    \slap { \ind #"slap" la4 } r2 | r8 sol~sol2. fa2.~ fa8 mi~ mi2. |
    fa4 mi fa sol la2.~ la2 r4 |
    R1 la2.~ la1~ la2 r4 | R1 sold2.~ sold1 la2 r4 |
    R1 R2. R1 R2. R1 r2 r8 r16 la'32 mi' |
    la8 r r4 | r r8 la,16 mi' | la8 r r4 |
    r2 r8 la,16 mi' | la8 r r4 r2 | R1*2
    
    sold,8 sold la r4 | sold,4 r8 la la | sold4 sold8 la r |
    re4 r8 mib, mib | re4 sold8 r4 | re4 r r8 | R2*5/4
    sold'8 sold la r4 | R2*5/4 re,,4 r4 r8 | R2*5/4*4
    R1*3 r4 \slap { mi sol} r r \slap {dod, mi} r | R1*4
    fa'4 r2 R2 R1*2 la,!4 sol fa mi fa8 mi fa sol fa2.~ fa2 r4 | R2.*3
    R2*2 R2.*2 R2*2
    lab'4 reb dob sib dob r | r r8 \slap { sold, la} r r4 |
    r8 \slap {sold la} r r \slap {sold la fad |
    sol} r r4 | R2*4 r4 fa8 r | R2
    r4 r8 \slap {sold la} r r4 | R2*7
    R2.*2 la'4 sol fa mi fa8 mi fa sol | la4 mi r | R2. la,4 mi r |
    R2.*9
  }
}
