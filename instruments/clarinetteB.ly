%------------------------------------------------------------------%
% Opéra Libre -- clarinetteB.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

ClarinetteBasse = {
  #(make-instrument-name 'clarinet-bass "clarinet" 25)
  \clef bass
  \revert Staff.InstrumentName #'stencil
}

ClarinetteDeux = {
  #(make-instrument-name 'clarinet-bes "clarinet" 25)
  \clef treble
  \revert Staff.InstrumentName #'stencil
}

PrologueClarinetteDeux = { \ClarinetteDeux
  \relative {

    %%% Introduction %%%
    \partial 4 r4 R2.*3 R1 | \ten mi,2~--\fp mi4 r | mi'2 r4 |
    fa,2~\p\<( fa\> mi2.~\!) \ten mi4 r R2 | \tt {sol16\mf( lab dob sib dob} \ten re2~)|
    re4 r | R2 \tt {fad,16( sol la do sib} mib4.\>) red8 |
    mi4\p r | r r8 \t {si16\<( re mi}|
    la2--->\f) r4 | r mi r sib'\p( | solb'2) r4 | R2 r2 mi,8-> mi~->|
    mi2\> | \ten mi2.~\p mi2~ mi4 r \t {sib4--\mp la8~--} | \t {la8 sol4--} mi4~-- |
    mi2~ mi4 r2 |

    %%% Tempo giusto %%%
    re8->\f r r4 | R2*2
    mib4\mp( fa lab sib dob sib8) r |
    \t {dod4\mp( mi fad} \t {sol\< la do} |
    re4\f) r2 | r8 sib,\mf\<( do mib solb si | re4--\!) r2 |
    r8 mi,,\mf( sol la sol do) | r mi,( sol la do la) |
    r la( do mib fa solb) | r mi( sol la do mib |
    fa4\< lab si | re4\f) r8 dod4.~-- dod4 r8 si4.-- |
    la2.---> r4 | R2*2 R2-\fermataMarkup

    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2. lab,,2.\p( sol2 fa4 |
    \ten re2.~) re2. R2.*3
    lab''4---.\pp sol,---. r | lab'---. lab'---. sol,---. r si---. si'---. | R4.

    %%% Andantino %%%
    R4.*2 r8 lab---.\pp r sib---. r si---. R4.*5
    mib8-.\p reb-. sib-. | fab-. r4 | R4.*3
    r8 si,,-.\p( sol'-. do-. sol-. si,-.) |
    r si-.( sol'-. do-. sol-. si,-.) |
    r re-.( sol-. sib-. sol-. re-.) |
    r re-.( sol-. sib-. sol-. re-.) |
    r do-.( mi-. lab-. mi-. reb-.) |
    r reb( solb la re fa |
    mi4.~\p) mi8 r mib,( solb lab la sold la si |
    re4.~\p) re8 r sol,( lab sib reb mib mi fad |
    la4.~\p) la8 r si,( | dod mi fad la\< do dod |

    %%% A tempo %%%
    re8\sfz) r4 |
    \t {fad,,,16\mp\<( si mi} \t {lab sib mib} \t {fa sol do} |
    re8\sfz) r4 |
    \t {si,,16\mp( mi la} \t {reb mib lab} \t {sol do fa)} |
    r re,,,( lab' re lab' re) |
    sib'16-.\mf sib-. sib-. fa-. r8 | sib16-. sib-. sib-. fa-. r8 |
    sib16-. sib-. sib-. fa-. r8 |
    dod16-.\mp dod-. dod-. re,-. r8 | dod'16-. dod-. dod-. re,-. r8 |
    dod'16-. dod-. dod-. re,-. r8 | dod'16-. dod-. dod-. re,-. r8 |
    si''16-. si-. si-. si,-. r8 | si'16-. si-. si-. si,-. r8 |
    si'16-. si-. si-. si,-. r8 | si'16-. si-. si-. si,-. r8 |
    si'16-. si-. si-. si,-. r8 | si'16-. si-. si-. si,-. r8 |
    sib'16\f sib sib lab, r8 | sib'16 sib sib lab, r8 |
    si'16 si si fa, r8 | si'16 si si fa, r8 |
    reb''16 reb reb lab, r8 | mi'16\> mi mi do, r8 |
    si'16 si si sol, r8 | mi'16 mi mi\! r r8 |
    R4.*6 r4 re,8\p( |
    mi fa sol sib\< do reb mib mi) |
    la'2\f( fad4) re\>( si lab solb\pp) r2 |

    %%% Adagio %%%
    R1*3 r2 r4 mi,\p( lab2\< sol4 si2\mp\> sib4 |
    re2.\pp) r4 r2 | R1*2 r2 r4 mi,\p( |
    la2\< sol4 do2\mp\> sib4 | mib2.\pp) r4 r2 |
    R1*2 \t {mi,8\mp\<( si' mi} si' la\mf\> mi' re |

    %%% Valse %%%
    la'2\p) r4 r sib2--\pp | r4 mi,2-- |
    r4 sib--( sib--) r lab--( lab--) | r sib--( la--) |
    fa( fa8-.) r mi4--( mib8) r | sol,2.~\p sol4 r |
    R2.*2 R1
    r2 reb''4--\p( reb--) | r re( reb) |
    r lab--( lab--) r solb( fa) | r fa--( fa--) |
    r reb--( reb--) r sib-- r la-- |
    r4 fad'8-.\f re'4-> fad,8-. re'4-> |
    la'4.-> re,8-. la'4-> |

    %%% Vivo al fine %%%
    re,4--->\sfz r R2*3 r4 r8 sol,,-.->\mp la-> r r4 |
    r8 do->\mf\< do-> fa-> sol->\! r r4 | R2*22
    r4 mi'8->\pp r |
  }
}

OuvertureClarinetteDeux = { \ClarinetteDeux
  \relative {
    r2 \tttt {mi'16 re fa sol reb si' lab} |
    \t {sib,8 lab' do} re16 si lab fa solb4 |
    \tt {si,16 reb lab' la, fa'} \tt {mi fa do' reb, la'}
    \tt {lab la mi' lab, la} | sib4
  }
}

ActeUnSceneUnClarinetteDeux = { \ClarinetteDeux
  \relative {
    R2*2 R2. R2*2 R2. |
    r8 do\p \t {do-- do do~} do2~ do r4 |
    r8 do \t {do-- do do~} do2~ do r4 |
    \t { fa,4\p( solb sib} do2~) do8 r r2 |
    \t {solb4( sib do} mib2~) mib8 r r2 |
    \t {la,8\p( mib' si')} \t {solb'( si, mib,)} \t {la,4( mib'8} si'8) r |
    \t {la,8( mib' si')} \t {solb'( si, mib,)} la,8 r |
    \t {\simile la8 mi'! sol!} mib'8 r  \t {mi,! sol do} \t {solb' do, mi,} |
    \t {la,8 mi'! sol!} mib'8 r \t {mi,! sol do} |
    \t {fa,\mp lab mi'} \t {la! mi lab,} \t {do,4 lab'8} reb8 r |
    \t {fa, lab mi'} \t {la mi lab,} fa r |
    \t {do4 lab'8} reb r \t {fa, lab mi'} \t {la mi lab,} |
    \t {do,4 lab'8} reb r \t {do, lab' mi'} |
    \ten do'2~\p do8 r fa,4\<( | do'2\mp) fa,4\<( | sib2~\mp) sib8 r reb,4\<( | sib'2\mf) solb4(
    do\p) r2 | \ttt {r16 red,,\p( mi fad la si} do2~) |
    do8 \t {mi16(\< fa sol} sib8-.)\! r r4 | R2.*2
    r16 la,-.\mf mib-. la-. re-. la-. mib-. la-. re4-- |
    \tttt {re,16\pp( mib re mib re mib re}
    \t {mib re mib} sib'32 dob sib dob
    \ttt {sib16\< dob sib dob sib dob)} |
    \ten sol'1~\f sol2 r4 |

    %%% Ad libitum %%%
    R1 R2.*2 sib,,2.--\pp r4 | R2.*2

    %%% Agitato %%%
    \ten lab1~\f lab2 r | R1*2
    fa'4-.\mf sol2-- fa4-. sib2->( re,4) r |
    re2.--\mp r4 r2 | R1*2 si16\mf( re8) si16-.\< fad'2.->\! r2 |
    R1*2 r2 r4 r8 fad-. | si8.( solb'16\<) sib2.->\! r2 |
    R1*2 \ten mib,,,1\mp r2 | R1.*2 r4 mi'!2--\mf r4 | r mi2-- r4 r2 |
    sol'1.\f\>( fa1\pp) r2 | R1.

    %%% Allegro non troppo %%%
    R1 R2. R1*3
    mib4-.\mp r r2 | r8 mib-. r mib-. r2 |
    R2. r8 mib-. r mib-. r2 |
    R2. r8 mi-. r mi-. r2 |
    R2. r8 mi-.\mf r mi-. r2 |
    sib2--\f r4 | sol2.\mf r4 | R1*2
    la2.--\mp r4 | R1 la2-- r4 | R2.*2 R1*8

    %%% Moderato %%%
    R2.*2 R1 R2. R1 R2. R1
    \ten do,2.~\pp do2 r | \ten do2.~ do2 r |
    \ten do2.~ do2 r4 r8 do'--\p | do16-. do-. fa-. sib,-. do2-- |
    do,4.-- fa8-- solb16( do) reb( do) fa( sib) do,8-- |
    la'16\mp( fa) reb-. fa,~-- fa8 la'16( fa) reb-. fa,8-- mi'16-. |
    fad\<( sold) la( sold) la8\!( mib) | do-> r r2 | R1
    R2*3 r4 r8 \st {mib |

    %%% Allegro marcato %%%
    sol-- r reb-- r sol,-- r mib'-- r sol-- r reb-- r sol,--} r r4 |
    R1*2 r2 \ttt {r16 sib,\pp\<( mib fad si re} \tt {sol) mib( mi fa fad} |
    \st {sol8--\f) r lab,--\p r do,-- r mib'-- r | sol-- r lab,-- r do,--} r r4 |
    R1*2 r2 r4 mib8.-.\p mib16 | solb2--( mib8) r mib8.-. mib16 |
    solb2--( mib8) r r4 | R1 r2 r4 mib8.-. mib16 solb2--( mib8) r mib8.-. mib16 |
    solb2--( mib8) r r4 | R1 r2 r4 \st {re'8\pp( r do r la r sol) r fa' r |
    mib\p( r re r do) r fa r | mib\mp( r re r do) r r4 |
    mib8\p( r re r do) r r4 | r do,8\pp( r si r la)} r |

    %%% Agitato %%%
    re2.\mf r4 | r re-- r re-- | r2 r4 \t {sold'8\mf\<( si dod)} |
    re4---.\f do,2---> r4 | re4-.->\p r r8 \st {sol, r4 | sol8 r r4 r2 | R1
    r4 sib8 r r sib r4 | r8 sol r4 r2 | r8 mi} r4 r2 | R1
    mib'8-.->\sfz r r4 r1 | R1*2
    \st {mib8\pp la, do sol mib' la, do sol |
    do sol sib sol do sol} |
    re'\p \t {la16( re sol)} do8-. \t {la,16( re sol)} |
    do8-. \t {la,16( re sol)} do8-. \t {re,16( sol la)} |
    dod8-. \t {re,16( sol la)} re8-. \t {mi,16( sol la)} |
    re8 \t {mi,16( sold la)} re8-.-> r | R2 R1*4
  }
}

ActeUnSceneUnBisClarinetteDeux = { \ClarinetteBasse
  \relative {
    R2.*3
    \ttt {fa,,16\pp( mi re) dod( re mi)} \ttt {fa( mi fa) dod( re mi)} \ttt {fa( mi re) dod( re mi)} |
    fa8-- r \ttt {fa'16( mi re) si( re mi)} fa8-- r |
    \ttt {re16( dod re) mi( fa sol)} lab8-- r \ttt {re,16( dod re) mi( sol la)} |
    sib8-- r \ttt {re16( do la) sol( fad mi)} \ttt {dod( si lad sold fa mib)} |

    %%% Piu vivo %%%
    re4->\f r r2 | fad2.\mf\<( |
    re4->\f) r r2 | sib'4.--\mf\< lab4.-- |
    sol2.~\ff sol8 r sol4.---> r8 |
    sol4---> r reb---> sol2---> r4 |
    \t {sol16\f\>( lab sib } reb8~ reb2~) \ten reb2.~\pp reb4. r8\fermata r4 |
    \t {sol,16\mf\> lab sib} reb8~ reb2~ \ten reb2.~\pp reb2~ reb8 r\fermata r4 |
    R1 R2

    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 solb,-.\mp | reb2-- r4 solb-. | reb2-- r4
    \ten lab'2~\mf lab r |
    R2.*2 R2*2
    r2 r8 solb-.\mp | reb4-- r8 solb-. | reb2-- |
    \t {sol!16\< lab sib} reb8->\f r4 | r8
    \t {la16\< sib do} mib8->\! r r4 |
    r2 r8 \t {lad,16\< si dod} mi8->\! si'-> |
    R2. R2*3 R2.*3

    %%% Adagio %%%
    R1*2
    do,2~\p( do4. sold8~)|
    sold2 r4 do~(|
    do2~ do8 sold4.~)|
    sold4 r sol2~ |
    sol4. dod8~dod2|
    r4 sol2.~ | sol8 dod~dod2 r4 |
    sol1~sol2 r4 sib~ |
    sib2~sib8 sol4.~|
    sol4 r sib2~sib4. sol8~sol2 |
    r4 sib sol2~sol4 r r2 |
    mi1~mi2. r4 |
    R1*5 \clef treble
    r2 r4 r8 la'' |
    r la( sol si) r si( sol la) |
    r \simile la sol si r si sol la |
    r la sol si sol2~sol4. r8
    fa4 fa8 la | sol4 r r2 |
    r4 fa--\pp fa-- sol-- |
    R1*2 R1-\fermataMarkup |
    R2*4
  }
}

InterludeUnClarinetteDeux = { \ClarinetteBasse
  \relative {
    fad4\mp( red8) r fad4( red8) r fad4( red8) r |
    R1*2
    sol4( mib8) r sol4( mib8) r | R1.
    sol4( mi!8) r r2 |
    sold4( mi8) r sold4( mi8) r sold4( mi8) r |
    sold4( mi8) r sold4( mi8) r sold4( mi8) r |
    sold4( mi8) r sold4( mi~) mi r r2 |
    sold4\mp( mi8) r sold4( mi8) r sold4( mi8) r |
    sold4( mi8) r sold4( mi8) r sold4( mi8) r |
    sold4( mi8) r sold4( mi8) r | sold2-- r4 |
    R2-\markup "Prenez la Clarinette" R2. \ClarinetteDeux
    sib'1~\mf sib2 r8 fa4-- re8( |
    sib'1) r2 | la,4-- r8 mi16\mf( fa mi\> re si8\!) r4 |
    la'4.--\mp r8 la4.-- r8 | la4( mi8) r la4( mi8) r sib'4( mi,8) r |
    mib'4 r8 \tt {do32( fad mi la sol} do4.~) \t {do16 la( do} |
    la2.)--->\f\> |
    \ten sol2.~\pp sol4 r2 | fad16( sol fad re do re) fad( sol fad re do re |
    fad4) r2 | R2.*3 |
    fad16( sol fad re do re) fad( sol fad re do re |
    fad4) r2 | R2.*7
  }
}

ActeUnSceneDeuxClarinetteDeux = { \ClarinetteDeux
  \relative {
    %%% Air de la Soprano2 %%%
    R2.*2 R1*2  R2.*2 R1*2  R2.*2 R1*2  R2.*2 R1*2  R2.*2
    re,8\p( fad sold si) sold( si sold fad) | re4-- r r2 |
    re8( fad sold si) r4 | r2 sold'8\<( la |
    sold\mf\> mi) re( si) sold( si sold fad) | re4--\! r r2 |
    R2.*2 |
    sold'8\p( la) sold( mi) re4 sold8( la) | sold( mi) re( mi) sold4-. r |
    r2 re8( mi) | re( si) sold4-. r |
    r fa!8( la si la) fa( mi | fa la) si( la) fa4 r |
    r2 la8( si | re fa) sol( si) sol4 | R1*2 R2.*2 |
    \ten lab'1~\f lab2. r4 | R2.*2 | \ten lab1~\f|lab2.-. r4 |
    R2.*2 R1*2 | sold,,8\p( re' sold, re) r re( | sold4) r2 |
    \repeat unfold 5 {R1*2 R2.*2} |
    r4 sold'8\p( la sold mi re mi |
    sold2) r4 sold8( la | sold mi re mi sold4~)| sold2 r4 |
    r4 re'8\pp( mib re sib lab sib | re2.) r4 | r lab2 |
    r4 lab8( sib re mib | re2.) r4 |
    r2 r4 si!8\ppp( dod | mid fad mid2~)| mid2 r4 |
    si8( dod mid fad mid2~)| mid4 r do!2\ppp\fermata |

    %%% Récitatif %%%

    R2.*2 R1 R2.*3 R1 R2.*4
    \repeat tremolo 12 {mib32\p\< mi!} | mib8\sfz r r2 R2 R2. R1*2 R2.*4
    r8 re,,---.\pp \repeat unfold 6 {r8 re---.} |

    %%% Duo %%%

    sib'8---. sib---. \simile sib sib \repeat unfold 14 sib r
    \repeat unfold 13 sib r sib( \ind #"senza cresc." do)
    \repeat unfold 12 do do(
    mib) \repeat unfold 3 mib r
    \repeat unfold 2  mib mib(
    solb) \repeat unfold 7  solb r4 | r8
    sol,!--\mf \repeat unfold 2 sol--
    si---.\p si---. si---. si---. \simile si si
    \repeat unfold 4 si---. r
    \repeat unfold 13 si r
    si\< si si
    \st {mi\mp mi
    \repeat unfold 2 {sold sold lad lad} sold sold lad r
    red\mf\< red mi mi red red mi mi} sol!2.~\! sol~ sol4 r2 |
    r4 \t {mi8( red dod)} r la,4.--\fsubito |

    %%% Piu vivo %%%

    sol'4\sfz r2 | R1 R2.*2 R1
    r16 re'-.\mf\< re-. re-. sol4--\! fa-- | lab8-> re,~-> re4 r2 |
    r16 re-.\< re-. re-. sol4--\! fa-- | lab8-> re,~-> re4 r2 |
    r16 mi-.\< mi-. mi-. la4--\! sold--| la8-> re~-> re4 r  | R2.
    r16 mi,-.\< mi-. mi-. la4--\! sold--| la8-> re~-> re4 r  |
    r16 la-. la-. la-. re4-- do-- | re8->\< sol~->\! sol4 r  |
    R2.*2 r16 mi,32->\mf( re mi8) r2 |
    R2.*2 r4 r16 re32->( mi) r8 r4|
    r r8 sol-.-> r4 |

    %%% Poco allargando %%%
    \t {re,--\ff( re-- re--)}
    \t {re--( re-- re--)}
    \t {re--( re-- re--)}
    \t {re8-- r sold4--( sold--)}
    \t {sold--\>( sold-- sold--)}
    \t {la--( la-- la--\!)} |
    %%% Tempo giusto subito %%%
    sib-> r r2 |
    r4 sib,8-.\mp sib-. r2 |
    r4 sib8-. sib-. r2 |
    r4 si8-. si-. r2 |
    r8 si-. si4-. r2 | R2.
    r8 si\mp( lad'2 si'4) |
    r8 si,,( lad'2 si'4~| si8) r r2 | R2
    r8 re,,\mf( dod'4~)| dod8 do( si'4) |
    r8 re,,( dod'4.) do8( | si') r r2 |
    r8 mi,\mf( la) mi
    r  la,( mi') la,
    r  mi'( sol) re
    r  la( mi') si
    r  mi( la) mi
    r  la\f( re) la
    r  mi( mi') la, r mi( | mi'-.) r r2 |

    %%% Largo assai %%%
    r4 re,2.\p( dod4.) r8 dod4( do4.) r8 do4( si4.) r8 r4 | r si-- |

    %%TODO: trouver doigté alternatif pour cette note
    \ten sib2.~\pp | sib2. r4 | r2 la4---. lab---. sol---. r dod,---. r re---. r r2 |
  }
}

InterludeDeuxClarinetteDeux = { \ClarinetteBasse
  \relative {
    fad4\mp( red8) r r2 |
    fad4( red8) r r4 |
    fad4( red8) r | R2. R2 |
    r4 sol4( mib8) r | R2
    sol2( mib4) r |
    sol2( mib4) r |
    sol2( mi!4) r |
    sol2( mi4) r |
    sol2( mib4) r |
    sol2( mib4) r |
    sol2( mi!4) r |
    la,,8\p( mi' si' dod re2) |
    la,8 mi'( si' dod re2) |
    la,8 mi'( si' dod \ten re2~) | re4 r r2 | R2.
    fa,,8( do' la' si mi2) |
    fa,,8( do' la'4) r |
    R2. sold'2\pp( mi4) r |
    R2. sold4-- r |
  }
}

ActeUnSceneTroisClarinetteDeux = { \ClarinetteDeux
  \relative {
    R2.*4 do'8-.\mf la4-- do8-. la4-- r r8 la4---> solb8-. mib2.~--\< mib8\! r r2 |
    R2.*8 r2 \t {la'8-.\f la-. la-.} re4-- do-- re8-> la~-> la4 r2 |
    R2.*5

    %%% Lamento %%%
    R1.*6 R1*5/4
    sol,2\p\>( mi4\!) r2 |
    solb2\>( mib4\!) r2 |
    \simile sol2  mi4 r2 |
    sol2 lab4 r2 |
    reb2\mp( sib4) r |
    do2( la4)r |
    reb2( sib4) r |
    sol2\<( re'!4\!) r|
    mib2\mf mib4~-- mib8 do,~-> do sib'4.\<( la'\f) r8 r4 |
    R2*2

    %%% Tempo I %%%
    R2.*8 sib,,2.\p re\< do8\sfz r r2 |
    R2.*3
    R1.*3 r2 sol4\mp( lab2 mib'4~)| mib2. r4 r2 |
    r2 r4 \ten re'2.~\mf re~re8 r r4 |
    \ten mib,1\p mib4 r2 | r4 fa--
  }
}

ActeUnSceneTroisBisClarinetteDeux = { \ClarinetteBasse
  \relative {
    fad4\mp( red8) r fad4( red8) r |
    fad4( red8) r fad4( red8) r |
    fad4( red8) r fad4( red8) r | R1 r2
    fad4( red8) r
    fad4( red8) r fad4( red8) r | R1 r2
    fad4( red8) r fad4( red8) r
    r2 | R1*11 r2 r4
    lad16\mf( dod8) lad16 |
    \tt {fa--\mp( lab sib reb mi)} sol8 r
    \tt {fa,16--( lab sib reb mi)} sol8 r
    \tt {fa,16--( lab sib reb mi)} sol8 r
    \tt {\simile fa,16 lab sib reb mi} sol8 r
    \tt {fa,16 lab sib reb mi} sol8 r
    \tt {fa,16 lab sib reb mi} sol8 r |
    fad,4--\sf r r2 R1
    fad'4\mp( red8) r fad4( red8) r |
    fad4( red8) r fad4( red8) r |
    fad4( red8) r16 sol,
    fad'4( red8) r |
    fad~-- \t {fad16 si,,( sol'} red'8) r
    fad4( red8) r16 mi, |
    fad'4--( red16) r \t {sol,( sib do}
    fad8.--) fa32( mi red8) r |
    fad4( red8) r
    fad16---. sol,~-> \t {sol si,( lab} red'8) r |
    fad16( mi, lab,32 sol' sib do red8) r
    fad4( red8) r
    fad4( red8) r fad4( red8) r |
    fad8(\> la16) r red,8( fad16) r do8( mib16) r sol,8(\! sib16) r |
    dod,8 r r2 |
    r4 fad2\p fad4\<( mi2\> fad~)\! fad2. r4 | R1*2
    \tt {fad16--\pp( sol la do re)} r4
    \tt {fad,16--( sol la do re)} r4 |
    \tt {fad,16--( sol la do re)} fa8 r
    \tt {\simile fad,16 sol la do re} fa8 r |
    \tt {fad,16 sol la do re} fa8 r
    \tt {fad,16 sol la do re} fa8 r |
    \tt {fad,16 sol la do re} fa8 r
    \tt {fad,16 sol la do re} fa8 r |
    fad,2.\mp r4 | R1*6
    r4 fad\mp( do8) r r4 |
    r  fad( do8) r r4 |
    fad( do8) r fad4( do8) r |
    R1*7
    do'2\p\> la~(\! la4) r r2 |
    R1*5-\markup "Prenez la Clarinette" \ClarinetteDeux
    r2 sol'\mp( do1)\fermata
  }
}


ActeUnSceneTroisTerClarinetteDeux = { \ClarinetteDeux
  \relative {
    r4 r16 lab'-.\mf( lab-. lab-. | reb2--) |
    r4 r16 lab-.( lab-. lab-. |
    reb8-- lab16-. lab-. reb2--) |
    r4 r8 lab16-.( lab-. |
    reb8-- lab16-. lab-. reb8.--) lab16-. |
    lab-.( lab-. lab-. lab-.) r8 reb4-- la!16-.( la-.|
    re!8->) r r2 |
    R2.*3-\markup "Prenez la Cl. Basse" \ClarinetteBasse
    fad,8\p( fa) re( dod) fad,( fa) sib\(( la) dod,( re) fa,( fad)\) |
    mib2-- mib'8\(( re) lad( si)\) mi,2-- la''8\(( sold) fa( mi,)\) |
    re8-- r r4 r2 | R1*3 R2.

    %%% Poco meno %%%
    \longHairpins {
      \ten re2.~--\pp re2 r4 |
      re,2.~-- re2 r4 |
      R2.
      re2.~-- re2 r4 |
      R2.
      re2-- r4 | \clef treble
      r8 si'''\mp\<( sib sol fad mib\> re'2\!) r4 |
      r8 si\<( sib sol fad mib\> re'2\!) r4 |
      r8 si\p\<( sib sol fad mib\> re'2\!) r4 |
    }
    re,4-- r2 \clef bass
    r4 \t {r8 mi\p( dod} \t {sold) fa( do)} |
    r8 sold\mp( la do dod mi) | \ten fa,2.~-- fa4 r2 |
    r8 sold( la do dod mi) | fa,2.~-- fa4 r2 |
    r8 sold( la do) la( sold)| dod,2.~-- dod4 r2|
    r8 mi\<( fa la sold4\!) | dod2.~--\p dod4 r2 |
    r8 mi,( fa sold mi4) | la2.~\mp la~ la2 r4 |
    \ten la2.~\mf la~ la4 r2 | R2.*3
    r2 r8 \st {la''16\p\>( mi sib fa si, fa'\!)} |
    fad,2.~-- fad~ fad2 r4 |
    fad2.~-- fad~ fad2 r4 |
    fa2.~-- fa4 r2 r4 dod'2-- |
    fa,2.~-- fa4 r2 r4 la2--\mp\< |
    dod,2.~--\! dod4 r2 r4 la'2--\< |
    dod,2.~--\! dod4 r2 | \clef treble
    mib''4\<( sib' si\!) |
    r8 sib\f( si fad sol re mib) sib'( si fad sol re |
    mib) sib'\>( si4\!) \clef bass r8 sib,( si4\mp) sib,-- r |
    R2.*15
  }
}

InterludeTroisClarinetteDeux = { \ClarinetteBasse
  \relative {
    sol,4\mf( mi8) r r4 r | sol( mi8) r r4 |
    sol8( mi) sol( mi) sol( mi) sol---. lab---. | sol( mi) sol( mi) sol---. lab16---. r |
    \simile sol8 mi sol mi sol mi sol lab | sol mi sol mi sol lab16 r |
    sol8 mi sol mi sol mi sol lab | sol mi sol mi sol lab16 r |
    sol8 mi sol mi sol mi sol lab | sol mi sol mi sol lab16 r |
    sol8 mi sol mi sol lab | sol mi sol lab16 r |
    sol8\f mi sol mi sol lab | sol mi sol lab16 r |
    sol8\f( mi) sol( lab) | si\<( lab) si( do\!) | R2*4
  }
}

ActeUnSceneQuatreClarinetteDeux = { \ClarinetteDeux
  \relative {
    \partial 4 r4 fa'--\mp mi--( re8-.) dod4-- r16 do( sib la) |
    sol( la sol fa) mi( fa mi re) dod( si la si dod8-.) r |
    fa'4-- mi--( re8-.) do4-- r16 fad,-.\mp fad-. fad-. |
    sib4--( sol-- la--) r2 |
    R2*2 R2-\fermataMarkup

    %%% Allegretto comodo %%%
    R1 R2. R1*2 \t {sol4\pp( la sol} \t {la sol la} \t {sol la sol} |
    la2.) r4 | \t {fad4( sol fad} \t {sol fad sol} |
    la) r \t {fad2( sol4~} \t {sol fad2)} | \t {sol2( fad4} \t {sol fad sol)} |
    \t {sib,( dob sib} \t {dob sib dob)} |

    %%% Agitato %%%
    re8-.-> r r2 | R2.*4
    r8 la'--\mf( la-- la--) re4~--(| re do--) do8--( do-- | \ten fa2.~--) fa8 r r2 |
    re,4--->\mf r4 r16 la'-.\f la-. la-. | re4-- do-- re8-> la~-> | la4 r r16 si-. si-. si-. |
    mi4-- re-- mi8-> si~-> | si4 r2 |
    mib,,2.\p( mi2) r4 | fad2-- sol4 lab--\mp lab-- lab-- |
    mi16\<( sol la do) re( mi sol la) do( re mi sol) |
    la8--->\f r r4 la32-> la16.~ la16 la-. |
    la8-.-> r r4 la8-.-> r la8..-> la32 la8-.-> r r4 |
    sib8-.-> r r4 sib32-> sib16. r8 sib8..-> sib32 sib8-.-> r r4 |
    si!8-.-> r r si-.-> r4 | mi,2--\f re4-- mi2-- re4-- |
    mi8-> r mi,16\p( re mi re mi re mi re mi re mi re) |
    \t {mi8( re mi} \t {re\> mi re} mi8\!) r |
    mi16( re mi re mi re mi re) mi( re mi re mi re mi re) |
    \t {mi8( re mi} \t {re\> mi re} mi8\!) r |
    mi16( re mi re mi8) r | mi16( re mi re mi re mi re mi8) r |
    fa16( mib fa mib fa8) r | fa16( mib fa mib fa mib fa mib fa8) r |
    \t {fad8( mi fad} \t {mi fad mi)} | \t {fad\>( mi fad} \t {mi fad mi} fad8\!) r |

    %%% Placando assai %%%
    r2 si~\pp si2. r4 |
    r2 si~ si2. r4 |
    si,2\>( sib la \ten lab2.~\!) lab r4 |

    %%% Andante a piacere %%%
    r2 dod\p\<( re\> mib4\!) r |
    r2 dod\<( re\> mib4\!) r |
    r2 fa\<( fad\> sol4\!) r |
    r2 fa\<( fad\> sol4\!) r |
    r2 dod\mf( re4. mib) fad2\>( re lab4. mib'\!) |
    R1 r2 \longHairpins {re,~\p( re4 re\< fa2\> re2.\!) } r4 |
    R1*3 R2*3 R2.*6
    r8 sol~--\f\< \t {sol sol sol} \t {sib-- sib sib} \t {do-- do do\!} |
    r  reb~--\< \t {reb reb reb} \t {mib-- mib mib} \t {solb-- solb solb} |
    \t {lab-- lab lab} \t {la-- la la} \t {la la la\!} r4 |
    R1 R2. R1 R2. R1 R2. R1 R2.
    la8.--->\f la16 la8-. la~-> la la-. la4-- |
    r16 la la8~-- la la~ la la-> la-> la-> |
    \t {dod,--->( fa la~)} \t {la la4--} la8-> la-> |
    r la-> \t {la4--->\< la---> la--->} |
    sol4.--->\! r8 sol4-- | si---> r si8.-> si16 si8-. si~---> |
    si4 si-- r8 si4-- re,8-. |
    \ten reb2.~--\ff reb8 r4 | \ten sol,,2~\mf sol8 r |
    re16\<( la' si mi) la( re) | \ten lab'2~\f lab8 r4 |
    \ten sol,,2~\mf sol8 r \ttt {re16\<( sol do) fa( sib mib)} |
    lab2~\f lab8 r4 | sol8-.\sfz r r \t {r16 mi\mp( re} | mi8-.) r r4 |
    r4 \ten si,~\p si4.~ si2 mib'--\mf\< | R2\! R4. R2.

    re'4->\f r r2 | \ten re,,1\pp( mib fa solb2.) r4 |
    r2 solb4.\p\<( lab8~lab4 si2 mi4~\! mi) la--\mf\<( reb,-- lab-- |
    re4--->\!) r r2 | R1*3-\markup "Prenez la Cl. basse"
    \ClarinetteBasse R2 R2.*2 R2 R1

    %%% Piu lento %%%
    \ten re,,,2.~\p re2 r4 | R2.
    \simile re2.~ re2 r4 | re2 r4
    \t {r8 \ottava #1 sib'''\p( solb}
    \t {fa \ottava #0 dob sib} \t {re,\> reb mib,} |
    \ten re2.~\!) re2 r4 |
    re2.~ re2 r4 | R2. re2 r4 |
    \t { \ottava #1 re'''8\mp( sib la} \t {fad mi re}
    \t { \ottava #0 si\> sib fad} |
    re,2.~\!) re2 r4 | R2.*2
    re2 r4 | R2.*2

    R1. R1 R1. R1 R1.
    r2 si'4->\mf r | R1. re8(\mp mi4) re8 \ten fa2--~fa1.( solb2.) r4 |
    R1.*5 r2 fa,4-.\sfz r | R1. R1 R1. do'4-.\sfz r r2 |
    R1.*5 r2 si4-.\sfz r | r2 r4 do-.-> reb-.-> r | r2 la4---> r |
  }
}

EntracteClarinetteDeux = { \ClarinetteDeux
  \relative {
    R2 \t {r4 mi'8(\pdolce} sold4~) sold2 |
    \t {r4 sol8(} si4~) si2 |
    r8 mi,--\< sold-- sol-- si4->\! \t {r4 mi,8--} |
    \t {sold\<( sol si~)} si\! r |
    \t {r mi,\<( sold)} \t {sol( si sib)} |

    %%% Vivo subito %%%
    re4\sf r r2 | R1*6
    \ten re,,1~\p re~ re4 r r2 |
    R1*4 r4 mib--\p r mib-- | r mib( mib-.->) r |
    r re--\mp r re-- r re,-- r2 | R1*2
    r2 sold16( dod) re-. fad-. sold4~-- | sold r r2 |
    R1*3 r4 fa8.--\mf fa16 la4-- r r \st {sold8\mp sold la4} r |
    r2 r4 si~\p si re-.-> r2 | R1*2 |
    la,8\mp\<( sib) sib( la) dod( re) re( dod) fa\>( mi) mi( mib\!) r \st {re\p re re |
    r mib mib mib r mi mi mi r fa fa fa r fad fad fad r sol sol sol} r2 |
    R1 re'16\f re re re re4-- re16 re re re re4--
    re16 re re re re4-- re16 re re re |
    re4-- re16 re re re re4-- re16 re re re |

    %%% Fugato %%%
    re4-- r r2 | R1-\markup "Prenez la Cl. Basse" \ClarinetteBasse R2.*2 R2
    R1 R2.*2 R1 mib,,2\mp( do8) r r4 | R2. re2( si8) r |
    R1 mib2( do8) r r4 | R2. mib2.( mi4) r r2 | R1
    \ten mi,2.~\p mi~ mi4 r8 la'~\mp( la4. sol8~ | sol la4. \ten sol2~\) sol2 r4 | R2.
    r4 \t {lab8\mf( fa) mib-.} \t {re( do) la-.} \t {lab\<( sol) fa-.} |

    %%% Stretto %%%
    re4--->\f re'---> r re---> r re---> r mib---> |
    re---> \st {sib'8\p sib sib sib sib sib |
    do do do do dod dod dod dod |
    mi mi mi mi mi mi mi mi} |
    mi4--\mf r sib-- sib-- mi-- r sib-- sib-- |
    si-- r si-- si-- dod-- dod-- dod-- dod8-. dod-. |
    re4-. si,16\mp( la) sold-. la-. sold4-- r | R1*3

    %%% Noir %%%
    R2.-\fermataMarkup R2.
    fad''4\mp( red8) r r4 | r2 fad4( red8) r r2 | R2
    fad4( red8) r r4 | r fad4~( fad8) r r4 |
    r4 r8 red->\mf r4 | R2 R1 sol,2\p( mi4) r R1*2
    sol2( mi4) r R1.*2 r2 sol,( mi4) r R1. r2 sol-- |
    R2.-\fermataMarkup R2.*8 R2.-\fermataMarkup

    %%% Poco più %%%
    la2.\p( sib do dod2) r4 R2.-\fermataMarkup

    %%% Andantino %%%
    \ten la'1~\p la2~ la1~ la4 r |
    la1~ la2~ la2. r4 R2. \clef treble |

    %%% Largo non troppo %%%
    la'4\mp( sol8 r fa4 mi8 r fa\< mi fa sol) |
    la4\!\(( sol8) r fa4( mi8) r fa\<( mi) fa sol\) |
    la4\! sol8 r fa4 mi8 r fa mi fa sol |
    la2( mi) r \clef bass |
    la,,\mf( la') la,-- si( si') r |
    do,( do') do,-- re( re') r |
    la'-- la,,-- la''-- sol-- si,,-- r |
    do'( do,) do'-- dod,,( dod') r |
    re( re,) re'-- sol( sol,) r |
    do( do') do,-- \cresc re,1~\mf re4 r red1~ red4 r \ten mi1~--\ff mi4 r |
    mi''2.---> r4 R1 R2. mi,,8-.->\sffz r r4 |
  }
}


ActeDeuxSceneUnClarinetteDeux = { \ClarinetteBasse
  \relative {
    R2.*4 R2 R2.*2 R2 | \ten mi2.~ | mi2.~ | mi2.~ | mi4 r \clef treble
    mib'4\mp( sib2~) | sib4 r | do8( sol~) sol2~| sol2.~ | sol4 r \clef bass |
    mi,2.~-- | mi2.~ | mi2.~ | mi4 r |
    R2. R2 R2.*2 R2 | R2. \clef treble | re''2.~\p\<| re2.~\mf\>| re4\! r \clef bass |

    %%% Entrée de la Soprano Deux %%%
    R2.*2 R1 R2. do,,1\mp fa,2.~-- fa4 r | mi2.~\p mi2 r |

    %%% Andantino %%%
    R1*2 r8 lad4--\mp( si-- dod8-. mi2.~--) mi~ mi~ mi4 r |
    r lad8( fad) mi4~-- | mi2.~ mi~ mi2 r4 R2. R1 R2. r8 lad si mi,~ |
    mi2 r4 R1 R2. do4--\mp sol'-- fad8( re) do4-- | R2. R1
    sib4-- fa'-- mi8( do) sib2.-- r4 | R2. R1 sib2--\p r4 R1 R2. |
    R1 R2. R1 R2. R1 R2. R1
    r4 \clef treble fad''8\mf( sold si sold fad re) dod\>( re fad sold si fad |

    %%% Entrée de la Contralto %%%
    sold2.~\p) sold2. r4 \clef bass | R2. R1 R2. R1 R2. R1
    \ten do,,2.~\p do2. r4 | R2. r4 do2-- r4 reb2.~-- reb2. r4 | r4 do-- r R1 |
    fad,8-.\mp r r2 | R1 R2. R1 R2. \ten sol2.~--\mp sol2 r4 |
    R2.*4 r4 mi'2--\mf \ten mib2.~-- mib~ mib4 r r2 | R2.
    re1~ re4 r2 | R1 lab2.--\mp( la2.) r4 lab2.--( sol2.) r4 | R2. R1
    R2. do'4\p( sib la sol la8 sol la sib do4 sol) r | fa2.-- r4 |
    R2. R1 R2. R1 R2. \clef treble sol'4\p( mi) r2 |
  }
}

ActeDeuxSceneUnBisClarinetteDeux = { \ClarinetteBasse
  \relative {
    sol'4\mp( mi8) r r2 | sold4( mi8) r r4 | sol4( mi~)

    %%% Presto agitato %%%
    \ten mi1*5/4~ mi2. r2 | R1*5/4*3
    mi,1*5/4~ mi~ mi2. r2 | R1*5/4*11
    sib'2--\f\>( la-- sol4-. mi2.--\!) r2 |
    \accst {do4 r2 do4 r | do r do r2 |
    do4} r r8 do'\< lab fa re do | lab4-.->\sfz r1 | R1*5/4*4
    \ten do1*5/4~--\p do2. r2 | do2.-- r2 | R1*5/4*6
    \accst {sol4\f r2 sol4 r | sol r sol r2 | sol4} r r8 fa''\< do sol la mi |
    si4-.->\sfz r1 R1*5/4 mi,4->\sffz r1 | R1*5/4-\fermataMarkup

    %%% Boum %%%
    R1*5/4*2
    r1 re''4\p( | sib1*5/4~) \ten sib2. r4 si( |
    sol1*5/4~) sol2. r4 sold( |
    mi\<) la( sol) do2~\mp | do2. lab4\>( sib | mi,2.\!) r2 | R1*5/4*3

    %%% Air ténor %%%
    \t {mi,8\mf( sol mi'} \t {sol mi' sol} mi) r sol4( mi8) r |
    \t {mi,,( sol mi'} \t {sol mi' sol} mi) r sol4( mi8) r |
    \t {mi,,( sol mi'} \t {sol mi' sol} mi) r sol4( mi8) r |
    \t {mi,,( sol mi'} \t {sol mi' sol} mi) r sol4( mi8) r |
    \t {sib,\<( mib sib} fa') r \t {lab( si lab} re) r \t {mi( lab mi} |
    sib'\!) r \t {mi,( sol lab)} \t {sol( mi re} si) r r4 |
    \t {mi,,8\mf( sol mi'}\t {sol mi' sol} mi) r sol4( mi8) r |
    \t {mi,,( sol mi'} \t {sol mi' sol} mi) r sol4( mi8) r |
    \t {mi,,( sol mi'} \t {sol mi' sol} mi) r sol4( mi8) r |
    \t {sol,,( sib mib} \t {fa sib re)} sol4( mi8) r \t {sol( mi si)} |
    \t {lab( si mi} \t {lab si lab)} sol4( mi8) r \t {mi( si fa)} |
    \t {mi,( mib' lab)} \t {re( si re} si) r \t {re( si re} si) r |
    \t {mi,,( lab reb} \t {mi lab reb)} \t {sol( mi sol} mi) r \t {mi,,( lab reb)} |
    \t {mi( lab reb)} \t {mi( sol mi} sol) r sol4\>( mi8) r |
    sol4( mi8\!) r r4 r2 | R1*5/4*4

    %%% Moderato assai %%%
    \cmb #"p" #"très clair" do1*7/4~ do4 r2 r1 | do1( si2.) do( \ten si1~) | si4 r2 r1 |
    do2( si2. do2) si2.\<( sib1\!) | \ten la2.~\p la4 r r2 | R2. R2
    r8 \st {si,\p( do sol' lab4) |
    r8 lab( si mi sol4)} |
    r8 \simile si,, do sol' lab mib' |
    r do, mib lab si4 |
    r8 si, do sol' lab4 |
    r8 la, do sol' sib4 |
    r8 mib, mi sol si do |
    r mib, lab si mi4 |
    r8 mi, sol la sib4 |
    mib,1--\pp r2 r4 | mib1\p( fa2.) mib( fa1) |
    sib,4---.\mp r2 | solb4---. r2 | \simile sib4 r2 |
    reb4 r2 sib4 r2 | do4 r2 re4 r2 |
    re1--\mp r2 r4 | R1*7/4*3
    \repeat volta 2 { R1*7/4*3}
    R1*7/4*2

    %%% Presto subito %%%
    mi'1--\f \ten re,,2~-- re1~ re4 r |
    \tt {fa8->( re) r4 r8} r1 | re2.---> r4 r2 | R1.

    %%% Tempo giusto %%%
    r8 \st {fa\mp( mib' solb mi' sol) |
    r fa,,( mib' solb mi' sol) |
    r fa,,( mib' solb mi' sol)} |
    r \simile fa,, mib' solb mi' sol |
    r fa,, mib' solb mi' sol |
    r fa,, mib' solb mi'4 |
    r8 fa,, sib mib solb si |
    r si, fad' sol re' la' r4 |
    r8 solb,, mi' la reb4 |
    r8 solb,, reb' la' reb4 |
    r8 re, solb si mib,4-- | lab,( solb la |
    fa4.) r8 R4. mi2~--->\f mi4 r |
    mib2~---> mib4 r8 | solb2---> r4 |
    mib2~---> mib4 r8 do'2---> r4 | R1*5/8
    la4.---> r8 | sol''8-. sol4-> | la4->\sffz r2 | R2.*3
    \ten sol,,2.~\p sol2 r4 |
    \ten sol2.~ sol2 r4 |
    sol2.~ sol2 r4 | sol2 r4 sol2 r4 |
    r si\<( mi8 reb' | sib'2.--\mp) R2. R2 R4. R2 |
    R1*5/8 R2.

    %%% Tempo I %%%
    R1 \acc {lab,,4\f r2 lab4 r lab4 r lab r2 |
    lab4 r r8 lab r2 | reb,4\sffz} r1\fermata |
    R1*5/4
    do''2.\p( si2) do( si2.) R1*5/4*2
    do2.( si2) do( si2.) R1*5/4*14
  }
}

ActeDeuxSceneDeuxClarinetteDeux = { \ClarinetteBasse
  \relative {
    \clef treble lab'2\mp( fa4) r r2 | lab2( fa4) r r2 R1. | lab4-- r fa-- r r2 |
    R1.*2 fa4\p( reb) r2 R1 R2. \clef bass
    sol,4--\mf \stdet {sol8 sol r4 | mib'8 mib r4 r8 mib} |
    r16 \st {la, la la r8 mib'--} r4 | r r16 \clef treble fa8--( lab16) mi4-- |
    re1-- r2 | R1.
    fa4( reb) r1 \clef bass | reb4( fa,) r2 | R1 R2.
    sol4--\mf \stdet {sol8 sol} r red'( mi4) | do-- r8 |
    si,2--\p r4 \clef treble \ind #"en dehors" sold''8--\mf \det {sold la4 r r sold8 sold |
    la4 r r si8 si mib4} r r2 \clef bass | \ten solb,,1~\mp solb2. r4 |

    R2. R1. la2.--\p r4 | do,2.-- r4 |
    fa,2.~\pp fa~ fa2 r4 | R2
    fa2--( red4 mi2) r4 | mi'2-- r4 | R2
    la,4.--\ff( mi4-.->) r r \stdet {re''8\f re | re4 r r re8 re} |
    re4-- r r \stdet {re8 re | re4 r r re8 re} | re4 r r2 |
    mi,,2~\pp mi~ mi~ mi4 r | mi2~ mi4 r | \ten reb1~--\f reb2 r4 |
    \ten reb1.--\p( sol2.) r4 | reb1~-- reb4 r | \ten sol1.~-- sol2 r4 |
    reb''4( solb,) r2 |

    R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 \clef treble sib4( do re |
    mib2) fab8( mib fab solb | \ten lab2.~) lab4 r r2 |
    R2. R1 R2. R1 R2. R1
    r2 r8 r16 \t {sol32\<( fa mi} | la8-.\f) r r4 |
    r4 r8 \t {sol16( fa mi} | la8-.) r r4 |
    r2 r8 \t {sol16( fa mi} | la8-.) r r4 r2 | R1*2

    \st {la8 la sold} r4 | sold4-- r8 \st {la la} |
    sold4-- \clef bass \st {la,,8 la sold |
    sold'' la,,-> la sold r |
    mib mib re} r4 | mib'4---> r r8 | R2*5/4 \clef treble
    \st {la'8 la sold} r4 | r \clef bass la,,8 la sold |
    mib'4 r r8 | R2*5/4*4

    R1*2 si4->\sffz r r2 | R1*6
    re4-.->\sfz r2 | re,4---.\p r | r2 r4 \clef treble solb''16\mp( mi8) solb16( |
    fa1) R2.*2 \clef bass \ten la,2.~\p la2 r4 | R2.*3

    \stdet {la,8\p r mib r lab r re, r |
    reb r sol r do r | fa, r si r mi, r |
    mib r la r re, r lab'} r |
    \st {reb,( reb') sol,( sol') do,( do') solb( solb,) |
    fa( fa') mi( mi,) | re16} r re'\pleggiero re re re re re |
    re re re re re re re re |
    re re re re re re r  re |
    re re re re re re re re |
    reb8-.-> r r4 | R2*4 r4 lab8->\pp r | R2
    re!16\ppleggiero re re re re re re re |
    re re re re lab' lab lab lab | sib8 r r4 |
    R2*6

    la!2.~\pp la2 r4 |
    la,2.~ la~ la2 r4 | R2.*11
  }
}

ActeDeuxSceneTroisClarinetteDeux = { \ClarinetteDeux
  \relative {
    %%% Larghetto %%%
    R4.*16 mi8 do si la sold la si4 r8 |
    R4. r4 mi8 do si la sold la si |
    R4.*2 r8 mi do si la sold la si r |
    R4.*2
    la16 la la la r8 |
    r16 la la la la8 |
    la16 la la la r8 |
    r la la la r4 |
    la4.~la4 r8 |
    la16 la la la r8 |
    r16 la la la la8 |
    la16 la la la r8 |
    mi'4.~mi4 r8 |
    la,16 la la la r8 |
    r16 la la la la8 |
    r8 la16 la la8 |
    la16 la la la r8 |
    red8 mi dod re si4~si r8 |
    la16 la la la r8 |
    r16 la la la la8 |
    sib16 sib sib sib sib sib sib sib |
    sib sib sib sib sib sib sib sib |
    sib sib r sib sib sib sib sib |
    sib sib sib sib do do do do |
    do do do do do do r do |
    do do do do do do do do |
    do do do do do do do do |
    reb reb reb reb reb reb r reb |
    reb reb reb reb reb reb reb reb |
    reb reb reb reb reb reb reb reb |
    reb reb reb reb mi mi r mi |
    mi mi r mi mi r mi mi | R4
    sol8 sol sol sol |
    sol sol r r sol r sol r sol | R4*4
    la,16 la la la r8 |
    r16 la la la la8 |
    la16 la la la r8 |
    r la16 la la la |
    la la la la r8 | r4 r16 sol' |
    fa lab mi'8 r |
    la, r4 r8 red,8. mi16 |
    fa8 r4 r8 red r dod r4 |
    sib16 sib sib sib r8 |
    r16 sib fa' sib mib8 |
    sol16 sol la8 sol16 sol la8 |
    sol16 sol la la sol sol la la |
    sol sol r la, sol sol la la |
    sol sol la la |
    sib sib sib sib sib sib sib sib |
    do8 r R4 sib16 sib sib sib |
    do8 r R4 sib16 sib sib sib |
    do8 r R4
    la,16 la la la | r fad si mi |
    mi'4~mi~mi8 r |
    mi,16 mi mi mi r4 |
    red16 red red red r4 |
    re16 re re re r8 re |
    R2.-\fermataMarkup R2.*6

    %%% Interlude %%%
    mib2~ mib4 r |
    fa,2~ fa~ fa4 r |
    sold' \t {la8 sold la} si do re mib |
    fa,,2~ fa4 r | sold'8 la si do re mib |
    fad,,2~ fad4 r16 do' do do |
    do do do do red8 mi fad sol la sib |
    r16 do, do do do do do do |
    sol'8 lab si do fad sol r4 r8 |
    re2~ re8 la si16 dod re dod |
    re2~ re4 r8 sol, re4. r8 |
    fad'8 mi re dod re16 dod re mi fad8 dod~ |
    dod sib4. r8 mi4. |
    dod4. r8 | la'8 sol fa mi fa16 mi fa sol la8 mi |
    r16 la8 mi16 r la mi8 |
    mib16[ sib r la'] mi r red'8 dod si lad si16 lad |
    si dod red8 lad sib,16 la sold la sib r si' lad si dod red8 |

    %%% Quatuor %%%
    r16 mib,,, re re mib mib re re |
    r mib fad si re sol |
    r mib, re re mib mib re re |
    r mib lab si mi sol |
    r sol, do reb do solb' reb do |
    r8 lab16 re sol dod |
    r mi,, red mi' red fa' |
    sib2 r4\fermata R2. |
    la,4 sol fa mi2.~ mi2 r4 |
    la sol fa mi fa8 mi fa sol |
    la2~ la4 r R2. |

    %%% Air baryton 1 %%%
    R2*2 R2. R2*2 R2.
    mi2~ mi4 r | R2.
    sib2~ sib4 r |
    r r16 mi mi mi mi mi mi mi |
    R2 fa16 dod' fa8 la,16 dod |
    la'2 mi4 r8 | si4. r8 |
    r fad sol lad | si4 do8 re red4 |
    mi16 re mi8 r4 |
    la,16 la la la r la la la |
    r8 re,, la' si' dod'4 |
    r16 r32 la,, si16 re~ re8 mi~ mi4. r8 |
    r8 mib,16 solb~ solb4. r8 | R2

    %%% Doppio tempo %%%
    re'8 r r4 | R2*6
    r8 mib mib mib sib'4 |
    r8 mib, mib mib lab4 |
    r8 re, re re sold4 |
    r8 si, si si re4 |
    r8 si si si mi4 |
    r8 re re re sold4 |
    r8 mi mi mi la4 |
    r8 re, re re | la'4 sold la8 mi~ |
    mi4. r8 | R2. R2 R2. R2
    r2 r8 re,16 mi | sold4 r8 mi |
    sold16 la re mi sold4 r | R2 R2.
    \repeat tremolo 8 {la,32 sold}
    \tt {mib'16 re mib re mib} sold16 la sold la re mib re mib |

    %%% Climax %%%
    re'8 r r4 | R4. |
    si8. si16 si8 r |
    r4 re,8 r re r r4 | R4.
    si'8. si16 si8 r |
    r4 re,8 r re r r4 | R2
    re'4 r16 mi si fad dod sold re8~ |
    re2 r4 | sib'4 si2 sol4 |

    %%% Soprano 2 %%%
    sib4 r2 R1 |
    sib,8 sib sib sib r4 | R1
    sib8 sib sib r r4 | R1
    r8 do do do do do | R1
    r4 dod8 dod dod r |
    r dod dod dod dod dod dod dod |
    R2. R1 R2. R1 R2. R1 R2.
    la8 la la la r2 |
    r8 la la la la4 |
    mi'8 mi mi mi r2 |
    fa8 fa r2 |
    mi8 mi r4 r fad8 fad |
    sol4 r2 |
    sib,8 sib sib sib r2 | R2. R1
    re''4 sold,8 mi re4 |
    la' r r2 | R2. R1 R2.

    %%% Soprano 1 %%%
    sib,,8 sib sib sib r2 |
    r8 sib sib sib sib4 |
    sib8 sib r4 r2 |
    r8 do do do do4 | r2 do8 do r4 |
    dod4 r2 R1 R2. R1 R2. R1 |
    do2.~ do2. r4 | R2.
    la8 la la la r la la la |
    la4 r2 mi'4 r r2 | R2.
    mi4 r r2 R2. R1
    mi4 r2 | R1 R2. R1 R2.

    %%% Duo %%%
    sold8 la sold mi re mi sold4~ |
    sold2. r4 |
    re2. mib4 fad2. sold4 si2. re8 mi |
    la2 si,4 la'~ la si, la re, la2 |

    %%% Baryton 2 %%%
    re4 r2 | \tt {re,16 fad la si do} re4 re |
    mib r2 |
    \tt {re,16 lab' re mib mi} fa8 r16 dod32 re mib8 fa |
    re'4 r2 | sib4 do \tt {re16 mib fa lab do} |
    re2 r4 | r8 re,, re re re re |
    \tt {re,16 la' sib do dod} re4 \ttt {re,16 fa fad la sib re} |
    mib4 \tt {re,16 mi sol si do} mib4 | lab, r2 | R4.
    re8 re re re re re | R2.
    re,8 re re re re re | R2.
    mib8 mib mib mib mib mib | re2 r4 |
    re' re re re r2 |
    r8 sib'' sib sib sib sib | R2.
    r8 fa fad re' re re |

    %%% Boum %%%
    la,,4 r2 R2.*2 |
    r4 sol2 lab sol4 |
    r4 lab2 la4 do dod |
    r fad2 fa4 la sib |
    r sib2 la4 do dod |
    r8 do, si'4. si16 si |
    si4. mib8 ~ mib mi |
    r si, sib mi mib sol |
    fad si do mi mib \t {sold16 si dod} |

    %%% Contralto %%%
    re8 r re,, re re re re re re re r4 |
    re'8 re, re re re re re re re re r re |
    re re re re re re re re |
    mib mib mib mib mib mib mib mib |
    r4 lab,8 lab si r r4 | R2. R2*6
    la8 la la la r4 | r8 la la la la4 |
    la'8 la la la r4 | r8 la la la la4 |

    %%% Grand ensemble %%%
  }
}
