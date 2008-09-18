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

ActeUnSceneQuatreVioloncelleDeux = { \VioloncelleDeux
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    R2. sol4 fa mi8 la, r4 R2-\fermataMarkup
  }
}

ActeDeuxSceneUnVioloncelleDeux = { \VioloncelleDeux
  \relative { \clef treble
    \pizz la4 r r | la r8 la r4 | la la la | 
    la r2 | R2 | R2.*2 | R2 |
    \clef bass  r4 << \arco s2 \\ 
    \repeat tremolo 4 { sold,16 lad16 } >> | 
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
	}
}
