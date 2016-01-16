%------------------------------------------------------------------%
% Opéra Libre -- violon3.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008, 2009                               %
%------------------------------------------------------------------%

\include "italiano.ly"

ViolonTrois = {
  #(make-instrument-name 'violin-three "violin" 23.5)
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
    reb8-- mib-- fad-- sold-- la-- si--
    \t {mib,16\fp\< mib mib} \t {fad fad fad} \t {sold sold sold}
    \t {la la la} \t {si si si} \t {re re re\!} |
    <fad, fad'>4\downbow <fad fad'>\downbow <fad fad'>\downbow |
    sol8-- la-- do-- re-- red-- mid-- |
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
    \longHairpins {sol2:32~\mp\< sol2~\mf\> sol2.\p r4 } |
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
    lab2~\p\> lab4\! r2 |
    <sol mib'>2\< sol4 lab4--\mp r r2 |
    R1 R2. R2
    r2 r8 si4.\pp\upbow |
    \ten la2.~ la2 r4 |
    <sol mi'>2--\mp\> sib~\pp sib4 r2 |
    R2*3 R2. R1 R2.
    r4 <sib re>\mf\downbow \ten <sib mib>2~\downbow <sib mib>
    <la red>2.\mp r2 <la red>4-.\downbow |
    <sold mi'>2.\downbow

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
    sold'8\p( la sold mi) re( mi) | sold( la sold mi) re( mi) sold4-- |
    sold8( la sold mi) re( mi-.) sold( la sold mi) re( mi) sold4-- |
    R2.| la,4-.\mp re-. mi8( re la4-.) | re8( la mi' re)-. r re mi4-. |
    re-. la8( mi' re4)-. | la'8( sold mi re)-. r la'-. |
    R1*2 |  R2.*2 |
    sold8\pp\(( la sold mi) re( mi) sold( la |
    sold mi) re( mi) sold4-.\) sold8\(( la |
    sold mi) re( mi) sold( la | sold mi) re( mi) sold4-.\) |
    R1 | re4-.\pp la'-. sold8( mi re4-.) |
    mi8( re la' sold)-. r la( | sold mi) re( mi) sold4-. |
    r4 <re sol\harmonic>-.-> r2 |
    r8 <re sol\harmonic>-.-> r2 <re sol\harmonic>4-.-> |
    r8 <re sol\harmonic>-.-> r4 <re sol\harmonic>-.-> |
    r4 r8 <re sol\harmonic>-.-> r4 |
    r <sol' do\harmonic>-.-> r2 r8 <sol do\harmonic>-.-> r2 <sol do\harmonic>4-.-> |
    r8 <sol do\harmonic>-.-> r4 <sol do\harmonic>-.-> |
    r4 r8 <sol do\harmonic>-.-> r4 |
    r4 <sol,, do\harmonic>-.-> r2 | la4-.\mf re8->( si) r la-. si4-> |
    re4-. sol8( fa) do'4-> | fa,8( sol) si-> do-> r4 |
    sol,->\ff do-> re8( fa) re( do) |
    sol( do) re( fa) re( do) sol( do) | re2.~| re4 r2 |
    \ind #"détaché" lab'8 sib re mib fa, lab sib re |
    re, fa re do sol2~\>| sol2.~\!| sol2 r4 |
    R1*2 R2.*2 R1*2 R2.*2 |
    <re' la'!>1~\ppp\CaV <re la'>~\CaV |
    <re la'>2.~\CaV <re la'>~\CaV|
    <re la'>1~\CaV <re la'>~\CaV |
    <re la'>2.~\CaV <re la'>2\CaV  r4|
    \flaut sold8\ppp( la sold mi re mi  sold la |
    sold mi re mi sold4) sold8( la |
    sold mi re mi sold la |
    sold mi re mi sold4) |
    sold8( la sold mi re mi sold la |
    sold mi re mi sold4) sold8( la |
    sold mi re mi sold la |
    sold mi re mi sold4) |
    R1*2 R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1 R1-\fermataMarkup  |

    %%% Récitatif %%%

    R2.*2 R1 R2.*3 R1 R2.*2 |
    r4 r8 fad4--\downbow\mp mib8~\downbow| mib2.~|
    mib8 mib~ \t {mib mib mib} \repeat tremolo 8 mib32\< |
    mib8\sfz r8 r2 | R2 | R2.| R1*2| R2.*5| R1|

    %%% Duo %%%

    r8 \pizz <sib re>\mp\arpeggUp
    r8 \simile <sib re> r8 <sib re>
    \repeat unfold 13 {r8 <sib re>} <sib re>4 |
    \repeat unfold 7 {r8 <do mi>} |
    \repeat unfold 3 {r8 <red fad>} <red fad>4 |
    \repeat unfold 4 {r8 <dod fad>} r4 | R2
    \arco re8--\mf
    re-- re-- re-- \simile re re
    \repeat unfold 22 re
    sold-.\psubito sold-. sold-. sold-. \simile sold sold
    \repeat unfold 8 sold
    red'\mf\< \repeat unfold 7 red
    do\! do re'! sol, do, re' |
    sol, do, re' sol, do, do |
    R2. R1 |

    %%% Piu vivo %%%
    \ten <sol, sol'>2.~\f <sol sol'>1
    sol4:16 lab: sib: reb:\< mi: fad:
    <sol,sol'>4\ff <sol sol'>8-.\downbow \st {<sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'>} |
    dod2-> r4 |
    \st {<sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'>4} |
    dod2-> r4 |
    sol4->\downbow sol->\downbow \t {mi'--( re-- fa--)} |
    dod2 \tt {sib16( la lab sib si)} |
    sol4-> r2 |
    \pizz sol4\f sol sol sol r2 |
    si4 si si | sib-> r2 |
    \arco re4-.-> r8 re-. r16 re re8-. |
    re4-> \pizz sib8 mib mi la |
    \arco <re, re'>4-> \pizz sib8 mib fad si |
    \arco <re, re'>4-> \pizz sib8 mib sold dod |
    \arco <re, re'>4-> \pizz sib8 fad' mi sold |
    \arco <re  re'>4 \pizz do8 fa fad si |
    \arco <mi, mi' mi>4-> \pizz red8 sold si mi |
    \arco <sol,, sol' sol'>4-> \tt {mi'16\< fa sol sib do} \tt {dod re mi sol la} |

    %%% Poco allargando %%%
    <re, sib'>2.\ff re4~ | re4. <sol, mi'>8 ~ <sol mi'>2\> si\!( la4) r |
    %%% Tempo giusto %%%
    \st {re,16->\fp re dod dod sib sib dod dod re-> re dod dod sib sib dod dod |
    re-> re sib sib re-> re sib sib re-> re sib sib re-> re sib sib |
    fa'-> fa mi mi do do mi mi fa-> fa mi mi do do mi mi |
    fad-> fad re re sib sib re re fad-> fad re re fad-> fad re re |
    sol-> sol mi mi si-> si mi mi sol-> sol si->\< si la-> la do-> do} |
    dod2\f r4 |
    \ten <sol, fa' sib\harmonic fa''>1~\f <sol fa' sib\harmonic fa''>~ <sol fa' sib\harmonic fa''>4 r2
    R2
    <fa' sib\harmonic fa''>2~ <fa sib\harmonic fa''>~ <fa sib\harmonic fa''>2.~
    <fa sib\harmonic fa''>8 r \ind #"détaché" dod16\mf\< mi fad la si re mi sol |
    <re, re' mi>4--->\f <re re' mi>---> <sol la mi'>---> <sol la mi'>---> |
    <re re' mi>---> <re re' mi>---> <sol la mi'>---> <sol la mi'>---> |
    <la la'>8-> \ind #"détaché" mi16\< sol si re mi sol |
    <re, sol' la>4--->\ff <re sol' la>---> <sol la mi'>---> <sol la mi'>---> <sol' la>--->
    \pizz <fa sol>8 r r2 |

    %%% Largo assai %%%
    R1 R2.*3 R2
    %%%FIX ME!%%%
    \arco \ten sib,,2.~\pp sib2. r4 |
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
    R2.*5 <sib la'>2.:32~\mp <sib la'>:\< <sib la'>4->\! r2 |
    r4 \pizz si\mf r | r sol r r8 sib-> r dob sib4 |
    \arco la2.\fp R2.*2 sold2.\p <la sold'>2.\mp |
    <si lad'>2.:32~\mf <si lad'>:~\< <si lad'>4\! r \pizz sol\mf sib r2 |
    R2.*4

    %%% Lamento %%%
    R1.*6 R1*5/4*5 R1*4
    \arco <sib sol' mib'>4--->\f <sol' mib'>8-> <sol mib'> \t {<sol mib'>-> <sol mib'> <sol mib'>}
    <sib, sol' mib'>4---> <sol' mib'>8-> <sol mib'> \t {<sol mib'>-> <sol mib'> <sol mib'>}|
    <sib la'>16->\< <sib la'> <sib la'> <sib la'> \t {<sib la'>->\! <sib la'>-> <sib la'>->} <sib la'>8->\sffz r4 |
    R2*2

    %%% Tempo I %%%
    \pizz la,4\mp si r do la r |
    R2.*6 \arco fa'2.:32\sfp
    \repeat tremolo 12 {re32\< fa} lab4-.->\sfz r2 |
    R2. \pizz sib,4\mp r sold r2 la4 |

    %%% Tempo II %%%
    R1.*3 r2 sol1~\upbow\p\< sol2.\! r4 r2 |
    r2 r4 la'2.:32\ppp <la sold'>2.:\mp <la sold'>4->\sffz r | R1 R2. R2
  }
}

ActeUnSceneTroisBisViolonTrois = { \ViolonTrois
  \relative {
    R1*8 r2 red4--\p mid-- fad4-- r r2 |
    R1*20
    sol,1\pp sol2-- sol-- sol-- sol-- sol-- sol-- |
    la'4\mf( si8) r fad4( la8) r | do,8\>( mib16) r sib8( do16) r sol8( sib16\!) r |
    R1*16
    r2 r4 r8 \pizz si\p |
    r si r4 r r8 si |
    R1*3
    r2 \arco <sold mi'>\mp( <sol mib'> re' | fad4) r r2 |
    R1*4
    dod1\p\> \ten la~\pp la~ la~ la~ la~ la\fermata
  }
}

ActeUnSceneTroisTerViolonTrois = { \ViolonTrois
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4\f r2
    R2. \arco si2.~\p si4 r2 |
    \pizz <sib sib'>4 r2 R2.
    <mib sol>4 r r2 <mi sold>4 r <fa la> r |
    <re re'>-> r r2 R1*3 R2. |

    %%% Poco meno %%%
    \arco
    <re sol\harmonic re''>2.:32 ~\pp
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
    \ordin re''2:32~\p re2.: ~ re:~ re: ~ re4: ~ si: sib:
    re,2.:32~\CaV re8\CaV r r2 | R2.*13

    r4 <sol,, fad'>2--\mp <sol fad'>--\< <sol fad'>4~--\! <sol fad'>2 r4 |
    r  <sol fad'>2--\mp\< <sol fad'>-- <si! sib'>4~--\! <si sib'>2 r4 |
    R2.*3 R1 R2.
    r4 si?2~--\mp\>( si4 sib2\!) | R2.
    r4 \t {sib8\p( mi sib} \t {mi sib mi)} \t {sib( mi sib} \t {mi sib mi} sib4) |
    r  \ten <sib sol'>2~--\mp <sib sol'>\> <re fad>4~--\! <re fad> r2 |
    r4 <sib sol'>2~-- <sib sol'>\> <re fad>4~\! <re fad> r2 |
    r4 <sib sol'>2~--\mp <sib sol'> <fad'fad>4~---> <fad fad>2 r4 |
    r  \t {sol8\mf\>\(( re) re(} \t {sib) sib( sol)\!\)} \t {sib'\>\(( sol) sol(}
    \t {re) re( sib)\!\)} \t {si'\>\(( fad) fad(} \t {red) red( si)\!\)}
    \t {red'\<( si fad)} \t {sol'( re sib)\!} |
    r mib\f( re) si( sib) sol fad'-- mib( re) si( sib) sol |
    fad'-- mib( re) si( sib) sol( fad) mib4--\>( sib--) sol8~--\mp sol2 r4 |
    R2.*4

    la'4\p( sol fa mi) fa8( mi fa sol) la4( mi2~) mi2.~ mi2 r4 |
    R2.*5
  }
}

InterludeTroisViolonTrois = { \ViolonTrois
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    <lad fad'>16-.\pp <lad fad'>8--( <lad fad'>-- <lad fad'>--) <lad fad'>--(
    <lad fad'>-- <lad fad'>--) <la fa'>--( <si sol'>16-.) |
    <lad fad'>-. <lad fad'>8--( <lad fad'>-- <lad fad'>--)
    <la fa'>-- <sol red'>--( <lad fad'>16-.) |
    \simile <fad'do'>\p <fad do'>8 <fad do'> <fad do'>
    <la fa'> <sol mib'> <lad fad'>16 |
    <fad do'> <fad do'>8 <fad do'> <fad do'> <fad do'>16 |
    <sold mi'>\mf <sold mi'>8 <sold mi'> <sold mi'>
    <sold mi'> <fad re'> <la fa'>16 |
    <sold mi'> <sold mi'>8 <sold mi'> <sold mi'> <sold mi'>16 |
    <si sol'>\f <si sol'>8 <si sol'>16 <si sol'> <si sol'>8 <si sol'>16 |
    <si sol'>\ff <si sol'>8 <si sol'>16 <si sol'> <si sol'>8 <si sol'>16 |
    R2*2
    \tt {sol,16\f\< si sib re dod} fa32( mi) lab( sol) si( sib) re( dod) |
    la'8\sffz r r4 |
  }
}

ActeUnSceneQuatreViolonTrois = { \ViolonTrois
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    R2. re4--\mf si-- si8---. dod---. r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2

    %%% Agitato %%%
    do2.:32\fpp re: <re la'>: <re la'>8-.-> r la'--\mf( mi'--) si'--( mi,--) | la, r r2 |
    R2.*2 re,2.:32\<\pp re8-.->\mp r sib16( do mib fa) fad\<( sold si dod) |
    re8--\f sol-- do-- re,-- sol16-- la,\< la la | re4--->\! r2 |
    re8-- sold-- dod-- red,-- sold16-- la,\< la la | re4--->\! r2 |
    re,4-> r16 la\mp\< la la re8\! r |
    <re mib>4-- r8 <re mib>-. \t {<re mib> <re mib> <re mib>} |
    \dwnb {<re mi>4-- <re mi>-- <re mi>-- |
    <re fad>--} r8 <re fad>-. \t {<re fad> <re fad> <re fad>} |
    <re la'>4 <re la'> <re la'> | <re la'> r8 <re la'>-- r <la' mi'>-> |
    dod--\f( re--) dod--( la--) sol-- la-- | dod--( re--) dod--( la--) sol-- la-- |
    dod--( re--) dod--( la--) sol-- sib-- | re--( mib--) re--( sib--) lab-- sib-- |
    re--( mib--) re--( si!--) la!-- si-- | red-- mi-- la-> red,--(
    mi--) la-> |
    sold16->\ff( la sold mi) re->( mi sold la) sold->( mi) re( mi) |
    sold->( la sold mi) re->( mi sold la) sold->\<( mi) re( mi) |
    la8->\! r r4 r2 | \dwnb {<la,, re>4\mp <la re> <la re> <la re>2. r4 |
    <la re>4 <la re> <la re> <la re>2 <la re>4 <la re> <la re> |
    <sib mib>2 <sib mib>4 <sib mib> <sib mib> |
    <si mi>2} <si mi>\upbow\> <si mi>4--\! |
    \t {r4 si--\mp( si--} si2~-- \ten si2.) r4 |
    \t {r4 si--( si--} si2~-- \ten si2.) r4 |
    \t {si--\>( si-- si--)} \t {sib--( sib-- sib--)} \t {la--( la-- la--)} |
    \t {sold--\p( sold-- sold--} sold~-- \ten sold2.) r4 |

    %%% Andante a piacere %%%
    \t {r4 dod--\mp\upbow( dod--} \t {dod-- dod-- dod--)} \t {re--( re-- re--)} \t {mib--( mib-- mib--)} |
    \t {r4 dod--\upbow( dod--} \t {dod-- dod-- dod--)} \t {re--( re-- re--)} \t {mib--( mib-- mib--)} |
    \t {r4 \simile fa fa} \t {fa fa fa} \t {fad fad fad} \t {sol sol sol} |
    \t {r4 fa fa} \t {fa fa fa} \t {fad fad fad} \t {sol sol sol} |
    \t {r <red la'>--\mf <red la'>--} \t {<red la'>-- <red la'>-- <red la'>--} |
    \t {<mi sold>--\< <mi sold>-- <mi sold>--} <mi la>8-- <mi la>-- |
    \t {r4\! <lab re>--\f <lab re>--} \t {<lab re>-- <lab re>-- <lab re>--} |
    \t {<sib mi>\< <sib mi> <sib mi>} <sol mib'>8 <sol mib'>\! |
    R1*7 R2*3 R2.*2
    \pizz si,4\mp r lab\< do\! r2 sib4 r2 re4 r2 |

    %%% A tempo %%%
    \arco
    <si re>2--->\f <si re>4-- <si re>-- |
    <re mi>-- <re mi>2---> <re mi>4-- |
    <re sol>-> <re sol>-> <re sol>-> r |
    R1 R2. R1 R2.
    la1:32\fpp <si red>2.--\mf <dod re>2-- sib4-- do-- | dod2-- r4 |
    <dod' la'>2--->\f( <dod la'>4--) <dod la'>-- <dod la'>4.---> <dod la'>8~-- <dod la'>4 r8 la16\<( dod) |
    fa2\! \t {fa,8\<( la dod)} fa2--->\! \t {sol,8\<( si red)} |
    sol8.--->\ff sol16 sol8-. sol4-> sol8-. | sol8.---> sol16 sol8-. sol4-> sol8~-> sol4 |
    <si, sold'>~--->\t{<si sold'>8<si sold'>4~--->}\t{<si sold'> <si sold'>8~--->}<si sold'>r|
    si,16\upbow\f( dod) dod( si) si( dod) dod( si) si( dod) dod( si) |
    si( dod) dod( si) si( dod) | \ten sol2.~-- sol8 r4 |
    si16\upbow\f( dod) dod( si) si( dod) dod( si) | si( dod) dod( si) si( dod) |
    sol2~-- sol4. r8 |
    re'16\upbow\f( mi) mi( re) re( mi) mi( re) | re( mi) mi( re) re( mi) |
    re2~--\mf re4 r |
    mi16\mp( re) re( mi) mi( re) re( mi) | mi( re) re( mi) mi( re) |
    re\<( mi) mi( re) re( mi) mi( re) re( mi) mi( re) re( mi) mi( re) |
    R2\! R4. r2 \ind #"détaché" sib'16\p\< dod fad la |

    re4->\f r r \simile dod16 do sib do, |
    re,4->\CaV re16\pleggiero re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    \cresc do-> do do do do do do do do do do do do do do do |
    do do do do do do do do mib-> mib mib mib mib mib mib mib |
    mib mib mib mib fa?-> fa fa fa fa fa fa fa fa fa fa fa |
    re8->\f re re4 re'\> re,8 re\! | R1*3 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    R2.*11
    r4 \flaut sib2~ sib r4 |
    r4 sib2~ sib r4 |
    r4 sib2~ sib r4 | R2.
    r4 \ordin sib2~ sib r4 | R2.
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5
    R1 R1. R1 R1.
    R1 R1.*5 R1 R1. R1
  }
}

EntracteViolonTrois = { \ViolonTrois
  \relative {
    R2*9
    R1*2 r4 \st {la8\mf la sold4} r R1*7
    r4 \jet re''32\mp re8.. re32 re8.. r4 |
    re32 re8.. re32 re8.. r4 re32 re8.. |
    r4 re32 re8.. r4 re32 re8.. |
    r4 re32 re8.. re32 re8.. r4 | R1*2
    re,16->\mf re re re re4 r8 re16-> re re re re8-. |
    re16-> re re re re4-- r2 |
    re2:16\pleggiero re: re: re: re: re: re: re: re: re: |
    re4-- r r2 | \pizz sold4\mf r r8 fad r sold |
    R1 \arco sold,4.--\mp( la8~-- la4) si-- |
    do-- \t {reb8\<( do dod)} re( mib) re( red) |
    mi4->\f r r <re la'>-.->\mp r <re mib>-.-> r <re mi>-.-> <re re>-.-> r r2 |
    la16->\mf la la la la4 r8 la16-> la la la la8-. |
    sib-> \pizz mib''\mp sol,4-- r8 si mib,4-- |
    r8 fad sib, re fad, mi''-> sold,4-- |
    r8 do mi,4-- r8 sol si, mib |
    sol,4-- r \arco la,8-.\mf la-. sold4-. |
    r8 la-. la-. sold-. r4 la8(\upbow sold-.) | re'4---> r r2 |
    re16->\f re re re re8 re16-> re re re re8-. |
    re16-> re re re re8-. re16-> re re re re8-. re16->\< re re re |

    %%% Fugato %%%
    re1~\ff re~\> re2.~\mp re~ re2~ re1~ <re fa'>2.~ <re fa'>~
    <re fa'>1~ <re fa>~ <re fa'>2.~ <re fa'>4 r2 |
    r dod'~\pp dod1~ dod2.~ dod~ dod1~ dod2. r4 |
    <la mi'>2.~ <la mi'>~ <la mi'>2 <re, la'>~--\mp |
    <re la'>8 <la' mi'>4. <re, la'> <la' mi'>8~ |
    <la mi'>2.~ <la mi'> | fad'2~\mf fad8 r <dod dod'>-.\f <dod dod'>-. |

    %%% Stretto %%%
    <re re'>4-> re,-> r re-> |
    re16-> re re re re4 r8 re16-> re re re re8 |
    re16-> re re re \ten <dod re>2.~\sffz <dod re> r4 |
    r4 \pizz sol''--\mp re-- r |
    mi,-> r r8 fad-> r4 mi-> r8 fad-> r2 |
    \arco sol2:8->\mp sol: lad: lad:\< |
    <re, sib'>4-.->\! r r2 | R1*3

    %%% Noir %%%
    R2.-\fermataMarkup \pizz fad4\mp r2 R2. fad4 r2 R2. R2
    fad4 r2 r4 red r2 r4 red fad8-> red-> R2 |
    red4\mp r r2 | R1*4 R1.*4 R1 R2.-\fermataMarkup
    R2.*8 R2.-\fermataMarkup
    R2.*4 R2.-\fermataMarkup
    R1 R2 R1 R2 R1 R2 R1 R2.

    %%% Largo non troppo %%%
    \arco <la' la'>2->\mf \accdet {<la la'> <la la'> |
    <la la'> <la la'> <la la'> |
    <si si'> <si si'> <si si'> |
    <do do'> <do do'> <do do'> |
    <mi do'> <mi do'> <mi do'> |
    <re do'> <re si'> <re la'> |
    \cresc <do sol'> <do do'> <do si'> |
    <do la'> <fa re'> <re si'> |
    <mi do'> <mi do'> <mi do'> |
    <si fa'>\f( <si sol'>) <si lab'> |
    <do sol'>\>( <do sol'>\!) <mi do'> |
    <la, sib'>\mp <la la'> <la sol'> |
    <la sol'> <la fa'> <la fa'> |
    <si fa'> <si sol'> <si lab'> |
    <do lab'> <do sol'> <do sol'> |
    \cresc <re, la' fa'> <la' fa'> <la fa'> |
    <la la'> <sol sol'> <fa fa'>} |
    <la la'>4->\ff mi-> r1 | <la la'>4-> mi-> r2 |
    R1 R2. R2
  }
}

ActeDeuxSceneUnViolonTrois = { \ViolonTrois
\relative {
    la''2.~\p\CaV la2.~\CaV la2.~\CaV la4\CaV r2
    R2 R2.*2 R2 si2.~\p si2.~ si2.~ si4 r |
    R2. R2 | r4 r8 fad~\p fad4~| fad2.~| fad2 |
    sib2.~| sib2.~| sib2.~| sib4 r |
    <re,, sol\harmonic re''~>2.\p \simile re''2~ re2.~ re2.~ re4 r |
    \ttt { re8\pp[ re16 re re re] } \ttt { re16[ re re re re re] }
    \ttt { re16[ re re re re re] } |
    \ttt { \cresc si16[ si si si si si] }
    \repeat unfold 5 { \ttt { si16[ si si si si si] } }
    \ttt { si16\f[ si si si si si] }
    \ttt { si16[ si si si si si] }|

    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {re16\f[ re re re re re] } \t {re re re} r8 r4 |
    r4 r8 \t {mi,16\f mi mi} \ttt {mi mi mi mi mi mi} | R1 R2. R2 R2. R1

    %%% Andantino %%%
    R1*2 R2.*4 R2
    R2.*5 R1 R2. R2
    r4 \det {re,\p r re r re} r | \simile re r re |
    r re r re | r re r | re r re r |
    r <do re> r | r <do re> r <do re> | r sib r | sib r sib r |
    r sold r | r la r la | r la r |
    r la r la r la r | la r la r | la r la |
    r la r la | r la r | la2. r4 |
    si2.~\pp si2. r4 |

    %%% Entrée de la Contralto %%%
    r2 \det {<la re>4\p | r <la re> r <la re>} | r \simile <la re> r | <la re> r <la re> r |
    r <la re> r | <la re> r <la re> r | r <la re> r | <la re> r <la re> r |
    r8 \pizz la\p r la r la | r do\< r do r fad\! r fad | r re\> r do r la |
    r la r la r la r la\! r2 r8 la\< |
    r la r la r re r re\! | r la\> r la r la | r la r la\! r4 \arco si--\mp |
    r2 \pizz do4\mp | r4 r8 do r2 | r2 do4 | r4 r8 do r4 r8 do |
    r4 do do sol\< do fa sib re\! r |
    r4 r8 do,\mp r4 | r4 r8 si r4 |
    r4 r8 do  r4 | r4 r8 si r4 |
    r8 \arco si4--\mf\< do8 re4-. \ten fa2.~\! fa2 r4 | R1 R2.
    R1 R2. R1 r4 \det {mib\p r r do r do | r mib r r do\< r do\!} | R2. R1
    \ind #"trem. sul tasto" re2.~\pp\CaV re1~\CaV re4\CaV r2 R2 | R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisViolonTrois = { \ViolonTrois
  \relative {
    \pizz mi4\mf r r2 R2. R2

    %%% Presto agitato %%%
    R1*5/4*2
    \repeat tremolo 8 {\arco \ind #"sul tasto"mi16*5/4\pp sol}
    \repeat tremolo 8 {mi sol}
    \repeat tremolo 8 {mi sol}
    \repeat tremolo 8 {mi sol} mi2. r2 |
    \repeat tremolo 8 {sol16*5/4 mi}
    \repeat tremolo 8 {sol mi} sol2. r2 |
    \repeat tremolo 8 {mi16*5/4 sol}
    \repeat tremolo 8 {mi sol} mi2. r2 |
    \repeat tremolo 8 {sol16*5/4 mi}
    \repeat tremolo 8 {sol mi}
    sol4 r re--\mp sol8( la) sol( la) |
    sol4-- r re-- sol8( la) sol( la) |
    sol4-- r re-- sol8( la sol la) |
    sol4-- r2 re4-- la8( sib |
    re mi) re4-- r2 re4-- |
    la8( sib) re4-- r \ordin re8-.\mf \st {re re re} |
    mib4--->\sfz \st {re8 re re re} mib4--->\sfz \st {re8 re} |
    mib4--->\sfz \st {re8 re} mib4--->\sfz \st {re8 re re re} |
    mib-> \st {re re re re} mib-> \st {re re re re} | re4->\sfz r1 |
    R1*5/4*11
    \ind #"détaché" mi8\mp dod mi fa mi dod mi dod mi dod |
    mi\< dod mi-> fa mi dod mi dod mi dod |
    fa4--->\sfz \st {mi8 mi mi mi} fa4--->\sfz \st {mi8 mi} |
    fa4--->\sfz \st {mi8 mi} fa4---> \st {mi8 mi mi mi} |
    fa-> \st {mi mi mi mi} fa-> \st {mi mi mi mi} | mi4->\sfz r1 | R1*5/4
    dod4->\sffz r1 | R1*5/4-\fermataMarkup

    %%% Boum %%%
    r2 r4 \flaut mi2\pp\<\upbow r2\! mi\<\upbow r4\! | R1*5/4
    r2 r4 \simile mi2 r mi r4 |
    r2 r4 mi2 r mi r4 | R1*5/4
    r2 r4 mi2 r mi r4 |
    \repeat tremolo 16 {mi32*5/4\ppsempre sol} |
    \repeat tremolo 16 {mi32*5/4 red}
    \repeat tremolo 16 {mi32\< red} mi4-- |
    \ind #"à la corde" <sol sib mib>2.--->\f \accdet {<fab lab reb>2 <sol sib mib> <fab lab reb>2. |
    r4 <sol sib mib>2. <fab lab reb>4~\<} <fab lab reb>2 <sol sib mib>2. |
    \accdet {<sib mib lab>2.\! <fab sib mib>2 <sib mib lab> <fab sib mib>2.} |
    r4 \meno <sib mib lab>2.-- r4 |
    \accdet {<lab reb fa>2.\f <sib mib>2 <lab reb fa> <sib mib>2\<} <lab fa'>4 |
    \accdet {<sib lab'>2.\! <lab fa'>2 <sib lab'> <lab fa'>2. |
    r4 <sib lab'>2\< fa'4 lab |
    <fab, reb' sib'>1*5/4~\ff} <reb' sib'>2. r2 | R1*5/4*5

    %%% Moderato assai %%%
    r2 r4 mi,1~\pp mi1*7/4~ mi~ mi~ mi~ mi~ mi2. r1 |
    R2. R1 R2. R2
    \t {mi8\mp\>( sol mi} \t {sol mi sol} mi4\!) R2. |
    \t {mi8\>( sol mi} \t {sol mi sol} mi4\!) R2. |
    \t {\simile mi8( sol mi} \t {sol mi sol} mi4) R2. |
    \t {mi8( sol mi} \t {sol mi sol} mi4) R2. |
    mi2.--\upbow
    \ten la,1*7/4~\p la4 r2 r1 | R1*7/4
    \t {mi'8\mp\>( sol mi} \t {sol mi sol} mi4\!) R2. |
    \t {mi8\>( sol mi} \t {sol mi sol} mi4\!) R2. |
    \t {mi8( sol mi} \t {sol mi sol} mi4) R2. |
    \t {mi8( sol mi} \t {sol mi sol} mi4) |
    \st {re8\p re mi mi sol sol la la re, re mi mi sol sol |
    la la} re,16->( mi \st {re8) mi sol la sol mi} re16->( mi \st {re8) mi sol la |
    re, mi sol la re, mi sol la sol} re16->( mi \st {re8) re} \det {mi re | mi1} r2 r4 |
    \repeat volta 2 { \det {dod1\mf sib2. dod sib1 R1*7/4 }
    \meno sib1} r2 r4 | R1*7/4

    %%% Presto subito %%%
    \tt {\ind #"détaché" mi8\mf\upbow mi mi sol mi} \tt {mi mi mi sol mi} \tt {mi mi mi sol mi} |
    \tt {mi mi mi sol mi} \tt {mi mi mi sol mi} \tt {sol mi mi sol mi} |
    \tt {sol mi mi sol mi} \tt {sol mi mi sol mi} \tt {sol mi mi sol mi} |
    \tt {sol mi mi sol mi} \tt {mi sol red mi sol} \tt {mi sol red mi sol} |
    \tt {mi sol red mi sol} \tt {mi sol red mi sol} \tt {mi sol red mi sol} |

    %%% Tempo giusto %%%
    mi4-- r2 | \jet <mi sol>32\mp <mi sol>8.. r4 <fa lab>8 r |
    \simile <mi sol>32 <mi sol>8.. r2 |
    <mi sol>32 <mi sol>8.. r2 | <mi sol>32 <mi sol>8.. r2 |
    <mi sol>32 <mi sol>8.. r4 <fa lab>8 r |
    <mi sol>32 <mi sol>8.. r2 |
    <fad la>32 <fad la>8.. r4 \st {<re la'>8 <re la'> <sol sib> <sol sib>} |
    <re si'>4-- r2 | \jet <dod si'>32 <dod si'>8.. r2 |
    <fa do'>32 <fa do'>8.. r2 |
    <red dod'>32 <red dod'>8.. r4 lab'\glissando |
    sol r \jet fad32\mp fad8.. r8 sold32 sold8.. r8 \det {sold\< la la sib sib |
    <mib, do' sib'>8.->\ff} \st {<do' sib'>16 <do sib'>8} <mib, do' sib'>~---> |
    <mib do' sib'>16 \st {<do' sib'>16 <do sib'>8 <do sib'>} |
    <do sib'>2---> r4 |
    <mib, do' sib'>8.---> \st {<do' sib'>16 <do sib'>8} <mib, do' sib'>~---> |
    <mib do' sib'>16 \st { <do' sib'>16 <do sib'>8 <do sib'>} |
    \accdet {<la sol'>2 r4 |
    <do la' mi'>8.} \st {<do la'>16 <do la'>8} \accdet {<do la' mi'>4 |
    <mi mi'>8.} \st {mi16 mi8} <dod lad' red>~---> |
    <dod lad' red>16 \st {<lad' red>\< <lad red>8 <lad red>} |
    <mi mi'>4\sffz r8 \pizz red\mp r4 |
    r \arco fa8\glissando\upbow( si,) r4 |
    r \pizz sib' r8 \arco dod\glissando\upbow( | re,) r r2 |
    r8 \det {si,\mp\downbow( si si si si) do\<( do mib mib mi mi\!) |
    r si( si si si si) do\<( do mib mib mi mi\!) |
    r do( do do do do) si\<( si mi mi mib mib\!) |
    r fad\upbow( fad fad) sol( sol) r lad( lad lad) si( si)} |
    re fad,:16\< sol: lad: si: re: |
    <re lad'>2.--\mp R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    r4 r8 sol,16->\mf( la sol mi) re->( mi) sol( la) sol( la) |
    \accdet {<solb fa'>4\sfz r2 <solb fa'>4\sfz r <solb fa'>\sfz r <solb fa'>\sfz r2 |
    <solb fa'>4\sfz r r8 <solb fa'>\sfz} r2 | <si, lad'>4->\sffz r1\fermata |
    R1*5/4
    \flaut mi1*5/4~\pp mi~ mi~ mi~ mi~ mi~ |
    mi~ mi2. r2 | R1*5/4*5
    <re la'>1*5/4~\CaV <re la'>2.\CaV r2 |
    R1*5/4 <re la'>1*5/4~\pp\CaV <re la'>~\CaV <re la'>~\CaV <re la'>2.\CaV r2 |
  }
}

ActeDeuxSceneDeuxViolonTrois = { \ViolonTrois
  \relative {
    R1.*6 R1*2 R2.
    r16 sol\f sol8 sol16-> sol8 sol16 sol8-> sol16-. sol-. |
    r16 red' red red red8-> red16-. red-. r red red red |
    dod8-> dod16-. dod-. r16 red red red red8-> red16-. red-. |
    r16 dod dod dod re re mib mib la,8\> la16 la |
    \ten do1.~--\mf do1 r2 |
    R1. R1*2 R2.

    r16 sol\f sol8 sol16-> sol8 sol16 sol8-> sol16-. sol-. r sol sol sol |
    r \st {sold sold r sold sold |
    r la\pleggiero la la la la la la la la la la si si si si |
    r si si si si si si si si si la la la la la la |
    r si si si si si si si si si si si si si si si |
    si si si si si si si si si si dod dod dod dod dod dod |
    \cresc dod dod red'red sold,sold mid'mid sold,sold lad'lad red,red mid mid |
    mib\f mib fa'fa sib,sib mib,mib mib'mib sib sib fa fa mib mib} |

    R2. R1. R1*2
    r4 \det {la,,2\p r4 sib2 r4 la2 r4 si |
    <sold re'>2 do4 <la mi'>2 lab4} |
    sol4~( sol16 mi' sib' re do8) r |
    la4\mf\>( mi\!) | R4. |

    r16 \st {la,\pleggiero si si la la si si la la si si la la si si |
    la la si si la la si si la la si si la la si si |
    do do do do do do do do do do do do do do do do |
    <do la'> <do la'> <do la'> <do la'> <do la'> <do la'> <do la'> <do la'>
    <do la'> do do do do do do do |
    <do fa>\< <do fa> <do fa> <do fa> <do fa> <do fa> <do fa> <do fa>
    <do fa> <do fa> <do fa> <do fa> fa fa fa fa |
    sold\fp sold lad lad sold sold lad lad |
    sold sold lad lad sold sold lad lad |
    sold sold lad lad sold sold lad lad |
    sold sold lad lad sold sold lad lad |
    sold sold lad lad sold sold lad lad |
    sold\< sold lad lad sold sold lad lad |
    si\mf si do do si si do do
    si si do do si si do do} |
    si8 do si do si4 |

    R1. R1 R1.
    la4\p( sol fa mi fa8 mi fa sol | la4 mi) r | R1
    \pizz la,4\mp r2 r8 \flaut sol'4.--\upbow\pp r2 | fa4--\upbow r2 r8 mi4.--\upbow r2 |
    fa4\upbow( mi fa sol la) r2 | R2.
    \simile fa4( mi fa sol la4) r2 | mi4--\upbow r r2 | R2. R1 R2. R1
    <la, la'>4\mp \leftpizz r2 R1 R2. R1
    r2 \arco <fa' la>4--\upbow\p( | <mi la>--) <fa la>--( <sol la>--) <la la>-- |
    r4 <fa la>16( mi fa sol) <la la>4-- |

    \ind #"détaché" fa16\f mi fa sol la8 la dod16 do reb mib fa8 fa |
    <la, la'>4---> r | R2. <la, la'>4---> r r2 |
    r2 do16\mf\< la sib do mib dod re mi | sol8\! r sib r re r fa r |
    <sold, la la'>4---> fa8\upbow\< do' reb | \acc {sold\! sold la r4 |
    <sold, la la'>4--} mib8\< sold la | \acc {sold'\! sold la r4 |
    <sold, la>4--} sold,8\< sold sold | \dwnb {<la sold'>4\! <la sold'> r8 |
    <sold re' la'>4} r r8 | <sold' la la'>4---> r \st {re'8 |
    re mib} r4 r8 | \dwnb {<la,,sold'>4 <la sold'> r8 | <sold re'la'>4} r r8 |
    \acc {sold'8 sold la} r4 | r8 \accdet {sold4 sold | la} r r8 |

    R1*2 dod,4->\sffz r r2 |
    r4 \pizz re\mp si r r si sold r |
    r2 \arco sold2\upbow\< |
    mi'1:32~\fp mi: dod:\< |
    si'4\sfz r2 | r8 \pizz dod,\mp r4 | R1*2 R2.*4
    r4 sold' r r sold r R2. |

    la4-- r R2 | R2.
    \arco la'4\mf( sol fa mi2) mi8( red mi fad) |
    sold2~-- sold4 r r sib,16( la sib do) |
    re8-.-> r r16 \pizz sib,\mp re\leftpizz sib |
    r sib re\leftpizz sib r sib re\leftpizz sib |
    r sib re\leftpizz sib r sib re\leftpizz sib |
    r sib re\leftpizz sib r8 r16 \arco sib( |
    do) \st {do\pleggiero mi do r si red si r sib re sib r la dod la |
    r lab do lab r8 si16 sol | r8 sib16 sib r8 la16 la |
    R2 r8 mi'16\pp mi fa8} r | R2
    re16\pleggiero\leftpizz \pizz sib re\leftpizz sib re\leftpizz sib re\leftpizz sib |
    re\leftpizz sib re\leftpizz sib sold8 \arco mi'16-.\mf mi-. |
    re8-- re16-. re-. mib8-- r | R2*2
    \pizz sib4\mp r dod r mib r | R2 R2.*16
  }
}

ActeDeuxSceneTroisViolonTrois = { \ViolonTrois
  \relative {
    %%% Larghetto %%%
    R4.*16
    la4.~\pp la~ la~ la4 r8 | R4.*3
    la4.~ la~ la~ la4 r8 | R4.*3
    \st {la16->\mf la sold8 r |
    r la la sold-> r4 |
    sold16-> sold sol8 la16 la |
    sold8->} r4 | \ten <sol mi'>4.~--\p <sol mi'>4 r8 |
    \st {la16->\mf la sold8 r |
    r la la sold->} r4 |
    sib16\pp sib sib sib sib sib |
    sib sib sib sib sib sib |
    \st {la->\mf la sold8 r |
    r la la sold-> r4 |
    la16-> la sold8} r |
    red'16 red red red red red |
    red\< dod dod dod dod dod |
    si'\mp si do( do,) si la |
    \st {sold8->\mf r4 | la16-> la sold8} r |
    re'16\p\leftpizz \pizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz  <sib re> r \arco sib\upbow( |
    do8) r16 \pizz do mi do r do |
    mi do r mi do r \arco la-.\mf \st {la |
    sold8->} r16 \pizz do\p mi do r do mi do r8 |
    \arco la16-.\mf la-. sold8-.-> r \pizz <sold mi'>\p |
    \arco la->\mf la-> sold-> r |
    \pizz <sold mi'>\p <sold mi'> r \arco la16-.\mf la-. |
    \st {sold8-> si16 si sib8-> r |
    mi16\p mi mi mi sol, sol sol sol |
    R4
    lab16 lab sol' sol re re lab lab |
    sol' sol lab, lab r8 |
    lab16 sol' reb lab sol' reb lab sol' |
    reb lab sol' lab,} | R4
    \pizz <do sol'>8\pp <do sol'> <do sol'> <do sol'> <do sol'> <do sol'> |
    \arco la16-.->\mf \st {la sold8 r |
    r la la sold16\p sold sold sold sold sold |
    r8 la\mf la sold16\p sold sold sold sold sold |
    la la sold sold sold sold sib sib la la sold sold} |
    sib-> sib sib sib sib sib |
    sib sib sib sib sib sib |
    sib sib sib sib sib sib |
    sib sib sib sib sib sib |
    <la re> <la re> <la re> <la re> <la re> <la re> |
    sib sib sib sib sib sib |
    sol\< sol sol sol re' re |
    \st {do\fp re' sol, do, re' sol, do, re' |
    sol, do, re' sol, do, do do do} |
    do do la'\mp la sib( re,) fa\< fa mi mi mib mib |
    re8-.->\! \pizz <re sib'> r8 \arco re16\f re |
    mi8-> r R4 re8\leftpizz re16\< re |
    mi8->\! r R4 re8\leftpizz re16\< re |
    mi->\fp do do do do do do do |
    do do do do mi mi mib mib |
    re\mf mi' la, re, mi' la, re, mi' |
    mi, re\ppleggiero re re re re re re |
    re re dod dod dod dod dod dod |
    dod dod dod dod dod do sol' re |
    do sol' re do | R2.-\fermataMarkup R2.*6

    %%% Interlude %%%
    R2*2 mi16\pdolce mi fa( la,) mi' mi fa( la,) |
    sold' sold la( la,) sold' sold la( la,) |
    \simile mi' mi fa la, mi' mi fa la, |
    sold' sold la la, mid' mid fad la, |
    sold' sold la la, si' si do do, |
    mi mi fa la, mi' mi fa la, |
    sold' sold la la, sold' sold la la, |
    mid'\< mid fad la, sold' sold la la, si' si do\! do, |
    \st {<si red>\p <si red>} <do mi>8-- \st {<si red>16 <si red>} <do mi>8-- |
    \st {<red fad>16 <red fad>} <mi sol>8-- \st {<red fad>16 <red fad>} <mi sol>8-- |
    \simile <si red>16 <si red> <do mi>8 <red fad>16 <red fad> <mi sol>8 |
    <red fad>16 <red fad> <mi sol>8 <do mib>16 <do mib> <dod mi>8 |
    <do mib>16 <do mib> <dod mi>8 <do mib>16 <do mib> <dod mi>8 |
    <red fad>16 <red fad> <mi sol>8 <red fad>16 <red fad> <mi sol>8 |
    r8 re16\< re mib mib fad sol sib si |
    fad'\mf fad sol sol, fad' fad sol sol, |
    lad' lad si si, lad' lad si si, |
    fad' fad sol sol, fad' fad sol sol, |
    lad' lad si si, lad' lad si si, |
    fad' fad sol sol, fad' fad sol sol, |
    lad' lad si si, lad' lad si si, |
    fad' fad sol sol, lad' lad si si, |
    dod'\mp dod re re, dod' dod re re, |
    lad' lad si si, lad' lad si si, |
    dod' dod re re, dod' re re, lad' |
    si\< si, dod' re re, mi' fa fa, |
    mi'\mf mi fa fa, mi' mi fa fa, |
    dod' dod re re, fad fad sol sol, |
    lad'\< lad si si, dod' dod re re, |
    mi'\! fa fa, mi' mi fa fa, dod' |
    dod re re, dod' re re, lad' si |
    re,\< mi' mi fa fa, mi' fa fa, mi'->\! mi-> |

    %%% Quatuor %%%
    mi8-> \pizz sold,,\mp la fad | sib4-- r8 |
    r sold la fa si4-- r8 |
    r sold la re,\leftpizz |
    \arco \ind #"jeté" <sold, re'>32\mf <sold re'>16. r16 <sold re'>32 <sold re'> r8 |
    <sold re'>32 <sold re'>16. <sold re'>32 <sold re'>16. r8 |
    mib'2--\f r4\fermata
    r8 \pizz sold\p la4 r | R2.*5 R2*2 R2.

    %%% Air baryton 1 %%%
    \t {\arco lab,8\pp( sib lab} \t {sib lab sib} |
    \t {lab sib lab} \t {sib lab sib)} |
    \t {lab( sib lab} \t {sib lab sib} lab16-- sib lab sib) |
    \t {lab8( sib lab} \t {sib lab sib} |
    \t {lab sib lab} \t {sib lab sib)} |
    \t {lab( sib lab} \t {sib lab sib} lab16-- sib lab sib) |
    \flaut re2~ re4 r |
    \t {lab8( sib lab} \t {sib lab sib} \t {lab sib lab~} |
    lab2~) lab4 r | \t {sol4( lab sib)} r8 sold'16-.\pp sold-. |
    la( la,) mi' mi fa( la,) mi' mi |
    fa( la,) mi' mi fa fa |
    \simile solb\< sib, fa' fa solb sib, fa' fa |
    solb sib, fa'8 <solb sib>16 <solb sib> |
    <sol si>8--\pp <fad lad>16-. <fad lad>-. <sol si>8-- <fad lad>16 <fad lad> |
    <sol si>8 <red fad>16 <red fad> <mi sol>8 <fad lad>16 <fad lad> |
    <sol si>8--\< sold16 sold la do, si' si sid red, dod'8 |
    \st {<re mi>16\mf <re mi> <re mi>8 r la16 la |
    sold sold la la sold sold la la |
    sold sold la la sold sold la la sold sold la la |
    la la sold sold la la sold sold la la sold sold sib sib sol sol |
    \cresc fa fa mi mi fa fa mi mi la, la sold sold |
    sol sol sol sol sold sold la la} |

    %%% Doppio tempo %%%
    re8->\! r r4 R2*3
    r8 mib16\ff mib re8-> r |
    r re-> r4 | r sold,16 sold r8 |
    R2.*3
    re'8->\p r r \st {mi16 mi re8 r |
    r re r re r re} | mi( re) r2 |
    \t {re'8( la mi')} sold4\upbow r |
    r8 la,( la) r r la-> r2 |
    \st {si,8\pleggiero si la la si si la la si si |
    la la si si la la si si si si |
    la la si si la la si si si si} |
    la\< la si si <la mi'> <la mi'> mi' mi re re\! |
    do\< do dod dod dod dod sold' sold fad fad\! |
    fa16\< fa fa fa sol sol sol sol
    lab lab lab lab do do do do dod dod dod dod |

    %%% Climax %%%
    re4\f r R4. |
    \st {re'8 sold, re sold,} \ind #"détaché" re16 dod si sold sol4->( |
    re'8-.\sfz) r r4 | R4.
    \st {sold''8 re sold, re} |
    re,16 si la sold sol4->( | re'8-.\sfz) r r4 | R2
    re''4:16->\ff sold,8:16~-> sold: si,4-> |
    do,16\mf\< reb mib mi fad8-. la-. do4-- |
    sold'16->\! fad mi mib re4-- mi,16 mib re la sold4 |

    %%% Soprano 2 %%%
    re'\leftpizz r r8 la16\f la |
    la4-.-> r8 la-> r r16 la la4-.-> |
    r8 sib-.-> r4 \st {sib8\p sib |
    si si r si si r la la |
    sib4-- r8 sib r sib |
    r sib r sib sib r sib\< sib |
    do\! do r do r do |
    r do r do do r do do |
    dod dod r dod r dod |
    r dod r dod r dod r dod |
    r sol\pp r sol sol4 sol8 sol sol4 sol8 sol r sol |
    r la r la la4 la8 la la4 la8 la r la |
    r sol r sol r sol r sol r sol sol4 sol8 sol} |
    <sold re'>4-- \st {<sold re'>8 <sold re'> r4 |
    la8->\mp la sold4 r2 | r4 la la |
    sold8 sold r sold r4 sold8\< sold |
    la\! la r la sol sol |
    sold sold r sold r4 lad8\< lad |
    si\! si r si\< dod dod} |
    re4--\! r r2 | R2. <re' mib>4-.\mf <re mib>-. sib8( re) lab4-- |
    R2.
    \st {sol,8\pp sol r sol sol4 sol8 sol sol4 sol8 sol r sol |
    r sold r sold sold4 sold8 sold} sold4-- \st {sold8 sold r sold} |

    %%% Soprano 1 %%%
    <sib re sib'>4---> r r2 | R2. R1 R2. R1
    \st {dod8\p dod r2 dod8 dod r4 r2 |
    sol8\pp sol r sol sol4 sol8 sol sol4 sol8 sol r sol |
    r sol r sol sol4 sol8 sol sol4 sol8 sol r sol |
    r sol r sol} lab4-- \st {sol8 sol} lab4-- lab8-.-> si-.-> r \st {si |
    r sol r sol} lab4-- |
    \st {la8->\mf la sold4 r2 r4 sib la |
    sol8->\pp sol r4 r2 | R2.
    sol8 sol sol r r2 |
    r4 r8 sol r4 |
    R1 sol8\p sol} sold4-- r |
    sold4-- r r2 | R2. R1 R2.

    %%% Duo %%%
    mi''8\mp mi fa( fa,) mi' mi fa( fa,) |
    \simile mi' mi fa fa, mid' mid fad fad, |
    mid' mid fad fad, mid' mid fad fad, |
    red'\mf red fad fad, red' red fad fad, |
    red' red fad fad, re' re mi mi, |
    sold sold si re, sold sold si si, |
    re\mp re fad dod re re fad do si si sold sold |

    %%% Baryton 2 %%%
    \accdet {<re' re>4\downbow\fsubito <re re>\downbow <re re>\downbow <re re>\downbow} r2 |
    \simile re4 re re re r2 |
    \acc {re''4 re re8} mi,32( sold si dod) |
    \accdet {re4\downbow re\downbow re\downbow lab\downbow} \acc {lab lab8} \t {re,16( mib fa)} |
    \acc {lab4 re, re,8} \t {sold,16( la do)} |
    re4-> r re\upbow\<( mib->\!) r2 |
    sol,16\mf sol sol sol lab lab lab lab la la la la |
    lab\< lab lab la la la |
    <re lab'>4--->\f <re lab'>---> lab'8-> \t {fa16( fad sol)} |
    lab4-> r sib,8-. sib-. la4-> r2 |
    lad16\mp lad lad lad sol sol sol sold sold sold la la |
    sib sib si si do do dod dod re re re re |
    re2:16\< re4:16 |
    <sold, re'>2--->\! r16 sold''\<( la si) |
    re4->\f re---> re8-> \t {sold,16( la si)} |
    re4-> r2 |
    re4---> re,---> re8-> \t {mib16( fa lab)} |
    re,4-> r2 |

    %%% Boum %%%
    <sol,,! sold'>4->\sffz r2 R2.*2
    r4 <re'\parenthesize sold dod\harmonic la'\harmonic sold'>2\pp~
    <la'' sold'>2.~ <la sold>2.~ <la sold'>2. |
    r8 \ind #"très clair" fad,--\mp( fad-- fad-- fad-- fad--)
    fa--( fa-- la-- la-- sib-- sib--) |
    r lab--( lab-- lab-- lab-- lab--)
    la--( la-- do-- do-- dod-- dod-- |
    r <do, sol'>--(\mf <do sol'>-- <do sol'>-- <do sol'>-- <do sol'>--) |
    sold'--( sold--) <lab do>--( <lab do>--) <sol si>--( <sol si>--) |
    r8 sol,8:32\pp\< sib4: si8: sib: |
    si: red: mi: lab: sol4: |

    %%% Contralto %%%
    re4--->\! r8 \pizz re\mp r re r re |
    re4\thumbpizz \arco sold'\f\<\glissando |
    re'\sfz r8 \pizz re,,\mp |
    r re r re | r re r re |
    r re r re | r re r re |
    r <lab mib'>\arpeggUp r <lab mib'>\arpeggUp |
    r \simile <lab mib'> r <lab mib'> |
    r4 \arco fa'8->\mf fa-> fad4-> r | R2.
    R2*4 \pizz r4 sold,8\p sold la4 r |
    \arco la8->-.\mf la-. sold4-. r r sib8-. sib-. la4-. |
    la8-.-> la-. sold4-. r r si8-. si-. sib4-. |

    %%% Grand ensemble %%%
    mi8\pdolce mi fa( la,) mi' mi fa( la,) |
    mi' mi fa( la,) mi' mi fa( la,) |
    \simile mi' mi fa la, mi' mi fa la, |
    sold' sold la la, sold' sold la la, |
    mid'\< mid fad la, mid' mid fad la, |
    la' la sib sib, la' la sib4\! |
    <si, red>8-. <si red>-. <do mi>4--
    <si red>8-. <si red>-. <do mi>4-- |
    <red sol>8-. <red sol>-. <mi sold>4--
    <red sol>8-. <red sol>-. <mi sold>4-- |
    \simile <si red>8 <si red> <do mi>4
    <si red>8 <si red> <do mi>4 |
    <re fad>8 <re fad> <mib sol>4
    <re fad>8 <re fad> <mib sol>4 |
    <dod mid>8 <dod mid> <re fad>4
    <red si'>8 <red si'> <mi do'>4 |
    <sib' re>8 r r <sib re> <la dod> r <lab do> r |
    mi'\mf mi fa( fa,) mi' mi fa( fa,) |
    sold' sold la( la,) sold' sold la( la,) |
    \simile mid' mid fad fad, mid' mid fad fad, |
    la' la sib sib, la' la sib sib, |
    do' do dod dod, sid' sid dod4 |
    <mid, dod'>8-.\f <mid dod'>-. <fad re'>4--
    <mid dod'>8-. <mid dod'>-. <fad re'>4-- |
    <sold mid'>8-. <sold mid'>-. <la fad'>4--
    <sold mid'>8-. <sold mid'>-. <la fad'>4-- |
    <mid dod'>8-. <mid dod'>-. <fad re'>4--
    <mid dod'>8-. <mid dod'>-. <fad re'>4-- |
    <sold mid'>8-. <sold mid'>-. <la fad'>4--
    <sold mid'>8-. <sold mid'>-. <la fad'>4-- |
    <sold mid'>8\fmolto <sold mid'> <la fa'> <la fa'>
    <sold mid'> <sold mid'> <la fa'> <la fa'> |
    <fad red'> <fad red'> <la sold'> <la sold'>
    <fad red'> <fad red'> <la sold'> <la sold'> |
    <la sold'> <la sold'>-> <la sold'>-> <la sold'>->
    <la sold'>-> <la sold'>-> <la sold'>-> <la sold'>-> |
    <la sold'>-> r r2 |

    %%% Chute %%%
    <re, sold>2.\ff\glissando mi'2.:32\sfp~ mi4:\< re: la:
    sold:\mp\> mi: re: la: sold: mi:\! re4-- r R2*2

    %%% Andante al fine %%%
    R2.*34
    r4 <mi mi'>->--\f <mi mi'>8-.-> <mi mi'>-.-> |
    <mi mi' mi>4---> r2 |
    <mi mi'>4---> <mi mi'>8-.-> <mi mi'>-.->
    \t {<mi mi'>-.-> <mi mi'>-. <mi mi'>-.} |
    <mi mi' mi>4---> r2 |
    r2 \ind #"ample" <mi' mi'>4--->\ff\<\downbow |
    <mi mi'>8--->\downbow <mi mi'>--->
    \t {<mi mi'>---> <mi mi'>-. <mi mi'>-.}
    \tt {<mi mi'>16---> <mi mi'>-> <mi mi'>-> <mi mi'>-> <mi mi'>->\!}
  }
}