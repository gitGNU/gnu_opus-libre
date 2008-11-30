%------------------------------------------------------------------%
% Opéra Libre -- alto1.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

AltoUn = {
  \set Staff.instrumentName = \markup { \hcenter-in #25 "Alto 1  "}
  \set Staff.shortInstrumentName = "Alt. 1  "
  \set Staff.midiInstrument = "viola"
  \clef alto
}

PrologueAltoUn = { \AltoUn
  \relative {
    
    %%% Introduction %%%
    \partial 4 r4 R2.*3 R1
    mi,2~| mi4 r | r16 mi8.~ mi8 r r4 |
    red'2~|red4 r| 
    mi,2.:32~ mi2:32~ mi2:32
    red2. | re!2~|re |
    mi2.:32 mi4 <si' re>~| <si re>8 si \t {si si si} |
    
    %%% Entrée du baryton 2 %%%
    la16 la la la la la la la la la la la |
    la la la la la la la la |
    la la la la la la la la |
    si4. r8 dod, dod |
    r8 dod dod r | r dod dod r dod r |
    r dod dod dod | re re r re re r | r re r4 |
    mi8 mi r mi mi r | mi mi r mi |
    fa2~ fa2 r4 |
    
    %%% Tempo giusto %%%
    <re' re>8 r re, mib |
    re mib re mib re 'mib re' mib, |
    mib, mib mib mib fa fa fa fa |
    lab lab lab lab | \clef treble
    dod16 la dod mi re mi re fad |
    sol mib sol la fa la lab do |
    re4 r2 | r16 sol,, sib do mib do mib fad si mib, fad si |
    re4 r2 | \clef alto
    r16 sib,sib sib sib4:32 r4 |
    r16 dod dod dod dod4:32 r4 |
    r16 mi mi mi mi4:32 r4 | \clef treble
    r16 dod dod dod dod dod dod dod mi mi mi mi |
    sol mi sol la do la do mib fa mib fa lab |
    re4 r \clef alto re,,,4~ | re re2 |
    dod1~ dod4 r R2 R2-\fermataMarkup
    
    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*6 sol''2.~ sol |
    R2.*3 \clef treble r4\fermata \pizz lab'8 |
    
    %%% Andantino %%%
    lab, r lab' lab, r4 |
    lab8 r lab r si,? si' |
    lab r lab' lab, r lab' |
    lab, r lab' lab, r lab' |
    lab, r lab r sol sol, |
    lab' lab, r sol' sol, r \clef alto
    sol r4 | R4.
    r4 sol'8 r do, r |
    r4 sol'8 r do, r |
    r4 sol'8 r re r |
    r4 sol8 r re r |
    r mi r r mi r r fad r |
    \arco solb, mib reb | do4.~ do~ do4 r8 |
    solb' mib reb | do4.~ do~ do4 r8 |
    solb' mib reb | do4.~ do4 r8 |
    fad4 mib8~ mib dod4 |
    
    %%% A tempo %%%
    \t {re16 re' re} re'8 r |
    sold,,4:32 \t {sold16 sol fa} |
    \t {re re' re} re'8 r |
    sold,,4:32~ sold16 r |
    re8:32 fa: sol: <reb'lab'>4.~<reb lab'>~
    <reb lab'>8 r16 <reb lab'> \t {<reb lab'> <reb lab'> <reb lab'>} |
    re,8 \clef treble r16 re' re re |
    dod'8 r16 re, re re | dod'8 r16 re, re re |
    dod'8 r16 re, re re | mi'8 r16 si si si |
    lad'8 r16 si, si si | lad'8 r16 si, si si |
    lad'8 r16 si, si si | lad'8 r16 si, si si |
    lad' lad, dod mi sol lad | sol8 r16 mi, mi mi |
    fa'8 r16 mi, mi mi | mi'8 r16 dod, dod dod |
    mi'8 r16 dod, dod dod | mi'8 r16 fa, fa fa \clef alto |
    r8 r16 sib, sib sib | r8 r16 fad fad fad |
    si8 sib lab | fa4.~ fa~ fa8 r4 | R4.*3
    \t {re16 re re} \t {mi mi mi} \t {fa fa fa} |
    \t {sol sol sol} \t {sib sib sib} \t {do do do} |
    \t {reb reb reb} \t {mib mib mib}
    \t {solb solb solb} \t {lab lab lab} \t {la la la} |
    la8 \clef treble r16 la' la la la8 r16 la la la |
    la8 r16 re, re re r8 r16 dod dod dod \clef alto |
    sol8 r16 \pizz dod, r2 |
    
    %%% Adagio %%%
    R1*4 R1. \arco \ind #"flaut." fa,1:32 mi4 r |
    R1*3 R1. \simile mi1:32 mi4 r |
    R1*2 r8 do~ \t {do mi si'} \t {la mi' re} |
    
    %%% Valse %%%
    sol,2.~ sol2 \clef treble \t {fa'8 la sold} |
    \t {do si red} r2 | re2. la4 fad mi do' r2 |
    do4 sold si mib, | sol4 sol,8 fad mib' re |
    si' sib \t {sol' fad sib} |
    r mi, dod r r dod si r r si sib r |
    mi,4 \ttt {do'16 si do si do si}do4 r |
    R1 R2. \clef alto |
    \pizz do,,4 r2 | fad4 r2 | do4 r2 | fad4 r2 |
    mi4 r sol r |
    \arco <do, la'>4 <do la'>8. <do la'>16 <do la'>8
    <do la'>~ <do la'>16 <do la'> <do la'>8 |
    <do la'>8. <do la'>16 <do la'>8 <la' fad'>~
    <la fad'>16 <la fad'> <la fad'>8 |
    
    %%% Vivo al fine %%%
    <re, la' re>8 r re re |
    re mib16 mib re8 re |
    re fa16 fa re8 re |
    re re re re | mib fa lab sib |
    do re, re re | re re re re |
    re re re re | fad re re re |
    re re16 re mib8 r |
    r8 re16 re fa8 r | r lab mib r |
    re r r4 R2*17
    r4 \pizz mi |
  }
}

ActeUnSceneUnAltoUn = { \AltoUn
  \relative {
    R2*2 R2. R2*2 R2.
    do,8 re fad la do mi fad si do si mi, do la fad |
    re4 do8 re fad la do mi sol re la mi do4 |
    fa8 solb sib do mib solb lab do reb do lab mib sib fa |
    fa solb sib do mib solb lab solb lab solb mib do solb4 |
    la8 \t {mib'16 si' fad'} fad4 do,,8 fa16 la mib'4 |
    la,8 \t {mib'16 si' fad'} fad4 la,,16 la \t {mib' si' fad'} |
    do,,8 la'16 mi' sol4 mi8 \t {sol16 do fad} fad4 |
    la,,8 mi'16 sol mi8 \t {sol16 do fad} fad4 |
    do,8 \t {fa16 lab mi'} mi4 la,,8 do16 fa lab4 |
    do,8 \t {fa16 lab mi'} mi4 do,16 do \t {fa lab mi'} |
    mi8 \t {mi16 lab, fa} fa8 \t {mi'16 lab, fa}
    fa8 \t {mi'16 lab, fa} fa8 \t {mi'16 lab, fa} |
    \ttt {do fa lab mi' lab, fa}
    \ttt {do fa lab mi' lab, fa}
    \ttt {do fa lab mi' lab, fa} |
    \ttt {lab re, sib mi, sib' re}
    \ttt {lab' re, sib mi, sib' re}
    \ttt {lab' re, sib mi, sib' re}
    \ttt {lab' re, sib mi, sib' re} |
    \ttt {lab' re, sib mi, sib' re}
    \ttt {lab' re, sib mi, sib' re}
    \ttt {lab' re, sib mi, sib' re} |
    re sib mi, sib' re sib mi, sib'
    re sib mi, sib' re sib mi, sib' |
    re sib mi, sib' re sib mi, sib'
    re sib mi, sib' |
    do do do do do do do do do do do do |
    do do do do do do do do do do do do |
    do do do do do do do do re fa sol sib \clef treble |
    <fad fad'>4 <fad fad'> <fad fad'> |
    <fad mid'> <fad mid'> <fad mid'> |
    <sold mid'> <sold mid'> <sold mid'> |
    <fad fad'> fad16 fad fa fa fa mib mib mib \clef alto |
    <do, do'>1~ <do do'>2 r4 |
    
    %%% Ad libitum %%%
    r2 <re' fad'>~ <re fad'>2.~ <re fad'>~ <re fad'>4 r r2 | mi2.~ mi4 r2 |
    
    %%% Agitato %%%
    re,16 re re re re re re re re re re re re re re re |
    re2:16 re: re: re: re: re: re: re: re: re: |
    mib4:16 re: re2:16 re: | re: re: re: re: |
    mib4:16 re: re2:16 re: | re: re: re: re: re: re: |
    mib4:16 re: re2:16 mib4:16 re: |
    mib: re: re2:16 mib4:16 re: mib: re: |
    mib2. r4 r8 mib16 mib fab4 |
    r8 fab r4 r16 mib fab8 r4 r8 fab r4 |
    r4 r8 mib16 mib fab4 r r2 |
    r4 r8 mib16 mib fab4 r |
    r4 mib16 mib fab8 mib16 mib fab8 r4 r2 |
    mi'!1. R1.*2 \clef treble |
    
    %%% Allegro non troppo %%%
    sib'16 sib sib sib sib sib sib sib sib sib sib sib sib sib sib sib |
    sib sib sib sib sib sib sib sib sib sib sib sib | sib8 r r4 r2 |
    sib16 sib sib sib sib sib sib sib sib sib sib sib sib sib sib sib |
    sib8 r r4 r2 |
    mib8 sib mib sib mib sib mib sib | mib do mib do mib do mib do |
    mib reb mib reb mib reb | mib reb mib reb mib reb mib reb |
    mi re mi re mi re | mi re mi re mi re mi re |
    fad mi fad mi fad mi | fad mi fad mi fad mi fad mi \clef alto |
    r4 sib,8 mi4. | r8 sol,8~ sol2. |
    sol4 r r2 | r2 r4 \ttt {fad16 la si do re fa} |
    la4 sol,8 re' sol, re' sol, re' | R1
    sol,8 re' sol, re' sol, re' | R2.*2 R1*2 |
    sib16 do r8 sib16 do r8 sib16 do r8 sib16 do r8 | R1
    sib16 do r8 sib16 do r8 sib16 do r8 sib16 do r8 | R1
    
    %%% Moderato %%%
    sib16 do r8 sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 sib16 do r8 |
    sib16 do r8 sib16 do r8 |
    sib16[ do r do] sib16[ do r do] sib16[ do r do] |
    sib16[ do r do] sib16[ do r do] sib16[ do r do] sib16[ do r do] |
    sib16 do r8 sib16 do r8 | sib16 do r8 sib16 do r8 | R2*2
    
    %%% Allegro marcato %%%
    <do, la' sold' re'>4 la' <do, la'> la' |
    <do, la' sold' re'>4 la' <do, la'> r |
    fad fad mib mib <mib la>2 lab8 r r4 | R1
    <la! mib' lab re>4 la re, la' |
    <la! mib' lab re>4 la re, r |
    dod' dod la la <la mi'>2 re8 r r4 | R1
    r4 sold, fa8 r r4 | r sold fa8 r r4 | R1
    sold2 sol8 r r4 |
    r sold fa8 r r4 | r sold fa8 r r4 | R1
    sold2 sib8 r r4 | R1
    r2 r4 \pizz re do la sol r |
    do la sol r r do si la |
    
    %%% Agitato %%%
    \arco re,8 re re re re2:8 | re: re: re: re: |
    re16 mi fa sol sib8 reb solb4 r |
    sib8 sol re sol do sol re sol |
    do sol fa do fa sib fa do |
    fa sib fa do fa do sol do |
    fa do sol do fa do mib lab |
    re lab re, lab' re, lab re lab' |
    mib sib mib lab sol reb sol, reb' |
    <sol, fa'> do mib lab reb mib, lab reb |
    re8 r r4 r1 | R1*2
    do8 la do la do la do la |
    sib sol sib sol sib sol la fa la fa |
    fad mi fad mi dod16 dod dod dod dod dod dod dod |
    dod dod dod dod dod8 r | R2 R1*4
  }
}

ActeUnSceneUnBisAltoUn = { \AltoUn
  \relative {
    R2.*5
    \ttt {re,16 dod mi fa mi sol} lab8 r
    \ttt {re16 dod mi fa mi sol} |lab8 r
    lad16 si lad dod si dod si mi |
    
    %%% Piu vivo %%%
    re4  re, re,2 | mib r4 |
    re''4 r8 re,,~re2 | dod'2 r4 |
    re'4. re | <fad, sold> <si, sold'> |
    <sold fa'> <lad si'> | <lad si'>2.
    R2. r4 <re sol\harmonic re''>2~ <re sol\harmonic re''>4. r8\fermata r4 |
    R2. r4 <re sol\harmonic re''>2~ <re sol\harmonic re''>~
    <re sol\harmonic re''>8 r\fermata r4 | R1 R2
    
    %%% Largo %%%
    R2*3 R2.
    mib,2 mi mi4 |
    fa2~fa4 r2 |
    r2 mi4 sold4 r r2 |
    R1 R2. R2 R1 R2.*2 R2*2 R2. R2*3 R2. R1 R2.
    r4 sib <mib, sib'>2~<mib sib'>
    <fad la>2. r2 <fad la>4 |
    <mi sold>2.
    
    %%% Adagio %%%
    R1*14
    r2 si''~si1
    <re,si'>~<re si'>~<re si'>~<re si'>~<re si'>~
    <re si'>~<re si'>~<re si'>~<re si'>~<re si'>~
    <re si'>4 r <re si'> <re si'> |
    <re si'> <re si'> r2 |
    r4 <re si'> <re si'> <re si'> |
    <re si'> r r2 | R1*3
    R2 \pizz <fa si>4 <fad si> <sol si> r |
    r \arco <mi, si'>
  }
}

InterludeUnAltoUn = { \AltoUn
  \relative {
    R1. R1*3 R1. R1 R1.*2 R1*2 | mi1~\mf mi4 re8( mi) |
    fa1. mi1~ mi4 r2 | R2 R2.
    <la, re>1~--->\f <la re>2 r |
    <la re>1---> r4 sol'-- \clef treble | mi'16\f( fa mi re\> si re la8\!) r4 r8 mi |
    red'2. mi4( fad1--->) sol,2 | fad'2 r | <lab, mib'>2.--->\ff\>
    <lab reb>2.~\p <lab reb>4 r2 | R2.*3 \clef alto
    <solb, sib>2.~\pp <solb sib>~ <solb sib>~ <solb sib>~ <solb sib>2 r4 |
    mib2.~ mib~ mib~ mib R2.*2
  }
}

ActeUnSceneDeuxAltoUn = { \AltoUn
  \relative { 
    %%% Air de la Soprano2 %%%
    
    R2.*2 r4 sold'8 la sold mi re mi 
    sold la sold mi re mi sold4~ | sold2 r4 | R2. |
    sold8 la sold mi re mi sold la 
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | sold mi re mi sold4 | 
    sold8 la sold mi re mi sold la 
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | sold mi re mi sold4~ |
    sold1~ sold2 r2 | R2.*2 | 
    re,4 si' sold8 fad re4 | 
    fad8 re si' sold r fad sold4 | 
    fad4 re8 si' sold4 | si8 sold fad re r4 |
    re'4 la' sold8 mi re4 | 
    mi8 re mi4 la8 re sold, mi | re mi sold4 r | R2.|
    sold8 la sold mi re mi sold la | 
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | 
    sold mi re mi sold4 |
    la,8 si la fa mi fa la si | 
    la fa mi fa la4 la8 si | 
    la fa mi fa la si | 
    la fa mi fa la4 |
    mi si' la8 fa mi4 | 
    la8 fa re' si r si sol'4 | 
    si, mi8 re fa4~| fa2 r4 | \clef treble
    <lab lab'>1~ <lab lab'>2. r4 | 
    <lab lab'> r <lab lab'> | r <lab lab'> r |
    <lab lab'>1~| <lab lab'>4 r \clef alto lab, sol | 
    re'2.~| re2 r4 | R1*2 R2.*2 |
    sold8 la sold mi re mi sold la | 
    sold mi re mi sold4 sold8 la|
    sold mi re mi sold la | sold mi re mi sold4 |
    sold8 la sold mi re4 sold8 la |
    sold mi re mi sold4 sold8 la |
    sold mi re4 sold8 la | sold mi re mi sold4 |
    sold8 la sold mi re4 sold8 la | 
    sold mi re mi sold4 sold8 la |
    sold mi re4 sold8 la | sold mi re mi sold4~|
    sold1~ sold~ sold2.~ sold~ | 
    sold1~ sold~ sold2.~ sold2 r4|
    re8 mi sold la sold mi re mi | 
    sold la sold mi re mi sold la |
    sold mi re mi sold la | 
    sold mi re2~| re2. r4 | R1 | R2.*2 | R1*2 |
    R2.*2 | R1 R1-\fermataMarkup |
    
    %%% Récitatif %%%
    
    r4 r8 reb4.| sib2.~ |sib1~ |sib2 r4 |
    r4 r8 si!4.| sold2.~|sold1~|sold2 r4|
    R2.| r4 r8 si4 do8~ |do2.~ |do8 do~ \t {do do do} 
    do4:32 | do8 r r2 | R2| r4 r8 si4. |
    fad1~|fad~|fad2.~|fad~|fad~|fad2 r4| R2. R1 |
    
    %%% Duo %%%
    
    \pizz <re sib'>4
    \repeat unfold 15 <re sib'> r8 \arco <re sib'> |
    <mi do'> r \pizz <mi do'>4
    \repeat unfold 4 <mi do'> r8 \arco <mi do'> |
    <sol mib'> r \pizz <sol mib>4 <sol mib'> r8 \arco <sol mib'> |
    <fa reb'>8 r \pizz <fa reb>4 <fa reb'> | <fa reb'> r | R2
    \arco si8 
    \repeat unfold 27 si |
    \repeat unfold 14 <dod mi> |
    \repeat unfold 8 <sold' lad>|
    fa2.~ fa~ fa4 r2 R1 |
    
    %%% Piu vivo %%%
    <sol, sol'>2.~ <sol sol'>1 |
    <sol sol'>8 sol fad' sol, mi' sol, |
    dod, sol' do sol sib' sol, |
    sol''2. r4 |
    dod,,4 dod16 dod dod dod dod dod dod dod |
    sol2. r4 |
    dod16 dod dod dod dod dod dod dod dod4 |
    sol4 sol2 r4 |
    dod,8. dod16~ dod4 r |
    r \pizz do'8 la fa dod |
    sol'4 si8 red, fad do |
    sol'4 sol8 lab la sib |
    si4 re8 la fad dod |
    sib'4 sib8 si do dod |
    re4 \arco \tt {re16 do la sol fad} \tt {si sib lab fa mib} |
    re4 \pizz re'8 fa, si sold |
    re4 \arco \tt {re'16 si la sold fad}\tt {do' sib sol fa mi} |
    re4 \pizz re'8 fad, sib sib|
    re,4\arco \tt {re'16 dod si sold fad} \tt {do' sib la sol mi } |
    re4 \pizz re'8 la fad sold |
    dod,4 \arco \tt {dod'16 si sold fad fa} \tt {sib la sol mi re} |
    dod4 r2 |
    
    %%% Poco allargando %%%
    <re' sib'>2.:16 la'4~ | la4. <si re>8~ <si re>2|
    R1
    
    %%% Tempo giusto %%%
    r8 \pizz <sib, re> r <sib re> r <sib re> r <sib re> |
    r <sib re> r <sib re> r <sib re> r <sib re> |
    r <la dod> r <la dod> r <la dod> r <la dod> |
    r <red, si'> r <red si'> r <red si'> r <red si'> |
    r <sol si> <sol si>4 r2 |
    r16 \arco reb'' do sib lab sol fa re reb do sib lab |
    <sol re' lad'>1~<sol re' lad'>2. r4 |
    do,16 mib solb lab si re mi sol \clef treble sib do mib solb |
    lab4. r8 \clef alto |
    <do,, fa\harmonic>2~ <do fa\harmonic>~ <do fa\harmonic> r4 |
    re,16 fad sold si do, mib fad sold si re mi sol |
    la8 \t {re,16 mi re} \ttt {mi re mi la mi re }
    \ttt {mi re mi la mi re} \ttt {mi re mi la mi re} |
    \ttt {si re mi re mi re} \ttt {si re mi re mi re} |
    \ttt {si re mi re mi re} \ttt {si re mi re mi re} |
    \ttt {la re mi re mi la} la8 re |
    \ttt {re,16 mi la la mi re} \ttt {re mi la la mi re} |
    \ttt {sol, mi' la la mi sol,} \ttt {sol mi' la la mi sol,}
    \ttt {sol  mi' la la mi re} | la8 r r2 |
    
    %%% Largo assai %%%
    r4 re2. | dod4. r8 dod4 do4. r8 do4 si4. r8 r4 | r si |
    sib2.~ | sib2. r4 | r2 \pizz la4 lab sol r re r re r r2 |
  }
}

InterludeDeuxAltoUn = { \AltoUn
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    \pizz mib4 si fad' sol, |
    mib' si fa? sib |
    la la'8 re, |
    la4 la'8 re, |
    la4 la'8 re, |
    la4 la' |
    r8 mi, r sib' | r do, r fad |
    r mi r sib' | r do, r fad |
    r mi do' lab' mi'4 r |
    r8 \arco mi,, si' dod re2 |
    r8 mi, si' dod re2 |
    r8 mi, si' dod re2~ |
    re r | R2.
    r8 do, la' si mi2 |
    r8 do, la'4 r | R2. fa2. r4 R2. fa4 r |
  }
}

ActeUnSceneTroisAltoUn = { \AltoUn
  \relative {
    R2.*4 <mi, red'>2.:32~ <mi red'>:~<mi red'>: <mi red'>4 r2 |
    \ind #"pizz. sul tasto" si'4 r sib sol r lab fa sol sib |
    \arco <do, la'>2.:32 R2.
    mib2.:32 re2. la'2.:32 |
    <si lad'>8 <si lad'>4 <si lad'>8 <si lad'>4~
    <si lad'>8 <si lad'>4 <si lad'>8 <si lad'>4~
    <si lad'> r \pizz sol fa r2 |
    r \arco re4 dod2. r2 re4 dod2 r4 |
    
    %%% Lamento %%%
    R1.*6 R1*5/4*5
    <re'dod'>2 <si lad'>4 r |
    <reb do'>2 <sib la'>4 r |
    <re dod'>2 <si lad'>4 r |
    <lab sol'>2 <fad' re'>4 r |
    <sib, sol' mib'>4 <sol' mib'>8 <sol mib'> \t {<sol mib'><sol mib'><sol mib'>}
    <sib, sol' mib'>4 <sol' mib'>8 <sol mib'> \t {<sol mib'><sol mib'><sol mib'>}|
    <mi red'>16 <mi red'> <mi red'> <mi red'> \t {<mi red'><mi red'><mi red'>} <mi red'>8 r4 |
    R2*2
    
    %%% Tempo I %%%
    \pizz la,4 fad r fad mib r r mib r | R2.*2
    \arco do'2.:32 <lab do>: <la re>: sib:
    \repeat tremolo 12 {re32 do} la4 r2 | R2.
    \pizz fa4 r re r2 mib4 |
    
    %%% Tempo II %%%
    R1.*2
    r2 r4 \arco mib2. mi1.~ mi2. r4 r2 |
    mib'1.:32 <mib re'>2.: <mib re'>4 r |
    R1 R2. R2
  }
}

ActeUnSceneTroisBisAltoUn = { \AltoUn
  \relative {
    R1*3 r4 red2 r4 R1*2 r4 do2\CaV r4 R1 |
    r2 <do mib>4 <si fa'> <fad fad'> r r2 |
    R1*14
    fad1~ fad2. r4 |
    r \pizz mib' r mib |
    r mib r mib |
    r mib r mib |
    r mib r mib |
    r mib r mib |
    r mib r mib |
    r <sol, mib'> r <sol mib'> |
    r <mi! sol mib'> r <mi sol mib'> |
    r16 solb' fa' solb, r mib re' mib,
    r mib re' mib, r do si' do, |
    \t {la'8 mib fad} \t {do mib sol,} sib mi, |
    r4 \arco la2 la4 | do2 la~ la1
    R1*3
    <do mib>1 <do mib>2 <do mib> <do mib> <sol do> |
    \pizz <fad fad'>4 r r2 | R1*6
    r4 \arco fad\upbow \ind #"pizz. du pouce" do\thumbpizz r |
    r fad\upbow \simile do\thumbpizz r |
    fad\upbow do\thumbpizz fad\upbow do\thumbpizz |
    r4 <do fa\harmonic do''>2 r4 |
    do'1~\CaV do2\CaV reb do si fad1~fad~fad4 r la2~la fad~fad4 r r2 |
    R1*7
  }
}

ActeUnSceneTroisTerAltoUn = { \AltoUn
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4 r2
    R2. r4 \arco sib2~ sib4 r2 \clef treble |
    sib'16 sib sib sib sib sib sib sib sib sib sib sib |
    sib sib sib sib sib sib sib sib sib sib sib sib |
    si si si si si si si si si si si si si si si si |
    do do do do do do do do dod dod dod dod dod dod dod dod |
    re8 r r4 r \pizz sol8 lab |
    r16 sol r8 sib r sold la r16 sold r8 |
    la sold la r16 sold r8 si r la |
    sib r16 la r8 do si lad si r16 lad |
    r8 dod do re dod mib |
    <re, re'>4 r2 R2.
    \arco <re, sol\harmonic re''>2. ~ 
    <re sol\harmonic re''> ~ 
    <re sol\harmonic re''> ~ 
    <re sol\harmonic re''> ~ 
    <re sol\harmonic re''>4 r2 R2.
    r4 re'4.~ re8\glissando 
    re'2.~ re~ re8 r re,4.~ re8\glissando re'2.~ re8 r re,4.~re8\glissando |
    re'4 si sib <re, re'> r2 \clef alto |
    r4 re,,2~ re r4 |
    
    r  \t {sib'8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {si fad si} \t {fad si fad} si4 r |
    r  \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {si fad si} \t {fad si fad} si4 r |
    r sol'2~\CaV \ordin sol fad4~ fad2 r4 |
    r \simile sol2~\CaV sol fad4~ fad2 r4 |
    r  \t {fad8 re re} \t {si si sol} \t {si re re} \t {fad fad sib~} sib4~ sib2 r4 |
    r  \t {fad8 re re} \t {si si sol} \t {fad' mib mib} 
    \t {si fad' mib} \t {sib' sol sol} | \t {mib si' sol} mib'4 \clef treble
    r16 \pizz mi8. |
    fa4 mi8 fa r16 mi8. | fa4 fad8 sol r16 fad8. |
    sol8 fad sol r16 fad r8 lab | sol4 r r2 \clef alto |
    
    r4 \arco \t {sib,,8 fa sib} \t {fa sib fa} \t {sib fa sib} \t {fa sib fa}
    \t {sib fa sib} | \t {fa sib fa} sib4 r |
    r  \t {sib8 fa sib} \t {fa sib fa} \t {sib fa sib} \t {fa sib fa}
    \t {sib fa sib} | \t {fa sib fa} sib4 r |
    r  \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {fad si fad} \t {si fad si} r2 |
    r4 \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {fad si fad} \t {si fad si} r2 |
    r4 \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {si fad si} \t {fad si fad} si4 r |
    r4 \repeat tremolo 8 {re32 sib}
    \repeat tremolo 8 {re sib}
    \repeat tremolo 4 {red si} | red4 r2 |
    r8 sib' si fad sol re mib sib' si fad sol re |
    mib sib'4 fad re8~ re sib4 si re8~ re2 r4 |
    R2.*4
    do2.~\CaV do~\CaV do~\CaV do~\CaV do2\CaV r4 |
    sold2.~ sold~sold~sold2 r4 |
    dod2.\fermata
  }
}

InterludeTroisAltoUn = { \AltoUn
  \relative {
    r8 \pizz mib, r mib r mib re' mib, |
    r mib r mib re' mib, |
    r mib r4 r2 | R2. R1 R2. \arco
    <sol mib'>1~ <sol mib'>2 r4 |
    r8 mi r mi r mi r mi | r mi r mi r mi |
    <dod'la'>8 <dod la'>4 <dod la'> <dod la'>8 |
    <dod la'> <dod la'>4 <dod la'>8 |
    <si sol'>16 <si sol'> <sold mi'> <sold mi'>
    <si sol'> <si sol'> <sold mi'> <sold mi'>
    <si sol'> <si sol'> <do lab'> <do lab'> |
    <si sol'> <si sol'> <sold mi'> <sold mi'>
    <si sol'> <si sol'> <do lab'> <do lab'> \clef treble
    <re sib'> <re sib'> <si sol'> <si sol'>
    <re sib'> <re sib'> <red si'> <red si'> |
    <fad re'> <fad re'> <red si'> <red si'>
    <fad re'> <fad re'> <sol mib'>8 \clef alto
    sol,16:32 mi: sol: lab: si: lab: si: do: |
    mib: do: mib: mi: sol: mi: sol: lab: | si4 r \clef treble
    fad'8 r r4 |
  }
}
    

ActeUnSceneQuatreAltoUn = { \AltoUn
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    r2 r16 do sib la sib4 sold la8 la r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2
    
    %%% Agitato %%%
    sol2.:32 la: la8 r \t {do, sol' re'} \t {la' re, sol,} |
    do, r r2 r2 r16 si' si si mi2~mi4\glissando sol2. la4 r2 |
    re,,16 mi sol la sib la sib do mib do mib fa |
    re4. re8 \t {re re re} re4 re re |
    re4. re8 \t {re re re} re4 re re |
    re8 re re re re re |
    mib,2.:32 re: fad: |
    la8 la la la la la |
    la r re,16 mi sol la do re mi sol |
    la8 r r mi, \t {mi mi mi} mi mi mi mi mi mi |
    r sib'4 mi sib8 | mi, mi mi mi \t {mi mi mi} |
    r sib'4 mi sib8 | mi4 mi sib |
    mi,16 la re mi sold4 la,16 re mi sold | la4 re,16 mi sold la re4 |
    la8 la,8:16 la2.:16|
    la4 la la | la2.:16 r4|
    la4 la la | la2:16 |
    la4 la la | la2:16 |
    la4 la la | la2:16 |
    la2 la4 |
    
    %%% Placando assai %%%
    sol2. dod,4 sol'2. r4 |
    sol2. dod,4 sol'2. r4 |
    dod,2 re mib mi2.~mi r4 |
    \t {r la la} \t {la la la} \t {la la la} \t {sib sib sib} |
    \t {r la la} \t {la la la} \t {la la la} \t {sib sib sib} |
    \t {r si si} \t {si si si} \t {si si si} \t {si si si} |
    \t {r si si} \t {si si si} \t {si si si} \t {si si si} |
    \t {r <fad lad><fad lad>} \t {<fad lad><fad lad><fad lad>}
    \t {<fa si><fa si><fa si>} <solb do>8 <solb do> |
    \t {r4 <si red><si red>} \t {<si red><si red><si red>}
    \t {<si fad'><si fad'><si fad'>} <dod sol'>8 <dod sol'> |
    R1*4 r2 dod~dod4 dod mi2 dod2. r4 | R2*3 R2.*2
    
    \pizz fad,4 r mib la r2 fa4 r2 si4 r2 |
    
    %%% A tempo %%%
    \arco
    <la si>2<la si>4<la si><si re><si re>2<si re>4<fa'sol><fa sol><fa sol> r |
    \repeat tremolo 16 {sib,32 la}
    \repeat tremolo 12 {sib la}
    \repeat tremolo 16 {sib la}
    \repeat tremolo 12 {sib la}
    sib8 r r4 r2 |
    \repeat tremolo 12 {si32 la}
    \repeat tremolo 16 {si la}
    si8 r16 fad'16:32~ fad8:32 sold8:32~ sold16:32 si8.:32 |
    <sol dod>2 <sol dod>4 <sol dod> <sol dod>4. <sol dod>8~ <sol dod>4 r |
    sib2 r4 sib2 r4 <re, si'>2 <re si'>4 si'8 re, re si' si re, si' re, |
    si' re, re si' si mib, si' mib, |
    <re, dod'>2.~ <re dod'>8 r4 |
    lad'16 sold sold lad lad sold sold lad lad sold sold lad |
    lad sold sold lad lad sold |
    dod2~ dod8 r4 |
    sol16 fa fa sol sol fa fa sol | sol fa fa sol sol fa fa sol |
    sib2~ sib8 r4 |
    lad16 sold sold lad lad sold sold lad |
    lad sold sold lad lad sold sold lad |
    si sold sold si si sold sold si | si sold sold si si sold |
    sold si si sold sold si si sold |
    sold si si sold sold si si sold |
    R2 R4. r4 fad16 la re fa sib re, fa la |
    
    re8 re, re, re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    re' re re, re re' re re, re |
    re' re re, re re' re re, re |
    la'16 la la la la la la la la la la la la la la la |
    la la la la la la la la do do do do do do do do |
    do do do do mib mib mib mib mib mib mib mib mib mib mib mib |
    re re re re re, re re re re' re re re re, re re re | re4 r r2 |
    R1*2 R2 R2.*2 R2 R1 |
    \pizz re4 r2 R2.*2 re4 r2 R2. re4 r2 R2. re4 r2 R2. re4 r2 R2.*2 |
    re4 r2 R2. re4 r2 re4 r2 R2.*2 re4 r2 r4 sib' r r re, r |
    R1. R1 R1. R1 R1. R1 R1. R1
    \arco la''1.~ la2. r4 | R1.*5 R1 R1.
    do,,1~ do1. do4 r r2 R1.*5 R1 R1. R1
  }
}

EntracteAltoUn = { \AltoUn
  \relative {
    R2*9
  }
}

ActeDeuxSceneUnAltoUn = { \AltoUn
  \relative {\clef treble 
    \ttt {
      <la' re\harmonic la''>16[ <la re\harmonic la''>
      <la re\harmonic la''> <la re\harmonic la''> 
      <la re\harmonic la''> <la re\harmonic la''>] 
    } \ttt { \simile la''16 la la la la la }
    \repeat unfold 68 { \ttt { la[ la la la la la] } } la4 r 
    \ttt { si,8[ si16 si si si] } |
    \repeat unfold 8 { \ttt { mi,[ mi mi mi mi mi] } } |  
        
    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {<dod la'>8 <dod la'>16 <dod la'> <dod la'> <dod la'>} <dod la'>8 r r4 |
    r4 r8 \t {<mib, re'>8 <mib re'>16}
    \ttt {<mib re'>8 <mib re'>16 <mib re'> <mib re'> <mib re'>} \clef alto |
    R1 R2. R2 R2. R1
    
    %%% Andantino %%%
    R1*2 R2.*4 R2
    r4 \pizz si mi, r si' lad8 fad mi4 fad8 mi si' lad |
    r fad lad4 r | r8 si lad4 si8 lad fad4 r8 si r fad lad4 |
    \arco si2 r4 | R2
    \pizz fad4 r2 | R1 R2. R1 R2. R1
    r4 do' mi, R1 r4 \arco lab r lab r lab r | R2.
    r4 la? r la r la r |
    <la re>1~ <la re>2. <la re>2 <mi la>
    <la re>2.~<la re>2 <mi la> <la re>2.~ <la re>2. r4 |
    <la re>2.~ <la re>1~ <la re>2 r4 | R1
    
    %%% Entrée de la Contralto %%%
    \pizz fad4 r2 | R1
    fa4 r2 R1 fad4 r fad r fa r mib |
    r \arco <re'sol> r <re sol> r <re sol> r | re r re |
    r mi r mi r mi r | <si mi> <si mi> r <si mi> r mi r r mi r mi |
    r8 \pizz la,4 do re,8 | r4 lab' do re, | r8 la'4 do re,8 | r4 lab' do re, |
    r8 la'4 do re,8 | r lab'4 do re,8 | r sol r2 |
    r8 la4  do re,8 | r lab'4 do re,8 | r la'4 do re,8 | r lab'4 do8 reb,4 |
    r4 la' r8 do | r4 \arco re r re r re | mib,2 r4 si' | r re r |
    r dod r dod r do r | R1
    r8 \pizz la4 do re,8 | r lab'4 lab8 do4 re, | r8 la'4 do re,8 |
    r4 \arco sol2.~ sol2. r4 lab sol fa |
    re2.:32~ re1:32~ re2.~ re4 r | R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisAltoUn = { \AltoUn
  \relative {
    \pizz mi,4 r r2 | R2. R2
    
    %%% Presto Agitato %%%
    R1*5/4*2
    \arco \ind #"sul tasto" <mi'sold>1*5/4~ <mi sold>~ <mi sold>2. r2 |
    <la, red>1*5/4~ <la red>~ <la red>2. r2 |
    R1*5/4*7
    \repeat tremolo 8 { \simile mi'16*5/4 re}
    \repeat tremolo 8 { mi re}
    \repeat tremolo 8 { mi re}
    mi4 r re8 mi re sib la sib |
    re4 r2 re8 sib la sib |
    re4 r2 \ordin re8 re re re |
    <la fad'>4 r2 <la fad'>4 r |
    <la fad'> r <la fad'> r2 |
    <la fad'>4 r r8 <la fad'> r2 |
    <re do'>4 r1 | R1*5/4*8
    fa,?8 re? fa re fa re fa solb fa re |
    fa re fa re fa re fa solb fa re |
    fa re fa re fa re fa solb fa re |
    fa re fa re fa re fa solb fa re |
    fa re fa re fa re fa solb fa re |
    <fad do'>4 r2 <fad do'>4 r |
    <fad do'> r <fad do'> r2 |
    <fad do'>4 r r8 <fad do'> r2 |
    <sib la'>4 r1 | R1*5/4
    <fad dod'>4 r1 | R1*5/4-\fermataMarkup
    
    %%% Boum %%%
    R1*5/4*11 \repeat tremolo 16 {red'32*5/4 mi}
    \repeat tremolo 16 {red32 mi} red4 |
  }
}

ActeDeuxSceneDeuxAltoUn = { \AltoUn
  \relative {
    \pizz sold'4 sold la r r2 | sold4 sold la r r2 | R1.
    sold4 sold la r sold sold | la4 r r1 | R1. R1*2 R2.
    \arco re,,8 r r16 re8 fa16 r fad8. | re8 re16 re re re re re re8 r |
    <la're sold> <la re sold> <sib re la'>4 \t {re,8 mib fa} |
    <la re sold> <la re sold> <sib re la'>4 \t {re,8 fad la} |
    fad1.~ fad1 r2 |
    R1. R1*2 R2.
    <sol dod>16 <sol dod> <sol dod>8 <sol dod> re
    r <sol dod> r re16 red | r mi dod re do mib |
    r8 sold' sold la r4 fad,16 fad fad fad |
    r8 sold' sold la r4 dod,,16 dod re8 \clef treble |
    r8 sold' sold red' r4 \clef alto mid,,16 mid fad8 \clef treble |
    r8 si' si red r4 si,16 si <dod lad' red>8 |
    <red' lad'> \clef alto <fad,,dod'>16 <fad dod'>
    <fad dod'>8 \clef treble <red''lad'> \clef alto
    <fad,,dod'> <dod'sold'>16 <dod sold'> <dod sold'>8 <fad,dod'> |
    sold'16 sold sold sold sold sold sold sold
    sold sold sold sold sold sold sold sold |
    
    R2. R1. R1*2
    r16 do,,fa la do4 r | r16 do, sol' sib do4 r |
    r16 do, fa la do4 r | r16 do, fa sold si4 |
    r16 re, sold si re4 r16 do, la' do |
    r16 do, mi la do4 r | r16 sol sib re do4 r |
    \pizz do, do' R4.
    r8 \arco <la sold'> <la sold'> <re la'> r4 sold,16 sold la8 |
    r <la sold'> <la sold'> <re la'> r4 re,16 re mi8 \clef treble |
    r <mib' lab> <mib lab> <do sib'> r4 sol16 sol la8 |
    r <mi'red'> <mi red'> <fa mi'> r4 si,16 si do8 |
    r <mi mi'> <mi mi'> <fa fa'> r4 \pizz <si, fa'> \clef alto |
    \arco dod16 dod dod8 dod16 dod dod8 |
    dod16 dod dod8 dod16 dod dod8 |
    si16 si dod8 si16 si dod8 | dod4 r |
    mi,16 mi mi mi mi mi mi mi |
    mi mi mi mi mi mi mi mi | <si' mi>1~ <si mi>2 r4 |
    
    R1. R1 R1.
    \t {re8 sib re} \t {sib re sib} \t {re sib re} \t {sib re sib}
    \t {re sib re} \t {sib re sib} | dod2 r4 R1 |
    \pizz <la'la>4 r2 | R1 R2. R1 R2. R1
    \arco mib4 reb dob | sib4 r r2 | R2. R1
    sib4 do! re! mib4 r mi fad | sold r2 | R1
    \pl {la,4\leftpizz s2 s1 s2. s1 s2. s1 s2. }
    {la'2.:32~ \oneVoice la1:~la2.:~la1:~la2.:~la1:~la2.:} |
    <la,la'>4 r R2 \clef treble fad'16 mi fa sol la8 sold |
    do16 lad si dod red8 re fad16 mi fa sol | la4 r r2 \clef alto |
    fa,,16 re mib fa lab fad sol la do4 r | la1:16
    
    <la sold'>4 fa'8 la sold | la la sold r4 |
    <la, sold'> re8 mib sold | la la sold r4 |
    <la,sold'> mib8 mib re | <mib re'>4 <mib re'> r8 |
    <re la' mib'>4 r r8 |
    <la'sold'la>4 r mib'8 | mib re r4 r8 |
    <mib,re'>4 <mib re'> r8 | <re la' mib'>4 r r8 |
    la'8 la sold r4 | r8 mi'4 mi | sib r r8 |
    
    R1*2 <do, la'>4 r r2 |
    r4 \pizz sold' fad r | r fa mib r | R1
    \repeat tremolo 16 { \arco fa32 mi}
    \repeat tremolo 8 { fa mi}
    \repeat tremolo 8 { fad re}
    \repeat tremolo 16 { fad re}
    <dod' red>4 r2 | r8 \pizz fa, r4 |
    R1*2 R2.*4 r4 fa' r r fa r R2. |
    
    r16 \arco mi do mi r red si red |
    r re sib re r dod la dod |
    r do lab do r si sol si r sib solb sib |
    r do la do r si sold si r sib sol sib |
    r la fad la r lab fa lab |
    r sol mi sol r fad red fad |
    dod8 r sol' r do, r fad r | fa r mi r |
    \pizz <re sib'>4 <re sib'>8 \arco sold'16 sold |
    <sib, re la'>8 r \pizz <re,sib'>4 |
    <re sib'>8 \arco sold'16 sold <sib, re la'>8 r |
    \pizz <re, sib'>8 \arco sold'16 sold la8 fad16 fad |
    sol8 mi,16 mi r8 red16 red |
    r8 re16 re r8 dod16 dod |
    r do lab' do r si sol si |
    r sib solb sib r la fa la | R2
    r8 dod16 dod do8 r | R2
    \pizz <re, sib'>4 <re sib'>8 \arco sold'16 sold |
    la8 r16 re,, mi8 r16 mi | re8 si'!16 si lad8 r |
    R2*2 \pizz re,4 r fa r mib r R2 |
    
    \arco \ind #"flautando sul tasto"
    la2.:32~ la:~ la:~ la:~ la:~ la:~ la2 r4 |
    R2.*2 sol'16 sol lab8 sol16 sol lab8 r4 |
    R2.*4 sold16 sold la8 sold16 sold la8 r4 |
    r sold16 sold la dod, r4 |
  }
}
