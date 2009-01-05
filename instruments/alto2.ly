%------------------------------------------------------------------%
% Opéra Libre -- alto2.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

AltoDeux = {
  #(make-instrument-name 'viola-two "viola" 25)
  \clef alto
}

PrologueAltoDeux = { \AltoDeux
  \relative {

    %%% Introduction %%%
    \partial 4 r4 R2.*3 R1
    \ten mi,2~\f| mi4 r | r16 \ind #"sul ponti." red8.:32\mf
    red8 r r4 |
    red'2~ \startTrillSpan red4 \stopTrillSpan r |
    \ind #"pos.nat" mi,2.~\mp mi2~ mi |
    mi2.:32~\p mi2:32 mi2:32
    dod2. | <do! sol'>4 <do sol'>~| <do sol'>8\< sol' \t {sol--( sol-- fa--)}|

    %%% Entrée du baryton 2 %%%
    mi16\fp mi mi mi mi mi mi mi mi mi mi mi |
    mi mi mi mi mi mi mi mi |
    mi\< mi mi mi mi mi mi mi |
    mi4.\f r8 sid-> sid-. |
    r sid-> sid-. r | r sid-> sid-. r sid-> r |
    r sid-. sid-. sid-. | dod-> dod-. r dod-> dod-. r | r dod-.-> r4 |
    red8->\mf red-. r red-> red-. r | red-> red-. r red-. |
    mi2~--\p mi2 r4 |

    %%% Tempo giusto %%%
    <re' re>8\sfz r re,16\p re re re |
    re re re re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    mib mib mib mib fa8 r \clef treble |
    la16\<( dod la re mi) re( fad re) |
    mib( sol mib fa) la( fa do' lab) |
    re4\f r2 \clef alto |
    r16 mi,,\<( sol sib) do( sol sib do) mib( do mib fad) |
    re4\f r2 |
    r16 fad,\mp fad fad fad4:32 r4 |
    r16 mib mib mib mib4:32 r4 |
    r16 do do do do4:32 r4 | \clef treble
    r16 lab' lab lab lab lab lab lab si si si si |
    mi(\< dod mi sol) la( sol la do) mib( do mib fa) |
    re4\f r \clef alto re,,4~---> | re re2---> |
    \ten dod1~---> dod4 r R2 R2-\fermataMarkup

    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*6 lab'2.~\pp lab |
    R2.*3 \clef treble r4\fermata \pizz sol''8\p |

    %%% Andantino %%%
    sol, r sol' sol, r4 |
    sol8 r sol r sib, sib' |
    sol r sol' sol, r sol' |
    sol, r sol' sol, r sol' |
    sol, r sol r sol sol, |
    lab' lab, r sol' sol, r \clef alto
    %%FIXME: grace synchronization bug
    \acciaccatura s16 sol8 r4 | R4.
    r4 si8\p r red, r |
    r4 si'8 r red, r |
    r4 si'8 r fad r |
    r4 si8 r fad r |
    r sold r r do r r sib r |
    \arco solb\>( mib reb) | \ten do4.~\pp do~ do4 r8 |
    solb'( mib reb) | do4.~ do~ do4 r8 |
    solb'( mib reb) | do4.~ do4 r8 |
    fad4\< mib8~ mib dod4 |

    %%% A tempo %%%
    \t {re16\sfp re' re} re'8 r |
    sold,,4:32\mp \t {sold16-> sol-> fa->} |
    \t {re\sfp re' re} re'8 r |
    sold,,4:32~ sold16 r |
    re8:32\< fa: sol: <lab reb>4.~\f <lab reb>~
    <lab reb>8 r16 <lab reb> \t {<lab reb>-> <lab reb> <lab reb>} |
    re,8\sfz r16 lab'-.\mf lab-. lab-. |
    sol'8-.-> r16 lab,-. lab-. lab-. | sol'8-.-> r16 lab,-. lab-. lab-. |
    sol'8-.-> r16 lab,-. lab-. lab-. | si'8-.-> \clef treble r16 fa-. fa-. fa-. |
    mi'8-.-> r16 fa,-. fa-. fa-. | mi'8-.-> r16 fa,-. fa-. fa-. |
    mi'8-.-> r16 fa,-. fa-. fa-. | mi'8-.-> r16 fa,-. fa-. fa-. |
    mi'-> la,? do?\< mib fad la | fa8->\f r16 si,,\< si si |
    mi'8\! r16 si,\< si si | mi'8\! r16 sold,,\< sold sold |
    mi''8\! r16 sold,,\< sold sold | mi''8\! r16 re,-. re-. re-. \clef alto |
    r8 r16 la-.\mf la-. la-. | r8 r16 dod,-.\mp dod-. dod-. |
    si'8\f\> sib lab | \ten fa4.~\p fa~ fa8 r4 | R4.*3
    \t {re16\pp re re} \t {mi mi mi} \t {fa fa fa} |
    \t {mi mi mi} \t {fa fa fa} \t {sol sol sol}|
    \t {sib\< sib sib} \t {do do do} \t {reb reb reb}
    \t {mib mib mib} \t {mi mi mi} |
    mi8\ff \clef treble r16 mi' mi mi mi8-> r16 mi mi mi |
    re8-> r16 si-.\mf si-. si-. r8 r16 sold-.\> sold-. sold-.\! \clef alto |
    re8 r16 \pizz sold, r2 |

    %%% Adagio %%%
    R1*4 R1. \arco \ind #"flaut." mi1:32\pp\> mi4\! r |
    R1*3 R1. \simile red1:32\pp( mi4) r |
    R1*2 r8 do~\mp( \t {do mi si')} \t {la\>( mi' re)} |

    %%% Valse %%%
    sol,2.~\pp sol4~ \t {sol8 si\<( sib)} dod( mi) |
    sold( si\!) r2 \clef treble | re2.\pp( la4 fad) mi( do') r2 |
    do4\<( sold\!) si\<( mib,\!) | sol4 \clef alto mib,8\p( re) sol( fad) \clef treble |
    mib'( re) \t {si'\<( sib fad'\!)} |
    r si,\pp( sib) r r sib( lab) r r lab( fa) r |
    mi4 \ttt {si'16\<( do si do si do} si4\!) r |
    R1 R2. \clef alto |
    \pizz do,,4\mp r2 | fad4 r2 | do4 r2 | fad4 r2 |
    mi4 r sol r |
    \arco <do, la'>4->\mf <do la'>8.-> <do la'>16 <do la'>8-.
    <do la'>~-> <do la'>16 <do la'> <do la'>8-. |
    <do la'>8.-> <do la'>16 <do la'>8 <do la'>~->\<
    <do la'>16 <do la'> <do la'>8-. |

    %%% Vivo al fine %%%
    re16\fp re re re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    re re re re sol sol sol sol |
    lab lab lab lab lab lab lab lab |
    sib sib sib sib sib sib sib sib |
    re,re re re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    re\> re re re re re re re |
    re\mp re re re re re re re |
    re re re re re re re re |
    re re re re re re re re |
    re re re re r4 |
    re16 re re re r4 |
    re8-. re-. r4 |
    re8-. re-. r4 |
    R2*10 r4 \pizz mi\mp |
  }
}

ActeUnSceneUnAltoDeux = { \AltoDeux
  \relative {
    R2*2 R2. R2*2 R2.
    r4 do,--\< re8( fad la do) mi\p\>( do do la) re,4 |
    do8\<( fad la do) mi( fad si do) fad\>( do si fad) la,( mi) |
    do4\<( fa8 solb) sib( do mib solb) lab\>( do solb mib solb,4) |
    solb8\<( sib do mib) solb( lab do reb) solb( reb) lab( mib) do( sib) |
    do,8--(\ppsubito fa16 la mib'4) la,8-- \t {mib'16( si' fad')} fad4 |
    do,,16( fa la mib') la,8-- \t {mib'16( si' fad')} fad8 r |
    \simile la,, \t {sol'16 do fad} fad4 la,,8 mi'16 sol do4 |
    mi,8 \t {sol16 do fad} fad4 la,,16 mi' \t {sol do fad} |
    la,,8\ppsempre do16 fa lab4 do,8 \t {fa16 lab mi'} mi4 |
    la,,16 mi do' fa lab do, \t {fa lab mi'} mi4 |
    \t {fa,16 lab mi'} mi8 \t {fa,16 lab mi'} mi8
    \t {fa,16 lab mi'} mi8 \t {fa,16 lab mi'} mi8 |
    \ttt {mi16 lab, fa do fa lab}
    \ttt {mi' lab, fa do fa lab}
    \ttt {mi' lab, fa do fa lab} |
    \ttt {mi,\p( sib' re lab' re, sib}
    \ttt {mi, sib' re lab' re, sib}
    \ttt {mi, sib' re lab' re, sib}
    \ttt {mi, sib' re lab' re, sib)} |
    \ttt {mi,( sib' re lab' re, sib}
    \ttt {mi, sib' re lab' re, sib}
    \ttt {mi, sib' re lab' re, sib)} |
    mi,( sib' re sib) mi,( sib' re sib)
    mi,( sib' re sib) mi,( sib' re sib) |
    mi,( sib' re sib) mi,( sib' re sib)
    mi,( sib' re sib) |
    <do, do'>4\f\downbow <do do'>\downbow <do do'>\downbow |
    \simile <do si'> <do si'> <do si'> |
    <do sib'> <do sib'> \t {fa8( sol sib)} |
    fad16\mp fad fad fad fad fad fad fad fad fad fad fad |
    fad fad fad fad fad fad fad fad fad fad fad fad |
    fad fad fad fad fad fad fad fad fad fad fad fad |
    fad fad fad fad sol sol sol sol la la la la |
    \ten <do, do'>1~\fmolto <do do'>2 r4 |

    %%% Ad libitum %%%
    r2 <do mi'>~\pp \ten <do mi'>2.~ <do mi'>~ <do mi'>4 r r2 | do2.~ do4 r2 |

    %%% Agitato %%%
    re16\fp re re re re re re re re re re re re re re re |
    re2:16 re: re: re: re: re: re: re: re: re: |
    re: re: re: re: re: re: re: |
    re: re: re: re: re: re: re: re: re: re: re: re: |
    re: re: re:\< re:\! |
    mib2.---> r4 r8 \st {fab16\mf fab mib4 |
    r8 mib r4 r16 fab mib8 r4 r8 mib r4 |
    r4 r8 fab16 fab mib4 r r2 |
    r4 r8 fab16 fab mib4 r |
    r4 fab16 fab mib8 fab16 fab mib8} r4 r2 |
    \ten sol1.\f R1.*2 \clef treble |

    %%% Allegro non troppo %%%
    \ind #"staccato leggiero" sib'16\pp sib sib sib sib sib sib sib sib sib sib sib sib sib sib sib |
    sib sib sib sib sib sib sib sib sib sib sib sib | sib8 r r4 r2 |
    sib16 sib sib sib sib sib sib sib sib sib sib sib sib sib sib sib |
    sib8 r r4 r2 |
    sib8-. mib-. sib-. mib-. \simile sib mib sib mib | do mib do mib do mib do mib |
    reb\p mib reb mib reb mib | reb mib reb mib reb mib reb mib |
    re\mp mi re mi re mi | re mi re mi re mi re mi |
    mi\mf\< fad mi fad mi fad | mi fad mi fad mi fad mi fad\! \clef alto |
    r4 sib,,8\f( mi4.) | r8 mi,8~\mf mi2. |
    sol4 r r2 | r2 \ttt {red16( mi) fad( la si do)} r4 |
    <sol re' la'>4\mf re'8 sol, re' sol, re' sol, | R1
    re'8\mf sol, re' sol, re' sol, | R2.*2 R1*2 |
    \st {do16\pp sib r8 do16 sib r8 do16 sib r8 do16 sib r8 | R1
    do16 sib r8 do16 sib r8 do16 sib r8 do16 sib r8 | R1

    %%% Moderato %%%
    do16\ppsempre sib r8 do16 sib r8 do16 sib} r8 \simile do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 do16 sib r8 |
    do16 sib r8 do16 sib r8 |
    do16-.\p[ sib-. r sib-.] do16-.[ sib-. r sib-.] \simile do16[ sib r sib] |
    do16[ sib r sib] do16[ sib r sib] do16\<[ sib r sib] do16[ sib r sib] |
    do16\mf sib r8 do16 sib r8 | do16 sib r8 do16 sib r8 | R2*2

    %%% Allegro marcato %%%
    \acc {<do, la' sold' re'>4\sfz la'\mp <do, la'> la' |
    <do, la' sold' re'>4\sfz la' <do, la'>} r |
    \st {dod\p dod mib mib} <mib la>2--->( do8) r r4 | R1
    \acc {<mi! la! mib' lab>4\sfz la\mp do, la' |
    <mi! la! mib' lab>4\sfz la do,} r |
    \st {fad\p fad fa fa} re2--->( <mi la>8) r r4 | R1
    r4 mi\mp\>( do8\!) r r4 | r mi\>( do8\!) r r4 | R1
    mib2\>( re8\!) r r4 |
    r mi\mp\>( do8\!) r r4 | r mi\>( do8\!) r r4 | R1
    red2\>( fa8\!) r r4 | R1
    r2 r4 \pizz sib\p lab( fa mib) r |
    re( do re) r r la'\> sold fad\! |

    %%% Agitato %%%
    \arco re8-.\mf re-. re-. re-. \simile re2:8 | re: re: re: re: |
    re8-.\f( fa-.) sib16( do reb mib) solb4-> r |
    \st {sib8\sfz re,\pp sol do sol re sol do |
    sol re do fa sib fa do fa |
    sib fa do fa do sol do fa |
    do sol do fa do sol sib mib |
    lab re, lab re lab' re, lab re |
    sib mib lab mib reb sol, reb' sol |
    <do,, sib'> fa sib mib lab fa,-> sib-> mib->} |
    lab8->\sfz r r4 r1 | R1*2
    \ind #"staccato leggiero" la8\pp do la do la do la do |
    sol sib sol sib sol sib fa la fa la |
    mi\p fad mi fad sold,16 sold sold sold sold sold sold sold |
    sold\< sold sold sold sold8-.->\! r | R2 R1*4
  }
}

ActeUnSceneUnBisAltoDeux = { \AltoDeux
  \relative {
    R2.*5
    \ttt {re,16\p( dod mi fa mi sol)} lab8-- r
    \ttt {re16( dod mi fa mi sol)} |lab8-- r
    \st {sold16 fa sold lad sold\< lad} si-- dod-- |

    %%% Piu vivo %%%
    re4\sfz\downbow  re,\downbow re,2\downbow | mib\downbow r4 |
    re''4\f\downbow r8 re,,~\downbow re2 | dod'2\downbow r4 |
    si'4.--->\ff si---> | fa---> <dod mi>---> |
    <sold fa'>--->\< <fa fa'>---> | <fa fa'>2.--->\!
    R2. r4 <re'sol\harmonic re''>2~\p <re sol\harmonic re''>4. r8\fermata r4 |
    R2. r4 <re sol\harmonic re''>2~ <re sol\harmonic re''>~
    <re sol\harmonic re''>8 r\fermata r4 | R1 R2

    %%% Largo %%%
    R2*3 R2.
    r4 \ind #"espr." mib,\p mi2. |
    fa2~\p\> fa4\! r2 |
    mi2.\< mib4--\mp r r2 |
    R1 R2. R2 R1 R2.*2 R2*2 R2. R2*3 R2. R1 R2.
    r4 sib'\mf\downbow \ten <mib, sib'>2~ <mib sib'>
    <fad la>2.\mp r2 <fad la>4-.\downbow |
    <mi sold>2.\downbow

    %%% Adagio %%%
    R1*14
    r2 mi'~\pp mi1
    <mi la>~\pp <mi la>~<mi la>~<mi la>~<mi la>~
    <mi la>~<mi la>~<mi la>~<mi la>~<mi la>~
    <mi la>4 r <mi la>--( <mi la>-- |
    <mi la>-- <mi la>--) r2 |
    r4 <mi la>--( <mi la>-- <mi la>-- |
    <mi la>--) r r2 | R1*3
    R2 \pizz <dod lad'>4\mp <la re> <lab re> r |
    r \arco <mi si'>\f\downbow
  }
}

InterludeUnAltoDeux = { \AltoDeux
  \relative {
    R1. R1*3 R1. R1 R1.*2 R1*2
    la1\mf la2~ la1( si2 do1~) do4 r2 R2 R2. |
    <sib do>1~--->\f <sib do>2 r2 | <sib do>1---> r4 sol'-- \clef treble |
    re'16\f( mi re si\> la si sold8\!) r4 r8 mi | red'2. mi4( fad1--->) sol,2 |
    fad'2 r \clef alto | <sol,, mi'>2.--->\ff\> <fa' sol>2.~\p <fa sol>4 r2 |
    R2.*3 solb,2.~\pp solb~ solb~ solb~ solb2 r4 |
    mib2.~ mib~ mib~ mib R2.*2
  }
}

ActeUnSceneDeuxAltoDeux = { \AltoDeux
  \relative {
    %%% Air de la Soprano2 %%%

    R2.*2 r4 sold'8\p\(( la sold mi) re( mi) sold( la sold mi) re\>( mi) sold4~--\!\) |
    sold2 r4 | R2. |
    sold8\mp( la sold mi) re( mi) sold( la sold mi) re( mi) sold4-- sold8( la |
    sold mi) re( mi) sold( la | sold mi) re( mi) sold4-- |
    sold8( la sold mi) re( mi) sold( la sold mi) re( mi) sold4-- sold8( la |
    sold mi) re( mi) sold( la | sold mi) re( mi) sold4~-- |
    sold1~ sold2 r2 | R2.*2 | R1*2 R2.*2 |
    re4-.\pp la'-. sold8-.( mi re4-.) | mi8-.( re mi4) la8( re sold, mi) |
    re( mi) sold4-. r | R2.|
    sold8\p( la sold mi) re( mi) sold( la |
    sold mi) re( mi) sold4-. sold8( la |
    sold mi) re( mi) sold( la | sold mi) re( mi) sold4-. |
    la,8\pp( si la fa mi fa la si |
    la fa mi fa la4) la8( si |
    la fa mi fa la si |
    la fa mi fa la4) |
    mi-.\mf si'-. la8( fa) mi4-. |
    la8( fa) re'->( si) r si-. sol'4-> |
    si,-. mi8( re) fa4~--->| fa2 r4 | \clef treble
    \ten <lab lab'>1~\f <lab lab'>2. r4 |
    <lab lab'>---> r <lab lab'>---> | r <lab lab'>---> r |
    \ten <lab lab'>1~--->| <lab lab'>4 r \clef alto lab,( sol) |
    do2.~| do2 r4 | R1*2 R2.*2 |
    \flaut sold8\pp( la sold mi re mi sold la | sold mi re mi sold4) sold8( la|
    sold mi re mi sold la | sold mi re mi sold4) |
    sold8( la sold mi re4) sold8( la | sold mi re mi sold4) sold8( la |
    sold mi re4) sold8( la | sold mi re mi sold4) |
    sold8( la sold mi re4) sold8( la | sold mi re mi sold4) sold8( la |
    sold mi re4) sold8( la | sold mi re mi~) mi4~|
    mi1~ mi~ mi2.~ mi~ | mi1~ mi~ mi2.~ mi2 r4|
    \repeat unfold 3 {R1*2 R2.*2}|
    R1 R1-\fermataMarkup |

    %%% Récitatif %%%

    R2.*2 R1 R2.*3 R1 R2.*2 |
    r4 r8 sol4--\mp\downbow mi8~--\downbow| mi2.~| mi8 mi~ \t {mi mi mi}
    mi4:32\< | mi8\sfz r r2 | R2| r4 r8 la4.\p\>\upbow |
    mib1~\! mib~ | mib2.~ mib~ mib~ mib2 r4 | R2. R1 |

    %%% Duo %%%

    \pizz <re sib'>4\mp\arpeggUp
    \simile <re sib'> <re sib'>
    \repeat unfold 13 <re sib'> r8 \arco <re sib'>\>( |
    <mi do'>-.\!) r \pizz <mi do'>4\mp
    \repeat unfold 4 <mi do'> r8 \arco <mi do'>\>( |
    <sol mib'>-.\!) r \pizz <sol mib'>4 <sol mib'> r8 \arco <sol mib'>\>( |
    <fa reb'>8-.\!) r \pizz <fa reb'>4 <fa reb'> | <fa reb'> r | R2
    \arco lab8--\mf
    lab-- lab-- lab-- \simile lab lab
    \repeat unfold 22 lab |
    sib-.\psubito sib-. sib-. sib-. \simile sib sib
    \repeat unfold 8 sib |
    <dod mi>\mf\< \repeat unfold 7 <dod mi>|
    mib,2.~\! \ten mib~ mib4 r2 R1 |

    %%% Piu vivo %%%
    \ten <sol sol'>2.~\f <sol sol'>1 |
    \st {sol8\p sol' sol, fad' sol, mi'} |
    dod\< sol do sol sib sol |
    <sol sol'>2.\ff r4 |
    dod,4-> dod16\downbow dod dod dod dod dod dod dod |
    sol'2.-- r4 |
    dod16 dod dod dod dod dod dod dod dod4-- |
    sol4-> sol2-- r4 |
    dod,8.-> dod16~-> dod4 r |
    r \pizz do'8\f la fa dod |
    sol'4-> si8 red, fad do |
    sol'4-> sol8 lab la sib |
    si4-> re8 la fad dod |
    sib'4-> sib8 si do dod |
    re4-> \arco \tt {\arco re16( do la sol fad} \tt {si sib lab fa mib} |
    re4) \pizz re'8 fa, si sold |
    re4-> \arco \tt {re'16( si la sold fad}\tt {do' sib sol fa mi} |
    re4->) \pizz re'8 fad, sib sib|
    re,4->\arco \tt {re'16( dod si sold fad} \tt {do' sib la sol mi } |
    re4->) \pizz re'8 la fad sold |
    dod,4-> \arco \tt {dod'16( si sold fad fa} \tt {sib la sol mi re} |
    dod4->) r2 |

    %%% Poco allargando %%%
    <sib' re>1:16\ff <sib re>2:16 <si re>:
    R1

    %%% Tempo giusto %%%
    r8 \pizz <re, sib'>\mf r <re sib'> r <re sib'> r <re sib'> |
    r <re sib'> r <re sib'> r <re sib'> r <re sib'> |
    r <dod la'> r <dod la'> r <dod la'> r <dod la'> |
    r <red si'> r <red si'> r <red si'> r <red si'> |
    r <sol si> <sol si>4 r2 |
    r16 \arco reb''\fp\<( do sib lab sol fa re reb do sib lab) |
    \ten <re, sol>1~\f <re sol>2. r4 |
    \ind #"détaché" do16\mp\< mib solb lab si re mi sol \clef treble sib do mib solb |
    lab4.\! r8 |
    <sold, fad'>2~ <sold fad'>~ <sold fad'> r4 \clef alto |
    re,16\mf\< fad sold si do, mib fad sold si re mi sol |
    la8->\! \t {si,16\mf( la si)} \ttt {re->( si la) si( la si)} |
    \ttt {re->( si la) si( la si)} \ttt {re->( si la) si( la si)} |
    \ttt {sol( la sol) mi'->( sol, la)} \ttt {sol( la sol) mi'->( sol, la)} |
    \ttt {sol( la sol) mi'->( sol, la)} \ttt {sol( la sol) mi'->( sol, la)} |
    \ttt {sol->( si re) si->( re mi)} sol8-> la-> |
    \ttt {la,16\f( re la') la( re, la)} \ttt {la( re la') la( re, la)} |
    \ttt {la( re la') la( re, la)} \ttt {la( re la') la( re, la)}
    <la re la'>4\glissando la''8-.-> r r2 |

    %%% Largo assai %%%
    r4 sib,,2.\p( | la4.) r8 la4( | lab4.) r8 lab4( sol4.) r8 r4 | r sol-- |
    \ten solb2.~\pp solb2. r4 | r2 \pizz fa4 mi mib r re r re r r2 |
  }
}

InterludeDeuxAltoDeux = { \AltoDeux
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    \pizz mib4\mf si fad' sol, |
    mib' si fa? sib |
    re,8\psubito sol re'4 |
    re,8 sol re'4 |
    re,8 sol re'4 |
    dod,8 la' mi'4 |
    r8 mi, r sib' | r do, r fad |
    r mi r sib' | r do, r fad |
    r mi\< do' lab' mi'4->\! r |
    r8 \arco mi,,\mp( si' dod re2) |
    r8 mi,( si' dod re2) |
    r8 mi,( si' dod \ten re2~) |
    re r | R2.
    r8 do,( la' si mi2) |
    r8 do,( la'4) r | R2. fa2.--\pp r4 R2. fa4-- r |
  }
}

ActeUnSceneTroisAltoDeux = { \AltoDeux
  \relative {
    R2.*4 <mi, red'>2.:32~\mp <mi red'>:~<mi red'>:\< <mi red'>4->\! r2 |
    r4 \pizz fad\mf r r red r r8 dod-> r re fa4 |
    \arco <do la'>2.\fp R2.
    mib2.\p re2.:32 mib2.\mp |
    <fa mi'>2.:32~\mf <fa mi'>:~\< <fa mi'>4\! r \pizz re\mf dod r2 |
    r \arco re4\mp( dod2.) r2 re4\>( dod2\!) r4 |

    %%% Lamento %%%
    R1.*6 R1*5/4*5
    <sol'fad'>2\mp\> <solb fa'>4\upbow\! r |
    \simile <sol fad'>2 <solb fa'>4 r |
    <sol fad'>2 <solb fa'>4 r |
    <mib  re'>2\< <mi  red'>4\mf r |
    <do sib' sol'>4--->\f <sib' sol'>8-> <sib sol'> \t {<sib sol'>-> <sib sol'><sib sol'>}
    <do, sib'sol'>4---> <sib' sol'>8-> <sib sol'> \t {<sib sol'>-> <sib sol'> <sib sol'>}
    <do, si'!>4---> <do si'>8->\ff <do si'>-> r4 |
    R2*2

    %%% Tempo I %%%
    \pizz mib4\mp do r fad mib r r mib r | R2.
    \arco fad2.:32\sfp sol2.:32 <mib do'>: <mib re'>: solb:
    \repeat tremolo 12 {do32\< si} do4-.->\sfz r2 | R2.
    \pizz fa,4\mp r re r2 mib4 |

    %%% Tempo II %%%
    R1.*2
    r2 r4 \arco mib2.~\pp mib1.~ mib2. r4 r2 |
    sib'1.:32\pppp <sib la'>2.:\mp <sib la'>4->\sffz r |
    R1 R2. R2
  }
}

ActeUnSceneTroisBisAltoDeux = { \AltoDeux
  \relative {
    R1*3 r4 mi,2--\pp r4 R1*2 r4 reb2--\CaV r4 R1 |
    r2 <mi do'>4--\p <si' fa'>-- <fad fad'>-- r r2 |
    R1*14
    fad1~\pp fad2. r4 |
    r \pizz mib'\p r mib |
    r mib r mib |
    r mib r mib |
    r mib r mib |
    r mib r mib |
    r mib r mib |
    r <sol, mib'>\arpeggUp r <sol mib'>\arpeggUp |
    r \simile <mi! sol mib'> r <mi sol mib'> |
    r16 mib' re'-> mib, r do si'-> do,
    r do si'-> do, r sib la'-> sib,|
    \t {fad'8->\> sib, mib} \t {sol, do mi,} sol dod,\! |
    r4 \arco fad2\p fad4\< | mi2(\> fad~)\! fad1
    R1*3
    <la re>1\p <la re>2-- <la re>-- <la re>-- <mi la>-- |
    \pizz <fad fad'>4-> r r2 | R1*6
    r4 \arco mib\mp\upbow r2 |
    r4 mib\upbow r2 |
    mib4\upbow r mib\upbow r |
    r4 reb'2\pp r4 |
    lab2\p( sol solb fa mi mib) |
    fad1~\pp fad~ fad4 r mi!2~\> mi fad~\! fad4 r r2 |
    R1*7
  }
}

ActeUnSceneTroisTerAltoDeux = { \AltoDeux
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4\f r2
    R2. r2 \arco mib,4~\p mib4 r2 \clef treble |
    \ind #"staccato leggiero" sib''16\p sib sib sib la la la la fad fad fad fad |
    fa fa fa fa re re re re dod dod dod dod |
    si' si si si lad lad lad lad sol sol sol sol fad fad fad fad |
    do' do do do do do do do dod\< dod dod dod dod dod dod dod |
    re8->\! r r4 r \pizz sol8->\mp lab-> |
    r16 sol r8 sib-> r sold-> la-> r16 sold r8 |
    la sold-> la-> r16 sold r8 si-> r la |
    sib-> r16 la r8 do si lad-> si-> r16 lad |
    r8 dod-> do\< re dod mib |
    <re, re'>4->\! r2 R2.
    \longHairpins {
      \arco re2. ~\p\CaV
      re~\CaV re~\CaV re~\CaV re~\CaV re~\CaV re~\CaV re4\CaV r2
      re2.~\p\CaV re~\CaV re8\CaV r \ordin re4.~\pp\< re8\>\glissando
      re'2.~\! re8 r re,4.~\p\< re8\>\glissando
      <re re'>4\! r2 \clef alto |
      r4 \ten re,,2~\p re r4 |
    }

    r  \t {sol8\pp( sib sol} \t {sib sol sib)} \t {sol( sib sol} \t {sib sol sib)}
    \t {fad( si fad} \t {si fad si} fad4) r |
    r  \t {sol8( sib sol} \t {sib sol sib)}  \t {sib( sol sib} \t {sol sib sol)}
    \t {fad( si fad} \t {si fad si} fad4) r |
    r <sol sib>2~\mp <sol sib>\> <fad si>4~\! <fad si>2 r4 |
    r <sol sib>2~ <sol sib> <fad si>4~-- <fad si>2 r4 |
    r  \t {re'8\mf\>\(( si) si(} \t {sol) sol( mib)\!\)} \t {sol\<\(( si) si(} \t {re)\) re( fad~)} fad4~\! fad2 r4 |
    r  \t {re8\mf\>\(( si) si(} \t {sol) sol( mib)\!\)} \t {re'\>\(( si) si(} \t {sol\!) re'( si)\)}
    \t {sol'\>\(( mib) mib(} \t {re)\<\) si'( sol)} re'4--\! \clef treble
    r16 \pizz mi8.\mp |
    fa4-> mi8-> fa-> r16 mi8. | fa4-> fad8-> sol-> r16 fad8. |
    sol8 fad-> sol-> r16 fad r8 lab-> | sol4-> r r2 \clef alto |

    r4 \arco \t {fa,,8( sib fa} \t {sib fa sib)} \t {fa( sib fa}
    \t {sib fa sib)} \t {fa( sib fa} \t {sib fa sib} fa4) r |
    r  \t {fa8( sib fa} \t {sib fa sib)} \t {fa( sib fa}
    \t {sib fa sib)} \t {fa( sib fa} \t {sib fa sib} fa4) r |
    r  \t {sol8\p( sib sol} \t {sib sol sib)} \t {sol( sib sol} \t {sib sol sib)}
    \t {si( fad si} \t {fad\> si fad\!)} r2 |
    r4 \t {sol8( sib sol} \t {sib sol sib)} \t {sol( sib sol} \t {sib sol sib)}
    \t {si( fad si} \t {fad\> si fad\!)} r2 |
    r4 \t {sol8\mp( sib sol} \t {sib sol sib)} \t {sol( sib sol} \t {sib sol sib)}
    \t {fad( si fad} \t {si fad si} fad4) r |
    r4 \repeat tremolo 8 {sib32\mf re}
    \repeat tremolo 8 {sib re}
    \repeat tremolo 4 {si red} | si4 r2 |
    r8 fad'\f( sol) re( mib) sib( si) fad'( sol) re( mib) sib( |
    si) fad'4--\>( re--) sib8~--( sib fad4-- sol--) sib8~--\mp sib2 r4 |
    R2.*4
    fa2.~\pp fa sol~ sol~ sol2 r4 |
    fa2.~\pp fa~fa~fa2 r4 |
    mi2.\p\fermata
  }
}

InterludeTroisAltoDeux = { \AltoDeux
  \relative {
    r8 \pizz re,\pp r re r re dod'-> re, |
    r re r re dod'-> re, |
    r re r4 r2 | R2. R1 R2. \arco
    \ten <mi do'>1~\pp <mi do'>2 r4 |
    r8 mi---.\mp r mi---. r mi---. r mi---. | r mi---. r mi---. r mi---. |
    <lad fad'>8-. <lad fad'>4-- <lad fad'>-- <lad fad'>8-. |
    <lad fad'>8-. <lad fad'>4--( <lad fad'>8-.) |
    <si sol'>16\f <si sol'> <sold mi'> <sold mi'>
    <si sol'> <si sol'> <sold mi'> <sold mi'>
    <si sol'> <si sol'> <do lab'> <do lab'> |
    <si sol'> <si sol'> <sold mi'> <sold mi'>
    <si sol'> <si sol'> <do lab'> <do lab'> \clef treble
    <re sib'> <re sib'> <si sol'> <si sol'>
    <re sib'> <re sib'> <red si'> <red si'> |
    <fad re'>\< <fad re'> <red si'> <red si'>
    <fad re'> <fad re'> <sol mib'>8\! \clef alto
    sol,16:32\mf mi: sol: lab: si: lab: si: do: |
    mib:\< do: mib: mi: sol: mi: sol: lab: | si4--->\! r \clef treble
    dod8\sffz r r4 |
  }
}

ActeUnSceneQuatreAltoDeux = { \AltoDeux
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    r2 r16 do\< sib la sib4--\mf sold-- la8-. la-. r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2

    %%% Agitato %%%
    re,2.:32\fpp sol: sol8 r do,--\mf sol'-- re'-- sol,-- |
    do,-.-> r r2 r2 r16 si'\< si si si2~--\mf\< si4\glissando mib2.\! re4-- r2 |
    re,16\upbow\p( mi sol la) sib( la sib do) mib\<( do mib fa) |
    re4.--->\f re,8-. \t {re re re} re4-- re-- re-- |
    re4.---> re8-. \t {re re re} re4-- re-- re-- |
    re8\< re re re re re |
    re2.:32\psubito mi?: re: |
    re8\< re re re re re |
    re->\! r re16( mi re mi) sol( la sol la) |
    re8->\f r r mi,-. \t {mi-> mi mi} mi-> mi-- mi-> mi-- mi-> mi-- |
    r sib'4--\upbow mi,-- sib'8-. | mi,-> mi-- mi-> mi-- \t {mi->\< mi mi} |
    r\! sib'4--\upbow mi,-- sib'8-. | mi4--\downbow mi--\downbow sib-- |
    re,16->\<( mi sold la) re4->\! mi,16->\<( la re mi) sold4->\! la,16->\<( re mi sold) la4->\! |
    re8-.-> re,,8\mp  \ind #"leggiero" re2.:8|
    \dwnb {re4 re re | re2.:8 r4 |
    re4 re re | re2:8 |
    re4 re re | re2:8 |
    re4 re re | re2:8} |
    re2\upbow\> re4--\! |

    %%% Placando assai %%%
    sol2.--\p(\upbow dod,4--) sol'2.-- r4 |
    sol2.--(\upbow dod,4--) sol'2.-- r4 |
    dod,2\upbow\<( re mib) \ten mi2.~--\p mi r4 |
    \t {r mib--\upbow\mp( mib--} \t {mib-- mib-- mib--)} \t {mib--( mib-- mib--)} \t {mi--( mi-- mi--)} |
    \t {r mib--\upbow( mib--} \t {mib-- mib-- mib--)} \t {mib--( mib-- mib--)} \t {mi--( mi-- mi--)} |
    \t {r \simile mib mib} \t {mib mib mib} \t {mib mib mib} \t {mib mib mib} |
    \t {r mib mib} \t {mib mib mib} \t {mib mib mib} \t {mib mib mib} |
    \t {r do--\mf do--} \t {do-- do-- do--} \t {re--\< re-- re--} mib8-- mib-- |
    \t {r4\! <fa si>--\f <fa si>--} \t {<fa si>-- <fa si>-- <fa si>--}
    \t {<fa si>\< <fa si> <fa si>} <fa dod'>8 <fa dod'>\! |
    R1*4 r2 \longHairpins {lad~\p lad4 lad\< sold2\>( lad2.\!)} r4 |
    R2*3 R2.*2

    \pizz do,4\mp r mib\< mi\! r2 fa4 r2 fad4 r2 |

    %%% A tempo %%%
    \arco
    <mib la>2--->\f <mib la>4-- <mib la>-- <sold si>-- <sold si>2---> <sold si>4--
    <si re>-> <si re>-> <si re>-> r |
    \repeat tremolo 16 {la32\fp sib}
    \repeat tremolo 12 {la sib}
    \repeat tremolo 16 {la sib}
    \repeat tremolo 12 {la sib}
    la8 r r4 r2 |
    \repeat tremolo 12 {la32\pp si}
    \repeat tremolo 16 {la si}
    la8 r16 re16:32~\mp\< re8:32 mi8:32~ mi16:32 sol8.:32 |
    <mi sib'>2--->\f( <mi sib'>4--) <mi sib'>-- <mi sib'>4.---> <mi sib'>8~-- <mi sib'>4 r |
    mi2---> r4 mi2---> r4 <si sold'>2--->\ff <si sold'>4-- |
    \st {sold'8-> si, si sold' sold-> si, sold'-> si, |
    sold'-> si, si sold' sol-> si, sol'-> si,}|
    \ten <re, si'>2.~\ff <re si'>8 r4 |
    sold16\mf( lad) lad( sold) sold( lad) lad( sold) sold( lad) lad( sold) |
    sold( lad) lad( sold) sold( lad) | si2~--\ff si8 r4 |
    fa16\mf( sol) sol( fa) fa( sol) sol( fa) |
    fa( sol) sol( fa) fa( sol) sol( la) | sib2~--\f sib8 r4 |
    sold16\mp( lad) lad( sold) sold( lad) lad( sold) |
    sold( lad) lad( sold) sold( lad) lad( sold) |
    sold( si) si( sold) sold( si) si( sold) |
    sold( si) si( sold) sold( si) |
    si\<( sold) sold( si) si( sold) sold( si) |
    fad( sold) sold( fad) fad( sold) sold( fad) |
    R2\! R4.
    r4 \ind #"détaché" fad16\p\< la re fa sib re, fa la |

    re8->\fp \st {re, re, re re re re re} |
    \simile re re re re re re re re |
    re re re re re re re re |
    re re re' re re, re re' re |
    re, re re' re re, re re' re |
    \cresc sol,16 sol sol sol sol sol sol sol sol sol sol sol sol sol sol sol |
    sol sol sol sol sol sol sol sol la-> la la la la la la la |
    la la la la do do-> do do do do do do do do do do |
    re->\f re re, re re' re re re re,\> re re re re' re re re | re,4--\! r r2 |
    R1*2 R2 R2.*2 R2 R1 |
    \pizz re4\mp r2 R2.*2 re4 r2 R2. re4 r2 R2. re4 r2 R2. re4 r2 R2.*2 |
    re4 r2 R2. re4 r2 re4 r2 R2.*2 re4 r2 r4 sib'\mp\> r r re,\! r |
    R1. R1 R1. R1 R1. R1 R1. R1
    \arco \ten dod'1.\mp( do2.) r4 | R1.*5 R1 R1.
    \ten do,1\pp~ do1. do4-.->\ffsubito r r2 R1.*5 R1 R1. R1
  }
}

EntracteAltoDeux = { \AltoDeux
  \relative {
    R2*9
    <re, re'>4\sfz r r2 R1*6
    re16->\mf re re re re4 r8 re16-> re re re re8-. |
    re16-> re re re re4-- r2 |
    re16\mp\< re re re re re re re re re lab' lab re, re si'? si |
    re,4:16\fp re': re,: re': |
    re,: re': re, re': |
    re,: re': re, re': |
    re,: re': re, re': |
    re,: re': re, re': |
    re,: re': re, re': |
    re,2:16 re'2:16 re,: re: |
    re4 r r2 | R1*2
    \ten re1~\mp re2. r4 | R1*2
    \ten re1~\p re2. r4 | sol--(\upbow lab--\< la-- sib--) si->\f r r <re, sol>-.->\mp r <re sold>-.-> r mib-.-> |
    re4:16\fp re': re,: re': |
    re,: re': re,: re': |
    re,: re': re,: re': |
    re,: re': re,: re': |
    re,: re': re,: re': |
    re,: re': re,: re': |
    re,: re': re,: re': |
    re,4--->\mf re-- re-- re-- re re re |
    re2:8 re: |

    %%% Fugato %%%
    red1~\ff red~\> red2.~\mp red~ red2~ |
    red1~ red2.~ red~ <red sol>1~ <red sol>~ <red sol>2.~ red~
    red1~ red~ red2.~ red~ red1~ red2. r4 |
    do2:8\p do4: do2: do4: <do sol'>2:8 <do sol'>: <do sol'>: <do sol'>:
    <do sol' re'>4\mf <sol' re' la'> <do, sol' re'> <sol' re' la'>
    <do, sol' re'> <sol' re' la'> |
    <sol re'>4:8 <re' la'>: <sol, re'>: <re' la'>: |

    %%% Stretto %%%
    re2:16\f re: | re: re: |
    re4-- <dod re>2\sffz r4 \clef treble |
    r4 r8 \pizz fad'\mp sold,4-- r \clef alto |
    mi-- sol-- r mi-- |
    \arco mi2:8\fp mi8 fad-> fad4:8 |
    mi:-> mi8 fad-> fad2:8 |
    si,2:8->\mp si: | lad: lad:\< |
    <sib re>4-.->\! r r2 | R1*3

    %%% Noir %%%
    R2.-\fermataMarkup \pizz red4\mp r2 | R2. red4 r2 R2. R2 |
    red4 r2 r4 red, r2 | r4 red r | R2 mi4\mp r r2 |
    R1*4 R1.*4 R1 R2.-\fermataMarkup

    R2. r4 \arco la2~\p la2.~ la~ la~ la~ la~ la2 r4 | R2.-\fermataMarkup

    %%% Poco più %%%
    la2.~\pp la~ la~ la2 r4 | R2.-\fermataMarkup |

    %%% Andantino %%%
    R1 R2 R1 R2 R1 R2 R1 R2. \clef treble

    %%% Largo non troppo %%%
    \ind #"à la corde" la'4\mp( sol) fa( mi) fa8\<( mi) fa( sol) |
    la4\!( sol) fa( mi) fa8\<( mi) fa( sol) |
    \simile la4\! sol fa mi fa8 mi fa sol |
    la4 sol fa mi r2 |
    la'4\mf( sol) fa( mi) fa8\<( mi) fa( sol) |
    la4\!( sol) fa( mi) fa8\<( mi) fa( sol) |
    \simile la4\! sol fa mi fa8 mi fa sol |
    la4 sol fa mi r2 \clef alto |
    \ten <la,, la'>1.-- \det {<sol re' re'>1 <sol re'>2 |
    <sol sol' do>1 <do, sol' sol'>2 |
    <dod sol' mi'>->\mp <la' mi'>-> dod, |
    <re la' fa'>-> re' re, |
    <re sol re'>-> <si' fa'>-> <re, sol>-> |
    <do sol' mi'>-> do' do,} |
    \accdet {<re re'> <re re'> <re re'> |
    <red red'> <red red'> <red red'> |
    <mi mi'>\f r1 | <mi mi'>2} r | R1 R2. R2
  }
}

ActeDeuxSceneUnAltoDeux = { \AltoDeux
  \relative { \clef treble
    \ttt {
      <la' re\harmonic la''>16[\ppleggiero <la re\harmonic la''>
      <la re\harmonic la''> <la re\harmonic la''>
      <la re\harmonic la''> <la re\harmonic la''>]
    }
    \ttt { \simile la''16 la la la la la }
    \repeat unfold 20 { \ttt { la[ la la la la la] } }
    \ttt { \ind #"senza cresc." la[ la la la la la] }
    \repeat unfold 47 { \ttt { la[ la la la la la] } }
    la4-- r \ttt { la,8\pp[ la16 la la la] } |
    \ttt { \cresc la[ la la la la la] }
    \repeat unfold 5 { \ttt { re,[ re re re re re] } }
    \ttt { re\f[ re re re re re] }
    \ttt { re[ re re re re re] }|

    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {<sol,mi'>8\f <sold mi'>16 <sold mi'> <sold mi'> <sold mi'>}
    <sold mi'>8 r r4 \clef alto |
    r4 r8 \t {<sib,lab'>8\f <sib lab'>16}
    \ttt {<sib lab'>8 <sib lab'>16 <sib lab'> <sib lab'> <sib lab'>} |
    R1 R2. R2 R2. R1

    %%% Andantino %%%
    R1*2 R2.*4 R2
    r4 \pizz si\mp mi, r si' lad8-- fad mi4 fad8-- mi si' lad |
    r2 fad4 mi r si'8 lad fad4 r r8 fad4. |
    \arco mi2--\p r4 | R2
    \pizz fad4 r2 | R1 R2. R1 R2. R1
    r4 sol\mp mi8 do R1 r4 \arco mib--\p r mib-- r mib-- r | R2.
    r4 mi? r mi r mi r |
    <mi la>1~\pp <mi la>2. <mi la>2( <la re>)
    <mi la>2.~<mi la>2 <la re> <mi la>2.~ <mi la>2. r4 |
    \ten <mi la>2.~ <mi la>1~ <mi la>2 r4 | R1

    %%% Entrée de la Contralto %%%
    \pizz fad4\mp r2 | R1
    fa4 r2 R1 fad4 r fad r fa r mib |
    r \arco <do'fad>--\p r \det {<do fad> r <do fad>} r | \simile do r do |
    r <la re> r <la re> r <la re> r |
    <la re> <la re> r <la re> r <la re> r r <la re> r <la re>\mp |
    r8 \pizz la4\mp do re,8 | r4 lab' do re, | r8 la'4 do re,8 | r4 lab' do re, |
    r8 la'4\mp do re,8 | r lab'4 do re,8 | r sol r2 |
    r8 la4 do re,8 | r lab'4 do re,8 | r la'4 do re,8 | r lab'4 do8 reb,4 |
    r4 la' r8 do | r4 \arco do--\mf r \det {do r do-. | mib,2 r4 la | r do r |
    r si\pp r si r sib} r | R1
    r8 \pizz la4\mp do re,8 | r lab'4 lab8 do4 re, | r8 la'4 do re,8 |
    r4 \arco \ten sol2.~\p sol2. r4 lab\mp\>( sol) fa |
    re2.~\pp re1~ re4 r2 R2 | R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisAltoDeux = { \AltoDeux
  \relative {
    \pizz mi,4\mf r r2 | R2. R2

    %%% Presto Agitato %%%
    R1*5/4*2
    \arco \ind #"sul tasto" <red'sol?>1*5/4~\pp <red sol>~ <red sol>2. r2 |
    <mi,la>1*5/4~ <mi la>~ <mi la>2. r2 |
    R1*5/4*7
    \repeat tremolo 8 { \simile re'16*5/4\p mi}
    \repeat tremolo 8 { re mi}
    \repeat tremolo 8 { re mi}
    re4 r re8\mp( mi re sib) la( sib) |
    re4-- r2 re8( sib la sib) |
    re4-- r2 \ordin re8-.\mf \st {re re re} |
    \accdet {<sol,la>4\sfz r2 <sol la>4\sfz r |
    <sol la>\sfz r <sol la>\sfz r2 |
    <sol la>4\sfz r r8 <sol la>\sfz r2 |
    <fa sol>4\sfz} r1 | R1*5/4*8
    \ind #"détaché" fa?8\mp re? fa re fa re fa-> solb fa re |
    fa re fa re fa re fa-> solb fa re |
    \simile fa re fa re fa re fa solb fa re |
    fa re fa re fa re fa solb fa re |
    fa\< re fa re fa re fa solb fa re |
    \accdet {<dod sol'>4\sfz r2 <dod sol'>4\sfz r |
    <dod sol'>\sfz r <dod sol'>\sfz r2 |
    <dod sol'>4\sfz r r8 <dod sol'>\sfz r2 |
    <sib'la'>4\sfz} r1 | R1*5/4
    <fad dod'>4->\sffz r1 | R1*5/4-\fermataMarkup

    %%% Boum %%%
    R1*5/4*12
    \repeat tremolo 16 {lad32\< si} \tt {lad16( si lad la sol)} |
    \ind #"à la corde" <mib lab mi'!>2.--->\f \accdet {<fa sib re>2 <mib lab mi'!> <fa sib re>2. |
    r4 <mib lab mi'!>2. <fa sib re>4~\<} <fa sib re>2 \accdet {<mib lab mi'!>2. |
    \ten <mib lab re>1*5/4\! <mib lab>2 <mib lab re>2.} |
    <si' mi>2.\> si2\! | \ten <reb, sib'>1*5/4~--->\f <reb sib'>2. <reb sib'>2---> |
    \ten <mib lab mi'!>1*5/4~ <mib lab mi'> |
    r4 \accdet {<lab mi'>2\< <lab mi'>} |
    <fa re'>1*5/4~\ff <fa re'>2. r2 | R1*5/4*5

    %%% Moderato assai %%%
    R1*7/4*7 R2. R1 R2. R2
    r4 si2--\p \pizz red,4 \arco do'2~--\upbow do4 \det {si2 do4. si~} |
    si2 r4 | \pizz fad \arco si2~-- si4 do2~-- do r4 | do,\leftpizz r2 |
    \ten mib1*7/4~\p mib4 r2 r1 | R1*7/4
    r8 \pizz fa\p\< fad dod' re4\! |
    r8 dod,\< re la' sib4\! | r8 \simile fa fad dod' re4 |
    r8 fad, la re fa4 | r8 fa, fad dod' re4 |
    r8 mib, lab si mi4 | r8 fa, solb sib reb4 |
    \arco \acciaccatura solb,4 fa1*7/4~\mf fa1 r2 r4 |
    R1*7/4*2 \repeat volta 2 {\det {re1\mf mi2. re mi1 R1*7/4}
    \meno mi1} r2 r4 | R1*7/4 |

    %%% Presto subito %%%
    \tt {\ind #"détaché" red8\mf\upbow red red red fad} \tt {red red red red fad} \tt {red red red red fad} |
    \tt {red red red red fad} \tt {red red red red fad} \tt {red fad red red fad} |
    \tt {red fad red red fad} \tt {red fad red red fad} \tt {red fad red red fad} |
    \tt {red fad red red fad} \tt {red fad red red fad} \tt {red fad red red fad} |
    \tt {red fad red red fad} \tt {red fad red red fad} \tt {red fad red red fad} |
    re4-- r2 \st {re'8\p do lab fad fa mib re4} r2 |
    re'8-- \st {do la fad fa mib re4} r2 |
    re'8-- \st {do la fad fa mib} re4-- r \st {fa8 lab} sib4-- \pizz sol8\mp re' sol,4 r |
    sold8 mi' sold,4 <sold mi'>\arpeggUp |
    la8 mi' la,4 <la mi' la>\arpeggUp |
    do8 fa do4 red,8 si' red,4 red8 sold red4 |
    r8 red\< sold dod fad si mi\! |
    r4 r8 \arco la,,--\< \det {sib sib si si} |
    \accdet {<dod, do'! sol'>4\ff <dod do' sol'>8.} <dod do'>16-.
    <dod do'!>8.---> \st {<dod do'>16 <dod do'>8} |
    \accdet {<dod la' mi'>2 r4 |
    <dod do' sol'> <dod do' sol'>8.} <dod do'>16
    <dod do'>8.---> \st {<dod do'>16 <dod do'>8} |
    <do sol' mib' sib'>2---> r4 |
    <dod lad'>8-.-> <dod lad'>8.---> \st {<dod lad'>16 <dod lad'>8 <dod lad'>} |
    \accdet {<mib do'>4 <mib do'>8.} <mib do'>16-. \accdet {<mi do'>8.\< <sol mi' si'>} |
    <la mi' la>4\sffz r2 | re4\mf( mi si sold) r \stdet {sol\downbow sib si do} |
    r8 \det {mib,\downbow( mib mib mib mib) | mi\<( mi sol sol lab lab\!) |
    r mi?( mi mi mi mi) mib( mib lab lab sol sol)} |
    r mib mib mib mib mib \det {mi\<( mi sol sol lab lab\!) |
    r sib\upbow( sib sib) si( si) r re( re re) mib( mib)} |
  fad4 \det {mib8 re si sib | <mi, dod'>2.\mp} R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    fad'16->\mf( sol fad mib) re( mib fad mib) re( si) la( sol) la( sol) la( sol) |
    \accdet {<mib sib'>4\sfz r2 <mib sib'>4\sfz r | <mib sib'>\sfz r <mib sib'>\sfz r2 |
    <mib sib'>4\sfz r r8 <mib sib'>\sfz} r2 | <do si'>4->\sffz r1\fermata |
    R1*5/4*3
    \ten lab'1*5/4~\pp lab2. r2 | R1*5/4*2
    \ten sol1*5/4~ sol2. r2 | R1*5/4*3
    sol'8(\p mi sol mi sol mi sol mi sol mi) |
    sol( mi sol mi sol mi sol mi sol mi) |
    sol( mi sol mi sol mi sol mi sol mi) |
    \simile sol mi sol mi sol mi sol mi sol mi |
    sol mi sol mi sol mi sol mi sol mi |
    sol mi sol mi sol mi sol mi sol mi |
    sol mi sol mi sol mi sol mi sol mi |
    sol mi sol mi sol mi sol mi sol mi |
    sol( mi sol mi sol) r r2 |
  }
}

ActeDeuxSceneDeuxAltoDeux = { \AltoDeux
  \relative {
    \pizz sold'4\mp sold la r r2 | sold4 sold la r r2 | R1.
    sold4 sold la r sold sold | la4 r r1 | R1. R1*2 R2.
    \arco re,,8->\f r r16 re8-- fa16 r fad8.-- | re8---> re16 re re re re re re8 r |
    <la're sold>--\fmolto <la re sold>-- <sib re la'>4---> re,8--\mf mib-- |
    <la re sold>--\f <la re sold>-- <sib re la'>4---> re,8--\mf fad-- |
    \ten re1.~-- re1 r2 |
    R1. R1*2 R2.
    <re lab'>16->\f <re lab'> <re lab'>8 <re lab'>-- re--
    r \acc {<re lab'> r re16 red | r mi\upbow dod re do mib} \clef treble |
    r8 \det {sold'\mf sold la} r4 \st {dod,,16\p dod dod dod} |
    r8 \det {sold''\mf sold la} r4 \st {dod,,16\p dod re8} \clef treble |
    r8 \det {sold'\mf sold red'} r4 mid,,16 mid fad8 |
    r8 \det {si' si red} r4 si,16\mp si <dod fad red'>8-- |
    \cresc <red' lad'> <fad,,dod'>16 <fad dod'> <fad dod'>8 <red''lad'>-- \clef alto
    <fad,,dod'>16 <fad dod'> <fad dod'>8 dod'-- fad,-- |
    \st {dod'16\f dod dod dod dod dod dod dod
    dod dod dod dod dod dod dod dod} |

    R2. R1. R1*2
    r16 do,\p( fa la do4) r | r16 do,( sol' sib do4) r |
    r16 do,( fa la do4) r | r16 do,( fa sold si4) |
    r16 re,( sold si re4) r16 do,\upbow( la' do) |
    r16 do,( mi la do4) r | r16 sol( sib re do4) r |
    \pizz do,\mp do' R4.
    r8 \arco <re mi>--\f \det {<re mi> <re mi>} r4 \st {sold,16\mf sold la8} |
    r \det {<re mi>\f <re mi> <re mi>} r4 \st {re,16\mf re mi8} |
    r \det {<la re?>\f <la re> <sol fa'>} r4 \det {sol16\mf sol} la8 \clef treble |
    r \det {<sib la'>\f <sib la'> <do si'>} r4 \st {si16 si do8} |
    r \det {<mi mi'> <mi mi'> <re re'>} r4 \clef alto \pizz <fa, si>  |
    \arco fad8-.\pleggiero \st {fad16 fad fad8 fad16 fad |
    fad8 fad16 fad fad8 fad16 fad |
    fad8 mi16 mi fad8 mi16 mi | fad4 r |
    mi16 mi mi mi mi mi mi mi |
    mi mi mi mi mi mi mi mi} | \ten <red si'>1~\mf <red si'>2 r4 |

    R1. R1 R1.
    \t {sib'8\pp( re sib} \t {re sib re} \t {sib re sib}
    \t {re sib re} \t {sib re sib} \t {re sib re} | si2) r4 R1 |
    \pizz <la'la>4\mp r2 | R1 R2. R1 R2. R1
    \arco mib4\pp( reb dob | sib4) r r2 | R2. R1
    sib4\p( do! re! mib4) r mi\>( fad | sold\!) r2 | R1
    \pl {la,4\leftpizz s2 s1 s2. s1 s2. s1 s2. }
    {la'2.:32~\pp \oneVoice la1:~la2.:~la1:~la2.:~la1:~la2.:\<} |
    <la,la'>4--\! r R2 \clef treble fad'8\f fa \ind #"détaché" la16 sol lab sib |
    do8 si red16 dod re mi fad8 fa | la4---> r r2 \clef alto |
    fa,,16\mf\< re mib fa lab fad sol la do4\! r | la1:16

    <la sold'>4---> reb8\upbow\< mi fa | \acc {la\! la sold r4 |
    <la, sold'>--} la8\< re mib | \acc {la\! la sold r4 |
    <la, sold'>--} mib8\< mib re | \dwnb {<mib re'>4\! <mib re'> r8 |
    <re la' mib'>4} r r8 |
    <la'sold'la>4---> r \st {mib'8 | mib re} r4 r8 |
    \dwnb {<mib,re'>4 <mib re'> r8 | <re la' mib'>4} r r8 |
    \acc {la'8 la sold} r4 | r8 \accdet {mi'4 mi | sold,} r r8 |

    R1*2 <do, la'>4->\sffz r r2 |
    r4 \pizz red\mf dod r | r fa mib r | R1
    \repeat tremolo 16 { \arco mi32\p fa}
    \repeat tremolo 8 { mi fa}
    \repeat tremolo 8 { re fad}
    \repeat tremolo 16 { re\< fad}
    <dod' red>4\sfz r2 | r8 \pizz fa,\mp r4 |
    R1*2 R2.*4 r4 la r r sol r R2. |

    r16 \arco do\pleggiero mi do r si red si |
    r sib re sib r la dod la |
    r lab do lab r sol si sol r solb sib solb |
    r la do la r sold si sold r sol sib sol |
    r fad la fad r fa lab fa |
    r mi sol mi r red fad red |
    \st {dod8\p r sol' r do, r fad r | fa r mi} r |
    \pizz <re sib'>4\mp <re sib'>8 \arco sold'16-.\mf sold-. |
    <sib, re la'>8-- r \pizz <re, sib'>4\mp |
    <re sib'>8 \arco sold'16-.\mf sold-. <sib, re la'>8-- r |
    \pizz <re, sib'>8 \arco sold'16-.\mf \st {sold la8 fad16 fad} |
    sol8-- \st {do,,16\pleggiero mi r8 red16 red |
    r8 re16 re r8 dod16 dod |
    r do do lab' r sol si sol |
    r solb sib solb r fa la fa | R2
    r8 dod16\pp dod do8} r | R2
    \pizz <re sib'>4\mp <re sib'>8 \arco sold'16-.\mf sold-. |
    la8-- r16 re,,( mi8) r16 mi( | re8) si'!16-. si-. lad8-- r |
    R2*2 \pizz re,4\mp r dod r mib r R2 |

    \arco \ind #"flautando sul tasto"
    la2.:32~\pp la:~ la:~ la:~ la:~ la:~ la2 r4 |
    R2.*2 r16 \st {<sib mi>\p r <sib mi> r <sib mi> r <sib mi> r4 |
    R2.*4 r16 <fa dod'>\pp r <fa dod'> r <fa dod'> r <fa dod'> r4 |
    r r16 fa r dod'} r4 |
  }
}

ActeDeuxSceneTroisAltoDeux = { \AltoDeux
  \relative {
    %%% Larghetto %%%
    R4.*6
    sold'16 sold la dod, sold' sold |
    la dod, sold' sold la dod, |
    sold'8 r4 | R4.
    sold16 sold la dod, sold' sold |
    la dod, sold' sold la dod, |
    sold'8 r4 | R4.
    sold16 sold la dod, sold' sold |
    la dod, sold' sold la dod, |
    sold'8 r4 | R4.
    sold16 sold la do,! sold' sold |
    la do, sold' sold la do, |
    sold'8 r4 | R4.
    sold16 sold la do,! sold' sold |
    la do, sold' sold la do, |
    sold'8 r4 | R4.
    sold16 sold la do,! sold' sold |
    la do, sold' sold la do, |
    sold'8 r4 | R4.
    sold16 sold la8 r |
    r sold sold la r4 |
    la16 la sib8 sold16 sold |
    la8 r4 |
    <do,, la'>4.~<do la'>4 r8 |
    sold''16 sold la8 r |
    r sold sold la r4 |
    <sib, re>4.~<sib re>4 r8 |
    sold'16 sold la8 r |
    r sold sold la8 r4 |
    sold16 sold la8 r |
    dod,4.~dod4 r8 |
    r4 sold'16 sold la8 r4 |
    sold16 sold la8 r |
    \pizz <re,, sib'>4\arpeggUp <re sib'>\arpeggUp <re sib'>8\arpeggUp
    \arco sold'16 sold <re la'>8 sol16 sol <sib, lab'>8 r |
    \pizz <re, sib'>4\arpeggUp <re sib'>\arpeggUp <mi do'>8\arpeggUp
    \arco sold'16 sold la8 fad16 fad sib8 r |
    r sold16 sold la8 r |
    \pizz <mi, do' sold'>\arpeggUp sold' <mi, do' la'>4\arpeggUp |
    sold'16 sold la8 |
    r \pizz <mid, dod'>\arpeggUp \arco sold' sold la r |
    \pizz <mid, dod'>\arpeggUp <mid dod'>\arpeggUp r \arco sold'16 sold la8 fad16 fad sol8 r |
    \pizz <fa, do'>4\arpeggUp <fa do'>\arpeggUp R4
    mi4 mi mi r8 |
    mib4 mib mib R4 |
    <fa do'>4\arpeggUp <fa do'>\arpeggUp <fa do'>8 <fa do'> |
    \arco sold'16 sold la8 r r sold sold la r4 |
    r8 sold sold la r4 |
    sold16 sold la8 r |
    r sold16 sold la8 |
    sib r4 | r8 sold16 sold la8 |
    sib r4 | r8 lad16 lad si8 |
    do r4 | r8 la la sib r4 |
    fa,4~fa~fa~fa8 r |
    \pizz mib16 sib' r sib |
    mib, sib' r sib |
    mib, sib' r sib |
    re, sib' r sib re, sib' r sib |
    dod,8 r | R4
    re16 sib' r sib dod,8 r R4 |
    re16 sib' r sib dod,8
    \arco sold''16 sold la8 r |
    \pizz <mi, do'>8 \arco sold'16 sold la8 r |
    <do,, sol' re'>4~<sol' re'>~<sol re'>8 r |
    r \pizz <sol la> r <sol la> r <sol la> |
    r <sol re'> r <sol re'> r <sol re'> |
    R2.-\fermataMarkup R2.*6

    %%% Interlude %%%
    r8 la16 la sib8 r |
    do16 do dod8 r red16 red |
    fa,2~fa~fa4 r16 si do si |
    r si do si r do si8 |
    do16 si r do si8 do16 si |
    r si do si si si do si |
    si si do si si si do si |
    r mib re8 fad16 fa8 la16 sold8 do16 si \clef treble |
    si si do do, si' si do do, |
    red' red mi mi, red' red mi mi, |
    si' si do do, red' red mi mi, |
    red' red mi mi, do' do dod dod, |
    do' do dod dod, la' la sib sib, |
    do' do dod dod, si' si do do, |
    red' red mi fad, sol red' red mi fad, sol |
    fad fad sol sol, fad' fad sol sol, |
    lad' lad si si, lad' lad si si, |
    fad' fad sol sol, fad' fad sol sol, |
    lad' lad si si, lad' lad si si, |
    fad' fad sol sol, fad' fad sol sol, |
    lad' lad si si, lad' lad si si, |
    fad' fad sol sol, lad' lad si si, |
    dod' dod re re, dod' dod re re, |
    lad' lad si si, lad' lad si si, |
    dod' dod re re, dod' dod re re, |
    lad' lad si si, dod' dod re re, |
    mi' mi fa fa, mi' mi fa fa, |
    dod' dod re re, fad fad sol sol, |
    lad' lad si si, dod' dod re re, |
    mi' mi fa fa, mi' mi fa fa, |
    dod' dod re re, dod' dod re re, |
    mi' mi fa fa, mi' mi fa fa, la' la |

    %%% Quatuor %%%
    la8 \clef alto \pizz la,, sold sib |
    fad4 r8 | r la sold si fa4 r8 |
    r fad sol sol\leftpizz |
    \arco \ind #"jeté" <mib re'>32 <mib re'>16. r16 <mib re'>32 <mib re'> r8 |
    <mib re'>32 <mib re'>16. <mib re'>32 <mib re'>16. r8 |
    re2 r4\fermata
    r8 \pizz la' sold4 r | R2.*5 R2*2 R2.

    %%% Air baryton 1 %%%
    <do,sib'>2~<do sib'>~do r4 |
    <do sib'>2~<do sib'>~do r4 |
    \t {re'8 mi re} \t {mi re mi} |
    \t {re mi re} \t {mi re mi} |
    re2 r4 |
    re16 mi re sib lab sib re mi re sib lab sib re mi re sib |
    lab sib re mi sib re mi lab re, mi lab lab |
    la4 r16 dod,,8 sol'16  | dod,4 r8 |
    r sol' r16 dod, r8 | mi4 r8 |
    do! re la' sol | do4 r |
    re,8 la' sol do r4 \clef treble |
    sold''16 sold la8 r4 \clef alto |
    r8 sol,, r16 dod,8. | sol'2 r4 \clef treble |
    sold''16 sold la la sold sold la la sold sold la la sold sold la la \clef alto |
    sol, sol sol sol re re si si si si si si |
    fa fa mi mi mi mi fa fa |

    %%% Doppio tempo %%%
    re2:16 re: re: re: re: re: re4 r |
    sold2.~ sold~sold2 r4 |
    re4 la' sold8 mi | re4 mi8 re la' sold~ |
    sold2.~ sold2 r4 |
    r8 mi' re r r re r2 |
    r4 <la re>~ <la re> r \clef treble sold'8 sold la4 r |
    r2 sol8 sol sold4 r r2 sold8 sold la4 r |
    r fa2:16 mib: la2: la4: | sol: mi: sib': sold: re: |

    %%% Climax %%%
    re4 r R4. |
    re''16 dod si sold mi8 si \clef alto |
    fa si, sib16 la sol mi | re8 r r4 | R4. \clef treble |
    re'''8 si sold16 fad re si |
    la8 re, \clef alto sib16 sol fa mi |
    re8 r r4 | R2 \clef treble
    re''4 r8 sib16 sib sib fa fa fa |
    do2 r4 |
    re''4 re,16 la sold fad re4 \clef alto sold,16 fad mi mib |

    %%% Soprano 2 %%%
    re8 r r2 | R1
    r8 re r4 re8 re | red red r red red r dod dod |
    re4 r8 re r re r re r re re r re re |
    do do r do r do | r do r do do r do do |
    dod dod r dod r dod r dod r dod r dod r dod |
    R2. R1 R2. R1 R2. R1
    <re sold>4 <re sold>8 <re sold> r4 |
    sold'8 sold la4 r2 | r4 sol sol | sold4 r r2 |
    \pizz sold,8 fad la fa' r4 r2 r4 \arco lad, |
    si r2 \clef treble |
    re4 la' sold8 mi re4 mi8 re la' sold r mi |
    sold4 r r2 | <re' si'>4 sold8 mi re4 |
    <sol,\harmonic la'\harmonic> r r2 \clef alto |
    r4 r8 mi, r mi |
    R1 R2.

    %%% Soprano 1 %%%
    sib'8 sib r sib r sib r sib sib sib r sib r sib |
    sib sib r sib r sib r sib do do r do r do |
    do do r do r do r do dod dod r dod r dod |
    r dod r dod r dod r dod |
    R2. R1 R2. R1 R2. R1 R2.
    sold'8 sold la4 r2 | r4 fad fad sol r r2 |
    R2. R1 R2. R1
    r2 mi8 mi | mi mi, mi' mi mi sold, sol' sol |
    lab lab, mi' mi fa fa, sold' sol la la, sold' sold la la, \clef treble |
    mi' fa la, do' dod dod, |

    %%% Duo %%%
    mi'4 r r2 \clef alto |
    sold,8 la sold mi re mi sold4~ |
    sold1~ sold2. r4 |
    fad8 sold fad re dod re fad4~ |
    fad2 dod~ dod4 r |
    la la sold2 |

    %%% Baryton 2 %%%
    re'8 \t {si16 do dod} re8 \t {sold,16 si dod} re8 fad,32 sold si dod |
    re4 re re |
    mib8 \t {do16 dod re} mib8 \t {la,16 do re} \ttt {mib sol, la do re mib} |
    fa4 fa r \clef treble |
    <re' re'> <re re'> <re re'> <re re'> r2 |
    <lab lab'>4 <lab lab'> <lab lab'> <lab lab'> r2 \clef alto |
    re,4 \tt {re16 fad, la si do} re4 |
    \tt {mib16 fad, lad si re} mib4 \tt {re,16 fad sol si red} |
    mi8 r16 fa r8 mi r16 fa8 dod16 |
    mi8 r16 dod mi fa | lab4 r2 |
    sold8 sold la4 sol8 sol | sold4 r2 |
    <fad, mi'>8 r16 <sol fa'> r8 <lab mi'> r16 <la fa'> r8 |
    <sib mi> fa'16 dod do mi r8 fa16 dod r8 |
    solb'16 mib re fa mi mib solb re sol mib lab fa |
    mi sol solb fa lab mi sol fa fad sold la si |
    <re, re'>4 <re re'> <re re'> <re re'> r2 |
    <re re'>4 <re re'> <re re'> <re re'> r8 <do, do'> <mib mib'> <fad fad'> |

    %%% Boum %%%
    <sol la>4 r2 R2.*2
    r8 mi mi mi mi mi | mib mib lab lab sol sol |
    r lab lab lab lab lab |
    la la do do dod dod |
    r re re re re re |
    dod dod fad fad fa fa |
    r fa fa fa fa fa | mi mi lab lab la la \clef treble |
    r si sol si sol si |
    sold si do mib do mi \clef alto |
    r re,, mib sol fad sol |
    si fad mi lab sol4 |

    %%% Contralto %%%
    re'4 \pizz re, re re re r re r8 <fad re'>\arpeggUp |
    r <fad re'>\arpeggUp r <fad re'>\arpeggUp |
    r \simile <fad re'> r <fad re'> |
    r <fad re'> r <fad re'> |
    r <fad re'> r <fad re'> |
    r <mib lab> r <mib lab> |
    r <mib lab> r <mib lab> |
    r4 \arco fa8 fa fad4 r | R2. R2*3
    r4 \pizz do8 do dod4 r | R2
    \arco sold''8 sold la4 r |
    r sol8 sol sold4 |
    sold8 sold la4 r |
    r fad8 fad sol4 |
  }
}
