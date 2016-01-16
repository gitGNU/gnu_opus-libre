%------------------------------------------------------------------%
% Opéra Libre -- flute2.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008, 2009                               %
%------------------------------------------------------------------%

\include "italiano.ly"

FluteDeux = {
  #(make-instrument-name 'flute-two "flute" 25)
  \clef treble
  \revert Staff.InstrumentName #'stencil
}

Piccolo = {
  #(make-instrument-name 'piccolo "flute" 25)
  \clef "G^8"
  \revert Staff.InstrumentName #'stencil
}

PrologueFluteDeux = { \FluteDeux
  \relative {

    %%% Introduction %%%
    \partial 4 r4 \pitchedTrill la'''2.~\mp\startTrillSpan si
    la2.~\< la~ la2~\>\stopTrillSpan la4~ la8\! r |
    \ten mi,,2~--\mf mi4 r | mi4~ mi4:32 ~ mi8 r |
    mi2~ mi \ten mi2.~ mi4 r |
    R2 | \ten re2.~\mp | re4 r |
    R2 | red2.~| mi4 r |
    r r8 \t { re!16\<( mi la} | re2--->\f) r4 | r4 sol, r do\p( | sib'2) r4 |
    r4 \tt {fad16\p( sold\< la red, sold} si!2\mp) r4|
    R2 r2 \tt {re16( la si solb lab} | mib8) r r4 |
    red,2.~--\mp red4 r mi2~-- mi4 r2 |

    %%% Tempo giusto %%%
    \slap { \ind #"slap" re4\f} r R2*6 r4 mi16( sol do fad |
    re4\f) r2 | r2 sol,16( do fad mib | re4) r2 R2.
    dod,2.\mf( do sol'2) r4 | r8 do\mp( mib\< fa lab si |
    re4--\f) r8 lab4.~-- | lab4 r8 solb4.-- | fa2.---> r4 R2*2 R2-\fermataMarkup

    %%% Solo Ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*7 r2 sol4---.\pp sol,---. r sol'---. sol,---. sol'---. r |
    la---. si,---. sib'---. | R4.
    R4.*2 r8 sol,---.\pp r lab---. r sib---. | R4.*5
    mib8-.\p reb-. sib-. sol-. sol-. r | R4.*15
    \ten fa'4.~\p fa4.~ fa4.~ fa8 r4 |
    r8 r16 fad8.~ fad4.~ fad4.~ fad8 r4 |
    r8 sol4~ sol4.~ sol4 r8 | do\mf( la sol) |

    %%% A tempo %%%
    re'8-.->\mp re,32-. re-. re-. re-. re,8-. | re4:32\mf r8 |
    re''8-.->\mp re,32-. re-. re-. re-. re,8-. | re4:32\mf r8 |
    \t {lab'16( reb solb)} \t {fa( sib do)} \t {sib( mib fa)} |
    re-.\f re-. re-. sib-. r8 | re16-. re-. re-. sib-. r8 |
    re16-. re-. re-. sib-. r8 | re8-> r4 |
    R4.*2 sol,,16-.\mf sol-. r sol-. sol-. sol-. | si8-. r4 |
    lad'8-. r4 | lad16-. lad-. lad-. r r8 | lad16-. lad-. lad-. r r8 |
    lad16-. lad-. lad-. r r8 | lad16-.\< lad-. r lad-. lad-. lad-. |
    sol->\f sol sol r r8 | sol16-> sol sol r r8 |
    sol16-> sol sol r r8 | sol16-> sol sol r r8 |
    si16-> si si r r8 | dod16->\> dod dod r r8 |
    mib,16-> mib mib r r8 | fad,16-> fad fad\! r r8 |
    R4.*8 r4 r8 \t {do16(\< fa lab} \t {reb mi la)} |
    do2.\f | sol2\>( re4 | si\pp) r2 |

    %%% Adagio %%%
    R1*4 R1.*2 R1*3 R1.*2 R1*2 do,2\p r4 |

    %%% Valse %%%
    r fa''--\pp( fa--) | r mib--( mib--) | r la,--( la--) |
    r mib--( mib--) | r reb--( reb--) | r sol,--( sol--) |
    lab4--( lab8-.) r | sol4( lab8) r | sol2.~\p sol4 r | R2.*2 R1
    r2 mi'4--\p( mi--) | r la,--( la--) | r dod--( dod--) | r la--( la--) | r lab--( lab--) |
    r solb--( solb--) | r reb-- r do-- |
    r2 fad8-.\f re'~-> re16 fad,( re'8-.) | la'8.-> re,16( la'8-.) mib'4.->( |

    %%% Vivo %%%
    re4\sfz) r | R2*8
    re,,2\mp~ re~ re~ re4 r | R2*17 r4 mi8->\pp r |
  }
}

OuvertureFluteDeux = { \FluteDeux
  \relative {
   r4 \tttt { mi''16 sold sol si sib, re dod'} \t {la8 fa dod} |
    sib16 sol mi dod mi,4 r | \tttt {mi'16 fa sold la do dod mi }
    \tttt { mi, fa sold la do dod mi} \tttt {do dod mi mi, fa sold la} |
    sib4
  }
}

ActeUnSceneUnFluteDeux = { \FluteDeux
  \relative {
    R2*2 R2. R2*2 R2. |
    \ten do2~\p do do'4.--\pp r8 r4 | do,2~--\p do sol'?4.--\pp r8 r4 |
    r8 do,\mp \t { do-- do do} do4. r8 | reb'4.-- r8 r4 |
    r8 do, \t { do-- do do} do4. r8 | mib'4.-- r8 r4 |
    mib1\pp( si2) r4 | sol1( mi!2) r4 |
    mi'1\p( | reb2) r4 | reb2.( lab4~)| lab8 r lab'4\<( mi) |
    \t {\ind #"sostenuto" fa4\mp( lab,8)} \t {re,( lab' fa'}
    \t {do'4) lab,8} \t {re,( lab' fa'}
    \t {do'4) lab,8} \t {re,( lab' fa')} \t {do'( fa, lab,} |
    solb8\mp) r \t {solb( reb' sib'}
    \t {mi4) reb,8} \t {solb,( reb' sib'}
    \t {mi4\mf) solb,8} \t {reb4( solb8} sib4 |
    do\p) r2 | R2.*6 \ten do,1~\ff do2 r4 |

    %%% Ad libitum %%%
    R1 R2.*2 R1 R2.*2

    %%% Agitato %%%
    \ten re,1~\f re2 r | R1*2
    r2 lab''4-.\mp r | r do,-.-> r2 |
    R1. r2 r4 \t {r8 re( fad} |
    sib4-.) r r2 | R1. R1
    r8 fad16( la do4-.) r2 | R1
    R1. R1*2 R1.*3 R1 R1.
    re1\f\>( re2 dod1\p) r2 | R1.

    %%% Allegro non troppo %%%
    R1 R2. R1*3 fa,4-.\mf r r2 |
    r8 la16-.\mp fa-. r8 la16-. fa-. r2 |
    R2. r8 la16-. sol-. r8 la16-. sol-. r2 |
    R2. r8 la16-. sol-. r8 la16-. sol-. r2 |
    R2. r8 la16-.\mf fad-. r8 la16-. fad-. r2 |
    fa2--\f r4 | re4\mf( dod2) r4 | R1*2
    r8 \st {sib\p sib'16 sib, r8 r sib sib'16 sib,8 sib'16 |
    sib,8[ r16 sib->] r sib8-- sib'16 sib,8 sib'16-> sib, r sib8-- sib'16 |
    r8 sib, sib'16 sib,8 sib'16 sib,8[ r16 sib] |
    r sib8-- sib'16 sib,8 sib'16-> sib, r8 sib |
    sib-- sib'16 sib, r8 sib sib'16 sib,8 sib'16 |
    sib,8--\pp[ r16 sib'] sib,8--[ r16 sib'] sib,8--[ r16 sib'] sib,8--[ r16 sib'] |
    sib,8 sib'16 sib, do'\< do, reb' reb,\! r4\fermata r8 r16 sib'\pp |
    sib,8--[ r16 sib'] sib,8--[ r16 sib'] sib,8--[ r16 sib'] sib,8--[ r16 sib'] |
    sib,8 do'16 do, mib'\< mib, fa' fa,\! r4\fermata r8 r16 sib\pp |
    sib,8--[ r16 sib'] sib,8--[ r16 sib'] sib,8--[ r16 sib'] sib,8--[ r16 do'] |
    do, fa' fa, solb' solb,\< lab' la, re mi8\mf r\fermata r r16 sib\p |

    %%% Moderato %%%
    sib,8--[ r16 sib] r sib8-- sib'16 sib,8 r sib--[ r16 sib'] |
    sib,8-- do16 sib r8 sib8 r16 sib8-- sib'16 sib,8 r |
    r sib r16 do sib8 r4 |
    r8 sib'16 sib, r sib' sib,8 r16 sib r8 |
    r4 r16 sib8-- sib'16 sib,8[ r16 sib] r sib8-- sib'16 |
    sib,8 r r2 |
    r8 sib'16 sib, r do sib8} r2 |
    \slap \ind #"slap" do,8\sfz r r2 |
    r8 sib''16-.\p sib,-. r sib8---. sib'16-. sib,8( sib'-.) r sib,~\pp |
    \ten sib2.~ sib2 r4 sib~ \ten sib2.~ sib2 r8 mib,4.--\p( |
    sib'4.) fa'16-. do-. sib4~-- | sib8 mib4.~-- mib8 sib'16-. fa-. mib4~-- |
    mib8 r mib16-. mib-. do'-. sib-. sib,4~-- |
    sib8 lab'16-. mib-. sib4-- r16 \st {mib\psempre do sib'~-- sib mib, mib'8 |
    sib8-- do,16 sib do' sib8-- do,16 sib do' sib8-- |
    do16 sib sib, do' sib do, do' sib} | R2. R1
    R2*3 r4 r8 \st {sol--\p |

    %%% Allegro marcato %%%
    mib'8-- r lab,-- r mib-- r lab-- r |
    mib'8-- r lab,-- r mib-- r r4 R1*3 |
    dod'8-- r re,-- r mi,-- r sol'-- r |
    dod-- r re,-- r mi,--} r r4 | R1*2
    r2 r4 sol8.-.\p sol16 | si2--( sol8) r sol8.-. sol16 |
    si2--( sol8) r r4 | R1 r2 r4 sol8.-. sol16 |
    si2--( sol8) r sol8.-. sol16 | si2--( sol8) r r4 | R1
    r2 r4 \st {sib'8\pp r lab( r fa r mib) r fa r |
    mib\p( r re r do) r sib' r | lab\mf( r fa r mib) r r4 |
    lab8\p( r fa r mib) r r4 | r sol,8\pp r fad r mi} r |

    %%% Agitato %%%
    re2.\mf r4 r re-- r re-- |
    r \t {re'8\p( mi sol)} sold2\< |
    re4---.\f re2---> r4 | re4-.->\p r r8 \st {do r4 | do8 r r4 r2 | R1
    r4 mib8 r r mib r4 | r8 do r4 r2 | r8 la} r4 r2 | R1
    lab'8-.->\sfz r r4 r1 | R1*2
    \st {fa8\pp sib16 fa fa8 sib16 fa fa8 sib16 fa fa8 sib16 fa |
    mi8 sib'16 mi, mi8 sib'16 mi, mi8 sib'16 mi, |
    fa8\p do'16 fa, fa8 do'16 fa, | fad8 do'16 fad, fad8 do'16 fad, |
    sol8 dod16 sol sol8 re'16 sol, | sold8\< re'16 si sol'!8->\!} r | R2 R1*4
  }
}

ActeUnSceneUnBisFluteDeux = { \FluteDeux
  \relative {
    R2.*6
    \ttt {re16( dod) re( dod) re( dod)}
    \ttt { re( mib fa) lab( sib si) }
    \ttt { dod( mi fad sol la do) } |

    %%% Piu vivo %%%
    re4->\f r r2 | r4 \tt {re,,16\mf\<( dod) re( dod mi) } \tt { sol( si mi) sol( sib) } |
    re4\f r r2 | r4 \tt {re,,16\mf\<( do) re( do mi) } \tt { lab( sib mib) sol( la) } |
    re8.->\f re16 re8-. re~-> re16 re re8-. |
    re8.-> re16 re8-. re-> r4 |
    re8.-> re16 re8-. re~-> re16 re re8-. | re4-> r8 re4-> re8 |
    R2. \ten mi,2.~\pp mi4. r8\fermata r4 |
    R2. \ten mi2.~\pp mi2~ mi8 r\fermata r4 |
    R1 R2 |

    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 lab,-.\mf | sol2-- r4 lab-. | sol2-- r4 R2 R1
    R2.*2 R2*2
    r2 r8 lab-.\mf | sol4-- r8 lab-. | sol2-- |
    r8 fad\sfz r4 | r8 fad-> la-> r r4 |
    r2 r8 fad->( la-> sib->) |
    R2. R2*3 R2.*3

    %%% Adagio %%%
    R1*5
    \ten mi,1~\pp mi2 r | R1*3
    r2 r4 la\pp | mi32\>( re8..~\!) re4 r8 mi32\>( re16.~\!) re4~|
    re  \simile mi32 re8..~ re4 mi32 re8..~|
    re4 mi32 re8..~re4 mi32 re8..~|
    re4 mi32 re8..~re4 mi32 re8..~|
    re4 re32 mi8.. mi4-- re32 mi8.. |
    re4-- re-- do-- do-- re-- re-- do-- do-- |
    re8\p( mi do4) do8( mi re4) |
    re8( mi do4) re-- re8( mi |
    do4) \simile do8 mi re4 re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re8 mi |
    do4 do8 mi re4 re re re r2 |
    r sol4--\p sol-- | sol-- r r2 |
    r4 sol--\pp sol-- sol-- |
    R1*2 R1-\fermataMarkup |
    R2*4
  }
}

InterludeUnFluteDeux = { \FluteDeux
  \relative {
    R1. R1*3 R1. R1 R1.
    mi4--\mp r mi-- r mi-- r | mi r \ten sold2~ sold4 r r2 |
    sold4.--\mp r8 sold4.-- r8 sold4.-- r8 |
    sold4.-- r8 sold4.-- r8 sold4.-- r8 |
    sold4.-- r8 sold4.-- r8 mi2-- r4 | R2 |
    r4 \ttt {r16 sold( la si mi re}
    \ttt {fa) re\<( mi fa sib sol} |
    do1~)\mf do2 r8 sib4-- sol8( |
    do1) r4 sol( | sib1~) sib2 r |
    sol1-- r4 \tt {mi16\mp fa sol\< do sib\!} |
    sol4 r8 sol fad'2 | re2.--->\f\> |
    \ten dod2.~\pp dod4 r2 R2.
    fad,,16(\p sol fad re do re fad re do re fad sol |
    fad2.~) | fad4 r2 | R2.*10
  }
}

ActeUnSceneDeuxFluteDeux = { \FluteDeux
  \relative {
    %%% Air de la Soprano2 %%%
    R2.*2-\markup "prenez le Piccolo" \Piccolo  R1*2 R2.*2  R1*2  R2.*2
    R1*2  R2.*2 R1*2  R2.*2 R1*2  R2.*2  R1*2 R2.*2
    re''4-.\pp la'-. sold8( mi) re4 | mi8( re) la'( sold) r mi( sold4-.) |
    mi-. re8( la' sold4-.) | la8( sold) mi( re) r la'( |
    sol!4-.\p) do-. si8( sol) fa4-. | sol8( fa do' si) r sol( si4) |
    sol-. fa8( do' si4-.) | do8( si) sol( fa) r do'-. |
    fa,( sol) si4-. do-. fa,8( do') | r fa,-. sol( si) do4-. si8( fa) |
    sol4-. si-. do8( sol~) | sol2 r4 | \repeat unfold 6 {R1*2 R2.*2}
    R1 |  r2 sol4-.\ppp do-. | si8( sol fa4) sol8( fa) | do'( si) r sol( si4) |
    sol4-. fa8( do' si4) do8( si) | sol( fa) r do' fa,( sol si4) |
    do-. fa,8( do') r fa,( | sol si do4) r | si8( do si sol fa4) si8( do |
    si sol fa sol si4) si8( do |
    si sol fa4) si8( do | si sol fa sol si4) |
    si8( do si sol fa sol) si( do | si sol fa sol) r si( do si |
    sol fa sol) si( do si |sol fa) r si( do si |
    sol fa sol) si( do si sol4) | si8( do si sol fa sol) si( do |
    si4) fa8( sol si do | si4) fa8( sol si do |
    si4) fa8\>( solb sib do sib4) | fa solb sib2\!\fermata

    %%%% Récitatif %%%

    R2.*2 R1 R2.*3 R1 R2.*4 r2 r8 r16 fa32( si |
    mi?8\sfz) r r2 R2 R2. R1*2 R2.*5 R1 |

    %%% Duo %%%

    R2. R1 R2. R1 R2. R1 R2. R1 R2. r8
    \t {mi,16\p( fa sol} sib8---.) r8 |R2 r4
    \t {mi,16( fa sol} sib8-.) r4 |r8 r16 fa16-. do16.--( si'!32 mi8-.) r2 | r2 r8
    \t {mi,16( fa sol} sib8-.) r8 |r2 r8
    \t {mi16( red dod} lad8-.) r8 r2 |
    R1 red,,4\mp\<( mi) red( mi) sol\!( la) sol( la) sol-- r4 | r8.
    \t {fa'32\p( mi re } si8-.)  r8 r8
    \t {la16( sold fad} red8-.) r8 r4 r2 |

    %%% Piu vivo %%%
    R2. R1 R2.
    r4 r8 r16 \st {mib la re sold dod} | sol'4\sfz r r2 |
    r4 sol,,--\mf la-- | do8-> re~-> re4 r2 |
    r4 sol,--  do-- | re8-> fa,~-> fa4 r2 |
    r4 re'-- mi-- | la8-> re~-> re4 r  | R2.
    r8 mi-. mi,4-- sold-- la8-> re~-> re4 r |
    r16 la-. la-. la-. re4-- do-- re8->\< sol~->\! sol4 r |
    R2.*6-\markup { Prenez la \concat { G \super de } Flûte } \FluteDeux
    r4 r8 mi,,-.->\mf r4 |

    %%% Poco allargando %%%
    sib'2.\f( la4~| la4. sol8~ sol2) | si,( re) |
    %%% Tempo giusto subito %%%
    dod4-> r r2 | R1*3
    r2 r8 si\< la( do) | dod2\f r4 |
    dod4.\mf( si8 sold'2) |
    dod,4.( si8 \ten sold'2~)| sold8 r r2 |
    \tt { r16 re,\<( fad sold si}
    \tt { re mi sol la re }
    sold,4\f) r8 si,( | sold'2)
    sold,4.\mf( si8 sold'4~) | sold8 r r2 |
    r8 re\mf( mi) re |
    r  re( la') re,|
    r  re( mi) si |
    r  re( la') re,|
    r  re( mi) re |
    r sol\f( re') sol,
    r sol( la) sol r sol( | sol'-.) r r2
    R1 R2.*3 R2 \ten solb,,2.~\pdolce solb2. r4 R1*3
  }
}

InterludeDeuxFluteDeux = { \Piccolo
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    r4 sol''--\mp R2 r4 si-- R2 |
    \t {la'8-.\pp mi-. dod-.} \t {do-. mi-. lab-.}
    \t {sol-. re-. si-.} \t {sib-. re-. solb-.}
    \t {fa-. lab,-. mi'-.} \t {mib-. sol,-. re'-.} |
    \t {reb-.( fa-. la-.} reb8-.) r | R2
    r4 \t {la8-.\pp( reb,-. fa-.} la,8-.) r r4 |
    r re'!8-.( solb,-. sib-.) r r4 | R2
    \ten mi,,1~\mp mi~ mi~ mi4 r r2 R2. |
    \ten re1~ re2 r4 | R2. R1 R2. R2
  }
}

ActeUnSceneTroisFluteDeux = { \FluteDeux
  \relative {
    R2.*6 la''2.~--\p\< la8\! r r2 |
    R2.*8 r2 \t {mib8-.\f mib-. mib-.} la4-- solb-- lab8-> mib~-> mib4 r2 |
    R2.*5

    %%% Lamento %%%
    R1.*6 R1*5/4*5
    solb2\pp( fa4) r | solb2( fa4) r |
    solb2( fa4) r | dod2\<( re4\!) r |
    sib8\mf sib'8~-> sib4 sib4~-> sib mib,\<( la | re4.\f) r8 r4 | R2*2

    %%% Tempo I %%%
    R2.*9
    \longHairpins {fa,,2.\mp\< fa8\sfz r r2 }|
    R2.*3

    %%% Tempo II %%%
    R1.*4 mi2.--\mp r | R1.
    r2. \ten lab'8-.->\f r r4 |
    \ten mi,1~\mp mi4 r2 | r4 fa-- |
  }
}

ActeUnSceneTroisBisFluteDeux = { \FluteDeux
  \relative {
    \ten do1~\p do~ do R1
    r2 do-- do-- do-- R1
    r2 do-- do-- r | R1*7
    r2 dod~\mp dod~ dod8 r dod4\<( |
    mi2\> dod~\!) dod~ dod8 r dod4\<( |
    mi2.\> dod8\!) r | R1
    \t {sol'8\mp( mi) r} \t {sol( mi) r} \t {sol( mi) r} \t {sol( mi) r} |
    \t {la( sol) r} \tt {la16--\<( reb, mi sol la)} do8\! r \tt {reb,16\<( mi sol la do)} |
    fad,4--\sf r r2 R1*10 R2. R1*7
    \tt {fa16--\p( lab sib si do)} dod8 r
    \tt {fa,16--( lab sib si do)} dod8 r
    \tt {fa,16--( lab sib si do)} dod8 r
    \tt {fa,16--( do mib fad la)} re8 r |
    \ten fad,1~\p fad2. r4 |
    \longHairpins {
    r2 r4 dod\p( mi2\> dod\!) |
    r r4 do!\<( mib2\> do~\!) do2. r4 |
    R1*7
    fad2--\p r4 red\<( dod2\> red~\!) red4 } r r2 |
    R1*9
  }
}

ActeUnSceneTroisTerFluteDeux = { \Piccolo
  \relative {
    R2*3 R2. R2*2 R2.*7 R1*2
    \st {re'16\p( re' sol-> re) lab'->( mi red) sol->( fad fa lab-> mi) sol->( re) lab'->( mi |
    red) sol->( fad fa) lad->( si la-> mi) lab->( mib) la->( fa mi) lab->( sol solb |
    la->) r lab->( mib) la->( fa mi) lab->( sol fad) si->( do sib-> fa) la->( mi) |
    sib'->( solb fa) la->( lab sol) do->( reb si->) r sib->( fa) si->( sol fad) sib->( |
    la sold) dod->( re do-> lab) re->( mib dod-> la) red->( mi |

    %%% Poco meno %%%
    re8->)} r r2 R2.*4-\markup { Prenez la \concat { G \super de } Flûte } \FluteDeux
    \longHairpins {
      r8 si,,\<( sib sol fad mib\> re'2.\!) R2.*2
      \t {r8 dod'\pp\<( do} \t {la4 sold fa\>} | dod'2\!) r4 |
      \t {r8 dod\pp( do } \t {la sold fa~} \t {fa) sold( la)} |
      \t {mi'( dod do~} \t {do) la( sold)} \t {fa( dod' mi~} |
      \t {mi) la,( sold)} \t {fa( dod' mi~} \t {mi16) r la,8( sold)} |
      \t {fa\<( dod' mi)} \t {sold,( dod mi)} \t {do( dod mi)} |
      fa32\mp\>( mi dod8.~ \t {dod8) do( la~} \t {la) mi( dod~} |
      \t {dod\!) do( la)} \t {r sold( fa~ } \t {fa) mi( dod)} | do2-- r4 |
    }

    r \ten mib2~--\p\< mib\mp\> re4~--\! re2 r4 |
    r mib2~--\< mib\> re4~--\! re2 r4 |
    r sib'2~--\mp sib\> si4~--\! si2 r4 |
    r sib2~-- sib\> si4~--\! si2 r4 |
    R2.-\markup "prenez le Piccolo" \Piccolo
    r2 r8 \st {mi'16\p( dod) | fa( dod do) mi( dod do) fa( dod mi8) r |
    R2.*2
    r4 mi16->\mp( dod) fa->( dod do) mi->( dod do) fa->(
    dod) mi->( do) mi->( dod) fa->( dod do) mi->( dod do) |
    fa->( sol mi dod) fad->( dod) sol'->( red re) fad->(
    mid mi) sol->( red) fad->( dod) sol'->( red re) fad->( mid mi) lab->\<( sib |
    sol4->\!)} r r2 |
    R2.-\markup { Prenez la \concat { G \super de } Flûte } \FluteDeux

    r4 fa,,2~--\mp( fa4 mi2) |
    R2. r4 mi4.--\< la8~-- la4 mib'2--\mp |
    r4 sol,2--\mp sol--\> fad4~--\! fad r2 |
    r4 sol2-- sol--\> fad4~--\! fad r16 \st {fa''\pp( mi dod do la sold' si)} |
    r4 sib,,2--\mf sib--\< si4--\! r \st {mi'16\mp\<( dod do la) sold'( si) re, re\! |
    mi-> mi->} r8 r4 sib,--\mf re2-- red4~-- red fad\<( sib\!) |

    r8 sol\f( fad mib re si sib') sol( fad mib re si) |
    \t {r dod'(\psubito do} \t {la sold fa} \t {mi') dod( do} |
    \t {la fa) dod'(} \t {mi) dod( do} \t {la fa) dod'(} |
    \t {mi) sold,\<( la} \t {mi') la,( do} mi16\!) do( dod mi|
    \grace fa8 \pitchedTrill mi2.\p\>\startTrillSpan fa mi4\!)\stopTrillSpan r2 |
    R2.*8-\markup "prenez le Piccolo" \Piccolo
    \acciaccatura {la16[ mi]} red'16-.\p r r8 r2 R2.*3
  }
}

InterludeTroisFluteDeux = { \FluteDeux
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    dod2.--\p r4 dod2-- r4 |
    do'4.\p( fa8) mib( solb) |
    do,4-- r8 fad,32\<( la) do fa |
    sol2--\mf fa8( sib) sol4.-- r8 |
    do2-- mib4\<( lab\!) | R2*4
  }
}

ActeUnSceneQuatreFluteDeux = { \FluteDeux
  \relative {
    \partial 4 r4 la''--\mp la--( fa8-.) mi4-- r16 fad( sol la) |
    sib( do sib la) sol( la sol fa) mi( re dod mi la,8-.) r |
    la'4-- la--( fa8-.) fa4-- r r8 re-.( r mi-. fa4--) r2 | R2*2
    R2-\fermataMarkup

    %%% Allegretto comodo %%%
    R1 R2. R1*2 R1. R1*2 do2--\p( do-- do--) do--( do--) do2.-- r4 |

    %%% Agitato %%%
    sol8-.-> r r2 R2.*6 \ten sol2.~--\mf sol8 r r4 do,16\<( fa sold dod |
    re4--->\f) re-- re-- re---> r8 re-. \t {re-.( re-. re-.)} |
    dod'4---> mi,-- mi-- dod'---> r8 sib,-. \t {do-.( mib-. sold-.)} |
    si4---> r2 | R2.*4
    r2 re,,16( mi sol la
    re8->\f) r r4 re32-> re16.~re16 re-. |
    re8-.-> r r4 re8-.-> r re8..-> re32 re8-.-> r r4 |
    mib8-.-> r r4 mib32-> mib16. r8 mib8..-> mib32 mib8-.-> r r4 |
    mi!8-.-> r r mi-.-> r4 |
    la,16( re) mi( sold) la4-> sold'16->( la sold mi) re( mi,) sold( la) re,2---> |
    la'8-> r r4 r2 | R2. R1 R2.
    r4 re,8-.\mp r | R2.
    r8 fa8-. r4 | R2.
    R2 fad8-.\p( dod-.) dod4-- r |

    %%% Placando assai %%%
    r2 fa~\pp fa2. r4 |
    r2 fa~ fa2. r4 |
    fa,2\>( mi mib \ten re2.~\!) re r4 |

    %%% Andante a piacere %%%
    r2 \t {dod4\mp\<( dod dod} \t {re\> re re} mib\!) r |
    r2 \t {dod4\<( dod dod} \t {re\> re re} mib\!) r |
    r2 \t {fa4\<( fa fa} \t {fad\> fad fad} sol\!) r |
    r2 \t {fa4\<( fa fa} \t {fad\> fad fad} sol\!) r |
    r2 do'\mf( sol4. mib) si'2\>( fad sold4. sol\!) |
    R1*7 R2*3 R2.*6

    %%% A tempo %%%
    r4 sol,\f\<( sib do\!) |
    r dod\<( red fad) sold'2\!\startTrillSpan sold4\stopTrillSpan r4 |
    \ten sol,,!1~\mf sol8 r r2 |
    r2 r4 r8 \t {fa16\<( fad sold} |
    si2.~\mp) si8 r r4 r2 |
    mi,2.--\mp( re2-- red4-- mid-- fad2--) r4 |
    fa'!8.--->\f fa16 fa8-. fa~-> fa fa-. fa4-- |
    r16 fa fa8~-- fa fa~---> fa fa-> fa-> fa-> |
    \t {la,--->( dod fa~)} \t {fa fa4--} fa8-> fa-> |
    r fa-> \t {fa4--->\< fa---> fa--->} si4.--->\! r8 si4-- |
    sol---> r8 \t {lab,16\<( si re)} sol8.->\! sol16 sol8-. sol~--->|
    sol4 sol-- r8 sold4-- \t {re'16\ff\<( mib fa)} |
    sold8->\! r r4 sold,4\p\<\startTrillSpan sold8-.->\!\stopTrillSpan r4 |
    \ten re,2~\mf re8 r | r4 \t {re'16\<( mi la} |
    si4.--\f) \t {mi,16\<( la re} | sold8->\!) r4 |
    \ten fa,,2~\mf fa8 r r \t {sol'16\<( sib do)} |
    dod4.--\f \t {re16\<( fa sol)} sold8--\! r \t {re16\<( mi sold)} |
    la8\sfz r r4 R2*2
    re,,,4.~\mp re4 r16 sib'8.~--\mf\< sib4 solb'-- |
    R2\! R4. R2.

    re'4->\f r r2 | r4 r8 \t {sib,16\sfz\> fa sol} \t {mi4\< la sol} |
    sib4->\! r r2 | R1 r2 \t {re,4\mp( do re} | mib2.--) r4 |
    r8 si'4\mp( re8 mi4. fa8~fa4) sol--\mf( la-- sib-- |
    re,4--->\!) r r2 R1*3 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    R2.*21
    R1. R1 R1. R1 R1. r2 sol,4->\mf r | R1. R1
    la4\mf( sol fa mi fa8\< mi fa sol la2\! mib4) r |
    R1.*5 r2 reb4-.\sfz r | R1. R1 r2 r4 la'\mp( sol fa |
    mi-.\sfz) r r2 | R1.*5 r2 sol4-.\sfz r | r2 r4 la-.-> fa?-.-> r |
    r2 mi4---> r |
  }
}

EntracteFluteDeux = { \FluteDeux
  \relative {
    R2*9
    R1*10 r2 \t {sol''16\p( fad mi} dod8-.) r4 |
    R1 r4 re-- r2 R1 r4 la--\mp r la-- r sold( la->) r |
    R1*2 \ten re,1~\mp re2. r4 |
    dod16\<( re) fad-. sold-. si2.~--\! si4 r r2 |
    R1*6 fad'4\mp\<( dod'\!) r2 | R1 r4 re,8-.\mf re-. dod4-. r |
    R1*4 r2 do!8\mp( reb) reb( do) mi\<( fa) fa( mi) sold( la) la-.\f la-. |
    re4-> r r re, r re r |
    r8 dod,16-.\mf\< re-. fad8-- \t {sold16( fad sold} si) re-. mi-. sold-. \t {la16( mi re} mi8--) |

    %%% Fugato %%%
    re4--\f r \ten re,2~--\mp re2. r4 | R2.*2 R2
    R1 r4 \ten re2~\p re2.~ re4 r r2 |
    solb\mp( fa8) r r4 | R2. solb2( fa8) r |
    R1 solb2( fa8) r r4 R2. sol!2.( fad4) r r2 | R1
    r4 \ten do'2~\p( do2. la2.) r4 | R1
    r4 re\mp( dod'~) \ten dod2.~ |
    dod4. r8 \tt {mi,,16\<( la do fa sold} dod8-.\f) dod-. |

    %%% Stretto %%%
    re4->\f r r2 R1
    r4 r8 \t {re,16\mp( mib fa} lab4-.) r4 |
    re,8-.\pp fad-. re'4-- r2 |
    mi,,8-. \t {fa16( la sold} do8-.) si'-. r do,-. r4 |
    mi4--\mf r mi8( fad) r fad( mi4) mi8( fad) r2 |
    \st {fad8\p re mib sib} fad4-- r | \st {sold'8 mi fa do} sold4-- r |
    sib'4-. r r2 | R1*3

    %%% Noir %%%
    R2.-\fermataMarkup R2.*4 R2 R2. R1 R2. R2
    R1*5 R1.*4 r2 solb,--\p R2.-\fermataMarkup
    R2.*8 R2.-\fermataMarkup

    %%% poco più %%%
    R2.*4 R2.-\fermataMarkup

    %%% Andantino %%%
    \ten do1~\mp do4 r re1~ re4 r la1~ la4 r la2.-- r4 R2.

    %%% Largo non troppo %%%
    la'1.\mf( mi1~ mi4) r mi1.( re1 sold,4) r |
    do1.( re1~ re4) r | mi1.~( mi2 la2.) r4 |
    la4( sol8) r fa4( mi8) r mi'2\<( | fa\mf mi re~ re\> do2.\!) r4 |
    dod,4\mf( mi) re2.( dod4) |
    \grace re8( \afterGrace dod1\startTrillSpan
    {si16[ dod]\stopTrillSpan }re4) r |
    la'4( sol fa mi fa2) fa( mi2.) r4 |
    la4( sol fa mi fa) r do2( si la) |
    \ten la1~--->\f la4 r si2.---> r4 | R1 R2. R2
  }
}

ActeDeuxSceneUnFluteDeux = { \FluteDeux
  \relative {
    R2.*4 R2 R2.*2 R2 | r2 \t {si''8\p\<( re) fa}| fad2--\mp( red8) r16 fad!-. |
    \ten re!2.~---. | re4 r |
    R2. R2 | la'2.~\pp | la2.~ | la4 r | r \t {sib,8\p\<( reb) mib~--\!} mib4~ |
    mib16. fad32-.\mp do8~-- do2 |
    \tt {si!16\p( do si) sold( sol) } mib'16-.\> mi,!8.~--\! mi4~|
    mi r | R2. R2 R2.*2 R2 |
    la2.~\pp\<| la2.~| la2.~\mf\>| la4\! r |

    %%% Entrée de la Soprano Deux %%%
    R2.*2 R1 R2. \t { r2 mi,1\mf\>} do2.~\mp do4 r re2.~\p re2 r |

    %%% Andantino %%%
    r2 \ten re~-- re2. r4 R2. | r2 re4~-- re2.~ re4 r re~-- re r |
    re-- r2 r re4~-- re2.~ re4 r2 R2. | R1 R2. R2
    dod2-- r4 r re( \ten sold2~) sold4 r2 R1 R2. R1
    \ten do2.~\p do2. r4 | R2. R1 re,2-- r4 R1 R2.
    r2 r4 re~\p re2.~ re2. r4 |
    mi2.~ mi2. r4 | r re2\>( mi2.\!) r4 |
    re'4.\mp( mi4.) si4( re la) r |

    %%% Entrée de la Contralto %%%
    sold8\mp( la sold mi) re( mi) | sold( la sold mi) \ten re2~-- re2.~ re4 r r2 |
    R2. R1 R2. R1 r2 do4~--\p do do2-- r4 | r2 do4~-- |
    do2. r4 | r4 re2~-- re4 r re-- r | r do2~-- do4 r r2 |
    do''8-.\ppleggiero r r2 | r r8 do-. r8 r16 do,-. | do'8-. r r2 | R1 r4 r8 do,-. r4 |
    do,4--\p\< re8( fa4) re8~-- | re2\! r4 |
    R2.*5 r4 do2~--\p do r4 | R1 R2. |
    R1 lab'4\mp( solb fa mib fa8 mib fa solb lab4 | mib2.~) mib4 r r2 |
    R2. r4 do2-- r4 R2. R1 |
    la'4\mp( sol fa mi fa8 mi fa sol la4 | mi2.~) mi4 r | re2.\p r4 |
    R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisFluteDeux = { \FluteDeux
  \relative {
    R1 R2. R2

    %%% Presto agitato %%%
    sol'2.--\p r2 |
    sol8( mi sol mi sol mi sol mi sol mi | sol2.) r2 |
    sol8( mi sol mi sol mi sol mi sol lab | sol2.) r2 |
    sol8( mi sol mi sol mi sol mi sol lab) | sol( mib reb mib sol4) r2 |
    sol8( mi sol mi sol mi sol mi sol lab | sol2.) r2 |
    sol8( mi? sol mi sol mi sol mi sol mi | sol4) r sol8( lab sol mib reb mib) |
    sol8( mi sol mi sol mi sol mi sol lab | sol2.) r2 |
    mi8( sol mi sol mi sol mi sol mi sol) |
    mi8\>( sol mi sol mi sol mi sol mi sol |
    mi4\!) r1 | R1*5/4
    r2 r4 dod'4\mp-- sol8( la | dod re dod4) r r2 | R1*5/4
    dod,8\p\<( re dod re dod re dod re dod4 | re4->\f) r1 |

    R1*5/4*6
    \ten red1*5/4~\pp red2. r2 | R1*5/4*3
    \ten mi1*5/4~ mi2. r2 | R1*5/4*9

    %%% Boum %%%
    R1*5/4-\fermataMarkup
    sol2.--\p r2 | sol8( mi sol mi sol mi sol mi sol mi |
    sol2.) r2 | sol8( mi sol mi sol mi sol mi sol mi |
    sol2.) r2 | sol8( mi sol mi sol mi sol mi sol mi |
    sol2.) r2 | sol8( mi sol mi sol mi sol mi sol mi |
    sol2.) r2 | sol8( mi sol mi sol mi sol mi sol mi |
    sol2.) r2 | sol8( mi sol mi sol lab sol mi sol lab |
    sol2.) r2 |

    %%% Air ténor %%%
    mib'2--\f sol,16\<( lab sib reb mib4\!) mi,16\<( lab sib reb) |
    mi2\!( mib2) r4 | mib4~ \t {mib8 mi, sol} \t {lab sib reb} mib4 r |
    r2 \t {mi,8\<( sol lab} \t {sib reb mib} \t {fa lab sib} |
    mib4.--\!) \st {sib8( fa mi) mi,\<( mi' fa sib} | mib2.--\!) r4 mi,,8\p( sol |
    mi sol mi sol mi sol) lab\<( reb mib fa | lab4.\f) \st {reb8 sib} lab~-- \ten lab2~ |
    lab4 r mi,8\<( sol sib mib lab sib |
    mib4.--\!) \st {fa8( lab reb, fa) lab,\<( sib reb} mib2.--\!) r4 mi,,8( sol) |
    \t {mi\<( sol lab} \t {sib si re} \t {mi fa sol} \t {lab sib reb} \t {mib fa lab} |
    sib8\!) r \st {mi,,\<( lab reb fa\!) r si,,\<( mi lab | reb4\!)} r1 |
    sol,,8\p( mi sol mi sol mi sol mi sol lab) |
    sol( mi sol mi sol) r sol( mib reb mib) |
    sol( mi sol mi sol mi sol mi sol) r |
    sol( mi sol mi sol mi) sol( mib reb mib) |
    sol( mi sol mi sol mi sol mi sol) r |

    %%% Moderato assai %%%
    R1*7/4 sol8(\pdolce mi sol mi sol mi sol mi sol mi sol mi sol mi |
    sol4) r2 r1 | sol8( mi sol mi sol mi sol mi sol mi sol mi sol mi |
    sol4) r2 r1 | sol8( mi sol mi sol mi sol mi sol mi sol mi sol mi |
    sol4) r2 r1 | mi4( sol mi sol\> mi sol mi~\!) mi2 r4 R2 |
    sol2-- r4 sol8\p( mi sol mi sol mi |
    sol2) r4 | sol8( mi sol lab sol mi |
    sol2) r4 | sol8( mi sol mi sol lab |
    sol4) mi8( sol mi sol mi4 r2 |
    sol8) lab( sol mib reb mib) |
    sol4\pp( la sol la sol la sol~) |
    sol2 r4 sol8\p( la sol la sol mi re mi |
    sol2) r4 sol8( mi sol mi sol mi sol4) |
    mi2-- r4 sol8( la sol mi re4 mi2) r4 |
    sol8( la sol mi re4 | mi2) r4 |
    sol8( mi sol mi sol4 | mi) sol8( mi re4) |
    mi1-- r2 r4 | mi4( sol mi sol mi2.~) |
    mi4 sol( mi2) sol4( mi) r |
    sol1-- r2 r4 |
    \repeat volta 2 {
    sol8( mi sol mi sol mi sol mi sol mi sol mi sol mi |
    sol4) r2 r1 | sol8( mi sol mi sol mi sol4) r r2 |
    }
    sol8( mi sol mi sol mi sol4) r r2 |
    sol8( mi sol mi sol mi sol4) r r2 |

    %%% Presto subito %%%
    \ten mi1.~--\f mi2 r4 \t {sib'8\mp( lab si} sol'4-.) r |
    R1.
    \tt {mi,8->\f( sol mi sol) r} \tt {mi->( sol mi sol) r} \tt {mi->( sol mi sol) r} |
    \tt {mi->( sol mi sol) r} \tt {mi->( sol mi sol) r} r2 |

    %%% Tempo giusto %%%
    sol2-- r4 | R2.*6-\markup "Prenez le piccolo" \Piccolo R2*2
    R2.*4 R2 R4. |
    r4 \tt {sol'16\mp\<( lab sol lab sol)} \tt {lab( do lab do re)} \tt {fa( do lab do fa)} |
    sib2~--->\f sib8 sib-- sib-- | reb2-> r4 |
    sib2~---> sib8 sib-- sib-- | solb2-> r4 |
    sib2---> la32\<( si dod re | mi4--->)\! mi8-. mi~-> mi mi-. \t {mi16( fad sold} |
    la8->)\sffz \t {la,16\p( solb lab} mib8-.) r r4 | R2.
    r8 \t {la16( mib do} sib8-.) r r4 | R2.
    r8 \t {la'16(\ppleggiero reb, solb} sib,8-.) r r4 | R2.
    r8 \t {la'16( reb, re} solb,8-.) r r4 | R2.
    r8 \t {la'16( sib, reb} re,8-.) r r4 | R2.
    r2 \t {fa16( la lab} do8-.) | r2 \t {la16( reb do} fa8-.) |
    \t {reb16( fa mi} lab8-.) r2 | re,2.--\mp
    R2.-\markup { Prenez la \concat { G \super de } Flûte } \FluteDeux
    R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    R1 \acc {reb,4\f r2 reb4 r reb r reb r2 |
    reb4} r2 \t {fa8( mib solb} re'4-.) | R1*5/4-\fermataMarkup R1*5/4
    sol,,8(\pdolce mi sol mi sol mi sol mi sol mi |
    sol2.) r2 | sol8( mi sol mi sol mi sol mi sol mi |
    sol2.) r2 | sol8( mi sol mi sol mi sol mi sol mi |
    sol2.) r2 | sol8( mi sol mi sol mi sol mi sol mi |
    sol2.) r2 | sol8\mp( mi sol mi sol lab sol2) |
    r4 sol8( mi sol mi sol lab sol4) |
    r sol8( mi sol lab sol4) r |
    \ten mi1*5/4~\mf mi2. r2 |
    R1*5/4*7
  }
}

ActeDeuxSceneDeuxFluteDeux = { \FluteDeux
  \relative {
    R1.*4 la'4(\pdolce sol fa mi fa8 mi fa sol | la4 mi) r1 | R1*2 la4\mp( sol fa |
    mi) fa8( mi fa sol) la4( mi) r | R2.*2 | la4\p( sol fa mi fa8 mi fa sol la1) r2 |
    R1. la4( mi) r2 | R1 la4( sol fa mi) fa8( mi fa sol) la4( mi) r8 |
    r4 r8 sold~--\pp \ten sold2~ sold4 r8 sold~-- sold2~ sold4 r8 si~-- si2~ |
    si4 r8 si~-- si4 r | \st {mib16\mp mib fa8 sib16 sib dob8} mib,8( fa) mib( fa) |
    mib( fa) mib4-- \acc {fa16\f fa mib8} r4 |
    R2. R1. R1 | la,4.\p( mi8~) mi4 r4 | R2.*2 r2 r8 la~\mp\>( la mi\!) r4 |
    R2.*2 r2 r8 re'~\>( re mi\!) r4 | R4. \ten re,1~\mf re2. r4 |
    r8 re'->\f r4 r8 re'16( re,) r4 | r4 r8 r16 mi( re8) r r4 |
    r2 r4 \st {re16 re re8 | mib4-> r r mi16 mi mi8 |
    mib4-> r r mi16 mi mi8 | mib4-> r r mi16\< mi mi8} | \ten mib1~--\f mib2 r4 |

    la,4\p( sol fa mi fa8 mi fa sol la4 mi) r2 |
    la4( sol fa mi fa8\> mi fa sol | la4\! mi~) \ten mi1~ mi2 r4 | la4( mi) r2 |
    \slap { \ind #"slap" la4\mf } r2 | r8 sol~--\pp sol2. fa2.~-- fa8 mi~-- mi2. |
    fa4( mi fa sol) la2.~-- la2 r4 |
    R1 la2.~ la1~ la2 r4 | R1 sold2.~-- sold1 la2 r4 |
    R1 R2. R1 R2. R1 r2 r8 r16 la'32\<( mi' |
    la8-.\f) r r4 | r r8 la,16( mi' | la8-.) r r4 |
    r2 r8 la,16( mi' | la8-.) r r4 r2 | R1*2

    \st {sold,8 sold la} r4 | sold,4-- r8 \st {la la} | sold4-- \st {sold8 la} r |
    re4-- r8 \st {mib, mib} | re4-- sold8-. r4 | re4---> r r8 | R2*5/4
    \st {sold'8 sold la} r4 | R2*5/4 re,,4 r4 r8 | R2*5/4*4
    R1*3 r4 \slap { mi\p sol} r r \slap {dod, mi} r | R1*4
    fa'4-.->\sfz r2 R2 R1*2 la,!4\p( sol fa mi fa8\> mi fa sol \ten fa2.~\!) fa2 r4 | R2.*3
    R2*2 R2.*2 R2*2
    lab'4\mp( reb dob sib) dob-- r | r r8 \slap { sold,\mp la} r r4 |
    r8 \slap {sold la} r r \slap {sold la fad |
    sol} r r4 | R2*4 r4 fa8->\pp r | R2
    r4 r8 \slap {sold\mp la} r r4 | R2*7
    R2.*2 la'4\p( sol fa mi fa8 mi fa sol | la4 mi) r | R2. \meno la,4( mi) r |
    R2.*9
  }
}

ActeDeuxSceneTroisFluteDeux = { \FluteDeux
  \relative {
    %%% Larghetto %%%
    R4.*6 sold'8(\pdolce la dod,~) dod4.~ dod4 r8 |
    sold'( la dod,~) dod4 r8 |
    sold' la dod,~ dod4 r8 |
    sold' la dod,~ dod4 r8 |
    sold' la dod, do!4 r8 |
    la' sold la do,4 r8 |
    la' sold la do,4 r8 |
    la' sold la do,4 r8 |
    la' sold la do, r sold' |
    la sold la do, r sold' |
    la sold la do, r sold' |
    la r do, |
    \st {sold'16\pleggiero sold sold sold r8 |
    r16 sold sold sold sold8 |
    sold16 sold sold sold} r8 |
    \det {la8 sold sold sold} r4 |
    lad16\pp lad( si8) sold16 sold( |
    la8) lad16 lad( si8) |
    \st {sold16\pleggiero sold sold sold r8 |
    r16 sold sold sold sold8 |
    sold16 sold sold sold} r8 |
    la16 la( sib8) fad16 fad( |
    sol8) la16 la( sib8) |
    \st {sold16 sold sold sold r8 |
    r16 sold sold sold sold8 |
    r8 sold16 sold sold8 |
    sold16 sold sold sold} r8 |
    \ind #"poco più" sid16 sid( dod8) lad16 lad( |
    si8) sid16 sid( dod8) |
    si16 si( do8) r |
    \st {sold16 sold sold sold r8 |
    r16 sold sold sold sold8} |
    R4*2 r8 \slap { \ind #"slap" sold\mf la fad sol} r |
    R4*2 r8 \slap { sold la fad sib r r sold16 sold sold8} r |
    R4*2 \ordin sold16-.\p \st {sold sold sold |
    r8 r16 sold sold sold sold8 |
    sold16 sold sold sold} |
    R4 r8 \slap {sold\mf la fad sol} r |
    R4*5 R4. R4*7
    \st {sold16\p sold sold sold r8 |
    r16 sold sold sold sold8 |
    sold16 sold sold sold r8 |
    r16 sold sold sold sold8 |
    sold16 sold sold sold} r8 |
    R4. r8 r16 dod( si re |
    fa8-.) r4 | r8 \st {si,16\mp si sib8 |
    la-> r4 | r8 do16 do si8 |
    sib-> r4 |
    la16 la la la r8 |
    r16 la\<} sib( mib) dod-. dod-. |
    \ten do4~\! do~ do~ do~ do8 r |
    \st {sib16 sib sib sib sib sib sib sib |
    sib sib sib sib sib sib sib sib |
    do8-> r R4 sib16 sib sib sib do8-> r R4 |
    la16 la sib8 do->} r |
    r \slap {mi,\mf fa} r sold16-.\mp sold( la8) |
    la( si16) si( la8) si16-. si( la) la-. r8 |
    \slap {sold\mpsempre sold la r fad fad sol r R4 do,8 do} |
    R2.-\fermataMarkup R2.*6

    %%% Interlude %%%
    R2*2
    mi8\p\(( fa) mi( fa) sold( la)\) r4 |
    mi8\(( fa) mi( fa) sold( la)\) r4 | R2
    \t {mi4( fa8~)} \t {fa mi( fa)} |
    sold( la) sold( la~) la4~ \t {la8 sold( la)} si( do) |
    r16 si8.~--\mp si8 r |
    \t {do4( red mi)} \t {si( do red} |
    mi4.) r8 fad,( sol la sib do dod) r4 |
    fad,8\<( sol lad si re) |
    lad'2~\mf( lad4 si fad sol lad si |
    lad2~) lad4 r8 si-- fad\>( sol lad si |
    lad2~\!) lad4 \t {r8 si( lad)} |
    dod4.\mf( re8) lad( si~ \t {si dod re} |
    mi4) r16 fa8.-- r8 mi-- r r16 fa-.-> | r8 mi---> r16 fa-.-> r8 |
    mi( fa dod re mi fa) r mi---> |
    r16 fa-.-> r8 mi---> r sold16->\f sold-> |

    %%% Quatuor %%%
    la8-> r r4 |
    r8 \st {fad,\mp do la r r4 |
    r8 fad' do la} r r4 |
    r8 fa'! do sold r16 dod,-.\< re'8-> |
    sib'2--->\f r4\fermata
    R2.*6-\markup "Prenez le Piccolo" \Piccolo R2*2 R2.

    %%% Air baryton 1 %%%
    R2*2 R2. R2*2 r2 \ind #"éteint" re,8--\p re-- |
    mib2~-- mib4 r | r4 r8 mi( fa sol |
    la2~) la4 r | R2.
    r8 fa16.--\pp fa32( la8) r |
    r8 r16 \st {fad( fad fad |
    fad fad fad fad)} r4 | R4.
    r4 la16-.\p\> do( re) la-. |
    sol'4--\! r | r16 la,( mi') re-. la'4-- r |
    sold16->\mf sold-> la8-> r4 |
    \st {re,,16 re re re r re re re |
    re re r re re re re re} \tt {re\<( la' mi') sol,( re')} |
    la'2\f r8 \t {la,16\<( sold' fad} red'4~\!) |
    red2 r4 | R2

    %%% Doppio tempo %%%
    R2*7-\markup { Prenez la \concat { G \super de } Flûte } \FluteDeux |
    \det {reb,,,2.\p r4 mib2 r4 re2 |
    r4 re2 r4 dod2 r4 fad2 r4 sold2} |
    r8 \st {la'\mp la la} \det {re4 do} re8-. la~-- |
    la4. r8 | R2.-\markup "Prenez le Piccolo" \Piccolo R2 R2. R2 R2. R2
    R2. R2 R2. R2 r2 \t {re8\<( sold la} |

    %%% Climax %%%
    re8->\f) r r4 | r4 \t {sold,16( si dod} |
    re4.--->) r8 | r4 re,8-. r re,-. r r4 |
    r4 \t {fa''16( fad sol} | sold4.--->) r8 | r4 re,8-. r re,-. r r4 |
    R2 sib'''16\>( fa) \st {do sol re8} |
    re,8.--\! re16-. re8-. r8 re~-- re re~-- re16 re-. re8-. |
    re'2.--\f r4 |

    %%% Soprano 2 %%%
    \slap re,4 r2 | R1-\markup { Prenez la \concat { G \super de } Flûte } \FluteDeux |
    R2. R1 R2. R1 R2. R1 R2. R1
    r4 mi,--\pp r r r8 mi~-- mi4 r |
    r re-- r | r r8 re~-- re4 r |
    r mi-- r R1 R2.
    \st {sold8\p sold sold sold r2 |
    r8 sold sold sold sold4 |
    mi8 mi mi mi} r4 mi( |
    fa-.) r red( mi) r r fad( |
    sol) r la( sib) r r2 | R2.
    %%% Issue #34 (love it)
    lab4--\mp re32( mib8..) sib8( re lab4) | R2.
    re'4-- r r2 R2. |
    r4 r8 la,8\p( mi'2~) | mi4 la,( re |

    %%% Soprano 1 %%%
    sold) r r2 | R2. r8 sib,\p( la lab sol fad fa4 |
    mi2) r4 | R1 r8 reb'( lab sib sol'4) | R1
    r4 la,2--\pp sold4( la do re~) re2 r4 |
    do'2--\p re,4( do'~) do re2~-- re2. r4 |
    R2. \st {sold,,8\p sold sold sold r sold sold sold |
    sold4-- r fad8 fad sol4-- r r2 | R2. mi4-- r r2 |
    R2. R1 mi4-- r mi8 mi} | mi4 r r2 |
    R2. R1 r4 mi\p\<( fa) |

    %%% Duo %%%
    mi'2.\!( fa4 | la2.) r4 |
    fa\mp( solb) r mib( solb) r re8\>( mib fad sold |
    la2.--\p) la4-- | re4.( sold,8-.) r16 si\>( fad8~\!) fad4~ |
    fad4. la,8( re4.) r8 | sold,2--\< |

    %%% Baryton 2 %%%
    re4\! r2 R2. |
    re2.~\mf re4 r2 |
    re'4---> r2 |
    re'4--\f \tt {re,16( fa sol lab sib} re4->) |
    re2---> r4 | R2.
    re,,2.~\mf re~ re4 r2 | r4 \t {re'16\f( sol lab} |
    re4->) r2 | r8 \st {re, re re} re4-- R2.*6-\markup "Prenez le Piccolo" \Piccolo |
    r8 \acc {sib'\f sib sib sib sib | R2.
    r8 re re re} \t {\ind #"en dehors" fad16(\< sold sib} re8->\!) |

    %%% Boum %%%
    R2.*3
    r4 \tt {re16(\ppleggiero do sol la fad)} r8 \t {mi16( si dod)} |
    \tt {sib'( lab) mib( fa re')} si,8-. r r4 |
    r \tt {reb'16( lab solb mib fa)} \t {do8-.( sib'-. sol'-.)} | R2.
    r2 \tt {la,,16--(\pp sib la sib la} | \tt {sib la sib la sib)}
    \t {la--( sib la)} \t {sold--( la sold)}
    \t {la--( sib la)} \t {do--( reb do)} |
    \tttt {re--( mib re mib re mib re)}
    \tt {sol,( si) sib( re) mib(} sol4) | R2.
    r4 \t { sol16(\p si sib} re8) \tt {lab16( sol) sib( si) dod(} | re4)
    \tt {r16 lab,( sol) si( sib)} \tt {mi( mib) sol( fad) si-.} |
    re4--~ re16 sol,-.( do,-. fa,-.) \t {sib'8-.( mib,-. lab,-.)} |
    \tt {re,16( mi) fa( sol) la(} sib8) r sold'16(\< la si dod |

    %%% Contralto %%%
    re8->\!) r r4 | R2 r4 sold,8--\f( \t {la16 si dod} |
    re8-.->) r r4 |
    R2*8-\markup { Prenez la \concat { G \super de } Flûte } \FluteDeux
    R2. R2*6
    sold,,,8-.\pleggiero sold-. sold-. sold-. r4 |
    r8 sold-. sold-. sold-. sold4-. |
    dod8-.\mp dod-. dod-. dod-. r4 |
    r8 mi-. mi-. mi-. mi4-. |

    %%% Grand ensemble %%%
    \ten fa1\pp~ fa2 r |
    \tt {mib,8(\p \> solb) si( mi) sol-.}
    sold2\!--~ sold4 r r8 dod,,-.(\p dod-. dod-. |
    dod-. dod-. dod-. dod-.) r2 |
    sold'8-. sold-. sold4--~ sold sib16(\< mib) solb-. reb-. |
    lab'2.--\p r4 |
    mi,2--~ mi4~ \t {mi8 lab( sol} | si4) r r2 |
    r2 r4 sold8->\mf sold-> fad4-> r re8-.\< sold-. re'-. sold-.\! |
    r2 sold8->-. r r4 |
    mi2(\mp fa4 red) mi2( mib4) re8-. re-. |
    mi4-> r r sold,8->\mp la-> |
    re4-> r4 r8 la( do) re-. |
    fad4-- r r8 dod,( fad) la-. |
    dod(\p re) re( dod) dod( re) re( dod) |
    fa( solb) solb( fa) fa( solb) solb( fa) |
    fa( solb) solb( fa) fa( solb) solb( fa) |
    sold( la) la( sold) r2 |
    la2\f~ la8 sold~ sold4 |
    la4. sold8~ sold2 |
    r8 sold'4.---> r8 sold4.---> R2.

    %%% Chute %%%
    \ind #"scherzando"
    sold8-.->\f sold-. la4-- sold8-.-> sold-. |
    \dim la4-- sold8-.-> sold-. la4-- |
    do,8-.-> do-. reb4-- do8-.-> do-. |
    reb4-- mi,8-.-> mi-. fa4-- |
    mi8-.-> mi-. fa4-- sold,8-.-> sold-. |
    re4--\p re-- R2*2

    %%% Andante al fine %%%
    R2.*4 \cmb #"pp" #"très clair" \ten mi2.~ mi2 r4 |
    sol16(\p mi sol mi sol mi sol mi sol mi sol mi~ |
    mi2) r4 |
    sol16( mi sol mi sol mi sol mi sol mi sol mi~ |
    mi2) r4 |
    mi2.\pp~ mi~ mi2 r4 |
    \ind #"senza cresc." sold16( mi sold mi sold mi sold mi sold mi sold mi~ |
    mi4.) r8 sold16( mi sold mi) | \meno sol2-- r4 |
    sol16( mi sol mi sol mi sol mi sol mi sol mi~ |
    mi2) r4 |
    sol16( mi sol mi sol mi sol mi sol mi sol mi~ |
    mi2) r4 |
    mi2.\>~ mi2\! r4 | R2.*13
    \ten mi2.\p~ mi2 r4 |
    mi--->\f r2 |
    \tt {r16 fad'(\< si) la( re)} \t {do8( fa) mib-.} lab4--->\! |
    r8 mi--\ff \< \t {mi-- mi mi} \tt {mi16-> mi-> mi-> mi-> mi->\!} |
  }
}