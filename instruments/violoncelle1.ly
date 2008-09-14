%------------------------------------------------------------------%
% Opéra Libre -- violoncelle1.ly                                   %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

VioloncelleUn = { 
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Violoncelle 1  "}
  \set Staff.shortInstrumentName = "Vlc. 1  "
  \set Staff.midiInstrument = "cello"
  \clef bass
}

PrologueVioloncelleUn = { \VioloncelleUn
  \relative { 
    %%% Introduction %%%
    
    \partial 4 r4 R2.*2 \clef treble si''?2.\upbow ~ si1\glissando 
    mi,,2\downbow \clef bass |r8 mi,, \t {mi mi mi} mi2. | 
    r4 \repeat tremolo 8 red''32 ~ red8 r
    \t {mi,,8 mi mi} mi'2.~mi2~mi~mi2.~mi2~mi~ <mi la>2.~<mi la>4 
    <mi la>~<mi la>8 la \t {la si re}|
    la'2 r4 dod,,,16 dod dod re re re mi mi | 
    sol sol sol sib sib sib do do | 
    dod2 r8 sol r dod r sol | dod4 dod sol8 dod~|
    dod4 r | sol dod sib8 dod~| dod sol dod4 | 
    dod sol8 dod r sib | 
    r dod4 sol8 | sib2 
  }
}

ActeUnSceneUnBisVioloncelleUn = { \VioloncelleUn
  \relative {
    R2.
    \t {dod,,16 dod dod} dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 |
    \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 |
    \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 |
    \t {dod16 dod dod} dod8 <dod sib'>16 lab' si sol \t {dod,16 dod dod} dod8 |
    dod16 re mi sib' sol la sib mi dod re mi sol |
    lab8 \t {lab,16 lab lab} fa8 \t {fa16 fa fa} mib8 \t {mib16 mib mib} |
    
    %%% Piu vivo %%%
    re4 r r8 do' sol la | fad2 \t {sol8 la do} |
    re4 r r8 mib, lab fa| sib4. lab |
    sol2.~sol4 r8 sib'~sib4 |
    <re, do'>4. <re sib'> | sib'2. |
    R2. r4 <la mi'\harmonic mi'>2~ <la mi'\harmonic mi'>4. r8\fermata r4 |
    R2. r4 <la mi'\harmonic mi'>2~<la mi'\harmonic mi'>~
    <la mi'\harmonic mi'>8 r\fermata r4 | r2 r4 fad, sol la |
    
    %%% Largo %%%
    do2~\CaV do~\CaV do~\CaV do2.~\CaV
    do2~\CaV do2.~\CaV do2~\CaV do2.~\CaV
    do2.~\CaV do4 r r2 |
    R1 R2. R2 r2 r8 mi4. |
    sib2.~ sib2 r4 |
    la'2 mib~ mib r4 |
    R2*3 R2. R1 R2.
    r4 sib8 lab | sol2~sol fad2. |
    r2 si4 mi,2. |
    
    %%% Adagio %%%
    R1*9
    r2 r4 r8 <do mi\harmonic mi''>~ |
    <do mi\harmonic mi''>2. r4 |
    r2 r8 <sol' si\harmonic si''>4.~ |
    <sol si\harmonic si''>1~<sol si\harmonic si''>~
    <sol si\harmonic si''>2. r8 sol~\CaV |
    sol4 sol fa sold |
    mi1~mi~mi~mi2 r | R1*8 \clef treble
    r4 <sol''si> <sol si> <sol si> |
    <sol si> r r2 \clef bass |
    R1*3
    R2 \pizz <sold, dod>4 <red la'> <reb lab'> r
    r \arco <sold, mi'>
  }
}

ActeUnSceneDeuxVioloncelleUn = { \VioloncelleUn
	\relative {
    %%% Air de la Soprano2 %%%
    
    R2.*2 R1*2 R2.*2 re,4 la' sold8 mi re4 mi8 re la' sold r mi sold4 |
    mi4 re8 la' sold4 la8 sold mi re r la'|
    re,8 mi sold4 la re,8 la' | r re, mi sold la4 sold8 re | 
    mi4 sold la8 mi | r sold la re, mi4~|
    mi1~ mi2 r2 | R2.*2 R1*2 R2.*2 | 
    sold,1~ sold4 re'8 fad re dod sold4~| sold2.~|sold4 r2|
    dod1~ dod~| dod2 r4 | r2 fad8 re |
    dod1~ dod~| dod2 r4| r dod r | 
    mi1~ mi2. r4 | dod2.~ dod2 r4 |
    sol!1~  sol~ | sol2 r4 | 
    sol re' do8 lab | sol2. r4| 
    sol re' do8 lab sol4 | lab8 sol do re r4| R2. |
    sold1~ sold~| sold2.~ sold~   |
    sold1~ sold2. r4 | 
    R2.*2 R1*2 R2.*2 R1*2 R2.*2 | \clef treble 
    la'1~\CaV la~ la2.~ la~ la1~ la~ la2.~ la2 r4| 
    R1*2 R2.*2 R1*2 R2.*2| R1*2 R2.*2 R1|
    R1-\fermataMarkup \clef bass |
    
    %%% Récitatif %%%
    
    r4 r8 mi,4.| dod2.~|dod1~|dod2 r4| 
    r r8 reb4. | sib2.~|sib1~|sib2 r4|
    R2.| r4 r8 mib4 lab,8~| lab2.~|
    lab8 lab~ \t {lab lab lab} \repeat tremolo 8 lab32 |
    lab8 r r2| R2| r4 r8 reb4.| 
    sol,1~ sol~ sol2.~ sol~ sol~ sol2 r4 | sib2.~| sib r4|
    
    %%% Duo %%%
    
    \pizz <re, sib'>4
    \repeat unfold 15 <re sib'> r8 \arco <re sib'> |
    <reb lab'> r \pizz <reb lab'>4
    \repeat unfold 5 <reb lab'> 
    \repeat unfold 3 <sib' sol'> r8 \arco <sib sol'> |
    <la fa'>8 r \pizz <la fa>4 <la fa'> | <la fa'> r | 
    \arco sol lab8 sib |
    reb4 dob sib | dob sib lab sib | 
    dob sib lab fa | dob' r8 sib r4 |
    mi8 mi fad fad mi mi |
    fad fad mi mi fad fad mi mi fad1 |
    sib2.~|sib~| sib4 r2 | R1
    
    %%% Piu vivo %%%
    <sol, sol'>4 sol16 sol sol sol lab lab lab lab |
    sib sib sib sib reb reb reb reb mib mib mib mib mi mi mi mi |
    fad fad fad fad la la la la si si si si |
    do4 re, dod, |
    sol'2 sol4 sol | dod4. dod8 dod dod |
    sol2 r8 sol sol sol | dod4. dod8 \t {dod dod dod} |
    sol4 sol2 r4 |
    dod,4 r2 \clef tenor |
    \tt {r16 lab''' sol fa re } \tt {do la si la fad} \clef bass
    \tt {mi red dod do sib} | sol4 r2 |
    sol4 \tt {sol16 mi fad fa fad} \tt {sol lab la lab sib} |
    si4 r2 |
    sib4 sib sib |
    re r2 | re4 re re | re r2 | re4 re re | re r2 | re4 re re |
    dod r2 | dod4 dod dod | fa1~ fa2 r4 si,~ | si8 do4. dod2 |
    
    %%% Tempo giusto %%%
    <re, sib'>4 <re sib'> <re sib'> <re sib'> |
    <re sib'> <re sib'> <re sib'> <re sib'> |
    <dod la'> <dod la'> <dod la'> <dod la'> |
    <red si'> <red si'> <red si'> <red si'> |
    \pizz sol r r2 \clef tenor |
    \tt { r16 fa'' mi re do} \tt {si la sold fad mi} \clef bass
    \tt {mib reb do sib lab} | sol1~ sol2. r4 |
    r \tt {do16 reb mib solb lab} \clef tenor \tt {la si re mi sol} |
    lab4. r8 \clef bass |
    sold,,2~ | sold~ | sold r4 |
    r r8 sold fad la |
    <fa fa'>2 | <fa fa'>4. fa8 |
    <fa re' la'>2 | <fa re'>4. fa8 |
    r la sol sib |
    \t {fad re' la'} \t {la re, fad,} |
    \t {fad re' la'} \t {la re, fad,} 
    \t {fad re' la' \glissando } \clef tenor |
    sold' r r2 |
    
    %%% Largo assai %%%
    R1 R2.*3 R2
    sib,2.~ sib2. r4 | 
    r2 \pizz la'4 sold | sol r sib, r | re, r r2 |
	}
}

ActeUnSceneTroisVioloncelleUn = { \VioloncelleUn
  \relative {
    \pizz do,,4 r2 |
    fa2.:32~fa: <fa mi'>2.:32~<fa mi'>:~<fa mi'>:~<fa mi'>: <fa mi'>4 r2 |
    r4 \pizz re' r r si r r8 la r la dod4 |
    \arco sib2.:32 R2. <sib la'>2.:32 <la sold'>2.
    sib2.:32 do2.:32~do:~do4 r \pizz fa, lab r2 |
    \ind #"arco (solo)" sol'2.~\CaV sol~\CaV sol~\CaV sol2\CaV sol4\CaV |
    
    %%% Lamento %%%
    \ind #"ordin, sul G" sol1.~sol~sol1 la2~la1.~la1 la4 sib~sib1.~|
    sib4 dob2 r | reb,2 do4 r2 | reb do4 r2 | reb do4 r2 | re reb4 r2 |
    <lab sol'>2 <do fad>4 r |
    <re dod'>2 <si lad'>4 r |
    <lab sol'>2 <do fad>4 r |
    <la sold'>2 <mi'sol>4 r |
    <reb, do'>2 <reb do'>4 <reb do'>4. <reb do'>8 <reb do'> <reb do'> |
    <reb do'>4 <reb do'>8 <reb do'> r4 | R2*2
    
    %%% Tempo I %%%
    \pizz sib'4 do r re sib r r mi, r |
    \arco red'2.:32 dod: dod2. red2.~ red red fad mi4 r2 |
    R2. \pizz si4 r la r2 sib4 |
    
    %%% Tempo II %%%
    r2 r4 mib, reb mi | do2 r4 \arco sol'2. lab1.~lab~lab2 r4 mi'2.:32~mi:
    <fa, mi'>2.:32~<fa mi'>: <fa mi'>4 r | R1 R2. R2
  }
}

ActeUnSceneTroisTerVioloncelleUn = { \VioloncelleUn
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
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>8 r \clef treble
    \t {r4 sold'8} lad16 si re dod |
    sol'8 fad sib, si mib re fad, sol si sib re, mib \clef bass |
    sol,2 r4 |
    r <sol sib>2~ <sol sib> <fad si>4~<fad si>2 r4 |
    r <sol sib>2~ <sol sib> <fad si>4~<fad si>2 r4 |
    r \t {re'8 sib re} \t {sib re sib} \t {re sib re} \t {sib re sib}
    \t {red si red} | \t {si red si} red4 r |
    r \t {re8 sib re} \t {sib re sib} \t {re sib re} \t {sib re sib}
    \t {red si red} | \t {si red si} red4 r |
    r \t {sol,8 si sol} \t {si sol si} \t {sol si sol} \t {si sol si~}
    si4~ si2 r4 |
    r \t {sol8 si sol} \t {si sol si} \t {sol si sol} \clef tenor
    \t {si mib si} \t {mib sol mib} | \t {si sol' mib} sib'4 r \clef bass |
    r8 \pizz si,, mi la mib sol | r4 r8 do, fa sib \clef tenor |
    r mi r4 la | R1 \clef bass
    
    r4 \arco sib,2~sib sib4~sib2 r4 |
    r sib2~sib sib4~sib2 r4 |
    r <sol mib'>2~<sol mib'> <fad re'>4~<fad re'> r2 |
    r4 <sol mib'>2~<sol mib'> <fad re'>4~<fad re'> r2 |
    r4 <sib sol'>2~<sib sol'> <si-\thumb si>4~ <si si>2 r4 |
    r4
    \repeat tremolo 8 {sol32 re}
    \repeat tremolo 8 {sol re}
    \repeat tremolo 4 {fad red} fad4 r2 |
    r8 re' mib sib si fad sol re' mib sib si fad |
    sol re'4 sib fad8~ fad re4 mib fad8~ fad2 r4 |
    R2.*3 \clef tenor |
    re'2.~\CaV re~\CaV re~\CaV re~\CaV re~\CaV re2\CaV r4 |
    <re la'>2.~\CaV <re la'>~\CaV <re la'>~\CaV <re la'>2\CaV r4 |
    mi2.\fermata
  }
}

ActeDeuxSceneUnVioloncelleUn = { \VioloncelleUn
  \relative { \clef treble
    \pizz la'4 r r | la r8 la r4 | la la la | 
    la r2 | R2 | R2.*2 | R2 |
    \clef bass r4 << \arco s2 \\ \repeat "tremolo" 4 { si,16 re16 } >>
    \repeat tremolo 6 { si16 re16 } | 
    \repeat tremolo 6 { si16 re16 } | sold,4 r |
    R2. R2 R2.*2 R2 | 
    \t {r8 sold si}sol'!2~ | 
    sol8 sold, sol'!2~ | 
    sol8[ mi~] mi[ red] \t {sol \clef treble do[ si]} | 
    sol'2\glissando |
    la2.~\CaV | la2~\CaV | la2.~\CaV | la2\CaV r4 | R2 | R2.*2 | 
    \ttt { la,8[ la16 la la la]} 
    \ttt {la[ la la la la la]} \clef bass 
    \repeat unfold 3 { \ttt { mi[ mi mi mi mi mi] } } |
	}
}
