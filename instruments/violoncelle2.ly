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
    r dod4 sol8 | sib2 
  }
}

ActeUnSceneUnBisVioloncelleDeux = { \VioloncelleDeux
  \relative {
    \repeat tremolo 24 dod,,32
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
    lab8 lab~ \t {lab lab lab} \repeat tremolo 8 lab32 |
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
