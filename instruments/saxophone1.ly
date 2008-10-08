%------------------------------------------------------------------%
% Opéra Libre -- saxophone1.ly                                     %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

SaxAltoUn = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Saxophone Alto  "}
  \set Staff.shortInstrumentName = "Sax. A  "
  \set Staff.midiInstrument = "alto sax"
}

PrologueSaxophoneUn = { \SaxAltoUn
  \relative { 
    %%% Introduction %%%
    
    \partial 4 r4 R2.*3 R1
    mi2~mi4 r mi16 fa8.~fa4  \t {mi8 fa4~} fa2~ fa4 r | mi2 r4 |
    R2*2 
  }
}

ActeUnSceneUnBisSaxophoneUn = { \SaxAltoUn
  \relative {
    R2.*7
    re'4 r r2 | r4 fad,,2 |
    re'4 r r2 | r4 sib2 |
    re8 r fa'2 | si, dod,4~| dod do2 | R2.*2
    fa2.~fa4. r8\fermata r4 | R2.
    fa2.~fa2~fa8 r\fermata r4 | R1 R2
    
    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 sib | sol2 r4 sib | sol2 r4
    r la, si2 r |
    R2.*2 R2*2 
    r2 r8 sib' | sol4 r8 sib | sol2 |
    r8 sol r4 | r8 sol sib r r4 |
    r2 r8 sol sib reb |
    R2. R2*3 R2.*3
    
    %%% Adagio %%%
    R1*33
    R2*4
  }
}

ActeUnSceneDeuxSaxophoneUn = { \SaxAltoUn
  \relative { 
    %%% Air de la Soprano2 %%%
    
    \repeat unfold 9 { R2.*2 R1*2} R2.*2 |
    re'8 mib re sib lab sib re mib | re sib lab sib re mib lab, sib | 
    re mib lab, sib re mib | lab, sib re mib r4 |
    re8 mib re sib lab fa lab sib | re mib re sib lab sib lab fa |
    re fa re do re4 | R2. | lab1~| lab2. r4 | 
    \repeat unfold 8 {R2.*2 R1*2}
    R2.*2 R1 R1-\fermataMarkup |
    
    %%% Récitatif %%%
    
    R2.*2 R1 R2.*3 R1 R2.*3 r2 \repeat tremolo 4 {mib'32 mi!} 
    \repeat tremolo 12 {mib32 mi!} | do8 r r2 R2 R2. R1*2 R2.*5 R1 | 
    
    %%% Duo %%%
    
    R2. R1 R2. R1 r2 r8 re | mi4 r r2 | R2. r4 r16 re re re sol2 |
    r4 r16 lab lab lab reb4~| reb r | R2 R2. R1*2 R2. 
    mi,,2. | fad r4 lad2 si | sold2.~ sold~ sold4 r2 | r2 r8 sib'4. |
    
    %%% Piu vivo %%%
    sol,4 r2 | R1 R2.*2 R1
    r4 re''do re8 la~ la4 r2|
    r4 re  do do8 si~ si4 r2|
    r4 re  do si8 mi~ mi4 r | R2.
    r4 mi  re si8 mi~ mi4 r |
    r mi re mi8 sold~sold4 r|
    R2.*2
    r16 sib, r8 r2 |
    R2.*2
    r4 r16 dod r8 r4 | R2.
    
    %%% Poco allargando %%%
    \t {fa,4 fa fa}
    \t {fad fad fad}
    \t {sol sol sol}
    sold2 red dod |
    %%% Tempo giusto %%%
    re4 r r2 | R1*4 R2.
    sol,1~ sol4 \t { sol8 sol sol} sol2~ | sol8 r r2 |
    R2 dod2~ | dod dod2.~ dod8 r r2 |
    r4 r8 si | mi si r si re si r si mi si r la |
    sol' mi si sol' la4 r8 mi la mi r mi si' la |
    sol' r r2 |
    R1 R2.*3 R2 R2. R1*4
  }
}

ActeUnSceneTroisSaxophoneUn = { \SaxAltoUn
  \relative {
    R2.*4 reb8 sib4 reb8 sib4 r r8 sib4 sol8 mi2.~ mi8 r r2 |
    R2.*8 r2 \t {sib''8 sib sib} mib4 reb mib8 sib~ sib4 r2 |
    R2.*5
    
    %%% Lamento %%%
    R1.*6 R1*5/4 do,2 si4 r2 |
    do si4 r2 |
    do si4 r2 |
    reb2 do4 r2 |
    solb'2 fa4 r |
    solb2 fa4 r |
    solb2 fa4 r |
    re2 mib4 r |
    do2 do4~ do sol'4. sib,8 si4. r8 r4 | R2*2
    
    %%% Tempo I %%%
    R2.*9 si2. mi,8 r r2 | R2.*3
    R1.*5 si'1.~ si2.~si8 r r4 |
    sol1~ sol4 r2 | r4 fad |
  }
}

ActeUnSceneTroisBisSaxophoneUn = { \SaxAltoUn
  \relative {
    R1 sol~sol R1 |
    r2 reb~reb1 R1|
    r2 reb~reb r | R1*7
    r2 sib'~sib2. sib4 lab2 sib~sib r4 sib lab2. sib8 r |
    R1
    re,16 lab' fa sib reb8 r
    re,16 lab' fa sib reb8 r
    re,16 lab' fa8 re16 lab' fa8 re16 lab' fa8 re16 lab' fa8 |
    solb4 r r2 | R1*10 R2. R1*3
    reb4 r r2 reb4 r r2 reb4 r reb r reb r reb r |
    reb8. solb16 r4 reb8~\t {reb16 solb do} r8 r16 mi, |
    reb8 do' reb' r reb,,4 r16 la'8. | solb'2. r4 | R1
    r2 r4 sib, lab2 sib | r2 r4 la sol2 la~ la2. r4 |
    R1*9
  }
}

ActeUnSceneTroisTerSaxophoneUn = { \SaxAltoUn
  \relative {
    R2*3 R2. R2*2 R2.*7 R1*6 R2.*19
    r4 sib2 | sib si4~ si si r |
    r  sib2 | sib si4~ si si r |
    r  re2 | re mib4~mib mib r |
    r  re2 | re mib4~mib mib r |
    r  si2   si si4~ si2 r4 |
    r  si2 mib sol4~ sol r2 |
    R2.*3 R1
    r4 sib,2 sib sib4~ sib2 r4 |
    r  sib2  sib sib4~ sib2 r4 |
    r  sib2  sib si4~ si r2 |
    r4 sib2  sib si4~ si r2 |
    r4 sib2  sib si4~ si si r  |
    r  sib2 re mib4~ mib re mib|
    r8 re mib sib si fad sol re' mib sib si fad |
    sol4 r8 re' mib4 r8 fad,8~ fad4 r |
    R2.*15
  }
}

InterludeTroisSaxophoneUn = { \SaxAltoUn
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    fa,8 re fa re fa re fa solb | fa re fa re fa solb16 r |
    si8 lab si lab si do | si lab si do16 r |
    si8 lab si lab si do | si lab si do16 r |
    re8 si re mib fa re fa solb | R2*4
  }
}

ActeUnSceneQuatreSaxophoneUn = { \SaxAltoUn
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*2
    R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2
    
    r16 la' la la re4 do re8 la4. r4 | r16 mi' mi mi la4 sol | la8 mi4. r4 |
    R2.*5 re,,4 r2 R2. re4 r2 R2. re4 r2 R2.*3 la'4 la la |
    sib8 mi, r mi \t {mi mi mi} | mi2.~mi4 r2 |
    r4 r8 mi r4 mi2 r4 | r4 r8 mi r4 mi mi r8 mi~ mi2 r4 |
    R2. reb8 r r4 r2 R2. reb2. r4 R2. reb4. r8 R2. reb4. r8 R2. si'2~si4 r2 |
    R1*5 R2 R2. R1
    
    r2 la~ la2. r4 | r2 la~ la2. r4 |
    r2 si~ si2. r4 | r2 si~ si2. r4 |
    r2 la' lab4. do, | r2 si fad'4. sol | R1*7 R2*3 R2.*6
    
    r8 do~ \t {do do do} \t {reb reb reb} \t {mib mib mib} |
    r  solb~ \t {solb solb solb} \t {lab lab lab} \t {la la la}
    \t {la la la} \t {la la la} \t {la la la} r4 |
    R1 R2. R1 R2. R1 R2. R1 R2.
    dod,2 dod4 dod dod4. dod8~dod4 r |
    mi,2 r4 mi2 r4 re2 r4 lab'2. r4 r fa,4. mib |
    re2.~ re8 r \t {fa16 sol la} sib8 r r2 |
    R4. re,2~ re8 r \t {sold16 la si} do4 r R2
    mib,2~mib8 r \t {sol16 lab sib} reb4 r R2
    fa,2~fa4 r8 r sol'4.~sol2 | R2 R4. R2.

    re4 r r2 | re,1 mi sol2. r4 sol2. r4 |
    r2 do la1 lab re4 r r2 | R1*2
    sib8 sib sib sib sib sib sib sib | R2
    sib8 sib sib sib sib sib | R2.
    sib8 sib sib sib | R1

    %%% Piu lento %%%
    R2.*21
    R1. R1 R1. R1 R1. r2 lab4 r R1.
    mi'8 re4 mi8 reb2~ reb1.~do2. r4 |
    la4 r r2 r4 re,8 sol |
    la4 r r2 fa8 mib sib' do |
    la4 r r4 do8 sol fa re mi' si |
    la4 r fa8 sol do sib reb mib, lab solb |
    la4 sib8 mib reb si solb lab fa re mi' si |
    la4 r re, r | R1. R1 R1.
    fad4 r r2 |
    la4 r r2 r4 mi'8 si |
    la4 r r2 reb8 mib, lab solb |
    la4 r r4 fad8 si dod mi re, sol |
    la4 r dod8 si solb lab fa mib sib' do |
    la4 lab8 mib fa sol do sib reb mi re, sol |
    la4 r lab r | r2 r4 sol solb r | r2 fa4 r |
  }
}

EntracteSaxophoneUn = { \SaxAltoUn
  \relative {
    R2*2 r4 mi sold2 |
    \t {r4 mi8} \t {sold4 sol8} |
    si2 \t {r4 sol8} si4~ si8 r r4 |
    sol4 \t {si sib8} |
  }
}

ActeDeuxSceneUnSaxophoneUn = { \SaxAltoUn
  \relative {
    R2.*4 R2 R2.*2 R2 R2.*3 R2 | R2. R2 R2.*2 R2 R2.*3 R2 |
    la'4 re,2~ | re4 r | mi4. la,8~ la4~ | la2 r4 | si2 |
    mi,2.~ | mi2.~ | mi2.~ | mi4 r |
    
    %%% Entrée de la Soprano Deux %%%
    R2.*2 R1 R2. R1 mib'2.~ mib4 r re2.~ re2 r |
    
    %%% Andantino %%%
    R1*2 R2.*4 R2
    R2.*5 R1 R2. R2
    R2. R1 R2. R1 R2. R1
    R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 R2. R1 R2. R1
    r8 mi' sold mi re mi sold mi si re si lab solb re |
    
    %%% Entrée de la Contralto %%%
    reb2.~ reb2. r4 | R2. R1
    R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 R2. R1
    solb,8 r r2 | R1 R2. R1 R2. r2 r8 mib'' re sib lab4 r |
    R2.*7 R1 R2.
    R1 R2. R1 r4 la,?2 r4 lab2 re,4 | r la'2 r4 sol2 r4 |
    R2. re''8 mib re sib lab fa mib fad |
    re2.~ re1~ re4 r2 R2 lab2. r4 |
    R2. R1 si4 lab r si lab si do si lab r si lab r2 |
  }
}

ActeDeuxSceneUnBisSaxophoneUn = { \SaxAltoUn
  \relative {
    R1 R2. R2
    
    %%% Presto agitato %%%
    R1*5/4*18
    r8 la'16 sol la4 r r2 |
    R1*5/4*2
    fad4 r2 fad4 r | fad r fad r2 | fad4 r r8 fad r2 |
    sol,4 r1 | R1*5/4*7
    r1 r8 dod16 si | dod4 r1 | r8 mi16 re mi4 r r2 |
    R1*5/4 r4 r8 fa16 mi fa4 r2 | R1*5/4
    do4 r2 do4 r | do r do r2 | do4 r r8 do r2 | sib4 r1 |
    R1*5/4 fa4 r1 | R1*5/4-\fermataMarkup
    
    %%% Boum %%%
  }
}
