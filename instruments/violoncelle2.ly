%------------------------------------------------------------------%
% Opéra Libre -- violoncelle2.ly                                   %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

VioloncelleDeux = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Violoncelle 2  "}
  \set Staff.shortInstrumentName = "Vlc. 2  "
  \set Staff.midiInstrument = "cello"
  \clef bass
}

PrologueVioloncelleDeux = { \VioloncelleDeux
  \relative {
    
    %%% Introduction %%%
    \partial 4 r4 R2.*2 \clef treble sib''2.\upbow ~ sib1\glissando 
    mi,,2\downbow \clef bass |r8 mi,, \t {mi mi mi} mi2.~ | mi2 r8 mi
    \t {mi8 mi mi} mi2.~mi2~mi~mi2.~mi2~mi~ mi2.~mi4 mi~mi8 mi 
    \t {re re re}|
    dod4 r2 | \t { \pizz dod4 re mi} \t {sol sib do} |  
    \arco dod2 r8 sol r dod r sol | dod4 dod sol8 dod~|
    dod4 r | sol dod sib8 dod~| dod sol dod4 | dod sol8 dod r sib | 
    r dod4 sol8 | sib2~ sib2 r4 |
    
    %%% Tempo giusto %%%
    re,8 re' re re, re re' re re, |
    re re' re' re, re, re mib re | fa re lab' fa |
    sib lab si dod | dod, r r4 | R2
    re4 re'8 re re re | lab2 r4 |
    re,4 r8 re' re re | fad,2. mib do |
    sib'2 sol4~ sol mi2 | re2.~ re4 r8 sol' mi re |
    dod1~ dod4 r R2 R2-\fermataMarkup |
    
    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    R2*2 lab4 si fa2 mib2 fad4 do2.~ do2 r4 |
    R2.*2 r2 lab'4 sol'2. R2.
    lab4 sol,\leftpizz r |
    lab' sol,\leftpizz r | R2. R4.
    
    %%% Andantino %%%
    \pizz sol8 r4 | sol8 r4 | R4.*2
    sol8 r4 | sol8 r4 |
    sol8 r4 | sol8 r4 |
    sol'8 r4 \clef treble | red''8 r4 \clef bass |
    r8 sol,, sol, | R4.*14
    \arco solb8 mib reb do4.~ do~ do4 r8 |
    solb'8 mib reb | do4.~ do~ do4 r8 |
    solb'8 mib reb | do4.~ do4 r8 |
    fad4 mib8~ mib dod4 |
    
    %%% A tempo %%%
    re8 r4 | sold8 si dod |
    re8 r4 | sold,8 si dod re fa sol |
    lab4 r8 | lab,4 fa8~ fa mib4 |
    re4.~ re~ re4 r8 |
    mib4 re8 fa4.~ fa~ fa4 r8 |
    fa'4. re do si4.~ si4 r8 |
    sib4.~ sib~ sib~ sib4 r8 | R4.
    si8 sib lab |
    fa4.:32~ fa4.:32
    fa16:32 solb: lab: si: dod: re: |
    mi: re: dod: si: lab: solb: |
    fa: lab: sib: si: dod: mi:  |
    fad: mi: dod: si: sib: lab: |
    \t {fad16 fad fad} \t {sold sold sold} \t {la la la} |
    si8 r4 | fa16 fa fa fa fa fad fad fad fad fad |
    re4 mib re | fa8. lab fa8 mib re | do2 r4 |
    
    %%% Adagio %%%
    R1*2 r2 r8 mi \t {mi mi mi} |
    mi1~ mi1. \repeat tremolo 16 {mi32 fa} mi4 r |
    R1 r2 r4 \pizz la |
    \arco mi1~ mi1.~ \repeat tremolo 16 {mi32 fad} mi4 r |
    R1 r2 r8 sold \t {sold sold sold} |
    sib2.
    
    %%% Valse %%%
    sol2.~ sol4 r dod~ | dod2 r4 |
    sol2 r4 | dod2 r4 | sol2 r4 |
    sib4 r mi, r | sol2.~ sol4 r \clef tenor |
    r8 sold'' fa r r fa mib r r mib re r |
    mi4 \ttt {red16 mi red mi red mi} red4 r \clef bass |
    r4 do,,2 r4 | fad2 r4 | do2 r4 | fad2 r4 |
    do2 r4 | fad2 r4 | mi r sol r |
    <do, si'>2 <do si'>4 <do si'>8 <do si'>~ |
    <do si'> <do si'> <do si' mi la>4 <do si' mi la> |
    
    %%% Vivo al fine %%%
    <re re'>8 re' <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <re mib> <re mib> |
    <re mi> <re mi> <re mi> <re mi> |
    <re sol> <re sol> <re sol> <re sol> |
    <re la'> re re re |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> r4 |
    <re mib>8 <re mib> r4 |
    re8 re r4 re8 re r4 | re8 r r4 \pizz re r |
    re, r | R2*7 r4 mi
  }
}

ActeUnSceneUnVioloncelleDeux = { \VioloncelleDeux
  \relative {
    do,,2 do'\CaV fad,2 r4 |
    do2 do'\CaV fad,4 fad2 |
    <do sol'>2~ <do sol'> fad4. fad8~ fad4 |
    <do sol'>2~ <do sol'> fad2 fad4 |
    <do do'>2 do' fad,8 fad~ fad2 |
    <do do'>2 <do do'> fad2~ fad8 fad |
    fa2 do'16 fa, do' la'~ la mib' \t {la, do, fa,} |
    fa4 do'16 fa, do' la' mib' la, do, fa, |
    do' fa, do' la'~ la mi'! \t {la, do, fa,} fa2 |
    do'16 fa, do' la' sol' mi \t {la, do, fa,} \t {fa8 fa fa} |
    lab2 mi'16 lab, mi' la do8 \t {la16 mi lab,} |
    lab4 mi'16 lab, mi' la do la mi lab, |
    reb, lab' mi' la \ttt {do la mi lab, mi' la}
    do la mi lab, reb, lab' \t {mi' la do} |
    \t {lab,8 mi' lab,} reb,4 reb |
    do16 sol' mi' sib' \t {re8 sib mi,}
    \t {sol, mi' sib'} re16 sib mi, sol, |
    do, sol' mi' sib' \t {re8 sib mi,} \t {sol, do, sol'} |
    \ttt {do,16 sol' mi' sib' mi, sol,}
    \ttt {do, sol' mi' sib' mi, sol,}
    \ttt {do, sol' mi' sib' mi, sol,}
    \ttt {do, sol' mi' sib' mi, sol,} |
    \ttt {do, sol' mi' sib' mi, sol,}
    \ttt {do, sol' mi' sib' mi, sol,}
    \ttt {do, sol' mi' sib' mi, sol,} |
    do,4 do do | \t {mib8 fad sold} \t {la si re} \t {mi fa sol} |
    <do,, sol' re' sib'>4 do do | fad fad \t {fad8 sold fad} |
    <fad si>4 fad fad8 fad |
    \t {do re mib} \t {fa lab sib} \t {si dod mi}
    <lad, fad'>4 \t {<fad si>8 dod' mi} \t {fad, la sol} |
    <do, do'>1~ <do do'>2 r4 |
    
    %%% Ad libitum %%%
    R1 R2. do2.~ do4 r r2 | do2.~ do4 r2 |
    
    %%% Agitato %%%
    re8 re mib mib re re mib mib |
    re4:8 mib: re: mib: re: mib: re: mib: |
    re: mib: re: mib: re: mib: re: mib: |
    re: mib: re: mib: |
    re: mib: re: mib: re: mib: |
    re: mib: re: mib: re: mib: re: mib: |
    re: mib: re: mib: re: mib: |
    re: mib: re: mib: re: mib: re: mib: re: mib: re: mib: |
    re: mib: re: mib: re: mib: |
    re: mib: re: mib: re: mib: re: mib: |
    mib8 fab mib fab mib fab mib fab mib fab mib fab |
    mib fab mib fab mib fab mib fab mib fab mib fab |
    mib fab mib fab mib fab mib fab mib fab mib fab |
    mib fab mib fab mib fab mib fab |
    mib fab mib fab mib fab mib fab mib fab mib fab |
    mi1. R1.*2
    
    %%% Allegro non troppo %%%
    \pizz sib''4 r r2 | R2. sib4 mi, r \t { \arco mi8 si dod} |
    sib8 r r4 r2 | \pizz sib'4 mi, r \t { \arco mi8 dod si} |
    sib8 r r4 r2 R1 R2.
    \pizz sib'4 r r2 | R2. sib4 r r2 | sib4 sib sib sib r r2 |
    \arco sol,2. sib4 r r2 |
    r2 \ttt {sol16 lab sib dod red mi} \ttt {fad mi red dod sib lab} |
    \ttt {sib dod red mi fad la} \ttt {si la fad mi red dod} sib8 r r4 |
    R1 \clef tenor |
    re'8\CaV re\CaV re\CaV re\CaV re\CaV re\CaV re\CaV re\CaV | R2.
    re8\CaV re\CaV re\CaV re\CaV re\CaV re\CaV | R2. \clef treble
    \pizz la'4 la la la R1 la4 la la la R1 |
    \arco fa16 fa r8 fa16 fa r8 fa16 fa r8 fa16 fa r8 | R1 \clef bass
    
    %%% Moderato %%%
    la,,4. sib8~ sib2 | la4. sib8~ sib2 |
    la8. sib16~ sib4. la8 | do2.~ do2 r |
    la8. sib16~ sib4~ sib16 la8. | do1~ |
    do2 la4 | do2 r4 \t {la8 do sib} |
    mib2.~ mib2 r | fa2.~ fa2 r | mib4 fa2 |
    mib8. fa16~ fa2~ \t {fa8 mib fa} |
    solb8. lab16~ lab2 | solb4 lab4~ lab16 solb8. lab mib16~ |
    mib8. fa16~ fa8 solb~ solb16 lab8.~ | lab8 fa, solb lab |
    si8 r r2 | R1 R2*4
    
    %%% Allegro marcato %%%
    <sib do>4 <sib do>16 <sib do> <sib do> <sib do> <sib do>4 r |
    <sib do>4 <sib do>16 <sib do> <sib do> <sib do> <sib do>4 r |
    re, re re re mi2 re8 r r4 | R1
    <fa sib mi la>4 <sib dod>16 <sib dod> <sib dod> <sib dod> <sib dod>4 r |
    <fa sib mi la>4 <sib dod>16 <sib dod> <sib dod> <sib dod> <sib dod>4 r |
    re re sib sib <sol re' la'>2 fad8 r r4 | R1*3
    do'4 do si si sib2 la8 r r4 | R1*2
    do4 do sib sib si2 sol8 r r4 | R1
    r2 r4 \pizz re' do la sol r fad mi dod r r sib' la sol |
    
    %%% Agitato %%%
    \arco re'8 fa sib fa re16 fa lab sib reb sib lab fa |
    re8 sol sib sol re16 la' sib do mib do sib la |
    re,8 sol sib sol re16 si'dod red mi red dod si |
    re, re re re re re re re re re re re re re re re |
    <la re>8 re <re la'> re <la re> re <re la'> re |
    <re re> re <sol la> re <re re> re <sol la> re |
    <re re> re <sol re'> re <re re> re <sol re'> re |
    <re sol> re <do' fa> re, <re sol> re <do' fa> re, |
    <re sol> re <do' fa> re, <re sol> re <do' fa> re, |
    <sol, re'> re' \clef treble <fa' do'> \clef bass re,
    <sol, re'> re' \clef treble <fa' do'> \clef bass re, |
    re \clef treble <fa' do'> \clef bass re, \clef treble <solb' reb'> \clef bass
    re, \clef treble <lab'' mib'> \clef bass re,, \clef treble <la'' mi'> \clef bass |
    <mi, la>8 r r4 r1 | R1*2
    
    R1 R2. R2 \clef treble la'16\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV |
    fad fad fad fad fad fad fad fad | fad fad fad fad fad8 r \clef bass | R2 R1*4
  }
}

ActeUnSceneUnBisVioloncelleDeux = { \VioloncelleDeux
  \relative {
    dod,,8:32
    dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} |
    dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} |
    dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} |
    dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 r |
    dod16 re mi sib' sol la sib mi dod re mi sol, |
    \t {lab16 lab lab} lab8 \t {fa16 fa fa} fa8 \t {mib16 mib mib} mib8 |
    
    %%% Piu vivo %%%
    re4 r r8 do' sol la | fad2 \t {sol8 la do} |
    re4 r r8 mib, lab fa| sib4. lab |
    sol2.~sol2 r4 |
    <mib' fa>4. <re sib'> | re2. |
    R2. r4 <la'mi'\harmonic mi'>2~ <la mi'\harmonic mi'>4. r8\fermata r4 |
    R2. r4 <la mi'\harmonic mi'>2~<la mi'\harmonic mi'>~
    <la mi'\harmonic mi'>8 r\fermata r4 | r2 r4 fad, sol la |
    
    %%% Largo %%%
    do,2 do'~ do
    lab2.~ <do, lab'>2~<do sol'>2.~
    <do la'>2~ <do la'>4 r2 |
    <do si'>2 <do si'>4 |
    <do mib'>4 r r2 |
    R1 R2. R2 r2 r8 lab'4. |
    sib2.~ sib2 r4 |
    re2 mib~ mib r4 |
    R2*3 R2. R1 R2.
    r4 sib8 lab | sol2~sol fad2. |
    r2 si4 mi,2. |
    
    %%% Adagio %%%
    R1*9
    r2 r4 r8 <do mi\harmonic mi''>~ |
    <do mi\harmonic mi''>1~ <do mi\harmonic mi''>~ |
    <do mi\harmonic mi''>~<do mi\harmonic mi''>~
    <do mi\harmonic mi''>2. r8 sol'~\CaV |
    sol4 sol fa sold |
    mi1~mi~mi~mi2 r | R1*8
    r4 <do''mi> <do mi> <do mi> |
    <do mi> r r2 |
    R1*3
    R2 \pizz <re, sold>4 <sold, red'> <fa reb'> r
    r \arco <dod sold'>
  }
}

InterludeUnVioloncelleDeux = { \VioloncelleDeux
  \relative {
    R1. R1*3 R1. R1 R1.*2 R1*2
    la1 la2~ la1 si2 do1~ do4 r2 |
    R2 \ttt {r16 fa mi re la si}
    \ttt {sold la sold fad dod red}
    \ttt {do fad red dod sib do} |
    sol8\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow |
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <do, sol'> sol' dod, |
    sol'\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <dod, sol'>\downbow
    sol'\leftpizz <dod, sol'>\downbow |
    \arco sol' <sol sol'> sol <sol sol'>
    sol <sol sol'> sol <sol sol'> |
    sol <sol sol'> sol <sol sol'> sol <dod, sol'> dod <dod sol'> |
    sol' <sol fad'> sol <sol fad'>
    sol <sol fad'> sol <sol fad'>
    sol <sol fad'> sol <sol fad'> |
    sol <sol fad'> sol <sol fad'> sol <dod, sol'> sol' <dod, sol'> |
    fad2. sol2 r4 | R2.*4
    si2.~ si~ si~ si~ si8 sib4 lab si8 |
    sol'2.~ sol~ sol~ sol R2.*2
  }
}

ActeUnSceneDeuxVioloncelleDeux = { \VioloncelleDeux
  \relative {
    %%% Air de la Soprano2 %%%
    
    R2.*2 | R1*2| R2.*2 | R1*2 | R2.*2| 
    re,8 mi sold4 la re,8 la' | 
    r re, mi sold la4 sold8 re | 
    mi4 sold la8 mi | r sold la re, mi4~|
    mi1~ mi2 r2 | R2.*2 | R1*2 | R2.*2 | R1*2 | R2.*2|
    dod,1~ dod~| dod2 r4 | R2.| 
    dod1~ dod~| dod2 r4| r dod r | 
    mi1~ mi2. r4 | dod2.~ dod2 r4 |
    sol'1~  sol~ | sol2 r4 | 
    sol re' do8 lab | sol2. r4| 
    sol re' do8 lab sol4 | lab8 sol do re r4| R2. |
    sold1~ sold~| sold2.~ sold~   |
    sold1~ sold2. r4 | R2.*2 R1*2 R2.*2 R1*2 R2.*2 |
    \clef treble re'1~\CaV re~ re2.~ re~ re1~ re~ re2.~ re2 r4|
    R1*2 R2.*2 R1*2 R2.*2| R1*2 R2.*2 R1|
    R1-\fermataMarkup \clef bass |
    
    %%% Récitatif %%%
    
    R2.*2 R1| R2.*3 | R1 R2.*2 r4 r8 mib,4 lab,8~| lab2.~|
    lab8 lab~ \t {lab lab lab} lab4:32 |
    lab8 r r2 | R2 R2. R1*2 | R2.*4 re,2.~ re2. r4 |
    
    %%% Duo %%%
    
    \pizz <re sib'>4
    \repeat unfold 15 <re sib'> r8 \arco <re sib'> |
    <reb lab'> r \pizz <reb lab'>4
    \repeat unfold 5 <reb lab'> 
    \repeat unfold 3 <sib' sol'> r8 \arco <sib sol'> |
    <la fa'>8 r \pizz <la fa>4 <la fa'> | <la fa'> r | 
    \arco sol lab8 sib |
    reb4 dob sib | dob sib lab sib | 
    dob sib lab fa | dob' r8 sib r4 |
    si!8 si lad lad si si | 
    lad lad si si lad lad si si |si1 
    lab2.~ lab~ lab4 r2 R1 |
    
    %%% Piu vivo %%%
    <sol sol'>4 sol16 sol sol sol lab lab lab lab |
    sib sib sib sib reb reb reb reb mib mib mib mib mi mi mi mi |
    fad fad fad fad la la la la si si si si |
    do4 re, dod, |
    sol'2 sol4 sol | dod,4. dod8 dod dod |
    sol'2 r8 sol sol sol | dod,4. dod8 \t {dod dod dod} |
    sol'4 sol2 r4 |
    dod,4 r8 sib' lab si |
    sol4 sol sol |
    sol \tt {si'16 sold fad red dod} \tt {fad red dod do sib} |
    sol4 r sol |
    si \tt {re'16 dod si sold fad} \tt {sold fad fa mib do} |
    sib4 r sib |
    re r2 | re4 re re | re r2 | re4 re re | re r2 | re4 re re |
    dod r2 | dod4 dod dod | fa,1~ fa2 r4 si~ | si8 do4. dod2 |
    
    %%% Tempo giusto %%%
    <re, sib'>4 <re sib'> <re sib'> <re sib'> |
    <re sib'> <re sib'> <re sib'> <re sib'> |
    <dod la'> <dod la'> <dod la'> <dod la'> |
    <red si'> <red si'> <red si'> <red si'> |
    \pizz sol r8 \arco sib4 lab si8 |
    <sol sol'>2 r4 | \repeat unfold 32 sol16
    sol8 r r2 |
    r4 \t {re'8 si dod} |
    \repeat unfold 28 sold16
    sold8 r r sold fad la |
    fa2 fa4. fa8 
    <fa fa'>2 | <fa fa'> |
    r8 la sol sib |
    fad4. fad8 | fad4. fad8 <fad re'>4\glissando \clef tenor |
    <fad'' la>8 r r2 |
    
    %%% Largo assai %%%
    R1 R2.*3 R2
    solb2.~ solb2. r4 | 
    r2 \pizz fa'4 mi | mib r sib r | re, r r2 |
  }
}

ActeUnSceneTroisVioloncelleDeux = { \VioloncelleDeux
  \relative {
    do,,2.:32~do: <do si'>2.:32~<do si'>:~<do si'>:~<do si'>:~<do si'>: <do si'>4 r2 |
    r4 \pizz la' r r fad r r8 mi r fa lab4 |
    \arco sib2. mib,2.:32 <sib'la'>2. mib,2.:32
    mi2. fad2.:32~fad:~fad4 r \pizz reb mi r2 |
    r2 \arco sib'4 la2. r2 sib4 la2 r4 |
    
    %%% Lamento %%%
    r2 r4 \pizz re si dod | sib2 r1 | R1.*3
    \arco sib2 re4 r r2 | reb fa4 r2 |
    la,2 solb4 r2 | lab fa4 r2 | la! solb4 r2 | la sib4 r2 |
    <mi, red'>2 <sol fad'>4 r |
    <lab sol'>2 <sol fad'>4 r |
    <mi  red'>2 <sol fad'>4 r |
    <mi  red'>2 <fa   mi'>4 r |
    <reb do'>2 <reb do'>4 <reb do'>4. <reb do'>8 <reb do'> <reb do'> |
    <reb do'>4 <reb do'>8 <reb do'> r4 | R2*2
    
    %%% Tempo I %%%
    \pizz mi4 sol r mi sib' r r mi, r |
    \arco la2.:32 la2. sold la lad si~ si4 r8 mi, \t {mi mi mi} |
    dod'4 r2 R2. \pizz si4 r mib, r2 solb4 |
    
    %%% Tempo II %%%
    r2 r4 mib reb mi | \arco do1.~ <do sol'>~<do sol'>~
    <do sol'>2 r4 si'2.:32~si1.:32~<do si'>2.:32 <do si'>4 r |
    R1 R2. R2
  }
}

ActeUnSceneTroisBisVioloncelleDeux = { \VioloncelleDeux
  \relative {
    R1*3 r4 sib,2\CaV r4 | R1*2 r4 re,2 r4 R1 |
    r2 lad'4 sold fad r r2 | R1*6
    fad1~fad~fad~fad~fad2. r4 | R1*8
    si1~si si2 si si si si si do, do do2. R1*7
    fa4 re8 r fa4 re8 r 
    fa4 re8 r fa4 re |
    fad1~fad~fad~fad~fad~fad~fad2. r4 | R1*3
    r4 <sol do\harmonic sol''>2 r4 |
    si2 sib la1 lab2 sol fad1~fad~fad4 r r2 |
    R1*2 do'1 lad~lad~lad~lad~lad~lad\fermata
  }
}

ActeUnSceneTroisTerVioloncelleDeux = { \VioloncelleDeux
  \relative {
    R2*3 R2. R2*2 R2. \clef treble
    \repeat unfold 36 re'16
    re re fad re dod dod fa do do red mi si |
    sib8 r r2 | R2. \clef bass |
    mib,,,2. r4 mi2 fa |
    re'8 r r4 r2 | R1*3 R2.
    
    %%% Poco meno %%%
    <re sol\harmonic re''>2.:32~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>4 r2 \clef treble
    r8 si'' sib sol fad mib\glissando |
    mib' re fad, sol si sib re, mib sol fad sib, si \clef bass |
    mib,2 r4 |
    
    r mib2~mib re4~ re2 r4 |
    r mib2~mib re4~ re2 r4 |
    r \t {sib'8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {si fad si} | \t {fad si fad} si4 r |
    r \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {si fad si} | \t {fad si fad} si4 r |
    r \t {mib,8 sol mib} \t {sol mib sol} \t {mib sol mib} \t {sol mib sol}
    mib4~ mib2 r4 |
    r \t {mib8 sol mib} \t {sol mib sol} \t {mib sol mib} \t {sol si sol}
    \clef tenor \t {si mib si} | \t {sol mib' si} sol'4 r \clef bass |
    r8 \pizz si,, mi la mib sol | r4 r8 do, fa sib \clef tenor |
    r mi r4 la | R1 \clef bass
    
    r4 \arco <si,,? fa'>2~<si fa'> <si fa'>4~<si fa'>2 r4 |
    r <si fa'>2~<si fa'> <si fa'>4~<si fa'>2 r4 |
    r mib2~mib re4~re r2 |
    r4 mib2~mib re4~re r2 |
    r4 <mib sol>2~<mib sol> <re fad>4~<re fad>2 r4 |
    r4
    \repeat tremolo 8 {re32 sol}
    \repeat tremolo 8 {re sol}
    \repeat tremolo 4 {red fad} red4 fa2 |
    la,2.:32~la:~la:~la2 r4 |
    \pizz <la la'> r2 R2.*4 |
    \arco sib2.~sib~sib~sib~sib2 r4 |
    sib2.~sib~sib~sib2 r4 |
    la2.\fermata
  }
}

InterludeTroisVioloncelleDeux = { \VioloncelleDeux
  \relative {
    r8 \pizz re, r re r re r re | r re r re r re |
    r4 \arco re2.~ re2 r4 R1 R2. R1 R2.
    <sol,dod>4 <sol dod> <sol dod> <sol dod>8 <lab re> |
    <sol dod>4 <sol dod> <sol dod>8 <lab re> |
    <sol dod>4 <sol dod> <sol dod>8 <lab re> |
    <sol dod>4 <sol dod> |
    r8 <mi re'> r <mi re'> r <mi dod'> |
    r <mi re'> r <mi dod'> |
    r <mi red'> r <sold mi'> |
    r <sol mi'> r <si sol'> |
    sol16:32 mi: sol: lab: si: lab: si: do: |
    mib: do: mib: mi: sol: mi: sol: lab: \clef tenor
    si4 mi sol8 r r4 |
  }
}

ActeUnSceneQuatreVioloncelleDeux = { \VioloncelleDeux
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    R2. sol4 fa mi8 la, r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2

    %%% Agitato %%%
    r4 la8 re sol re | la r r2 |
    <do,sol'>2.:32 <do sol'>8 r r2 | r4 sib''8 fa4 fad8 |
    re2~re4\glissando fa2. mi2.:32 la8 r r4 mib16 do sol mi |
    re4 r2 | re'8 si' mi16 mi, mi mi la8 la, | re4 r2 |
    re8 dod' fad16 fad, fad fad si8 la, | re4 r8 re fad, si |
    mib,4 r8 reb4 sol8 | do4 r8 fa la, re |
    fad,4 r8 la4 mib'8 | lab4 r8 la reb, solb |
    sib,4 r8 sib4 sib8 | mi4 r8 mi, \t {mi mi mi} |
    mi4 mi mi | r8 sib'4 mi sib'8 |
    lab16 sib lab sib re mib re mib sib re sib re |
    lab sib lab sib re mib re mib sib8 sib, |
    mi4 mi sib8 mi~ | mi4 mi, re~ | re fa2 |
    dod2~dod8 r r4 | R2. dod2. r4 |
    R2. dod2 R2. dod2 R2.
    dod'4 sol | dod2 sol4 |
    
    %%% Placando assai %%%
    dod2. dod4 sol2. r4 | dod2. dod4 sol2. r4 |
    dod,2 re mib mi2.~mi2. r4 |

    %%% Andante a piacere %%%
    \pizz fa4 r r2 r reb4 r |
    fa r r2 r reb4 r |
    \arco fa1~ fa2 reb fa1~ fa2 reb |
    sol2. r4 r8 dod,4 sol' dod,8 |
    sol'2. r4 r8 dod,4 sol' sol8 |
    dod,8 r r4 r2 | R1*6 R2*3 R2.*2

    %%% Poco a poco piu mosso %%%
    \pizz sol'4 r sol fad r2 la4 r2 sol4 r2 |

    %%% A tempo %%%
    \arco
    <do,do'>4 r8 fad4 do' fad,8 |
    <do do'>4 r8 fad4 do' fad,8 |
    <do do'>4 <do do'> r8 fad r4 |
    R1
    \pizz la8 sold16 red dod8 do'16 sol fa8 mi'16 si |
    la4 r4 r2 | r4 la8 mi sol4 | dod,8 sold' si4 fa8 dod mib'4 |
    la,4 r2 | r16 re,8. r4 r2 |
    r8 r16 \arco dod''~ dod8 red~ red16 fad sib, mib, |
    sol,2~ sol8 sol \t {sol sol sol} | sol2 r8 dod4. |
    <re,sol>2 r4 | sol4 sol sol | fa2 fa4 |
    fa~ \t {fa8 fa4~} \t {fa4 fa8~} fa4 |
    r fa~fa8 mib \t {mib mib fad} |
    
    re2. r8 re' r | sold,2 si4~si8 dod4 |
    re2  r8 re r | la4. sib8~ sib8. do16~do4 |
    mib2 r8 mib r| si2~ si8 do~ do16 re8. |
    fa2~ fa4 r8  | fa,2~ fa |
    R2 R4. re16 fa sib dod fad sib, dod fad la dod, fad la |
    re4 re, re re <re mi> <re mi> <re mi> <re mi> |
    <re mi> <re mi> <re mi> <re mi> |
    <re sol>\CaV <re sol>\CaV <re sol>\CaV <re sol>\CaV |
    <re do'> re re re | re,8 re re' re re, re re' re |
    re, re re' re re, re re' re, |
    re'16 re re, re re' re re' re re, re re, re re' re re, re |
    re8 re' re, re' re' re, re,4 | re re8 re re4 r | R1*2 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    r2 sib''4~sib2 r4 R2.
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4  R2.
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4  R2.
    r4 \pizz sib, r r re, r |
    
    %%% Stesso tempo %%%
    la'4 r r fad' r r | la, r r2 |
    la4 r8 red r2 fa4 r | la, r r2 |
    la4 r8 mi' r4 fad, r8 mib' r4 | la, r r2 |
    R1. R1
    \arco la1.~ la2. r4 |
    \pizz la4 sib8 mib, fa4 fad8 si dod4 re,8 sol |
    la4 re,8 mi dod'4 fad,8 sold fa'4 sib,8 do |
    la4 sold8 red dod4 do'8 sol fa4 mi'8 si |
    la4 mi'8 re fa,4 do8 sib' reb4 lab8 solb|
    la4 sib8 mib, reb4 fad8 sold fa4 mi8 si'|
    la4 r r2 | R1. \arco do,1~ do1. do4 r \pizz sib' reb |
    la4 sold8 red dod4 do8 sol' fa4 mi'8 si |
    la4 mi'8 re fa4 do8 sib reb,4 lab'8 solb |
    la4 sib8 mib fa4 fad8 si, dod,4 re8 sol |
    la4 re,8 mi dod'4 fad,8 sold fa4 sib8 do |
    la4 sold8 red' fa4 do,8 sib' reb4 re,8 sol |
    la4 r r2 | R1. R1
  }
}

EntracteVioloncelleDeux = { \VioloncelleDeux
  \relative {
    sold,2~sold~sold sold~sold sold sold~sold4 sold~|
    sold4 sold8 \t {sold16 fa sol} |
  }
}

ActeDeuxSceneUnVioloncelleDeux = { \VioloncelleDeux
  \relative { \clef tenor
    \pizz la4 r r | la r8 la r4 | la la la | 
    la r2 | R2 | R2.*2 | R2 |
    r4 << \arco s2 \\ 
    \repeat tremolo 4 { sold16 lad16 } >> | 
    \repeat tremolo 6 { sold16 lad16 } | 
    \repeat tremolo 6 { sold16 lad16 } | si4 r |
    R2. R2 R2.*2 R2 | 
    r4 \repeat tremolo 4 { do16 red16 } | 
    \repeat tremolo 6 { do16 red16 } | 
    \repeat tremolo 2 { do16 red16 } 
    \repeat tremolo 4 { si16 do } | sold4 r |
    R2. R2 R2.*2 R2 | R2. | R2. | 
    \ttt { mi'8[ mi16 mi mi mi] } 
    \repeat unfold 4 { \ttt { re[ re re re re re] } } |
    
    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {fad16 fad fad fad fad fad} \t {fad fad fad} r8 r4 |
    r4 r8 \clef treble \t {lab16 lab lab} \ttt {lab lab lab lab lab lab} \clef bass |
    R1 R2. R2 R2. R1
    
    %%% Andantino %%%
    \pizz sib,,4 fa' r2 R1 R2. mi4 si' r R2. mi,4 si' lad R2
    R2. si,4 fad' r mid8 dod si4 r |
    r4 \arco <la mi'\harmonic mi'>2~ <la mi'\harmonic mi'>2.~
    <la mi'\harmonic mi'>1~ <la mi'\harmonic mi'>2 r4 | r \pizz si'8 mi, |
    fad,4 r2 R1 R2. R1 R2. R1
    sib4 fa' r | \arco sib,2. r4 R2. R1 sib2 r4 R1 R2.
    fad1 fad2.~ fa2. r4 | fad2.~ fad1 fa2.~ fa2. r4 |
    fad2.~ fad2. r4 |
    
    %%% Entrée de la Contralto %%%
    R2. R1 fad2.~ fad4 r r2 |
    fa2.~ fa4 r r2 | fad2. fa2 mib |
    do4\thumbpizz \pizz sol' mi'8 fad | la4 fad8 la re4 si,8 fad |
    do4 mi'8 fad la4 |
    r8 fad, do4 r2 | r4 r8 dod r sold' | fad si r fad' dod si' r4 |
    r \arco do,,2 reb mib |
    fad4\thumbpizz r2 | \pizz fa4 r r2 | fad4 r2 | fa4 r r2 |
    fad8 fad' r2 | sol,4 re'8 fa do'4 | re r \arco fa,, |
    sib r2 | si4 r2 | sib4 r2 | si4 r2 | mi4 r2 |
    <do,fa\harmonic do''>2.~ <do fa\harmonic do''>2.~
    <do fa\harmonic do''>2 r | mib'2. |
    re1~ re4 r2 | R1 \pizz lab4 r2 | la4 r r2 | lab4 r2 |
    \arco sol1~ sol2. r4 lab sol fa |
    re2.~ re1~ re4 r2 R2 |
    R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisVioloncelleDeux = { \VioloncelleDeux
  \relative {
    R1 R2. R2
    
    %%% Presto agitato %%%
    <do,,mi\harmonic sol do\harmonic mi' sol>1*5/4~
    \simile <mi''sol>~\CaV <mi sol>~\CaV
    <mi sol>~\CaV <mi sol>2.\CaV r2 |
    R1*5/4 \clef treble |
    <lab'sol'>1*5/4~ <lab sol'>2. r2 \clef bass |
    R1*5/4*7
    sib,,1*5/4~ sib~ sib2. r2 |
    dod,2 re mi4 sol1*5/4~ sol2. r2 |
    <do're>4 r2 <do re>4 r | <do re> r <do re> r2 |
    <do re>4 r r8 <do re> r2 | sold,4 r1 |
    R1*5/4*6
    fad8 sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    <re sol>4 r2 <re sol>4 r | <re sol> r <re sol> r2 |
    <re sol>4 r r8 <re sol> r2 | <solb fa'>4 r1 |
    R1*5/4 <fa re'>4 r1 | R1*5/4-\fermataMarkup |
    
    %%% Boum %%%
  }
}

ActeDeuxSceneDeuxVioloncelleDeux = { \VioloncelleDeux
  \relative {
    R1.*4 \clef treble la'1.~\CaV la4\CaV r r1 | R1*2 \clef bass
    re,2.~\CaV re8 r r16 re,,8 fa16 r16 fad8. |
    re4 re16 mib fa lab sib8 re, |
    \ttt {re16 mib fa lab sib si } dod8 mib, \ttt {fa16 lab sib si dod mi}|
    fad8 lab, \ttt {sib16 si dod mi fad sol } la8 si, |
    re,1.~ re1 r2 |
    
    R1. R1*2 si'2.~ si8 r r16 si8 re16 r16 red8. r4 |
    r16 mi, dod re do mib |
    si'4 r8 r16 dod dod re sold, sold sold4 |
    r8 dod16 dod re8 sold, dod16 dod re8 <sol, re'>16 <sol re'> <re' la'> <re la'> |
    r8 si16 si si si si si fad'8 si, si16 si si si |
    r8 si16 si si si si si <fad' dod'>8 si, si16 si si si |
    si si si si si8 fad' si, fad' si,16 si si si |
    si si si si si8 fad' si,4 la8 do |
    
    sold2.~ sold1 r2 | R1*2
    \pizz fa4 r2 | fa4 r2 | fa4 r2 | fa4 r |
    fa r red \arco mi2.~ mi2 r4 |
    \pizz do4 r |
    
    r16 \arco la' fad sol fa lab |
    mi4 r8 <la re>16 <la re> <la re> <la re> sol8 <sol re'>16 <sol re'> <re'la'> <re la'> |
    mi,8 <si' re>16 <si re> <re la'> <re la'> sol, sol
    <re' la'> <re la'> sold, sold <re' la'> <re la'> <re la'> <re la'> |
    mi8 <la re>16 <la re> <la re>8 mi, <re' sol> mi, <re' la'>16 <re la'> <re la'> <re la'> |
    mi,8 <re' sib'>16 <re sib'> <re do'>8 mi, <re' la'> mi, <la re>16 <la re> <la re> <la re> |
    mi8 <fa' la>16 <fa la> <fa si>8 mi, <fa' do'> r16 la, fad sol fa lab |
    <mi si'>4 r8 dod <mi si'>4 dod8 do |
    <mi si'>4 r8 mi | r16 sib' la do dod sol fa lab |
    mi4 r \t {mi re fa} | dod1~ dod2 r4 |
    
    R1. R1 R1. <sol' re'>1.~ <sol re'>2 r4 | R1 \clef treble
    la''2.:32~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV
    la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV
    la4 r2 R1 R2. \clef tenor r2 r4 \pizz <fa, mi'>8 <fa mi'> |
    <mib re'>4 r <fad mi'>8 <fad mi'> | <mi! re'>4 r r2 | R2. \clef bass
    
    <la,la'>16 <la la'> <la' la> <la la> <la la> <la la> <la, la'> <la la'> |
    la2:16
    <la la'>16 <la la'> <la' la> <la la> <la la> <la la> <la, la'> <la la'> |
    la2:16 la4 |
    mib16 do reb mib fad8 fa sib16 sol lab sib reb8 do |
    fa mib lab sol do4 la4:16 |
    la,1:16 |
    
    <la sold'>4 la'8 sold la | sold sold la r4 |
    sold,8 sold la r4 | sold'8 sold la r4 |
    <la, sold'>4 r r8 | la4 la r8 | sold4 r r8 |
    <la sold' la>4 r re8 | re mib r4 r8 |
    <sold, re'>4 <sold re'> r8 | <la re>4 r r8 |
    dod dod do r4 | r8 fa4 fa | sol, r r8 |
    
    R1*2 lad4 r r2 | r4 \pizz mi sol r | r fad mi r |
    R1 \arco red2 \repeat tremolo 8 {red32 mi} |
    \repeat tremolo 16 {mib fa} |
    \repeat tremolo 16 {mib fa} |
    <re' dod'>4 r2 | r8 \pizz sold, r4 |
    R1*2 R2.*4
    r4 dod' r | r la r | R2. |
    
    \arco la8 r mib r sold r re r |
    dod r sol' r <do, do'> r |
    fa' r si, r mi r |
    mib, r la r | re, r sold r \clef tenor |
    r16 mi'' sold mi r mib sol mib |
    r re fad re r reb fa reb |
    r do mi do r si red si |
    sib8 \clef bass \pizz <re, sib'>\arpeggio r <re sib'>\arpeggio |
    r \simile <re sib'> r <re sib'> |
    r <re sib'> r <re sib'> |
    r <re sib'> r <re sib'> |
    \arco dod, \pizz dod' \arco sol, r |
    do, r fad r | si r fa r | sib r mi, r |
    R2 r8 la16 la sold8 r | R2
    r8 \pizz <re' sib'> r <re sib'> |
    r <re sib'> r sold | <sib, re>4 r |
    R2*2 re,4 r dod r mib r | R2 \clef treble
    
    la''2. sol fa mi fa4. mi fa sol la4 mi r |
    R2.*9
  }
}
