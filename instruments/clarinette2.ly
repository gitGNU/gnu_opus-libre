%------------------------------------------------------------------%
% Opéra Libre -- clarinette2.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

ClarinetteDeux = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Clarinette 2  "}
  \set Staff.shortInstrumentName = "Cl. 2  "
  \set Staff.midiInstrument = "clarinet"
  \clef treble
}

PrologueClarinetteDeux = { \ClarinetteDeux
  \relative {
    
    %%% Introduction %%%
    \partial 4 r4 R2.*3 R1 | 
    mi,2~ mi4 r | mi2 r4 |
    mi2~ mi mi2.~ mi4 r R2 | 
    \tt {lab16 mi sol lab sol} si2~|
    si4 r | R2 \tt {sol16 mi fad la sib} do2 ~ | 
    do4 r | r r8 \t {la16 sol re'}|
    mi2 r4 | r4 re r sol | mi'2 r4 | R2 r2 mi,8 mi~|
    mi2 | re2.~ re2 | reb4 r \t {la4 lab8~} |
    \t {lab8 solb4} mib8 r | fa2~ fa4 r2 |
    
    %%% Tempo giusto %%%
    re8 r r4 | R2*2
    re4 mib fa lab fa lab8 r |
    \t {dod4 mi fad} \t {sol la do} |
    re4 r2 |
    r8 mi,, sol sib do mib | re4 r2 |
    r8 mi, dod mi dod mi |
    r mi dod mi sol la |
    r la sol la do mib |
    r sib reb mi sol lab | la4 do mib |
    re4 r8 si'4.~ si4 r8 re,4. | dod2. r4
    R2*2 R2-\fermataMarkup
    
    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*11 R4.*5
    sol,8 r4 | R4.*4
    fab''8 mib reb mib reb sib sol r4 |
    sol,8 r4 | R4.
    r8 mib lab mi' lab, mib |
    r mib lab mi' lab, mib |
    r solb si re si solb |
    r solb si re si solb |
    r fa lab do lab fa |
    r fa sib reb solb la |
    sib4.~ sib8 r sib, reb mib solb mib solb lab |
    la4.~ la8 r re, fa sol lab sib reb mib |
    mi4.~ mi8 r lab, sib si dod mi la mib |
    
    %%% A tempo %%%
    re8 r4 | r8 \t {sib,16 mib lab} \t {do fa sol} |
    re'8 r4 | r8 \t {mib,,16 lab reb} \t {fa sol do} |
    r8 fa,, sol | lab4.~ lab~ lab4 r8 |
    sol16 sol sol lab, r8 | sol'16 sol sol lab, r8 |
    sol'16 sol sol lab, r8 | sol'16 sol sol lab, r8 |
    mi''16 mi mi fa, r8 | mi'16 mi mi fa, r8 |
    mi'16 mi mi fa, r8 | mi'16 mi mi fa, r8 |
    mi'16 mi mi fa, r8 | mi'16 mi mi fa, r8 |
    fa'16 fa fa mi, r8 | fa'16 fa fa mi, r8 |
    re'16 re re reb, r8 | re'16 re re reb, r8 |
    lab''16 lab lab sol, r8 | reb'16 reb reb sib, r8 |
    fa'16 fa fa solb, r8 | reb'16 reb reb r r8 |
    R4.*8
    re,8 mi fa sol lab | mi''2 mib4 | lab,2 mib4 | reb4 r2 |
    
    %%% Adagio %%%
    R1*4 R1.*2 R1*3 R1.*2 R1*2 sol,2 r4 |
    
    %%% Valse %%%
    si'2 r4 | r sol'2 | r4 reb2 | r4 sol, sol |
    r fa fa | r re re | r re r do | R2. R2 R2.*2
    R1 r2 lab'4 lab | r solb solb | r fa fa |
    r reb reb | r do do | r sib sib | r fa r mi |
    r4 la8 fad'4 la,8 fad'4 | re'4. fad,8 re'4 |
    
    %%% Vivo al fine %%%
    re,,4 r | R2*3
    r4 r8 fad | sol r r4 |
    r8 la la do re r r4 | R2*22
    r4 mi,8 r |
  }
}

OuvertureClarinetteDeux = { \ClarinetteDeux
  \relative {
    R2. \tttt {mi16 do' reb la sib solb' sol,}
    \t {mib'8 sol si} \tt {do16 la lab mi mib}
    \tt {lab, la do fa, reb'} \tt {do reb lab' la, fa'}
    \tt {mi fa do' reb, mi} | sib4
  }
}

ActeUnSceneUnBisClarinetteDeux = { \ClarinetteDeux
  \relative {
    R2.*4
    \ttt {fa,16 mi re dod re mi} fa8 r
    \ttt {fa16  mi re dod re mi}|fa8 r
    \ttt {lab16 sol lab sib si dod} re8 r |
    \ttt {sol16 lab sol lab sol sib}
    \ttt {si dod si dod si mi}
    \ttt {fad sol fad sol la do} |
    
    %%% Piu vivo %%%
    re4 r r2 |
    \tt {r16 mi,,, fad sold la } \tt {si do re fa la} \tt {do re mib fa lab}|
    re4 r r2 |
    \tt {r16 mi,,, sold sib dod} \tt {mib sol sib do mi} \tt {fad sol la si do}|
    re4 re8 la4 re8 | lab4. re fad, re' |
    mi,4 mi8 mi4 mi8 |
    R2. fa,,2.~fa4. r8\fermata r4 |
    R2. fa2.~ fa2~ fa8 r\fermata r4 |
    R1 R2
    
    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 lab' | sol2 r4 lab | sol2 r4 R2
    sib2 r |
    R2.*2 R2*2 
    r2 r8 fa, | sol'4 r8 fa, | sol'2 |
    r8 re r4 | r8 mi do r r4 |
    r2 r8 reb \t {sol16 lab sib} reb8 |
    R2. R2*3 R2.*3
    
    %%% Adagio %%%
    R1*21
    r4 mi mi8 re fad4 |
    fad8 re mi4 mi8 re fad4 |
    fad8 re mi4 mi8 re fad4 |
    fad8 re mi4 mi8 re fad4 |
    mi  mi8 fad re4 re8 fad |
    mi4 mi8 fad r2 |
    r fad4 fad8 re | mi4 r r2 |
    r4 fad fad mi |
    R1*2 R1-\fermataMarkup |
    R2*4
  }
}

ActeUnSceneDeuxClarinetteDeux = { \ClarinetteDeux
  \relative {
    %%% Air de la Soprano2 %%%
    
    R2.*2 R1*2  R2.*2 R1*2 R2.*2  R1*2  R2.*2 R1*2  R2.*2
    R1 | re,8 fa sold si sold si sold fad |
    re r r2 | re8 fad sold4 r |
    R1*2 |
    dod,8 fad sold si sold fad | dod4 r8 sold' fad re |
    dod1~ | dod2 r4 sold''8 la |
    sold mi re si sold4 | R2. |
    dod,1~ | dod2 r4 mi8 fa |
    la si re fa re4 | r dod, r |
    mi1~ | mi2. r4 | R2.*2 |
    lab'1~| lab2. r4 | R2.*2 | lab1~| lab2. r4 |
    R2.*2 | r4 sold,8 re' sold, re dod re | 
    sold re' sold, re dod re sold4 |
    dod,8 re fad2~ | fad2. \repeat unfold 8 {R1*2 R2.*2} |
    R1 r2 la'2\fermata |
    
    %%% Récitatif %%%
    
    R2.*2 R1 R2.*3 R1 R2.*3 
    \repeat tremolo 12 {si,32 do} |
    \repeat tremolo 12 {sol'32 lab}| 
    sol8 r r2 R2 R2. R1*2 R2.*5 R1 |
    
    %%% Duo %%%
    
    \repeat unfold 18 re,8 r
    \repeat unfold 13 re r re
    \repeat unfold 8  reb
    \repeat unfold 6  mi
    \repeat unfold 4  sol r
    \repeat unfold 3  sol
    \repeat unfold 8  fa r4 | r8
    \repeat unfold 3  fa
    \repeat unfold 10 lab r
    \repeat unfold 13 lab r
    \repeat unfold 3  lab
    \repeat unfold 3  {dod dod mi mi} sold r
    \repeat unfold 2  {lad lad sold sold} do2.~ do~ do4 r2 
    r2 r8 sib4. |
    
    %%% Piu vivo %%%
    sol,4 r2 | R1 R2.*2 R1
    r16 re''re re sol4 fa | sol8 fad,~ fad4 r2 |
    r16 re're re sol4 fa | fa8  fad,~ fad4 r2 |
    r16 mi'mi mi sold4 fad la8  sold~ sold4 r | R2.
    r16 mi mi mi la4 sold| la8  sold~ sold4 r |
    r16 la la la la4 sol | la8  sold~ sold4 r |
    R2.*2 r16 re32 mi re8 r2 |
    R2.*2 r4 r16 mi32 re r8 r4 |
    r r8 re r4 |
    
    %%% Poco allargando %%%
    \t {sib,sib sib}
    \t {sib sib sib}
    \t {sib sib sib}
    \t {si8 r si4 si}
    \t {dod dod dod}
    \t {fad fad fad}
    
    %%% Tempo giusto subito %%%
    re r r2 |
    r4 re,8 re r2 |
    r4 reb8 reb r2|
    r4 mib8 mib r2|
    r8 sol sol4 r2|
    R2. re'2. fa'4 re,2. fa'4~| fa8 r r2 |
    R2 re,,2~ re4 fad'| re,2. fad'8 r r2 |
    r8 la re la
    r sol re'sol,
    r la re la
    r sol re' la
    r la re la
    r mi'la mi
    r re sol mi r re | fa r r2 |
    
    %%% Largo assai %%%
    
    %%TODO: doigté alternatif pour le sib?
    r4 sib,2. | la4. r8 la4 | lab4. r8 lab4 sol4. r8 r4 | r sol |
    solb2.~ solb2. r4 | r2 fa4 mi mib r la, r re, r r2 |
  }
}

ActeUnSceneTroisClarinetteDeux = { \ClarinetteDeux
  \relative {
    R2.*4 | solb'8 mib4 solb8 mib4 r4 r8 mib4 do8 |
    sib2.~sib8 r r2 |
    R2.*8 r2 \t {mib'8 mib mib} la4 solb lab8 mib~ mib4 r2 |
    R2.*5
    
    %%% Lamento %%%
    R1.*6 R1*5/4
    lab,,2 fa4 r2 |
    sol2 mi4 r2 |
    lab2 fa4 r2 |
    lab2 la4 r2 |
    re2 si4 r |
    reb2 sib4 r |
    re2 si4 r |
    lab2 solb'4 r |
    sol2 sol4~ sol8 reb,~ reb4 mi' | mib'4. r8 r4 |
    R2*2
    
    %%% Tempo I %%%
    R2.*8
    mib,,2. solb reb8 r r2 |
    R2.*3
    R1.*4 si'2. r4 r2 | r2 r4 mib2.~ mib~ mib8 r r4 |
    lab,1~ lab4 r2 r4 sib |
  }
}

ActeUnSceneTroisBisClarinetteDeux = { \ClarinetteDeux
  \relative {
    R1*4 r2 do~do1 | R1 r2 la~la r | R1*11 r2 r4
    dod16 mi8 dod16 |
    sol'8 r\tt {fa,16 lab sib reb mi}
    sol8 r \tt {fa,16 lab sib reb mi}
    sol8 r \tt {fa,16 lab sib reb mi}
    sol8 r \tt {fa,16 lab sib reb mi}
    sol8 r \tt {fa,16 lab sib reb mi}
    sol8 r \tt {fa,16 lab sib reb mi} |
    fad4 r r2 | R1*10 R2.
    r4 la,2 la4 do2 la~la2. r4 |
    r2 \tt {fad16 sol la do re} r4 |
    r2 r4 \tt {fad,16 sol la do re}|
    r4 \tt {fad,16 sol la do re}
    r4 \tt {fad,16 sol la do re}
    mib8 r \tt {fad,16 sol la do re}
    mib8 r \tt {fad,16 sol la do re}
    mib8 r \tt {fad,16 sol la do re}
    mib8 r \tt {fad,16 sol la do re}
    mib8 r \tt {fad,16 sol la do re}
    mib8 r \tt {fad,16 sol la do re}
    fad2. r4 | R1*6
    r4 mib, r2 | r4 mib r2 | mib4 r mib r | R1*7
    fad'2 re~ re4 r r2 | R1*5
    r2 lab' reb1\fermata
  }
}

ActeUnSceneTroisTerClarinetteDeux = { \ClarinetteDeux
  \relative {
    r4 r16 sol' sol sol do2
    r4 r16 sol sol sol do8 sol16 sol do2 |
    r4 r8 sol16 sol do8 sol16 sol do8. sol16 |
    sol sol sol sol r8 do4 sold16 la
    re,8 r r2 | R2.*3
    re8 dod fa, fad la sib re, dod fa fad re dod |
    mib' re fad, sol si lad sol fad |
    mi' red si do fa mi do dod |
    re r r4 r2 |
    R1*3 R2.*2
    
    %%% Poco meno %%%
    la4 sol fa mi2.~ mi2 r4 |
    R2. mib2.~ mib2 r4 R2.
    re2.~ re2 r4 |
    r8 si''' sib sol fad mib re'2 r4 |
    r8 si sib fad re si sib'2 r4 |
    r8 sol fad re si sib | re4 r2 |
    \t {r8 do la~} \t {la sold fa} \t {do la mi~} mi2 r4 |
    
    r4 sol2 sol fad4~ fad fad r |
    r  sol2 sol fad4~ fad fad r |
    r  sib2 sib si4~  si  si  r |
    r  sib2 sib si4~  si  si  r |
    r sib'2 sib sib4~ sib2 r4 |
    r sib2 re fad4~ fad r2 |
    R2.*3
    r4 r16 lab mib la, mi sib la'8 r4 |
    r fa,2 fa fa4~ fa2 r4 |
    r fa2 r4 sib4. mi8~ mi4 la2 |
    r4 mib2 mib re4~ re r2 |
    r4 mib2 mib re4~ re r2 |
    r4 sol2 sol fad4~ fad fad r |
    r  sol, sol' sib2 si4~si mib sol |
    r8 mib re si sib sol fad' mib re si re mib |
    re' fad, sol,4 r8 re mib,2 r4 | R2.*15
  }
}

InterludeTroisClarinetteDeux = { \ClarinetteDeux
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    la'2. r4 la2 r4 |
    la4. do8 sib reb la4 r |
    mi'2 re8 fa mi4. r8 |
    sib8 sol sib si re si re mib | R2*4
  }
}

ActeUnSceneQuatreClarinetteDeux = { \ClarinetteDeux
  \relative {
    \partial 4 r4 re16 mi fa sol la8 la, re la'4 r |
    R2 r4 r8 la, re16 mi fa sol la8 la, sib fa'4 r16
    re re re sol4 mi re r2 | R2*2
    R2-\fermataMarkup
    
    %%% Allegretto comodo %%%
    R1 R2. R1*2 R1. \t {fad4 sol fad} \t {sol fad sol} | la2. r4 |
    \t {fad4 sol fad} \t {sol fad sol} \t {fad sol fad~}|
    \t {fad sol fad} sol r | \t {mib,2 mib4~} mib2 |
    
    %%% Agitato %%%
    sol8 r r2 | R2.*5
    r8 sol sol sol do4~| do2.~ do8 r r2 |
    re4 r4 r16 la la la | re4 do re8 la~ | la4 r r16 si si si |
    mi4 re mi8 si~ | si4 r2 |
    re,2.~ re2 r4 | re2. re4 re re |
    re16 mi sol la do re mi sol la do re mi |
    sol8 r r4 sol32 sol16.~sol16 sol |
    sol8 r r4 sol8 r sol8.. sol32 sol8 r r4 |
    lab8 r r4 lab32 lab16. r8 lab8.. lab32 lab8 r r4 |
    la!8 r r la r4 | re,2 mi4 re2 mi4 |
    re8 r re,16 mi re mi re mi re mi re mi re mi |
    \t {re8 mi re} \t {mi re mi} re8 r |
    re16 mi re mi re mi re mi re mi re mi re mi re mi |
    \t {re8 mi re} \t {mi re mi} re8 r |
    re16 mi re mi re8 r | re16 mi re mi re mi re mi re8 r |
    mib16 fa mib fa mib8 r | mib16 fa mib fa mib fa mib fa mib8 r |
    \t {mi8 fad mi} \t {fad mi fad} | \t {mi fad mi} \t {fad mi fad} mi8 r |
    
    %%% Placando assai %%%
    r2 sol~ sol2. r4 |
    r2 sol~ sol2. r4 |
    sol,2 solb fa mi2.~ mi r4 |
    
    %%% Andante a piacere %%%
    r2 mib~ mib mi4 r |
    r2 mib~ mib mi4 r |
    r2 mib~ mib2. r4 |
    r2 mib~ mib2. r4 |
    r2 mib' mi4 fa8 mi4.
    re'4 lab mib2 |
    si4. reb
    R1 r2 si~ si4 si la2 si2. r4 |
    R1*3 R2*3 R2.*6
    r8 mi~ \t {mi mi mi} \t {fa fa fa} \t {sol sol sol} |
    r  sib~ \t {sib sib sib} \t {do do do} \t {reb reb reb} |
    \t {mib mib mib} \t {solb solb solb} \t {lab lab lab} r4 |
    R1 R2. R1 R2. R1 R2. R1 R2.
    sib,2 sib4 sib sib4. sib8~sib4 r |
    sib2 r4 sib2 r4 si4. r8 si4 re r re8. re16 re8 re~|
    re4 re r8 re4 sol,8 |

    si2.~si8 r4 | re,,8. reb16~reb8 mi~mi r |
    r8 \ttt {reb16 solb lab si re mi} |
    reb'2~ reb8 r4 | re,,8. reb16~reb8 mi~ |
    mi r fa16 sol do fa | sib2~sib8 r4 |
    fa'8 r r \t {r16 re mi} re8 r r4 |
    r la,~la4.~la2 reb' |
    R2 R4. R2. re4 r r2 |
    re,1~re2 do~do sib la2. r4 |
    r2 la4. mib'8~| mib4 solb2 re'4~| re mi si do, |
    re, r r2 | R1*2 re'8 re re re re re re re |
    R2 re8 re re re re re R2. re8 re re re R1

    %%% Piu lento %%%
    R2.*3 sib'8 solb fa dob sib solb fa solb sib dob fa solb |
    sib2 r4 | R2.*3
    sib8 solb fa re do sib sol fad re fad sol sib do re fa solb sib4~|
    sib2 r4 R2.*2 sib8 solb fa reb do lab |
    sol mib re mib sol lab do reb fa solb sib4~ | sib2 r4 | R2.*2

    R1. R1 R1. R1 R1. r2 sib,4 r | R1.
    solb'8 lab4 solb8 la2~la1.~la2. r4 |
    R1.*5 r2 mi,4 r | R1. R1 R1. mi'4 r r2 |
    R1.*5 r2 sib4 r | r2 r4 si do r r2 reb4 r |
  }
}

EntracteClarinetteDeux = { \ClarinetteDeux
  \relative {
    R2*9
  }
}

ActeDeuxSceneUnClarinetteDeux = { \ClarinetteDeux
  \relative {
    R2.*3 | re''8 sib~ sib2~ | sib4 r | 
    si!8 sol~ sol2~ | sol2 r4 | r sold | 
    mi2.~ | mi2.~ | mi2.~ | mi4 r |
    R2. R2 R2.*2 r4 r8 la, | 
    mi2.~ | mi2.~ | mi2.~ | mi4 r |
    R2. R2 R2.*2 R2 | R2. mi'2.~| mi2.~| mi4 r |
    
    %%% Entrée de la Soprano Deux %%%
    R2.*2 R1 R2. sib,1 la2.~ la4 r | lab2.~ lab2 r |
    
    %%% Andantino %%%
    R1*2 R2.*3 r2 solb'4 lab r |
    si si, r R2.*4 R1 R2. R2
    R2. R1 R2. R1 R2. R1
    sold''8 la sold mi re mi sold2. r4 |
    R2. R1 R2. R1 R2.
    fad,,2. r4 | fa2.~ fa2. r4 | R2. fad2. r4 fa2.~ fa2. r4 |
    sold''8 la re la sold mi re la' sold mi re mi re si |
    
    %%% Entrée de la Contralto %%%
    la2.~ la2. r4 R2. R1
    R2. R1 R2. R1 r2 la,4~ la4 la2 r4 R2. |
    r4 la2 r4 r la2~ la4 r la r r la2~ la4 r r2 |
    fad8 r r2 R1 R2. R1 R2. do'2 re4 mib8 lab sib4 r |
    R2.*5
    r4 la'8 sib la fa mib fa la2~ la4 r r2 | r2 la4~ |
    la4. lab4 si8 solb4 | lab mib r re la2 r4 |
    r4 la2 r4 lab2. r4 la2 r4 fa2 r4 | R2. R1
    R2. r2 r4 fad mi re dod | re8 dod re mi fad2. r4 |
    R2. R1 R2. R1 mi4 reb r mi reb r2 |
  }
}

ActeDeuxSceneUnBisClarinetteDeux = { \ClarinetteDeux
  \relative {
    R1 R2. R2
    
    %%% Presto agitato %%%
    R1*5/4*5
    sol''1*5/4~ sol~ sol2. r2 |
    R1*5/4*11
    la,,2 sol mi4 | dod2. r2 |
    re4 r2 re4 r | re r re r2 | re4 r r8 re' fa sol lab si |
    do4 r1 | R1*5/4*4
    r2 r8 re,,~ re2 | fa2~ fa8 sol~ sol2 | lab2. r2 | R1*5/4*6
    fad4 r2 fad4 r | fad r fad r2 | fad4 r r8 fad' sol la do re |
    mib4 r1 | R1*5/4 fad,,4 r1 | R1*5/4-\fermataMarkup
    
    %%% Boum %%%
  }
}

ActeDeuxSceneDeuxClarinetteDeux = { \ClarinetteDeux
  \relative {
    R1.*6 la'4 mi r2 | R1 R2.
    reb4 reb8 reb r4 | mi?8 mi r4 r8 mi |
    r16 re re re r8 mi r4 | R2. la1.~ la4 sol fa mi fa8 mi fa sol |
    la4 mi r1 | fa4 la, r2 | R1 R2.
    reb4 reb8 reb r mi fa4 | reb4 r8 |
    mi1~ mi2. r4 | fa1~ fa4 r r mib'8 mib |
    sib'2 r8 sib16 sib dob8 r | sib2. r4 |
    
    R2. R1. do,,2. r4 | la2. r4 |
    la'4 sol fa mi fa8 mi fa sol |
    la4 mi r R2 
    la4 sol fa mi fa8 mi fa sol |
    la4 mi r8 sib'~ sib mi, r4 |
    R4. mi4 r r mi8 mi mi4 r r mi8 mi |
    mi4 r r mi8 mi | mi4 r r fa8 fa | sol4 r r la16 la la8 |
    lab4 r r sib16 sib la!8 |
    lab4 r r sib16 sib la!8 |
    lab4 r r sib16 sib lab8 | lab1~ lab2 r4 |
    R1. R1 R1.
    la!4 sol fa mi fa8 mi fa sol la2 r4 |
    fa4 do r2 |
    
    R2. R1 R2. R1 R2. R1 mib4 reb dob |
    sib1~ sib2.~ sib1~ sib4 r2 | R1 R2. R1
    R2. R1 R2. R1 R2. R1 r2 r8 r16 \t {mi'32 fa sol} |
    la8 r r4 | r r8 \t {mi16 fa sol} | la8 r r4 |
    r2 r8 \t {mi16 fa sol} | la8 r r4 r2 | R1*2
    
    sold8 sold la r4 | la4 r8 sold sold |
    la la,, la sold r | la'' sold,, sold la r |
    sold' sold la r4 | re,4 r r8 | R2*5/4
    sold'8 sold la r4 | r sold,,8 sold la |
    re4 r r8 | R2*5/4*4 R1*2
    reb,4 r r2 | R1*6
    si''4 r2 | R2 r2 r4 solb16 la8 solb16 reb'1 |
    R2.*2 do,2.~ do2 r4 | R2.*3
    
    R2*2 R2. la''4 sol fa | mi2~ mi4 r |
    la mi~ mi fa | sol4 r |
    sib,,16 sib sib sib sib sib sib sib |
    sib sib sib sib sib sib sib sib |
    sib sib sib sib sib sib r sib |
    sib sib sib sib sib sib sib sib |
    lab8 r r4 | R2*4
    r4 mi8 r | R2
    sib'16 sib sib sib sib sib sib sib |
    sib sib sib sib mi mi mi mi | re8 r r4 | R2*6
    
    la'2.~ la~ la~ la~ la2 r4 | R2.*11
  }
}
