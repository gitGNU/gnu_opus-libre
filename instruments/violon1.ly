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
    fa,16\ppsempre( do fa reb' la'8) \t {reb,16( fa, do)}
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
    R2. r4 fa,2~-- fa4. r8\fermata r4 |
    R2. r4 fa2~-- fa2~fa8 r\fermata r4 |
    R1 R2

    %%% Largo %%%
    R2*3 R2. R2 R2.
    mi2~\p\> mi4\! r2 |
    mib2\< mib4 <si sol'>4--\mp r r2 |
    R1 R2. R2
    r2 r8 sib'4.\pp\upbow |
    \ten sol2.~\CaV sol2\CaV r4 |
    do2--\mp\> re~\pp\CaV re4\CaV r2 |
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

    r4 r8 sib4. | sol2.~|sol1~|sol2 r4 |
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
    <mi re'>4--->\f <mi re'>---> <re mi'>---> <re mi'>--->
    <mi re'>---> \pizz <sol mi'>8 r r2 |

    %%% Largo assai %%%
    R1 R2.*3 R2
    %%%%FIXME%%%%
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
    R2.*6 <mib re'>2.:32\mp\< <mib re'>4->\! r2 |
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
    R1*8 r2 la'8 sol sib4 fad4 r r2 |
    R1*20
    do1 do2 do do do do do |
    fa'4\glissando re8 r re4\glissando si8 r |
    la\glissando fad16 r fad8\glissando mib16 r mib8 do16 r |
    R1*16
    r2 r4 r8 \pizz <la fa'> |
    r <la fa'> r4 r r8 <la fa'> |
    R1*3
    r2 \arco do' si~si4 lad | fad r r2 |
    R1*4
    <lad, mi'>1 dod~dod~dod~dod~dod~dod\fermata
  }
}

ActeUnSceneTroisTerViolonUn = { \ViolonUn
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4 r2
    r4 \arco sol2~ sol2.~ sol4 r2 |
    \pizz <sib, sib'>4 r2 R2.
    <si si'>4 r r2 <do do'>4 r <dod dod'> r |
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
    re2.:32~ re8 r r2 | R2.*13

    r4 <re,,sib'>2 <re sib'> <re sib'>4~<re sib'>2 r4 |
    r  <re  sib'>2 <fad re'> <sib fad'>4~<sib fad'>2 r4 |
    R2.*3 R1 R2.
    r4 sib2~ sib4 la2 | R2.
    r4 \t {la8 mi la} \t {mi la mi} \t {la mi la} \t {mi la mi} la4 |
    r  \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {fad si fad} \t {si fad si} r2 |
    r4 \t {sib8 sol sib} \t {sol sib sol} \t {sib sol sib} \t {sol sib sol}
    \t {fad si fad} \t {si fad si} r2 |
    r4 \t {re8 sib re} \t {sib re sib} \t {re sib re} \t {sib re sib} \t {red si red}
    \t {si red si} red4 r |
    r  \t {re8 sib sib} \t {sol sol re} \t {sol' re re} \t {sib sib sol}
    \t {fad' red red} \t {si si fad} \t {si' fad red} \t {re' sib sol} |
    r si sib sol fad mib re' si sib sol fad mib |
    re' si sib sol fad mib re si4 fad mib8~ mib2 r4 |
    R2.*4

    la4 sol fa mi fa8 mi fa sol la4 mi2~ mi2.~ mi2 r4 |
    la4 mi2~ mi2.~ mi2.~ mi2 r4 R2.
  }
}

InterludeTroisViolonUn = { \ViolonUn
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    <dod la'>16 <dod la'>8 <dod la'> <dod la'> <dod la'>
    <dod la'> <dod la'> <do sold'> <re sib'>16 |
    <dod la'> <dod la'>8 <dod la'> <dod la'>
    <do sold'> <lad fad'> <dod la'>16 |
    <la'fa'> <la fa'>8 <la fa'> <la fa'>
    <do lab'> <sib solb'> <dod la'>16 |
    <la fa'> <la fa'>8 <la fa'> <la fa'> <la fa'>16 |
    <si sol'> <si sol'>8 <si sol'> <si sol'>
    <si sol'> <la fa'> <re sib'>16 |
    <si sol'> <si sol'>8 <si sol'> <si sol'> <si sol'>16 |
    <mi do'> <mi do'>8 <mi do'>16 <mi do'> <mi do'>8 <mi do'>16 |
    <sol mib'> <sol mib'>8 <sol mib'>16 <sol mib'> <sol mib'>8 <sol mib'>16 |
    R2*2
    \tt {sol,16 si sib re dod} fa32 mi lab sol si sib re dod |
    fa8 r r4 |
  }
}

ActeUnSceneQuatreViolonUn = { \ViolonUn
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    r2 r16 re re re sol4 re re8 la' r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2

    %%% Agitato %%%
    re,2.:32 re8 r \t {mi' la re} \t {sol re la} |
    mi8 r r2 <mi, la>2.:32 <mi la>8 r r2 R2.*2
    do'2.:32 do8 r r2 |
    r16 sol' sol sol do8 re, sol la, | re4 r2 |
    r16 sold sold sold dod8 red, sold la, re4 r2 |
    r16 la' la la re8 r r16 sib, sib sib |
    mib8 r r16 si! si si mi!8 r |
    r16 do do do fa8 r r16 dod dod dod |
    fad8 r r16 re re re sol8 r |
    r16 re re re la'8 r r16 re, re re |
    la'8 r16 la, la la do'8 la, sol' |
    dod16 re dod la sol la dod re dod8 r |
    dod16 re dod la sol la dod re dod8 r |
    dod16 re dod la sol la dod re dod8 r |
    re16 mib re sib lab sib re mib re8 r |
    re16 mib re sib lab sib la si red8 r |
    red16 mi red si la si red mi red8 r |
    sold16 mi re la re mi sold mi re la re mi |
    sold mi re la re mi sold mi re la re mi |
    la8 r r4 r2 <re,,, mi>4 <re mi> <re mi> <re mi>2. r4 |
    <re mi>4 <re mi> <re mi> <re mi>2 <re mi>4 <re mi> <re mi> |
    <mib fa>2 <mib fa>4 <mib fa> <mib fa> |
    <mi fad>2 <mi fad> <mi fad>4 |
    \t {r4 la la} la2~ la2. r4 |
    \t {r4 la la} la2~ la2. r4 |
    \t {la la la} \t {lab lab lab} \t {sol sol sol} |
    \t {fad fad fad} fad~ fad2. r4 |

    %%% Andante a piacere %%%
    \repeat tremolo 16 {la,32 dod} la2. r4 |
    \repeat tremolo 16 {la32 dod} la2. r4 |
    \repeat tremolo 16 {sold32 si} sold2. r4 |
    \repeat tremolo 16 {sold32 si} sold2. r4 |
    \t {r <la'dod><la dod>} \t {<la dod><la dod><la dod>} |
    \t {<sold re'><sold re'><sold re'>} <la mib'>8<la mib'> |
    \t {r4 <re fad> <re fad>} \t {<re fad><re fad><re fad>} |
    \t {<mi sold><mi sold><mi sold>} <red la'>8<red la'> |
    R1*7 R2*3 R2.*3
    r2 r8 r16 \t {do,32 reb mib} |
    fad8 r r4 r8 r16 \t {la32 do re} |
    mib8 r r2 |

    %%% A tempo %%%
    <re,mi>2 <re mi>4 <re mi> |
    <mi sol> <mi sol>2 <mi sol>4 |
    <fa sib> <fa sib> <fa sib> r |
    sol1~\CaV sol4\CaV r2 |
    sib,1~ sib4 r2 |
    r2 r4 \t {do8 reb mib} fad2.~ fad2 red4 mid fad2 r4 |
    <la' dod>2 <la dod>4 <la dod> <la dod>4. <la dod>8~<la dod>4 r8 fa16 la |
    dod2 \t {dod,8 fa la} dod2 \t {red,8 sol si} |
    red8. red16 red8 red4 red8 | red8. red16 red8 red4 red8~red4 |
    <sol, red'>~ \t {<sol red'>8 <sol red'>4~} \t {<sol red'> <si fa'>8~}<si fa'>r|

    dod,,16 si si dod dod si si dod dod si si dod |
    dod si si dod dod si | sib2.~sib8 r4 |
    dod16 si si dod dod si si dod | dod si si dod dod si |
    do2~do4. r8 |
    mi16 re re mi mi re re mi | mi re re mi mi re |
    mi2~mi4 r |
    mi16 re re mi mi re re mi | mi re re mi mi re |
    sol fa fa sol sol fa fa sol | sol fa fa sol sib sol sol sib |
    R2 R4. r2 sib16 dod fad la |

    re4 r r dod16 do sib do, |
    re,4\CaV re16 re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    fad fad fad fad fad fad fad fad fad fad fad fad sold sold sold sold |
    sold sold sold sold sold sold sold sold si si si si si si si si |
    si si si si dod dod dod dod dod dod dod dod dod dod dod dod |
    re re, re re re re re' re, re'4 re, | R1*3 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    R2.*11
    r4 sib'2~sib r4 |
    r4 sib2~ sib r4 |
    r4 sib2~ sib r4 | R2.
    r4 sib2~ sib r4 | R2.
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5
    R1 R1. R1 R1.
    R1 R1.*5 R1 R1. R1
  }
}

EntracteViolonUn = { \ViolonUn
  \relative {
    R2*9
    R1*2 r4 sold'8 sold la4 r R1*7
    r4 \jet dod'32 dod8.. dod32 dod8.. r4 |
    dod32 dod8.. dod32 dod8.. r4 dod32 dod8.. |
    r4 dod32 dod8.. r4 dod32 dod8.. |
    r4 dod32 dod8.. dod32 dod8.. r4 | R1*2
    re,,16 re re re re4 r8 mib16 mib mib mib re8 |
    mib16 mib mib mib re4 r2 |
    re2:16 re: re: re: re: re: re: re: re: re: |
    re4 r r2 | \pizz sold'4 r r8 fad r sold |
    R1 \arco mi,4. fa8~ fa4 sol |
    lab \t {la8 sold la} sib si lad si |
    do4 r r <re, re'> r <re re'> r <re re'> <re re'> r r2 |
    dod16 dod dod dod dod4 r8 dod16 dod dod dod dod8 |
    re \pizz mib'' sol,4 r8 si mib,4 |
    r8 fad sib, re fad, mi'' sold,4 |
    r8 do mi,4 r8 sol si, mib |
    sol,4 r \arco sold8 sold la4 |
    r8 sold sold la r4 sold8 la | re4 r r2 |
    re,16 re re re re8 re16 re re re re8 |
    re16 re re re re8 re16 re re re re8 re16 re re re |

    %%% Fugato %%%
    re1~ re~ re2.~ re2 r4 |
    r si'\glissando | sold'1~ sold2.~ sold~ sold1~ sold~ sold2.~ sold4 r2 |
    r \harmo { <si, mi\harmonic>~ <si mi\harmonic>1~
      <si mi\harmonic>2.~ <si mi\harmonic>~
      <si mi\harmonic>1~ <si mi\harmonic>~
      <si mi\harmonic>2.~ <si mi\harmonic>~
    <si mi\harmonic>} si'4 r | %%FIXME: compilation warning.
    r sol2.\glissando fad'2.~ fad ~ |
    fad2~ fad8 r <mib, mib'> <mib mib'> |

    %%% Stretto %%%
    <re re'>4 re, r re |
    re16 re re re re4 r8 re16 re re re re8 |
    re16 re re re <dod re>2.~ <dod re> r4 |
    r8 \pizz fa'' sol,4 re r |
    sold, r r8 lad r4 sold r8 lad r2 |
    \arco si8 si si si si si si si dod dod dod dod dod dod dod dod |
    <re, re'>4 r r2 | r4 \pizz re r re r re r2 | re4 r re r |

    %%% Noir %%%
    R2.-\fermataMarkup fad4 r2 R2. fad4 r2 R2. R2
    fad4 r2 r4 fad r2 r4 fad red8 fad R2 |
    fad4 r r2 | R1*4 R1.*4 R1 R2.-\fermataMarkup
    R2.*8 R2.-\fermataMarkup
    R2.*4 R2.-\fermataMarkup
    R1 R2 R1 R2 R1 R2 R1 R2.

    %%% Largo non troppo %%%
    \arco <do' la'>2 <do la'> <do la'> |
    <re la'> <re la'> <re la'> |
    <do si'> <do si'> <do si'> |
    <fa do'> <fa do'> <fa do'> |
    <mi re'> <mi re'> <mi re'> |
    <sol re'> <sol re'> <sol re'> |
    <sol mi'> <sol mi'> <sol mi'> |
    <la fa'> <la fa'> <la fa'> |
    <la sol'> <la sol'> <la sol'> |
    <la la'> <sol sol'> <fa fa'> |
    <fa fa'> <mi mi'> <mi mi'> |
    <mi mi'> <mi mi'> <mi mi'> |
    <mi mi'> <fa fa'> <fa fa'> |
    <re re'> <re re'> <re re'> |
    <re re'> <mi mi'> <mi mi'> |
    <mi mi'> <re re'> <do do'> |
    <do do'> <si si'> <la la'> |
    <la la'>4 mi' r1 | <la, la'>4 mi' r2 |
    R1 R2. R2
  }
}

ActeDeuxSceneUnViolonUn = { \ViolonUn
  \relative {
    <la' re\harmonic la''>2. ~
    \simile la''2.~ la2.~ la2.~ la2~
    la2.~ la2.~ la2~ la2.~ la2.~ la2.~ la4 r |
    R2. R2 | R2.*2 | R2 |
    r4 \t { r8 sib, dod } la'4~ | la2.~ |
    la2.~| la4 r | la2.~ |
    la4 la~ | la2~ la4~ | la8 la4. la4 | la la |
    \repeat unfold 11 { \ttt { la16[ la la la la la] } } |

    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {la16[ la la la la la] } \t {la la la} r8 r4 |
    r4 r8 \t {re,16 re re} \ttt {re re re re re re} | R1 R2. R2 R2. R1

    %%% Andantino %%%
    R1*2 R2.*4 R2
    R2.*5 R1 R2. R2
    r4 <mi,,la> r <mi la> r <mi la> r | <mi la> r <mi la> |
    r <mi la> r <mi la> | r <mi la> r | <mi la> r <mi la> r |
    r sol r | r sol r sol | r fa r | fa r fa r |
    r mi r | r re r re | r re r |
    r mi r mi r mi r | mi r mi r | mi r mi |
    r mi r mi | r mi r | <mi la>2. r4 |
    <mi la>2.~ <mi la>2. r4 |

    %%% Entrée de la Contralto %%%
    r2 <mi la>4 | r <mi la> r <mi la> | r <mi la> r | <mi la> r <mi la> r |
    r <mi la> r | <mi la> r <mi la> r | r <mi la> r | <mi la> r <mi la> r |
    r8 \pizz re r re r re | r fad r fad r do' r do | r sol r fad r re |
    r re r la r2 R2. r4 r8 re r la' r la | r mi r re r la | r2 r4 \arco <mi'la> |
    r2 \pizz re4 | r4 r8 re r2 | r2 re4 | r4 r8 re r4 r8 re |
    r4 re sol sol, fa' sib mib lab r |
    r4 r8 \arco <do,,fa> r4 | r4 r8 <si mi> r4 |
    r4 r8 <do fa> r4 | r4 r8 <si mi> r4 |
    r8 <si mi>4 <do fa>8 <re sol>4 <fa sib>2.~<fa sib>2 r4 | R1 R2.
    R1 R2. R1 r4 solb r r fa r fa | r solb r r fa r sib | R2. R1
    re,2.:32~ re1:32~ re2.~ re4 r | R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisViolonUn = { \ViolonUn
  \relative {
    \pizz mi4 r r2 R2. R2

    %%% Presto agitato %%%
    R1*5/4*2
    \arco <red sold>1*5/4~ <red sold>~ <red sold>2. r2 |
    \repeat tremolo 8 {\ind #"sul tasto"sol16*5/4 mi}    %%FIXME: Issue #453
    \repeat tremolo 8 {sol mi} sol2. r2 |
    \repeat tremolo 8 {mi16*5/4 sol}
    \repeat tremolo 8 {mi sol} mi2. r2 |
    \repeat tremolo 8 {sol16*5/4 mi}
    \repeat tremolo 8 {sol mi} sol2. r2 |
    \repeat tremolo 16 {mi32 sol} mi4 |
    sol8 la sol mi re mi sol la sol4 |
    sol8 la sol mi re mi sol la sol4 |
    sol8 la sol mi re mi sol la sol4 |
    sol8 la sol mi re mi sol la sol mi |
    sol la sol mi re mi sol la re, mi |
    sol la re, mi sol la re, mi sol la |
    \ordin mib4 re8 re re re mib4 re8 re |
    mib4 re8 re mib4 re8 re re re |
    mib re re re re mib re re re re | re4 r1 |
    R1*5/4*10
    r2 r8 dod mi dod mi dod |
    mi dod mi fa mi dod mi dod mi dod |
    mi dod mi fa mi dod mi dod mi dod |
    fa4 mi8 mi mi mi fa4 mi8 mi |
    fa4 mi8 mi fa4 mi8 mi mi mi |
    fa mi mi mi mi fa mi mi mi mi | mi4 r1 | R1*5/4
    dod4 r1 | R1*5/4-\fermataMarkup

    %%% Boum %%%
    r2 r4 \flaut sol'2\CaV\upbow r2 sol\CaV\upbow r4 | R1*5/4
    r2 r4 \simile sol2\CaV r sol\CaV r4 |
    r2 r4 sol2\CaV r sol\CaV r4 | R1*5/4
    r2 r4 sol2\CaV r sol\CaV r4 |
    <mi sol>2. r2 |
    \repeat tremolo 16 {lab32*5/4 sol}
    \repeat tremolo 16 {lab32 sol} lab16 sol do si |
    <fab mib' mib>2. <fab reb' mib>2 <fab mib'mib> <fab reb'mib>2. |
    r4 <fab mib' mib>2. <fab reb' mib>4~ <fab reb' mib>2 <fab mib' mib>2. |
    <sib mib lab>2. <sib mib lab>2 <fab sib mib> <sib mib lab>2. |
    r4 <sib mib lab>2. r4 |
    <lab reb sib'>2. <sib mib lab>2 <lab reb sib'> <sib mib lab>2 <reb sib'>4 |
    <sol, mib' dob'>2. <reb' sib'>2 <mib dob'> <reb sib'>2. |
    r4 <sol, mib' dob'>2 <reb' sib'>4 <mib dob'> |
    <lab, fa' re'>1*5/4~ <fa' re'>2. r2 | R1*5/4*5

    %%% Moderato assai %%%
    r2 r4 sol,1~\CaV sol1*7/4~\CaV sol~\CaV
    sol~\CaV sol~\CaV sol~\CaV sol2. r1 |
    R2. R1 R2. R2
    \t {sol8 mi sol} \t {mi sol mi} sol4 R2. |
    \t {sol8 mi sol} \t {mi sol mi} sol4 R2. |
    \t {sol8 mi sol} \t {mi sol mi} sol4 R2. |
    \t {sol8 mi sol} \t {mi sol mi} sol4 R2. |
    sol2.\glissando
    re'1*7/4~ re4 r2 r1 | R1*7/4
    \t {sol,8 mi sol} \t {mi sol mi} sol4 R2. |
    \t {sol8 mi sol} \t {mi sol mi} sol4 R2. |
    \t {sol8 mi sol} \t {mi sol mi} sol4 R2. |
    \t {sol8 mi sol} \t {mi sol mi} sol4 |
    sol16 la sol mi re4 sol16 la sol mi re8 sol16 la sol mi re8 r sol16 la sol mi re8 |
    sol16 la sol mi re4 sol16 la sol mi re8 sol16 la sol mi re8 r sol16 la sol mi re8 |
    sol16 la sol mi re4 sol16 la sol mi re8 sol16 la sol mi re8 r4 \t {la'8 sol mi} |
    sol1 r2 r4 |
    \repeat volta 2 { la1 sol2. la sol1 R1*7/4 }
    sol1 r2 r4 | R1*7/4

    %%% Presto subito %%%
    \tt {sol8\upbow mi mi mi mi} \tt {sol mi mi mi mi} \tt {sol mi mi mi mi} |
    \tt {sol mi mi mi mi} \tt {sol mi mi mi mi} \tt {sol mi mi sol mi} |
    \tt {sol mi mi sol mi} \tt {sol mi mi sol mi} \tt {sol mi mi sol mi} |
    \tt {sol mi mi sol mi} \tt {sol mi lab sol mi} \tt {sol mi lab sol mi} |
    \tt {sol mi lab sol mi} \tt {sol mi lab sol mi} \tt {sol mi lab sol mi} |
    sol4 r mi\glissando sol r fa\glissando sol r mi\glissando sol r mi\glissando |
    sol r mi\glissando sol r fa\glissando sol r fa\glissando |
    la r la8 re, sib' re, |
    si'4 r sold\glissando si r la\glissando do r la\glissando dod r si\glissando |
    red r \jet mi32 mi8.. r8 | sol32 sol8.. r8 sol sold sold la la |
    <sol, mib' sib'>8. <mib' sib'>16 <mib sib'>8 <sol, mib' sib'>~ |
    <sol mib' sib'>16 <mib' sib'>16 <mib sib'>8 <mib sib'> |
    <mib sib'>2 r4 |
    <sol, mib' sib'>8. <mib' sib'>16 <mib sib'>8 <sol, mib' sib'>~ |
    <sol mib' sib'>16 <mib' sib'>16 <mib sib'>8 <mib sib'> |
    <la, mi' dod'>2 r4 |
    <sol mi'? sib'>8. <mi' sib'>16 <mi sib'>8 <sol, mi' sib'>4 |
    <mi' mi'>8. <mi mi'>16 <mi mi'>8 <lad mi'>~ |
    <lad mi'>16 <lad mi'> <lad mi'>8 <lad mi'> |
    <mi mi'>4 r8 \pizz red' r4 | sol, r2 |
    r8 \arco la'\glissando sib, r \pizz fad4 |
    R2. r8 \arco la'\glissando sib, r \pizz fa!4 |
    R2. r8 \arco la'\glissando fad, r \pizz sib,4 |
    R2. r8 \arco la''\glissando sib, r \pizz re,4 | R2.
    \repeat tremolo 8 {fad,32 re}
    \repeat tremolo 4 {sol mib} |
    \repeat tremolo 8 {lad fad}
    \repeat tremolo 4 {si sol} | si8:16 re: mib: fad: sol: lad: |
    <lad fad'>2. R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    r4 r8 sol,16 la sol mi re mi sol la re mi |
    <dod la'>4 r2 <dod la'>4 r <dod la'> r <dod la'> r2 |
    <dod la'>4 r r8 <dod la'> r2 | <si, lad'>4 r1\fermata |
    R1*5/4
    \flaut sol'1*5/4~\CaV sol~\CaV sol~\CaV sol~\CaV sol~\CaV sol~\CaV |
    sol~\CaV sol2.\CaV r2 | R1*5/4*3
    \ordin sold2. la2 sold la2.~ la2. r2 |
    sold2. la2 sold la2.~ la2. r2 |
    sold8 la sold mib re mib sold la sold mib |
    re mib sold la re, mib sold la re, mib |
    sold la re, mib sold r r2 |
  }
}

ActeDeuxSceneDeuxViolonUn = { \ViolonUn
  \relative {
    R1.*6 R1*2 R2.
    r16 dod dod8 dod16 dod8 dod16 dod8 dod16 dod |
    r16 <sib mi> <sib mi> <sib mi> <sib mi>8 <sib mi>16 <sib mi> r <sib mi> <sib mi> <sib mi> |
    <la re>8 <la re>16 <la re> r16 <sib mi> <sib mi> <sib mi> <sib mi>8 <sib mi>16 <sib mi> |
    r16 <la re> <la re> <la re> mib'8 mib16 mib mi8 mi16 mi |
    la1.~ la1 r2 |
    R1. R1*2 R2.

    r16 dod, dod8 dod16 dod8 dod16 dod8 dod16 dod r dod dod dod |
    r <la re> <la re> r <la re> <la re> |
    r mi' mi mi mi mi mi mi mi mi mi mi mi mi mi mi |
    r mi mi mi mi mi mi mi mi mi mi mi mi mi mi mi |
    r mid mid mid mid mid mid mid mid mid mid mid mid mid mid mid |
    sold sold sold sold sold sold sold sold sold sold sold sold red'red red red |
    red red sold,sold dod,dod red'red lad'lad red,red sold,sold lad'lad |
    fa'fa sib,sib fa fa fa'fa sib,sib mib,mib mib'mib fa fa |

    R2. R1. R1*2
    r4 \t {do,,8 la do} \t {la do la} |
    r4 \t {do8 sib do} \t {sib do sib} |
    r4 \t {do8 la do} \t {la do la} |
    r4 \t {si8 sold si} | \t {si sold si} \t {sold si sold} \t {do la do} |
    \t {do la do} \t {la do la} \t {dod lab dod} |
    \t {re sib re} mi4 r | la' mi | R4. |

    r16 mi, mi mi mi mi mi mi mi mi mi mi mi mi mi mi |
    mi mi re re mi mi re re mi mi re re mi mi re re |
    fa fa mi mi fa fa mi mi fa fa mi mi fa fa mi mi |
    fa fa mi mi fa fa mi mi fa fa mi mi fa fa mi mi |
    si'si si si <re,si'> <re si'> <re si'> <re si'> <re si'> <re si'> <re si'> <re si'> re're re re |
    red red mi mi red red mi mi red red mi mi red red mi mi |
    red red mi mi red red mi mi red red mi mi red red mi mi |
    red red mi mi red red mi mi sold sold lad lad sold sold lad lad |
    <red,si'> <red si'> <red si'> <red si'> <red si'> <red si'> <red si'> <red si'>
    <red si'> <red si'> <red si'> <red si'> <red si'> <red si'> <red si'> <red si'> |
    si'si si si si si si si si si si si |

    R1. R1 R1.
    la,4 sol fa mi fa8 mi fa sol | la4 mi r | R1
    \pizz la,4 r2 r8 sol'4. r2 | fa4 r2 r8 mi4. r2 |
    fa4 mi fa sol la r2 | R2.
    fa4 mi fa sol la4 r2 | mi4 r r2 | R2. R1 R2. R1
    \arco \pl {la,4\leftpizz s2 s1 s2. s1 s2. s1 s2}
    {la'2.~ la1~ la2.~ la1~ la2.~ la1~ la2} r4 |

    fa16 mi fa sol la sold la si dod do reb mib fa mi fa sol |
    la4 r R2. <la, la'>4 r r2 | R1 sol8 fa sib la re16 si do re fa red mi fad |
    la4 r r8 | sold sold la r4 | la4 la,8 re mib | sold sold la r4 |
    <re,, mib'>4 re8 re mib | <la, sold'>4 <la sold'> r8 |
    <sold re' la'>4 r r8 | <sold' la la'>4 r re'8 |
    re mib r4 r8 | <la,,sold'>4 <la sold'> r8 | <sold re'la'>4 r r8 |
    sold'8 sold la r4 | r8 sold4 sold | la r r8 |

    R1*2 dod,4 r r2 |
    r4 \pizz dod' lad r r sib sol r |
    r2 \arco sol2 |
    mi1:32~ mi: ~ mi2.:32 <mi do'>4:32 |
    sold'4 r2 | r8 \pizz re r4 | R1
    r4 \arco sol,,2.~ sol4 r2 | R2.*3
    r4 \pizz mi'' r r fad r R2. |

    la4 r R2 | R2.*2 R2*2
    \arco red4 dod si lad si8 lad sib16 la sib do |
    re8 r r16 re,,\leftpizz \pizz sib re |
    r re\leftpizz sib re r re\leftpizz sib re |
    r re\leftpizz sib re r re\leftpizz sib re |
    r re\leftpizz sib re r8 r16 \arco re |
    mi mi do mi r red si red r re sib re r dod la dod |
    r do lab do r8 sol16 si | r8 sib16 sib r8 la16 la |
    R2 r8 sold'16 sold la8 r | R2
    re,16\leftpizz \pizz re sib re re\leftpizz re sib re |
    re\leftpizz re sib re mi8 \arco sold16 sold |
    la8 fad16 fad sol8 r | R2*2
    \pizz re4 r dod r mib r | R2

    R2.*2 la'2.~\CaV la~\CaV la2\CaV r4 |
    la,2.~ la2 r4 |
    R2.*9
  }
}
