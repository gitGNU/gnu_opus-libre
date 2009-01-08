%------------------------------------------------------------------%
% Opéra Libre -- violoncelle2.ly                                   %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

VioloncelleDeux = {
  #(make-instrument-name 'cello-two "cello" 25)
  \clef bass
}

PrologueVioloncelleDeux = { \VioloncelleDeux
  \relative {

    %%% Introduction %%%
    \partial 4 r4 R2.*2 \clef treble sib''2.\p\<\upbow ~ sib1\glissando
    mi,,2\f\downbow \clef bass |r8 mi,,-- \t {mi--( mi-- mi--)} mi2.~ | mi2 r8 mi--
    \t {mi8--( mi-- mi--)} mi2.~\mp mi2~mi~mi2.~mi2~mi~ mi2.~mi4 mi~mi8 mi\<
    \t {re--( re-- re--)}|
    dod4--->\f r2 | \t { \pizz dod4--\mf re-- mi--\<} \t {sol-- sib-- do--} |
    \arco dod2--->\f r8 sol-. r dod-. r sol | dod4---> dod---> sol8-. dod~--->|
    dod4 r | sol-- dod-- sib8-. dod~--| dod sol-. dod4-- | dod-- sol8-. dod-. r sib-. |
    r dod4\>( sol8) | sib2~--\p sib2 r4 |

    %%% Tempo giusto %%%
    re,8\sfz re'--\p re-- re,-- re-- re'-- re-- re,-- |
    re-- re'-- re'-- re,-- re, re mib re | fa re lab' fa |
    sib lab si dod | dod, r r4 | R2
    re4--\f re'8-. re-. re-. re-. | lab2-- r4 |
    re,4-- r8 re'-. re-. re-. | fad,2.\mp mib do |
    sib'2\< sol4~ sol mi2 | \ten re2.~\f re4 r8 sol'--\ff mi-- re-- |
    \ten dod1~---> dod4 r R2 R2-\fermataMarkup |

    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    R2*2 lab4\p( si fa2) mib2( fad4) do2.~ do2 r4 |
    R2.*2 r2 lab'4\p( sol'2.) R2.
    lab4-.\p sol,\leftpizz r |
    lab'-. sol,\leftpizz r | R2. R4.

    %%% Andantino %%%
    \pizz sol8\p r4 | sol8 r4 | R4.*2
    sol8 r4 | sol8 r4 |
    sol8 r4 | sol8 r4 |
    sol'8 r4 \clef treble |
    %%FIXME: grace synchronization bug
    \acciaccatura s16 red''8 r4 \clef bass |
    r8 sol,, sol, | R4.*14
    \arco solb8\>( mib reb) \ten do4.~\pp do~ do4 r8 |
    solb'8( mib reb) | do4.~ do~ do4 r8 |
    solb'8( mib reb) | do4.~ do4 r8 |
    fad4\< mib8~ mib dod4 |

    %%% A tempo %%%
    re8\sfz r4 | sold8--\mf( si-- dod--) |
    re8\sfz r4 | sold,8\mf( si dod) re( fa sol) |
    lab4-- r8 | lab,4--->\f fa8~---> fa mib4---> |
    \ten re4.~---> re~ re4 r8 |
    mib4( re8) \ten fa4.~ fa~ fa4 r8 |
    fa'4.\mf re\< do si4.~\fmolto si4 r8 |
    \ten sib4.~ sib~ sib~ sib4 r8 | R4.
    si8--\f\>( sib-- lab--) |
    fa4.:32~\mp fa4.:32
    fa16:32\p solb:\< lab: si: dod: re: |
    mi:\mf\> re: dod: si: lab: solb: |
    fa:\mp\< lab: sib: si: dod: mi:  |
    fad:\f\> mi: dod: si: sib: lab: |
    \t {fad16\pp fad fad} \t {sold sold sold} \t {la la la} |
    si8 r4 | fa16\< fa fa fa fa fad fad fad fad fad |
    re4--\f mib-- re-- | fa8.--( lab--) fa8--\>( mib-- re--) | do2\mf r4 |

    %%% Adagio %%%
    R1*2 r2 r8 mi-- \t {mi--( mi-- mi--)} |
    mi1~\p mi1. \repeat tremolo 16 {mi32\pp\>( fa} mi4\!) r |
    R1 r2 r4 \pizz la |
    \arco mi1~\p mi1.~ \repeat tremolo 16 {mi32\pp\>( fad} mi4\!) r |
    R1 r2 r8 sold \t {sold-- sold sold} |
    sib2.\p

    %%% Valse %%%
    sol2.~\pp sol4 r dod~-- | dod2 r4 |
    sol2-- r4 | dod2-- r4 | sol2-- r4 |
    sib4-- r mi,-- r | sol2.~-- sol4 r \clef tenor |
    r8 sold''\pp( fa) r r fa( mib) r r mib( re) r |
    mi4 \ttt {red16\>( mi red mi red mi} red4\!) r \clef bass |
    r4 do,,2--\pp r4 | fad2-- r4 | do2-- r4 | fad2-- r4 |
    do2-- r4 | fad2-- r4 | mi-- r sol-- r |
    <do, si'>2\mf <do si'>4-> <do si'>8-. <do si'>~-> |
    <do si'> <do si'>-. <do si' mi la>4->\< <do si' mi la>-> |

    %%% Vivo al fine %%%
    <re re'>8\sfz re'-. <do re>-. <do re>-. |
    <re mib>-. <re mib>-. <la re>-. <la re>-. |
    \st {<re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <re mib> <re mib> |
    <re mi> <re mi> <re mi> <re mi> |
    <re sol> <re sol> <re sol> <re sol> |
    <re la'> re re re |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib> <re mib> <do re> <do re> |
    <re mib> <re mib> <la re> <la re> |
    <re mib>\> <re mib> <do re> <do re> |
    <re mib>\mp <re mib> <la re> <la re> |
    <re mib> <re mib> <do re> <do re> |
    <re mib>\> <re mib> <la re> <la re> } |
    <re mib>-.\p <re mib>-. r4 |
    <re mib>8-. <re mib>-. r4 |
    re8-. re-. r4 re8-. re-. r4 | re8-. r r4 \pizz re r |
    re, r | R2*7 r4 mi\mp
  }
}

ActeUnSceneUnVioloncelleDeux = { \VioloncelleDeux
  \relative {
    do,,2--\pp( do'--)\CaV fad,2-- r4 |
    do2--( do'--)\CaV fad,4--( fad2--) |
    <do sol'>2~-- <do sol'> fad4.--( fad8~--) fad4 |
    <do sol'>2~ <do sol'> fad2--( fad4--) |
    <do do'>2-- do' fad,8 fad~-- fad2 |
    <do do'>2-- <do do'>-- fad2~--\mp\< fad8 fad |
    fa2\ppsubito do'16( fa, do' la'~ la mib') \t {la,( do, fa,)} |
    fa4-- \simile do'16 fa, do' la' mib' la, do, fa, |
    do' fa, do' la'~ la mi'! \t {la, do, fa,} fa2 |
    do'16 fa, do' la' sol' mi \t {la, do, fa,} \t {fa8 fa fa} |
    lab2\ppsempre mi'16( lab, mi' la do8) \t {la16( mi lab,)} |
    lab4 mi'16( lab, mi' la do) la( mi lab,) |
    reb,( lab' mi' la \ttt {do) la( mi lab,) mi'( la}
    do) la( mi lab,) reb,( lab' \t {mi' la do)} |
    \t {lab,8--\<( mi'-- lab,--)} reb,4-- reb-- |
    do16\p( sol' mi' sib') \t {re8( sib mi,)}
    \t {sol,( mi' sib')} re16( sib mi, sol,) |
    \simile do, sol' mi' sib' \t {re8 sib mi,} \t {sol, do, sol'} |
    \ttt {do,16( sol' mi' sib' mi, sol,}
    \ttt {do, sol' mi' sib' mi, sol,}
    \ttt {do, sol' mi' sib' mi, sol,}
    \ttt {do, sol' mi' sib' mi, sol,)} |
    \ttt {do,( sol' mi' sib' mi, sol,}
    \ttt {do, sol' mi' sib' mi, sol,}
    \ttt {do, sol' mi' sib' mi, sol,)} |
    do,4\downbow do\downbow do\downbow | \t {mib8-- fad--( sold--)} \t {la-- si--( re--)} \t {mi fa sol} |
    <do,, sol' re' sib'>4\downbow do\downbow do\downbow | fad fad \t {fad8( sold fad)} |
    <fad si>4 fad fad8--( fad--) |
    \t {do-- re( mib)} \t {fa-- lab( sib)} \t {si-- dod( mi)}
    <lad, fad'>4\downbow \t {<fad si>8-- dod'-- mi--} \t {fad,-- la-- sol--} |
    \ten <do, do'>1~\fmolto <do do'>2 r4 |

    %%% Ad libitum %%%
    R1 R2. \ten do2.~\pp do4 r r2 | do2.~ do4 r2 |

    %%% Agitato %%%
    \st {re8\fp re mib mib re re mib mib} |
    \simile re4:8 mib: re: mib: re: mib: re: mib: |
    re: mib: re: mib: re: mib: re: mib: |
    re: mib: re: mib: |
    re: mib: re: mib: re: mib: |
    re: mib: re: mib: re: mib: re: mib: |
    re: mib: re: mib: re: mib: |
    re: mib: re: mib: re: mib: re: mib: re: mib: re: mib: |
    re: mib: re: mib: re: mib: |
    re: mib: re: mib: re: mib: re: mib: |
    mib8\mp\downbow( fab) \ind #"serioso" mib\downbow( fab)
    mib\downbow( fab) mib\downbow( fab) \simile mib fab mib fab |
    mib fab mib fab mib fab mib fab mib fab mib fab |
    mib fab mib fab mib fab mib fab mib fab mib fab |
    mib fab mib fab mib fab mib fab |
    mib\< fab mib fab mib fab mib fab mib fab mib fab |
    \ten mi1.\f R1.*2

    %%% Allegro non troppo %%%
    \pizz sib''4\mf r r2 | R2. sib4 mi, r \t { \arco mi8--\mp\<\upbow( si-- dod--\!)} |
    sib8-.-> r r4 r2 | \pizz sib'4\mf mi, r \t { \arco mi8--\upbow( dod-- si--)} |
    sib8-.-> r r4 r2 R1 R2.
    \pizz sib'4 r r2 | R2. sib4 r r2 | sib4\< sib sib sib\! r r2 |
    \arco sol,2.\ff( sib4) r r2 |
    r2 \ttt {sol16\< lab sib dod red mi} \ttt {fad\> mi red dod sib lab} |
    \ttt {sib\< dod red mi fad la} \ttt {si\> la fad mi red dod} sib8\! r r4 |
    R1 \clef tenor |
    re'8\pp\CaV re\CaV re\CaV re\CaV re\CaV re\CaV re\CaV re\CaV | R2.
    re8\pp\CaV re\CaV re\CaV re\CaV re\CaV re\CaV | R2. \clef treble
    \pizz la'4\p la la la R1 la4 la la la R1 |
    \st {\arco fa16 fa r8 fa16 fa r8 fa16 fa r8 fa16 fa} r8 | R1 \clef bass

    %%% Moderato %%%
    la,,4.\mp sib8~ sib2 | la4. sib8~ sib2 |
    la8. sib16~ sib4. la8 | do2.~ do2 r |
    la8. sib16~ sib4~ sib16 la8. | do1~ |
    do2 la4 | do2 r4 \t {la8--\<\upbow( do-- sib--)} |
    \ten mib2.~\mf mib2 r | \ten fa2.~\p fa2 r | mib4\mp( fa2) |
    mib8.( fa16~) fa2~ \t {fa8 mib--\<( fa--)} |
    solb8.\mf( lab16~) lab2 | solb4-- lab4~-- lab16 solb8.-- lab-- mib16~---> |
    mib8.\< fa16~---> fa8 solb~---> solb16 lab8.~--->\! | lab8 fa,->\f solb-> lab-> |
    si8\sfz r r2 | R1 R2*4

    %%% Allegro marcato %%%
    <sib do>4->\ff <sib do>16-. <sib do>-. <sib do>-. <sib do>-. <sib do>4-> r |
    <sib do>4-> <sib do>16-. <sib do>-. <sib do>-. <sib do>-. <sib do>4-> r |
    \st {re,\p re re re} mi2--->( re8) r r4 | R1
    <fa sib mi la>4->\ff <sib dod>16-. <sib dod>-. <sib dod>-. <sib dod>-. <sib dod>4-> r |
    <fa sib mi la>4-> <sib dod>16-. <sib dod>-. <sib dod>-. <sib dod>-. <sib dod>4-> r |
    \st {re\p re sib sib} <sol re' la'>2--->( fad8) r r4 | R1*3
    \st {do'4\p do si si} sib2\>( la8\!) r r4 | R1*2
    \st {do4\p do sib sib} si2\>( sol8\!) r r4 | R1
    r2 r4 \pizz re'\p do( la sol) r fad( mi dod) r r sib'\> la sol\! |

    %%% Agitato %%%
    \arco re'8-.\f fa-. sib-. fa-. re16\<( fa lab sib) reb\>( sib lab fa) |
    re8-.\! sol-. sib-. sol-. re16\<( la' sib do) mib\>( do sib la) |
    re,8-.\! sol-. sib-. sol-. re16( si'dod red) mi( red dod si) |
    re,\mf re re re re re re re re re re re re re re re |
    \st {<la re>8\fp re <re la'> re <la re> re <re la'> re |
    <re re> re <sol la> re <re re> re <sol la> re |
    <re re> re <sol re'> re <re re> re <sol re'> re |
    <re sol> re <do' fa> re, <re sol> re <do' fa> re, |
    <re sol> re <do' fa> re, <re sol> re <do' fa> re, |
    <sol, re'> re' \clef treble <fa' do'> \clef bass re,
    <sol, re'> re' \clef treble <fa' do'> \clef bass re, |
    re \clef treble <fa' do'> \clef bass re, \clef treble <solb' reb'> \clef bass
    re, \clef treble <lab'' mib'> \clef bass re,, \clef treble <la'' mi'>} \clef bass |
    <mi, la>8->\sfz r r4 r1 | R1*2

    R1 R2. R2 \clef treble la'16\p\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV la\CaV |
    fad fad fad fad fad fad fad fad | fad\< fad fad fad fad8-.-> r \clef bass | R2 R1*4
  }
}

ActeUnSceneUnBisVioloncelleDeux = { \VioloncelleDeux
  \relative {
    dod,,2.:32\pp
    dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} |
    dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} |
    dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} |
    dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod8 r |
    \st {dod16\p re mi sib' sol la sib mi dod re mi sol,} |
    \t {lab16-> lab lab} lab8 \t {fa16-> fa fa} fa8 \t {mib16-> mib mib} mib8 |

    %%% Piu vivo %%%
    re4\sfz r r8 do'-- sol--( la--) | fad2--\f \t {sol8--( la-- do--)} |
    re4---> r r8 mib,-- lab--( fa--)| sib4.-- lab-- |
    \ten sol2.~---> sol2 r4 |
    <mib' fa>4.---> <re sib'>---> | re2.---> |
    R2. r4 <la'mi'\harmonic mi'>2~\p <la mi'\harmonic mi'>4. r8\fermata r4 |
    R2. r4 <la mi'\harmonic mi'>2~<la mi'\harmonic mi'>~
    <la mi'\harmonic mi'>8 r\fermata r4 | r2 r4 fad,--\p( sol-- la--) |

    %%% Largo %%%
    do,2\downbow \ten do'~\downbow do
    lab2.~ <do, lab'>2~<do sol'>2.~
    <do la'>2~\> <do la'>4\! r2 |
    <do si'>2\< <do si'>4 |
    <do mib'>4--\mp r r2 |
    R1 R2. R2 r2 r8 lab'4.\pp\upbow |
    \ten sib2.~ sib2 r4 |
    \longHairpins {re2--\mp\> mib~\pp mib r4 } |
    R2*3 R2. R1 R2.
    r4 sib8--\mf( lab--) | \ten sol2~ sol fad2.\mp |
    r2 si4-.\downbow mi,2.\downbow |

    %%% Adagio %%%
    R1*9
    r2 r4 r8 <mi\harmonic mi''>~\pp |
    <mi\harmonic mi''>1~ <mi\harmonic mi''>~ |
    <mi\harmonic mi''>~<mi\harmonic mi''>~
    <mi\harmonic mi''>2. r8 sol~\mp\CaV |
    sol4 sol--( fa-- sold--) |
    mi1~\pp mi~ mi~ mi2 r | R1*8
    r4 <do''mi>--( <do mi>-- <do mi>-- |
    <do mi>--) r r2 |
    R1*3
    R2 \pizz <re, sold>4\mp <sold, red'> <fa reb'> r
    r \arco <dod sold'>\f\downbow
  }
}

InterludeUnVioloncelleDeux = { \VioloncelleDeux
  \relative {
    R1. R1*3 R1. R1 R1.*2 R1*2
    la1\mf la2~ la1( si2 do1~) do4 r2 |
    R2 \ttt {r16 fa\p( mi re la si}
    \ttt {sold la sold fad\< dod red}
    \ttt {do fad red dod sib do)} |
    sol8--->\f\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow |
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <do, sol'>-- sol'-- dod,-- |
    sol'\f\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <sol sol'>\downbow
    sol\leftpizz <dod, sol'>\downbow
    sol'\leftpizz <dod, sol'>\downbow |
    \arco sol'-- <sol sol'>-- sol-- <sol sol'>--
    sol-- <sol sol'>-- sol-- <sol sol'>-- |
    sol <sol sol'> sol <sol sol'> sol <dod, sol'> dod <dod sol'> |
    sol' <sol fad'> sol <sol fad'>
    sol <sol fad'> sol <sol fad'>
    sol <sol fad'> sol <sol fad'> |
    sol <sol fad'> sol <sol fad'> sol <dod, sol'> sol' <dod, sol'> |
    fad2.--->\ff\> sol2\p r4 | R2.*4
    si2.~\pp si~ si~ si~ si8 sib4( lab) si8( |
    sol'2.~) sol~ sol~ sol R2.*2
  }
}

ActeUnSceneDeuxVioloncelleDeux = { \VioloncelleDeux
  \relative {
    %%% Air de la Soprano2 %%%

    R2.*2 | R1*2| R2.*2 | R1*2 | R2.*2|
    re,8(\pleggiero mi) sold4-. la-. re,8 la' |
    r re, mi( sold) la4-. sold8( re) |
    mi4-. sold-. la8( mi) | r sold la( re,) mi4~--|
    mi1~ mi2 r2 | R2.*2 | R1*2 | R2.*2 | R1*2 | R2.*2|
    \ten dod,1~\p dod~| dod2 r4 | R2.|
    dod1~\mp dod~| dod2 r4| r dod-- r |
    mi1~\mp mi2. r4 | dod2.~\mf dod2 r4 |
    \ten sol'1~\f  sol~ | sol2 r4 |
    sol-> re'-> do8->( lab) | sol2.---> r4|
    sol-> re'-> do8( lab) sol4-> | lab8( sol) do( re) r4| R2. |
    sold1~\pp sold~| sold2.~ sold~   |
    sold1~ sold2. r4 | R2.*2 R1*2 R2.*2 R1*2 R2.*2 |
    \clef treble re'1~\pp\CaV re~ re2.~ re~ re1~ re~ re2.~ re2 r4|
    R1*2 R2.*2 R1*2 R2.*2| R1*2 R2.*2 R1|
    R1-\fermataMarkup \clef bass |

    %%% Récitatif %%%

    R2.*2 R1| R2.*3 | R1 R2.*2 r4 r8 mib,4--\downbow\mp lab,8~--\downbow| lab2.~|
    lab8 lab~ \t {lab lab lab} lab4:32\< |
    lab8\sfz r r2 | R2 R2. R1*2 | R2.*4 re,2.~\pp re2. r4 |

    %%% Duo %%%

    \pizz <re sib'>4\mp\arpeggUp
    \simile <re sib'> <re sib'>
    \repeat unfold 13 <re sib'> r8 \arco <re sib'>\>( |
    <reb lab'>-.\!) r \pizz <reb lab'>4\mp
    \repeat unfold 5 <reb lab'>
    \repeat unfold 3 <sib' sol'> r8 \arco <sib sol'>\>( |
    <la fa'>8-.\!) r \pizz <la fa'>4 <la fa'> | <la fa'> r |
    \arco sol\f lab8--( sib--) |
    reb4-- dob-- \simile sib | dob sib lab sib |
    dob sib lab fa | dob' r8 sib r4 |
    \st {si!8\psubito si lad lad} \simile si si |
    lad lad si si lad lad si si |si1\mp\<\upbow
    \ten lab2.~\! lab~ lab4 r2 R1 |

    %%% Piu vivo %%%
    <sol sol'>4--->\fp sol16 sol sol sol lab lab lab lab |
    sib sib sib sib reb reb reb reb mib mib mib mib mi mi mi mi |
    fad\< fad fad fad la la la la si si si si |
    do4--->\f re,---> dod,--\upbow |
    sol'2\ff sol4\downbow sol | dod,4.-> dod8 dod dod |
    sol'2-- r8 sol sol sol | dod,4.-> dod8\downbow \t {dod dod dod} |
    sol'4---> sol2-> r4 |
    dod,4-> r8 sib'-> lab-> si-> |
    sol4---> sol---> sol---> |
    sol-> \tt {si'16( sold fad red dod} \tt {fad red dod do sib} |
    sol4->) r sol |
    si \tt {re'16( dod si sold fad} \tt {sold fad fa mib do} |
    sib4) r sib |
    re r2 | re4---> re---> re---> | re---> r2 | \simile re4 re re | re r2 | re4 re re |
    dod r2 | dod4 dod dod | \ten fa,1~\ff fa2 r4 si~\f\> | si8 do4. dod2\! |

    %%% Tempo giusto %%%
    <re, sib'>4---.\fp <re sib'>---. <re sib'>---. \simile <re sib'> |
    <re sib'> <re sib'> <re sib'> <re sib'> |
    <dod la'> <dod la'> <dod la'> <dod la'> |
    <red si'> <red si'> <red si'> <red si'> |
    \pizz sol r8 \arco sib4--\upbow\f lab-- si8-. |
    <sol sol'>2---> r4 | sol16\mf \repeat unfold 31 sol
    sol8-- r r2 |
    r4 \t {re'8--\upbow si-- dod--} |
    \repeat unfold 28 sold16
    sold8 r r sold--\upbow fad-- la-- |
    fa2\f fa4.\downbow fa8
    <fa fa'>2 | <fa fa'>\downbow |
    r8 la\upbow( sol sib) |
    fad4.-- fad8 | fad4.-- fad8 <fad re'>4--\glissando \clef tenor |
    <fad'' la>8-.-> r r2 |

    %%% Largo assai %%%
    R1 R2.*3 R2
    \ten solb,2.~\pp solb2. r4 |
    r2 \pizz fa'4 mi | mib r \clef bass sib r | re, r r2 |
  }
}

InterludeDeuxVioloncelleDeux = { \VioloncelleDeux
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
    do,8 lab' si, sol' sib, solb' la, fa' |
    do lab' si,\< sol' sib, solb' la, fa' |
    do4\mf mi'-> R2 |
    \arco \ten la,,1~\p la~ la~ la2 r | R2.
    \ten fa1~ fa2 r4 | R2. dod2.\pp r4 R2. dod4-- r |
  }
}

ActeUnSceneTroisVioloncelleDeux = { \VioloncelleDeux
  \relative {
    do,,2.:32~\p do: <do si'>2.:32~\mp <do si'>:~ <do si'>:~ <do si'>:~ <do si'>:\< <do si'>4->\! r2 |
    r4 \pizz la'\mf r r fad r r8 mi-> r fa lab4 |
    \arco sib2.\fp mib,2.:32\pp <sib'la'>2. mib,2.:32
    mi2.\mp fad2.:32~\mf fad:~\< fad4\! r \pizz reb\mf mi r2 |
    r2 \arco sib'4\mp( la2.) r2 sib4\>( la2)\! r4 |

    %%% Lamento %%%
    r2 r4 \pizz re\p si dod | sib2 r1 | R1.*3
    \arco sib2\>( re4\!) r r2 | reb\>( fa4\!) r2 |
    la,2\p( solb4) r2 | lab( fa4) r2 | \simile la! solb4 r2 | la sib4 r2 |
    <mi, red'>2\mp\> <sol fad'>4\upbow\! r |
    \simile <lab sol'>2 <sol fad'>4 r |
    <mi  red'>2 <sol fad'>4 r |
    <mi  red'>2\< <fa   mi'>4\mf r |
    \ten <reb do'>2\f <reb do'>4-- <reb do'>4.---> <reb do'>8-> <reb do'>-> <reb do'>-> |
    <reb do'>4---> <reb do'>8->\ff <reb do'>-> r4 | R2*2

    %%% Tempo I %%%
    \pizz mi4\mp sol r mi sib' r r mi, r |
    \arco la2.:32\sfp la2. sold la lad si~ si4 r8 mi,\f \t {mi\< mi mi} |
    dod'4\sfz r2 R2. \pizz si4\mp r mib, r2 solb4 |

    %%% Tempo II %%%
    r2 r4 mib\p reb mi | \arco do1.~\pp <do sol'>~<do sol'>~
    <do sol'>2 r4 si'2.:32~\pppp si1.:32~ <do si'>2.:32\mp <do si'>4->\sffz r |
    R1 R2. R2
  }
}

ActeUnSceneTroisBisVioloncelleDeux = { \VioloncelleDeux
  \relative {
    R1*3 r4 sib,2--\pp\CaV r4 | R1*2 r4 re,2-- r4 R1 |
    r2 lad'4--\p sold-- fad-- r r2 | R1*6
    fad1~\pp fad~ fad~ fad~ fad2. r4 | R1*8
    si1~\pp si si2-- si-- si-- si-- si-- si-- do,-- do-- do2. R1*7
    fa4\mp( re8) r fa4( re8) r
    fa4( re8) r fa4-- re-- |
    fad1~\p fad~ fad~ fad~ fad~ fad~ fad2. r4 | R1*3
    r4 <sol do\harmonic sol''>2\pp r4 |
    si2\p( sib la1 lab2 sol) fad1~\pp fad~ fad4 r r2 |
    R1*2 do'1\p\> \ten lad~\pp lad~ lad~ lad~ lad~ lad\fermata
  }
}

ActeUnSceneTroisTerVioloncelleDeux = { \VioloncelleDeux
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
    <re sol\harmonic re''>4 r2 \clef treble
    r8 si''\mp\<( sib) sol( fad) mib\glissando |
    mib'\mf( re) fad,( sol) si( sib) re,\>( mib) sol( fad) sib,( si) \clef bass |
    mib,2\mp r4 |

    r mib2~\p mib\> re4~\! re2 r4 |
    r mib2~ mib\> re4~\! re2 r4 |
    r \t {sib'8\p( sol sib} \t {sol sib sol)} \t {sib( sol sib} \t {sol sib sol)}
    \t {si( fad si} | \t {fad si fad} si4) r |
    r \t {sib8( sol sib} \t {sol sib sol)} \t {sib( sol sib} \t {sol sib sol)}
    \t {si( fad si} | \t {fad si fad} si4) r |
    r \t {mib,8\mp( sol mib} \t {sol mib sol)} \t {mib\<( sol mib)} \t {sol( mib sol}
    mib4~\!) mib2 r4 |
    r \t {mib8\mp( sol mib} \t {sol mib sol)} \t {mib\(( sol mib)} \t {sol( si sol)\)}
    \clef tenor \t {si( mib si} | \t {sol\<) mib'( si)} sol'4--\! r \clef bass |
    r8 \pizz si,,\mp\< mi la mib sol\! | r4 r8 do,\< fa sib\! \clef tenor |
    r mi-> r4 la-> | R1 \clef bass

    r4 \arco \ten <si,,? fa'>2~\mp <si fa'> <si fa'>4~-- <si fa'>2 r4 |
    r <si fa'>2~-- <si fa'> <si fa'>4~-- <si fa'>2 r4 |
    r \ten mib2~--\mp mib\> re4~--\! re r2 |
    r4 mib2~-- mib\> re4~\! re r2 |
    r4 <mib sol>2~--\mf <mib sol> <re fad>4~---> <re fad>2 r4 |
    r4
    \repeat tremolo 8 {re32\mf sol}
    \repeat tremolo 8 {re sol}
    \repeat tremolo 4 {red fad} red4 fa2--\f |
    la,2.:32~ la:~ la:~ la2 r4 |
    \pizz <la la'>\mp r2 R2.*4 |
    \arco sib2.~\pp sib~ sib~ sib~ sib2 r4 |
    sib2.~\pp sib~ sib~ sib2 r4 |
    la2.\p\fermata
  }
}

InterludeTroisVioloncelleDeux = { \VioloncelleDeux
  \relative {
    r8 \pizz re,\pp r re r re r re | r re r re r re |
    r4 \arco \ten re2.~\pp re2 r4 R1 R2. R1 R2.
    <sol,dod>4\downbow\p <sol dod>\downbow <sol dod>\downbow <sol dod>8-.( <lab re>-.) |
    <sol dod>4\downbow <sol dod>\downbow <sol dod>8-.( <lab re>-.) |
    \simile <sol dod>4 <sol dod> <sol dod>8 <lab re> |
    <sol dod>4 <sol dod> |
    r8 <mi re'>\f r <mi re'> r <mi dod'> |
    r <mi re'> r <mi dod'> |
    r <mi red'> r <sold mi'> |
    r <sol mi'>\ff r <si sol'> |
    sol16:32\mf mi: sol: lab: si: lab: si: do: |
    mib:\< do: mib: mi: sol: mi: sol: lab: \clef tenor
    si4--->\! mi---> sol8\sffz r r4 |
  }
}

ActeUnSceneQuatreVioloncelleDeux = { \VioloncelleDeux
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    R2. sol4--\mf fa-- mi8-. la,-. r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2

    %%% Agitato %%%
    r4 la8--\mf( re--) sol--( re--) | la-. r r2 |
    <do,sol'>2.:32\fpp <do sol'>8-.-> r r2 | r4 sib''8\mf fa4 fad8 |
    re2~\< re4\glissando fa2.\! mi2.:32\pp\< la8-.->\mp r r4 mib16\<( do) sol( mi) |
    re4--\f r2 | re'8--\f si'-- mi16-- mi,\< mi mi la8--\! la,-- | re4---> r2 |
    re8-- dod'-- fad16-- fad,\< fad fad si8--\! la,-- | re4 r8 r-.\mp\upbow fad,-. si-. |
    mib,4-- r8 reb4--\downbow sol8-. | do4-- r8 fa\upbow la,-. re-. |
    fad,4-- r8 la4--\downbow mib'8-. | lab4-- r8 la-. reb,-. solb-. |
    sib,4-- r8 sib4--\downbow\< sib8-- | mi4->\! r8 mi,-. \t {mi\< mi mi} |
    mi4--\f\downbow mi--\downbow mi--\downbow | r8 sib'4--\<\upbow mi-- sib'8-. |
    lab16\!( sib lab sib) re( mib re mib) sib( re) sib( re) |
    lab( sib lab sib) re( mib re mib) sib8-- sib,-- |
    mi4--\downbow mi--\downbow sib8-. mi~-> | mi4 mi,-- re~---> | re fa2---> |
    dod2~\sfp dod8 r r4 | R2. dod2.\downbow r4 |
    R2. dod2\downbow R2. dod2\downbow R2.
    dod'4--( sol--) | dod2\upbow\> sol4--\! |

    %%% Placando assai %%%
    dod2.--\p(\upbow dod4--) sol2.-- r4 | dod2.--(\upbow dod4--) sol2.-- r4 |
    dod,2(\<\upbow re mib) \ten mi2.~--\p mi2. r4 |

    %%% Andante a piacere %%%
    \pizz fa4\mp r r2 r reb4 r |
    fa r r2 r reb4 r |
    \arco \ten fa1~\mp fa2 reb fa1~ fa2 reb |
    sol2.\mf r4 r8 dod,4--\upbow sol'-- dod,8-. |
    sol'2.---> r4 r8 dod,4--\upbow sol'-- sol8-. |
    dod,8-.\sfz r r4 r2 | R1*6 R2*3 R2.*2

    %%% Poco a poco piu mosso %%%
    \pizz sol'4\mp r sol\< fad\! r2 la4 r2 sol4 r2 |

    %%% A tempo %%%
    \arco
    <do,do'>4--->\f r8 fad4-> do'-> fad,8-. |
    <do do'>4---> r8 fad4-> do'-> fad,8-. |
    <do do'>4-> <do do'>-> r8 fad-.-> r4 |
    R1
    \pizz la8\mp sold16 red dod8 do'16 sol fa8 mi'16 si |
    la4-> r4 r2 | r4 la8\mf mi sol4 | dod,8 sold' si4 fa8 dod mib'4 |
    la,4-> r2 | r16 re,8.-> r4 r2 |
    r8 r16 \arco dod''~\f\<( dod8 red~ red16) fad-.-> sib,-.-> mib,-.-> |
    sol,2~--->\!( sol8 sol--) \t {sol-> sol-> sol->} | sol2---> r8 dod4.-> |
    <re,sol>2---> r4 | sol4\downbow\< sol\downbow sol\downbow | fa2--\ff\downbow fa4-- |
    fa~---> \t {fa8 fa4~--->} \t {fa4 fa8~--->} fa4 |
    r fa~--->( fa8 mib-.) \t {mib-> mib-> fad->} |

    re2.--->\ff r8 re'-. r | sold,2--\f si4~--\<( si8 dod4--) |
    re2--\!  r8 re-. r | la4.-- sib8~--\<( sib8. do16~-- do4) |
    mib2--\! r8 mib-. r| si2~\mf si8 do~--\<( do16 re8.--) |
    fa2~--\! fa4 r8  | fa,2~--\mf fa |
    R2 R4. \ind #"détaché" re16\p fa sib dod fad\< sib, dod fad la dod, fad la |
    re4->\fp re,-- re-- re-- \simile <re mi> <re mi> <re mi> <re mi> |
    <re mi> <re mi> <re mi> <re mi> |
    <re sol>\CaV <re sol>\CaV <re sol>\CaV <re sol>\CaV |
    <re do'> re re re | re,8 re re' re re, re re' re |
    re, re re' re re, re re' re, |
    re'16 re re, re re' re re' re re, re re, re re' re re, re |
    re8 re' re, re' re' re, re,4 | re re8 re re4 r | R1*2 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    r2 \ten sib''4~\pp sib2 r4 R2.
    r2 \simile sib4~sib2 r4 |
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4  R2.
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4 |
    r2 sib4~sib2 r4  R2.
    r4 \pizz sib,\mp\> r r re,\! r |

    %%% Stesso tempo %%%
    la'4\f r r fad' r r | la,-> r r2 |
    la4 r8 red r2 fa4 r | la,-> r r2 |
    la4 r8 mi' r4 fad, r8 mib' r4 | la,-> r r2 |
    R1. R1
    \arco \ten la1.\mp~ la2. r4 |
    \pizz la4->\mp sib8 mib, fa4 fad8 si dod4 re,8 sol |
    la4-> re,8 mi dod'4 fad,8 sold fa'4 sib,8 do |
    la4-> sold8 red dod4 do'8 sol fa4 mi'8 si |
    la4-> mi'8 re fa,4 do8 sib' reb4 lab8 solb|
    la4-> sib8 mib, reb4 fad8 sold fa4 mi8\< si'|
    la4->\! r r2 | R1. \arco \ten do,1\pp~ do1.
    do4-.->\ffsubito r \pizz sib'\mp reb |
    la4-> sold8 red dod4 do8 sol' fa4 mi'8 si |
    la4-> mi'8 re fa4 do8 sib reb,4 lab'8 solb |
    la4-> sib8 mib fa4 fad8 si, dod,4 re8 sol |
    la4-> re,8 mi dod'4 fad,8 sold fa4 sib8 do |
    la4-> sold8 red' fa4 do,8 sib' reb4 re,8\< sol |
    la4->\! r r2 | R1. R1
  }
}

EntracteVioloncelleDeux = { \VioloncelleDeux
  \relative {
    \ten sold,2~\pp sold~ sold sold~ sold sold sold~ sold4 sold~|
    sold4 sold8-- \t {sold16\< fa sol} |
    re4\sfz re''4:16\pleggiero re2:16 |
    re: re: re: re: re: re: re: re: re: re: |
    re: re: re: re: re: re: re: re: re4 r r2 | R1*10
    re,16->\mf re re re re4 r8 re16-> re re re re8-. |
    re16-> re re re re4-- r re,16-> re re re | re4-> r r2 |
    \pizz mib4\mp mi8 la si4 do,8 fa fad4 r r2 |
    r4 sol8 sib lab reb r4 | R1
    \arco re16->\mf re re re re4 r8 re16-> re re re re8-. |
    re16-> re re re re4-- r2 |
    re,4:8\fp re': re,: re': |
    re,: re': re,: re': |
    re,: re': re,: re': |
    re,: re': re,: re': |
    re,: re': re,: re': |
    re,: re': re,: re': |
    re,: re': re,: re': |
    re,4--->\mf re-- re-- re-- \simile re re re |
    re re re re |

    %%% Fugato %%%
    mi2:8\f mi: mi:\> mi: mi:\mp mi4: mi2: mi4: mi2: |
    mi: mi: mi: mi4: mi2: mi4: mi2: mi: mi: mi: mi2: mi4: mi2: mi4: |
    mi2: mi: mi: mi: mi: mi4: mi2: mi4: mi2: mi: mi: mi: |
    mi: mi4: mi2: mi4: fa?2: fa: fad: fad:
    <sol re'>4:8\mp <re' la'>: <sol, re'>: <re' la'>: <sol, re'>: <re' la'> |
    mib,2:8 mib:

    %%% Stretto %%%
    re'2:16\f re: re: re: re4-- r \harmo {\ten <sol, mi'\harmonic >2~\p <sol mi'\harmonic >2.} si'2
    r4 \pizz mi,--\mp sol-- r mi-- |
    \arco sold,--\mp sold-- sol-- sol-- sold-- sold-- sol-- sol--
    <fa re'>-- <fa re'>-- <fa re'>-- <fa re'>-- |
    <mi si'> <mi si'> <mi si'> <mi si'> |
    <re sib'>-.-> r r2 R1*3 |

    %%% Noir %%%
    R2.-\fermataMarkup R2.*4 R2 R2. R1 R2. R2
    R1*5 R1.*4 R1 R2.-\fermataMarkup \clef treble

    r2 \arco la'''4~\pp\CaV la2.~\CaV la~\CaV la~\CaV la~\CaV
    la~\CaV la~\CaV la2\CaV r4 | R2.-\fermataMarkup \clef bass

    %%% Poco più %%%
    R2.*4 R2.-\fermataMarkup

    %%% Andantino %%%
    R1 R2 R1 R2 R1 R2 R1 R2.

    %%% Largo non troppo %%%
    \det {la,,2\mf la la si si si do do do re re re |
    la <la la' la>-> la si <si la' la>-> si |
    do <do sol' la>-> do re <re re la'>->} r \clef treble |
    \ind #"à la corde" la''4\f( sol) fa( mi) fa8\<( mi) fa( sol) |
    la4\!( sol) fa( mi) fa8\<( mi) fa( sol) |
    la4\> sol fa mi fa8 mi fa sol |
    la4\mf sol fa mi fa8 mi fa sol |
    la\mp( la') sol( sol,) fa( fa') mi( mi,) fa( mi) fa( sol) |
    \simile la la' sol sol, fa fa' mi mi, fa mi fa sol |
    la la' sol sol, fa fa' mi mi, fa mi fa sol |
    la\< la' sol4 fa,8 fa' mi4 fa8 mi fa sol |
    la4\f sol fa mi fa8\< mi fa sol |
    la4->\! mi-> r1 \clef bass |
    <mi,,, si' re la'>4-> mi'-> r2 R1 R2. R2
  }
}

ActeDeuxSceneUnVioloncelleDeux = { \VioloncelleDeux
  \relative { \clef tenor
    \pizz la4\mp r r | la r8 la r4 | la la la |
    la r2 | R2 | R2.*2 | R2 |
    r4 << \arco s2 \\ 
    \repeat tremolo 4 { sold16\pp\< lad16 } >> |
    \repeat tremolo 6 { sold16\mf lad16 } |
    \repeat tremolo 6 { sold16\> lad16 } | si4--\! r |
    R2. R2 R2.*2 R2 |
    r4 \repeat tremolo 4 { do16\pp\< red16 } |
    \repeat tremolo 6 { do16\mf red16 } |
    \repeat tremolo 2 { do16\> red16 }
    \repeat tremolo 4 { si16 do } | sold4\! r |
    R2. R2 R2.*2 R2 | R2. | R2. |
    \ttt { mi'8\p[ \cresc mi16 mi mi mi] }
    \repeat unfold 2 { \ttt { re[ re re re re re] } }
    \ttt { re\f[ re re re re re] }
    \ttt { re[ re re re re re] }|

    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {fad16\f fad fad fad fad fad} \t {fad fad fad} r8 r4 |
    r4 r8 \clef treble \t {lab16\f lab lab} \ttt {lab lab lab lab lab lab} \clef bass |
    R1 R2. R2 R2. R1

    %%% Andantino %%%
    \pizz sib,,4\p fa' r2 R1 R2. mi4\mp si' r R2. mi,4 si' lad R2
    R2. si,4 fad' r mid8-- dod si4 r |
    r4 \arco <la mi'\harmonic mi'>2~\p <la mi'\harmonic mi'>2.~
    <la mi'\harmonic mi'>1~ <la mi'\harmonic mi'>2 r4 | r \pizz si'8\mp mi, |
    fad,4 r2 R1 R2. R1 R2. R1
    sib4\mp fa' r | \arco sib,2.\p r4 R2. R1 sib2 r4 R1 R2.
    fad1\pp\upbow fa2.~ fa2. r4 | fad2.~\upbow fad1 fa2.~ fa2. r4 |
    fad2.~\downbow fad2. r4 |

    %%% Entrée de la Contralto %%%
    R2. R1 fad2.~\p fad4 r r2 |
    fa2.~ fa4 r r2 | fad2.\upbow\< fa2\! mib( |
    do4)\thumbpizz \pizz sol'\mp\< mi'8 fad | la4 fad8 la re4\> si,8 fad |
    do4\! mi'8 fad la4 |
    r8 fad, do4-- r2 | r4 r8 dod r sold'\< | fad si r fad' dod si'\! r4 |
    r \arco do,,2\upbow\mp\< reb mib( |
    fad4)\!\thumbpizz r2 | \pizz fa4\mp r r2 | fad4 r2 | fa4 r r2 |
    fad8 fad' r2 | sol,4\< re'8 fa do'4 | re\! r \arco fa,,--\mf |
    sib-- r2 | si4-- r2 | sib4-- r2 | si4-- r2 | mi4-- r2 |
    \ten <fa,\harmonic do''>2.~\mf <fa\harmonic do''>2.~
    <fa\harmonic do''>2 r | mib'2.\>( |
    \ten re1~\pp) re4 r2 | R1 \pizz lab4\mp r2 | la4 r r2 | lab4 r2 |
    \arco \ten sol1~\p sol2. r4 lab\mp\>( sol) fa |
    re2.~\pp re1~ re4 r2 R2 |
    R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisVioloncelleDeux = { \VioloncelleDeux
  \relative {
    R1 R2. R2

    %%% Presto agitato %%%
    <mi,,\harmonic do'\harmonic mi' sol>1*5/4~\pp
    \simile <mi''sol>~\CaV <mi sol>~\CaV
    <mi sol>~\CaV <mi sol>2.\CaV r2 |
    R1*5/4 \clef treble |
    \ten <lab sol'>1*5/4~\mp <lab sol'>2. r2 \clef bass |
    R1*5/4*7
    sib,,1*5/4~\p sib~ sib2. r2 |
    dod,2\mp re( mi4) \ten sol1*5/4~ sol2. r2 |
    \accdet {<do're>4\sfz r2 <do re>4\sfz r | <do re>\sfz r <do re>\sfz r2 |
    <do re>4\sfz r r8 <do re>\sfz r2 | sold,4\sfz} r1 |
    R1*5/4*6
    \ind #"détaché" fad8->\mp sol fad red fad red fad red fad red |
    fad-> sol fad red fad red fad red fad red |
    \simile fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad sol fad red fad red fad red fad red |
    fad\< sol fad red fad red fad red fad red |
    \accdet {<re sol>4\sfz r2 <re sol>4\sfz r | <re sol>\sfz r <re sol>\sfz r2 |
    <re sol>4\sfz r r8 <re sol>\sfz r2 | <solb fa'>4\sfz} r1 |
    R1*5/4 <fa re'>4->\sffz r1 | R1*5/4-\fermataMarkup |

    %%% Boum %%%
    <mi\harmonic do'\harmonic mi' sol>1*5/4\pp~
    <mi'' sol>~\CaV <mi sol>~\CaV
    <mi sol>~\CaV <mi sol>~\CaV
    <mi sol>~\CaV <mi sol>~\CaV
    <mi sol>~\CaV <mi sol>~\CaV
    <mi sol>2.\CaV r2 |
    R1*5/4*2 \repeat tremolo 16 {si32\< re} si4-- |
    \ind #"à la corde" <mib, dob'>2.--->\f \accdet {<fa re'>2 <mib dob'> <fa re'>2. |
    r4 <mib dob'>2. <fa re'>4~\<} <fa re'>2 \accdet {<mib dob'>2. |
    \ten <mi,! sib' mib>1*5/4\! <mib' si'!>2 <mi,! sib' mib>2.} |
    r4 <sib' mib>1-- \ten <lab fa'>1*5/4~--->\f <lab fa'>2. <lab fa'>2---> |
    \ten <sol mib'>1*5/4~ <sol mib'> | r4 \accdet {<sol mib'>2\< <lab fa'>4 <sol mib'> |
    <mi! reb'>1*5/4~\ff} <mi reb'>2. r2 | R1*5/4*5

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
    \arco sol,1*7/4~\mf sol4 r2 r1 |
    R1*7/4 <mi\harmonic do'\harmonic mi' sol>1*7/4~\pp
    \repeat volta 2 {<mi'' sol>~\CaV <mi sol>~\CaV <mi sol>~\CaV }
    <mi sol>1\CaV r2 r4 | R1*7/4

    %%% Presto subito %%%
    \tt {\ind #"détaché" re,,8\upbow\mf re fa re re} \tt {re re fa re re} \tt {re re fa re re} |
    \tt {re re fa re re} \tt {re re fa re re} \tt {fa re fa re re} |
    \tt {fa re fa re re} \tt {fa re fa re re} \tt {fa re fa re re} |
    \tt {fa re fa re re} \tt {fa re fa re dod} \tt {fa re fa re dod} |
    \tt {fa re fa re dod} \tt {fa re fa re dod} \tt {fa re fa re dod} |

    %%% Tempo giusto %%%
    r4 \pizz <fa mib'>\mp\arpeggUp <fad' mi'>\arpeggUp |
    r <fa, mib'>\arpeggUp <fad' mi'>\arpeggUp |
    r <fa, mib'>\arpeggUp <fad' mi'>\arpeggUp |
    r <fa, mib'>\arpeggUp <fad' mi'>\arpeggUp |
    r <fa, mib'>\arpeggUp <fad' mi'>\arpeggUp |
    r <fa, mib'>\arpeggUp r <sib mib>\arpeggUp r <sib mib>\arpeggUp |
    si8 fad'8 si,4 | si8 fad' si,4 |
    dod8 la' dod,4 <dod la'>\arpeggUp |
    re8 la' re,4 <dod re la'>\arpeggUp |
    fa8 do' fa,4 red | \arco sold,--\upbow\mf \det {fad la |
    fa2~} fa8 r4 | mi2~-- mi4 r |
    \accdet {<mi dod'>4\ff <mi dod'>8.} <mi dod'>16-. |
    <mi dod'>8.---> \st {<mi dod'>16 <mi dod'>8} |
    \accdet {<fad dod' la'>2 r4 |
    <mi dod'>4 <mi dod'>8.} <mi dod'>16-. |
    <mi dod'>8.---> \st {<mi dod'>16 <mi dod'>8} |
    <do sib' sol'>2---> r4 |
    <mib reb'>8-.-> <mib reb'>8.---> \st {<mib reb'>16 <mib reb'>8 <mib reb'>} |
    \accdet {<la mib'>4 <la mib'>8.} <la mib'>16-. |
    \accdet {<la mi'>8.\< <la sol'>} |
    <la la' la>4\sffz \pizz sib8\p mib, fa4 |
    r dod8 mi re4 | sold8 fad sol4 do8 la | si4 mi,8 dod red4 |
    \arco \ten sol2.~--\mp sol2 r4 | sol2.~-- sol2 r4 | sol2.~-- sol2 r4 |
    sol2 r4 sol2 r4 r \det {si2\upbow sold2.\mp} R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    \pizz mib8\mf sib' r4 fad'8 si r4 |
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

ActeDeuxSceneDeuxVioloncelleDeux = { \VioloncelleDeux
  \relative {
    R1.*4 \clef treble la'1.~\pp\CaV la4\CaV r r1 | R1*2 \clef bass
    re,2.~\CaV re8 r r16 re,,8--\f fa16 r16 fad8.-- |
    \det {re4-> re16\< mib fa lab sib8\! re,} |
    \ttt {re16\<( mib fa) lab( sib si) } dod8--\! mib,-- \ttt {\simile fa16 lab sib si dod mi}|
    fad8 lab, \ttt {sib16 si dod mi fad sol } la8 si, |
    \ten re,1.~--\mf re1 r2 |

    R1. R1*2 si'2.~\pp si8 r r16 si8--\f re16 r16 red8.-- r4 |
    r16 \acc {mi, dod re do mib |
    si'4--} r8 r16 \st {dod\p dod re sold, sold sold4} |
    r8 \simile dod16 dod re8-- sold,-- dod16 dod re8 <sol, re'>16 <sol re'> <re' la'> <re la'> |
    r8 si16 si si si si si fad'8-- si,-- si16 si si si |
    r8 si16 si si si si si <fad' dod'>8-- si,-- si16 si si si |
    si si si si \det {si8 fad' si, fad'} si,16 si si si |
    si\< si si si si8-- fad'-- si,4--->\ff la8--\> do-- |

    \ten sold2.~--->\mf sold1 r2 | R1*2
    \pizz fa4\mp r2 | fa4 r2 | fa4 r2 | fa4 r |
    fa r red \arco \ten mi2.~\mp mi2 r4 |
    \pizz do4 r |

    r16 \arco la'->\upbow \acc {fad sol fa lab |
    mi4--} r8 \st {<la re>16\mp <la re> <la re> <la re> sol8} <sol re'>16 <sol re'> <re'la'> <re la'> |
    mi,8-> <si' re>16 <si re> <re la'> <re la'> sol, sol
    <re' la'> <re la'> sold, sold <re' la'> <re la'> <re la'> <re la'> |
    mi8-> <la re>16 <la re> \det {<la re>8 mi, <re' sol> mi,} <re' la'>16 <re la'> <re la'> <re la'> |
    mi,8-> <re' sib'>16 <re sib'> \det {<re do'>8 mi, <re' la'> mi,} <la re>16 <la re> <la re> <la re> |
    mi8 <fa' la>16 <fa la> <fa si>8 mi, <fa' do'> r16 \acc {la, fad sol fa lab} |
    \st {<mi si'>4-> r8 \ind #"scherzando" dod\p} <mi si'>4-- \st {dod8 do} |
    <mi si'>4 r8 mi | r16 \st {sib'\pp la do dod sol fa lab} |
    mi4 r \t {mi re fa} | \ten dod1~\mf dod2 r4 |

    R1. R1 R1. \ten <sol' re'>1.~\p <sol re'>2 r4 | R1 \clef treble
    la''2.:32~\pp\CaV la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV
    la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV la2.:~\CaV la1:~\CaV
    la4 r2 R1 R2. \clef tenor r2 r4 \pizz <fa, mi'>8\mf <fa mi'> |
    <mib re'>4 r <fad mi'>8 <fad mi'> | <mi! re'>4 r r2 | R2. \clef bass

    <la,la'>16\f <la la'> <la' la> <la la> <la la> <la la> <la, la'> <la la'> |
    la2:16
    <la la'>16 <la la'> <la' la> <la la> <la la> <la la> <la, la'> <la la'> |
    la2:16 la4-- |
    mib8\mf reb \ind # "détaché" fad16 mi fa sol sib8 lab reb16 si do re |
    fa8\< mib lab sol do4\! la4:16-- |
    la,1:16 |

    <la sold'>4---> la'8\upbow\< sold la | \acc {sold\! sold la r4 |
    sold,8 sold la r4 | sold'8 sold la r4 |
    <la, sold'>4--} r r8 | \dwnb {la4 la r8 | sold4} r r8 |
    <la sold' la>4---> r \st {re8 | re mib} r4 r8 |
    \dwnb {<sold, re'>4 <sold re'> r8 | <la re>4} r r8 |
    \acc {dod dod do} r4 | r8 \accdet {fa4 fa | sol,} r r8 |

    R1*2 lad4->\sffz r r2 | r4 \pizz mi\mp sol r | r fad mi r |
    R1 \arco red2--\p \repeat tremolo 8 {red32 mi} |
    \repeat tremolo 16 {mib fa} |
    \repeat tremolo 16 {mib\< fa} |
    <re' dod'>4\sfz r2 | r8 \pizz sold,\mp r4 |
    R1*2 R2.*4
    r4 dod r | r la r | R2. |

    \arco la8-.\p r \st {mib r sold r re r |
    dod r sol' r <do, do'> r |
    fa' r si, r mi r |
    mib, r la r | re, r sold} r \clef tenor |
    r16 mi''\pleggiero sold mi r mib sol mib |
    r re fad re r reb fa reb |
    r do mi do r si red si |
    sib8 \clef bass \pizz <re, sib'>\mp\arpeggUp r <re sib'>\arpeggUp |
    r \simile <re sib'> r <re sib'> |
    r <re sib'> r <re sib'> |
    r <re sib'> r <re sib'> |
    \arco dod, \pizz dod' \arco sol,-.\p r |
    \st {do, r fad r | si r fa r | sib r mi, r |
    R2 r8 la16\pp la sold8} r | R2
    r8 \pizz <re' sib'>\mp r <re sib'> |
    r <re sib'> r sold | <sib re>4-> r |
    R2*2 re,4 r dod r mib r | R2 \clef treble

    \arco la''2.(\pdolce sol fa mi) fa4.( mi fa sol) la4( mi) r |
    R2.*9
  }
}

ActeDeuxSceneTroisVioloncelleDeux = { \VioloncelleDeux
  \relative {
    %%% Larghetto %%%
    R4.*9
    \ten la,4.~\pp la~ la4 r8 R4. |
    dod4.~ dod~ dod8 r4 |
    fa,4.~ fa~ fa~ fa4 r8 | R4.*3
    la4.~ la4 r8 | R4.*2
    do4.~ do8 r4 | mi4-- r8 |
    \pizz dod,16->\mp sold' mi' la r8 |
    re,, fa'-> r |
    dod,16-> sold' mi' la r8 |
    re,, si'-> r |
    fad sold'8 r \clef treble |
    \arco mi'16\pp mi mi mi sold sold |
    la( la,) mi' mi mi8 \clef bass |
    \pizz dod,,16->\mp sold' mi' la r8 |
    re,, dod'-> r |
    dod,16-> fad sid red r8 |
    \arco \ten <do, sol' re'>4.~\p <sol' re'>4 r8 |
    \pizz dod,16->\mp sold' mi' la r8 |
    sol, si-> r |
    dod,16-> sold' mi' la r8 |
    sol,8 re'-> r |
    \arco \ten <si lad'>4.~\p <si lad'>4 r8 | R4.
    \pizz dod,16-> sold' mi' la r8 |
    r <sold, mi'>-> r |
    r <re sib' re sib'>\p\arpeggUp |
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
    dod16-> sold' mi' la
    r8 <sold, mi' do'>\arpeggUp |
    r <sold mi' do'>\arpeggUp |
    si-> red16 do' | r8 si,-> red16 do' r8 |
    r \arco <sold, mid' dod'>--\mp |
    r <sold mid' dod'> |
    r \pizz <sold mid' dod'>\p\arpeggUp |
    r <sold mid' dod'>\arpeggUp |
    r <sib fa' sib>\arpeggUp |
    r <sib fa' sib>\arpeggUp |
    r <sib fa' sib>\arpeggUp | R4
    r8 <sib mi la>\arpeggUp |
    r <sib mi la>\arpeggUp |
    r <sib mi la>\arpeggUp r |
    mib, sib' mib, sib' mib, sib' | R4
    sib8\pp <fa' do'> sib, <fa' do'> sib,4 |
    sold16->\mp red' sol mi' r8 |
    re,, si'-> r |
    sold16-> red' sol mi' r8 |
    re,, sib'-> r |
    sold16-> red' sol mi' r8 |
    r \arco sold,,16-.\mf \st {sold la8} |
    r \pizz sol\mp sib |
    fad16-> si mi la r8 |
    do,, si'-> r |
    fad16-> si mi la r8 |
    do,, si'-> r |
    fad si r |
    fa16-> si mi la r8 |
    re,16-> sol do fa r8 |
    \arco \ten mib,,4~\mf mib~ mib~ mib~ mib~ mib~ mib8 r |
    r \pizz <sib' re sib'>\mp\arpeggUp |
    r <sib re sib'>\arpeggUp |
    <sold dod sold'>->\arpeggUp r | R4
    r8 <sib re sib'>\mf\arpeggUp |
    <sold dod sold'>->\arpeggUp r | R4
    r8 <sib re sib'>\mp\arpeggUp |
    sold <dod, sold' mi' do'!>\arpeggUp
    r <dod sold' mi' do'>\arpeggUp |
    r <dod sold' mi' do'>\arpeggUp |
    r <dod sold' mi' do'>\arpeggUp |
    \arco \ten <do sol' re'>4~\mf <sol' re'>~<sol re'>8 r |
    r \pizz <do re>\mp r <do re> <do re>4 |
    <si sol'> <si sol'> <si sol'> |
    R2.-\fermataMarkup R2.*6

    %%% Interlude %%%
    R2*2
    \arco fa2~\p fa~ fa4 si~ si2~ si2 |
    fa2~ fa4. si8~ si2. |
    fad2~ fad4 r16 do8.~ do4 r8 r16 fad~ |
    fad2 r16 do'8.~\< do4~ do4. dod8~\! |
    dod2 r8 |
    sol16\p sol sol' sol, sol sol sol' sol, |
    sol sol sol' sol, sol sol sol' sol, |
    sol sol sol' sol, sol sol sol' sol, |
    sol sol sol' sol, mi mi mi' mi, |
    mi mi mi' mi, mi mi mi' mi, |
    mi mi sol sol sol' sol, sol sol |
    sol mi mi mi' mi, mi mi mi' |
    sol,8\mp sol'16 sol, sol8 sol'16 sol, |
    sol8 sol'16 sol, sol8 sib16 sib |
    sib8 sib16 sib sib8 sib16 sib |
    sib8 sib16 sib sol8 sol'16 sol, |
    sol8 sol'16 sib, r sib sib8 |
    sib16 sol sol8 r16 sol sib sib |
    sol'8.--->\f sib,16~---> sib dod8.---> |
    mi,8 mi16 mi mi8 mi16 mi |
    dod'8 dod16 dod mi,8 mi16 mi |
    r mi mi sib' dod8 dod16 mi, dod' sib |

    %%% Quatuor %%%
    sol8-> la'16\mf\leftpizz \pizz re, sol,\leftpizz re' la'\leftpizz re, |
    sol,\leftpizz re' la'\leftpizz re, la'\leftpizz re, |
    sol,\leftpizz re' la'\leftpizz re, sol,\leftpizz re' la'\leftpizz re, |
    sol,\leftpizz re' la'\leftpizz re, la'\leftpizz re, |
    mi,\thumbpizz si' re\leftpizz si mi,\thumbpizz si' re\leftpizz si |
    mi,\thumbpizz si' re\leftpizz si re8\leftpizz  |
    re,16 re'\leftpizz dod'8--\f r |
    dod,,2 r4\fermata | R2.*6 R2*2 R2.

    %%% Air baryton 1 %%%
    <do! sol'>2~\pp <do sol'>~ do r4 |
    <do sol'>2~ <do sol'>~ do r4 |
    <do reb'>2~ <do reb'>~ <do reb'> r4 |
    \pl {si'2 fad4^\upbow( si)} {sol2--\CaV s4 sol\CaV} |
    fad8--\<( <sol si>--) \t {fad-- <sol si>-- fad--} <sol si>-- fad--\! |
    r8 sol~--\mp sol16 dod,8--( sol'16-.) dod,4-- r8 |
    r sol'~-- sol16 dod,8--( sol'16-.) mi4-- r8 |
    \ten <do do'>2~\p <do do'>4 r16 sol'8-- do,16~--( do sol'-.) do,8~-- do4. r8 |
    \pizz dod16->\mf sold' mi'8 dod, <lad' red>-> | dod,4 r |
    \arco <sol' sol'>2---> r4 |
    \ten re1~--->\f re2. r4 la'16-> la-> sold8-> |

    %%% Doppio tempo %%%
    re8\f re' re re, | re re' re re, |
    re re' re re, | re re' re re, |
    re re' re re, | re re' re re, |
    re-. sold16 sold sold8-. re'-. |
    sold,4-- r sold16\ppleggiero sold sold sold |
    sold4 r sold16 sold sold sold |
    sold4 r sold16 sold sold sold |
    sold4 r sold16 sold sold sold |
    sold4 r sold16 sold sold sold |
    sold4 r \st {sold8 sold |
    sold4 r sold8 sold |
    sold4 sold8 sold} |
    r8 sold4--\f\>( fad--) la8-. |
    fa2~--\mp fa lab4 |
    fa2~ fa4 lab2 |
    fa~ fa r4 |
    fa2~ fa r4 |
    fa2~ fa r4 |
    r8 fa4.\upbow\f | mib2-- fad4-- |

    %%% Climax %%%
    re4---> r16 re8.-> |
    \st {re8 re' re,} |
    re'4---> \clef treble \ind #"détaché" re''16-> dod si sold \clef bass |
    \st {re8 sold,} fad16 fa mib do |
    re,8-> r16 re~-> re4 |
    \st {re8 <re' re>8 re,} |
    <re' re'>4---> \clef treble \st {re''8 si} |
    sold16 fad mib do \clef bass \st {fad,8 dod} |
    re,-> r r <re re'>~->\< <re re'> <re re'>-. <re re'>-. <re re'>-. |
    sold8--->\! r16 sold8.-> \st {sold8 sold sold} |
    sold4---> r8 re'4---> sold,8---. |
    re2:8 re: |

    %%% Soprano 2 %%%
    re8-> r \pizz la'4\mp sold8 red dod4 do'8 sol fa4 mi'8 si |
    la4 r2 | la4 r r2 |
    re,4 si'8 la fad4 red r la' sold8 red |
    dod4 r2 | r8 sib' do sol r4 re'8 mi |
    si4 r2 si4 r r2 |
    R2. R1
    fad4\p si r8 fad r4 r8 si r4 fad |
    R2. R1
    r8 \arco re-.\p \st {la' fad sold red} |
    \pizz dod->\mp sold' mi' la r2 |
    sol,4 r8 re'-> r4 |
    \arco sold,8-. r \st {sold r sold sold r4 |
    fad8 r fad r fa r |
    sold r sold r <sol re'>\CaV <sol re'>\CaV r4 |
    fa8 r fa r mi r |
    re'\p re r la' r <fad si> r <re sold> |
    r <re sold> r sib' r <re, la'>} |
    do,->\thumbpizz sib''-. r <sol do>-. r4 \pizz do,,4 |
    sol'8 re' r re\> r la'\! | R1 r2 sib,4 |
    \arco sold--\mp mi'-- red8( lad) sold4-- |
    r8 \pizz sold r4 mi |

    %%% Soprano 1 %%%
    <re sib' re>->\arpeggUp r r2 |
    re'4\p r2 |
    r4 sib\mp fa8 lab solb4 reb lab''-- reb,-- |
    reb, do'8 sol r fa re4 |
    si'4-- sold-- r si-- sold'-- r sold, | R2. R1 R2. R1 R2. R1 R2.
    dod,8->\mp sold' mi' la r2 |
    sol,4 r8 re'-> r4 | R1 R2. R1 R2. R1 R2.
    r8 dod,\p re fa fad la r4 |
    r8 dod, re fa fad4 |
    r8 re mib fad sol4 r | R2.

    %%% Duo %%%
    la4\p r8 lab' sib, reb r do |
    fa, re' r mi fad la, r lab' |
    reb, sib r do, re' fa r si, |
    sib reb r si la fad' r do |
    re fa r lab reb, sib r si |
    fad la r sol fa re' r mi |
    do la si4 mi8 si la sib mi, sol fa' do |

    %%% Baryton 2 %%%
    \arco <re re>4--->\downbow\fsubito <re re>--->\downbow <re re>--->\downbow |
    sold,8-> \st {re' sold, re' sold, re'} |
    sib re si re sib re |
    sold, sold' re sold re sold |
    re-> re' re,-> re' re,-> re' |
    <re, re'>-> re re re re re |
    re,4---> re'16( lab sol fa re4->) |
    \tt {re'16( sib sol fa mi} re4->) \ttt {re'16( sib la sol mi re}
    dod8->) <re' re>-. r <re re>-. dod,4-- |
    r8 sol' r sol sol sol |
    r sold\< sold fa sold4 |
    si8-.->\! fa4---> |
    \st {sib8\fp re sib re sib re |
    si re si re si re |
    <do re> <do re> <do re> <do re> <do re> <do re> |
    <dod re> <dod re> <dod re> <dod re> <dod re> <dod re> |
    <re mib> <re mib> <re mib> <re mib> <re mib> <re mib>} |
    <re fad> <re fad> <re fad> <re fad> <re fad> re |
    <sold, re'> <sold re'> <sold re'> <sold re'> <sold re'>4-- |
    <re re' re>--->\sfz r2 |
    r8 \acc {si' mi, fad do mib | re4-- r2 |
    r8 sol sib do mib fad |

    %%% Boum %%%
    <fad, lad>4\sffz} r2 R2.*2 |
    \ten sold2.--\mp~ sold2 r4 |
    mi2.--~ mi2 r4 |
    do2.--~ do2 r4 |
    si'2.--~ si2 r4 |
    fa2.--\mf~ fa2 r4 |
    sold2.--~ sold2 r4 |

    %%% Contralto %%%
    re4->-- r R2 r4 sold''\f\<\glissando <re, re'>\sfz
    \pizz <fad, re'>\mp\arpeggUp |
    <fad re'>\arpeggUp <fad re'>\arpeggUp |
    \simile <fad re'> <fad re'> |
    <fad re'> <fad re'> |
    <fad re'> <fad re'> |
    <mi do'> <mi do'> |
    <mi do'> <mi do'> |
    \arco <red si'>8\mf <red si'> r4 |
    <do la'>->-- r R2. | R2*4
    \pizz mi'8\p mi fa4 R2
    \pizz dod,8->\mp sold' mi' la r4 |
    sol, mib-> si'-> |
    dod,8-> sold' mi' la r4 | fad, fa-> la-> |

    %%% Grand ensemble %%%
    \arco dod,1~\psubito dod sol'~ sol2 dod,~ |
    dod sol'~sol\< sold\! | \ten mi1~ mi2. r4 |
    r2 mi--~ mi4 sib'--~sib8 mi,4-- sib'8-. |
    mi,4-- r8 sold--\mf~ sold-- fad fa4~ |
    fa2 solb8--\< fa-- solb-- lab-- |
    \ten sib1--~\! sib2 r8 do4.-- |
    la2-- r8 mib4-- la8--~ |
    la mib-. la2.--
    sib4--\< la-- sib-- do-- |
    re4--\f re4:8\p re,: re': |
    re,: re': re,: re': |
    re,:\mf re': re,: re': |
    re,: re': re,: re': |
    <re, re'>:\f <re' re>: <re, re'>: <re' re>: |
    <re, re'>: <re' re>: <re, re'>: <re' re>: |
    r8 <re re>-> <re re>-> <re re>->
    <re re>-> <re re>-> <re re>-> <re re>-> |
    R2. \clef treble |

    %%% Chute %%%
    \pl {la'2.:32(\mp\< la':)~ la:(\f\> la,:)~ la2:\! la4}
    {
      \harmonics {
        \times 3/4 {la'4\glissando
          mi'\glissando
          la\glissando
          dod\glissando
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
        sol\glissando
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
    R2.*5 \clef bass
    <mi,,\harmonic do'\harmonic>2.\pp~
    <mi\harmonic do'\harmonic>~
    <mi\harmonic do'\harmonic>~
    <mi\harmonic do'\harmonic>~
    <mi\harmonic do'\harmonic>2 r4 | R2.*5
    <mi\harmonic do'\harmonic>2.\pp~
    <mi\harmonic do'\harmonic>~
    <mi\harmonic do'\harmonic>~
    <mi\harmonic do'\harmonic>~
    <mi\harmonic do'\harmonic>2 r4 | R2.*14
    r4 <mi' mi'>->--\fsubito <mi mi'>8-.-> <mi mi'>-.-> |
    <mi mi'>4---> r2 |
    <mi, mi'>4---> <mi mi'>8-.-> <mi mi'>-.->
    \t {<mi mi'>-.-> <mi mi'>-. <mi mi'>-.} |
    mi2.---> \clef treble |
    \t {r8 mi''--(\upbow si'--)} \t {la--\< mi'-- re--} la'4->\! \clef bass |
    \ind #"ample" <mi,,, mi'>8--->\ff\< <mi mi'>--->
    \t {<mi mi'>---> <mi mi'>-. <mi mi'>-.}
    \tt {<mi mi'>16---> <mi mi'>-> <mi mi'>-> <mi mi'>-> <mi mi'>->\!}
  }
}
