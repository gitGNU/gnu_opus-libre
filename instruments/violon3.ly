%------------------------------------------------------------------%
% Opéra Libre -- violon3.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

ViolonTrois = {
  \set Staff.instrumentName = \markup { \hcenter-in #23.5 "Violon 3  "}
  \set Staff.shortInstrumentName = "Vl. 3  "
  \set Staff.midiInstrument = "violin"
}

PrologueViolonTrois = { \ViolonTrois
  \relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2.  la'''2.~\pp\<\upbow la2.~ 
    la2:16~\f\> la4:32~ la8\! r 
    \ten mi,,2~\f| mi4 r | mi2.~| mi4 r | mi2\f\> mi2.~\mp| mi4 r R2 |
    <sol,? re'>2.~| <sol re'>4 r | R2 sib2.~|
    si!4 mi8--\<( mi--) \t {mi--( mi-- mi--)} \tt {mi16--( mi-- mi-- mi-- mi--)} |
    
    %%% Entrée du baryton 2 %%%
    re2--->\f r4 | re16\mf re re re re re re re
    re\< re re re re re re re | fad4.--->\f r8 sid,-.-> r | 
    r sid-.-> r4 | r8 sid-.-> r4 sid8-.-> r |
    r4 sid\upbow \glissando | dod8-> r r dod-.-> r4| r8 dod-.-> r4 |
    red8-.->\mf r r4 red8-.-> r | r red4.\upbow\> mi2~--\p mi r4 |
    
    %%% Tempo giusto %%%
    re16->\p re re re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    mib mib mib mib mib mib mib mib |
    fa8 r r4 | R2
    <re re'>4\f\downbow re\downbow re\downbow |
    lab2-- r4 | <re re'>4.\downbow re\upbow |
    sib2.:32\mp\downbow dod: mi: |
    reb4.\< mi | sol8 la4 do8 mib4 |
    <re, re'>4\f r8 <re re'>4-> re'8-. |
    <re, re'>4-> re'8-. <re, re'>4-> re'8-. |
    <re, re'>2.---> r4 | R2*2 R2-\fermataMarkup
    
    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*11
    r4\fermata \pizz sol'8\p |
    
    %%% Andantino %%%
    <sol,,sol'> r sol'' <sol,, sol'> r sol'' |
    sol,, sol''-> sol, lab'-> r sib-> |
    <sol,, sol'> r sol'' <sol,, sol'> r sol'' |
    <sol,, sol'> r sol'' <sol,, sol'> r sol'' |
    sol,, sol'' sol, r4 lab8 r4 sol8 |
    r4 lab,8 sol r4 | R4.*12
    \arco fa'16\>( la sib dod) fa8 |
    \ten <mi sol>4.~\pp <mi sol>~ <mi sol>~ <mi sol>8 r lab,16( sib) |
    reb( mi8) <fad si>8.~ | <fad si>4.~ <fad si>~ <fad si>8 r r16 red |
    mi8 <fad la>4~ <fad la>4.~ <fad la> r16 sold,\<( si mi) sol( la\!) |
    
    %%% A tempo %%%
    re 8\sfz\> \t {re,16( lad fad} re8-.\!) | sold,4~--\mf sold16 r |
    re'''8-.\sfz \t {re,16( la sol} re8-.) | sold,4~--\mf sold16 r |
    si16 mi lab\< reb fa sib |
    fa8->\f r16 fa fa fa fa8-> r16 fa fa fa |
    fa8-> r16 fa fa fa |
    sold8-> r4 | \pizz re,8->\mf r dod re-- r4 |
    re8-> r dod fa-- r4 | si8-> r4 |
    si8-> r4 | \arco si8-.->\mf r4 |
    mi8-.-> r \ind #"jeté" mi32 mi16. | r8 mi-.-> r |
    sol8\f r16 sold,\< sold sold sol'8\! r16 sold,\< sold sold |
    sol'8\! r16 fa,\< fa fa sol'8\! r16 fa,\< fa fa |
    dod''8\! r16 sol,-. sol-. sol-. | r8 r16 mib-.\mf mib-. mib-. |
    r8 r16 sol,-.\mp sol-. sol-. | R4.
    \ten sol!4.~ sol~ sol8 r4 | R4.*4
    \t {sol16\ppp sol sol} \t {sib sib sib} \t {do do do} |
    \t {reb\< reb reb} \t {mib mib mib} \t {solb solb solb}
    \t {lab lab lab} \t {la la la} |
    la'8\ff r16 do do do do8-> r16 do do do |
    dod8-> r16 sol-.\mf sol-. sol-. r8 r16 mi-.\< mi-. mi-. |
    si-.\p fad-. mi'-. sold,-. sold-. sid,-. r8 r4 |
    
    %%% Adagio %%%
    %% FIXME: Issue #318
    R1*4 R1. \stemDown \repeat tremolo 16 {\ind #"flaut." mi32\pp( fa)} \stemNeutral mi4 r |
    R1*3 R1. \repeat tremolo 16 {\simile mi32\pp( red} mi4) r |
    R1*2 mi4.\mp si'8-- la--( re--) |
    
    %%% Valse %%%
    si2.~\pp si4 r2 R2. |
    \pizz sol,4\mp red' sol | dod, fa r |
    sol, si red r lad r si sol
    \arco \ttt {lad16\pp( si lad si lad si}
    \ttt {lad si lad si lad si)} |
    \ttt {lad( si lad si lad si}
    \ttt {lad\> si lad si lad si)} |
    r8 sol''\pp( fad) r r fad( mi) r r re( dod) r |
    mi4 \ttt {sol16\>( lab sol lab sol lab} sol4\!) r | R1 R2.
    r4 \pizz sold,,\mp do sib fad' r |
    r sold, do sib re r | r la r sold |
    \arco <la fad'>8.->\mf <la fad'>16 <la fad'>8-.
    <la fad'>~-> <la fad'>16 <la fad'> <la fad'>8-. 
    <fad' re'>8.-> <fad re'>16 |
    <fad re'>8-. <fad re'>~->\< <fad re'>8. <fad re'>16 <fad re'>4-> |
    
    %%% Vivo al fine %%%
    <re re'>4->\sfz r |
    r8 re16-.\mf re-. re8-> r |
    r re16-. re-. re8-> r | R2
    re16( mib) re( mib) re( mib) re( mib) |
    re( fa) re( fa) re( fa) re( fa) |
    re\< re re re re re re re |
    re\f\> re la la la la si si |
    la8\mp r r4 | R2*21
    r4 \pizz mi'\mp |
  }
}

ActeUnSceneUnViolonTrois = { \ViolonTrois
  \relative {
    R2*2 R2. R2*2 R2.
    R2*2 \ind #"flaut." sol'4.\pp r8 r4 |
    R2*2 <la, re>4. r8 r4 |
    R2*2 <sold' dod>4. r8 r4 |
    R2*2 <do reb>4.--\mp r8 r4 |
    mib,16\pp( la, mib' si'~ si fad'--) \t {si,( mib, la,)}
    mib'( la, mib' si'~ si fad'--) \t {si,( mib, la,)} |
    \simile mib' la, mib' si'~ si fad' \t {si, mib, la,} mib' la, mib' si' |
    mi, la, mi' do'~ do red \t {do mi, la,}
    mi' la, mi' do'~ do red \t {do mi, la,} |
    mi' la, mi' do'~ do red \t {do mi, la,} mi' la, mi' do' |
    \ttt {do,\ppsempre lab' mi' mi lab, do,}
    \ttt {do lab' mi' mi lab, do,}
    \ttt {do lab' mi' mi lab, do,}
    \ttt {do lab' mi' mi lab, do,} |
    \ttt {do lab' mi' mi lab, do,}
    \ttt {do lab' mi' mi lab, do,} do8 r |
    \ttt {fa16 reb' la' la reb, fa,}
    \ttt {fa reb' la' la reb, fa,}
    \ttt {fa reb' la' la reb, fa,}
    \ttt {fa reb' la' la reb, fa,} |
    \ttt {fa reb' la' la reb, fa,}
    \ttt {fa reb' la' la reb, fa,} fa8 r |
    \ttt {sib,16\mp( re lab' fa' lab, re,}
    \ttt {sib re lab' fa' lab, re,}
    \ttt {sib re lab' fa' lab, re,}
    \ttt {sib re lab' fa' lab, re,)} |
    \ttt {sib( re lab' fa' lab, re,}
    \ttt {sib re lab' fa' lab, re,}
    \ttt {sib re lab' fa' lab, re,)} |
    \ttt {\simile re solb reb' sib' reb, solb,}
    \ttt {re solb reb' sib' reb, solb,}
    \ttt {re solb reb' sib' reb, solb,}
    \ttt {re solb reb' sib' reb, solb,} |
    \ttt {re\<( solb reb' sib' reb, solb,)}
    \ttt {re( solb reb' sib' reb, solb,)}
    \ttt {re( solb reb' sib' reb, solb,)} |
    <do do'>4\f\downbow <do do'>\downbow <do do'>\downbow |
    reb8 mib fad sold la si
    \t {mib,16\fp\< mib mib} \t {fad fad fad} \t {sold sold sold}
    \t {la la la} \t {si si si} \t {re re re\!} |
    <fad, fad'>4\downbow <fad fad'>\downbow <fad fad'>\downbow |
    sol8 la do re red mid |
    \t {la,16\< la la} \t {do do do} \t {re re re}
    \t {red red red} \t {mid mid mid} \t {sold sold sold\!} |
    <fad, mid'>4\downbow <fad do'>8-- re'-- \t {red16\< red red} \t {mid mid mid} |
    \ten <do, do'>1~\fmolto <do do'>2 r4 |
    
    %%% Ad libitum %%%
    R1 R2.*2 R1 R2.*2
    
    %%% Agitato %%%
    \ten re,1~\ff re~ re2 r | R1 sold,4\f\upbow si2 sold4 si2 re4-> r |
    r4 \ind #"secco" dod8-.\mf dod-. re4-. r r2 | R1*2
    r4 la8-. la-. sib4-. r r2 | R1*3
    r4 dod---> r1 | R1*2 R1.*3
    r4 r8 \st {mi16 mi red4 r |
    r4 mi16 mi red8 mi16 mi red8} r4 r2 |
    \ten mi1.\f R1.*2
    
    %%% Allegro non troppo %%%
    \pizz sib'4\mf r r2 | R2. R1
    \arco sib8-.\pp do-. sib-. do-. sib-. do-. sib-. do-. | R1
    sib8-. sib-. sib-. sib-. \simile sib sib sib sib |
    sib sib sib sib sib sib sib sib |
    sib sib sib sib sib sib |
    sib sib sib sib sib sib sib sib |
    sib\mp sib sib sib sib sib |
    sib sib sib sib sib sib sib sib |
    sib\mf\< sib sib sib sib sib |
    sib sib sib sib sib sib sib sib\! |
    r4 mi,8\f\<( dod'4.\!) | r8 re,\mf( dod2.) |
    sol2:32~\mp\< sol2~\mf\> sol2.\p r4 |
    <sol re'>8\mf <sol re' la'> <sol re'> <sol re' la'>
    <sol re'> <sol re' la'> <sol re'> <sol re' la'> R1
    <sol re'>8\mf <sol re' la'> <sol re'> <sol re' la'>
    <sol re'> <sol re' la'> R2.*2
    R1*6
    
    %%% Moderato %%%
    do8--\p[ r16 do-.] do8-- r do--[ r16 do-.] do8--[ r16 do-.] | 
    do8--[ r16 \simile do] do8 r do[ r16 do] do8 r |
    do8[ r16 do] sib-.[ do-. r do] sib8--[ r16 do-.] |
    sib8--[ r16 \simile do] sib8[ r16 do] sib8[ r16 do] |
    sib8[ r16 do] sib8[ r16 do] do8[ r16 do] do8[ r16 do] |
    sib8[ r16 do] sib8[ r16 do] sib8[ r16 do] |
    sib8[ r16 do] do8[ r16 do] sib8[ r16 do] sib8[ r16 do] |
    sib8[ r16 do] sib8[ r16 do] sib8[ r16 do] |
    do8[ r16 do] do8[ r16 do] sib8[ r16 do] sib8[ r16 do] |
    sib8[ r16 do\pp] sib8 do16-. sib-. r8 do16-. sib-. |
    r8 \simile do16 sib r do sib8 r16 do sib8 r16 do sib8 |
    do16 sib r8 sib16 do sib8 r16 do sib8 |
    do16 sib r8 do16 sib r8 do16[ sib r do] sib8[ r16 do] |
    sib8[ r16 do] sib8 do16 sib r8 r16 do |
    sib8[ r16 sib] r8 do16 sib r8 do16 sib r8 sib |
    r16 do\ppsempre sib8 r8 do16 sib r do sib8 |
    r16 do sib8 r16 do sib8 do16 sib r8 do16 sib r8 |
    do16[ sib r do] sib8[ r16 do] sib8[ r16 do] |
    sib8 do16 sib r8 do16 do | sib8\sfz r r2 |
    \repeat tremolo 16 {sib32\pp\< do} |
    sib8->\f r16 do32-. do-. sib8-> r16 \simile do32 do |
    sib8 r16 do32 do sib16 r \t {do16 do sib} | R2*2
    
    %%% Allegro marcato %%%
    \acc {<dod sold' sol'! red'>4\sfz dod\mp <dod sold'> dod |
    <dod sold' sol'! red'>4\sfz dod <dod sold'>} r |
    \st {do!\p do sol sol} <la re>2--->( mi'8) r r4 | R1
    \acc {<mib lab re sol>4\sfz do?\mp <si? fa'> do |
    <mib lab re sol>\sfz do <si fa'>} r |
    \st {sol'\p sol fad fad} <mi si'>2--->( sol8) r r4 | R1
    r4 dod,\mp\>( sib8\!) r r4 | r dod\>( sib8\!) r r4 |
    \st {sib\p sib la la} lab2\>( sol8\!) r r4 |
    r dod\mp\>( sib8\!) r r4 r dod\>( sib8\!) r r4 |
    \st {sib\p sib lab lab} sold2\>( sib8\!) r r4 | R1
    r2 r4 \pizz fa'\p mib( re do) r mib( re do) r |
    r do\> si la\! |
    
    %%% Agitato %%%
    \arco <do re>2.\f r4 | R1*2
    re2-- fad8-.\<( la) re16( mi fa sol) |
    \st {sib8\sfz re,,\pp mib'-> do mib-> <la,, sol'> <la sol'> fa''-> |
    do do mib-> sol, mib'-> do re, fa'-> |
    sol, mib'-> sol, mib'-> do re, fa'-> sol, |
    do mib-> sol, do fa-> sol, fa'-> do |
    fa-> sol, do fa-> lab, do fa-> sol, |
    fa'-> sol, do fa-> sol, fa sol sib-> |
    sol sib mib-> reb mib sol-> mib-> lab->} |
    sol->\sfz r r4 r1 | R1*2
    \ind #"staccato leggiero" mib16\pp mib fa fa mib mib fa fa mib mib fa fa mib mib fa fa |
    do do mi mi do do mi mi do do mi mi |
    sol sol re re sol sol re re |
    do\p do do do do do do do |
    sol sol sol sol re re re re |
    re\< re re re re8-.->\! r | R2 R1*4
  }
}

ActeUnSceneUnBisViolonTrois = { \ViolonTrois
  \relative {
    R2.*5
    r4 \ttt {lab16\p( sol sib si lad dod) } re8-- r |
    \st {sol16 lab sol sib si dod si mi fad\< sol} la-- do-- |
    
    %%% Piu vivo %%%
    re4\sfz\downbow re,\downbow re,2\downbow | R2.
    re''4\f\downbow r8 re,,~\downbow re2 | R2.
    <do' la'>4->\ff <do la'>8-- <do la'>4-> <do la'>8-- |
    <si sold'>4-> <si sold'>8-- <lab sol'>4-> <lab sol'>8-- |
    si4-> si8-- <mi dod'>4-> <mi dod'>8-- | <mi dod'>2.--->
    R2. r4 sib,2~--\p sib4. r8\fermata r4 |
    R2. r4 sib2~-- sib~ sib8 r\fermata r4 | R1 R2
    
    %%% Largo %%%
    R2*3 R2. R2 R2.
    lab2~lab4 r2 |
    <sol mib'>2 sol4 lab4 r r2 |
    R1 R2. R2
    r2 r8 si4. |
    la2.~ la2 r4 |
    <sol mi'>2 sib~ sib4 r2 |
    R2*3 R2. R1 R2.
    r4 <sib re> <sib mib>2~<sib mib>
    <la red>2. r2 <la red>4 |
    <sold mi'>2.
    
    %%% Adagio %%%
    R1*33 R2*4
  }
}

InterludeUnViolonTrois = { \ViolonTrois
  \relative {
    R1. R1*3 R1. R1 R1.*2 R1
    r2 re8\mf( mi \t {fa la sold} |
    si1.~) si1~ si4\> la~ la sold2.~\p sold4 r2 |
    R2 r4 \ttt {r16 re\p( mi fa la sold}
    \ttt {si\< sold la si mi sol} |
    fa1~--->\f) fa2 r8 fa4( sol8) |
    fad'1~---> fad4 r | sib,1~---> sib4 r8 dod,( sib'2) |
    sol1---> fad2 | sol \ttt {fad16( sol la sib mib reb} fad8) r |
    <mib, la>2.--->\ff\> |<mib lab>2.~\p <mib lab>4 r2 | R2.*3
    sib,2.~\pp sib~ sib~ sib~ sib2 r4 |
    sib2.~ sib~ sib~ sib \pizz fad'4 r sol r sold r |
  }
}

ActeUnSceneDeuxViolonTrois = { \ViolonTrois
  \relative {
    %%% Air de la Soprano2 %%%
    
    R2.*2 R1*2  R2. |
    sold'8 la sold mi re mi | sold la sold mi re mi sold4 |
    sold8 la sold mi re mi sold la sold mi re mi sold4 |
    R2.| la,4-. re-. mi8( re la4-.) | re8( la mi' re)-. r re mi4-. |
    re-. la8( mi' re4)-. | la'8( sold mi re)-. r la' |
    R1*2 |  R2.*2 |
    sold8( la sold mi re mi sold la | 
    sold mi re mi sold4)-. sold8( la |
    sold mi re mi sold la | sold mi re mi sold4)-. |
    R1 | re4-. la'-. sold8( mi re4-.) |
    mi8( re la' sold)-. r la | sold mi re mi sold4-. |
    r4 <re sol\harmonic> r2 | 
    r8 <re sol\harmonic> r2 <re sol\harmonic>4 |
    r8 <re sol\harmonic> r4 <re sol\harmonic> | 
    r4 r8 <re sol\harmonic> r4 |
    r <sol' do\harmonic> r2 r8 <sol do\harmonic> r2 <sol do\harmonic>4 |
    r8 <sol do\harmonic> r4 <sol do\harmonic> |
    r4 r8 <sol do\harmonic> r4 | 
    r4 <sol,, do\harmonic> r2 | la4 re8 si r la si4 |
    re4 sol8 fa do'4 | fa,8 sol si do r4 |
    sol, do re8 fa re do | 
    sol do re fa re do sol do | re2.~| re4 r2 | 
    lab'8 sib re mib fa, lab sib re | 
    re, fa re do sol2~| sol2.~| sol2 r4 |
    R1*2 R2.*2 R1*2 R2.*2 |
    <re' la'!>1~\CaV <re la'>~\CaV | 
    <re la'>2.~\CaV <re la'>~\CaV| 
    <re la'>1~\CaV <re la'>~\CaV | 
    <re la'>2.~\CaV <re la'>2\CaV  r4|
    sold8 la sold mi re mi  sold la |
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | 
    sold mi re mi sold4 |
    sold8 la sold mi re mi  sold la | 
    sold mi re mi sold4 sold8 la |
    sold mi re mi sold la | 
    sold mi re mi sold4 |
    R1*2 R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1 R1-\fermataMarkup  |
    
    %%% Récitatif %%%
    
    R2.*2 R1 R2.*3 R1 R2.*2 |
    r4 r8 fad4 mib8~| mib2.~| 
    mib8 mib~ \t {mib mib mib} \repeat tremolo 8 mib32 |
    mib8 r8 r2 | R2 | R2.| R1*2| R2.*5| R1|
    
    %%% Duo %%%
    
    r8 \pizz <sib re>
    \repeat unfold 15 {r8 <sib re>} <sib re>4 |
    \repeat unfold 7 {r8 <do mi>} |
    \repeat unfold 3 {r8 <red fad>} <red fad>4 |
    \repeat unfold 4 {r8 <dod fad>} r4 | R2
    \arco re8
    \repeat unfold 27 re
    \repeat unfold 14 sold
    \repeat unfold 8  red'
    do do re'! sol, do, re' | 
    sol, do, re' sol, do, do |
    R2. R1 |
    
    %%% Piu vivo %%%
    <sol, sol'>2.~ <sol sol'>1
    sol4:16 lab: sib: reb: mi: fad:
    <sol,sol'>4 <sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> |
    dod2 r4 |
    <sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'>4 |
    dod2 r4 |
    sol4 sol \t {mi' re fa} |
    dod2 \tt {sib16 la lab sib si} |
    sol4 r2 |
    \pizz sol4 sol sol sol r2 |
    si4 si si | sib r2 |
    \arco re4 r8 re r16 re re8 |
    re4 \pizz sib8 mib mi la |
    \arco <re, re'>4 \pizz sib8 mib fad si |
    \arco <re, re'>4 \pizz sib8 mib sold dod |
    \arco <re, re'>4 \pizz sib8 fad' mi sold |
    \arco <re  re'>4 \pizz do8 fa fad si |
    \arco <mi, mi' mi>4 \pizz red8 sold si mi |
    \arco <sol,, sol' sol'>4 \tt {mi'16 fa sol sib do} \tt {dod re mi sol la} |
    
    %%% Poco allargando %%%
    <re, sib'>2. re4~ | re4. <sol, mi'>8 ~ <sol mi'>2 si la4 r |
    %%% Tempo giusto %%%
    re,16 re dod dod sib sib dod dod re re dod dod sib sib dod dod |
    re re sib sib re re sib sib re re sib sib re re sib sib |
    fa' fa mi mi do do mi mi fa fa mi mi do do mi mi |
    fad fad re re sib sib re re fad fad re re fad fad re re |
    sol sol mi mi si si mi mi sol sol si si la la do do |
    dod2 r4 |
    <sol, fa' sib\harmonic fa''>1~ <sol fa' sib\harmonic fa''>~ <sol fa' sib\harmonic fa''>4 r2
    R2
    <fa' sib\harmonic fa''>2~ <fa sib\harmonic fa''>~ <fa sib\harmonic fa''>2.~
    <fa sib\harmonic fa''>8 r dod16 mi fad la si re mi sol |
    <re, re' mi>4 <re re' mi> <sol la mi'> <sol la mi'> |
    <re re' mi> <re re' mi> <sol la mi'> <sol la mi'> |
    <la la'>8 mi16 sol si re mi sol |
    <re, sol' la>4 <re sol' la> <sol la mi'> <sol la mi'> <sol' la>
    \pizz <fa sol>8 r r2 |
    
    %%% Largo assai %%%
    R1 R2.*3 R2
    \arco sib,,2.~ sib2. r4 | 
    r2 \pizz fa'4 mi | mib r la, r | re r r2 |
  }
}

InterludeDeuxViolonTrois = { \ViolonTrois
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    \pizz sol4--\mf \t {re'8 mib sib'} |
    si,4-- \t {re8 fad si} |
    sol,4-- \t {re'8 mib sib'} |
    re,4-- \t {mi8\< la dod} |
    re4--\psubito \t {sol,,8 re' la'} |
    mi'4 \t {sol,,8\< re' la'} |
    mi'4 \t {la,8 re sol} | do4--->\fp lab, |
    <do sib'> <mib, si'> |
    <re sib'> <reb la'> |
    <do lab'> <si sol'> |
    <sib solb'> <la fa'> |
    <lab mi'> mi'' mi'-> r |
    \arco \ten si,,1~\p si~ si~ si2 r | R2.
    \ten la1~ la2 r4 | R2. si2.--\pp r4 R2. la4-- r |
  }
}

ActeUnSceneTroisViolonTrois = { \ViolonTrois
  \relative {
    R2.*5 <sib la'>2.:32~ <sib la'>: <sib la'>4 r2 |
    r4 \pizz si r | r sol r r8 sib r dob sib4 |
    \arco la2. R2.*2 sold2. <la sold'>2. |
    <si lad'>2.:32~ <si lad'>:~ <si lad'>4 r \pizz sol sib r2 |
    R2.*4
    
    %%% Lamento %%%
    R1.*6 R1*5/4*5 R1*4
    \arco <sib sol' mib'>4 <sol' mib'>8 <sol mib'> \t {<sol mib'><sol mib'><sol mib'>}
    <sib, sol' mib'>4 <sol' mib'>8 <sol mib'> \t {<sol mib'> <sol mib'> <sol mib'>}|
    <sib la'>16 <sib la'> <sib la'> <sib la'> \t {<sib la'><sib la'><sib la'>} <sib la'>8 r4 |
    R2*2
    
    %%% Tempo I %%%
    \pizz la,4 si r do la r |
    R2.*6 \arco fa'2.:32
    \repeat tremolo 12 {re32 fa} lab4 r2 |
    R2. \pizz sib,4 r sold r2 la4 |
    
    %%% Tempo II %%%
    R1.*3 r2 sol1~ sol2. r4 r2 |
    r2 r4 la'2.:32 <la sold'>2.: <la sold'>4 r | R1 R2. R2
  }
}

ActeUnSceneTroisBisViolonTrois = { \ViolonTrois
  \relative {
    R1*8 r2 red4 mid fad4 r r2 |
    R1*20
    sol,1 sol2 sol sol sol sol sol |
    la'4 si8 r fad4 la8 r | do,8 mib16 r sib8 do16 r sol8 sib16 r |
    R1*16
    r2 r4 r8 \pizz si |
    r si r4 r r8 si |
    R1*3
    r2 \arco <sold mi'> <sol mib'> re' | fad4 r r2 |
    R1*4
    dod1 la~la~la~la~la~la\fermata
  }
}

ActeUnSceneTroisTerViolonTrois = { \ViolonTrois
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4 r2
    R2. \arco si2.~ si4 r2 |
    \pizz <sib sib'>4 r2 R2.
    <mib sol>4 r r2 <mi sold>4 r <fa la> r |
    <re re'> r r2 R1*3 R2. |
    
    %%% Poco meno %%%
    \arco
    <re sol\harmonic re''>2.:32 ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>4
    \ordin re''2:32~ re2.: ~ re:~ re: ~ re4: ~ si: sib:
    re,2.:32~\CaV re8\CaV r r2 | R2.*13
    
    r4 <sol,, fad'>2 <sol fad'> <sol fad'>4~<sol fad'>2 r4 |
    r  <sol fad'>2 <sol fad'> <si! sib'>4~<si sib'>2 r4 |
    R2.*3 R1 R2.
    r4 si?2~ si4 sib2 | R2.
    r4 \t {sib8 mi sib} \t {mi sib mi} \t {sib mi sib} \t {mi sib mi} sib4 |
    r  <sib sol'>2~<sib sol'> <re fad>4~<re fad> r2 |
    r4 <sib sol'>2~<sib sol'> <re fad>4~<re fad> r2 |
    r4 <sib sol'>2~<sib sol'> <fad'fad>4~ <fad fad>2 r4 |
    r  \t {sol8 re re} \t {sib sib sol} \t {sib' sol sol}
    \t {re re sib} \t {si' fad fad} \t {red red si}
    \t {red' si fad} \t {sol' re sib} |
    r mib re si sib sol fad' mib re si sib sol |
    fad' mib re si sib sol fad mib4 sib sol8~ sol2 r4 |
    R2.*4
    
    la'4 sol fa mi fa8 mi fa sol la4 mi2~ mi2.~ mi2 r4 |
    R2.*5
  }
}

InterludeTroisViolonTrois = { \ViolonTrois
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    <lad fad'>16 <lad fad'>8 <lad fad'> <lad fad'> <lad fad'>
    <lad fad'> <lad fad'> <la fa'> <si sol'>16 |
    <lad fad'><lad fad'>8<lad fad'><lad fad'>
    <la fa'> <sol red'> <lad fad'>16 |
    <fad'do'> <fad do'>8 <fad do'> <fad do'>
    <la fa'> <sol mib'> <lad fad'>16 |
    <fad do'> <fad do'>8 <fad do'> <fad do'> <fad do'>16 |
    <sold mi'> <sold mi'>8 <sold mi'> <sold mi'>
    <sold mi'> <fad re'> <la fa'>16 |
    <sold mi'> <sold mi'>8 <sold mi'> <sold mi'> <sold mi'>16 |
    <si sol'> <si sol'>8 <si sol'>16 <si sol'> <si sol'>8 <si sol'>16 |
    <si sol'> <si sol'>8 <si sol'>16 <si sol'> <si sol'>8 <si sol'>16 |
    R2*2
    \tt {sol,16 si sib re dod} fa32 mi lab sol si sib re dod |
    la'8 r r4 |
  }
}

ActeUnSceneQuatreViolonTrois = { \ViolonTrois
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    R2. re4 si si8 dod r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2
    
    %%% Agitato %%%
    do2.:32 re: <re la'>: <re la'>8 r la' mi' si' mi, | la, r r2 |
    R2.*2 re,2.:32 re8 r sib16 do mib fa fad sold si dod |
    re8 sol do re, sol16 la, la la | re4 r2 |
    re8 sold dod red, sold16 la, la la | re4 r2 |
    re,4 r16 la la la re8 r |
    <re mib>4 r8 <re mib> \t {<re mib><re mib><re mib>} |
    <re mi>4 <re mi> <re mi> |
    <re fad> r8 <re fad> \t {<re fad><re fad><re fad>} |
    <re la'>4 <re la'><re la'> | <re la'> r8 <re la'> r <la' mi'> |
    dod re dod la sol la | dod re dod la sol la |
    dod re dod la sol sib | re mib re sib lab sib |
    re mib re si! la! si | red mi la red, mi la |
    sold16 la sold mi re mi sold la sold mi re mi |
    sold la sold mi re mi sold la sold mi re mi |
    la8 r r4 r2 | <la,, re>4 <la re> <la re> <la re>2. r4 |
    <la re>4 <la re> <la re> <la re>2 <la re>4 <la re> <la re> |
    <sib mib>2 <sib mib>4 <sib mib> <sib mib> |
    <si mi>2 <si mi> <si mi>4 |
    \t {r4 si si} si2~ si2. r4 |
    \t {r4 si si} si2~ si2. r4 |
    \t {si si si} \t {sib sib sib} \t {la la la} |
    \t {sold sold sold} sold~ sold2. r4 |
    
    %%% Andante a piacere %%%
    \t {r4 dod dod} \t {dod dod dod} \t {re re re} \t {mib mib mib} |
    \t {r4 dod dod} \t {dod dod dod} \t {re re re} \t {mib mib mib} |
    \t {r4 fa fa} \t {fa fa fa} \t {fad fad fad} \t {sol sol sol} |
    \t {r4 fa fa} \t {fa fa fa} \t {fad fad fad} \t {sol sol sol} |
    \t {r <red la'><red la'>} \t {<red la'><red la'><red la'>} |
    \t {<mi sold><mi sold><mi sold>} <mi la>8<mi la> |
    \t {r4 <lab re> <lab re>} \t {<lab re><lab re><lab re>} |
    \t {<sib mi><sib mi><sib mi>} <sol mib'>8<sol mib'> |
    R1*7 R2*3 R2.*2
    \pizz si,4 r lab do r2 sib4 r2 re4 r2 |
    
    %%% A tempo %%%
    \arco
    <si re>2 <si re>4 <si re> |
    <re mi> <re mi>2 <re mi>4 |
    <re sol> <re sol> <re sol> r |
    R1 R2. R1 R2.
    la1:32 <si red>2. <dod re>2 sib4 do | dod2 r4 |
    <dod' la'>2 <dod la'>4 <dod la'> <dod la'>4. <dod la'>8~<dod la'>4 r8 la16 dod |
    fa2 \t {fa,8 la dod} fa2 \t {sol,8 si red} |
    sol8. sol16 sol8 sol4 sol8 | sol8. sol16 sol8 sol4 sol8~sol4 |
    <si, sold'>~\t{<si sold'>8<si sold'>4~}\t{<si sold'><si sold'>8~}<si sold'>r|
    si,16 dod dod si si dod dod si si dod dod si |
    si dod dod si si dod | sol2.~sol8 r4 |
    si16 dod dod si si dod dod si | si dod dod si si dod |
    sol2~sol4. r8 |
    re'16 mi mi re re mi mi re | re mi mi re re mi |
    re2~re4 r |
    mi16 re re mi mi re re mi | mi re re mi mi re |
    re mi mi re re mi mi re re mi mi re re mi mi re |
    R2 R4. r2 sib'16 dod fad la |

    re4 r r dod16 do sib do, | 
    re,4\CaV re16 re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    do do do do do do do do do do do do do do do do |
    do do do do do do do do mib mib mib mib mib mib mib mib |
    mib mib mib mib fa? fa fa fa fa fa fa fa fa fa fa fa |
    re8 re re4 re' re,8 re | R1*3 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    R2.*11
    r4 sib2~ sib r4 |
    r4 sib2~ sib r4 |
    r4 sib2~ sib r4 | R2.
    r4 sib2~ sib r4 | R2.
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5
    R1 R1. R1 R1.
    R1 R1.*5 R1 R1. R1
  }
}

EntracteViolonTrois = { \ViolonTrois
  \relative {
    R2*9
  }
}

ActeDeuxSceneUnViolonTrois = { \ViolonTrois
\relative {
    la''2.~\CaV la2.~\CaV la2.~\CaV la4\CaV r2 
    R2 R2.*2 R2 si2.~ si2.~ si2.~ si4 r |
    R2. R2 | r4 r8 fad~ fad4~| fad2.~| fad2 | 
    sib2.~| sib2.~| sib2.~| sib4 r | 
    <re,, sol\harmonic re''~>2. \simile re''2~ re2.~ re2.~ re4 r |
    \ttt { re8[ re16 re re re] } \ttt { re16[ re re re re re] } 
    \ttt { re16[ re re re re re] } | 
    \repeat unfold 3 { \ttt { si16[ si si si si si] } } | 
    \repeat unfold 5 { \ttt { si16[ si si si si si] } }
   
    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {re16[ re re re re re] } \t {re re re} r8 r4 |
    r4 r8 \t {mi,16 mi mi} \ttt {mi mi mi mi mi mi} | R1 R2. R2 R2. R1
    
    %%% Andantino %%%
    R1*2 R2.*4 R2
    R2.*5 R1 R2. R2
    r4 re, r re r re r | re r re |
    r re r re | r re r | re r re r |
    r <do re> r | r <do re> r <do re> | r sib r | sib r sib r |
    r sold r | r la r la | r la r |
    r la r la r la r | la r la r | la r la |
    r la r la | r la r | la2. r4 |
    si2.~ si2. r4 |
    
    %%% Entrée de la Contralto %%%
    r2 <la re>4 | r <la re> r <la re> | r <la re> r | <la re> r <la re> r |
    r <la re> r | <la re> r <la re> r | r <la re> r | <la re> r <la re> r |
    r8 \pizz la r la r la | r do r do r fad r fad | r re r do r la |
    r la r la r la r la r2 r8 la |
    r la r la r re r re | r la r la r la | r la r la r4 \arco si |
    r2 \pizz do4 | r4 r8 do r2 | r2 do4 | r4 r8 do r4 r8 do |
    r4 do do sol do fa sib re r |
    r4 r8 do, r4 | r4 r8 si r4 |
    r4 r8 do  r4 | r4 r8 si r4 |
    r8 \arco si4 do8 re4 fa2.~ fa2 r4 | R1 R2.
    R1 R2. R1 r4 mib r r do r do | r mib r r do r do | R2. R1
    re2.~\CaV re1~\CaV re4\CaV r2 R2 | R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisViolonTrois = { \ViolonTrois
  \relative {
    \pizz mi4 r r2 R2. R2
    
    %%% Presto agitato %%%
    R1*5/4*2
    \repeat tremolo 8 {\arco \ind #"sul tasto"mi16*5/4 sol}
    \repeat tremolo 8 {mi sol}
    \repeat tremolo 8 {mi sol}
    \repeat tremolo 8 {mi sol} mi2. r2 |
    \repeat tremolo 8 {sol16*5/4 mi}
    \repeat tremolo 8 {sol mi} sol2. r2 |
    \repeat tremolo 8 {mi16*5/4 sol}
    \repeat tremolo 8 {mi sol} mi2. r2 |
    \repeat tremolo 8 {sol16*5/4 mi}
    \repeat tremolo 8 {sol mi}
    sol4 r re sol8 la sol la |
    sol4 r re sol8 la sol la |
    sol4 r re sol8 la sol la |
    sol4 r2 re4 la8 sib |
    re mi re4 r2 re4 |
    la8 sib re4 r \ordin re8 re re re |
    mib4 re8 re re re mib4 re8 re |
    mib4 re8 re mib4 re8 re re re |
    mib re re re re mib re re re re | re4 r1 |
    R1*5/4*11
    mi8 dod mi fa mi dod mi dod mi dod |
    mi dod mi fa mi dod mi dod mi dod |
    fa4 mi8 mi mi mi fa4 mi8 mi |
    fa4 mi8 mi fa4 mi8 mi mi mi |
    fa mi mi mi mi fa mi mi mi mi | mi4 r1 | R1*5/4
    dod4 r1 | R1*5/4-\fermataMarkup
    
    %%% Boum %%%
    r2 r4 \flaut mi2\upbow r2 mi\upbow r4 | R1*5/4
    r2 r4 \simile mi2 r mi r4 |
    r2 r4 mi2 r mi r4 | R1*5/4
    r2 r4 mi2 r mi r4 |
    \repeat tremolo 16 {mi32*5/4 sol} |
    \repeat tremolo 16 {mi32*5/4 red}
    \repeat tremolo 16 {mi32 red} mi4 |
    <sol sib mib>2. <fab lab reb>2 <sol sib mib> <fab lab reb>2. |
    r4 <sol sib mib>2. <fab lab reb>4~ <fab lab reb>2 <sol sib mib>2. |
    <sib mib lab>2. <fab sib mib>2 <sib mib lab> <fab sib mib>2. |
    r4 <sib mib lab>2. r4 |
    <lab reb fa>2. <sib mib>2 <lab reb fa> <sib mib>2 <lab fa'>4 |
    <sib lab'>2. <lab fa'>2 <sib lab'> <lab fa'>2. |
    r4 <sib lab'>2 fa'4 lab |
    <fab, reb' sib'>1*5/4~ <reb' sib'>2. r2 | R1*5/4*5
    
    %%% Moderato assai %%%
    r2 r4 mi,1~mi1*7/4~ mi~ mi~ mi~ mi~ mi2. r1 |
    R2. R1 R2. R2
    \t {mi8 sol mi} \t {sol mi sol} mi4 R2. |
    \t {mi8 sol mi} \t {sol mi sol} mi4 R2. |
    \t {mi8 sol mi} \t {sol mi sol} mi4 R2. |
    \t {mi8 sol mi} \t {sol mi sol} mi4 R2. |
    mi2.
    la,1*7/4~ la4 r2 r1 | R1*7/4
    \t {mi'8 sol mi} \t {sol mi sol} mi4 R2. |
    \t {mi8 sol mi} \t {sol mi sol} mi4 R2. |
    \t {mi8 sol mi} \t {sol mi sol} mi4 R2. |
    \t {mi8 sol mi} \t {sol mi sol} mi4 |
    re8 re mi mi sol sol la la re, re mi mi sol sol |
    la la re,16 mi re8 mi sol la sol mi re16 mi re8 mi sol la |
    re, mi sol la re, mi sol la sol re16 mi re8 re mi re | mi1 r2 r4 |
    \repeat volta 2 { dod1 sib2. dod sib1 R1*7/4 }
    sib1 r2 r4 | R1*7/4
    
    %%% Presto subito %%%
    \tt {mi8\upbow mi mi sol mi} \tt {mi mi mi sol mi} \tt {mi mi mi sol mi} |
    \tt {mi mi mi sol mi} \tt {mi mi mi sol mi} \tt {sol mi mi sol mi} |
    \tt {sol mi mi sol mi} \tt {sol mi mi sol mi} \tt {sol mi mi sol mi} |
    \tt {sol mi mi sol mi} \tt {mi sol red mi sol} \tt {mi sol red mi sol} |
    \tt {mi sol red mi sol} \tt {mi sol red mi sol} \tt {mi sol red mi sol} |
    
    %%% Tempo giusto %%%
    mi4 r2 | \jet <mi sol>32 <mi sol>8.. r4 <fa lab>8 r |
    \simile <mi sol>32 <mi sol>8.. r2 |
    <mi sol>32 <mi sol>8.. r2 | <mi sol>32 <mi sol>8.. r2 |
    <mi sol>32 <mi sol>8.. r4 <fa lab>8 r |
    <mi sol>32 <mi sol>8.. r2 |
    <fad la>32 <fad la>8.. r4 <re la'>8 <re la'> <sol sib> <sol sib> |
    <re si'>4 r2 | \jet <dod si'>32 <dod si'>8.. r2 |
    <fa do'>32 <fa do'>8.. r2 |
    <red dod'>32 <red dod'>8.. r4 lab'\glissando |
    sol r \jet fad32 fad8.. r8 sold32 sold8.. r8 sold la la sib sib |
    <mib, do' sib'>8. <do' sib'>16 <do sib'>8 <mib, do' sib'>~ |
    <mib do' sib'>16 <do' sib'>16 <do sib'>8 <do sib'> |
    <do sib'>2 r4 |
    <mib, do' sib'>8. <do' sib'>16 <do sib'>8 <mib, do' sib'>~ |
    <mib do' sib'>16 <do' sib'>16 <do sib'>8 <do sib'> |
    <la sol'>2 r4 |
    <do la' mi'>8. <do la'>16 <do la'>8 <do la' mi'>4 |
    <mi mi'>8. mi16 mi8 <dod lad' red>~ |
    <dod lad' red>16 <lad' red> <lad red>8 <lad red> |
    <mi mi'>4 r8 \pizz red r4 |
    r \arco fa8\glissando si, r4 |
    r \pizz sib' r8 \arco dod\glissando | re, r r2 |
    r8 si, si si si si do do mib mib mi mi |
    r si si si si si do do mib mib mi mi |
    r do do do do do si si mi mi mib mib |
    r fad fad fad sol sol r lad lad lad si si |
    re fad,:16 sol: lad: si: re: |
    <re lad'>2. R2. R2 R4. R2 R1*5/8 R2.
    
    %%% Tempo I %%%
    r4 r8 sol,16 la sol mi re mi sol la sol la |
    <solb fa'>4 r2 <solb fa'>4 r <solb fa'> r <solb fa'> r2 |
    <solb fa'>4 r r8 <solb fa'> r2 | <si, lad'>4 r1\fermata |
    R1*5/4
    \flaut mi1*5/4~ mi~ mi~ mi~ mi~ mi~ |
    mi~ mi2. r2 | R1*5/4*5
    <re la'>1*5/4~\CaV <re la'>2.\CaV r2 |
    R1*5/4 <re la'>1*5/4~\CaV <re la'>~\CaV <re la'>~\CaV <re la'>2.\CaV r2 |
  }
}

ActeDeuxSceneDeuxViolonTrois = { \ViolonTrois
  \relative {
    R1.*6 R1*2 R2.
    r16 sol sol8 sol16 sol8 sol16 sol8 sol16 sol |
    r16 red'red red red8 red16 red r red red red |
    dod8 dod16 dod r16 red red red red8 red16 red |
    r16 dod dod dod re re mib mib la,8 la16 la |
    do1.~ do1 r2 |
    R1. R1*2 R2.
    
    r16 sol sol8 sol16 sol8 sol16 sol8 sol16 sol r sol sol sol |
    r sold sold r sold sold |
    r la la la la la la la la la la la si si si si |
    r si si si si si si si si si la la la la la la |
    r si si si si si si si si si si si si si si si |
    si si si si si si si si si si dod dod dod dod dod dod |
    dod dod red'red sold,sold mid'mid sold,sold lad'lad red,red mid mid |
    mib mib fa'fa sib,sib mib,mib mib'mib sib sib fa fa mib mib |
    
    R2. R1. R1*2
    r4 la,,2 r4 sib2 r4 la2 r4 si |
    <sold re'>2 do4 <la mi'>2 lab4 |
    sol4~ sol16 mi' sib' re do8 r |
    la4 mi | R4. |
    
    r16 la, si si la la si si la la si si la la si si |
    la la si si la la si si la la si si la la si si |
    do do do do do do do do do do do do do do do do |
    <do la'> <do la'> <do la'> <do la'> <do la'> <do la'> <do la'> <do la'>
    <do la'> do do do do do do do |
    <do fa> <do fa> <do fa> <do fa> <do fa> <do fa> <do fa> <do fa>
    <do fa> <do fa> <do fa> <do fa> fa fa fa fa |
    sold sold lad lad sold sold lad lad |
    sold sold lad lad sold sold lad lad |
    sold sold lad lad sold sold lad lad |
    sold sold lad lad sold sold lad lad |
    sold sold lad lad sold sold lad lad |
    sold sold lad lad sold sold lad lad |
    si si do do si si do do 
    si si do do si si do do |
    si8 do si do si4 |
    
    R1. R1 R1.
    la4 sol fa mi fa8 mi fa sol | la4 mi r | R1
    \pizz la,4 r2 r8 sol'4. r2 | fa4 r2 r8 mi4. r2 |
    fa4 mi fa sol la r2 | R2.
    fa4 mi fa sol la4 r2 | mi4 r r2 | R2. R1 R2. R1
    <la, la'\leftpizz>4 r2 R1 R2. R1
    r2 \arco <fa' la>4 | <mi la> <fa la> <sol la> <la la> |
    r4 <fa la>16 mi fa sol <la la>4 |
    
    fa16 mi fa sol la8 la dod16 do reb mib fa8 fa |
    <la, la'>4 r | R2. <la, la'>4 r r2 |
    r2 do16 la sib do mib dod re mi | sol8 r sib r re r fa r |
    <sold, la la'>4 fa8 do' reb | sold sold la r4 |
    <sold, la la'>4 mib8 sold la | sold' sold la r4 |
    <sold, la>4 sold,8 sold sold | <la sold'>4 <la sold'> r8 |
    <sold re' la'>4 r r8 | <sold' la la'>4 r re'8 |
    re mib r4 r8 | <la,,sold'>4 <la sold'> r8 | <sold re'la'>4 r r8 |
    sold'8 sold la r4 | r8 sold4 sold | la r r8 |
    
    R1*2 dod,4 r r2 |
    r4 \pizz re si r r si sold r |
    r2 \arco sold2 |
    mi'1:32~ mi: dod: |
    si'4 r2 | r8 \pizz dod, r4 | R1*2 R2.*4
    r4 sold' r r sold r R2. |
    
    la4 r R2 | R2.
    \arco la'4 sol fa mi2 mi8 red mi fad |
    sold2~ sold4 r r sib,16 la sib do |
    re8 r r16 \pizz sib, re\leftpizz sib |
    r sib re\leftpizz sib r sib re\leftpizz sib |
    r sib re\leftpizz sib r sib re\leftpizz sib |
    r sib re\leftpizz sib r8 r16 \arco sib |
    do do mi do r si red si r sib re sib r la dod la |
    r lab do lab r8 si16 sol | r8 sib16 sib r8 la16 la |
    R2 r8 mi'16 mi fa8 r | R2
    re16\leftpizz \pizz sib re\leftpizz sib re\leftpizz sib re\leftpizz sib |
    re\leftpizz sib re\leftpizz sib sold8 \arco mi'16 mi |
    re8 re16 re mib8 r | R2*2
    \pizz sib4 r dod r mib r | R2 R2.*16
  }
}
