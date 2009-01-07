%------------------------------------------------------------------%
% Opéra Libre -- alto1.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

AltoUn = {
  #(make-instrument-name 'viola-one "viola" 25)
  \clef alto
}

PrologueAltoUn = { \AltoUn
  \relative {

    %%% Introduction %%%
    \partial 4 r4 R2.*3 R1
    \ten mi,2~\f| mi4 r | r16 mi8.~\mf mi8 r r4 |
    red'2~|red4 r|
    mi,2.:32~\p mi2:32~ mi2:32
    red2.\mp | re!2~|re |
    mi2.:32 mi4 <si' re>~| <si re>8\< si \t {si--( si-- si--)} |

    %%% Entrée du baryton 2 %%%
    la16\fp la la la la la la la la la la la |
    la la la la la la la la |
    la\< la la la la la la la |
    si4.--->\f r8 dod,-> dod-. |
    r8 dod-> dod-. r | r dod-> dod-. r dod-.-> r |
    r dod-. dod-. dod-. | re-> re-. r re-> re-. r | r re-> r4 |
    mi8->\mf mi-. r mi-> mi-. r | mi-> mi-. r mi-. |
    fa2~--\p fa2 r4 |

    %%% Tempo giusto %%%
    <re' re>8\sfz r re,-- mib-- |
    re-- mib-- re-- mib-- re'-- mib-- re'-- mib,-- |
    mib,-- mib mib mib fa fa fa fa |
    lab lab lab lab | \clef treble
    dod16\<( la dod mi) re( mi re fad) |
    sol( mib sol la) fa( la lab do) |
    re4\f r2 | r16 sol,,\<( sib do) mib( do mib fad) si( mib, fad si) |
    re4--\f r2 | \clef alto
    r16 sib,\mp sib sib sib4:32 r4 |
    r16 dod dod dod dod4:32 r4 |
    r16 mi mi mi mi4:32 r4 | \clef treble
    r16 dod dod dod dod dod dod dod mi mi mi mi |
    sol\<( mi sol la) do( la do mib) fa( mib fa lab) |
    re4\f r \clef alto re,,,4~---> | re re2---> |
    \ten dod1~---> dod4 r R2 R2-\fermataMarkup

    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*6 sol''2.~\pp sol |
    R2.*3 \clef treble r4\fermata \pizz lab'8\p |

    %%% Andantino %%%
    lab, r lab' lab, r4 |
    lab8 r lab r si,? si' |
    lab r lab' lab, r lab' |
    lab, r lab' lab, r lab' |
    lab, r lab r sol sol, |
    lab' lab, r sol' sol, r \clef alto
    %%FIXME: grace synchronization bug
    \acciaccatura s16 sol8 r4 | R4.
    r4 sol'8\p r do, r |
    r4 sol'8 r do, r |
    r4 sol'8 r re r |
    r4 sol8 r re r |
    r mi r r mi r r fad r |
    \arco solb,\>( mib reb) | \ten do4.~\pp do~ do4 r8 |
    solb'( mib reb) | do4.~ do~ do4 r8 |
    solb'( mib reb) | do4.~ do4 r8 |
    fad4\< mib8~ mib dod4 |

    %%% A tempo %%%
    \t {re16\sfp re' re} re'8 r |
    sold,,4:32\mp \t {sold16-> sol-> fa->} |
    \t {re\sfp re' re} re'8 r |
    sold,,4:32~ sold16 r |
    re8:32\< fa: sol: <reb'lab'>4.~\f <reb lab'>~
    <reb lab'>8 r16 <reb lab'> \t {<reb lab'> <reb lab'>-> <reb lab'>} |
    re,8\sfz \clef treble r16 re'-.\mf re-. re-. |
    dod'8-.-> r16 re,-. re-. re-. | dod'8-.-> r16 re,-. re-. re-. |
    dod'8-.-> r16 re,-. re-. re-. | mi'8-.-> r16 si-. si-. si-. |
    lad'8-.-> r16 si-. si-. si-. | lad'8-.-> r16 si,-. si-. si-. |
    lad'8-.-> r16 si,-. si-. si-. | lad'8-.-> r16 si,-. si-. si-. |
    lad'-> lad, dod\< mi sol lad | sol8->\f r16 mi,\< mi mi |
    fa'8\! r16 mi,\< mi mi | mi'8\! r16 dod,\< dod dod |
    mi'8\! r16 dod,\< dod dod | mi'8\! r16 fa,-. fa-. fa-. \clef alto |
    r8 r16 sib,-.\mf sib-. sib-. | r8 r16 fad-.\mp fad-. fad-. |
    si8--\f\>( sib-- lab--) | \ten fa4.~\p fa~ fa8 r4 | R4.*3
    \t {re16\pp re re} \t {mi mi mi} \t {fa fa fa} |
    \t {sol sol sol} \t {sib sib sib} \t {do do do} |
    \t {reb\< reb reb} \t {mib mib mib}
    \t {solb solb solb} \t {lab lab lab} \t {la la la} |
    la8\ff \clef treble r16 la' la la la8-> r16 la la la |
    la8-> r16 re,-.\mf re-. re-. r8 r16 dod-.\> dod-. dod-.\! \clef alto |
    sol8 r16 \pizz dod, r2 |

    %%% Adagio %%%
    R1*4 R1. \arco \ind #"flaut." fa,1:32\pp\> mi4\! r |
    R1*3 R1. \simile mi1:32\pp( mi4) r |
    R1*2 r8 do~\mp( \t {do mi si')} \t {la\>( mi' re)} |

    %%% Valse %%%
    sol,2.~\pp sol2 \clef treble \t {fa'8\<( la sold)} |
    \t {do( si red\!)} r2 | re2.\pp( la4 fad) mi( do') r2 |
    do4\>( sold\!) si\>( mib,\!) | sol4 sol,8\p( fad) mib'( re) |
    si'( sib) \t {sol'\<( fad sib\!)} |
    r mi,\pp( dod) r r dod( si) r r si( sib) r |
    mi,4 \ttt {do'16\>( si do si do si}do4\!) r |
    R1 R2. \clef alto |
    \pizz do,,4\mp r2 | fad4 r2 | do4 r2 | fad4 r2 |
    mi4 r sol r |
    \arco <do, la'>4->\mf <do la'>8.-> <do la'>16 <do la'>8-.
    <do la'>~-> <do la'>16 <do la'> <do la'>8-. |
    <do la'>8.-> <do la'>16 <do la'>8-. <la' fad'>~->\<
    <la fad'>16 <la fad'> <la fad'>8-. |

    %%% Vivo al fine %%%
    <re, la' re>8->\sfz r re-. re-. |
    re-. mib16-. mib-. re8-> re-. |
    re fa16-. fa-. re8-> re |
    re re re re | mib-. fa-. lab-. sib-. |
    do re, re re | re re re re |
    re re re re | fad re re re |
    re\mf re16-. re-. mib8-> r |
    r8 re16-. re-. fa8-> r | r lab-> mib-> r |
    re r r4 R2*17
    r4 \pizz mi\mp |
  }
}

ActeUnSceneUnAltoUn = { \AltoUn
  \relative {
    R2*2 R2. R2*2 R2.
    do,8\<( re fad la) do( mi fad si) do\p\>( si mi, do) la( fad) |
    re4\<( do8 re) fad( la do mi) sol\>( re la mi) do4 |
    fa8\<( solb sib do) mib( solb lab do) reb\>( do lab mib) sib( fa) |
    fa\<( solb sib do) mib( solb lab solb) lab( solb) mib( do) solb4 |
    la8--\ppsubito \t {mib'16( si' fad')} fad4 do,,8( fa16 la mib'4) |
    la,8-- \t {mib'16( si' fad')} fad4 la,,16-- la \t {mib'( si') fad'} |
    \simile do,,8 la'16 mi' sol4 mi8 \t {sol16 do fad} fad4 |
    la,,8 mi'16 sol mi8 \t {sol16 do fad} fad4 |
    do,8\ppsempre \t {fa16 lab mi'} mi4 la,,8 do16 fa lab4 |
    do,8 \t {fa16 lab mi'} mi4 do,16 do \t {fa lab mi'} |
    mi8 \t {mi16 lab, fa} fa8 \t {mi'16 lab, fa}
    fa8 \t {mi'16 lab, fa} fa8 \t {mi'16 lab, fa} |
    \ttt {do fa lab mi' lab, fa}
    \ttt {do fa lab mi' lab, fa}
    \ttt {do fa lab mi' lab, fa} |
    \ttt {lab\p( re, sib mi, sib' re}
    \ttt {lab' re, sib mi, sib' re}
    \ttt {lab' re, sib mi, sib' re}
    \ttt {lab' re, sib mi, sib' re)} |
    \ttt {lab'( re, sib mi, sib' re}
    \ttt {lab' re, sib mi, sib' re}
    \ttt {lab' re, sib mi, sib' re)} |
    re( sib mi, sib') re( sib mi, sib')
    re( sib mi, sib') re( sib mi, sib') |
    re( sib mi, sib') re( sib mi, sib')
    re( sib mi, sib') |
    do\fp do do do do do do do do do do do |
    do do do do do do do do do do do do |
    do do do do do do do do re\< fa sol sib\! \clef treble |
    <fad fad'>4\downbow <fad fad'>\downbow <fad fad'>\downbow |
    \simile <fad mid'> <fad mid'> <fad mid'> |
    <sold mid'> <sold mid'> <sold mid'> |
    <fad fad'>\downbow fad16\< fad fa fa fa mib mib mib \clef alto |
    \ten <do, do'>1~\fmolto <do do'>2 r4 |

    %%% Ad libitum %%%
    r2 <re' fad'>~\pp \ten <re fad'>2.~ <re fad'>~ <re fad'>4 r r2 | mi2.~ mi4 r2 |

    %%% Agitato %%%
    re,16\fp re re re re re re re re re re re re re re re |
    re2:16 re: re: re: re: re: re: re: re: re:\< |
    mib4:16\> re:\! re2:16 re: | re: re: re: re:\< |
    mib4:16\> re:\! re2:16 re: | re: re: re: re: re: re:\< |
    mib4:16\> re:\! re2:16 mib4:16\> re:\! |
    mib:\> re:\! re2:16 mib4:16\> re:\! mib:\> re:\! |
    mib2.---> r4 r8 \st {mib16\mf mib fab4 |
    r8 fab r4 r16 mib fab8 r4 r8 fab r4 |
    r4 r8 mib16 mib fab4 r r2 |
    r4 r8 mib16 mib fab4 r |
    r4 mib16 mib fab8 mib16 mib fab8} r4 r2 |
    \ten mi'!1.\f R1.*2 \clef treble |

    %%% Allegro non troppo %%%
    \ind #"staccato leggiero" sib'16\pp sib sib sib sib sib sib sib sib sib sib sib sib sib sib sib |
    sib sib sib sib sib sib sib sib sib sib sib sib | sib8 r r4 r2 |
    sib16 sib sib sib sib sib sib sib sib sib sib sib sib sib sib sib |
    sib8 r r4 r2 |
    mib8-. sib-. mib-. sib-. \simile mib sib mib sib | mib do mib do mib do mib do |
    mib\p reb mib reb mib reb | mib reb mib reb mib reb mib reb |
    mi\mp re mi re mi re | mi re mi re mi re mi re |
    fad\mf\< mi fad mi fad mi | fad mi fad mi fad mi fad mi\! \clef alto |
    r4 sib,8\f( mi4.\!) | r8 sol,8~\mf sol2. |
    sol4 r r2 | r2 r4 \ttt {fad16( la) si( do re fa)} |
    la4\mf sol,8 re' sol, re' sol, re' | R1
    sol,8\mf re' sol, re' sol, re' | R2.*2 R1*2 |
    \st {sib16\pp do r8 sib16 do r8 sib16 do r8 sib16 do r8 | R1
    sib16 do r8 sib16 do r8 sib16 do r8 sib16 do r8 | R1

    %%% Moderato %%%
    sib16\ppsempre do r8 sib16 do r8 sib16 do} r8 \simile sib16 do r8 |
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
    sib16-.\p[ do-. r do-.] sib16-.[ do-. r do-.] \simile sib16[ do r do] |
    sib16[ do r do] sib16[ do r do] sib16\<[ do r do] sib16[ do r do] |
    sib16\mf do r8 sib16 do r8 | sib16 do r8 sib16 do r8 | R2*2

    %%% Allegro marcato %%%
    \acc {<do, la' sold' re'>4\sfz la'\mp <do, la'> la' |
    <do, la' sold' re'>4\sfz la' <do, la'>} r |
    \st {fad\p fad mib mib} <mib la>2--->( lab8) r r4 | R1
    \acc {<la! mib' lab re>4\sfz la\mp re, la' |
    <la! mib' lab re>4\sfz la re,} r |
    \st {dod'\p dod la la} <la mi'>2--->( re8) r r4 | R1
    r4 sold,\mp\>( fa8\!) r r4 | r sold\>( fa8\!) r r4 | R1
    sold2\>( sol8\!) r r4 |
    r sold\mp\>( fa8\!) r r4 | r sold\>( fa8\!) r r4 | R1
    sold2\>( sib8\!) r r4 | R1
    r2 r4 \pizz re\p do( la sol) r |
    do( la sol) r r do\> si la\! |

    %%% Agitato %%%
    \arco re,8-.\mf re-. re-. re-. \simile re2:8 | re: re: re: re: |
    re16\f( mi fa sol) sib8-.( reb-.) solb4-> r |
    \st {sib8\sfz sol\pp re sol do sol re sol |
    do sol fa do fa sib fa do |
    fa sib fa do fa do sol do |
    fa do sol do fa do mib lab |
    re lab re, lab' re, lab re lab' |
    mib sib mib lab sol reb sol, reb' |
    <sol, fa'> do mib lab reb mib,-> lab-> reb->} |
    re8->\sfz r r4 r1 | R1*2
    \ind #"staccato leggiero" do8\pp la do la do la do la |
    sib sol sib sol sib sol la fa la fa |
    fad\p mi fad mi dod16 dod dod dod dod dod dod dod |
    dod\< dod dod dod dod8-.->\! r | R2 R1*4
  }
}

ActeUnSceneUnBisAltoUn = { \AltoUn
  \relative {
    R2.*5
    \ttt {re,16\p( dod mi fa mi sol)} lab8-- r
    \ttt {re16( dod mi fa mi sol)} |lab8-- r
    \st {lad16 si lad dod si\< dod} si-- mi-- |

    %%% Piu vivo %%%
    re4\sfz\downbow  re,\downbow re,2\downbow | mib\downbow r4 |
    re''4\f\downbow r8 re,,~\downbow re2 | dod'2\downbow r4 |
    re'4.--->\ff re---> | <fad, sold>---> <si, sold'>---> |
    <sold fa'>--->\< <lad si'>---> | <lad si'>2.--->\!
    R2. r4 <re sol\harmonic re''>2~\p <re sol\harmonic re''>4. r8\fermata r4 |
    R2. r4 <re sol\harmonic re''>2~ <re sol\harmonic re''>~
    <re sol\harmonic re''>8 r\fermata r4 | R1 R2

    %%% Largo %%%
    R2*3 R2.
    \ind #"espr." mib,2\p( mi) mi4 |
    fa2~\p\> fa4\! r2 |
    r2 mi4\< sold4--\mp r r2 |
    R1 R2. R2 R1 R2.*2 R2*2 R2. R2*3 R2. R1 R2.
    r4 sib\mf\downbow \ten <mib, sib'>2~ <mib sib'>
    <fad la>2.\mp r2 <fad la>4-.\downbow |
    <mi sold>2.\downbow

    %%% Adagio %%%
    R1*14
    r2 si''~\pp si1
    <re,si'>~\pp <re si'>~<re si'>~<re si'>~<re si'>~
    <re si'>~<re si'>~<re si'>~<re si'>~<re si'>~
    <re si'>4 r <re si'>--( <re si'>-- |
    <re si'>-- <re si'>--) r2 |
    r4 <re si'>--( <re si'>-- <re si'>-- |
    <re si'>--) r r2 | R1*3
    R2 \pizz <fa si>4\mp <fad si> <sol si> r |
    r \arco <mi, si'>\f\downbow
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

    R2.*2 r4 sold'8\p\(( la sold mi) re( mi)
    sold( la sold mi) re(\> mi) sold4~\!--\) | sold2 r4 | R2. |
    sold8\mp( la sold mi) re( mi) sold( la
    sold mi) re( mi) sold4-- sold8( la |
    sold mi) re( mi) sold( la | sold mi) re( mi) sold4-- |
    sold8( la sold mi) re( mi) sold( la
    sold mi) re( mi) sold4-- sold8( la |
    sold mi) re( mi) sold( la | sold mi) re( mi) sold4~-- |
    sold1~ sold2 r2 | R2.*2 |
    re,4-.\p si'-. sold8( fad) re4-. |
    fad8( re) si'( sold) r fad sold4-. |
    fad4-. re8( si') sold4-. | si8( sold) fad( re) r4 |
    re'4-.\pp la'-. sold8( mi re4-.) |
    mi8-.( re mi4-.) la8( re sold, mi) | re( mi) sold4-. r | R2.|
    sold8\p( la sold mi) re( mi) sold( la |
    sold mi) re( mi) sold4-. sold8( la |
    sold mi) re( mi) sold( la |
    sold mi) re( mi) sold4-. |
    la,8\pp( si la fa mi fa la si |
    la fa mi fa la4) la8( si |
    la fa mi fa la si |
    la fa mi fa la4) |
    mi-.\mf si'-. la8( fa) mi4-. |
    la8( fa) re'->( si) r si-. sol'4-> |
    si,-. mi8( re) fa4~--->| fa2 r4 | \clef treble
    \ten <lab lab'>1~\f <lab lab'>2. r4 |
    <lab lab'>---> r <lab lab'>---> | r <lab lab'>---> r |
    \ten <lab lab'>1~| <lab lab'>4 r \clef alto lab,( sol) |
    re'2.~| re2 r4 | R1*2 R2.*2 |
    \flaut sold8\pp( la sold mi re mi sold la |
    sold mi re mi sold4) sold8( la|
    sold mi re mi sold la | sold mi re mi sold4) |
    sold8( la sold mi re4) sold8( la |
    sold mi re mi sold4) sold8( la |
    sold mi re4) sold8( la | sold mi re mi sold4) |
    sold8( la sold mi re4) sold8( la |
    sold mi re mi sold4) sold8( la |
    sold mi re4) sold8( la | sold mi re mi) sold4~|
    sold1~ sold~ sold2.~ sold~ |
    sold1~ sold~ sold2.~ sold2 r4|
    \flaut re8\ppp( mi sold la sold mi re mi) |
    sold( la sold mi re mi) sold( la |
    sold mi re mi) sold( la |
    sold mi re2~)| \ten re2. r4 | R1 | R2.*2 | R1*2 |
    R2.*2 | R1 R1-\fermataMarkup |

    %%% Récitatif %%%

    r4 r8 reb4.--\mp\downbow| sib2.--\downbow~ |sib1~ |sib2 r4 |
    r4 r8 si!4.--\downbow| sold2.~--\downbow|sold1~|sold2 r4|
    R2.| r4 r8 si4--\mp\downbow do8~--\downbow |do2.~ |do8 do~ \t {do do do}
    do4:32\< | do8\sfz r r2 | R2| r4 r8 si4.\p\>\upbow |
    fad1~\!|fad~|fad2.~|fad~|fad~|fad2 r4| R2. R1 |

    %%% Duo %%%

    \pizz <re sib'>4\mp\arpeggUp
    \simile <re sib'> <re sib'>
    \repeat unfold 13 <re sib'> r8 \arco <re sib'>\>( |
    <mi do'>-.\!) r \pizz <mi do'>4\mp
    \repeat unfold 4 <mi do'> r8 \arco <mi do'>\>( |
    <sol mib'>-.\!) r \pizz <sol mib'>4 <sol mib'> r8 \arco <sol mib'>\>( |
    <fa reb'>8-.\!) r \pizz <fa reb'>4 <fa reb'> | <fa reb'> r | R2
    \arco si8--\mf
    si-- si-- si-- \simile si si
    \repeat unfold 22 si |
    \st {<dod mi>\psubito <dod mi> <dod mi> <dod mi>} \simile <dod mi> <dod mi>
    \repeat unfold 8 <dod mi> |
    <sold' lad>\mp\< \repeat unfold 7 <sold lad>|
    \ten fa2.~\! fa~ fa4 r2 R1 |

    %%% Piu vivo %%%
    \ten <sol, sol'>2.~\f <sol sol'>1 |
    \st {<sol sol'>8\p sol fad' sol, mi' sol,} |
    dod,\< sol' do sol sib' sol, |
    sol''2.\ff r4 |
    dod,,4-> dod16\downbow dod dod dod dod dod dod dod |
    sol2.-- r4 |
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
    re4) \pizz re'8 fad, sib sib|
    re,4->\arco \tt {re'16( dod si sold fad} \tt {do' sib la sol mi } |
    re4->) \pizz re'8 la fad sold |
    dod,4-> \arco \tt {dod'16( si sold fad fa} \tt {sib la sol mi re} |
    dod4->) r2 |

    %%% Poco allargando %%%
    <re' sib'>2.:16\ff la'4~ | la4. <si re>8~ <si re>2|
    R1

    %%% Tempo giusto %%%
    r8 \pizz <sib, re>\mf r <sib re> r <sib re> r <sib re> |
    r <sib re> r <sib re> r <sib re> r <sib re> |
    r <la dod> r <la dod> r <la dod> r <la dod> |
    r <red, si'> r <red si'> r <red si'> r <red si'> |
    r <sol si> <sol si>4 r2 |
    r16 \arco reb''\fp\<( do sib lab sol fa re reb do sib lab) |
    \ten <sol re' lad'>1~\f <sol re' lad'>2. r4 |
    \ind #"détaché" do,16\mp\< mib solb lab si re mi sol \clef treble sib do mib solb |
    lab4.\! r8 \clef alto |
    <do,, fa\harmonic>2~ <do fa\harmonic>~ <do fa\harmonic> r4 |
    \simile re,16\mf\< fad sold si do, mib fad sold si re mi sol |
    la8->\! \t {re,16\mf( mi re)} \ttt {mi( re mi) la->( mi re) }
    \ttt {mi( re mi) la->( mi re)} \ttt {mi( re mi) la->( mi re)} |
    \ttt {si->( re mi) re( mi re)} \ttt {si->( re mi) re( mi re)} |
    \ttt {si->( re mi) re( mi re)} \ttt {si->( re mi) re( mi re)} |
    \ttt {la->( re mi) re->( mi la)} la8-> re-> |
    \ttt {re,16\f( mi la) la( mi re)} \ttt {re( mi la) la( mi re)} |
    \ttt {sol,( mi' la) la( mi sol,)} \ttt {sol( mi' la) la( mi sol,)}
    \ttt {sol( mi' la) la( mi re)} | la8-.-> r r2 |

    %%% Largo assai %%%
    r4 re2.\p( | dod4.) r8 dod4( do4.) r8 do4( si4.) r8 r4 | r si-- |
    \ten sib2.~\pp | sib2. r4 | r2 \pizz la4 lab sol r re r re r r2 |
  }
}

InterludeDeuxAltoUn = { \AltoUn
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    \pizz mib4\mf si fad' sol, |
    mib' si fa? sib |
    la\psubito la'8 re, |
    la4 la'8 re, |
    la4 la'8 re, |
    la4 la' |
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

ActeUnSceneTroisAltoUn = { \AltoUn
  \relative {
    R2.*4 <mi, red'>2.:32~\mp <mi red'>:~<mi red'>:\< <mi red'>4->\! r2 |
    \ind #"pizz. sul tasto" si'4\f r sib sol r lab fa--\< sol-- sib-- |
    \arco <do, la'>2.:32\fp R2.
    mib2.:32\pp re2.\p la'2.:32\< |
    <si lad'>8-.\f <si lad'>4---> <si lad'>8-. <si lad'>4~--->
    <si lad'>8 <si lad'>4-- <si lad'>8-. \ten <si lad'>4~--->
    <si lad'> r \pizz sol\mf fa r2 |
    r \arco re4\mp( dod2.) r2 re4\>( dod2\!) r4 |

    %%% Lamento %%%
    R1.*6 R1*5/4*5
    <re'dod'>2\mp\> <si lad'>4\upbow\! r |
    \simile <reb do'>2 <sib la'>4 r |
    <re dod'>2 <si lad'>4 r |
    <lab sol'>2\< <fad' re'>4\mf r |
    <sib, sol' mib'>4--->\f <sol' mib'>8-> <sol mib'> \t {<sol mib'>-> <sol mib'> <sol mib'>}
    <sib, sol' mib'>4---> <sol' mib'>8-> <sol mib'> \t {<sol mib'>-> <sol mib'> <sol mib'>}|
    <mi red'>16->\< <mi red'> <mi red'> <mi red'> \t {<mi red'>->\! <mi red'>-> <mi red'>->} <mi red'>8->\sffz r4 |
    R2*2

    %%% Tempo I %%%
    \pizz la,4\mp fad r fad mib r r mib r | R2.*2
    \arco do'2.:32\sfp <lab do>: <la re>: sib:
    \repeat tremolo 12 {re32\< do} la4-.->\sfz r2 | R2.
    \pizz fa4\mp r re r2 mib4 |

    %%% Tempo II %%%
    R1.*2
    r2 r4 \arco mib2.\pp\< mi1.~\p mi2. r4 r2 |
    mib'1.:32\pppp <mib re'>2.:\mp <mib re'>4->\sffz r |
    R1 R2. R2
  }
}

ActeUnSceneTroisBisAltoUn = { \AltoUn
  \relative {
    R1*3 r4 red2--\pp r4 R1*2 r4 do2--\CaV r4 R1 |
    r2 <do mib>4--\p <si fa'>-- <fad fad'>-- r r2 |
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
    r16 solb' fa'-> solb, r mib re'-> mib,
    r mib re'-> mib, r do si'-> do, |
    \t {la'8->\> mib fad} \t {do mib sol,} sib mi,\! |
    r4 \arco la2\p la4\<( | do2\>) la~\! la1
    R1*3
    <do mib>1\p <do mib>2-- <do mib>-- <do mib>-- <sol do>-- |
    \pizz <fad fad'>4-> r r2 | R1*6
    r4 \arco fad\mp\upbow \ind #"pizz. du pouce" do\thumbpizz r |
    r fad\upbow \simile do\thumbpizz r |
    fad\upbow do\thumbpizz fad\upbow do\thumbpizz |
    r4 <do fa\harmonic do''>2\pp r4 |
    \ten do'1\p~\CaV do2\CaV reb( do si)
    fad1~\pp fad~ fad4 r la2~\> la fad~\! fad4 r r2 |
    R1*7
  }
}

ActeUnSceneTroisTerAltoUn = { \AltoUn
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4\f r2
    R2. r4 \arco sib2~\p sib4 r2 \clef treble |
    \ind #"staccato leggiero" sib'16\p sib sib sib sib sib sib sib sib sib sib sib |
    sib sib sib sib sib sib sib sib sib sib sib sib |
    si si si si si si si si si si si si si si si si |
    do do do do do do do do dod\< dod dod dod dod dod dod dod |
    re8->\! r r4 r \pizz sol8->\mp lab-> |
    r16 sol r8 sib-> r sold-> la-> r16 sold r8 |
    la sold-> la-> r16 sold r8 si-> r la |
    sib-> r16 la r8 do si lad-> si-> r16 lad |
    r8 dod-> do\< re dod mib |
    <re, re'>4->\! r2 R2.
    \longHairpins {
      \arco <re, sol\harmonic re''>2. ~\p
      <re sol\harmonic re''> ~
      <re sol\harmonic re''> ~
      <re sol\harmonic re''> ~
      <re sol\harmonic re''>4 r2 R2.
      r4 re'4.~\pp\< re8\>\glissando
      re'2.~\! re~ re8 r re,4.~\pp\< re8\>\glissando re'2.~\! re8 r re,4.~\p\<\upbow re8\glissando |
      re'4\mp( si sib\>) <re, re'>\! r2 \clef alto |
      r4 \ten re,,2~\p re r4 |
    }

    r  \t {sib'8\pp( sol sib} \t {sol sib sol)} \t {sib( sol sib} \t {sol sib sol)}
    \t {si( fad si} \t {fad si fad} si4) r |
    r  \t {sib8( sol sib} \t {sol sib sol)} \t {sib( sol sib} \t {sol sib sol)}
    \t {si( fad si} \t {fad si fad} si4) r |
    r sol'2~\mp\CaV \ordin sol\> fad4~\! fad2 r4 |
    r \simile sol2~\CaV sol fad4~-- fad2 r4 |
    r  \t {fad8\mf\>\(( re) re(} \t {si) si( sol)\!\)} \t {si\<\(( re) re(} \t {fad)\) fad( sib~)} sib4~\! sib2 r4 |
    r  \t {fad8\mf\>\(( re) re(} \t {si) si( sol)\!\)} \t {fad'\>\(( mib) mib(}
    \t {si\!) fad'( mib)\)} \t {sib'\>\(( sol) sol(} | \t {mib)\)\< si'( sol)} mib'4--\! \clef treble
    r16 \pizz mi8.\mp |
    fa4-> mi8-> fa-> r16 mi8. | fa4-> fad8-> sol-> r16 fad8. |
    sol8 fad-> sol-> r16 fad r8 lab-> | sol4-> r r2 \clef alto |

    r4 \arco \t {sib,,8( fa sib} \t {fa sib fa)} \t {sib( fa sib} \t {fa sib fa)}
    \t {sib( fa sib} | \t {fa sib fa} sib4) r |
    r  \t {sib8( fa sib} \t {fa sib fa)} \t {sib( fa sib} \t {fa sib fa)}
    \t {sib( fa sib} | \t {fa sib fa} sib4) r |
    r  \t {sib8\p( sol sib} \t {sol sib sol)} \t {sib( sol sib} \t {sol sib sol)}
    \t {fad( si fad} \t {si\> fad si\!)} r2 |
    r4 \t {sib8( sol sib} \t {sol sib sol)} \t {sib( sol sib} \t {sol sib sol)}
    \t {fad( si fad} \t {si\> fad si\!)} r2 |
    r4 \t {sib8\mp( sol sib} \t {sol sib sol)} \t {sib( sol sib} \t {sol sib sol)}
    \t {si( fad si} \t {fad si fad} si4) r |
    r4 \repeat tremolo 8 {re32\mf sib}
    \repeat tremolo 8 {re sib}
    \repeat tremolo 4 {red si} | red4 r2 |
    r8 sib'\f( si) fad( sol) re( mib) sib'( si) fad( sol) re( |
    mib) sib'4--\>( fad--) re8~--( re sib4-- si--) re8~--\mp re2 r4 |
    R2.*4
    do2.~\pp\CaV do~\CaV do~\CaV do~\CaV do2\CaV r4 |
    sold2.~\pp sold~sold~sold2 r4 |
    dod2.\p\fermata
  }
}

InterludeTroisAltoUn = { \AltoUn
  \relative {
    r8 \pizz mib,\pp r mib r mib re'-> mib, |
    r mib r mib re'-> mib, |
    r mib r4 r2 | R2. R1 R2. \arco
    \ten <sol mib'>1~\pp <sol mib'>2 r4 |
    r8 mi---.\mp r mi---. r mi---. r mi---. | r mi---. r mi---. r mi---. |
    <dod'la'>8-. <dod la'>4-- <dod la'>-- <dod la'>8-. |
    <dod la'>-. <dod la'>4--( <dod la'>8-.) |
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
    fad'8\sffz r r4 |
  }
}


ActeUnSceneQuatreAltoUn = { \AltoUn
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    r2 r16 do\< sib la sib4--\mf sold-- la8---. la---. r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2

    %%% Agitato %%%
    sol2.:32\fpp la: la8 r \t {do,\mf sol'( re')} \t {la' re,( sol,)} |
    do,-.-> r r2 r2 r16 si'\< si si mi2~--\mf\< mi4\glissando sol2.\! la4-- r2 |
    re,,16\upbow\p( mi sol la) sib( la sib do) mib\<( do mib fa) |
    re4.--->\f re8-. \t {re re re} re4-- re-- re-- |
    re4.---> re8-. \t {re re re} re4-- re-- re-- |
    re8\< re re re re re |
    mib,2.:32\psubito re: fad: |
    la8\< la la la la la |
    la->\! r re,16( mi sol la) do( re mi sol) |
    la8->\f r r mi,-. \t {mi-> mi mi} mi-> mi-- mi-> mi-- mi-> mi-- |
    r sib'4--\upbow mi-- sib8-. | mi,-> mi-- mi-> mi-- \t {mi->\< mi mi} |
    r\! sib'4--\upbow mi-- sib8-. | mi4--\downbow mi--\downbow sib-- |
    mi,16->\<( la re mi) sold4->\! la,16->\<( re mi sold) | la4->\! re,16->\<( mi sold la) re4->\! |
    la8-.-> la,8:16\mp \ind #"leggiero" la2.:16|
    \dwnb {la4 la la | la2.:16 r4|
    la4 la la | la2:16 |
    la4 la la | la2:16 |
    la4 la la | la2:16} |
    la2\upbow\> la4--\! |

    %%% Placando assai %%%
    sol2.--\upbow\p( dod,4--) sol'2.-- r4 |
    sol2.--\upbow( dod,4--) sol'2.-- r4 |
    dod,2\upbow\<( re mib) \ten mi2.~--\p mi r4 |
    \t {r la--\mp( la--} \t {la-- la-- la--)} \t {la--( la-- la--} \t {sib-- sib-- sib--)} |
    \t {r la--\upbow( la--} \t {la-- la-- la--)} \t {la--( la-- la--)} \t {sib--( sib-- sib--)} |
    \t {r \simile si si} \t {si si si} \t {si si si} \t {si si si} |
    \t {r si si} \t {si si si} \t {si si si} \t {si si si} |
    \t {r <fad lad>--\mf <fad lad>--} \t {<fad lad>-- <fad lad>-- <fad lad>--}
    \t {<fa si>--\< <fa si>-- <fa si>--} <solb do>8-- <solb do>-- |
    \t {r4\! <si red>--\f <si red>--} \t {<si red>-- <si red>-- <si red>--}
    \t {<si fad'>\< <si fad'><si fad'>} <dod sol'>8 <dod sol'>\! |
    R1*4 r2 \longHairpins {dod~\p dod4 dod\< mi2\>( dod2.\!) } r4 |
    R2*3 R2.*2

    \pizz fad,4\mp r mib\< la\! r2 fa4 r2 si4 r2 |

    %%% A tempo %%%
    \arco
    <la si>2--->\f <la si>4-- <la si>-- <si re>-- <si re>2---> <si re>4-- <fa'sol>---> <fa sol>---> <fa sol>---> r |
    \repeat tremolo 16 {sib,32\fp la}
    \repeat tremolo 12 {sib la}
    \repeat tremolo 16 {sib la}
    \repeat tremolo 12 {sib la}
    sib8 r r4 r2 |
    \repeat tremolo 12 {si32\pp la}
    \repeat tremolo 16 {si la}
    si8 r16 fad'16:32~\mp\< fad8:32 sold8:32~ sold16:32 si8.:32 |
    <sol dod>2--->\f( <sol dod>4--) <sol dod>-- <sol dod>4.---> <sol dod>8~-- <sol dod>4 r |
    sib2---> r4 sib2---> r4 <re, si'>2--->\ff <re si'>4-- \st {si'8-> re, re si' si-> re, si'-> re, |
    si'-> re, re si' si-> mib, si'-> mib,} |
    \ten <re, dod'>2.~\ff <re dod'>8 r4 |
    lad'16\upbow\mf( sold) sold( lad) lad( sold) sold( lad) lad( sold) sold( lad) |
    lad( sold) sold( lad) lad( sold) |
    \ten dod2~\ff dod8 r4 |
    sol16\mf( fa) fa( sol) sol( fa) fa( sol) | sol( fa) fa( sol) sol( fa) fa( sol) |
    sib2~--\f sib8 r4 |
    lad16\mp( sold) sold( lad) lad( sold) sold( lad) |
    lad( sold) sold( lad) lad( sold) sold( lad) |
    si( sold) sold( si) si( sold) sold( si) | si( sold) sold( si) si( sold) |
    sold\<( si) si( sold) sold( si) si( sold) |
    sold( si) si( sold) sold( si) si( sold) |
    R2\! R4. r4 \ind #"détaché" fad16\< la re fa sib re, fa la |

    re8->\fp \st {re, re, re re re re re} |
    \simile re re re re re re re re |
    re re re re re re re re |
    re' re re, re re' re re, re |
    re' re re, re re' re re, re |
    \cresc la'16 la la la la la la la la la la la la la la la |
    la la la la la la la la do-> do do do do do do do |
    do do do do mib-> mib mib mib mib mib mib mib mib mib mib mib |
    re->\f re re re re, re re re re'\> re re re re, re re re | re4\! r r2 |
    R1*2 R2 R2.*2 R2 R1 |
    \pizz re4\mp r2 R2.*2 re4 r2 R2. re4 r2 R2. re4 r2 R2. re4 r2 R2.*2 |
    re4 r2 R2. re4 r2 re4 r2 R2.*2 re4 r2 r4 sib'\mp\> r r re,\! r |
    R1. R1 R1. R1 R1. R1 R1. R1
    \arco \ten la''1.\mp ~ la2. r4 | R1.*5 R1 R1.
    \ten do,,1\pp ~ do1. do4-.->\ffsubito r r2 R1.*5 R1 R1. R1
  }
}

EntracteAltoUn = { \AltoUn
  \relative {
    R2*9
    <re, re'>4\sfz r r2 R1*6 re16->\mf re re re re4 r8 re16-> re re re re8-. |
    re16-> re re re re4-- r2 |
    re16\mp\< re re re mib mib mib mib fa fa fa fa sib sib sib sib |
    re4:16\fp re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re'2:16 re,2:16 re': re: |
    re4 r r2 | R1*2
    \ten re,1~\mp re2. r4 | R1*2
    \ten re1~\p re2. r4 | do'4--(\upbow reb--\< re-- mib--) |
    mi->\f r r <mib, la>-.->\mp | r <re dod'>-.-> r <re do'>-.-> |
    re'4:16\fp re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re'4--->\mf re,-- re-- re-- re re re |
    re2:8 re: |

    %%% Fugato %%%
    red1~\ff red~\> red2.~\p red~ red2~ |
    red1~ red2 r4 | sol2.\mf(\glissando fad'1~\>)
    fad~\! fad2.\>(\glissando re!2.~\p) re1~ re~ re2.~ re~
    re1~ re~ <sol, re'>2.~ <sol re'>~ <sol re'>2 <re' la'>~--\mp |
    <re la'>8 <sol, re'>4. <re' la'> <sol, re'>8~ |
    <sol re' la'>4\mf <do, sol' re'> <sol' re' la'> |
    <do, sol' re'> <sol' re' la'> <do, sol' re'> |
    <re' la'>4:8 <sol, re'>: <re' la'>: <sol, re'>: |

    %%% Stretto %%%
    re'2:16\f re: | re: re: |
    re4-- <dod re>2\sffz r4 \clef treble |
    r8 \pizz si''\mp re,4-- sold,-- r \clef alto |
    sol-- mi-- r sol-- |
    \arco sold2:8\fp sold8 lad-> lad4:8 |
    sold:-> sold8 lad-> lad2:8 |
    sol!2:8->\mp sol: | dod,: dod:\< |
    <sib re>4-.->\! r r2 | r4 \pizz re,\mp r re r re r2 | R1

    %%% Noir %%%
    R2.-\fermataMarkup red'4 r2 | R2. red4 r2 R2. R2 |
    red4 r2 r4 red r2 | r4 red, r | R2 sol4\mp r r2 |
    R1*4 R1.*4 R1 R2.-\fermataMarkup

    R2. r4 \arco la2~\p la2.~ la~ la~ la~ la~ la2 r4 | R2.-\fermataMarkup

    %%% Poco più %%%
    la2.~\pp la~ la~ la2 r4 | R2.-\fermataMarkup |

    %%% Andantino %%%
    R1 R2 R1 R2 R1 R2 R1 R2. \clef treble

    %%% Largo non troppo %%%
    \ind #"à la corde" la''4\mp( sol) fa( mi) fa8\<( mi) fa( sol) |
    la4\!( sol) fa( mi) fa8\<( mi) fa( sol) |
    \simile la4\! sol fa mi fa8 mi fa sol |
    la4 sol fa mi fa8 mi fa sol |
    \ten <la, la'>1.~ <la la'> <sol mi'>
    \pl fa1. {mi'2( re1)} | <la la'>1.\mf
    \pl {la4( sol) fa( mi)} {si'2---> do--->} \det {<fa, re'>-> |
    <sol do>1 <sol do>2 \clef alto |
    <la, la'>2->\mp dod, <sol' mi'>-> |
    <fa re'>-> re <la' fa'>-> | <si fa'>-> sol <si sol'>-> |
    <do sol'>-> <do, sol'>-> do'} |
    \cresc <re, re'>---> <re re'>---> <re re'>---> |
    <red red'>---> <red red'>---> <red red'>---> |
    <mi mi'>--->\f r1 | <mi mi'>2---> r | R1 R2. R2
  }
}

ActeDeuxSceneUnAltoUn = { \AltoUn
  \relative {\clef treble
    \ttt {
      <la' re\harmonic la''>16[\ppleggiero <la re\harmonic la''>
      <la re\harmonic la''> <la re\harmonic la''>
      <la re\harmonic la''> <la re\harmonic la''>]
    } \ttt { \simile la''16 la la la la la }
    \repeat unfold 20 { \ttt { la[ la la la la la] } }
    \ttt { \ind #"senza cresc." la[ la la la la la] }
    \repeat unfold 47 { \ttt { la[ la la la la la] } } la4-- r
    \ttt { si,8\pp[ si16 si si si] } |
    \ttt { \cresc mi,[ mi mi mi mi mi] }
    \repeat unfold 5 { \ttt { mi[ mi mi mi mi mi] } }
    \ttt { mi\f[ mi mi mi mi mi] }
    \ttt { mi[ mi mi mi mi mi] }|

    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {<dod la'>8\f <dod la'>16 <dod la'> <dod la'> <dod la'>} <dod la'>8 r r4 |
    r4 r8 \t {<mib, re'>8\f <mib re'>16}
    \ttt {<mib re'>8 <mib re'>16 <mib re'> <mib re'> <mib re'>} \clef alto |
    R1 R2. R2 R2. R1

    %%% Andantino %%%
    R1*2 R2.*4 R2
    r4 \pizz si\mp mi, r si' lad8-- fad mi4 fad8-- mi si' lad |
    r fad lad4 r | r8 si lad4 si8 lad fad4 r8 si r fad lad4 |
    \arco si2--\p r4 | R2
    \pizz fad4 r2 | R1 R2. R1 R2. R1
    r4 do'\mp mi, R1 r4 \arco lab--\p r lab-- r lab-- r | R2.
    r4 la? r la r la r |
    <la re>1~\pp <la re>2. <la re>2( <mi la>)
    <la re>2.~<la re>2 <mi la> <la re>2.~ <la re>2. r4 |
    \ten <la re>2.~ <la re>1~ <la re>2 r4 | R1

    %%% Entrée de la Contralto %%%
    \pizz fad4\mp r2 | R1
    fa4 r2 R1 fad4 r fad r fa r mib |
    r \arco <re'sol>--\p r \det {<re sol> r <re sol>} r | \simile re r re |
    r mi r mi r mi r | <si mi> <si mi> r <si mi> r mi r r mi r mi\mp |
    r8 \pizz la,4\mp do re,8 | r4 lab' do re, | r8 la'4 do re,8 | r4 lab' do re, |
    r8 la'4 do re,8 | r lab'4 do re,8 | r sol r2 |
    r8 la4\mp do re,8 | r lab'4 do re,8 | r la'4 do re,8 | r lab'4 do8 reb,4 |
    r4 la' r8 do | r4 \arco re--\mf r re-- r re---. | mib,2-- r4 si'-- | r re-- r |
    r dod--\pp r dod-- r do-- r | R1
    r8 \pizz la4\mp do re,8 | r lab'4 lab8 do4 re, | r8 la'4 do re,8 |
    r4 \arco \ten sol2.~\p sol2. r4 lab\mp\>( sol) fa |
    \ind #"trem. sul tasto" re2.:32~\pp re1:32~ re2.~ re4 r | R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisAltoUn = { \AltoUn
  \relative {
    \pizz mi,4\mf r r2 | R2. R2

    %%% Presto Agitato %%%
    R1*5/4*2
    \arco \ind #"sul tasto" <mi'sold>1*5/4~\pp <mi sold>~ <mi sold>2. r2 |
    <la, red>1*5/4~ <la red>~ <la red>2. r2 |
    R1*5/4*7
    \repeat tremolo 8 { \simile mi'16*5/4\p re}
    \repeat tremolo 8 { mi re}
    \repeat tremolo 8 { mi re}
    mi4 r re8\mp( mi re sib) la( sib) |
    re4-- r2 re8( sib la sib) |
    re4-- r2 \ordin re8-.\mf \st {re re re} |
    \accdet {<la fad'>4\sfz r2 <la fad'>4\sfz r |
    <la fad'>\sfz r <la fad'>\sfz r2 |
    <la fad'>4\sfz r r8 <la fad'>\sfz r2 |
    <re do'>4\sfz} r1 | R1*5/4*8
    \ind #"détaché" fa,?8 re? fa re fa re fa-> solb fa re |
    fa re fa re fa re fa-> solb fa re |
    \simile fa re fa re fa re fa solb fa re |
    fa re fa re fa re fa solb fa re |
    fa\< re fa re fa re fa solb fa re |
    \accdet {<fad do'>4\sfz r2 <fad do'>4\sfz r |
    <fad do'>\sfz r <fad do'>\sfz r2 |
    <fad do'>4\sfz r r8 <fad do'>\sfz r2 |
    <sib la'>4\sfz} r1 | R1*5/4
    <fad dod'>4->\sffz r1 | R1*5/4-\fermataMarkup

    %%% Boum %%%
    R1*5/4*11 \repeat tremolo 16 {red'32*5/4 mi}
    \repeat tremolo 16 {red32\< mi} red4-- |
    \ind #"à la corde" <si! sol' sib>2.--->\f \accdet {<re mi sib'>2 <si! sol' sib> <re mi sib'>2. |
    r4 <si! sol' sib>2. <re mi sib'>4~\<} <re mi sib'>2 \accdet {<si sol' sib>2. |
    \ten <mib, lab mi'!>1*5/4\!} \accdet {<lab re>2 <mib lab mi'!>2.} |
    <re' sol>2.\> re2\! | \ten <reb, sib'>1*5/4~--->\f <reb sib'>2. <reb sib'>2---> |
    \ten <mib si' lab'>1*5/4~ <mib si' lab'> |
    r4 \accdet {<si' lab'>2\< <si lab'>} |
    <sib sol'>1*5/4~\ff <sib sol'>2. r2 | R1*5/4*5

    %%% Moderato assai %%%
    R1*7/4*7 R2. R1 R2. R2
    r4 do'2--\p \pizz red,,4 \arco si''2~--\upbow si4 \det {do2 si4. do~} |
    do2 r4 | \pizz fad,, \arco do''2~-- do4 si2~-- si r4 | do,,\leftpizz r2 |
    \ten fa1*7/4~\p fa4 r2 r1 | R1*7/4
    r8 \pizz fa\p\< fad dod' re4\! |
    r8 dod,\< re la' sib4\! | r8 \simile fa fad dod' re4 |
    r8 fad, la re fa4 | r8 fa, fad dod' re4 |
    r8 mib, lab si mi4 | r8 fa, solb sib reb4 |
    \arco \acciaccatura solb,4 fa1*7/4~\mf fa1 r2 r4 |
    R1*7/4*2 \repeat volta 2 {\det {fa1\mf sold2. fa sold1 R1*7/4}
    \meno sold1} r2 r4 | R1*7/4 |

    %%% Presto subito %%%
    \tt {\ind #"détaché" red8\mf\upbow fad red red red} \tt {red fad red red red} \tt {red fad red red red} |
    \tt {red fad red red red} \tt {red fad red red red} \tt {red fad red red fad} |
    \tt {red fad red red fad} \tt {red fad red red fad} \tt {red fad red red fad} |
    \tt {red fad red red fad} \tt {fad red red fad red} \tt {fad red red fad red} |
    \tt {fad red red fad red} \tt {fad red red fad red} \tt {fad red red fad red} |
    \st {re\fp mib mi fa lab si re4} r2 |
    re,8-- \st {mib fa lab si do re4} r2 |
    re,8-- \st {mib fa lab si do mi4} r2 |
    re,8-- \st {mib fa lab sib si} | dod4-- \pizz re8\mp sol, re'4 r |
    mi8 sold, mi'4 <sold, mi'>\arpeggUp |
    mi'8 la, mi'4 <la, mi' la>\arpeggUp |
    fa'8 do fa4 si,8 red, si'4 sold8 red sold4 |
    r8 red\< sold dod fad si mi\! |
    r4 r8 \arco red,--\< \det {mi mi fa fa} |
    \accdet {<fad,do' sol' mib'>4\ff <fad do' sol'>8.} <fad do'>16-.
    <fad do' sol'>8.---> \st {<fad do'>16 <fad do'>8} |
    \accdet {<dod la' mi'>2 r4 |
    <fad do' sol' mib'> <fad do' sol'>8.} <fad do'>16-.
    <fad do' sol'>8.---> \st {<fad do'>16 <fad do'>8} |
    <do la' mib' sib'>2---> r4 |
    <fad dod'>8-.-> <fad dod'>8.---> \st {<fad dod'>16 <fad dod'>8 <fad dod'>} |
    \accdet {<sol sol'>4 <sol fad'>8.} <sol fad'>16-. \accdet {<sol fad'>8.\< <sol mi' si'>} |
    <la mi' la>4\sffz r2 | re4\mf( mi si sold) r \stdet {<re do'>\downbow | <fa mib'> <fad mi'> <sol fa'>} |
    r8 \det {lab\mp\downbow( lab lab lab lab) | sol\<( sol do do si si\!) |
    r sol( sol sol sol sol) lab\<( lab si si do do\!)} |
    r sol sol sol sol sol \det {lab\<( lab si si do do\!) |
    r re\upbow( re re) mib( mib) r fad( fad fad) sol( sol)} |
    sib4 \det {sol8 fad mib re | <sib sol'>2.\mp} R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    fad'16->\mf( sol fad mib) re( mib fad mib) re( si) sib( si) re( mib) re( si) |
    \accdet {<mib, sib'>4\sfz r2 <mib sib'>4\sfz r | <mib sib'>\sfz r <mib sib'>\sfz r2 |
    <mib sib'>4\sfz r r8 <mib sib'>\sfz} r2 | <do si'>4->\sffz r1\fermata |
    R1*5/4*3
    \ten mib''1*5/4~\pp mib2. r2 | R1*5/4*2
    \ten mi1*5/4~ mi2. r2 | R1*5/4*3
    sol,8\p( mi sol mi sol mi sol mi sol mi) |
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

ActeDeuxSceneDeuxAltoUn = { \AltoUn
  \relative {
    \pizz sold'4\mp sold la r r2 | sold4 sold la r r2 | R1.
    sold4 sold la r sold sold | la4 r r1 | R1. R1*2 R2.
    \arco re,,8->\f r r16 re8-- fa16 r fad8.-- | re8---> re16 re re re re re re8 r |
    <la're sold>--\fmolto <la re sold>-- <sib re la'>4---> \t {re,8--\upbow\mf mib-- fa--} |
    <la re sold>--\f <la re sold>-- <sib re la'>4---> \t {re,8--\upbow\mf fad-- la--} |
    \ten fad1.~-- fad1 r2 |
    R1. R1*2 R2.
    <sol dod>16->\f <sol dod> <sol dod>8 <sol dod>-- re--
    r \acc {<sol dod> r re16 red | r mi\upbow dod re do mib} |
    r8 \det {sold'\mf sold la} r4 \st {fad,16\p fad fad fad} |
    r8 \det {sold'\mf sold la} r4 \st {dod,,16\p dod re8} \clef treble |
    r8 \det {sold'\mf sold red'} r4 \clef alto mid,,16 mid fad8 \clef treble |
    r8 \det {si' si red} r4 si,16\mp si <dod lad' red>8-- |
    \cresc <red' lad'> \clef alto <fad,,dod'>16 <fad dod'>
    <fad dod'>8 \clef treble <red''lad'>-- \clef alto
    <fad,,dod'> <dod'sold'>16 <dod sold'> <dod sold'>8-- <fad,dod'>-- |
    \st {sold'16\f sold sold sold sold sold sold sold
    sold sold sold sold sold sold sold sold} |

    R2. R1. R1*2
    r16 do,,\p( fa la do4) r | r16 do,( sol' sib do4) r |
    r16 do,( fa la do4) r | r16 do,( fa sold si4) |
    r16 re,( sold si re4) r16 do,\upbow( la' do) |
    r16 do,( mi la do4) r | r16 sol( sib re do4) r |
    \pizz do,\mp do' R4.
    r8 \arco <la sold'>--\f \det {<la sold'> <re la'>} r4 \st {sold,16\mf sold la8} |
    r \det {<la sold'>\f <la sold'> <re la'>} r4 \st {re,16\mf re mi8} \clef treble |
    r \det {<mib' lab>\f <mib lab> <do sib'>} r4 \st {sol16\mf sol la8} |
    r <mi'red'>--\f <mi red'> <fa mi'> r4 \st {si,16 si do8} |
    r \det {<mi mi'> <mi mi'> <fa fa'>} r4 \pizz <si, fa'> \clef alto |
    \arco dod16-.\pleggiero \st {dod dod8 dod16 dod dod8 |
    dod16 dod dod8 dod16 dod dod8 |
    si16 si dod8 si16 si dod8 | dod4 r |
    mi,16 mi mi mi mi mi mi mi |
    mi mi mi mi mi mi mi mi} | \ten <si' mi>1~\mf <si mi>2 r4 |

    R1. R1 R1.
    \t {re8\pp( sib re} \t {sib re sib} \t {re sib re} \t {sib re sib}
    \t {re sib re} \t {sib re sib} | dod2) r4 R1 |
    \pizz <la'la>4\mp r2 | R1 R2. R1 R2. R1
    \arco mib4\pp( reb dob | sib4) r r2 | R2. R1
    sib4\p( do! re! mib4) r mi\>( fad | sold\!) r2 | R1
    \pl {la,4\leftpizz s2 s1 s2. s1 s2. s1 s2. }
    {la'2.:32~\pp \oneVoice la1:~la2.:~la1:~la2.:~la1:~la2.:\<} |
    <la,la'>4--\! r R2 \clef treble \ind #"détaché" fad'16\f mi fa sol la8 sold |
    do16 lad si dod red8 re fad16\< mi fa sol | la4--->\! r r2 \clef alto |
    fa,,16\mf\< re mib fa lab fad sol la do4\! r | la1:16

    <la sold'>4---> fa'8\upbow\< la sold | \acc {la\! la sold r4 |
    <la, sold'>--} re8\< mib sold | \acc {la\! la sold r4 |
    <la,sold'>--} mib8\< mib re | \dwnb {<mib re'>4\! <mib re'> r8 |
    <re la' mib'>4} r r8 |
    <la'sold'la>4---> r \st {mib'8 | mib re} r4 r8 |
    \dwnb {<mib,re'>4 <mib re'> r8 | <re la' mib'>4} r r8 |
    \acc {la'8 la sold r4 | r8 mi'4-- mi-- | sib-- r r8 |

    R1*2 <do, la'>4\sffz} r r2 |
    r4 \pizz sold'\mp fad r | r fa mib r | R1
    \repeat tremolo 16 { \arco fa32\p mi}
    \repeat tremolo 8 { fa mi}
    \repeat tremolo 8 { fad re}
    \repeat tremolo 16 { fad\< re}
    <dod' red>4\sfz r2 | r8 \pizz fa,\mp r4 |
    R1*2 R2.*4 r4 fa' r r fa r R2. |

    r16 \arco mi\pleggiero do mi r red si red |
    r re sib re r dod la dod |
    r do lab do r si sol si r sib solb sib |
    r do la do r si sold si r sib sol sib |
    r la fad la r lab fa lab |
    r sol mi sol r fad red fad |
    \st {dod8\p r sol' r do, r fad r | fa r mi} r |
    \pizz <re sib'>4\mp <re sib'>8 \arco sold'16-.\mf sold-. |
    <sib, re la'>8-- r \pizz <re,sib'>4\mp |
    <re sib'>8 \arco sold'16-.\mf sold-. <sib, re la'>8-- r |
    \pizz <re, sib'>8 \arco sold'16-.\mf \st {sold la8 fad16 fad} |
    sol8--\pleggiero \st {mi,16 mi r8 red16 red |
    r8 re16 re r8 dod16 dod |
    r do lab' do r si sol si |
    r sib solb sib r la fa la | R2
    r8 dod16\pp dod do8} r | R2
    \pizz <re, sib'>4\mp <re sib'>8 \arco sold'16-.\mf sold-. |
    la8-- r16 re,,( mi8) r16 mi( | re8) si'!16-. si-. lad8-- r |
    R2*2 \pizz re,4\mp r fa r mib r R2 |

    \arco \ind #"flautando sul tasto"
    la2.:32~\pp la:~ la:~ la:~ la:~ la:~ la2 r4 |
    R2.*2 \st {sol'16\p sol} lab8-- \st {sol16 sol} lab8-- r4 |
    R2.*4 \st {sold16\pp sold la8 sold16 sold la8 r4 |
    r sold16 sold la dod,} r4 |
  }
}

ActeDeuxSceneTroisAltoUn = { \AltoUn
  \relative {
    %%% Larghetto %%%
    sold'16\pp sold la( dod,) sold' sold |
    la( dod,) sold' sold la( dod,) |
    \simile sold' sold la dod, sold' sold |
    la dod, sold' sold la dod, |
    sold' sold la dod, sold' sold |
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
    sold16 sold la do, sold' sold |
    la do, sold' sold la do, |
    sold'8 r4 | R4.
    sold16 sold la do, sold' sold |
    la do, sold' sold la do, |
    sold'8 r4 | R4.
    sold16 sold la do, sold' sold |
    la do, sold' sold la do, |
    \st {sold'->\mf sold la8 r |
    r sold sold la-> r4 |
    la16 la sib8 sold16 sold |
    la8->} r4 |
    \ten <re,, sol>4.~--\p <re sol>4 r8 |
    \st {sold'16->\mf sold la8 r |
    r sold sold la->} r4 |
    \ten <sib, re>4.~\p <sib re>4 r8 |
    \st {sold'16\mf sold la8 r |
    r sold sold la8-> r4 |
    sold16-> sold la8} r |
    \ten <lad, sold'>4.~\p <lad sold'>4 r8 |
    r4 \st {sold'16\mf sold la8-> r4 |
    sold16-> sold la8} r |
    \pizz <re,, sib'>4\p\arpeggUp <re sib'>\arpeggUp <re sib'>8\arpeggUp
    \arco sold'16\mf sold <re la'>8---> sol16 sol <sib, lab'>8---> r |
    \pizz <re, sib'>4\p\arpeggUp <re sib'>\arpeggUp <mi do'>8
    \arco sold'16\mf sold la8---> fad16 fad sib8---> r |
    r \st {sold16\mf sold la8->} r |
    \pizz <mi, do' sold'>\p\arpeggUp sold' <mi, do' la'>4\arpeggUp |
    \st {sold'16\mf sold la8->} |
    r \pizz <mid, dod'>\p\arpeggUp \arco sold'->\mf sold-> la-> r |
    \pizz <mid, dod'>\p\arpeggUp <mid dod'>\arpeggUp r \arco sold'16-.\mf \st {sold la8-> fad16 fad sol8} r |
    \pizz <fa, do'>4\p\arpeggUp <fa do'>\arpeggUp R4
    mi4 mi mi r8 |
    mib4 mib mib R4 |
    <fa do'>4\pp\arpeggUp <fa do'>\arpeggUp <fa do'>8 <fa do'> |
    \arco sold'16-.->\mf \st {sold la8 r r sold sold la-> r4 |
    r8 sold sold la-> r4 |
    sold16-> sold la8 r |
    r sold16 sold la8 |
    sib-> r4 | r8 sold16 sold la8 |
    sib-> r4 | r8 lad16 lad si8 |
    do->} r4 | r8 la-- la-- sib-- r4 |
    \ten do,4~\mp do~ do~ do8 r |
    \pizz sib16\mp mib, r mib |
    sib' mib, r mib |
    sib' mib, r mib |
    re re' r re re, re' r re |
    dod,8-> r | R4
    re16\mf re' r re dod,8-> r R4 |
    re16\mp re' r re dod,8
    \arco sold''16\mf sold la8---> r |
    \pizz <mi, do'>8 \arco sold'16 sold la8---> r |
    \ten <do,, sol' re'>4~ <sol' re'>~ <sol re'>8 r |
    r \pizz <sol la>\mp r <sol la> r <sol la> |
    r <sol re'> r <sol re'> r <sol re'> |
    R2.-\fermataMarkup R2.*2
    r8 la16\p la sib8---. sol16 sol sold8---. r | R2.
    r8 la16 la sib8---. sol16 sol sold8---. r | R2.

    %%% Interlude %%%
    sold'16\p sold la( la,) sold' sold la( la,) |
    sold' sold la( la,) sold' sold la( la,) |
    fa2~\p fa~ fa4 r16 \st {do'\ppleggiero si do |
    r do si do r si do8 |
    si16 do r si do8 si16 do} |
    r \simile do si do do do si do |
    do do si do do do si do |
    r re-.\< mib8-- fa16-. fad8-- sold16-. la8-- si16-. do-. \clef treble |
    red\mp red mi( mi,) red' red mi( mi,) |
    fad' fad sol( sol,) fad' fad sol( sol,) |
    \simile red' red mi mi, fad' fad sol sol, |
    fad' fad sol sol, red' red mi mi, |
    red' red mi mi, do' do dod dod, |
    red' red mi mi, red' red mi mi, |
    fad' fad sol sol, fad fad' fad sol sol, fad |
    lad\mp lad si si, lad' lad si si, |
    dod' dod re re, dod' dod re re, |
    lad' lad si si, lad' lad si si, |
    dod' dod re re, dod' dod re re, |
    lad' lad si si, lad' lad si si, |
    dod' dod re re, dod' dod re re, |
    lad' lad si si, dod' dod re re, |
    mi' mi fa fa, mi' mi fa fa, |
    dod' dod re re, dod' dod re re, |
    mi' mi fa fa, mi' mi fa fa, |
    dod'\< dod re re, mi' mi fa fa, |
    sol'\mf sol lab lab, sol' sol lab lab, |
    mi' mi fa fa, lad lad si si, |
    dod'\< dod re re, mi' mi fa fa, |
    sol'\! sol lab lab, sol' sol lab lab, |
    mi' mi fa fa, mi' mi fa fa, |
    sol'\< sol lab lab, sol' sol lab lab, la'->\! la-> |

    %%% Quatuor %%%
    la8-> \clef alto \pizz la,,\mp sold sib |
    fad4-- r8 | r la sold si | fa4-- r8 |
    r fad sol sol\leftpizz |
    \arco \ind #"jeté" <lab sol'>32\mf <lab sol'>16. r16 <lab sol'>32 <lab sol'> r8 |
    <lab sol'>32 <lab sol'>16. <lab sol'>32 <lab sol'>16. r8 |
    mib'2--\f r4\fermata |
    r8 \st {la,16\p la sold8} r r4 | R2.*2
    r2 r8 \pizz sold' r \arco fad16 fad sol8 \pizz mi r \arco red |
    r re--\> do--( do-- sib-- sib--) | \ten lab2~\pp lab~ lab4 r2 |

    %%% Air baryton 1 %%%
    \flaut <lab la'!>2~\pp <lab la'>4 r <fa mi'>2 r4 |
    <lab la'!>2~ <lab la'>4 r <fa mi'>2 r4 |
    \t {mi'8 re mi} \t {re mi re} |
    \t {mi( re mi} \t {re mi re} | mi2) r4 |
    re16( mi re sib lab sib) re( mi | re sib lab sib) re( mi re sib) |
    lab( sib re mi) sib( re mi lab) re,\<( mi) lab-- lab-- |
    la4--\! r16 dod,,8--\mp sol'16-.  | dod,4-- r8 |
    r sol'-- r16 dod,-. r8 | mi4-- r8 |
    do!\mp re( la' sol) | do4 r |
    re,8 la'( sol) do r4 \clef treble |
    sold''16->\mf sold-> la8-> r4 \clef alto |
    r8 sol,,-- r16 dod,8.-- | sol'2---> r4 \clef treble |
    \st {sold''16\f sold la la sold sold la la sold sold la la sold sold la la |
    sib, sib sib sib sol sol sol sol re re re re \clef alto |
    fa, fa mi mi mi mi fa fa} |

    %%% Doppio tempo %%%
    re2:16 re: re: re: re: re: re4 r |
    sold2.~ sold~sold2 r4 |
    re4 la' sold8 mi | re4 mi8 re la' sold~ |
    sold2.~ sold2 r4 |
    r8 re' mi r r mi r2 |
    r4 <si mi>~ <si mi> r \clef treble sold'8 sold la4 r |
    r2 sol8 sol sold4 r r2 sold8 sold la4 r |
    r sol2:16 fad: sold4: si2: | sib: reb: sib4: |

    %%% Climax %%%
    sold4 r R4. |
    re''16 dod si sold mi8 si \clef alto |
    fa do sib16 la sol mi | re8 r r4 | R4. \clef treble |
    re'''8 si sold16 fad re si |
    la8 re, \clef alto sib16 sol fa mi |
    re8 r r4 | R2 \clef treble
    si'''4 r8 mib,16 mib mib sib sib sib |
    re,2 r4 |
    re''4 re,16 la sold fad re4 \clef alto sold,16 fad mi mib |

    %%% Soprano 2 %%%
    re8 r r2 | R1
    r8 sib' r4 sib8 sib | si si r si si r la la |
    sib4 r8 sib r sib r sib r sib sib r sib sib |
    mi, mi r mi r mi | r mi r mi mi r mi mi |
    mid mid r mid r mid r mid r mid r mid r mid |
    R2. R1 R2. R1 R2. R1
    <sold re'>4 <sold re'>8 <sold re'> r4 |
    sold'8 sold la4 r2 | r4 sol sol | sold4 r r2 |
    \pizz sold,8 fad la fa' r4 r2 r4 \arco fad |
    sol r2 \clef treble |
    re4 la' sold8 mi re4 mi8 re la' sold r mi |
    sold4 r r2 | <mi' re'>4 sold8 mi re4 |
    <sold mi'> r r2 \clef alto |
    r4 r8 sol,, r sol |
    R1 R2.

    %%% Soprano 1 %%%
    re'8 re r re r re r re re re r re r re |
    re re r re r re r re mi mi r mi r mi |
    mi mi r mi r mi r mi mid mid r mid r mid |
    r mid r mid r mid r mid |
    R2. R1 R2. R1 R2. R1 R2.
    sold8 sold la4 r2 | r4 fad fad sol r r2 |
    R2. R1 R2. R1
    r2 sol8 sol sold sold, sol' sol sol sold, si' si \clef treble |
    do do, sold' sold la la, sid' sid dod dod, sid' sid dod dod, |
    sold' la mi mi' fa fa, |

    %%% Duo %%%
    sold'4 r r2 \clef alto |
    sold,8 la sold mi re mi sold la |
    sold mib re mib la2~ la2. r4 |
    fad8 sold fad re dod re fad sold |
    si sold fad re~ re2~ re4 r |
    sold, sold la2 |

    %%% Baryton 2 %%%
    re8 \t {si16 do dod} re8 \t {sold,16 si dod} re8 fad,32 sold si dod |
    re4 re re |
    mib8 \t {do16 dod re} mib8 \t {la,16 do re} \ttt {mib sol, la do re mib} |
    fa4 fa r \clef treble |
    <re' re'> <re re'> <re re'> <re re'> r2 |
    <re re'>4 <re re'> <re re'> <re re'> r2 \clef alto |
    \tt {re,16 la sib do dod} re4 \ttt {re16 fa, fad la sib re} |
    mib4 \tt {mib16 mi, sol si do} mib4 |
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
    r8 sol sol sol sol sol | lab lab si si do do |
    r do do do do do | dod dod mi mi fa fa |
    r re re re re re dod dod fad fad fa fa |
    r fa fa fa fa fa | mi mi lab lab la la \clef treble |
    r sol si sol si sol | si sold mib' do mi do \clef alto |
    r8 sol, fad sib si sib | re si do re mib4 |

    %%% Contralto %%%
    re4 \pizz fad, fad fad |
    fad r re' r8 <fad, re'>\arpeggUp |
    r <fad re'>\arpeggUp r <fad re'>\arpeggUp |
    r \simile <fad re'> r <fad re'> |
    r <fad re'> r <fad re'> |
    r <fad re'> r <fad re'> |
    r <mib lab> r <mib lab> |
    r <mib lab> r <mib lab> |
    r4 \arco lab8 lab la4 r | R2.
    r4 sol8 sol lab4 r |
    r sold8 sold la4 r | R2*2
    sold'8 sold la4 r |
    r sol8 sol sold4 |
    sold8 sold la4 r |
    r fad8 fad sol4 |

    %%% Grand ensemble %%%
    dod,,1~ dod sol'1~ sol2 dod,~ |
    dod sol'~ sol sold4 r \clef treble |
    red''8 red mi mi, red' red mi mi, |
    sol' sol lab lab, sol' sol lab lab, |
    red red mi mi, red' red mi mi, |
    fad' fad sol sol, fad' fad sol sol, |
    mid' mid fad fad, red' red mi mi, |
    re' re red red, do' do dod dod, |
    la' la sold sold la la sold sold |
    dod dod sid sid dod dod do do |
    la la sold sold la la sold sold |
    dod dod sid sid dod dod do do |
    fa fa mi mi fa fa mi mi |
    mid mid fad fad, mid' mid fad fad, |
    sold' sold la la, sold' sold la la, |
    mid' mid fad fad, mid' mid fad fad, |
    sold' sold la la, sold' sold la la, |
    sold' sold la la, sold' sold la la, |
    sold' sold la la, sold' sold la la, |
    re' re mib mib, re' re <mib, re'> <mib re'> |
    <mib re'> r r2 |

    %%% Chute %%%
    <solb, sib>2.\glissando la'2.:32~ la2: sold4:
    mi: re: la: \clef alto sold: re2: re4 r R2*2

    %%% Andante al fine %%%
    R2.*4
    \ind #"sul tasto, con sord."
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    sold2.~ sold~ sold sol2.~ sol~ sol2 r4 | R2.*2
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2:16 mi4:16 |
    mi2 r4 | r4 mi,2~ mi2 r4 |
    mi'2.:32 mi2.:32 mi2. \clef treble |
    r8 do' \tt {red16 sold fad si la} red4
    \ind #"ample" <mi,, mi'>8 <mi mi'> \t {<mi mi'> <mi mi'> <mi mi'>}
    \tt {<mi mi'>16 <mi mi'> <mi mi'> <mi mi'> <mi mi'>}
  }
}
