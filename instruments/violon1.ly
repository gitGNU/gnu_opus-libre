%------------------------------------------------------------------%
% Opéra Libre -- violon1.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

ViolonUn = {
  #(make-instrument-name 'violin-one "violin" 23.5)
}

PrologueViolonUn = { \ViolonUn
  \relative {

    %%% Introduction %%%
    \partial 4 r4 R2. si'''?2.~\upbow\pp\< si2.~
    si2:16~\f\> si4:32~ si8\! r
    \ten mi,,,2~\f| mi4 r | mi2.~| mi4 r | fa2\f\> mi2.~\mp| mi4 r R2 |
    <sib mi>2.~| <la mi'>4 r | R2 <do mi>2.~|
    <do mi>4 mi8--\<( mi--) \t {mi--( mi-- mi--)} \tt {mi16--( mi-- mi-- mi-- mi--)} |

    %%% Entrée du baryton 2 %%%
    mi2--->\f r4 R2 sol16\mf\< sol sol sol sol sol do do |
    mib4.--->\f r8 dod,-.-> r | r dod-.-> r4 | r8 dod-.-> r4 dod8-.-> r |
    r4 dod\upbow \glissando | re8-> r r re-.-> r4 | r8 re-.-> r4 |
    mi8-.->\mf r r4 mi8-.-> r | r mi4.\>\upbow fa2~--\p fa r4 |

    %%% Tempo giusto %%%
    <re re'>8\sfz r mib16\p( re) mib( re) |
    mib( re) mib( re) mib( re) mib( re) |
    mib( re) re re re' re, re  re |
    mib( re) mib( re) mib( re) mib( re) |
    mib( re) mib( re) mib( re) mib( re) |
    fa( re) fa( re) fa( re) fa( re) | dod'8 r r4 | R2
    re'4\f\downbow re,\downbow re,\downbow |
    lab2-- r4 | re''4.\downbow re,\upbow |
    sib,2.\mp\downbow dod mi |
    lab4.\< la | do4 mib8 fa4 lab8 |
    <re, re'>8.->\f re'16-. re8-. <re, re'>4-> re'8-. |
    <re, re'>4-> re'8-. <re, re'>8~-> <re re'>16 re'-. re8-. |
    <re, re'>2.---> r4 | R2*2 R2-\fermataMarkup

    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*11
    r4\fermata \pizz lab'8\p |

    %%% Andantino %%%
    lab, r lab' lab, r lab' r lab-> r |
    sib-> r si-> | lab, r lab' lab, r lab' |
    lab, r lab' lab, r lab' |
    r lab lab, r sib' sib, r lab' lab, |
    r sol' sol, sol, r4 | R4.*11
    \arco sib4\mp mib16( lab) | dod\>( re fa solb) la( sib) |
    \ten do4.~\pp do~ do~ do8 r4 |
    re,,8. do''~ do4.~ do~ do8 r4 |
    la,8 re'4~ re4.~ re~ re8 sold, sold, |

    %%% A tempo %%%
    \t {re''16\sfp\>( lad fad} \t {re lad fad} re8-.\!) |
    si4~--\mf si16 r |
    \t {re''16\sfz\>( la sol} \t {re la sol} re8-.\!) |
    dod4~--\mf dod16 r |
    si16 mi lab\< reb fa sib |
    re8->\f r16 re re re re8-> r16 re re re re8-> r16 re re re |
    <re lab'>8-> r4 | \pizz dod,8->\mf r re, dod'-- r4 |
    dod8-> r re, mi'-- r4 | lad8-> r4 |
    lad8-> r4 | \arco lad8-.->\mf r4 |
    si8-.-> r \ind #"jeté" si32 si16. |
    r8 si-.-> r |
    <fa re'>16\f\> <fa re'> <fa re'> sold,\! r8 |
    <fa're'>16\> <fa re'> <fa re'> sold,\! r8 |
    <mi're'>16\> <mi re'> <mi re'> sol,\! r8 |
    <mi're'>16\> <mi re'> <mi re'> fa,\! r8 |
    <sold' re'>16\> <sold re'> <sold re'>\! r r8 |
    <dod, sol'>16\mf\> <dod sol'> <dod sol'>\! r r8 |
    <fa, si>16\mp\> <fa si> <fa si>\! r r8 |
    sol16\sfz\> sol fad fad mi mi |
    \ten dod4.~\p dod~ dod8 r4 | R4.*5 R8*5 |
    <la''fa'>16->\ff <la fa'> <la fa'> <mi do'> r8
    <la fa'>16->\> <la fa'> <la fa'> <mib sib'>\! r8 |
    <re dod'>16\mf\> <re dod'> <re dod'>\! r r8
    <re sib'>16\> <re sib'> <re sib'>\! r r8 |
    sol16-.\p re-. sold,-. si-. fa-. sold-. r8 r4 |

    %%% Adagio %%%
    R1*4 R1. r1 mi''4--\pp\CaV r |
    R1*3 R1. <red,,mi>2.\pp r4 <red' mi>-- r |
    R1*2 R2.

    %%% Valse %%%
    <si la'>2.~\pp <si la'>4 r2 | R2.
    \pizz sol,4\mp si' red | dod, dod' r |
    sol, sol' si r lab r sol sol, r2 |
    \ttt {\arco re''16\pp( mib re mib re mib}
    \ttt {re\> mib re mib re mib)} |
    r8 mib'\pp( re) r r re( do) r r do( la) r |
    \ten mi'2.\CaV r4 | R1 R2.
    r4 \pizz sold,,,\mp mi' re re' r |
    r sold,, mi' re lad' r | r fa r mi |
    \arco <la, fad'>8.->\mf <la fad'>16 <la fad'>8-.
    <fad' re'>~-> <fad re'>16 <fad re'> <fad re'>8-.
    <re' la'>8.-> <re la'>16 |
    <re la'>8-. <la' mib'>~->\< <la mib'>8. <la mib'>16 <la mib'>4-> |

    %%% Vivo al fine %%%
    <re,, la' re'>4->\sfz r |
    r8 re16-.\mf re-. mib8-> r |
    r re16-. re-. fa8-> r | R2
    mib16( re) mib( re) mib( re) mib( re) |
    fa( re) fa( re) fa( re) fa( re) |
    lab'\< lab lab lab lab lab lab lab |
    sib\f\> sib fa fa fa fa sol sol |
    re8\mp r r4 | R2*21
    r4 \pizz mi''\mp |
  }
}

ActeUnSceneUnViolonUn = { \ViolonUn
  \relative {
    R2*2 R2. R2*2 R2.
    R2*2 \ind #"flaut." fad'4:32~\pp fad8 r r4 |
    R2*2 \simile fad4:32~ fad8 r r4 |
    R2*2 fad4:32~ fad8 r r4 |
    R2*2 fad4:32~ fad8 r r4 |
    \ttt {si,16\pp( mib, la,) la( mib' si')}
    \ttt {si( mib, la,) la( mib' si')}
    \ttt {\simile si mib, la, la mib' si'}
    \ttt {si mib, la, la mib' si'} |
    \ttt {si mib, la, la mib' si'}
    \ttt {si mib, la, la mib' si'} si8 r |
    \ttt {red16 sol, la, la sol' red'}
    \ttt {red sol, la, la sol' red'}
    \ttt {red sol, la, la sol' red'}
    \ttt {red sol, la, la sol' red'} |
    \ttt {red sol, la, la sol' red'}
    \ttt {red sol, la, la sol' red'} red8 r |
    fa,16(\ppsempre do fa reb' la'8) \t {reb,16( fa, do)}
    fa( do fa reb' la'8) \t {reb,16( fa, do)}
    fa do fa reb' la' reb, fa, reb' la'8 r |
    \ttt {la16 reb, fa, fa reb' la'}
    \ttt {la reb, fa, fa reb' la'}
    \ttt {la reb, fa, fa reb' la'}
    \ttt {la reb, fa, fa reb' la'} |
    \ttt {la reb, fa, fa reb' la'}
    \ttt {la reb, fa, fa reb' la'} la8 r |
    \ttt {do16\mp( fa, lab, re, lab' fa'}
    \ttt {do' fa, lab, re, lab' fa'}
    \ttt {do' fa, lab, re, lab' fa'}
    \ttt {do' fa, lab, re, lab' fa')} |
    \ttt {do'( fa, lab, re, lab' fa'}
    \ttt {do' fa, lab, re, lab' fa'}
    \ttt {do' fa, lab, re, lab' mi')} |
    \simile mi' solb, sib, solb' mi' solb, sib, solb'
    mi' solb, sib, solb' mi' solb, sib, solb' |
    mi'\<( solb, mi' solb,) mi'( lab, mi' lab,) mi'( sib mi sib) |
    \t {do,\fp\< do do} \t {reb reb reb} \t {mib mib mib}
    \t {fad fad fad} \t {sold sold sold} \t {la la la} |
    <do, si'>4\f\downbow <do si'>\downbow <do si'>\downbow |
    <do mib>8---> fad-- <do sold'>---> la' <do, si'>---> re'-- |
    \t {fad,16\< fad fad} \t {sol sol sol} \t {la la la}
    \t {do do do} \t {re re re} \t {mib mib mib} |
    <fad, mid'>4\!\downbow <fad mid'>\downbow <fad mid'>\downbow |
    <fad la>8---> do'-- <fad, re'>---> red'-- <fad, mid'>---> sold'-- |
    \t {sol,16\< sol sol} \t {la la la} <do sold'>4\downbow <red sold>8-- <mid sold>-- |
    \ottava #1
    \ten do'1~\f do2 \ottava #0 r4 |

    %%% Ad libitum %%%
    R1 R2.*2 R1 R2.*2

    %%% Agitato %%%
    \ten re,,,1~\ff re~ re2 r | R1 fa4\f\upbow sol2 fa4 sib2\>(\glissando re,4\!) r |
    r4 \ind #"secco" mib8-.\mf mib-. re4-. r r2 | R1*2
    r4 mib8-. mib-. re4-. r r2 | R1*3
    r4 re---> r1 | R1*2 R1.*3
    r4 r8 \st {red16 red mi4 r |
    r4 red16 red mi8 red16 red mi8} r4 r2 |
    re'4.\f\>\glissando dod'8~ \ten dod1\! R1.*2

    %%% Allegro non troppo %%%
    \pizz sib,4\mf r r2 | R2. R1
    \arco do8-.\pp sib-. do-. sib-. do-. sib-. do-. sib-. | R1
    \ind #"staccato leggiero" la'16\ppsempre la fa fa la la fa fa la la fa fa la la fa fa |
    la la fa fa la la fa fa la la fa fa la la fa fa |
    la\p la sol sol la la sol sol la la sol sol |
    la la sol sol la la sol sol la la sol sol la la sol sol |
    la\mp la sol sol la la sol sol la la sol sol |
    la la sol sol la la sol sol la la sol sol la la sol sol |
    la\mf\< la la la la la la la la la la la |
    la la la la la la la la la la la la la la la la\! |
    r4 mi,8\f\<(\glissando dod'4.\!) | r8 re,\mf( dod2.) |
    sol2:32~\mp\< sol2~\mf\> sol2.\p r4 |
    la'16\mf la re, re la' la re, re la' la re, re la' la re, re | R1
    la'16\mf la re, re la' la re, re la' la re, re | R2.*2
    R1*6

    %%% Moderato %%%
    do'8--\p[ r16 sib-.] do8-- r do--[ r16 sib-.] do8--[ r16 sib-.] |
    do8--[ r16 \simile sib] do8 r do[ r16 sib] do8 r |
    do8[ r16 do] sib-.[ do-. r sib] do8--[ r16 sib,-.] |
    do8--[ r16 \simile sib] do8[ r16 sib] do8[ r16 sib] |
    do8[ r16 sib] do8[ r16 sib'] do8[ r16 sib] do8[ r16 sib,] |
    do8[ r16 sib] do8[ r16 sib] do8[ r16 sib] |
    do8[ r16 sib'] do8[ r16 sib,] do8[ r16 sib] do8[ r16 sib] |
    do8[ r16 sib] do8[ r16 sib] do8[ r16 sib'] |
    do8[ r16 sib] do8[ r16 sib,] do8[ r16 sib] do8[ r16 sib] |
    do8[ r16 sib\pp] do8 sib16-. do-. r8 sib16-. do-. |
    r8 \simile sib16 do r sib do8 r16 sib do8 r16 sib do8 |
    sib16 do r8 do16 sib do8 r16 sib do8 |
    sib16 do r8 sib16 do r8 sib16[ do r sib] do8[ r16 sib] |
    do8[ r16 sib] do8 sib16 do r8 r16 sib |
    do8[ r16 do] r8 sib16 do r8 sib16 do r8 do |
    r16 sib\ppsempre do8 r8 sib16 do r sib do8 |
    r16 sib do8 r16 sib do8 sib16 do r8 sib16 do r8 |
    sib16[ do r sib] do8[ r16 sib] do8[ r16 sib] |
    do8 sib16 do r8 sib16 sib | do8\sfz r r2 |
    \repeat tremolo 16 {do32\pp\< sib} |
    do8->\f r16 sib32-. sib-. do8-> r16 \simile sib32 sib |
    do8 r16 sib32 sib do16 r \t {sib16 sib do} | R2*2

    %%% Allegro marcato %%%
    \acc {<dod sold' sol'! red'>4\sfz dod\mp <dod sold'> dod |
    <dod sold' sol'! red'>4\sfz dod <dod sold'>} r |
    \st {sol'!\p sol fad fad} <re sib'>2--->( sol8) r r4 | R1
    \acc {<lab re sol dod>4\sfz dod,\mp <sib lab'> dod |
    <lab're sol dod>\sfz dod, <sib lab'>} r |
    \st {lab''\p lab sol sol} <si, fad'>2--->( fa'8) r r4 | R1
    r4 si,\mp\>( sol8\!) r r4 | r si\>( sol8\!) r r4 |
    \st {sol\p sol fad fad} fa2\>( mi8\!) r r4 |
    r si'\mp\>( sol8\!) r r4 r si\>( sol8\!) r r4 |
    \st {sol\p sol fa fa} fad2\>( re8\!) r r4 | R1
    r2 r4 \pizz dod'\p si( lad sold) r si( lad sold) r |
    r si\> lad sold\! |

    %%% Agitato %%%
    \arco <do, re>2.\f r4 | R1*2
    re2-- fad16\<( sold la si) re( mi fa sol) |
    \st {sib8\sfz <re,, la'>\pp <do' la'>-> <re, la'> <do' la'>-> <re, la'> <re la'> <mib' sib'>-> |
    <re, la'> <re la'> <do' la'>-> <re, la'> <do' la'>-> <re, la'> <re la'> <mib' sib'>-> |
    <re, la'> <do' la'>-> <re, la'> <do' la'>-> <re, la'> <re la'> <mib' sib'>-> <re, la'> |
    <re la'> <do' la'>-> re, re <do' lab'>-> re, <do' lab'>-> re, |
    <do' lab'>-> re, re <mib' sib'>-> re, re <do' lab'>-> re, |
    <do' lab'>-> re, re <mib' sib'>-> <do sol'> re, fa <sib sol'>-> |
    fa fa <reb' lab'>-> sib sib lab'-> sol-> sol->} |
    fad'->\sfz r r4 r1 | R1*2
    \ind #"staccato leggiero" la,16\pp la sib sib la la sib sib la la sib sib la la sib sib |
    fa fa sib sib fa fa sib sib fa fa sib sib |
    si si do do si si do do |
    \t {fad,8-.\p sol-.( do-.)} \t {fad,-. sol-.( do-.)} |
    \t {sol-. la-.( dod-.)} \t {sol-. la-.( dod-.)} | \t {sold-.\< la-.( re-.)} re-.->\! r | R2 R1*4
  }
}

ActeUnSceneUnBisViolonUn = { \ViolonUn
  \relative {
    R2.*6
    \ttt {lad'16\p( sold lad dod lad dod)}
    \ttt {mi( dod mi fad mi fad) }
    \ttt {sol\<( fad la) sol-- do-- la-- } |

    %%% Piu vivo %%%
    re4\sfz\downbow re,\downbow re,2\downbow | R2.
    re''4\f\downbow r8 re,,~\downbow re2 | R2.
    <fa' re'>4->\ff <fa re'>8-- <fa re'>4-> <fa re'>8-- |
    <mib re'>4-> <mib re'>8-- <dod re'>4-> <dod re'>8-- |
    <fad re'>4-> <fad re'>8-- <si re>4-> <si re>8-- | <si re>2.---> |
    R2. r4 fa,2~--\p fa4. r8\fermata r4 |
    R2. r4 fa2~-- fa2~fa8 r\fermata r4 |
    R1 R2

    %%% Largo %%%
    R2*3 R2. R2 R2.
    mi2~\p\> mi4\! r2 |
    mib2\< mib4 <si sol'>4--\mp r r2 |
    R1 R2. R2
    r2 r8 sib'4.\pp\upbow |
    \ten sol2.~\CaV sol2\CaV r4 |
    \longHairpins {do2--\mp\> re~\pp\CaV re4\CaV r2 } |
    R2*3 R2. R1 R2.
    r4 <sib, re>\mf\downbow \ten <sib mib>2~\downbow <sib mib>
    <la red>2.\mp r2 <la red>4-.\downbow |
    <sold mi'>2.\downbow

    %%% Adagio %%%
    R1*33 R2*4
  }
}

InterludeUnViolonUn = { \ViolonUn
  \relative {
    R1. R1*3 R1. R1 R1.*2 R1 r2 re8\mf( mi \t {fa la sold} |
    si1.~) si1~ si4\> la~ | la sold2.~\p sold4 r2 |
    r4 \ttt {r16 re\p( mi fa la sold} |
    \ttt {si sold la si mi re}
    \ttt {fa re mi fa\< sib sol}
    \ttt {do sol sib do mib reb} |
    fad1~--->\f) fad2 r8 mib4( do8) |
    sib2.---> r8 mi,( dod'4.) r8 |
    fad1~---> fad2 r8 sol,4.( |
    fad'1--->) sol,4~( sol16 lab \t {sib mib reb} |
    fad2~) fad8 r la,16( sib \t {mi fad mi} |
    \ottava #1
    sib'2.--->)\ff\> \ottava #0 fad2.~\p fad4 r2 | R2.*3
    sol,,2.~\pp sol~ sol~ sol~ sol2 r4 |
    la2.~ la~ la~ la \pizz fad4 r sol r sold r |
  }
}

ActeUnSceneDeuxViolonUn = { \ViolonUn
  \relative {
    %%% Air de la Soprano2 %%%

    R2.*2 R1*2  R2.*2 R1*2  R2.*2
    re4-.\mp la'-. sold8( mi re4-.) |
    mi8( re la' sold)-. r mi sold4-. |
    mi-. re8( la' sold4)-. | la8( sold mi re)-. r4 |
    sold8\p( la sold mi re4)-. sold8( la) |
    sold( mi re mi sold4)-. sold8( la) |
    sold( mi re4)-. sold8( la) |
    sold( mi re mi sold4)-. |
    R1*2 | R2.*2 |
    la8\p( re la sold) re( sold) la( re |
    la sold) re( sold) la2 |
    r8 la( re la sold) re( |
    sold la) r mi sold4-. |
    re-+ <la'' re>-.-> r2 |
    r8 <la re>8-.-> r4 re,,-+ <la'' re>-.-> |
    r8 <la re>-.-> r4 <la re>-.-> r8 re,,-+ r <la'' re>-.-> r4 |
    sol,,-+ <do'' sol'>-.-> r2 |
    r8 <do sol'>-.-> r4 sol,,-+ <do'' sol'>-.-> |
    r8 <do sol'>-.-> r4 <do sol'>-.-> |
    r8 sol,,-+ r <do'' sol'>-.-> r4 |
    sol,,-+ <do'' sol'>-.-> r2 |
    la,,4-.\mf re8->( si) r la-. si4-> |
    re4-. sol8( fa) do'4-> | fa,8( sol) si-> do-> r4 |
    << lab'2 \\ {re,8\ff( mib re sib)} >> lab8( sib) re( mib |
    re sib) lab( sib) re4-> r |
    <re lab'>8->( mib re sib) <re lab'>->( mib |
    re sib) <re lab'>->( mib re sib) |
    <re lab'>1---> ~ <re lab'>4 r sol,,-- lab-- |
    do8\>( re) fa2~--\mp| fa r4 |
    R1*2 R2.*2 R1*2 R2.*2 |
    <re la'!>1~\ppp\CaV<re la'>~\CaV |
    <re la'>2.~\CaV <re la'>~\CaV|
    <re la'>1~\CaV <re la'>~\CaV |
    <re la'>2.~\CaV <re la'>2\CaV  r4|
    \flaut sold8\ppp( la sold mi re mi sold la |
    sold mi re mi sold4) sold8( la |
    sold mi re mi sold la |
    sold mi re mi sold4) |
    sold8( la sold mi re mi sold la |
    sold mi re mi sold4) sold8( la |
    sold mi re mi sold la |
    sold mi re mi sold4) |
    R1*2 R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1 R1-\fermataMarkup  |

    %%% Récitatif %%%

    r4 r8 sib4.--\mp\downbow | sol2.--\downbow~|sol1~|sol2 r4 |
    r4 r8 sib4.--\downbow | sol2.~--\downbow|sol1~|sol2 r4 |
    R2. | r4 r8 sib4--\mp\downbow sol8~--\downbow| sol2.~| sol8 sol~ \t {sol sol sol}
    sol4:32\< |
    sol8\sfz r r2 | R2 | r4 r8 sol4.\p\>\upbow |
    mi?1~\! mi~ | mi2.~ mi~ mi~ mi2 r4 | R2. R1 |

    %%% Duo %%%

    r8 \pizz <sib re>\mp\arpeggUp
    r8 \simile <sib re> r8 <sib re>
    \repeat unfold 13 {r8 <sib re>} <sib re>4 |
    \repeat unfold 7 {r8 <do mi>} |
    \repeat unfold 3 {r8 <red fad>} <red fad>4 |
    \repeat unfold 4 {r8 <dod fad>} r4 | R2
    \arco sol'8--\mf
    sol-- sol-- sol-- \simile sol sol
    \repeat unfold 22 sol
    red'-.\psubito red-. red-. red-. \simile red red
    \repeat unfold 8 red
    lad'\mf\< \repeat unfold 7 lad
    re!\! sol, do, re' sol, do, |
    re' sol, do, re' sol, re' |
    R2. R1 |

    %%% Piu vivo %%%
    sol,,16\fp sol sol, sol sol' sol sol, sol sol' sol sol, sol |
    sol' sol sol, sol sol' sol sol, sol sol' sol sol, sol sol' sol sol, sol |
    fad'-- fad sol, sol fad'-- fad sol, sol mi'-- mi sol, sol |
    mi'\< mi sol, sol dod dod sol sol dod dod sol sol |
    <sol sol'>4\ff \st {<sol sol'>8\downbow <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'>} |
    dod2-> r4 |
    \st {<sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'>4} |
    dod2-> r4 |
    sol4->\downbow sol->\downbow \t {mi'--( re-- fa--)} |
    dod2-> \tt {sib16( la lab sib si)} |
    sol4-> r2 |
    \pizz <sol re' la'>4\f <sol re' la'> <sol re' la'> <sol re' la'> r2 |
    si4 si si | sib-> r2 |
    \arco re4-> r8 re-. r16 re re8-. |
    re4-> \tt {sib16( dod red mi fad } \tt { mi fad la si do } |
    re4->) \tt {sib,16( do reb mib fad} \tt {mib fad sold la si}|
    re4->) \tt {sib,16( si dod mi fad } \tt { mi fad sol la do} |
    re4->) \tt {sib,16( do mib fa solb} \tt {fa solb lab si dod}|
    re4->) \tt {do,16( mib fa fad sold} \tt {fad sold si re dod}|
    mi4->) \tt {mib,16( fa fad sold si} \tt {sold si re dod mi} |
    sol4->) \ttt {si,16\< si re re dod dod} \ttt {sol' sol mi mi la la} |

    %%% Poco allargando %%%
    sib2.\ff la4~|la4. sol8~sol2\> | mi\!( re4) r |
    %%% Tempo giusto %%%
    \st {dod16->\fp re, re re dod-> re re re dod'-> re, re re dod-> re re re |
    re'-> re, re re re re re'-> re, re'-> re, re re re re re'-> re, |
    mi'-> mi, mi mi mi mi mi'-> mi, mi'-> mi, mi mi mi mi mi'-> mi, |
    sol'-> sib, sib sib sib sib sol'-> sib, sol'-> sib, sib sib sib sib re-> sib |
    si'-> mib, mib mib do-> mib mib mib si'-> mib, mib->\< mib fa-> fa sold-> sold} |
    dod2\f r4
    \ten <mi, la\harmonic mi''>1~\mf <mi la\harmonic mi''>~ <mi la\harmonic mi''>4 r2
    R2
    <mi la\harmonic mi''>2~ <mi la\harmonic mi''>~ <mi la\harmonic mi''>2.~
    <mi la\harmonic mi''>8 r \tt {dod,16\mf\<( mi fad la si)} \tt {la( si re mi sol)}|
    <la, la'>4--->\f <la la'>---> <la si'>---> <la si'>---> |
    <la la'>---> <la la'>---> <la si'>---> <la si'>---> |
    <la la'>16->\< \ind #"détaché" re, sol la re mi sol la |
    <mi re'>4--->\ff <mi re'>---> <re mi'>---> <re mi'>--->
    <mi re'>---> \pizz <sol mi'>8 r r2 |

    %%% Largo assai %%%
    R1 R2.*3 R2
    \arco \ten sib,,2.~\pp sib2. r4 |
    r2 \pizz la'4 sold | sol r dod, r | re r r2 |
  }
}

InterludeDeuxViolonUn = { \ViolonUn
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    \pizz sol4--\mf \t {re'8 mib sib'} |
    si,4-- \t {re8 fad si} |
    sol,4-- \t {re'8 mib sib'} |
    re,4-- \t {mi8\< la dod} |
    re4--\psubito \t {sol,,8 re' la'} |
    mi'4 \t {sol,,8\< re' la'} |
    mi'4 \t {la,8 re sol} |
    do4--->\fp \t {lab,8 reb fa} |
    sib4 \t {mib,,8 sol si} |
    si4 \t {reb,8 fa la} |
    lab4 \t {si,8 mib sol} |
    solb4 \t {la,8 reb fa} |
    mi4\< \t {mi'8 lab do} |
    mi4->\! r |
    \arco \ten mi,,1~\p mi~ mi~ mi2 r | R2.
    \ten re1~ re2 r4 | R2. mi2.--\pp r4 R2. mi4-- r |
  }
}

ActeUnSceneTroisViolonUn = { \ViolonUn
  \relative {
    R2.*6 \longHairpins {<mib re'>2.:32\mp\< <mib re'>4->\! r2 }|
    r4 \pizz sold\mf r | r mi\mf r r8 mib-> r dob sib4 |
    \arco dod2.:32\fp R2.*2 dod2.:32\pp sold':\< |
    <mi red'>8-.\f <mi red'>4---> <mi red'>8-. <mi red'>4~--->(
    <mi red'>8) <mi red'>4-- <mi red'>8-. <mi red'>4~--->
    \ten <mi red'> r \pizz si\mf sib r2 |
    R2.*4

    %%% Lamento %%%
    R1.*6 R1*5/4*5 R1*4
    \arco <sol'mib' sib'>4--->\f <mib' sib'>8-> <mib sib'> \t {<mib sib'>-> <mib sib'> <mib sib'>}
    <sol, mib' sib'>4---> <mib' sib'>8-> <mib sib'> \t {<mib sib'>-> <mib sib'> <mib sib'>}|
    <mib re'>16->\< <mib re'> <mib re'> <mib re'> \t {re'->\! re-> re->} <la sold'>8->\sffz r4 |
    R2*2

    %%% Tempo I %%%
    \pizz re,,4\mp si r do la r |
    R2.*7
    \repeat tremolo 12 {\arco fa'32\< sol} lab4-.->\sfz r2 |
    R2. \pizz la!4\mp r sol r2 fad4 |

    %%% Tempo II %%%
    R1.*3 r2 sol,4\p( lab2\<) mib'4~\upbow mib2.\! r4 r2 |
    R1.
    r2 r4 <re mi' dod'>->\sffz r | R1 R2. R2
  }
}

ActeUnSceneTroisBisViolonUn = { \ViolonUn
  \relative {
    R1*8 r2 la'8\mp( sol) sib4-- fad4-- r r2 |
    R1*20
    do1--\pp do2-- do-- do-- do-- do-- do-- |
    fa'4\mf(\glissando re8) r re4(\glissando si8) r |
    la\>(\glissando fad16) r fad8(\glissando mib16) r mib8( do16\!) r |
    R1*16
    r2 r4 r8 \pizz <la fa'>\p |
    r <la fa'> r4 r r8 <la fa'> |
    R1*3
    r2 \arco do'\mp( si~si4 lad | fad) r r2 |
    R1*4
    <lad, mi'>1\p\> \ten dod~\pp dod~ dod~ dod~ dod~ dod\fermata
  }
}

ActeUnSceneTroisTerViolonUn = { \ViolonUn
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4\f r2
    r4 \arco sol2~\p sol2.~ sol4 r2 |
    \pizz <sib, sib'>4 r2 R2.
    <si si'>4 r r2 <do do'>4 r <dod dod'> r |
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
    re2.:32~ re8 r r2 | R2.*13

    r4 <re,,sib'>2--\mp <re sib'>--\< <re sib'>4~--\! <re sib'>2 r4 |
    r  <re  sib'>2--\mp\< <fad re'>-- <sib fad'>4~--\! <sib fad'>2 r4 |
    R2.*3 R1 R2.
    r4 sib2~--\mp\>( sib4 la2\!) | R2.
    r4 \t {la8\p( mi la} \t {mi la mi)} \t {la( mi la} \t {mi la mi} la4) |
    r  \t {sib8\p( sol sib} \t {sol sib sol)} \t {sib( sol sib} \t {sol sib sol)}
    \t {fad( si fad} \t {si\> fad si\!)} r2 |
    r4 \t {sib8( sol sib} \t {sol sib sol)} \t {sib( sol sib} \t {sol sib sol)}
    \t {fad( si fad} \t {si\> fad si\!)} r2 |
    r4 \t {re8\mp( sib re} \t {sib re sib)} \t {re( sib re} \t {sib re sib)} \t {red( si red}
    \t {si red si} red4) r |
    r  \t {re8\mf\>\(( sib) sib(} \t {sol) sol( re)\!\)} \t {sol'\>\(( re) re(} \t {sib) sib( sol)\!\)}
    \t {fad'\((\> red) red(} \t {si) si( fad)\!\)} \t {si'\((\< fad red)} \t {re'( sib sol)\!\)} |
    r si\f( sib) sol( fad) mib re'-- si( sib) sol( fad) mib |
    re'-- si( sib) sol( fad) mib( re) si4--\>( fad--) mib8~--\mp mib2 r4 |
    R2.*4

    la4\p( sol fa mi) fa8( mi fa sol) la4( mi2~) mi2.~ mi2 r4 |
    la4\p( mi2~) mi2.~ mi2.~ mi2 r4 R2.
  }
}

InterludeTroisViolonUn = { \ViolonUn
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    <dod la'>16-.\pp <dod la'>8--( <dod la'>-- <dod la'>--) <dod la'>--(
    <dod la'>-- <dod la'>--) <do sold'>--( <re sib'>16-.) |
    <dod la'>-. <dod la'>8--( <dod la'>-- <dod la'>--)
    <do sold'>-- <lad fad'>--( <dod la'>16--) |
    \simile <la'fa'>\p <la fa'>8 <la fa'> <la fa'>
    <do lab'> <sib solb'> <dod la'>16 |
    <la fa'> <la fa'>8 <la fa'> <la fa'> <la fa'>16 |
    <si sol'>\mf <si sol'>8 <si sol'> <si sol'>
    <si sol'> <la fa'> <re sib'>16 |
    <si sol'> <si sol'>8 <si sol'> <si sol'> <si sol'>16 |
    <mi do'>\f <mi do'>8 <mi do'>16 <mi do'> <mi do'>8 <mi do'>16 |
    <sol mib'>\ff <sol mib'>8 <sol mib'>16 <sol mib'> <sol mib'>8 <sol mib'>16 |
    R2*2
    \tt {sol,16\f\< si sib re dod} fa32( mi) lab( sol) si( sib) re( dod) |
    fa8\sffz r r4 |
  }
}

ActeUnSceneQuatreViolonUn = { \ViolonUn
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    r2 r16 re\< re re sol4--\mf re-- re8---. la'---. r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2

    %%% Agitato %%%
    re,2.:32\fpp re8-.-> r \t {mi'\mp la( re)} \t {sol re( la)} |
    mi8-. r r2 <mi, la>2.:32\fp <mi la>8-.-> r r2 R2.*2
    do'2.:32\pp\< do8-.->\mp r r2 |
    r16 sol'\upbow\f\< sol sol do8--\! re,-- sol-- la,-- | re4---> r2 |
    r16 sold\upbow\< sold sold dod8--\! red,-- sold-- la,-- re4---> r2 |
    r16 la'\upbow\< la la re8\! r r16 sib,\mp\< sib sib |
    mib8\! r r16 si!\< si si mi!8\! r |
    r16 \simile do do do fa8 r r16 dod dod dod |
    fad8 r r16 re re re sol8 r |
    r16 re re re la'8 r r16 re, re re |
    la'8 r16 la,\< la la do'8-- la,-- sol'-- |
    dod16->\f( re dod la) sol( la dod re) dod8-> r |
    dod16->( re dod la) sol( la dod re) dod8-> r |
    dod16->( re dod la) sol( la dod re dod8) r |
    re16-> mib->( re sib) lab( sib re mib) re8-> r |
    re16->( mib re sib) lab( sib la si) red8-> r |
    red16->( mi red si) la( si red mi) red8-> r |
    sold16->\ff( mi re la) re->( mi sold mi) re->( la) re( mi) |
    sold->( mi re la) re( mi sold mi) re->\<( la) re( mi) |
    la8->\! r r4 r2 \dwnb {<re,,, mi>4\mp <re mi> <re mi> <re mi>2. r4 |
    <re mi>4 <re mi> <re mi> <re mi>2 <re mi>4 <re mi> <re mi> |
    <mib fa>2 <mib fa>4 <mib fa> <mib fa> |
    <mi fad>2} <mi fad>\upbow\> <mi fad>4--\! |
    \t {r4 la--\mp( la--} la2~-- \ten la2.) r4 |
    \t {r4 la--( la--} la2~-- \ten la2.) r4 |
    \t {la--\upbow\>( la-- la--)} \t {lab--( lab-- lab--)} \t {sol--( sol-- sol--)} |
    \t {fad--\p( fad-- fad--} fad~-- \ten fad2.) r4 |

    %%% Andante a piacere %%%
    \repeat tremolo 16 {la,32\pp( dod} la2.) r4 |
    \repeat tremolo 16 {la32( dod} la2.) r4 |
    \repeat tremolo 16 {sold32( si} sold2.) r4 |
    \repeat tremolo 16 {sold32 si} sold2. r4 |
    \t {r <la'dod>--\mf <la dod>--} \t {<la dod>-- <la dod>-- <la dod>--} |
    \t {<sold re'>--\< <sold re'>-- <sold re'>--} <la mib'>8-- <la mib'>-- |
    \t {r4\! <re fad>--\f <re fad>--} \t {<re fad>-- <re fad>-- <re fad>--} |
    \t {<mi sold>--\< <mi sold>-- <mi sold>--} <red la'>8-- <red la'>--\! |
    R1*7 R2*3 R2.*3
    r2 r8 r16 \t {do,32\<(\upbow reb mib} |
    fad8-.->\sfz) r r4 r8 r16 \t {la32\<(\upbow do re} |
    mib8-.->\sfz) r r2 |

    %%% A tempo %%%
    <re,mi>2--->\f <re mi>4-- <re mi>-- |
    <mi sol>-- <mi sol>2---> <mi sol>4-- |
    <fa sib>-> <fa sib>-> <fa sib>-> r |
    \ten sol1~\f\CaV sol4\CaV r2 |
    \ten sib,1~\mf sib4 r2 |
    r2 r4 \t {do8\mf\<(\upbow reb mib)} fad2.~\! fad2 red4--\downbow mid-- fad2-- r4 |
    <la' dod>2--->\f( <la dod>4--) <la dod>-- <la dod>4.---> <la dod>8~-- <la dod>4 r8 fa16\<( la) |
    dod2--->\! \t {dod,8\<( fa la)} dod2--->\! \t {red,8\<( sol si)} |
    red8.--->\ff red16 red8-. red4-> red8-. | red8.---> red16 red8-. red4-> red8~-> red4 |
    <sol, red'>~---> \t {<sol red'>8 <sol red'>4~--->} \t {<sol red'> <si fa'>8~--->}<si fa'>r|

    dod,,16\upbow\f( si) si( dod) dod( si) si( dod) dod( si) si( dod) |
    dod( si) si( dod) dod( si) | \ten sib2.~-- sib8 r4 |
    dod16\upbow\f( si) si( dod) dod( si) si( dod) | dod( si) si( dod) dod( si) |
    do2~-- do4. r8 |
    mi16\upbow\f( re) re( mi) mi( re) re( mi) | mi( re) re( mi) mi( re) |
    mi2~--\mf mi4 r |
    mi16\mp( re) re( mi) mi( re) re( mi) | mi( re) re( mi) mi( re) |
    sol\<( fa) fa( sol) sol( fa) fa( sol) | sol( fa) fa( sol) sib( sol) sol( sib) |
    R2\! R4. r2 \ind #"détaché" sib16\< dod fad la |

    re4->\f r r \simile dod16 do sib do, |
    re,4->\CaV re16\pleggiero re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    \cresc fad-> fad fad fad fad fad fad fad fad fad fad fad sold-> sold sold sold |
    sold sold sold sold sold sold sold sold si-> si si si si si si si |
    si si si si dod-> dod dod dod dod dod dod dod dod dod dod dod |
    re->\f re, re re re re re'-> re, re'4->\> re,\! | R1*3 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    R2.*11
    r4 \flaut sib'2~ sib r4 |
    r4 sib2~ sib r4 |
    r4 sib2~ sib r4 | R2.
    r4 \ordin sib2~ sib r4 | R2.
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5
    R1 R1. R1 R1.
    R1 R1.*5 R1 R1. R1
  }
}

EntracteViolonUn = { \ViolonUn
  \relative {
    R2*9
    R1*2 r4 \st {sold'8\mf sold la4} r R1*7
    r4 \jet dod'32\mp dod8.. dod32 dod8.. r4 |
    dod32 dod8.. dod32 dod8.. r4 dod32 dod8.. |
    r4 dod32 dod8.. r4 dod32 dod8.. |
    r4 dod32 dod8.. dod32 dod8.. r4 | R1*2
    re,,16->\mf re re re re4 r8 mib16->\mf mib mib mib re8-. |
    mib16-> mib mib mib re4-- r2 |
    re2:16\pleggiero re: re: re: re: re: re: re: re: re: |
    re4-- r r2 | \pizz sold'4\mf r r8 fad r sold |
    R1 \arco mi,4.--(\mp fa8~-- fa4) sol-- |
    lab-- \t {la8--\<( sold la)} sib( si) lad( si) |
    do4->\f r r <re, re'>-.->\mp r <re re'>-.-> r <re re'>-.-> <re re'>-.-> r r2 |
    dod16->\mf dod dod dod dod4 r8 dod16-> dod dod dod dod8-. |
    re-> \pizz mib''\mp sol,4-- r8 si mib,4-- |
    r8 fad sib, re fad, mi''-> sold,4-- |
    r8 do mi,4-- r8 sol si, mib |
    sol,4-- r \arco sold8-.\mf sold-. la4-. |
    r8 sold-. sold-. la-. r4 sold8(\upbow la-.) | re4---> r r2 |
    re,16->\f re re re re8-. re16-> re re re re8-. |
    re16-> re re re re8-. re16-> re re re re8-. re16->\< re re re |

    %%% Fugato %%%
    re1~\ff re~\> re2.~\p re2 r4 |
    r si'\mf(\glissando | sold'1~\>) sold2.~\p sold~ sold1~ sold~ sold2.~ sold4 r2 |
    r \harmo { <si, mi\harmonic>~\pp <si mi\harmonic>1~
      <si mi\harmonic>2.~ <si mi\harmonic>~
      <si mi\harmonic>1~ <si mi\harmonic>~
      <si mi\harmonic>2.~ <si mi\harmonic>~
    <si mi\harmonic>} si'4 r |
    r sol2.\mf(\glissando fad'2.~) fad ~ |
    fad2~ fad8 r <mib, mib'>-.\f <mib mib'>-. |

    %%% Stretto %%%
    <re re'>4-> re,-> r re-> |
    re16-> re re re re4 r8 re16-> re re re re8-. |
    re16-> re re re \ten <dod re>2.~\sffz <dod re> r4 |
    r8 \pizz fa''\mp sol,4-- re-- r |
    sold,-> r r8 lad-> r4 sold-> r8 lad-> r2 |
    \arco si2:8->\mp si: dod2:8 dod:\< |
    <re, re'>4-.->\! r r2 | r4 \pizz re\mp r re r re r2 | re4 r re r |

    %%% Noir %%%
    R2.-\fermataMarkup fad4 r2 R2. fad4 r2 R2. R2
    fad4 r2 r4 fad r2 r4 fad red8-> fad-> R2 |
    fad4\mp r r2 | R1*4 R1.*4 R1 R2.-\fermataMarkup
    R2.*8 R2.-\fermataMarkup
    R2.*4 R2.-\fermataMarkup
    R1 R2 R1 R2 R1 R2 R1 R2.

    %%% Largo non troppo %%%
    \arco <do' la'>2--->\mf \accdet {<do la'> <do la'> |
    <re la'> <re la'> <re la'> |
    <do si'> <do si'> <do si'> |
    <fa do'> <fa do'> <fa do'> |
    <mi re'> <mi re'> <mi re'> |
    <sol re'> <sol re'> <sol re'> |
    \cresc <sol mi'> <sol mi'> <sol mi'> |
    <la fa'> <la fa'> <la fa'> |
    <la sol'> <la sol'> <la sol'> |
    <la la'>\f( <sol sol'>) <fa fa'> |
    <fa fa'>\>( <mi mi'>\!) <mi mi'> |
    <mi mi'>\mp <mi mi'> <mi mi'> |
    <mi mi'>( <fa fa'>) <fa fa'> |
    <re re'> <re re'> <re re'> |
    <re re'>( <mi mi'>) <mi mi'> |
    \cresc <mi mi'> <re re'> <do do'> |
    <do do'> <si si'> <la la'>} |
    <la la'>4->\ff mi'-> r1 | <la, la'>4-> mi'-> r2 |
    R1 R2. R2
  }
}

ActeDeuxSceneUnViolonUn = { \ViolonUn
  \relative {
    <la' re\harmonic la''>2.~\p
    \simile la''2.~ la2.~ la2.~ la2~
    la2.~ la2.~ la2~ la2.~ la2.~ la2.~ la4 r |
    R2. R2 | R2.*2 | R2 |
    r4 \t { r8 sib,\<( dod) } la'4~\mf | la2.~ |
    la2.~| la4 r | la2.~\pp |
    la4 la~---> | la2~ la4~ | la8 la4.--->\ppsempre la4---> | la---> la---> |
    \ttt { la16\pp[ la la la la la] }
    \repeat unfold 2 { \ttt { la16[ la la la la la] } }
    \ttt { \cresc la16[ la la la la la] }
    \repeat unfold 5 { \ttt { la16[ la la la la la] } }
    \ttt { la16\f[ la la la la la] }
    \ttt { la16[ la la la la la] } |

    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {la16\f[ la la la la la] } \t {la la la} r8 r4 |
    r4 r8 \t {re,16\f re re} \ttt {re re re re re re} | R1 R2. R2 R2. R1

    %%% Andantino %%%
    R1*2 R2.*4 R2
    R2.*5 R1 R2. R2
    r4 \det {<mi,,la>\p r <mi la> r <mi la>} r | \simile <mi la> r <mi la> |
    r <mi la> r <mi la> | r <mi la> r | <mi la> r <mi la> r |
    r sol r | r sol r sol | r fa r | fa r fa r |
    r mi r | r re r re | r re r |
    r mi r mi r mi r | mi r mi r | mi r mi |
    r mi r mi | r mi r | <mi la>2. r4 |
    <mi la>2.~\pp <mi la>2. r4 |

    %%% Entrée de la Contralto %%%
    r2 \det {<mi la>4\p | r <mi la> r <mi la>} | r \simile <mi la> r | <mi la> r <mi la> r |
    r <mi la> r | <mi la> r <mi la> r | r <mi la> r | <mi la> r <mi la> r |
    r8 \pizz re\p r re r re | r fad\< r fad r do'\! r do | r sol\> r fad r re |
    r re r la\! r2 R2. r4 r8 re\< r la' r la\! | r mi\> r re r la\! | r2 r4 \arco <mi'la>--\mp |
    r2 \pizz re4\mp | r4 r8 re r2 | r2 re4 | r4 r8 re r4 r8 re |
    r4 re sol sol,\< fa' sib mib lab\! r |
    r4 r8 \arco <do,,fa>-.->\mf r4 | r4 r8 <si mi>-.-> r4 |
    r4 r8 <do fa>-.-> r4 | r4 r8 <si mi>-.-> r4 |
    r8 <si mi>4--\mf\< <do fa>8 <re sol>4-. \ten <fa sib>2.~\! <fa sib>2 r4 | R1 R2.
    R1 R2. R1 r4 \det {solb\p r r fa r fa | r solb r r fa\< r sib\!} | R2. R1
    \ind #"trem. sul tasto" re,2.:32~\pp re1:32~ re2.~ re4 r | R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisViolonUn = { \ViolonUn
  \relative {
    \pizz mi4\mf r r2 R2. R2

    %%% Presto agitato %%%
    R1*5/4*2
    \arco <red sold>1*5/4~\pp <red sold>~ <red sold>2. r2 |
    \repeat tremolo 8 {\ind #"sul tasto"sol16*5/4 mi}    %%FIXME: Issue #453
    \repeat tremolo 8 {sol mi} sol2. r2 |
    \repeat tremolo 8 {mi16*5/4 sol}
    \repeat tremolo 8 {mi sol} mi2. r2 |
    \repeat tremolo 8 {sol16*5/4 mi}
    \repeat tremolo 8 {sol mi} sol2. r2 |
    \repeat tremolo 16 {mi32 sol} mi4 |
    sol8\mp( la sol mi) re( mi) sol( la) sol4-- |
    sol8( la sol mi) re( mi) sol( la) sol4-- |
    sol8( la sol mi) re( mi) sol( la) sol4-- |
    sol8( la sol mi) re( mi) sol( la sol mi) |
    sol( la sol mi) re( mi sol la) re,( mi |
    sol la) re,( mi sol la) re,( mi sol la) |
    \ordin mib4--->\sfz \st {re8 re re re} mib4--->\sfz \st {re8 re} |
    mib4--->\sfz \st {re8 re} mib4--->\sfz \st {re8 re re re} |
    mib-> \st {re re re re} mib-> \st {re re re re} | re4->\sfz r1 |
    R1*5/4*10
    r2 r8 \ind #"détaché" dod\mp mi dod mi dod |
    \ind #"détaché" mi dod mi fa mi dod mi dod mi dod |
    mi\< dod mi-> fa mi dod mi dod mi dod |
    fa4--->\sfz \st {mi8 mi mi mi} fa4--->\sfz \st {mi8 mi} |
    fa4--->\sfz \st {mi8 mi} fa4---> \st {mi8 mi mi mi} |
    fa-> \st {mi mi mi mi} fa-> \st {mi mi mi mi} | mi4->\sfz r1 | R1*5/4
    dod4->\sffz r1 | R1*5/4-\fermataMarkup

    %%% Boum %%%
    r2 r4 \flaut sol'2\pp\<\upbow\CaV r2\! sol\<\upbow\CaV r4\! | R1*5/4
    r2 r4 \simile sol2\CaV r sol\CaV r4 |
    r2 r4 sol2\CaV r sol\CaV r4 | R1*5/4
    r2 r4 sol2\CaV r sol\CaV r4 |
    <mi sol>2.--\ppsempre r2 |
    \repeat tremolo 16 {lab32*5/4 sol}
    \repeat tremolo 16 {lab32\< sol} lab16( sol do si) |
    \ind #"à la corde" <fab mib' mib>2.--->\f <fab reb' mib>2---> <fab mib'mib>---> <fab reb'mib>2.---> |
    r4 <fab mib' mib>2.---> <fab reb' mib>4~--->\< <fab reb' mib>2 <fab mib' mib>2.---> |
    <sib mib lab>2.--->\! <sib mib lab>2---> <fab sib mib>---> <sib mib lab>2.---> |
    r4 \meno <sib mib lab>2.-- r4 |
    <lab reb sib'>2.--->\f <sib mib lab>2---> <lab reb sib'>---> <sib mib lab>2--->\< <reb sib'>4---> |
    <sol, mib' dob'>2.--->\! <reb' sib'>2---> <mib dob'>---> <reb sib'>2.---> |
    r4 <sol, mib' dob'>2--->\< <reb' sib'>4---> <mib dob'>---> |
    <lab, fa' re'>1*5/4~--->\ff <fa' re'>2. r2 | R1*5/4*5

    %%% Moderato assai %%%
    r2 r4 sol,1~\pp\CaV sol1*7/4~\CaV sol~\CaV
    sol~\CaV sol~\CaV sol~\CaV sol2. r1 |
    R2. R1 R2. R2
    \t {sol8\mp\>( mi sol} \t {mi sol mi} sol4\!) R2. |
    \t {sol8\>( mi sol} \t {mi sol mi} sol4\!) R2. |
    \t {\simile sol8( mi sol} \t {mi sol mi} sol4) R2. |
    \t {sol8( mi sol} \t {mi sol mi} sol4) R2. |
    sol2.--\>\upbow\glissando
    \ten re'1*7/4~\pp re4 r2 r1 | R1*7/4
    \t {sol,8\mp\>( mi sol} \t {mi sol mi} sol4\!) R2. |
    \t {sol8\>( mi sol} \t {mi sol mi} sol4\!) R2. |
    \t {sol8( mi sol} \t {mi sol mi} sol4) R2. |
    \t {sol8( mi sol} \t {mi sol mi} sol4) |
    sol16->\p( la sol mi re4) sol16->( la sol mi re8-.) sol16->( la sol mi re8) r sol16->( la sol mi re8-.) |
    sol16->( la sol mi re4) sol16->( la sol mi re8-.) sol16->( la sol mi re8) r sol16( la sol mi re8) |
    sol16->( la sol mi re4) sol16->( la sol mi re8-.) sol16->( la sol mi re8) r4 \t {la'8--( sol mi)} |
    sol1-- r2 r4 |
    \repeat volta 2 { la1--\mf sol2.-- la-- sol1-- R1*7/4 }
    \meno sol1-- r2 r4 | R1*7/4

    %%% Presto subito %%%
    \tt {\ind #"détaché" sol8\mf\upbow mi mi mi mi} \tt {sol mi mi mi mi} \tt {sol mi mi mi mi} |
    \tt {sol mi mi mi mi} \tt {sol mi mi mi mi} \tt {sol mi mi sol mi} |
    \tt {sol mi mi sol mi} \tt {sol mi mi sol mi} \tt {sol mi mi sol mi} |
    \tt {sol mi mi sol mi} \tt {sol mi lab sol mi} \tt {sol mi lab sol mi} |
    \tt {sol mi lab sol mi} \tt {sol mi lab sol mi} \tt {sol mi lab sol mi} |
    sol4-- r mi\glissando\upbow\<( sol\!) r fa\glissando\upbow\<( sol\!) r \simile mi\glissando( sol) r mi\glissando( |
    sol) r mi\glissando( sol) r fa\glissando( sol) r fa\glissando( |
    la) r \st {la8 re, sib' re,} |
    si'4-- r sold\glissando( si) r la\glissando\<( do) r la\glissando( dod) r si\glissando( |
    red\!) r \jet mi32\mp mi8.. r8 | sol32 sol8.. r8 \det {sol\< sold sold la la} |
    <sol, mib' sib'>8.--->\ff <mib' sib'>16-. <mib sib'>8-. <sol, mib' sib'>~---> |
    <sol mib' sib'>16 \st {<mib' sib'>16 <mib sib'>8 <mib sib'>} |
    \accdet {<mib sib'>2 r4 |
    <sol, mib' sib'>8.} \st {<mib' sib'>16 <mib sib'>8} <sol, mib' sib'>~---> |
    <sol mib' sib'>16 \st {<mib' sib'>16 <mib sib'>8 <mib sib'>} |
    \accdet {<la, mi' dod'>2 r4 |
    <sol mi'? sib'>8.} \st {<mi' sib'>16 <mi sib'>8} \accdet {<sol, mi' sib'>4 |
    <mi' mi'>8.} \st {<mi mi'>16 <mi mi'>8} <lad mi'>~---> |
    <lad mi'>16 \st {<lad mi'>\< <lad mi'>8 <lad mi'>} |
    <mi mi'>4\sffz r8 \pizz red'\mp r4 | sol, r2 |
    r8 \arco la'\glissando\upbow( sib,) r \pizz fad4 |
    R2. r8 \arco la'\glissando( sib,) r \pizz fa!4 |
    R2. r8 \arco la'\glissando( fad,) r \pizz sib,4 |
    R2. r8 \arco la''\glissando( sib,) r \pizz re,4 | R2.
    \repeat tremolo 8 {fad,32\pp\<( re}
  \repeat tremolo 4 {sol mib\!)} |
    \repeat tremolo 8 {lad( fad}
    \repeat tremolo 4 {si sol)} | si8:16\< re: mib: fad: sol: lad: |
    <lad fad'>2.--\mp R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    r4 r8 sol,16->\mf( la sol mi) re->( mi) sol( la) re( mi) |
    \accdet {<dod la'>4\sfz r2 <dod la'>4\sfz r <dod la'>\sfz r <dod la'>\sfz r2 |
    <dod la'>4\sfz r r8 <dod la'>\sfz} r2 | <si, lad'>4->\sffz r1\fermata |
    R1*5/4
    \flaut sol'1*5/4~\pp\CaV sol~\CaV sol~\CaV sol~\CaV sol~\CaV sol~\CaV |
    sol~\CaV sol2.\CaV r2 | R1*5/4*3
    \ordin sold2.\upbow\mp la2 sold \ten la2.~-- la2. r2 |
    sold2. la2 sold la2.~-- la2. r2 |
    sold8--\pp( la sold mib) re--( mib sold la) sold( mib) |
    re--( mib sold la) re,--( mib sold la) re,--( mib |
    sold la) re,( mib sold) r r2 |
  }
}

ActeDeuxSceneDeuxViolonUn = { \ViolonUn
  \relative {
    R1.*6 R1*2 R2.
    r16 dod\f dod8 dod16-> dod8 dod16 dod8-> \st {dod16 dod} |
    r16 <sib mi> <sib mi> <sib mi> <sib mi>8-> \st {<sib mi>16 <sib mi>} r <sib mi> <sib mi> <sib mi> |
    <la re>8-> \st {<la re>16 <la re>} r16 <sib mi> <sib mi> <sib mi> <sib mi>8-> \st {<sib mi>16 <sib mi>} |
    r16 <la re> <la re> <la re> mib'8-> \st {mib16 mib} mi8\> mi16 mi |
    \ten la1.~--\mf la1 r2 |
    R1. R1*2 R2.

    r16 dod,\f dod8 dod16-> dod8 dod16 dod8-> \st {dod16 dod} r dod dod dod |
    r \st {<la re> <la re> r <la re> <la re> |
    r mi'\pleggiero mi mi mi mi mi mi mi mi mi mi mi mi mi mi |
    r mi mi mi mi mi mi mi mi mi mi mi mi mi mi mi |
    r mid mid mid mid mid mid mid mid mid mid mid mid mid mid mid |
    sold sold sold sold sold sold sold sold sold sold sold sold red'red red red |
    \cresc red red sold, sold dod, dod red'red lad' lad red, red sold, sold lad' lad |
    fa'\f fa sib, sib fa fa fa' fa sib, sib mib, mib mib' mib fa fa} |

    R2. R1. R1*2
    r4 \t {do,,8\p( la do} \t {la do la)} |
    r4 \t {do8( sib do} \t {sib do sib)} |
    r4 \t {do8( la do} \t {la do la)} |
    r4 \t {si8\upbow( sold si)} | \t {si( sold si} \t {sold si sold)} \t {do( la do)} |
    \t {do( la do} \t {la do la)} \t {dod( lab dod)} |
    \t {re\<( sib re} mi4\!) r | la'\mf\>( mi\!) | R4. |

    r16 \st {mi,\pleggiero mi mi mi mi mi mi mi mi mi mi mi mi mi mi |
    mi mi re re mi mi re re mi mi re re mi mi re re |
    fa fa mi mi fa fa mi mi fa fa mi mi fa fa mi mi |
    fa fa mi mi fa fa mi mi fa fa mi mi fa fa mi mi |
    si'\< si si si <re,si'> <re si'> <re si'> <re si'> <re si'> <re si'> <re si'> <re si'> re're re re |
    red\fp red mi mi red red mi mi red red mi mi red red mi mi |
    red red mi mi red red mi mi red red mi mi red red mi mi |
    red red mi mi red red mi mi sold\< sold lad lad sold sold lad lad |
    <red,si'>\mf <red si'> <red si'> <red si'> <red si'> <red si'> <red si'> <red si'>
    <red si'> <red si'> <red si'> <red si'> <red si'> <red si'> <red si'> <red si'> |
    si'si si si si si si si si si si si} |

    R1. R1 R1.
    la,4\p( sol fa mi fa8 mi fa sol | la4 mi) r | R1
    \pizz la,4\mp r2 r8 \flaut sol'4.--\upbow\pp r2 | fa4--\upbow r2 r8 mi4.--\upbow r2 |
    fa4\upbow( mi fa sol la) r2 | R2.
    \simile fa4( mi fa sol la4) r2 | mi4--\upbow r r2 | R2. R1 R2. R1
    \arco \pl {la,4\p\leftpizz s2 s1 s2. s1 s2. s1 s2}
    {la'2.~ la1~ la2.~ la1~ la2.~ la1~ la2} r4 |

    \ind #"détaché" fa16\f mi fa sol la sold la si dod do reb mib fa\< mi fa sol |
    la4--->\! r R2. <la, la'>4---> r r2 | R1 sol8\mf fa sib la re16\< si do re fa red mi fad |
    la4--->\! r r8 | \acc {sold sold la r4 | la4--} la,8\upbow\< re mib | \acc {sold\! sold la r4 |
    <re,, mib'>4--} re8\< re mib | \dwnb {<la, sold'>4\! <la sold'> r8 |
    <sold re' la'>4} r r8 | <sold' la la'>4---> r \st {re'8 |
    re mib} r4 r8 | \dwnb {<la,,sold'>4 <la sold'> r8 | <sold re'la'>4} r r8 |
    \acc {sold'8 sold la} r4 | r8 \accdet {sold4 sold | la} r r8 |

    R1*2 dod,4->\sffz r r2 |
    r4 \pizz dod'\mp lad r r sib sol r |
    r2 \arco sol2\upbow\< |
    mi1:32~\fp mi: ~ mi2.:32\< <mi do'>4:32 |
    sold'4\sfz r2 | r8 \pizz re\mp r4 | R1
    r4 \arco \ten sol,,2.~ sol4 r2 | R2.*3
    r4 \pizz mi''\mp r r fad r R2. |

    la4-- r R2 | R2.*2 R2*2
    \arco red4\mf( dod si lad) si8( lad) sib16( la sib do) |
    re8-.-> r r16 re,,\mp\leftpizz \pizz sib re |
    r re\leftpizz sib re r re\leftpizz sib re |
    r re\leftpizz sib re r re\leftpizz sib re |
    r re\leftpizz sib re r8 r16 \arco re( |
    mi) \st {mi\pleggiero do mi r red si red r re sib re r dod la dod |
    r do lab do r8 sol16 si | r8 sib16 sib r8 la16 la |
    R2 r8 sold'16\pp sold la8} r | R2
    re,16\pleggiero\leftpizz \pizz re sib re re\leftpizz re sib re |
    re\leftpizz re sib re mi8 \arco sold16-.\mf sold-. |
    la8-- fad16-. fad-. sol8-- r | R2*2
    \pizz re4\mp r dod r mib r | R2

    R2.*2 la'2.~\pp\CaV la~\CaV la2\CaV r4 |
    \ten la,2.~\ppp la2 r4 |
    R2.*9
  }
}

ActeDeuxSceneTroisViolonUn = { \ViolonUn
  \relative {
    %%% Larghetto %%%
    R4.*16
    mi4.~\pp mi~ mi~ mi4 r8 | R4.*3
    mi4.~ mi~ mi~ mi4 r8 | R4.*3
    \st {la,16\mp la la la la la |
    la la la la la la |
    la la la la la la |
    la la la la la la |
    la la la la la la} |
    \ten <re mi>4.~-- <re mi>4 r8 |
    \st {la16 la la la la la |
    la la la la la la |
    la la la la la la} |
    re\pp\< re mi mi fad fad |
    sol\mp re re re mib mib |
    \st {la,\p la la la la la |
    la la la la la la |
    la la la la la la |
    la la la la la la} |
    sid'\mp sid dod( dod,) dod dod |
    re? re sid' sid dod( dod,) |
    dod dod do do do do |
    \st {la la la la la la |
    la la la la la la} |
    re\p\leftpizz \pizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz  <sib re> r \arco re( |
    mi8) r16 \pizz mi |
    do mi r mi do mi r do |
    mi r \arco mi-. \st {mi mi mi mi mi |
    mi8} r16 \pizz mi do mi( r \arco mi-.) |
    \st {mid mid mid mid mid dod mid mid |
    dod mid r mid mid mid mid mid |
    dod mid r mid mid mid mid mid |
    dod mid} r mid( \st {sol) sol sol sol |
    sol sol sol sol sol sol sol sol |
    R4 sol16 sol re re lab lab sol' sol |
    re re sol sol r8 |
    sol16 reb lab sol' reb lab sol' reb |
    lab sol' reb sol} | R4
    sol16\ppleggiero do, sol' do, |
    sol' do, sol' do, |
    sol' do, sol' sol |
    \st {la,\p la la la la la |
    la la la la la la |
    mi' mi mi mi mi mi |
    la, la la la la la |
    mi' mi mi mi mi mi |
    mi mi mi mi mi mi} |
    r8 \acc {<sold, sold'> <la la'> |
    <sib sib'> r4 |
    r8 <sold sold'> <la la'> |
    <sib sib'> r4 |
    r8 <lad lad'> <si si'> |
    <do do'>} r4 |
    la'16 la la la la la |
    sib\< sib sib sib dod dod |
    \st {re\fp sol, do, re' sol, do, re' sol, |
    do, re' sol, do, re' sol, re' sol, |
    re'8 do, re} si'16 si do8-- dod16\< dod |
    re8-.\! \pizz <re, re'> r \arco re'16\f re |
    mi8-> r R4 re,8\leftpizz re'16\< re |
    mi8->\! r R4 re,8\leftpizz re'16\< re |
    mi->\fp mi, mi mi mi8 mi16 mi |
    fa8 mi16 mi mi8 red'16\< red |
    mi\mf la, re, mi' la, re, mi' la, |
    mi'8 r sold,--\p sold-- la-- r |
    fad-- fad-- sol-- r |
    re16\ppleggiero sol re do sol' re do sol' |
    R2.-\fermataMarkup R2.*2
    r8 sold16\p sold la8---. fad16 fad sol8---. r | R2.
    r8 sold16 sold la8---. fad16 fad sol8---. r | R2.

    %%% Interlude %%%
    r8 \st {sold16 sold la8 r |
    sol16 sol sold8 r fa |
    <mi sold>16\pp <mi sold> <fa la>8 <mi sold>16 <mi sold> <fa la>8 |
    <sold si>16 <sold si> <la do>8 <sold si>16 <sold si> <la do>8} |
    \simile <mi sold>16 <mi sold> <fa la>8 <mi sold>16 <mi sold> <fa la>8 |
    <sold si>16 <sold si> <la do>8 <mid sold>16 <mid sold> <fad la>8 |
    <sold si>16 <sold si> <la do>8 <si re>16 <si re> <do mib>8 |
    <mi,sold>16 <mi sold> <fa la>8 <mi sold>16 <mi sold> <fa la>8 |
    <sold si>16 <sold si> <la do>8 <sold si>16 <sold si> <la do>8 |
    <mid sold>16\< <mid sold> <fad la>8 <sold si>16 <sold si> <la do>8
    <si re>16 <si re> <do mib>8\! |
    r16 \st {mi,\pleggiero red mi r mi red mi |
    r sol fad sol r sol fad sol |
    r mi red mi r red} mi8-- |
    fad16-. sol8-- la16-. sib8-- \st {red,16 mi} |
    r mi red mi r mi red mi |
    r sol fad sol r sol fad sol |
    r8 fad16\< fad sol sol sib si re mib |
    lad\mf lad si si, lad' lad si si, |
    dod' dod re re, dod' dod re re, |
    lad' lad si si, lad' lad si si, |
    dod' dod re re, dod' dod re re, |
    lad' lad si si, lad' lad si si, |
    dod' dod re re, dod' dod re re, |
    lad' lad si si, dod' dod re re, |
    mi'\mp mi fa fa, mi' mi fa fa, |
    dod' dod re re, dod' dod re re, |
    mi' mi fa fa, mi' fa fa, dod' |
    re\< re, mi' fa fa, sol' lab lab, |
    sol'\mf sol lab lab, sol' sol lab lab, |
    mi' mi fa fa, lad lad si si, |
    dod'\< dod re re, mi' mi fa fa, |
    sol'\! lab lab, sol' sol lab lab, mi' |
    mi fa fa, mi' fa fa, dod' re |
    fa,\< sol' sol lab lab, sol' lab lab, sold'->\! sold-> |

    %%% Quatuor %%%
    la8-> \pizz sold,,\mp la fad | sib4-- r8 |
    r sold la fa si4-- r8 |
    r sold la re,\leftpizz |
    \arco \ind #"jeté" <sol dod>32\mf <sol dod>16. r16 <sol dod>32 <sol dod> r8 |
    <sol dod>32 <sol dod>16. <sol dod>32 <sol dod>16. r8 |
    fa''2--\f r4\fermata
    r8 sold,,16-.\p sold la8 r r4 | R2.*2
    r2 r8 sold16 sold la8 \pizz fad r \arco mi16 mi fa8 \pizz red |
    r re do4 sib |
    r4 \arco \ind #"(flautando)" la'~\pp\CaV la2~\CaV la4 r2 |

    %%% Air baryton 1 %%%
    la2~\p( la\glissando mi) r4 |
    la2~(la\glissando mi) r4 |
    \flaut <mi! mib'>2~\pp <mi mib'>~ <mi mib'>4 re( mib) |
    mi2~ mi4 r |
    lab,( sib) r8 \st {<mi sold>16\pp <mi sold>} |
    <fa la>8-- <mi sold>16-. <mi sold>-. <fa la>8-- <mi sold>16-. <mi sold>-. |
    <fa la>8-- \st {<mi sold>16 <mi sold> <fa la>8} |
    sib16\<( sib,) la' la sib( sib,) la' la |
    sib( sib,) la' la sib sib |
    \simile si\pp si, lad' lad si si, lad' lad |
    si si, fad' fad sol si, lad' lad |
    si\< si, si' si do8-- <si re>16 <si re> <sid red>8-- red16 red |
    \st {mi\mf mi re re mi mi re re mi mi re re mi mi re re |
    mi mi re re mi mi re re mi mi re re |
    mi mi re re mi mi re re mib mib reb reb mib mib do do |
    \cresc do do reb reb do do reb reb mi, mi fa fa |
    do do reb reb sold, sold la la} |

    %%% Doppio tempo %%%
    re8->\! r r4 R2*3
    r8 re16\ff re mib8-> r |
    r re-> r4 | r re16 re r8 |
    R2.*3
    la'8-> r r \st {la16 la la8 r |
    r la r mi' r red} |
    si( la) r4 \t {si8( fad si)} |
    mi4--\upbow r2 | r8 re( mi) r r mi-> r2 |
    \st {mi,8\pleggiero mi re re mi mi re re mi re |
    mi mi re re mi mi re re mi re |
    mi mi re re mi mi re re mi re} |
    mi\< mi fa fa sol sol sib sib do do\! |
    sold\< sold la la si si re re mi mi\! |
    do16\< do do do reb reb reb reb
    mib mib mib mib fad fad fad fad sold sold sold sold |

    %%% Climax %%%
    sold4\f r R4. |
    \st {re'8 si re, si} \ind #"détaché" fad16 fa mib do sol4->( |
    re'8-.\sfz) r r4 | R4.
    sold''16-> fad re si la8-. re,-. |
    re,16 si la sold sol4->( | re'8-.\sfz) r r4 | R2
    \ottava #1 re'''4:16->\ff sold,8:16~-> sold: re4-> \ottava #0 |
    \loco re,4--\mf fad,8-. la-. do16\< re mib fa |
    sold->\! fad mi mib re4-- mi,16 mib re la sold4 |

    %%% Soprano 2 %%%
    re'\leftpizz r r8 do16\f do |
    do4-.-> r8 dod-> r r16 dod dod4-.-> |
    r8 re-.-> r4 \st {re8\p re |
    red red r red red r dod dod |
    re4-- r8 re r re |
    r re r re re r re\< re |
    mi\! mi r mi r mi |
    r mi r mi mi r mi mi |
    mid mid r mid r mid r mid r mid r mid r mid |
    r sol\pp\CaV r sol\CaV sol4\CaV |
    sol8\CaV sol\CaV sol4\CaV sol8\CaV sol\CaV r sol\CaV |
    r <re la'>\CaV r <re la'>\CaV <re la'>4\CaV |
    <re la'>8\CaV <re la'>\CaV <re la'>4\CaV
    <re la'>8\CaV <re la'>\CaV r <re la'>\CaV |
    r sol\CaV r sol\CaV r sol\CaV |
    r \ordin sol r sol sol4 sol8 sol}
    sold4-- \st {sold8 sold r4 |
    la,8 la la la la la la la |
    r sib sib sib sib sib |
    sold'8 sold r sold r4 sold8\< sold |
    la\! la r la sol sol |
    sold sold r sold r4 lad8\< lad |
    si\! si r si\< dod dod} |
    re4--\! r r2 R2. |
    mib4-.\mf sib'-. lab8( fa) mib4-- |
    r \st {<la, re>8\p r sold r |
    sol\pp sol r sol sol4 sol8 sol sol4 sol8 sol r sol |
    r sold r sold sold4 sold8 sold} |
    sold4-- \st {sold8 sold r sold} |

    %%% Soprano 1 %%%
    <re re'>4---> r \pizz lab'\p mib' | re8 sib lab4 r | R1
    r4 do8 sib fa'4 | R1
    \arco mid,8-.\p \st {mid r2 mid8 mid r4 r2 |
    sol8\pp\CaV sol\CaV r sol\CaV sol4\CaV |
    sol8\CaV sol\CaV sol4\CaV sol8\CaV sol\CaV r sol\CaV |
    r sol\CaV r sol\CaV sol4\CaV |
    sol8\CaV sol\CaV sol4\CaV sol8\CaV sol\CaV r sol\CaV |
    r \ordin sol r sol} lab4-- |
    \st {sol8 sol} lab4-- \accst {lab8 si} r \st {si |
    r sol r mi} sol4-- |
    \st {la,8\p la la la la la la la |
    r sib sib sib sib sib |
    sol'\pp\CaV sol\CaV r4 r2 | R2.
    sol8\CaV sol\CaV sol\CaV r r2 |
    r4 r8 sol\CaV r4 | R1
    \ordin sol8\p sol} sold4-- \st {sol8 sol} |
    sold4-- r \pizz la re |
    sold, r fad fa mib re r la'\leftpizz r2 |

    %%% Duo %%%
    \arco sold'8\mp sold la( la,) sold' sold la( la,) |
    \simile sold' sold la la, sold' sold la la, |
    sold' sold la la, sold' sold la la, |
    sold'\mf sold la la, sold' sold la la, |
    sold' sold la la, sol' sol sold sold, |
    re' re mi mi, re' re mi mi, |
    sold\mp sold si dod, sold' sold la dod, |
    mid mid sold sold, |

    %%% Baryton 2 %%%
    \accdet {<re' re>4\downbow\fsubito <re re>\downbow <re re>\downbow <re re>\downbow} r2 |
    \simile mib4 mib mib mib r2 |
    re''8-> \t {si16( do dod)} re4-> re-> |
    \accst {<re, re'>\downbow <re re'>\downbow <re re'>\downbow} |
    lab''8-> \t {fa16( fad sol)} lab4-> re,-> |
    re,8-> \t {sold,16( si dod)} re4-> lab-> |
    \ten re,2.--->( mib2) r4 |
    do16\mf( si) si( do) do( dod) dod( do) do( la) la( dod) |
    mi8---> r16 dod'\< mi fa |
    lab8->\f \t {fa16( fad sol)} lab4-> re,-> |
    fa,16\mf fa fa fa mi mi mi mi mib mib mib mib |
    re re re re dod dod re re si si do do |
    mi8-> r16 fa-> r dod-. mi8-> r16 \st {fa dod do} |
    mi8-> fa-> r16 \st {mi mib re} fa8-> \st {fa16 do} |
    solb'8-> r re2:16\< | <sold, re'>2--->\! r4 |
    re'''8->\f \t {si16( do dod} re4->) re---> |
    <re, re'>4---> r2 |
    re'8-> \t {si16( do dod)} re4-> re---> |
    <re, re'>4---> r2 |

    %%% Boum %%%
    <sol,,! sold'>4->\sffz r2 R2.*2
    R2.*2 r4 \ottava #1
    <sol'' do\harmonic sol''>2\pp~ sol''2.~ sol~ sol4
    <sol,, do\harmonic sol''>2\upbow |
    <sold dod\harmonic sold''>2.~ sold''2 r4 \ottava #0 |
    r8 si,,,--(\mf si-- si-- si-- si--) |
    si--( si--) red--( red--) mi--( mi--) |
    r8 si,8:32\p\< sib: re: mib: sol: |
    fad: si: do: mi: mib4: |

    %%% Contralto %%%
    re4--->\! r8 \pizz re,\mp r re r re |
    re4\thumbpizz \arco
    sold'\f\<\glissando |
    re'\sfz r8 \pizz re,,\mp |
    r re r re | r re r re |
    r re r re | r re r re |
    r <lab mib'>\arpeggUp r <lab mib'>\arpeggUp |
    r \simile <lab mib'> r <lab mib'> |
    r4 \arco fa'8->\mf fa-> fad4-> r | R2.
    r4 fad8\p fad sol4---. r r sol8 sol sold4---. r |
    R2 r4 \pizz mi8 fa |
    \arco la,-.\mp \st {la la la la la |
    la la la la la la |
    la la la la la la |
    la la la la} r4 |

    %%% Grand ensemble %%%
    \st {<mi' sold>8\p <mi sold> <fa la>4
    <mi sold>8 <mi sold> <fa la>4 |
    <mi sold>8 <mi sold> <fa la>4
    <mi sold>8 <mi sold> <fa la>4} |
    \simile <mi sold>8 <mi sold> <fa la>4
    <mi sold>8 <mi sold> <fa la>4 |
    <sold sid>8 <sold sid> <la dod>4
    <sold sid>8 <sold sid> <la dod>4 |
    <mid sold>8\< <mid sold> <fad la>4
    <mid sold>8 <mid sold> <fad la>4 |
    <la do>8 <la do> <sib reb>4
    <la do>8 <la do> <sib reb>4\! |
    r8 \st {mi,\pleggiero red mi r mi red mi |
    r lab sol lab r lab sol lab |
    r mi red mi r mi red mi |
    r sol fad sol r sol fad sol |
    r re' dod re r red mi r |
    re mib r dod re r do dod} |
    sold'\mf sold la( la,) sold' sold la( la,) |
    sid' sid dod( dod,) sid' sid dod( dod,) |
    \simile sold' sold la la, sold' sold la la, |
    sid' sid dod dod, sid' sid dod dod, |
    mi' mi fa fa, mi' mi fa fa, |
    mid'\f mid fad fad, mid' mid fad fad, |
    sold' sold la la, sold' sold la la, |
    mid' mid fad fad, mid' mid fad fad, |
    sold' sold la la, sold' sold la la, |
    sold'\fmolto sold la la, sold' sold la la, |
    sold' sold la la, sold' sold la la, |
    sold' sold la la, sold' sold la la, |
    sold'8-> r r2 |

    %%% Chute %%%
    sold,2.\ff\glissando sold'2.:32\sfp~ sold4:\< mi: re:
    la:\mp\> sold: mi: re: la: sold:\! re4-- r R2*2

    %%% Andante al fine %%%
    R2.*32
    \ind #"sul tasto" mi2.--\p~ mi2 r4 |
    r <mi mi'>--->\fsubito <mi mi'>8->-. <mi mi'>-.-> |
    <mi mi' mi>4---> r2 |
    <mi mi'>4---> <mi mi'>8-.-> <mi mi'>-.->
    \t {<mi mi'>-.-> <mi mi'>-. <mi mi'>-.} |
    <mi mi' mi>4---> r2 |
    r2 \ind #"ample" <mi' mi'>4--->\ff \< \downbow |
    <mi mi'>8--->\downbow <mi mi'>--->
    \t {<mi mi'>---> <mi mi'>-. <mi mi'>-.}
    \tt {<mi mi'>16---> <mi mi'>-> <mi mi'>-> <mi mi'>-> <mi mi'>->\!}
  }
}
