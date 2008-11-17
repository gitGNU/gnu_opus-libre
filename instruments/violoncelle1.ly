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
    r4 red''4:32 ~ red8 r
    \t {mi,,8 mi mi} mi'2.~mi2~mi~mi2.~mi2~mi~ <mi la>2.~<mi la>4 
    <mi la>~<mi la>8 la \t {la si re}|
    la'2 r4 dod,,,16 dod dod re re re mi mi | 
    sol sol sol sib sib sib do do | 
    dod2 r8 sol r dod r sol | dod4 dod sol8 dod~|
    dod4 r | sol dod sib8 dod~| dod sol dod4 | 
    dod sol8 dod r sib | 
    r dod4 sol8 | sib2~ sib r4 |
    
    %%% Tempo giusto %%%
    re8 re, re re' | re re, re re' |
    re re, re re' | re, re mib re | fa re lab' fa |
    sib lab si dod | dod, r r4 | R2
    re4 re'8 re re re | lab2 r4 |
    re,4 r8 re' re re | fad,2. mib do |
    sib'2 sol4~ sol mi2 | re2.~ re4 r8 sol' mi re |
    dod1~ dod4 r R2 R2-\fermataMarkup |
    
    %%% Solo ténor %%%
    R1*2 R2. R1 R2. r2 sol'2~\CaV
    sol~\CaV sol~\CaV sol~\CaV sol~\CaV
    sol2.~\CaV sol~\CaV sol2~\CaV r4 R2.*2
    r2 \repeat tremolo 4 {sol,32 lab} sol'2. R2.
    sol'4 sol,,\leftpizz r |
    sol'' sol,,\leftpizz r | R2. R4.
    
    %%% Andantino %%%
    \pizz sol8 r4 | sol8 r4 | R4.*2
    sol8 r4 | sol8 r4 |
    sol8 r4 | sol8 r4 |
    sol'8 r4 \clef treble | mi''8 r4 \clef bass |
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
    sib4.~ sib~ sib~ sib4 r8 | R4.*2
    fa16:32 solb: lab: si: dod: re: |
    mi: re: dod: si: lab: solb: |
    lab: sib: si: dod: mi: fad: |
    sol: fad: mi: dod: si: lad: |
    si: dod: mi : fad: sol: la: |
    do: la: sol: fad: mi: dod:  |
    \t {la16 la la} \t {si si si} \t {re re re}
    \t {mi mi mi} \t {re re re} \t {mi mi mi} |
    \t {fa fa fa} \t {sol sol sol}
    \t {sib sib sib} \t {do do do} \t {reb reb reb} |
    re8 r r4 re, | fa8. lab fa8 mib re | do2 r4 |
    
    %%% Adagio %%%
    R1*2 r2 r8 mi, \t {mi mi mi} |
    \repeat tremolo 16 {\ind #"sul G" mi'32 fa}
    \repeat tremolo 16 {mi32*3/2 fa} |
    mi4 r r1 | R1 r2 r4 \pizz la, |
    %% FIXME: Issue #704 (ugly, ugly, ugly!)
    \stemUp \repeat tremolo 16 {\arco \ind #"sul G" mi'32 fad}
    \repeat tremolo 16 {mi32*3/2 fad} \stemNeutral |
    mi4 r r1 | R1 r2 r4 \pizz <sold, sold'>\plak |
    \repeat tremolo 12 {\arco \ind #"sul D" mi'32 sol}
    
    %%% Valse %%%
    sol,2.~ sol4 r dod~ | dod2 r4 |
    sol2 r4 | dod2 r4 | sol2 r4 |
    sib4 r mi, r | \ttt {re'16 mib re mib re mib}
    \ttt {re mib re mib re mib} \ttt {re mib re mib re mib}
    re4 r \clef treble |
    \pizz dod''4 r si r sib sib |
    mi \ttt { \arco mi,16 red mi red mi red} mi4 r \clef bass |
    r4 do,2 r4 | fad,2 r4 | do'2 r4 | fad,2 r4 |
    do'2 r4 | fad,2 r4 | mi r sol r |
    <do, si'>2 <do si'>4 <do si'>8 <do si'>~ |
    <do si'> <do si'> <do si' mi la>4 <do si' mi la> |
    
    %%% Vivo al fine %%%
    <re' re'>8 re <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <re mib> <re mib> |
    <re mi> <re mi> <re sol> <re sol> |
    <re la'> <re la'> <re la'> <re la'> |
    <re sib'> re re re |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    re re re re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    mib mib re re mib mib re re |
    re re re re re r re r |
    re4 r | R2*7 r4 \pizz mi,
  }
}

ActeUnSceneUnVioloncelleUn = { \VioloncelleUn
  \relative {
    do,,2 do'\CaV fad, r4 |
    do2 do'\CaV fad,4 fad2 |
    do2 do'\CaV fad,4. fad8 do' sol |
    do,2 do'\CaV fad,2 si8 fad |
    <do do'>2 do' fad,8 fad~ fad2 |
    <do do'>2 <do do'> fad2~ fad8 fad' |
    do16 fa, do' la'~ la mib' \t {la, do, fa,} fa2 |
    do'16 fa, do' la'~ la mib' \t {la, do, fa,} \t {fa8 fa fa} |
    fa2 do'16 fa, do' la'~ la mi'! \t {la, do, fa,} |
    fa4 do'16 fa, do' la' sol' la, do, fa, |
    mi' lab, mi' la do la mi lab, lab2 |
    mi'16 lab, mi' la do8 \t {la16 mi lab,} \t {lab8 lab lab} |
    <reb, lab'>2 \ttt {do''16 la mi lab, mi' la} do la mi lab, |
    reb,4 lab'16 mi' la mi lab,4 |
    \t {sol8 mi' sib'} re16 sib mi, sol,
    do, sol' mi' sib' \t {re8 sib mi,} |
    \t {sol, mi' sib'} re16 sib mi, sol, \t {do,8 sol' mi'} |
    \ttt {sib'16 mi, sol, do, sol' mi'}
    \ttt {sib' mi, sol, do, sol' mi'}
    \ttt {sib' mi, sol, do, sol' mi'}
    \ttt {sib' mi, sol, do, sol' mi'} |
    \ttt {sib' mi, sol, do, sol' mi'}
    \ttt {sib' mi, sol, do, sol' mi'}
    \ttt {sib' mi, sol, do, sol' mi'} |
    \t {do,8 reb mib} \t {fad sold la} \t {si re mi} |
    <do, sol' re'>4 do do |
    \t {fad8 sold la} \t {si re mi} \t {fa sol sib} |
    fad'4 fad,,8 fad fad fad |
    fad fad fad fad \t {fad si dod}
    <fad, lad mi'>4 fad8 fad fad fad |
    \t {fad si dod} mi fad, \t {fad' la sol} |
    <do,, do'>1~ <do do'>2 r4 |
    
    %%% Ad libitum %%%
    R1 R2. do'2.~ do4 r r2 | mi2.~ mi4 r2 |
    
    %%% Agitato %%%
    re,8 re re re mib mib re re |
    mib4:8 re: mib: re: mib: re: mib: re: |
    mib: re: mib: re: mib: re: mib: re: |
    mib: re: mib: re: |
    mib: re: mib: re: mib: re: |
    mib: re: mib: re: mib: re: mib: re: |
    mib: re: mib: re: mib: re: |
    mib: re: mib: re: mib: re: mib: re: mib: re: mib: re: |
    mib: re: mib: re: mib: re: |
    mib: re: mib: re: mib: re: mib: re: |
    mib8 fab mib fab mib fab mib fab mib fab mib fab |
    mib fab mib fab mib fab mib fab mib fab mib fab |
    mib fab mib fab mib fab mib fab mib fab mib fab |
    mib fab mib fab mib fab mib fab |
    mib fab mib fab mib fab mib fab mib fab mib fab |
    si1. R1.*2
    
    %%% Allegro non troppo %%%
    \pizz sib'4 r r2 | R2. sib4 mi, r \t { \arco mi8 si dod} |
    sib8 r r4 r2 | \pizz sib'4 mi, r \t { \arco mi8 dod si} |
    sib8 r r4 r2 R1 R2.
    \pizz sib'4 r r2 | R2. sib4 r r2 | sib4 sib sib sib r r2 |
    \arco sol,2. sib4 r r2 |
    \ttt {sol16 lab sib dod red mi} \ttt {fad mi red dod sib lab}
    \ttt {sib dod red mi fad la} \ttt {si la fad mi red dod} |
    \ttt {red mi fad la si do} \ttt {re do si la fad mi} red8 r r4 |
    R1 \clef treble |
    la''16\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV
    la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV | R2.
    la16\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV |
    la16\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV |
    la\CaV la\CaV r8 la16\CaV la\CaV r8 la16\CaV la\CaV r8 la16\CaV la\CaV r8 | R1
    la16\CaV la\CaV r8 la16\CaV la\CaV r8 la16\CaV la\CaV r8 la16\CaV la\CaV r8 | R1
    la16 la r8 la16 la r8 la16 la r8 la16 la r8 | R1 \clef bass
    
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
    fa fa la la sold2 la8 r r4 | R1
    <fa sib mi la>4 <sib dod>16 <sib dod> <sib dod> <sib dod> <sib dod>4 r |
    <fa sib mi la>4 <sib dod>16 <sib dod> <sib dod> <sib dod> <sib dod>4 r |
    re re sib sib <sol re' la'>2 si8 r r4 | R1*3
    fa'4 fa mi mi mib2 re8 r r4 | R1*2
    fa4 fa mi mi red2 do8 r r4 | R1
    r2 r4 \pizz fa mib re do r la sol fad r r reb' do sib |
    
    %%% Agitato %%%
    \arco re16 mib fa lab sib lab fa mib re8 lab' <re,! reb'> lab' |
    re,16 mi sol la sib la sol mi re8 <re sib'> <re mib'> <re sib'> |
    re16 fa sol lab sib lab sol fa re8 <re dod'> <re mi'> <re dod'> |
    re16 re re re re re re re re re re re re re re re |
    <la re>8 re <re la'> re <la re> re <re la'> re |
    <re re> re <sol la> re <re re> re <sol la> re |
    <re re> re <sol re'> re <re re> re <sol re'> re |
    <re sol> re <do' fa> re, <re sol> re <do' fa> re, |
    <re sol> re <do' fa> re, <re sol> re <do' fa> re, |
    <sol, re'> re' \clef treble <fa' do'> \clef bass re,
    <sol, re'> re' \clef treble <fa' do'> \clef bass re, |
    re \clef treble <fa' do'> \clef bass re, \clef treble <solb' reb'> \clef bass
    re, \clef treble <lab'' mib'> \clef bass re,, \clef treble <la'' mi'> \clef bass |
    <re,, mib'>8 r r4 r1 | R1*2
    
    R1 R2. R2 \clef treble re''16\CaV re\CaV re\CaV re\CaV re\CaV re\CaV re\CaV re\CaV |
    si si si si si si si si | si si si si si8 r | R2 R1*4
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

InterludeUnVioloncelleUn = { \VioloncelleUn
  \relative {
    R1. R1*3 R1. R1 R1.*2 R1*2
    la4 r r1 \clef treble r8 do si'2.~ si4 la~ la sold2.~ sold4 r2 |
    R2 \clef bass r4 \ttt {r16 fa mi re la si}
    \ttt {sold la sold fad dod red} |
    <sol, re'>1~ <sol re'>2 <sol re'>8 do sib sol \clef treble |
    <re'' la'>1 r4 r8 lab' sol'1~ sol2 r \clef bass |
    <sol,,, re'>4 <sol re'> <sol re'> <sol re'> <sol re'> <sol re'> |
    <sol re'> r r2 | <fa' sol>2. sol2 r4 | R2.*4
    si,2.~ si~ si~ si~ si8 sib4 lab si8 |
    sol'2.~ sol~ sol~ sol R2.*2
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
    lab8 lab~ \t {lab lab lab} lab4:32 |
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

InterludeDeuxVioloncelleUn = { \VioloncelleUn
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    \pizz \t {si,8 fad' sol} mib'4 |
    \t {re,8 sol sib} mib4 |
    \t {si,8 fad' sol} mib'4 |
    \t {sib,8 mib sol} do4 |
    \t {sol,8 re' la'} mi'4 |
    \t {sol,,8 re' la'} mi'4 |
    \t {sol,,8 re' la'} mi'4 |
    \t {mi,8 la do} fa4 |
    lab,8 do, sol' si, solb' sib, fa' la, |
    lab' do, sol' si, solb' sib, fa' la, |
    lab'4 mi' R2 |
    \arco mi,1~ mi~ mi~ mi2 r | R2.
    do1~ do2 r4 | R2. la2. r4 R2. lab4 r |
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

ActeUnSceneTroisBisVioloncelleUn = { \VioloncelleUn
  \relative {
    R1*3 \clef tenor
    r4 la'2\CaV r4 | R1*2 r4 fad2 r4 | R1 \clef bass |
    r2 lad,,4 sold fad r r2 | R1*6
    fad1~fad~fad~fad~fad2. r4 | R1*9
    mi'1 mi2 mi <sold, mi'> <sold mi'> <sold mi'> <sold mi'> <sold mi'> <fa dod'>|
    do2. R1*7
    <sold' dod>4\glissando <si mi>8 r <sold dod>4\glissando <si mi>8 r
    <sold dod>4\glissando <si mi>8 r <sold dod>4 lad |
    fad1~fad~fad~fad~fad~fad~fad2. r4 | R1*3 \clef tenor
    r4 la''2\CaV r4 \clef bass |
    mi,2 mib re1 reb2 do si1~si~si4 r r2 |
    R1*2 fad'1 mi~mi~mi~mi~mi~mi\fermata
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

InterludeTroisVioloncelleUn = { \VioloncelleUn
  \relative {
    r8 \pizz mib, r mib r mib r mib | r mib r mib r mib |
    r4 \arco mib2.~ mib2 r4 R1 R2. R1 R2.
    <si fa'>4 <si fa'> <si fa'> <si fa'>8 <do solb'> |
    <si fa'>4 <si fa'> <si fa'>8 <do solb'> |
    <si fa'>4 <si fa'> <si fa'>8 <do solb'> |
    <si fa'>4 <si fa'> |
    r8 <sol red'> r <sol red'> r <sol re'> |
    r <sol red'> r <sol re'> |
    r <sol mi'> r <si sold'> |
    r <si sold'> r <red si'> |
    sol,16:32 mi: sol: lab: si: lab: si: do: |
    mib: do: mib: mi: sol: mi: sol: lab: \clef tenor
    si4 fa' sib8 r r4 |
  }
}

ActeUnSceneQuatreVioloncelleUn = { \VioloncelleUn
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    R2. sol4 fa mi8 la, r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2

    %%% Agitato %%%
    r4 \t {la8 re sol} \t {do sol re} | la r r2 |
    <sol re'>2.:32 <sol re'>8 r r2 | r4 sib'8 fa4 fad8 |
    sol2~sol4\glissando sib2. la2.:32 la8 r r4 fad16 mib sib sol |
    re4 r2 | re'16 si' si si mi8 mi, la la, | re4 r2 |
    re16 dod' dod dod fad8 fad, si la, | re4 r8 re fad, si |
    mib,4 r8 reb4 sol8 | do4 r8 fa la, re |
    fad,4 r8 la4 mib'8 | lab4 r8 la reb, solb |
    sib,4 r8 sib4 sib8 | mi4 la16 re la re dod re dod re |
    sol, la dod re la re la re dod re dod re |
    sol, la dod re la re la re dod8 sib, | mi4 r8 mi, \t {mi mi mi} |
    r8 sib'4 mi sib'8 | mi,4 mi sib8 mi~ | mi2 re4~ | re fa2 |
    dod2~dod8 r r4 | r8 sol4 dod sol8 | dod2. r4 |
    r8 sol4 dod sol8 | dod2 | r8 sol4 dod sol'8 | dod,2 |
    r8 sol4 dod, sol'8 | dod4 sol | dod2 sol4 |
    
    %%% Placando assai %%%
    dod2. dod4 sol2. r4 | dod2. dod4 sol2. r4 |
    dod,2 re mib mi2.~mi2. r4 |

    %%% Andante a piacere %%%
    fa1~ fa2 reb fa1~ fa2 reb |
    fa1~ fa2 reb fa1~ fa2 reb |
    sol2. r4 r8 dod,4 sol' dod,8 |
    sol'2. r4 r8 dod,4 sol' sol8 |
    dod,8 r r4 r2 | R1*6 R2*3 R2.*2

    %%% Poco a poco piu mosso %%%
    \pizz sol'4 r sib dod r2 la4 r2 do4 r2 |

    %%% A tempo %%%
    \arco
    <do,do'>4 r8 fad4 do' fad,8 |
    <do do'>4 r8 fad4 do' fad,8 |
    <do do'>4 <do do'> r8 fad r4 \clef tenor |
    la''1~\CaV la4 r2 \clef bass |
    la,,1~ la4 r2 | R1 la2.~ la1~|
    la8 r16 \clef tenor <re'fad>~ <re fad>8 <mi sold>~
    <mi sold>16 <sol si>8. \clef treble |
    <dod, dod'>2 <dod dod'>4 <dod dod'> |
    <dod dod'>4. <dod dod'>8~ <dod dod'>4 r \clef bass |
    <sol,sol'>2 r4 sol' sol sol fa2 fa4 |
    fa~ \t {fa8 fa4~} \t {fa4 fa8~} fa4 |
    r fa~fa8 mib \t {mib mib fad} |
    
    re2. r8 re r | sold,2 si4~si8 dod4 |
    re2  r8 re r | la4. sib8~ sib8. do16~do4 |
    mib2 r8 mib r| si2~ si8 do~ do16 re8. |
    fa2~ fa4 r8  | fa,2~ fa |
    R2 R4. re16 fa sib dod fad sib, dod fad la dod, fad la |
    re4 re, re re | <re mi>\CaV <re mi>\CaV <re mi>\CaV <re mi>\CaV |
    <re sol>\CaV <re sol>\CaV <re sol>\CaV <re sol>\CaV |
    <re do'> <re do'> <re do'> <re do'> <re fa'> re re re |
    re8 re re, re re' re re, re |
    re' re re, re re' re re, re'|
    re'16 re re, re re, re re' re re, re re' re re' re re, re |
    re8 re' re, re, re' re, re'4 | re8 re re4 r2 |
    R1*2 R2 R2.*2 R2 R1 |

    %%% Piu lento %%%
    r2 \clef treble sib''4~sib2 r4 | R2.
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 | R2.
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 | R2. \clef bass
    r4 \pizz sib,, r r re, r |
    
    %%% Stesso tempo %%%
    la'4 r r fad' r r | la, r r2 |
    la4 r8 red r2 fa4 r | la, r r2 |
    la4 r8 mi' r4 fad, r8 mib' r4 | la, r r2 |
    R1. R1
    \arco fa'1. fad2. r4 |
    \pizz la4 r r2 r4 re,8 sol |
    la4 r r2 fa8 mib sib' do |
    la4 r r4 do8 sol fa re mi' si |
    la4 r fa8 sol do sib reb mib, lab solb |
    la4 sib8 mib dod si fad sold fa re mi' si |
    la4 r r2 | R1. R1
    \arco sold,2 la1 sib4 r \pizz sib reb |
    la4 r r2 r4 mi''8 si |
    la4 r r2 dod8 red, sold fad |
    la4 r r4 fad8 si dod mi re, sol |
    la4 r dod8 si fad sold fa mib sib' do |
    la4 sold8 red fa sol do sib dod mi re, sol |
    la4 r r2 R1. R1
  }
}

EntracteVioloncelleUn = { \VioloncelleUn
  \relative {
    sold,2~sold~sold sold~sold sold sold~sold4 sold~|
    sold4 sold8 \t {sold16 fa sol} |
  }
}

ActeDeuxSceneUnVioloncelleUn = { \VioloncelleUn
  \relative { \clef treble
    \pizz la'4 r r | la r8 la r4 | la la la | 
    la r2 | R2 | R2.*2 | R2 |
    \clef tenor r4 << \arco s2 \\ \repeat tremolo 4 { si,16 re16 } >>
    \repeat tremolo 6 { si16 re16 } | 
    \repeat tremolo 6 { si16 re16 } | sold,4 r |
    R2. R2 R2.*2 R2 | 
    \t {r8 sold si}sol'!2~ | 
    sol8 sold, sol'!2~ | 
    sol8[ mi~] mi[ red] \t {sol \clef treble do[ si]} | 
    sol'2\glissando |
    la2.~\CaV | la2~\CaV | la2.~\CaV | la2\CaV r4 | R2 | R2.*2 | 
    \ttt { la,8[ la16 la la la]} 
    \ttt {la[ la la la la la]}
    \repeat unfold 3 { \ttt { mi[ mi mi mi mi mi] } } |
    
    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {sold16 sold sold sold sold sold} \t {sold sold sold} r8 r4 |
    r4 r8 \t {sib16 sib sib} \ttt {sib sib sib sib sib sib} \clef bass |
    R1 R2. R2 R2. R1
    
    %%% Andantino %%%
    \pizz sib,,4 fa' r2 R1 R2. mi4 si' r R2. mi,4 si' lad R2
    R2. si,4 fad' r mid8 dod si4 r |
    r4 \arco re'2~\CaV re2.~\CaV re1~\CaV re2\CaV r4 | r8 \pizz lad si4 |
    fad,4 r2 R1 R2. R1 R2. R1
    sib4 fa' r | \arco sib,2. r4 R2. R1 sib2 r4 R1 R2.
    fad1 fad2.~ fa2. r4 | fad2.~ fad1 fa2.~ fa2. r4 |
    fad2.~ fad2. r4 |
    
    %%% Entrée de la Contralto %%%
    R2. R1 fad2.~ fad4 r r2 |
    fa2.~ fa4 r r2 | fad2. fa2 mib |
    do4\thumbpizz \pizz si'8 mi fad4 re'8 fad, mi4 fad8 mi do4 mi8 do si4 fad |
    do r r2 | r2 do4 | r8 re' mi la r sold la re |
    r4 \arco do,,2 reb mib |
    fad4\thumbpizz r2 | \pizz fa4 r r2 | fad4 r2 | fa4 r r2 |
    fad8 fad' r2 | sol,8 re' fa4 sib8 do mib4 r \arco fa,, |
    sib r2 | si4 r2 | sib4 r2 | si4 r2 | mi4 r2 |
    re'2.~\CaV re2.~\CaV re2\CaV r | mib,2. |
    re1~ re4 r2 | R1 \pizz lab4 r2 | la4 r r2 | lab4 r2 |
    \arco sol1~ sol2. R1
    re''2.~\CaV re1~\CaV re2.~\CaV re4\CaV r4 |
    R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisVioloncelleUn = { \VioloncelleUn
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
    dod2 re mi4 sol1*5/4~ sol2. r2 |
    <do re>4 r2 <do re>4 r | <do re> r <do re> r2 |
    <do re>4 r r8 <do re> r2 | si,4 r1 |
    R1*5/4*5
    r2 r8 red, fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    <sol dod>4 r2 <sol dod>4 r | <sol dod> r <sol dod> r2 |
    <sol dod>4 r r8 <sol dod> r2 | <solb fa'>4 r1 |
    R1*5/4 <fa re'>4 r1 | R1*5/4-\fermataMarkup |
    
    %%% Boum %%%
  }
}

ActeDeuxSceneDeuxVioloncelleUn = { \VioloncelleUn
  \relative {
    R1.*4 \clef treble la'1.~\CaV la4\CaV r r1 | R1*2 \clef bass
    re,2.~\CaV re8 r r16 re,,8 fa16 r16 fad8. |
    \t {re8 mib fa} lab re, \tt {re16 mib fa lab sib} |
    si8 re, \ttt {mib16 fa lab sib si dod} mi8 fa, |
    \ttt {lab16 sib si dod mi fad} sol8 sib,
    \ttt {si16 dod mi fad sol la} | la,1.~ la1 r2 |
    
    R1. R1*2 si'2.~ si8 r r16 si,8 re16 r16 red8. r4 |
    r16 mi, dod re do mib |
    si'4 r8 fad'16 fad fad fad fad fad fad4 |
    r8 fad16 fad fad fad fad fad
    fad fad <sol, fad'> <sol fad'> <re' la'> <re la'> <sol, re'> <sol re'> |
    r8 mid'16 mid fad8 si, si16 si si si si si si si |
    r8 mid16  mid fad8 si, si16 si si si fad' fad fad fad |
    fad fad fad fad fad8 si, fad' si, fad'16 fad fad fad |
    fad fad fad fad fad8 si, fad' si, la do |
    
    sold2.~ sold1 r2 | R1*2
    \pizz do4 do' r | do, do' do, | fa, do'' r | fa,, si' |
    fa, re'' r | \arco mi,2.~ mi2 r4 |
    r16 sol, mi' sib' do4 |
    
    r16 la, fad sol fa lab |
    \stemDown mi8 \clef treble sold'' \stemNeutral sold la r4 %% FIXME: Issue #400
    \clef bass <re,,la'>16 <re la'> <sol, re'> <sol re'> |
    \stemDown mi8 \clef treble sold'' \stemNeutral sold la 
    \clef bass <si,, mi>16 <si mi> <si mi> <si mi> <si mi> <si mi> <si mi> <si mi> |
    \stemDown mi,8 \clef treble lab'' \stemNeutral lab sib
    \clef bass <la,,re>16 <la re> <la re> <la re> <sol' do>8 <la, re> \clef treble |
    r8 red'' red mi r4 \clef bass sol,,16 sol sol8 \clef treble |
    r8 mi'' mi fa \clef bass r8 r16 la,,, fad sol fa lab |
    mi8 \pizz si' <fad'dod'>4\arpeggio |
    mi,8 si' <fad'dod'>4\arpeggio | mi,8 si' fad' dod, | mi4 dod8 do |
    mi4 r8 mi | mi4 r |
    \arco <dod la'>1~ <dod la'>2 r4 |
    
    R1. R1 R1. <re' la'>1. fa2 r4 | R1 \clef treble
    la'2.:32~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV
    la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV
    la4 r2 R1 R2. \clef tenor r2 r4 \pizz <la, sold'>8 <la sold'> |
    <sib la'>4 r <lad sold'>8 <lad sold'> | <si la'>4 r r2 | R2. \clef bass
    
    <la,la'>16 <la la'> <la' la> <la la> <la la> <la la> <la, la'> <la la'> |
    la2:16
    <la la'>16 <la la'> <la' la> <la la> <la la> <la la> <la, la'> <la la'> |
    la2:16 la4 |
    mib16 do reb mib fad8 fa sib16 sol lab sib reb8 do |
    fa mib lab sol do4 la4:16 |
    la,1:16 |
    
    <la sold'>4 do'8 reb do | sold sold la r4 |
    sold,8 sold la r4 | sold'8 sold la r4 |
    <la, sold'>4 r r8 | la4 la r8 | sold4 r r8 |
    <la sold' la>4 r re8 | re mib r4 r8 |
    <sold, re'>4 <sold re'> r8 | <la re>4 r r8 |
    dod dod do r4 | r8 sol'4 sol | si, r r8 |
    
    R1*2 lad4 r r2 | r4 \pizz mi sol r | r do la r |
    R1 \arco mi2 \repeat tremolo 8 {mi32 red} |
    \repeat tremolo 16 {fa mib} |
    \repeat tremolo 16 {fa mib} |
    <re' dod'>4 r2 | r8 \pizz si r4 |
    R1*2 R2.*4
    r4 fad' r | r mi r | R2. \clef treble |
    
    \arco la'2 sol4 fa mi fa8 mi fa sol |
    la4 mi r R2 \clef tenor r8 <sold, mi'> r <red' fad> |
    r16 sold mi sold r sol mib sol |
    r fad re fad r fa reb fa |
    r mi do mi r red si red |
    re8 \clef bass \pizz <re, sib'>\arpeggio r <re sib'>\arpeggio |
    r \simile <re sib'> r <re sib'> |
    r <re sib'> r <re sib'> |
    r <re sib'> r <re sib'> |
    \arco sold, \pizz sold' \arco sol, r |
    do r fad, r | si r fa r | sib r mi, r |
    R2 r8 la'16 la sold8 r | R2
    r8 \pizz <re sib'> r <re sib'> |
    r <re sib'> r sold | <sib, re>4 r |
    R2*2 sib4 r fa r mib r | R2 \clef treble
    
    la''2. sol fa mi fa4. mi fa sol la4 mi r |
    R2.*9
  }
}
