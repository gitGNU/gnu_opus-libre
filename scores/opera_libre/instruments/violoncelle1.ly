%------------------------------------------------------------------%
% Opéra Libre -- violoncelle1.ly                                   %
%                                                                  %
% (c) Valentin Villenave, 2008, 2009                               %
%------------------------------------------------------------------%

\include "italiano.ly"

VioloncelleUn = {
  #(make-instrument-name 'cello-one "cello" 25)
  \clef bass
}

PrologueVioloncelleUn = { \VioloncelleUn
  \relative {

    %%% Introduction %%%
    \partial 4 r4 R2.*2 \clef treble si''?2.\p\<\upbow ~ si1\glissando
    mi,,2\f\downbow \clef bass |r8 mi,,-- \t {mi--( mi-- mi--)} mi2. |
    r4 red''4:32~\mf red8 r
    \t {mi,,8--( mi-- mi--)} mi'2.~\mp mi2~mi~mi2.~mi2~mi~ <mi la>2.~<mi la>4
    <mi la>~<mi la>8 la \t {la\<( si re}|
    la'2--->\f) r4 dod,,,16--\mp dod dod re re re mi mi |
    sol sol sol\< sib sib sib do do |
    dod2--->\f r8 sol-. r dod-. r sol-. | dod4---> dod---> sol8-. dod~--->|
    dod4 r | sol-- dod-- sib8-. dod~--| dod sol-. dod4-- |
    dod-- sol8-. dod-. r sib |
    r dod4\>( sol8) | sib2~--\p sib r4 |

    %%% Tempo giusto %%%
    re8\sfz re,--\p re-- re'-- | re-- re,-- re-- re'-- |
    re-- re,-- re-- re'-- | re,-- re mib re | fa re lab' fa |
    sib lab si dod | dod, r r4 | R2
    re4--\f re'8-. re-. re-. re-. | lab2-- r4 |
    re,4-- r8 re'-. re-. re-. | fad,2.\mp mib do |
    sib'2\< sol4~ sol mi2 | \ten re2.~\f re4 r8 sol'--\ff mi-- re-- |
    \ten dod1~---> dod4 r R2 R2-\fermataMarkup |

    %%% Solo ténor %%%
    R1*2 R2. R1 R2. r2 sol'2~\p\CaV
    sol~\CaV sol~\CaV sol~\CaV sol~\CaV
    sol2.~\CaV sol~\CaV sol2~\CaV r4 R2.*2
    r2 \repeat tremolo 4 {sol,32\p( lab} sol'2.) R2.
    sol'4-.\p sol,,\leftpizz r |
    sol''-. sol,,\leftpizz r | R2. R4.

    %%% Andantino %%%
    \pizz sol8\p r4 | sol8 r4 | R4.*2
    sol8 r4 | sol8 r4 |
    sol8 r4 | sol8 r4 |
    sol'8 r4 \clef treble |
    %%FIXME: grace synchronization bug
    \acciaccatura s16 mi''8 r4 \clef bass |
    r8 sol,, sol, | R4.*14
    \arco solb8\>( mib reb) \ten do4.~\pp do~ do4 r8 |
    solb'8( mib reb) | do4.~ do~ do4 r8 |
    solb'8( mib reb) | do4.~ do4 r8 |
    fad4\< mib8~ mib dod4 |

    %%% A tempo %%%
    re8\sfz r4 | sold8--\mf( si-- dod--) |
    re8\sfz r4 | sold,8( si dod) re( fa sol) |
    lab4-- r8 | lab,4--->\f fa8~---> fa mib4---> |
    \ten re4.~---> re~ re4 r8 |
    mib4( re8) \ten fa4.~ fa~ fa4 r8 |
    fa'4.\mf re\< do si4.~\fmolto si4 r8 |
    \ten sib4.~ sib~ sib~ sib4 r8 | R4.*2
    fa16:32\p\< solb: lab: si: dod: re: |
    mi:\mf\> re: dod: si: lab: solb: |
    lab:\p\< sib: si: dod: mi: fad: |
    sol:\mf\> fad: mi: dod: si: lad: |
    si:\mp\< dod: mi : fad: sol: la: |
    do:\f\> la: sol: fad: mi: dod:  |
    \t {la16\pp la la} \t {si si si} \t {re re re}
    \t {mi mi mi} \t {re re re} \t {mi mi mi} |
    \t {fa\< fa fa} \t {sol sol sol}
    \t {sib sib sib} \t {do do do} \t {reb reb reb} |
    re8--\f r r4 re,-- | fa8.--( lab--) fa8\>( mib re) | do2\mf r4 |

    %%% Adagio %%%
    R1*2 r2 r8 mi,-- \t {mi--( mi-- mi--)} |
    \repeat tremolo 16 {\ind #"sul G" mi'32\mp( fa}
    \repeat tremolo 16 {mi32*3/2 fa} |
    mi4) r r1 | R1 r2 r4 \pizz la, |
    %% FIXME: Issue #704 (ugly, ugly, ugly!)
    \stemUp \repeat tremolo 16 {\arco \ind #"sul G" mi'32\mp( fad}
    \repeat tremolo 16 {mi32*3/2 fad} \stemNeutral |
    mi4) r r1 | R1 r2 r4 \pizz <sold, sold'>\plak |
    \repeat tremolo 12 {\arco \ind #"sul D" mi'32\mp\> sol}

    %%% Valse %%%
    sol,2.~\pp sol4 r dod~-- | dod2 r4 |
    sol2-- r4 | dod2-- r4 | sol2-- r4 |
    sib4-- r mi,-- r | \ttt {re'16\pp( mib re mib re mib}
    \ttt {re mib re mib re mib} \ttt {re mib re mib re mib)}
    re4 r \clef treble |
    \pizz dod''4\mf r si r sib sib |
    mi \ttt { \arco mi,16\>( red mi red mi red} mi4)\! r \clef bass |
    r4 do,2--\pp r4 | fad,2-- r4 | do'2-- r4 | fad,2-- r4 |
    do'2-- r4 | fad,2-- r4 | mi-- r sol-- r |
    <do, si'>2--\mf <do si'>4-> <do si'>8-. <do si'>~-> |
    <do si'> <do si'>-. <do si' mi la>4->\< <do si' mi la>-> |

    %%% Vivo al fine %%%
    <re' re'>8\sfz re-. <do re>-. <do re>-. |
    <re mib>-. <re mib>-. <la re>-. <la re>-. |
    \st {<re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <re mib> <re mib> |
    <re mi> <re mi> <re sol> <re sol> |
    <re la'> <re la'> <re la'> <re la'> |
    <re sib'> re re re |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    re\> re re re re\mp re re re |
    re re re re re\> re re re |
    re\p re re re re re re re |
    mib mib re re mib mib re re |
    re re re re} re-. r re-. r |
    re4-. r | R2*7 r4 \pizz mi,\mp
  }
}

ActeUnSceneUnVioloncelleUn = { \VioloncelleUn
  \relative {
    do,,2--\pp( do'--)\CaV fad,-- r4 |
    do2--( do'--)\CaV fad,4--( fad2--) |
    do2--( do'--)\CaV fad,4.-- fad8-- do'--( sol--) |
    do,2--( do'--)\CaV fad,2 si8--( fad--) |
    <do do'>2-- do' fad,8 fad~ fad2 |
    <do do'>2-- <do do'>-- fad2~--\mp\< fad8 fad' |
    do16(\ppsubito fa, do' la'~ la mib'--) \t {la,( do, fa,)} fa2 |
    \simile do'16 fa, do' la'~ la mib' \t {la, do, fa,} \t {fa8 fa fa} |
    fa2 do'16 fa, do' la'~ la mi'! \t {la, do, fa,} |
    fa4 do'16( fa, do' la' sol') la,( do, fa,) |
    mi'(\ppsempre lab, mi' la do) la( mi lab,) lab2 |
    mi'16 lab, mi' la do8 \t {la16 mi lab,} \t {lab8-- lab-- lab--} |
    <reb, lab'>2-- \ttt {do''16( la mi) lab,( mi' la} do) la( mi lab,) |
    reb,4-- lab'16( mi' la mi) lab,4-- |
    \t {sol8\p( mi' sib')} re16( sib mi, sol,)
    do,( sol' mi' sib') \t {re8( sib mi,)} |
    \t {\simile sol, mi' sib'} re16 sib mi, sol, \t {do,8 sol' mi'} |
    \ttt {sib'16( mi, sol, do, sol' mi'}
    \ttt {sib' mi, sol, do, sol' mi'}
    \ttt {sib' mi, sol, do, sol' mi'}
    \ttt {sib' mi, sol, do, sol' mi')} |
    \ttt {sib'( mi, sol, do, sol' mi')}
    \ttt {sib'( mi, sol, do, sol' mi')}
    \ttt {sib'( mi, sol, do, sol' mi')} |
    \t {do,8--\f reb--( mib--)} \t {fad-- sold--( la--)} \t {si-- re--( mi--)} |
    <do, sol' re'>4\downbow do\downbow do\downbow |
    \t {fad8-- sold--( la--)} \t {si--( re-- mi--)} \t {fa--( sol-- sib--)} |
    fad'4-- fad,,8 fad fad fad |
    fad fad fad fad \t {fad( si dod)}
    <fad, lad mi'>4\downbow fad8 fad fad fad |
    \t {fad-- si-- dod--} mi-- fad,-- \t {fad'-- la-- sol--} |
    \ten <do,, do'>1~\fmolto <do do'>2 r4 |

    %%% Ad libitum %%%
    R1 R2. \ten do'2.~\pp do4 r r2 | mi2.~ mi4 r2 |

    %%% Agitato %%%
    \st {re,8\fp re re re mib mib re re} |
    \simile mib4:8 re: mib: re: mib: re: mib: re: |
    mib: re: mib: re: mib: re: mib: re: |
    mib: re: mib: re: |
    mib: re: mib: re: mib: re: |
    mib: re: mib: re: mib: re: mib: re: |
    mib: re: mib: re: mib: re: |
    mib: re: mib: re: mib: re: mib: re: mib: re: mib: re: |
    mib: re: mib: re: mib: re: |
    mib: re: mib: re: mib: re: mib: re: |
    mib8\mp\downbow( fab) \ind #"serioso" mib\downbow( fab)
    mib\downbow( fab) mib\downbow( fab) \simile mib fab mib fab |
    mib fab mib fab mib fab mib fab mib fab mib fab |
    mib fab mib fab mib fab mib fab mib fab mib fab |
    mib fab mib fab mib fab mib fab |
    mib\< fab mib fab mib fab mib fab mib fab mib fab |
    \ten si1.\f R1.*2

    %%% Allegro non troppo %%%
    \pizz sib'4\mf r r2 | R2. sib4 mi, r \t { \arco mi8--\mp\<\upbow( si-- dod--\!)} |
    sib8-.-> r r4 r2 | \pizz sib'4\mf mi, r \t { \arco mi8--\upbow( dod-- si--)} |
    sib8-.-> r r4 r2 R1 R2.
    \pizz sib'4 r r2 | R2. sib4 r r2 | sib4\< sib sib sib\! r r2 |
    \arco sol,2.\ff( sib4) r r2 |
    \ttt {sol16\mf\< lab sib dod red mi} \ttt {fad\> mi red dod sib lab}
    \ttt {sib\< dod red mi fad la} \ttt {si\> la fad mi red dod} |
    \ttt {red\< mi fad la si do} \ttt {re\> do si la fad mi} red8\! r r4 |
    R1 \clef treble |
    la''16\pp\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV
    la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV | R2.
    la16\pp\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV |
    la16\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV |
    la\CaV la\CaV r8 la16\CaV la\CaV r8 la16\CaV la\CaV r8 la16\CaV la\CaV r8 | R1
    \st {la16\pp\CaV la\CaV r8 la16\CaV la\CaV r8 la16\CaV la\CaV r8 la16\CaV la\CaV r8 | R1
    la16 la r8 la16 la r8 la16 la r8 la16 la} r8 | R1 \clef bass

    %%% Moderato %%%
    la,,4.\mp sib8~ sib2 | la4. sib8~ sib2 |
    la8. sib16~ sib4. la8 | do2.~ do2 r |
    la8. sib16~ sib4~ sib16 la8. | do1~ |
    do2 la4 | do2 r4 \t {la8--\<\upbow( do-- sib--)} |
    \ten mib2.~\mf mib2 r | \ten fa2.~\p fa2 r | mib4\mp( fa2) |
    mib8.( fa16~) fa2~ \t {fa8 mib--\<( fa--)} |
    solb8.\mf( lab16~) lab2 | solb4-- lab4~-- lab16 solb8.-- lab-- mib16~---> |
    mib8. fa16~---> fa8 solb~---> solb16 lab8.~---> | lab8 fa,->\f solb-> lab-> |
    si8\sfz r r2 | R1 R2*4

    %%% Allegro marcato %%%
    <sib do>4->\ff <sib do>16-. <sib do>-. <sib do>-. <sib do>-. <sib do>4-> r |
    <sib do>4-> <sib do>16-. <sib do>-. <sib do>-. <sib do>-. <sib do>4-> r |
    \st {fa\p fa la la} sold2--->( la8) r r4 | R1
    <fa sib mi la>4->\ff \st {<sib dod>16 <sib dod> <sib dod> <sib dod>} <sib dod>4-> r |
    <fa sib mi la>4-> \st {<sib dod>16 <sib dod> <sib dod> <sib dod>} <sib dod>4-> r |
    \st {re\p re sib sib} <sol re' la'>2--->( si8) r r4 | R1*3
    \st {fa'4\p fa mi mi} mib2\>( re8\!) r r4 | R1*2
    \st {fa4\p fa mi mi} red2\>( do8\!) r r4 | R1
    r2 r4 \pizz fa\p mib( re do) r la( sol fad) r r reb'\> do sib\! |

    %%% Agitato %%%
    \arco re16\f\<( mib fa lab) sib\>( lab fa mib) re8-.\! lab'-. <re,! reb'>-. lab'-. |
    re,16\<( mi sol la) sib\>( la sol mi) re8-.\! <re sib'>-. <re mib'>-. <re sib'>-. |
    re16( fa sol lab) sib( lab sol fa) re8-. <re dod'>-. <re mi'>-. <re dod'>-. |
    re16\mf re re re re re re re re re re re re re re re |
    \st {<la re>8\fp re <re la'> re <la re> re <re la'> re |
    <re re> re <sol la> re <re re> re <sol la> re |
    <re re> re <sol re'> re <re re> re <sol re'> re |
    <re sol> re <do' fa> re, <re sol> re <do' fa> re, |
    <re sol> re <do' fa> re, <re sol> re <do' fa> re, |
    <sol, re'> re' \clef treble <fa' do'> \clef bass re,
    <sol, re'> re' \clef treble <fa' do'> \clef bass re, |
    re \clef treble <fa' do'> \clef bass re, \clef treble <solb' reb'> \clef bass
    re, \clef treble <lab'' mib'> \clef bass re,, \clef treble <la'' mi'>} \clef bass |
    <re,, mib'>8->\sfz r r4 r1 | R1*2

    R1 R2. R2 \clef treble re''16\p\CaV re\CaV re\CaV re\CaV re\CaV re\CaV re\CaV re\CaV |
    si si si si si si si si | si\< si si si si8-.->\! r | R2 R1*4
  }
}

ActeUnSceneUnBisVioloncelleUn = { \VioloncelleUn
  \relative {
    R2.
    \t {dod,,16\pp dod dod} dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 |
    \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 |
    \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 |
    \t {dod16 dod dod} dod8 <dod sib'>16-. lab'-. si-. sol-. \t {dod,16 dod dod} dod8 |
    \st {dod16\p re mi sib' sol la sib mi dod re mi sol} |
    lab8-> \t {lab,16 lab lab} fa8-> \t {fa16 fa fa} mib8-> \t {mib16 mib mib} |

    %%% Piu vivo %%%
    re4\sfz r r8 do'-- sol--( la--) | fad2--\f \t {sol8--( la-- do--)} |
    re4---> r r8 mib,-- lab--( fa--)| sib4.-- lab-- |
    \ten sol2.~--->\ff sol4 r8 sib'~ sib4 |
    <re, do'>4.---> <re sib'>---> | sib'2.---> |
    R2. r4 <la mi'\harmonic mi'>2~\p <la mi'\harmonic mi'>4. r8\fermata r4 |
    R2. r4 <la mi'\harmonic mi'>2~ <la mi'\harmonic mi'>~
    <la mi'\harmonic mi'>8 r\fermata r4 | r2 r4 fad,--(\p sol-- la--) |

    %%% Largo %%%
    \ten do2~\CaV do~\CaV do~\CaV do2.~\CaV
    do2~\CaV do2.~\CaV do2~\CaV do2.~\CaV
    do2.~\CaV do4 r r2 |
    R1 R2. R2 r2 r8 mi4.\pp\upbow |
    \ten sib2.~ sib2 r4 |
    \longHairpins {la'2--\mp\> mib~\pp mib r4 } |
    R2*3 R2. R1 R2.
    r4 sib8--\mf( lab--) | \ten sol2~ sol fad2.\mp |
    r2 si4-.\downbow mi,2.\downbow |

    %%% Adagio %%%
    R1*9
    r2 r4 r8 <do la'\harmonic mi''>~\pp |
    <do la'\harmonic mi''>2. r4 |
    r2 r8 <sol' si\harmonic si''>4.~ |
    <sol si\harmonic si''>1~<sol si\harmonic si''>~
    <sol si\harmonic si''>2. r8 sol~\mp\CaV |
    sol4 sol--( fa-- sold--) |
    mi1\pp~mi~mi~mi2 r | R1*8 \clef treble
    r4 <sol''si>--( <sol si>-- <sol si>-- |
    <sol si>--) r r2 \clef bass |
    R1*3
    R2 \pizz <sold, dod>4\mp <red la'> <reb lab'> r
    r \arco <sold, mi'>\f\downbow
  }
}

InterludeUnVioloncelleUn = { \VioloncelleUn
  \relative {
    R1. R1*3 R1. R1 R1.*2 R1*2
    la4\leftpizz r r1 \clef treble r8 do( si'2.~\mf si4 la~\> la sold2.~\p) sold4 r2 |
    R2 \clef bass r4 \ttt {r16 fa( mi re la si}
    \ttt {sold\< la sold fad dod red)} |
    <sol, re'>1~--->\f <sol re'>2 <sol re'>8 do-- sib--\< sol--\! \clef treble |
    <re'' la'>1---> r4 r8 lab'\<( sol'1~)\fmolto
    sol2 r \clef bass |
    <sol,,, re'>4\downbow <sol re'>\downbow <sol re'>\downbow <sol re'>\downbow <sol re'>\downbow <sol re'>\downbow |
    <sol re'>\downbow r r2 | <fa' sol>2.--->\ff\> sol2\p r4 | R2.*4
    si,2.~\pp si~ si~ si~ si8 sib4( lab) si8( |
    sol'2.~) sol~ sol~ sol R2.*2
  }
}

ActeUnSceneDeuxVioloncelleUn = { \VioloncelleUn
  \relative {
    %%% Air de la Soprano2 %%%

    R2.*2 R1*2 R2.*2 re,4-.\pleggiero la'-. sold8( mi) re4-. mi8( re) la'( sold) r mi sold4-. |
    mi4-. re8( la') sold4 la8( sold) mi( re) r la'|
    re,8( mi) sold4-. la-. re,8 la' | r re, mi( sold) la4-. sold8( re) |
    mi4-. sold-. la8( mi) | r sold-. la( re,) mi4~--|
    mi1~ mi2 r2 | R2.*2 R1*2 R2.*2 |
    sold,1~\p sold4 re'8( fad) re( dod sold4~)| \ten sold2.~|sold4 r2|
    \ten dod1~ dod~| dod2 r4 | r2 fad8\mp( re) |
    dod1~ dod~| dod2 r4| r dod-- r |
    mi1~\mp mi2. r4 | dod2.~\mf dod2 r4 |
    \ten sol!1~\f sol~ | sol2 r4 |
    sol-> re'-> do8->( lab) | sol2.---> r4|
    sol-> re'-> do8( lab) sol4-> | lab8( sol) do( re) r4| R2. |
    sold1~\pp sold~| sold2.~ sold~   |
    sold1~ sold2. r4 |
    R2.*2 R1*2 R2.*2 R1*2 R2.*2 | \clef treble
    la'1~\pp\CaV la~ la2.~ la~ la1~ la~ la2.~ la2 r4|
    R1*2 R2.*2 R1*2 R2.*2| R1*2 R2.*2 R1|
    R1-\fermataMarkup \clef bass |

    %%% Récitatif %%%

    r4 r8 mi,4.--\mp\downbow| dod2.--\downbow~|dod1~|dod2 r4|
    r r8 reb4.--\downbow | sib2.~--\downbow|sib1~|sib2 r4|
    R2.| r4 r8 mib4--\downbow\mp lab,8~--\downbow| lab2.~|
    lab8 lab~ \t {lab lab lab} lab4:32\< |
    lab8\sfz r r2| R2| r4 r8 reb4.\p\>\upbow|
    sol,1\!~ sol~ sol2.~ sol~ sol~ sol2 r4 | sib2.~\pp| sib r4|

    %%% Duo %%%

    \pizz <re, sib'>4\mp\arpeggUp
    \simile <re sib'> <re sib'>
    \repeat unfold 13 <re sib'> r8 \arco <re sib'>\>( |
    <reb lab'>-.\!) r \pizz <reb lab'>4\mp
    \repeat unfold 5 <reb lab'>
    \repeat unfold 3 <sib' sol'> r8 \arco <sib sol'>\>( |
    <la fa'>8-.\!) r \pizz <la fa'>4 <la fa'> | <la fa'> r |
    \arco sol\f lab8--( sib--) |
    reb4-- dob-- \simile sib | dob sib lab sib |
    dob sib lab fa | dob' r8 sib r4 |
    \st {mi8\psubito mi fad fad} \simile mi mi |
    fad fad mi mi fad fad mi mi fad1\mp\< |
    \ten sib2.\!~|sib~| sib4 r2 | R1

    %%% Piu vivo %%%
    <sol, sol'>4--->\fp sol16 sol sol sol lab lab lab lab |
    sib sib sib sib reb reb reb reb mib mib mib mib mi mi mi mi |
    fad\< fad fad fad la la la la si si si si |
    do4--->\f re,---> dod,--\upbow |
    sol'2\ff sol4\downbow sol | dod4.---> dod8 dod dod |
    sol2-- r8 sol sol sol | dod4.-> dod8\downbow \t {dod dod dod} |
    sol4---> sol2-> r4 |
    dod,4-> r2 \clef tenor |
    \tt {r16 lab'''( sol fa re } \tt {do la si la fad} \clef bass
    \tt {mi red dod do sib} | sol4->) r2 |
    sol4 \tt {sol16( mi fad fa fad} \tt {sol lab la lab sib} |
    si4->) r2 |
    sib4---> sib---> sib---> |
    re---> r2 | \simile re4 re re | re r2 | re4 re re | re r2 | re4 re re |
    dod r2 | dod4 dod dod | \ten fa1~\ff fa2 r4 si,~\f\> | si8 do4. dod2\! |

    %%% Tempo giusto %%%
    <re, sib'>4---.\fp <re sib'>---. <re sib'>---. \simile <re sib'> |
    <re sib'> <re sib'> <re sib'> <re sib'> |
    <dod la'> <dod la'> <dod la'> <dod la'> |
    <red si'> <red si'> <red si'> <red si'> |
    \pizz sol r r2 \clef tenor |
    \tt { r16 fa''\fp\<( mi re do} \tt {si la sold fad mi} \clef bass
    \tt {mib reb do sib lab)} | \ten sol1~\f sol2. r4 |
    r \tt {\ind #"détaché" do16\mp\< reb mib solb lab} \clef tenor \tt {la si re mi sol} |
    lab4.\! r8 \clef bass |
    sold,,2~ | sold~ | sold r4 |
    r r8 sold--\upbow fad-- la-- |
    <fa fa'>2\f | <fa fa'>4.\downbow fa8 |
    <fa re' la'>2 | <fa re'>4.\downbow fa8 |
    r la\upbow( sol sib) |
    \t {fad--( re'-- la'--)} \t {la--( re,-- fad,--)} |
    \t {fad--( re'-- la'--)} \t {la--( re,-- fad,--)}
    \t {fad--( re'-- la'--) \glissando } \clef tenor |
    sold'-.-> r r2 |

    %%% Largo assai %%%
    R1 R2.*3 R2
    \ten sib,2.~\pp sib2. r4 |
    r2 \pizz la'4 sold | sol r \clef bass sib, r | re, r r2 |
  }
}

InterludeDeuxVioloncelleUn = { \VioloncelleUn
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    \pizz \t {si,8\mf fad' sol} mib'4-- |
    \t {re,8 sol sib} mib4-- |
    \t {si,8 fad' sol} mib'4-- |
    \t {sib,8 mib sol} do4-- |
    \t {sol,8\psubito re' la'} mi'4 |
    \t {sol,,8 re' la'} mi'4 |
    \t {sol,,8 re' la'} mi'4 |
    \t {mi,8 la do} fa4 |
    lab,8 do, sol' si, solb' sib, fa' la, |
    lab' do, sol'\< si, solb' sib, fa' la, |
    lab'4\mf mi'-> R2 |
    \arco \ten mi,1~\p mi~ mi~ mi2 r | R2.
    \ten do1~ do2 r4 | R2. la2.--\pp r4 R2. lab4-- r |
  }
}

ActeUnSceneTroisVioloncelleUn = { \VioloncelleUn
  \relative {
    \pizz do,,4\mf r2 |
    fa2.:32~\p fa: <fa mi'>2.:32~\mp <fa mi'>:~<fa mi'>:~<fa mi'>:\< <fa mi'>4->\! r2 |
    r4 \pizz re'\mf r r si r r8 la-> r la dod4 |
    \arco sib2.:32\fp R2. <sib la'>2.:32\pp <la sold'>2.\p
    sib2.:32\< do2.:32~\mf do:~\< do4\! r \pizz fa,\mf lab r2 |
    \ind #"arco (solo)" sol'2.~\CaV\mfintenso sol~\CaV sol~\CaV sol2\CaV sol4\CaV |

    %%% Lamento %%%
    \ind #"ordin, sul G" sol1.~sol~sol1 la2~ la1.~\< la1 la4 sib~ sib1.~\!|
    \ind #"espr." sib4\< dob2\! r | reb,2\p( do4) r2 | reb( do4) r2 | \simile reb do4 r2 | re reb4 r2 |
    <lab sol'>2\mp\> <do fad>4\upbow\! r |
    \simile <re dod'>2 <si lad'>4 r |
    <lab sol'>2 <do fad>4 r |
    <la sold'>2\< <mi'sol>4\mf r |
    \ten <reb, do'>2\f <reb do'>4-- <reb do'>4.---> <reb do'>8-> <reb do'>-> <reb do'>-> |
    <reb do'>4---> <reb do'>8->\ff <reb do'>-> r4 | R2*2

    %%% Tempo I %%%
    \pizz sib'4\mp do r re sib r r mi, r |
    \arco red'2.:32\sfp dod: dod2. red2.~ red red fad\upbow\< mi4-.->\sfz r2 |
    R2. \pizz si4\mf r la r2 sib4 |

    %%% Tempo II %%%
    r2 r4 mib,\p reb mi | do2 r4 \arco sol'2.\p lab1.~lab~ lab2 r4 mi'2.:32~\pppp mi:
    <fa, mi'>2.:32~\pp <fa mi'>:\mp <fa mi'>4->\sffz r | R1 R2. R2
  }
}

ActeUnSceneTroisBisVioloncelleUn = { \VioloncelleUn
  \relative {
    R1*3 \clef tenor
    r4 la'2--\pp\CaV r4 | R1*2 r4 fad2-- r4 | R1 \clef bass |
    r2 lad,,4--\p sold-- fad-- r r2 | R1*6
    fad1~\pp fad~ fad~ fad~ fad2. r4 | R1*9
    mi'1\pp mi2-- mi-- <sold, mi'>-- <sold mi'>-- <sold mi'>-- <sold mi'>-- <sold mi'>-- <fa dod'>--|
    do2. R1*7
    <sold' dod>4\mp(\glissando <si mi>8) r <sold dod>4(\glissando <si mi>8) r
    <sold dod>4(\glissando <si mi>8) r <sold dod>4-- lad-- |
    fad1~\p fad~ fad~ fad~ fad~ fad~ fad2. r4 | R1*3 \clef tenor
    r4 la''2\pp\CaV r4 \clef bass |
    mi,2\p( mib re1 reb2 do) si1~\pp si~ si4 r r2 |
    R1*2 fad'1\p\> \ten mi~\pp mi~mi~mi~mi~mi\fermata
  }
}

ActeUnSceneTroisTerVioloncelleUn = { \VioloncelleUn
  \relative {
    R2*3 R2. R2*2 R2. \clef treble
    \ind #"staccato leggiero" re'16\fp \repeat unfold 35 re
    re re fad re dod dod fa do do red mi si |
    sib8 r r2 | R2. \clef bass |
    mib,,,2.\pp r4 mi2 fa |
    re'8-> r r4 r2 | R1*3 R2.

    %%% Poco meno %%%
    <re sol\harmonic re''>2.:32~\pp
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
    \t {r4 sold'8} lad16\<( si) re( dod) |
    sol'8\mf( fad) sib,( si) mib( re) fad,\>( sol) si( sib) re,( mib) \clef bass |
    sol,2\mp r4 |
    r <sol sib>2~\p <sol sib>\> <fad si>4~\! <fad si>2 r4 |
    r <sol sib>2~ <sol sib>\> <fad si>4~\! <fad si>2 r4 |
    r \t {re'8\p( sib re} \t {sib re sib)} \t {re( sib re} \t {sib re sib)}
    \t {red( si red} | \t {si red si} red4) r |
    r \t {re8( sib re} \t {sib re sib)} \t {re( sib re} \t {sib re sib)}
    \t {red( si red} | \t {si red si} red4) r |
    r \t {sol,8\mp( si sol} \t {si sol si)} \t {sol\<( si sol)} \t {si( sol si~)}
    si4~\! si2 r4 |
    r \t {sol8\mp( si sol} \t {si sol si)} \t {sol\(( si sol)} \clef tenor
    \t {si( mib si)\)} \t {mib( sol mib} | \t {si\<) sol'( mib)} sib'4--\! r \clef bass |
    r8 \pizz si,,\mp\< mi la mib sol\! | r4 r8 do,\< fa sib\! \clef tenor |
    r mi-> r4 la-> | R1 \clef bass

    r4 \arco \ten sib,2~\mp sib sib4~-- sib2 r4 |
    r sib2~-- sib sib4~-- sib2 r4 |
    r \ten <sol mib'>2~--\mp <sol mib'>\> <fad re'>4~--\! <fad re'> r2 |
    r4 <sol mib'>2~-- <sol mib'>\> <fad re'>4~\! <fad re'> r2 |
    r4 <sib sol'>2~--\mf <sib sol'> <si-\thumb si>4~---> <si si>2 r4 |
    r4
    \repeat tremolo 8 {sol32\mf re}
    \repeat tremolo 8 {sol re}
    \repeat tremolo 4 {fad red} fad4 r2 |
    r8 re'\f( mib) sib( si) fad( sol) re'( mib) sib( si) fad( |
    sol) re'4--\>( sib--) fad8~--( fad re4-- mib--) fad8~--\mp fad2 r4 |
    R2.*3 \clef tenor |
    re'2.~\pp\CaV re~\CaV re~\CaV re~\CaV re~\CaV re2\CaV r4 |
    <re la'>2.~\pp\CaV <re la'>~\CaV <re la'>~\CaV <re la'>2\CaV r4 |
    mi2.\p\fermata
  }
}

InterludeTroisVioloncelleUn = { \VioloncelleUn
  \relative {
    r8 \pizz mib,\pp r mib r mib r mib | r mib r mib r mib |
    r4 \arco \ten mib2.~\pp mib2 r4 R1 R2. R1 R2.
    <si fa'>4\downbow\p <si fa'>\downbow <si fa'>\downbow <si fa'>8-.( <do solb'>---.) |
    <si fa'>4\downbow <si fa'>\downbow <si fa'>8-.( <do solb'>-.) |
    \simile <si fa'>4 <si fa'> <si fa'>8 <do solb'> |
    <si fa'>4 <si fa'> |
    r8 <sol red'>\f r <sol red'> r <sol re'> |
    r <sol red'> r <sol re'> |
    r <sol mi'> r <si sold'> |
    r <si sold'>\ff r <red si'> |
    sol,16:32\mf mi: sol: lab: si: lab: si: do: |
    mib:\< do: mib: mi: sol: mi: sol: lab: \clef tenor
    si4--->\! fa'---> sib8\sffz r r4 |
  }
}

ActeUnSceneQuatreVioloncelleUn = { \VioloncelleUn
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    R2. sol4--\mf fa-- mi8---. la,---. r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2

    %%% Agitato %%%
    r4 \t {la8\mf re( sol)} \t {do sol( re)} | la-. r r2 |
    <sol re'>2.:32\fpp <sol re'>8-.-> r r2 | r4 sib'8\mf( fa4) fad8 |
    sol2~\< sol4\glissando sib2.\! la2.:32\pp\< la8-.->\mp r r4 fad16\<( mib) sib( sol) |
    re4--\f r2 | re'16\f\< si' si si mi8--\! mi,-- la-- la,-- | re4---> r2 |
    re16\< dod' dod dod fad8--\! fad,-- si-- la,-- | re4 r8 re-.\upbow\mp fad,-. si-. |
    mib,4-- r8 reb4--\downbow sol8-. | do4-- r8 fa-.\upbow la,-. re-. |
    fad,4-- r8 la4--\downbow mib'8-. | lab4-- r8 la-. reb,-. solb-. |
    sib,4-- r8 sib4--\downbow\< sib8-- | mi4->\! la16\f( re la re) dod( re) dod( re) |
    sol,( la dod re) la( re la re) dod( re) dod( re) |
    sol,( la dod re) la( re la re) dod8-- sib,-- | mi4---> r8 mi,-. \t {mi\< mi mi\!} |
    r8 sib'4-- mi-- sib'8-. | mi,4--\downbow mi--\downbow sib8-. mi~-> | mi2 re4~---> | re fa2---> |
    dod2~\sfp dod8 r r4 | r8 sol4\upbow\f dod---> sol8-. | dod2.\downbow r4 |
    r8 sol4\upbow dod---> sol8-. | dod2\downbow | r8 sol4\upbow dod---> sol'8-. | dod,2\downbow |
    r8 sol4\upbow dod,---> sol'8-. | dod4--( sol--) | dod2\upbow\> sol4--\! |

    %%% Placando assai %%%
    dod2.--\p(\upbow dod4--) sol2.-- r4 | dod2.--\upbow( dod4--) sol2.-- r4 |
    dod,2\upbow(\< re mib) \ten mi2.~--\p mi2. r4 |

    %%% Andante a piacere %%%
    \ten fa1~\p fa2 reb fa1~ fa2 reb |
    fa1~\mp fa2 reb fa1~ fa2 reb |
    sol2.\mf r4 r8 dod,4--\upbow sol'-- dod,8-. |
    sol'2.---> r4 r8 dod,4--\upbow sol'-- sol8-. |
    dod,8-.\sfz r r4 r2 | R1*6 R2*3 R2.*2

    %%% Poco a poco piu mosso %%%
    \pizz sol'4\mp r sib\< dod\! r2 la4 r2 do4 r2 |

    %%% A tempo %%%
    \arco
    <do,do'>4--->\f r8 fad4-> do'-> fad,8-. |
    <do do'>4---> r8 fad4---> do'---> fad,8-. |
    <do do'>4-> <do do'>-> r8 fad-.-> r4 \clef tenor |
    \ten la''1~\f\CaV la4 r2 \clef bass |
    \ten la,,1~\mf la4 r2 | R1 la2.~\p la1~|
    la8 r16 \clef tenor <re'fad>~\f\<( <re fad>8 <mi sold>~
    <mi sold>16) <sol si>8.-- \clef treble |
    <dod, dod'>2--->\!( <dod dod'>4--) <dod dod'>-- |
    <dod dod'>4.---> <dod dod'>8~-- <dod dod'>4 r \clef bass |
    <sol,sol'>2---> r4 sol'\<\downbow sol\downbow sol\downbow
    fa2--->\downbow\ff fa4-- |
    fa~---> \t {fa8 fa4~--->} \t {fa4 fa8~--->} fa4 |
    r fa~--->( fa8 mib-.) \t {mib-> mib-> fad->} |

    re2.--->\ff r8 re-. r | sold,2--\f si4~--\<( si8 dod4--) |
    re2--\!  r8 re-. r | la4.-- sib8~--\<( sib8. do16~-- do4) |
    mib2--\! r8 mib-. r| si2~\mf si8 do~--\<( do16 re8.--) |
    fa2~--\! fa4 r8  | fa,2~--\mf fa |
    R2 R4. \ind #"détaché" re16\p fa sib dod fad\< sib, dod fad la dod, fad la |
    re4->\fp re,-- re-- re-- | \simile <re mi>\CaV <re mi>\CaV <re mi>\CaV <re mi>\CaV |
    <re sol>\CaV <re sol>\CaV <re sol>\CaV <re sol>\CaV |
    <re do'> <re do'> <re do'> <re do'> <re fa'> re re re |
    re8 re re, re re' re re, re |
    re' re re, re re' re re, re'|
    re'16 re re, re re, re re' re re, re re' re re' re re, re |
    re8 re' re, re, re' re, re'4 | re8 re re4 r2 |
    R1*2 R2 R2.*2 R2 R1 |

    %%% Piu lento %%%
    r2 \clef treble \ten sib''4~\pp sib2 r4 | R2.
    r2 \simile sib4~sib2 r4 |
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 | R2.
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 | R2. \clef bass
    r4 \pizz sib,,\mp\> r r re,\! r |

    %%% Stesso tempo %%%
    la'4\f r r fad' r r | la,-> r r2 |
    la4 r8 red r2 fa4 r | la,-> r r2 |
    la4 r8 mi' r4 fad, r8 mib' r4 | la,-> r r2 |
    R1. R1
    \arco \ten fa'1.\mp( fad2.) r4 |
    \pizz la4->\mp r r2 r4 re,8 sol |
    la4-> r r2 fa8 mib sib' do |
    la4-> r r4 do8 sol fa re mi' si |
    la4-> r fa8 sol do sib reb mib, lab solb |
    la4-> sib8 mib dod si fad sold fa\< re mi' si |
    la4->\! r r2 | R1. R1
    \arco sold,2\p( \ten la1)
    sib4-.->\ffsubito r \pizz sib\mp reb |
    la4-> r r2 r4 mi''8 si |
    la4-> r r2 dod8 red, sold fad |
    la4-> r r4 fad8 si dod mi re, sol |
    la4-> r dod8 si fad sold fa mib sib' do |
    la4-> sold8 red fa sol do sib dod\< mi re, sol |
    la4->\! r r2 R1. R1
  }
}

EntracteVioloncelleUn = { \VioloncelleUn
  \relative {
    \ten sold,2~\pp sold~ sold sold~ sold sold sold~ sold4 sold~|
    sold4 sold8-- \t {sold16\< fa sol} |
    re4\sfz re''4:16\pleggiero re2:16 |
    re: re: re: re: re: re: re: re: re: re: |
    re: re: re: re: re: re: re: re: re4 r r2 | R1*10
    re,16->\mf re re re re4 r8 re16-> re re re re8-. |
    re16-> re re re re4-- r re16-> re re re | re4-> r r2 |
    \pizz mib,8\mp solb mi4 si'8 re, do4 | fad r r2 |
    r4 sol8 sib lab reb r4 | R1
    \arco re16->\mf re re re re4 r8 re16-> re re re re8-. |
    re16-> re re re re4-- r2 |
    re4:8\fp re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re': re,: re': re,: |
    re'4--->\mf re-- re-- re-- \simile re re re |
    re re re re |

    %%% Fugato %%%
    mi,2:8\f mi: mi:\> mi: mi:\mp mi4: mi2: mi4: mi2: |
    mi: mi: mi: mi4: mi2: mi4: mi2: mi: mi: mi: mi2: mi4: mi2: mi4: |
    mi2: mi: mi: mi: mi: mi4: mi2: mi4: mi2: mi: mi: mi: |
    <mi do'>2.~\p <mi do'>~ <fad re'>1~ <fad re'>2. r4 |
    <re' la'>4:8\mp <sol, re'>: <re' la'>: <sol, re'>: <re' la'>: <sol, re'>: |
    sib2:8 sib:

    %%% Stretto %%%
    re2:16\f re: re: re: re4-- r \harmo {\ten <red sold\harmonic >2~\p <red sold\harmonic >2.} red'2
    r4 \pizz sol,--\mp mi-- r sol-- |
    \arco mi--\mp mi-- re-- re-- mi-- mi-- re-- re-- |
    <fa, re'>-- <fa re'>-- <fa re'>-- <fa re'>-- |
    <mi si'> <mi si'> <mi si'> <mi si'> |
    <sib' re>-.-> r r2 \clef treble |
    r4 \pizz re''\mp\CaV r re\CaV r re\CaV r2 | R1

    %%% Noir %%%
    R2.-\fermataMarkup R2.*4 R2 R2. R1 R2. R2
    R1*5 R1.*4 R1 R2.-\fermataMarkup

    r2 \arco la4~\pp\CaV la2.~\CaV la~\CaV la~\CaV la~\CaV
    la~\CaV la~\CaV la2\CaV r4 | R2.-\fermataMarkup \clef bass

    %%% Poco più %%%
    R2.*4 R2.-\fermataMarkup

    %%% Andantino %%%
    R1 R2 R1 R2 R1 R2 R1 R2.

    %%% Largo non troppo %%%
    \det {la,2\mf la la la la la la la la la} r \clef treble mi'4\<(\upbow sol) |
    \ind #"à la corde" la\mf( sol) fa( mi) fa8\<( mi) fa( sol) |
    \simile la4\! sol fa mi fa8 mi fa sol |
    la4 sol fa mi fa8\< mi fa sol |
    la4\f sol fa mi8 r fa' mi fa sol |
    la4 sol fa mi fa8 mi fa sol |
    la4->\> sol fa mi fa8 mi fa sol |
    la4\mf sol fa mi fa8 mi fa sol |
    la4\mp( sol) fa( mi) fa8( mi) fa( sol) |
    \simile la la, sol sol' fa fa, mi mi' fa mi fa sol |
    la la, sol sol' fa fa, mi mi' fa mi fa sol |
    la la, sol sol' fa fa, mi mi' fa mi fa sol |
    la\< la, sol sol' fa fa, mi mi' fa mi fa sol |
    la4\f sol fa mi fa8\< mi fa sol |
    la4->\! mi-> r1 \clef bass |
    <mi,,, si' re la'>4-> mi'-> r2 R1 R2. R2
  }
}

ActeDeuxSceneUnVioloncelleUn = { \VioloncelleUn
  \relative { \clef treble
    \pizz la'4\mp r r | la r8 la r4 | la la la |
    la r2 | R2 | R2.*2 | R2 |
    \clef tenor r4 << \arco s2 \\ \repeat tremolo 4 { si,16\pp\< re16 } >>
    \repeat tremolo 6 { si16\mf re16 } |
    \repeat tremolo 6 { si16\> re16 } | sold,4--\! r |
    R2. R2 R2.*2 R2 |
    \t {r8 sold\<( si)} sol'!2~\mf |
    sol8 sold,\< sol'!2~\f |
    sol8\>[ mi~(] mi[ red)] \t {sol\! \clef treble do\<([ si)]} |
    sol'2\f\>\glissando |
    la2.~\pp\CaV | la2~\CaV | la2.~\CaV | la2\CaV r4 | R2 | R2.*2 |
    \ttt { la,8\p[ \cresc la16 la la la]}
    \ttt {la[ la la la la la]}
    \ttt { mi[ mi mi mi mi mi] }
    \ttt { mi\f[ mi mi mi mi mi] }
    \ttt { mi[ mi mi mi mi mi] } |

    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {sold16\f sold sold sold sold sold} \t {sold sold sold} r8 r4 |
    r4 r8 \t {sib16\f sib sib} \ttt {sib sib sib sib sib sib} \clef bass |
    R1 R2. R2 R2. R1

    %%% Andantino %%%
    \pizz sib,,4\p fa' r2 R1 R2. mi4\mp si' r R2. mi,4 si' lad R2
    R2. si,4 fad' r mid8-- dod si4 r |
    r4 \arco re'2~\p\CaV re2.~\CaV re1~\CaV re2\CaV r4 | r8 \pizz lad\mp si4 |
    fad,4 r2 R1 R2. R1 R2. R1
    sib4\mp fa' r | \arco sib,2.\p r4 R2. R1 sib2 r4 R1 R2.
    fad1\pp\upbow fa2.~ fa2. r4 | fad2.~\upbow fad1 fa2.~ fa2. r4 |
    fad2.~\downbow fad2. r4 |

    %%% Entrée de la Contralto %%%
    R2. R1 fad2.~\p fad4 r r2 |
    fa2.~ fa4 r r2 | fad2.\upbow\< fa2\! mib( |
    do4)\thumbpizz \pizz si'8\mp\< mi fad4 re'8\> fad, mi4 fad8 mi do4\! mi8 do si4-- fad-- |
    do-- r r2 | r2 dod4 | r8 re'\< mi la r sold la re\! |
    r4 \arco do,,2\mp\<\upbow reb mib( |
    fad4\!)\thumbpizz r2 | \pizz fa4\mp r r2 | fad4 r2 | fa4 r r2 |
    fad8 fad' r2 | sol,8\< re' fa4 sib8 do mib4\! r \arco fa,,--\mf |
    sib-- r2 | si4-- r2 | sib4-- r2 | si4-- r2 | mi4-- r2 |
    \ten re'2.~\mf\CaV re2.~\CaV re2\CaV r | mib,2.\>( |
    \ten re1~\pp) re4 r2 | R1 \pizz lab4\mp r2 | la4 r r2 | lab4 r2 |
    \arco \ten sol1~\p sol2. R1
    re''2.~\p\CaV re1~\CaV re2.~\CaV re4\CaV r4 |
    R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisVioloncelleUn = { \VioloncelleUn
  \relative {
    R1 R2. R2

    %%% Presto agitato %%%
    <mi,,\harmonic do'\harmonic mi' sol>1*5/4~\pp
    \simile <mi''sol>~\CaV <mi sol>~\CaV
    <mi sol>~\CaV <mi sol>2.\CaV r2 |
    R1*5/4 \clef treble |
    \ten <lab sol'>1*5/4~--\mp <lab sol'>2. r2 \clef bass |
    R1*5/4*7
    sib,,1*5/4~\p sib~ sib2. r2 |
    dod2\mp re( mi4) \ten sol1*5/4~ sol2. r2 |
    \accdet {<do re>4\sfz r2 <do re>4\sfz r | <do re>\sfz r <do re>\sfz r2 |
    <do re>4\sfz r r8 <do re>\sfz r2 | si,4\sfz} r1 |
    R1*5/4*5
    r2 r8 \ind #"détaché" red,\mp fad red fad red |
    fad-> sol fad red fad red fad red fad red |
    fad-> sol fad red fad red fad red fad red |
    \simile fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad\< sol fad red fad red fad red fad red |
    \accdet {<sol dod>4\sfz r2 <sol dod>4\sfz r | <sol dod>\sfz r <sol dod>\sfz r2 |
    <sol dod>4\sfz r r8 <sol dod>\sfz r2 | <solb fa'>4\sfz} r1 |
    R1*5/4 <fa re'>4->\sffz r1 | R1*5/4-\fermataMarkup |

    %%% Boum %%%
    <mi\harmonic do'\harmonic mi' sol>1*5/4~\pp
    <mi'' sol>~\CaV <mi sol>~\CaV
    <mi sol>~\CaV <mi sol>~\CaV
    <mi sol>~\CaV <mi sol>~\CaV
    <mi sol>~\CaV <mi sol>~\CaV
    <mi sol>2.\CaV r2 |
    R1*5/4*2 \repeat tremolo 16 {re32\< si} re4 |
    \ind #"à la corde" <lab mib'>2.--->\f \accdet {<sib fab'>2 <lab mib'> <sib fab'>2. |
    r4 <lab mib'>2. <sib fab'>4~\<} <sib fab'>2 \accdet {<lab mib'>2. |
    \ten <sib, mib si'!>1*5/4\! | <mi, sib'>2 <sib' mib si'!>2.} |
    r4 <mib lab>1-- \ten <lab, fa'>1*5/4~--->\f <lab fa'>2. <lab fa'>2---> |
    \ten <sib mib>1*5/4~ <sib mib> | r4 \accdet {<sib mib>2\< <lab reb>4 <sib mib> |
    <lab reb>1*5/4~\ff} <lab reb>2. r2 | R1*5/4*5

    %%% Moderato assai %%%
    R1*7/4*4 <fa\harmonic si\harmonic do' si'>1--\pp r2 r4 |
    R1*7/4 r4 <mi\harmonic do'\harmonic mi' sol>1.-- \clef treble |
    sol''8\p(\CaV mi\CaV sol\CaV mi\CaV sol\CaV mi\CaV |
    sol\CaV mi\CaV sol\CaV mi\CaV sol\CaV mi\CaV sol\CaV mi\CaV |
    sol\CaV mi\CaV sol\CaV mi\CaV sol\CaV mi\CaV |
    sol\CaV mi\CaV sol\CaV mi)\CaV \clef bass |
    r4 \pizz do,8\p sol' sold4 | r8 sold\< si mi sol4\! |
    r8 si,, do sol' sold4 | r8 do,\< red sold si4\! |
    r8 si, do sol' sold4 | r8 la,\< do sol' sib4\! |
    r8 red,\< mi sol si4\! | r8 red,\< sold si mi4\! |
    r8 mi, sol la sib4 \clef treble |
    \arco sol'8\mp( la sol la sol la sol la sol la sol la sol la |
    sol4) r2 r1 | R1*7/4 \clef bass |
    \pizz sib,,4\p r2 fad4 r2 sib4 r2 |
    dod4 r2 sib4 r2 do4 r2 re4 r2 |
    \arco re1*7/4~\mf re4 r2 r1 |
    R1*7/4 <mi,\harmonic do'\harmonic mi' sol>1*7/4~\pp
    \repeat volta 2 {<mi'' sol>~\CaV <mi sol>~\CaV <mi sol>~\CaV}
    <mi sol>1\CaV r2 r4 | R1*7/4

    %%% Presto subito %%%
    \tt {\ind #"détaché" fa,,8\upbow\mf re re re re} \tt {fa re re re re} \tt {fa re re re re} |
    \tt {fa re re re re} \tt {fa re re re re} \tt {fa re fa re re} |
    \tt {fa re fa re re} \tt {fa re fa re re} \tt {fa re fa re re} |
    \tt {fa re fa re re} \tt {fa re fa re solb} \tt {fa re fa re solb} |
    \tt {fa re fa re solb} \tt {fa re fa re solb} \tt {fa re fa re solb} |

    %%% Tempo giusto %%%
    r4 \pizz <fa mib'>\mp\arpeggUp <fad' mi'>\arpeggUp |
    r <fa, mib'>\arpeggUp <fad' mi'>\arpeggUp |
    r <fa, mib'>\arpeggUp <fad' mi'>\arpeggUp |
    r <fa, mib'>\arpeggUp <fad' mi'>\arpeggUp |
    r <fa, mib'>\arpeggUp <fad' mi'>\arpeggUp |
    r <fad mi'>\arpeggUp r <fad si>\arpeggUp r <fad si>\arpeggUp |
    fad8 si, fad'4 | fad8 si, fad'4 |
    la8 dod, la'4 <dod, la'>\arpeggUp |
    la'8 re, la'4 <dod, re la'>\arpeggUp |
    do'8 fa, do'4 si | \arco sold,--\upbow \det {fad la |
    fa2~} fa8 r4 | mi2~-- mi4 r |
    \accdet {<la fad'>4\ff <la fad'>8.} <la fad'>16-. |
    <la fad'>8.---> \st {<la fad'>16 <la fad'>8} |
    \accdet {<fad dod' la'>2 r4 |
    <la fad'>4 <la fad'>8.} <la fad'>16-. |
    <la fad'>8.---> \st {<la fad'>16 <la fad'>8} |
    <do, sib' sol'>2---> r4 |
    <lad' fad'>8-.-> <lad fad'>8.---> \st {<lad fad'>16 <lad fad'>8 <lad fad'>} |
    \accdet {<sib sol'>4 <sib sol'>8.} <sib sol'>16-. |
    \accdet {<sib sol'>8.\< <la mi' do'>} |
    <la la' la>4\sffz r \pizz fa8\p lab |
    fad4 r re'8 sol, sold4 sol8 re do4 si'8 fad mi4 mib'8 sib |
    \arco \ten sol2.~--\mp sol2 r4 | sol2.~-- sol2 r4 | sol2.~-- sol2 r4 |
    sol2 r4 sol2 r4 r si2--\upbow sold2.--\mp R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    r4 \pizz si?8\mf fad' r4 do' |
    \arco sib4--->\sfz \st {la8 la la la} sib4--->\sfz \st {la8 la} |
    sib4--->\sfz \st {la8 la} sib4--->\sfz \st {la8 la la la} |
    sib-> \st {la la la la} sib-> \st {la la la la} | la4->\sffz r1\fermata |
    R1*5/4*2
    <fa,\harmonic si\harmonic do' si'>2.\pp r2 | R1*5/4*2
    \ten <fa\harmonic si\harmonic do' si'>1*5/4~\CaV <do'' si'>2.\CaV r2 |
    R1*5/4
    <mi,,\harmonic do'\harmonic mi' sol>1*5/4~\pp
    <mi'' sol>~\CaV <mi sol>~\CaV <mi sol>2. r2 |
    R1*5/4*9
  }
}

ActeDeuxSceneDeuxVioloncelleUn = { \VioloncelleUn
  \relative {
    R1.*4 \clef treble la'1.~\pp\CaV la4\CaV r r1 | R1*2 \clef bass
    re,2.~\CaV re8 r r16 re,,8--\f fa16 r16 fad8.-- |
    \t {re8---> mib( fa)} lab-- re,-- \tt {re16\<( mib) fa( lab sib)} |
    si8--\! re,-- \ttt {mib16\<( fa lab) sib( si dod)} mi8--\! fa,-- |
    \ttt {\simile lab16 sib si dod mi fad} sol8 sib,
    \ttt {si16 dod mi fad sol la} | \ten la,1.~--\mf la1 r2 |

    R1. R1*2 si'2.~\pp si8 r r16 si,8--\f re16 r16 red8.-- r4 |
    r16 \acc {mi,\upbow dod re do mib |
    si'4--} r8 \st {fad'16\p fad fad fad fad fad fad4} |
    r8 \simile fad16 fad fad fad fad fad
    fad fad <sol, fad'> <sol fad'> <re' la'> <re la'> <sol, re'> <sol re'> |
    r8 mid'16 mid fad8-- si,-- si16 si si si si si si si |
    r8 mid16 mid fad8-- si,-- si16 si si si fad' fad fad fad |
    fad fad fad fad fad8-- si,-- fad'-- si,-- fad'16 fad fad fad |
    fad\< fad fad fad fad8 si, fad' si,--->\ff la--\> do-- |

    \ten sold2.~--->\mf sold1 r2 | R1*2
    \pizz do4\mp do' r | do, do' do, | fa, do'' r | fa,, si' |
    fa, re'' r | \arco \ten mi,2.~\mp mi2 r4 |
    r16 sol,\>( mi' sib' do4\!) |

    r16 \acc {la,\upbow fad sol fa lab |
    \stemDown mi8-.} \clef treble \det {sold''\f \stemNeutral sold la} r4 %% FIXME: Issue #400
    \clef bass <re,,la'>16\mp <re la'> <sol, re'> <sol re'> |
    \stemDown mi8-> \clef treble sold''--\f \stemNeutral sold-- la--
    \clef bass <si,, mi>16\mp <si mi> <si mi> <si mi> <si mi> <si mi> <si mi> <si mi> |
    \stemDown mi,8-> \clef treble lab''--\f \stemNeutral lab-- sib--
    \clef bass <la,,re>16\mp <la re> <la re> <la re> \det {<sol' do>8 <la, re> \clef treble |
    r8 red''\f red} mi r4 \clef bass \st {sol,,16 sol sol8} \clef treble |
    r8 mi'' mi fa \clef bass r8 r16 \acc {la,,, fad sol fa lab |
    mi8} \pizz si'\mp <fad'dod'>4\arpeggUp |
    mi,8 si' <fad'dod'>4\arpeggUp | mi,8 si' fad' dod, | mi4 dod8 do |
    mi4 r8 mi | mi4 r |
    \arco \ten <dod la'>1~\mf <dod la'>2 r4 |

    R1. R1 R1. <re' la'>1.\p( fa2) r4 | R1 \clef treble
    la'2.:32~\pp\CaV la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV
    la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV
    la4 r2 R1 R2. \clef tenor r2 r4 \pizz <la, sold'>8\mf <la sold'> |
    <sib la'>4 r <lad sold'>8 <lad sold'> | <si la'>4 r r2 | R2. \clef bass

    <la,la'>16\f <la la'> <la' la> <la la> <la la> <la la> <la, la'> <la la'> |
    la2:16
    <la la'>16 <la la'> <la' la> <la la> <la la> <la la> <la, la'> <la la'> |
    la2:16 la4-- |
    \ind #"détaché" mib16\mf do reb mib fad8 fa sib16 sol lab sib reb8 do |
    fa\< mib lab sol do4\! la4:16 |
    la,1:16 |

    <la sold'>4---> do'8\upbow\< reb do | \acc {sold\! sold la r4 |
    sold,8 sold la r4 | sold'8 sold la r4 |
    <la, sold'>4--} r r8 | \dwnb {la4 la r8 | sold4} r r8 |
    <la sold' la>4---> r \st {re8 | re mib} r4 r8 |
    \dwnb {<sold, re'>4 <sold re'> r8 | <la re>4} r r8 |
    \acc {dod dod do} r4 | r8 \accdet {sol'4 sol | si,} r r8 |

    R1*2 lad4->\sffz r r2 | r4 \pizz mi\mp sol r | r do la r |
    R1 \arco mi2--\p \repeat tremolo 8 {mi32 red} |
    \repeat tremolo 16 {fa mib} |
    \repeat tremolo 16 {fa\< mib} |
    <re' dod'>4\sfz r2 | r8 \pizz si\mp r4 |
    R1*2 R2.*4
    r4 fad' r | r mi r | R2. \clef treble |

    \arco la'2\mf( sol4 fa mi) fa8( mi fa sol) |
    la4( mi) r R2 \clef tenor r8 <sold, mi'>\mp r <red' fad> |
    r16 sold\pleggiero mi sold r sol mib sol |
    r fad re fad r fa reb fa |
    r mi do mi r red si red |
    re8 \clef bass \pizz <re, sib'>\mp\arpeggUp r <re sib'>\arpeggUp |
    r \simile <re sib'> r <re sib'> |
    r <re sib'> r <re sib'> |
    r <re sib'> r <re sib'> |
    \arco sold, \pizz sold' \arco \st {sol, r |
    do r fad, r | si r fa r | sib r mi, r |
    R2 r8 la'16\pp la sold8} r | R2
    r8 \pizz <re sib'>\mp r <re sib'> |
    r <re sib'> r sold | <sib, re>4-> r |
    R2*2 sib4 r fa r mib r | R2 \clef treble

    \arco la''2.(\pdolce sol fa mi) fa4.( mi fa sol) la4( mi) r |
    R2.*9
  }
}

ActeDeuxSceneTroisVioloncelleUn = { \VioloncelleUn
  \relative {
    %%% Larghetto %%%
    R4.*9
    \ten mi,4.~\pp mi~ mi4 r8 R4. |
    sold4.~ sold~ sold8 r4 |
    do,4.~ do~ do~ do4 r8 | R4.*3
    mi4.~ mi4 r8 R4.*2 |
    la4.~ la8 r4 | la4-- r8 |
    \pizz dod,,16->\mp la' fa' la r8 |
    re,, <si' sold'>-> r |
    dod,16-> la' fa' la r8 |
    re,, <lad' fad'>-> r |
    r16 dod sold'8 r \clef treble |
    \arco lad'16\pp lad si( mi,) mi mi |
    mi mi lad lad si8-. \clef bass |
    \pizz dod,,,16->\mp la' fa' la r8 |
    re,, mib'-> r |
    dod,16-> sold' dod mi r8 \clef treble |
    \arco la'16\p la sib( mi,) mi mi |
    mi mi la la sib8-. \clef bass |
    \pizz dod,,,16->\mp la' fa' la r8 |
    sol, <lad fad'>-> r |
    dod,16-> la' fa' la r8 |
    sol,8 mib'-> r |
    \arco \ten <fad red'>4.~\p <fad red'>4 r8 | R4.
    \pizz dod,16-> la' fa' la r8 |
    r <la, fa'>-> r |
    r <re, sib' re sib'>\p\arpeggUp |
    r <re sib' re sib'>\arpeggUp |
    r <re sib' re sib'>\arpeggUp |
    r <re sib' re sib'>\arpeggUp |
    r <re sib' re sib'>\arpeggUp |
    r <re sib' re sib'>\arpeggUp |
    r <re sib' re sib'>\arpeggUp |
    r <dod sold' mi' do'!>\arpeggUp |
    r <dod sold' mi' do'>\arpeggUp |
    r <dod sold' mi' do'>\arpeggUp |
    r <dod sold' mi' do'>\arpeggUp |
    dod16-> la' fa' la
    r8 <sold, mi' do'>\arpeggUp |
    r <sold mi' do'>\arpeggUp |
    r16 sold mi' do' r8 r16 sold, mi' dod' r8 |
    r \arco <sold, mid' dod'>--\mp |
    r <sold mid' dod'> |
    r \pizz <sold mid' dod'>\p\arpeggUp |
    r <sold mid' dod'>\arpeggUp |
    r <do fa do'>\arpeggUp |
    r <do fa do'>\arpeggUp |
    r <do fa do'>\arpeggUp | R4
    r8 <sib mi la>\arpeggUp |
    r <sib mi la>\arpeggUp |
    r <sib mi la>\arpeggUp r |
    la <mib' la> la, <mib' la> la, <mib' la> | R4
    sib8\pp <fa' do'> sib, <fa' do'> sib,4 |
    sold16->\mp mi' sold mi' r8 |
    re,, mib'-> r |
    sold,16-> mi' sold mi' r8 |
    re,, mib'-> r |
    sold,16-> mi' sold mi' r8 |
    r \arco sold,,16-.\mf \st {sold la8} |
    r \pizz sol\mp sib |
    fad16-> si mi la r8 |
    do,, mi'-> r |
    fad,16-> si mi la r8 |
    do,, mi'-> r |
    fad, mi'-> r |
    fa,16-> si mi sib' r8 |
    re,16-> sol do fa r8 |
    \arco \ten sib,,4~\mf sib~ sib~ sib~ sib~ sib~ sib8 r |
    r \pizz <sib re sib'>\mp\arpeggUp |
    r <sib re sib'>\arpeggUp |
    <sold dod sold'>->\arpeggUp r | R4
    r8 <sib re sib'>\mf\arpeggUp |
    <sold dod sold'>->\arpeggUp r | R4
    r8 <sib re sib'>\mp\arpeggUp |
    sold <dod, sold' mi' do'!>\arpeggUp
    r <dod sold' mi' do'>\arpeggUp |
    r <dod sold' mi' do'>\arpeggUp |
    r <dod sold' mi' do'>\arpeggUp |
    \arco \ten <do sol' re'>4~\mf <sol' re'>~ <sol re'>8 r |
    r \pizz <do re>\mp r <do re> <do re>4 |
    <si sol'> <si sol'> <si sol'> |
    R2.-\fermataMarkup R2.*2
    r8 \arco sib16\p sib si8---. sold16 sold la8---. r | R2.
    r8 sib16 sib si8---. sold16 sold la8---. r | R2.

    %%% Interlude %%%
    r8 \st {sib16\pp sib si8 r |
    dod16 dod re8 r mi16 mi} |
    fa2~\p fa~ fa4 si,~ si2~ si2 |
    fa'2~ fa4. si,8~ si2. |
    fad'2~ fad4 r16 do8.~ do4 r8 r16 fad~ |
    fad2 r16 do8.~\< do4~ do4. dod8~\! |
    dod2 r8 |
    sol'16\p sol sol sol, sol' sol sol sol, |
    sol' sol sol sol, sol' sol sol sol, |
    sol' sol sol sol, sol' sol sol sol, |
    sol' sol sol sol, mi' mi mi mi, |
    mi' mi mi mi, mi' mi mi mi, |
    mi' mi sol sol sol sol, sol' sol |
    sol mi mi mi mi, mi' mi mi |
    sol\mp sol, sol8 sol'16 sol, sol8 |
    sol'16 sol, sol8 sol'16 sol, sib8 |
    sib16 sib sib8 sib16 sib sib8 |
    sib16 sib sib8 sol'16 sol, sol8 |
    sol'16 sol, sol sib r sib sib8 |
    sib16 sol sol8 r16 sol sib sib |
    sol'8.--->\f sib,16~---> sib dod8.---> |
    mi,16 mi mi8 mi16 mi mi8 |
    dod'16 dod dod8 mi,16 mi mi8 |
    mi mi16 sib' dod dod8 mi,16 dod' sib |

    %%% Quatuor %%%
    sol8-> la'16\mf\leftpizz \pizz re, sol,\leftpizz re' la'\leftpizz re, |
    sol,\leftpizz re' la'\leftpizz re, la'\leftpizz re, |
    sol,\leftpizz re' la'\leftpizz re, sol,\leftpizz re' la'\leftpizz re, |
    sol,\leftpizz re' la'\leftpizz re, la'\leftpizz re, |
    mi,\thumbpizz re' la'\leftpizz re, mi,\thumbpizz re' la'\leftpizz re, |
    mi,\thumbpizz re' la'\leftpizz re, la'8\leftpizz  |
    re,,16 re'\leftpizz re'8 r |

    re,2--\f\CaV r4\fermata \clef treble |
    r4 la''2~\pp\CaV la2 r4 \clef bass |
    <do,,, la'\harmonic mi''>2.~ mi''2 r4 \clef treble |
    \pizz la\p sol fa mi r2 R2 \clef bass |
    \arco sol,,2~\CaV sol4\CaV r2 |

    %%% Air baryton 1 %%%
    <do, si'>2~\pp <do si'>~ do r4 |
    <do si'>2~ <do si'>~ do r4 |
    <solb' fa'>2~ <solb fa'>~ <solb fa'> r4 |
    <do, si'>2-- <do? dod'>4\upbow( <do si'>) |
    \det {<do dod'>8\<( <do si'>) \t { <do dod'> <do si'> <do dod'>} <do si'> <do dod'>\! |
    r8 sol'~\mp} sol16 dod8--( sol16-.) dod4-- r8 |
    r sol~-- sol16 dod8--( sol16-.) mi'4-- r8 |
    \ten <do, do'>2~\p <do do'>4 r16 sol'8-- do16~--( do sol-.) do8~-- do4. r8 |
    \pizz dod,16->\mf la' fa'8 dod, <si' mi>-> | dod,4 r |
    \arco <sol' sol'>2---> r4 |
    \ten re1~--->\f re2. r4 dod'16-> dod-> do8-> |

    %%% Doppio tempo %%%
    re,8\f re re re' | re re, re re' |
    re re, re re' | re re, re re' |
    re re, re re' | re re, re re' |
    re,-. sold16 sold sold8-. re'-. |
    sold,16\ppleggiero sold sold sold sold sold sold sold sold8 r |
    sold16 sold sold sold sold sold sold sold sold8 r |
    sold16 sold sold sold sold sold sold sold sold8 r |
    sold16 sold sold sold sold4 r |
    sold16 sold sold sold sold4 r |
    \st {sold8 sold sold sold r4 |
    sold8 sold sold4 r |
    sold8 sold} r4 |
    r8 sold4--\f\>( fad--) la8-. |
    fa2~--\mp fa lab4 |
    fa2~ fa4 lab2 |
    fa~ fa r4 |
    fa2~ fa r4 |
    fa2~ fa r4 |
    r8 fa4.\upbow\f | mib2-- fad4-- |

    %%% Climax %%%
    re4---> r16 re'8.-> |
    \st {re8 re, re'} \clef treble |
    re'4---> \ind #"détaché" re'16-> dod si sold \clef bass |
    \st {re8 sib} fad16 fa mib do |
    re,8-> r16 re'~-> re4 |
    \st {<re re>8 re, <re' re>} |
    <re re'>4---> \clef treble \st {re''8 si} |
    sold16 fad mib do \clef bass \st {fad,8 dod} |
    re,-> r r <re re'>~->\< <re re'> \st {<re re'> <re re'> <re re'>} |
    sold8--->\! r16 sold8.-> \st {sold8 sold sold} |
    sold4---> r8 re'4---> sold,8-. |
    re2:8 re: |

    %%% Soprano 2 %%%
    re8-> r \pizz la'\mp fad sold4 |
    reb'8 sib do4 fa,8 re mi4 |
    la r2 | la4 r r2 |
    re8 mi si4 fad8 sold |
    red4 r la'8 fad sold4 |
    dod,4 r2 |
    reb'8 sib r sol r fa re4 |
    si'4 r2 si4 r r2 |
    R2. R1
    fad4\p si r8 fad r4 r8 si r4 fad |
    R2. R1
    r8 \arco re-.\p \st {la' fad sold red} |
    \pizz dod->\mp la' fa' la r2 |
    sol,4 r8 mib'-> r4 |
    \arco mi8-. r \st {mi r mi mi r4 |
    dod8 r dod r sib r |
    mi r mi r <sol, re'>\CaV <sol re'>\CaV r4 |
    re'8 r re r si r |
    sib'\p sib r sib r <si mi> r <sold re'> |
    r <sold dod> r <sib mib> r <si mi>} |
    do,,->\thumbpizz \st {<sol'' do> r <do fa>} r4 \pizz do,,8 sol' |
    re' la' r la\> r mi'\! | R1 r2 sib,4 |
    \arco sold--\mp mi'-- red8( lad) sold4-- |
    r8 \pizz sold r4 mi |

    %%% Soprano 1 %%%
    <re sib' re>->\arpeggUp r r2 |
    re'4\p r2 |
    r4 sib8\mp mib fa4 fad,8 si |
    \det {dod4 sold' dod,} dod8 si do4 r re8 mi |
    \det {si4 sold r si sold'} r sold, | R2. R1 R2. R1 R2. R1 R2.
    dod,8->\mp la' fa' la r2 |
    sol,4 r8 mib'-> r4 | R1 R2. R1 R2. R1 R2.
    r8 dod,\p re fa fad la r4 |
    r8 dod, re fa fad4 |
    r8 re mib fad sol4 r | R2.

    %%% Duo %%%
    r8 fa'\p do mib r reb mib, sol |
    r re' sold, si r la' si, red |
    r sib mi sol r fa, sol mi' |
    r dod sol mi' r fad, mi sol |
    r fa si red r lad' sold mi |
    r la mib do r re do lab' |
    r mib reb solb, lab reb, mib4 |
    r8 fa' sol sib |

    %%% Baryton 2 %%%
    \arco <re, re>4--->\downbow\fsubito <re re>--->\downbow <re re>--->\downbow |
    re8-> \st {sold, re' sold, re' sold,} |
    re' si re sib re si |
    sold' re sold re sold re |
    re'-> re, re'-> re, re'-> re, |
    <re re'>-> re re re re re |
    re16( fa, mi mib re4->) \tt {re'16( sib lab sol fa} |
    re4->) \tt {re'16( sib lab fa mib} re4->) |
    dod8-> <re' re>-. r <re re>-. dod,4-- |
    r8 sol' r sol sol sol |
    r sold\< sold fa sold4 |
    si8-.->\! fa4---> |
    \st {re'8\fp sib re sib re sib |
    re si re si re si |
    <do re> <do re> <do re> <do re> <do re> <do re> |
    <dod re> <dod re> <dod re> <dod re> <dod re> <dod re> |
    <re mib> <re mib> <re mib> <re mib> <re mib> <re mib>} |
    <re fad> <re fad> <re fad> <re fad> <re fad> <re fad> |
    <re sold> <re sold> <re sold> <re sold> <re sold>4-- |
    <re re'>--->\sfz r2 |
    r8 \acc {si' mi, fad do mib | re4-- r2 |
    r8 sol, sib do mib fad |

    %%% Boum %%%
    <fad, lad>4\sffz} r2 R2.*2 |
    r8 si--\mp(\downbow si-- si-- si-- si--) |
    do--(\< do-- mib-- mib-- mi-- mi--)\! |
    r fa--( fa-- fa-- fa-- fa--) |
    mi--(\< mi-- la-- la-- lab-- lab--)\! |
    r \simile la la la la la | sib sib dod dod re re |
    r reb reb reb reb reb | do do fa fa mi4 |
    fa,,2.--\mf~ fa2 r4 | sold2.--~ sold2 r4 |

    %%% Contralto %%%
    re4---> r R2 r4 sold''\f\<\glissando <re, re'>\sfz
    \pizz <fad, re'>\mp\arpeggUp |
    <fad re'>\arpeggUp <fad re'>\arpeggUp |
    \simile <fad re'> <fad re'> |
    <fad re'> <fad re'> |
    <fad re'> <fad re'> |
    <mi do'> <mi do'> |
    <mi do'> <mi do'> |
    \arco <red si'>8\mf <red si'> r4 |
    <do la'>---> r R2. |
    r4 sold'8\p sold la4---. r
    r la8 la sib4---. r | R2*2
    \pizz dod,8->\mp la' fa' la r4 |
    sol, sib-> mi-> |
    dod,8-> la' fa' la r4 | r <dod, mi>-> r |

    %%% Grand ensemble %%%
    \arco dod1~\psubito dod sol~ sol2 dod~ |
    dod sol~sol\< sold\! | \ten mi1~ mi2. r4 |
    r2 mi'--\mp~ mi4 sib--~sib8 mi4-- sib8-. |
    mi4-- r8 sold--\mf~ sold fad fa4~ |
    fa2 solb8--\< fa-- solb-- lab-- |
    \ten sib1--\!~ sib2 r8 do,4.-- |
    la2-- r8 mib4-- la8--~ |
    la mib-. la2.--
    sib4--\< la-- sib-- do-- |
    re4:8\fp re,: re': re,: |
    re': re,: re': re,: |
    re':\mf re,: re': re,: |
    re': re,: re': re,: |
    <re' re>:\f <re re'>: <re re>: <re re'>: |
    <re re>: <re re'>: <re re>: <re re'>: |
    r8 <re re'>-> <re re'>-> <re re'>->
    <re re'>-> <re re'>-> <re re'>-> <re re'>-> |
    R2. \clef treble |

    %%% Chute %%%
    \pl {la'2.:32(\mp\< la':)~ la:(\f\> la,:)~ la2:\! la4}
    {
      \harmonics {
        \times 3/4 {la'4\glissando
          mi'\glissando
          la\glissando
          dod
        } \ottava #1
        mi8\glissando
        sol\glissando
        la\glissando
        si\glissando
        dod\glissando
        resd\glissando
        mi\glissando
        resd\glissando
        dod\glissando
        si\glissando
        la\glissando
        sol
        \ottava #0
        \times 3/4 {
          mi4\glissando
          dod\glissando
          la\glissando
          mi\glissando
        }
        la,2
        la4
      }
    } R2*3

    %%% Andante al fine %%%
    R2.*6 \clef bass
    <fa,,\harmonic si\harmonic>2.\pp~
    <fa\harmonic si\harmonic>~
    <fa\harmonic si\harmonic>~
    <fa\harmonic si\harmonic>2 r4 | R2.*7
    <fa\harmonic si\harmonic>2.\pp~
    <fa\harmonic si\harmonic>~
    <fa\harmonic si\harmonic>2 r4 | R2.*14
    r4 <mi' mi'>--->\fsubito <mi mi'>8-.-> <mi mi'>-.-> |
    <mi mi'>4---> r2 |
    <mi mi'>4---> <mi mi'>8-.-> <mi mi'>-.->
    \t {<mi mi'>->-. <mi mi'>-. <mi mi'>-.} |
    <mi mi'>4---> r2 \clef treble |
    \t {r8 mi'--(\upbow si'--)} \t {la--\< mi'-- re--} la'4->\upbow\! \clef bass |
    \ind #"ample" <mi,, mi'>8->--\ff\< <mi mi'>->--
    \t {<mi mi'>->-- <mi mi'>-. <mi mi'>-.}
    \tt {<mi mi'>16---> <mi mi'>-> <mi mi'>-> <mi mi'>-> <mi mi'>->\!}
  }
}