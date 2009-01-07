%------------------------------------------------------------------%
% Opéra Libre -- flute1.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

FluteUn = {
  #(make-instrument-name 'flute-one "flute" 25)
}

PrologueFluteUn = { \FluteUn
  \relative {

    %%% Introduction %%%
    \partial 4 r8
    \tt {mi'32\< fa si mi fa} sib2.~\mp sib~\< sib~ sib2~\> sib4~ sib8\! r
    \ten mi,,,2~--\mf mi4 r | mi4~ mi4:32 ~ mi8 r |
    fa2~ fa \ten mi2.~ mi4 r |
    r \ten mi~\mp| mi2.~ | mi4 r |
    r mi~| mi2.~ | mi4 r |
    r r8 \t { mi16\<( la re} | mi2--->\f) r4 | r la, |
    r4 \tt {mi'16\p( la\< sol do sib} mib2\mf) r4 |
    r4 \tt {sold,16\p( si\< mi re fa} sol2\mp) r4|
    R2 r4 r8 \t {lab16( mib fa} do8) r | re,-.-> r r4 |
    mi,!2.~--\mp mi4 r | fa2~-- fa4 r2 |

    %%% Tempo giusto %%%
    \slap { \ind #"slap" re4\f} r R2*6 r4 do'16( fad la sol |
    re'4\f) r2 | r2 do,16( fad mib si' | re4) r2 R2.
    dod,,2.\mf( mi lab2) r4 | r8 mib'\mp( fa\< lab si dod |
    re4--\f) re8 re4-> re8 | re4-> re8 re~-> re16 re8.-- | re2.---> r4 R2*2 R2-\fermataMarkup

    %%% Solo Ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*7 r2 lab4---.\pp sol,---. r lab'---. sol,---. lab'---. r |
    sib---. si,---. si'---. | R4.
    R4.*2 r8 lab'-.\p r sib-. r si-. | R4.*5
    \acciaccatura mib,16 fab8-.\p mib-. reb-. r lab,-. sol-. R4.*15
    \ten do'4.~\p do4.~ do4.~ do8 r4 |
    r8 r16 do8.~ do4.~ do4.~ do8 r4 |
    r8 re4~ re4.~ re4 r8 | lab'\mf( fa mib) |

    %%% A tempo %%%
    re'32-.->\mp re,-. re-. re-. re,8-. r | sold,4:32\mf r8 |
    re'''32-.-> re,-. re-. re-. re,8-. r | sold,4:32\mf r8 |
    r8 \t {do16( fa sib)} \t {fa( sib mib)} |
    sol-.\f sol-. sol-. re-. r8 | sol16-. sol-. sol-. re-. r8 |
    sol16-. sol-. sol-. re-. r fa32\<( sol | lab8\sfz) r4 |
    R4.*2 dod,,16-.\mf dod-. r dod-. dod-. dod-. | mi8-. r4 |
    si'8-. r4 | si16-. si-. si-. r r8 | si16-. si-. si-. r r8 |
    si16-. si-. si-. r r8 | si16-.\< si-. r si-. si-. si-. |
    re->\f re re r r8 | re16-> re re r r8 |
    re16-> re re r r8 | mi16-> mi mi r r8 |
    re16-> re re r r8 | re16->\> re re r r8 |
    lab16-> lab lab r r8 | sol,16-> sol sol\! r r8 |
    R4.*8 r4 r8 \t {fa16\<( lab reb} \t {mi la do} |
    fa2.\f) | dod4\>( sib sol | mi4\pp) r2 |

    %%% Adagio %%%
    R1*4 R1.*2 R1*3 R1.*2 R1*2 do,2\p r4 |

    %%% Valse %%%
    r lab'''--\pp( lab--) | r solb--( solb--) | r do,--( do--) |
    r solb--( solb--) | r solb--( fab--) | r mib--( mib--) |
    mib4--( reb8--) r | mib4--( do8--) r | sol2.~\p sol4 r | R2.*2 R1
    r2 la'4--\p( la--) | r fa--( fa--) | r mi--( mi--) | r re--( re--) | r reb--( reb--) |
    r la--( la--) | r solb-- r fa-- |
    r2 re'8-.\f la'~-> la16 re,( la'8-.) | mib'4-> la,8-. lab'4.->( |

    %%% Vivo %%%
    la4\sfz) r | R2*8
    re,,,2\mp~ re~ re~ re4 r | R2*17
    r4 mi''8->\pp r |
  }
}

OuvertureFluteUn = { \FluteUn
  \relative {
    \tttt {mi''16 fa re dod' sol sold si} \t {sib,8 re fad} la16 fad mib do |
    mi4 r2 | \tttt {mi16 mi, fa sold la do dod}
    \tttt {mi mi, fa sold la do dod} \tttt {mi la, do dod fa sold la} |
    sib4
  }
}

ActeUnSceneUnFluteUn = { \FluteUn
  \relative {
    \ten do2~--\p do ~ do r4 |
    do2~-- do ~ do r4 |
    do2~ do4 r solb''4.--\pp r8 r4 |
    do,,2~--\p do4 r solb''4.--\pp r8 r4 |
    do,,2~\p do8 r do4 solb''4.-- r8 r4 |
    do,,2~ do8 r do4 solb''4.-- r8 r4 |

    si1\pp( solb2) r4 | mib1( do2) r4 |
    do'1\p( la2) r4 | la2.( mi4~) mi8 r lab4\<( la) |
    \t {\ind #"sostenuto" do8\mp( fa, lab,} \t {re,4) fa'8}
    \t {do'( fa, lab,} \t {re,4) fa'8}
    \t {do'( fa, lab,} \t {re,4) lab'8} \t {fa'4( sib8)} |
    \t {mi\mp( sib reb,} \t {solb,4) sib'8}
    \t {mi( sib reb,} \t {solb,4) sib'8}
    lab'4\mf(\> mi reb |
    do4\p) r2 | R2.*6 \ten do1\f~ do2 r4 |

    %%% Ad libitum %%%
    R1 R2.*2 R1 R2.*2

    %%% Agitato %%%
    \ten re,,1~\f re2 r | R1*2
    r4 r8 \t {re'16\mp( mib fa} sib4-.) r |
    r re,-.-> r2 | R1. r2 r4 \t {r8 fad( sib} |
    re4-.) r r2 | R1. R1
    r8 \t {la16( do re} mib4-.) r2 | R1
    R1. R1*2 R1.*3 R1 R1.
    dod'1\mf\>( re,2 dod1\p) r2 | R1.

    %%% Allegro non troppo %%%
    R1 R2. R1*2 r2 r4 r8 r16 fa,32\<( sol |
    la4-.\mf) r r2 | r8 fa16-.\mp la-. r8 fa16-. la-. r2 |
    R2. r8 sol16-. la-. r8 sol16-. la-. r2 |
    R2. r8 sol16-. la-. r8 sol16-. la-. r2 |
    R2. r8 fad16-.\mf la-. r8 fad16-. la-. r2 |
    dod2--\f r4 | mi,2.\mf r4 | R1*2
    r8 \st {do\p do'16 do, r8 do, do' do'16 do,8 do'16 |
    do,8 do,16 do'-> r do8-- do'16 do,8 do'16-> do, r do8-- do'16 |
    do,,8 do' do'16 do,8 do'16 do,8 do,16 do' |
    r do8-- do'16 do,8 do'16-- do, r do, do'8 |
    do-- do'16 do, r do, do'8 do'16 do,8 do'16 |
    do,8--\pp[ r16 do'] do,8--[ r16 do'] do,8--[ r16 do'] do,8--[ r16 do'] |
    do, do, do'' do, reb'\< reb, mib' mib,\! r4\fermata r8 r16 do'\pp |
    do,8--[ r16 do'] do,8--[ r16 do'] do,8--[ r16 do'] do,8--[ r16 do'] |
    do, do, mib'' mib, fa'\< fa, solb' solb,\! r4\fermata r8 r16 do\pp |
    do,8--[ r16 do'] do,8--[ r16 do'] do,8--[ r16 do'] do,8--[ r16 mib'] |
    mib, solb' solb, lab' lab,\< la' si, si' re8\mf r\fermata r r16 do,\p |

    %%% Moderato %%%
    do,8-- do,16 do' r do8-- do'16 do, do, r8 do'--[ r16 do'] |
    do,8-- sib16 do r do, do'8 r16 do8-- do'16 do,8 r |
    r do r16 sib do8 r8 do, |
    r8 do''16 do, r do' do,8 do,16 do' r8 |
    r do, r16 do'8-- do'16 do,8 do,16 do' r do8-- do'16 |
    do,8 r do,-- r r4 |
    r16 do do'' do, r sib do8 r do,--} r4 |
    \slap \ind #"slap" do8\sfz r r2 |
    r8 do''16-.\p do,-. r do8---. do'16-. do,8( do'-.) r do,~\pp |
    \ten do2.~ do2 r4 do~ \ten do2.~ do2 r8 fa,4.--\p( |
    do'4.) fa16-. sib,-. do4~-- | do8 fa4.~-- fa8 sib16-. mib,-. fa4~-- |
    fa8 r fa16-. fa-. do'-. sib-. do,4~-- |
    do8 sib'16-. fa-. do4-- r16 \st {fa\psempre sib do~-- do sib fa' sib, |
    do8-- sib,16 do sib' do8-- sib,16 do sib' do8-- |
    sib16 do do, sib' do sib, sib' do} | R2. R1
    R2*3 r4 r8 \ttt {sol32\pp\<( la si dod red mid} |

    %%% Allegro marcato %%%
    \st {fad8--\mf) r re--\p r fad,-- r re'-- \t {red16\<( mi mid} |
    fad8--\mf) r re--\p r fad,--} r r4 R1*2 |
    r2 r4 r8 \t {sol16\<( sib mib} |
    fad8-.\mf) r sol,---.\p r sib,---. r re'---. \t {red16\<( mi mid} |
    fad8---.\!) r sol,---. r sib,---. r r4 | R1*2
    r2 r4 sol8.-.\p sol16 si2--( sol8) r sol8.-. sol16 |
    si2--( sol8) r r4 | R1 r2 r4 sol8.-. sol16 si2--( sol8) r sol8.-. sol16 |
    si2--( sol8) r r4 | R1 r2 r4 \st {reb''8\pp r dob( r sib r lab) r reb r |
    dob\p( r sib r lab) r reb r dob\mp( r sib r lab) r r4 |
    dob8\p( r sib r lab) r r4 | r si,8\pp r sib r lab} r |

    %%% Agitato %%%
    re,2.\mf r4 | r re-- r re-- |
    r \t {sold'8\p( si do)} dod16\<( re dod re \tt {dod re dod re dod} |
    re4---.\f) re,2---> r8 \t {fa16( sol la} | sib4-.->\sfp) r r8 \st {fa r4 | fa8 r r4 r2 |
    R1 r4 lab8 r r lab r4 | r8 fa r4 r2 | r8 re} r4 r2 |
    R1 reb'8-.->\sfz r r4 r1 | R1*2
    \st {la16\pp fa fa8 la16 fa fa8 la16 fa fa8 la16 fa fa8 |
    sib16 fa fa8 sib16 fa fa8 sib16 fa fa8 |
    si16\p sol sol8 si16 sol sol8 |
    do16 sol sol8 do16 sol sol8 |
    dod16 la la8 re16 la la8 |
    re16\< la la re sold8->\!} r | R2 R1*4
  }
}

ActeUnSceneUnBisFluteUn = { \FluteUn
  \relative {
    R2.*6
    \ttt {re16( dod) re( dod) re( dod)}
    \ttt { re( mib fa) lab( sib si) }
    \ttt { dod( mi fad sol la do) } |

    %%% Piu vivo %%%
    re4->\f r r2 | r4 \ttt {re,,16\mf\<( fa sol) lab( sib dod) } \ttt { red( mi fad) la( si do) } |
    re4->\f r r2 | r4 \ttt {re,,16\mf\<( mi sol) la( sib do) } \ttt { mib( fa solb) lab( si dod)} |
    re8.--->\f re16 re8-. re'~-> re16 re, re8-. |
    re'4-> r8 re,~-> re16 re re8-. |
    re'8.-> re,16 re8-. re-> r4 | re-> re8 re4-> re8 |
    R2. \ten re2.~\pp re4. r8\fermata r4 |
    R2. \ten re2.~\pp re2~ re8 r\fermata r4 |
    R1 R2 |

    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 sib,-.\mf | sol2-- r4 sib-. | sol2-- r4 R2 R1
    R2.*2 R2*2
    r2 r8 sib-.\mf | sol4-- r8 sib-. | sol2-- |
    r8 sol\sfz r4 | r8 sol-> sib-> r r4 |
    r2 r8 sol->( sib-> reb->) |
    R2. R2*3 R2.*3

    %%% Adagio %%%
    R1*5
    \ten si1~\pp si2 r | R1*3
    r2 r4 si~\pp | si si32\>( la8..\!~) la4 si32\>( la8..\!~)|
    la4 \simile si32 la8..~la4 r8 si32 la16.~
    la2 si32 la8..~la4 r8 si32 la16.~
    la2 si32 la8..~la4
    si la32 si8.. la32 si8.. |
    la4-- la-- si-- si-- la-- la-- si-- la-- |
    la8\p( sol si4) si8( sol la4) |
    la8( sol si4) \simile si8 sol la4 |
    la8 sol si4 si8 sol la4 |
    la8 sol si4 la  la8 sol |
    si4 si8 sol la4 la8 sol |
    si4 la  la8 sol si4 |
    si8 sol la4 la  la8 sol |
    si4 si8 sol la4 la | la la r2 |
    r si4--\p si-- | si-- r r2 |
    r4 si\pp si si |
    R1*2 R1-\fermataMarkup |
    R2*4
  }
}

InterludeUnFluteUn = { \FluteUn
  \relative {
    R1. R1*3 R1. R1
    sold'4--\mp r sold-- r sold-- r |
    sold-- r sold-- r sold-- r |
    sold-- r8 sold16 sold \ten la2~-- la4 r r2 |
    sold4.--\mp r8 sold4.-- r8 sold4.-- r8 |
    sold4.-- r8 sold4.-- r8 sold4.-- r8 |
    sold4.-- r8 sold4.-- r8 | sold2-- r4 | R2
    \ttt {r16 sold\mp( la si mi re}
    \ttt {fa) re( mi fa sib sol}
    \ttt {do\<) sol( sib do mib reb} |
    fad1~\mf) fad2 r8 mib4-- do8( |
    fad1) r4 sol,( | fad'1~) fad2 r |
    fad1-- r4 \tt {sol,16\mp sib do\< mib reb} |
    fad2\! r8 fad~ \t {fad sol,( fad'} sib2.--->)\f\> |
    \ten fad2.~\pp fad4 r2 | R2. |
    fad,,16\p( sol fad re do re fad re do re fad sol |
    fad2.~) fad4 r2 R2.*2
    fad16( sol fad re do re fad sol fad re do re |
    fad2.~) fad4 r2 R2. fad'16( sol fad mi dod mi fad sol fad mi dod mi |
    fad4) r2 | R2.*2 |
  }
}

ActeUnSceneDeuxFluteUn = { \FluteUn
  \relative {
    %%% Air de la Soprano2 %%%
    R2.*2 R1*2  R2.*2 R1*2  R2.*2 R1*2  R2.*2 R1*2  R2.*2
    sold'8\mp( la) sold( mi) re2~ | re4 re8( mi) sold4 sold8( la) |
    sold( mi) re4 sold8( la) | sold4 r4 r |
    R1*2  R2.*2
    sold8\mp( la) sold( mi) re4 sold8( la) | sold( mi) re( mi) sold4-. sold8( la) |
    sold( mi) re4-. sold8( la) | sold( mi) re( mi) sold4-. |
    sol'!\mp sol'-.-> si,8( sol fa4-.) | fa8( sol) sol'-.-> si,-. r sol-. sol'4-.-> |
    sol,-. fa8( do') si4-. | do8-. sol'-.-> si,( sol) r do-. |
    fa,( sol) sol'4-.-> do,-. fa,8( do') | r fa,-. sol'-> si,-. do4-. sol'8-> fa,-. |
    sol4-. si-. do8( sol) | r re'\>( si la fa4\!) | \repeat unfold 6 {R1*2 R2.*2}
    re,2\mp( la' | sold4 mi re2~)| re2. | R2. | mi4( re la' sold~)| sold2. r4 |
    R2. r4 mi2( | sold1~) sold2. r4 | R2. r4 re8\p( mi sold la |
    sold2.) r4 | r2 lab8( sib re mib | re2) r4 | R2. | r4 lab8\pp( sib re2~)| re2. r4|
    R2.*2 R1 | r2 si'?\ppp\fermata |

    %%% Récitatif %%%

    R2.*2 R1 R2.*3 R1 R2.*5 | mib,8\sfz r r2 R2 R2. R1*2 R2.*5 R1 |

    %%% Duo %%%

    R2. R1 R2. R1 R2. R1 R2. R1 R2. r16 fa-.\mf fa-. fa-. si?8-- r |
    R2 r8 \t {mi,16\p( fa sol} sib8-.\<) \t {mi16\!( fa sol} sib8-.) r |
    r8 r16 fad,,-. si!16.--( sib'32 fa!8-.) r2 |
    r2 r8 mi32( sol fa sib mi8-.) r |
    r2 r8 \t {mi16( red dod} lad8-.) r r2 |R1
    lad1\mf\< re!2.~\! re~ re4 r8 r16 \t {do32\p( si la} fad8-.) r | R1

    %%% Piu vivo %%%
    R2. R1 R2.
    \ttt {do,16\mp( re mi) sol( lab sib)}
    \ttt {reb( mib mi) fad( la si) }
    \ttt {do\<( reb mib) mi( fa fad) }
    sol4\sfz r r2 |
    r16 re-.\mf\< re-. re-. sol4--\! fa | sol8-> re~-> re4 r2 |
    r16 re-.\< re-. re-. sol4--\! fa-- | sol8-> re~-> re4 r2 |
    r16 mi-.\< mi-. mi-. sold4--\! fad--  mi8-> la~-> la4 r  | R2.
    r16 mi-.\< mi-. mi-. la4--\! sold--|  mi8-> la~-> la4 r  |
    r8  la-. re,4-- la--  | re8->\< dod~\! dod4 r  |
    R2.*6 r4 r8 fa,-.->\mf r4 |

    %%% Poco allargando %%%
    re'1~\f re2 sol( mi re) |
    %%% Tempo giusto subito %%%
    sib4-> r r2 | R1*3
    r2 r8 si\< la( do) | dod2\f r4 |
    sol,2--\mf r8 fa'\mp( mi'4~)|
    mi8 r r4 r8 fa,( mi'4~)| mi8 r r2 |
    \tt { r16 sold,,\<( si re mi }
    \tt { sol sib do mib solb }
    lab2\f) r8 fa,\mf( mi'4~) | mi8 r r4 fa,( |
    mi'8) r r2 |
    r8 mi,\mf( la) mi |
    r  mi( si') mi,|
    r  mi( la) mi |
    r  mi( si') mi,|
    r  mi( la) mi |
    r  la\f( la') la,|
    r  la( mi') la, r la( | la'-.) r r2 |
    R1 R2.*3 R2 \ten sib,,2.~\pdolce sib2. r4 R1*3
  }
}

InterludeDeuxFluteUn = { \FluteUn
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    r4 mib'--\mp R2 r4 mib-- R2 |
    dod'8-. r si-. r si-. r la-. r |
    \t {la-. r fa-.} \t {mi-. r solb-.} |
    lab4( fa'8-.) r | R2 r4 sib,8-.\p r solb-. r r4 |
    r si!8-. r mib-. r r4 | R2
    \ten re,1~\p re~ re~ re4 r r2 | R2.
    \ten mi,1~ mi2 r4 | R2. R1 R2. R2
  }
}

ActeUnSceneTroisFluteUn = { \FluteUn
  \relative {
    R2.*6 re''2.~--\p\< re8\! r r2 |
    R2.*8 r2 \t {la8-.\f la-. la-.} re4-- do-- re8-> la~-> la4 r2 |
    R2.*5

    %%% Lamento %%%
    R1.*6 R1*5/4*5
    reb2\pp( sib4) r | do2( la4) r |
    reb2( sib4) r | fad2\<( re4\!) r |
    \t {sib'16\mf sib sib} mib8~-> mib4 mib4~-> mib sib\<( re | sold4.\f) r8 r4 | R2*2

    %%% Tempo I %%%
    R2.*9 sol,,2.\mp\< lab8\sfz r r2 |
    R2.*3

    %%% Tempo II %%%
    R1.*4 sol2. r | R1.
    r2. sol''8-- r r4 |
    si,,1~-.->\mp si4\f r2 | r4 \ten sib--\mp |
  }
}

ActeUnSceneTroisBisFluteUn = { \FluteUn
  \relative {
    R1 \ten dod1~\p dod R1
    r2 dod-- dod-- dod-- R1
    r2 dod-- dod-- r \ten fad1~\p fad~ fad2. r4 |
    R1*4
    r2 dod~\mp dod~ dod8 r dod4\<( mi2\> dod~\!) dod~ dod8 r dod4\<( mi2.\> dod8\!) r |
    r2 \t {sol'8\p( mi) r} \t {sol( mi) r}
    \t {la\mp( sol) r} \t {la( sol) r} \t {la( sol) r} \t {la( sol) r} |
    \tt {do16--( reb, mi sol la)} do8 r
    \tt {mib16--\<( reb, mi sol do)} \tt {mib--(\! sol, la do mib)} |
    fad4--\sf r r2 | R1*10 R2. R1*6
    r2 r4 \tt {lab,16--\p( sib si do dod)} |
    mi8 r \tt {re,16--( mib fa lab sib)}
    mi8 r \tt {re,16--( mib fa lab sib)} |
    mi8 r \tt {re,16--( mib fa lab sib)}
    mi8 r \tt {mib,16\<( fad la si re)} |
    fad2.\mp r4 | \longHairpins {
    R1 r2 r4 dod,\p( | mi2\> dod\!) |
    r2 r4 do!\<( mib2\> do~)\! do2. r4 |
    R1*7
    fad2--\p r4 fad\<( la2\> fad~\!) fad4} r r2 R1*9
  }
}

ActeUnSceneTroisTerFluteUn = { \FluteUn
  \relative {
    R2*3 R2. R2*2 R2.*4
    \st {re'8\mp( fad16-> re dod8 fa16-> do r red mi si |
    sib8--)} r r2 R2. sol8\mp\(( fad) mib( re~) re4\) r |
    lab'8\(( sol) mi( red)\) la'\(( sold) fa( mi)\) |
    re-- r r4 r2 | R1*3 R2.

    %%% Poco meno %%%
    \ten re''2.~\pp re~ re2 r4 |
    \longHairpins {
      r8 si,\mp\<( sib sol fad mib\> re'2.\!) R2.
      r8 si'\p\<( sib sol fad mib\> re'2.\!) | R2.
      \t {r8 fa\pp\<( mi} \t {dod4 do la\>} | fa'2\!) r4
      \t {r8 fa\pp( mi} \t {dod do la~} \t {la) do( dod)} |
      \t {sold'( fa mi~} \t {mi) dod( do)} \t {la( fa' sold~} |
      \t {sold) dod,( do)} \t {la( fa' sold~} \t {sold16) r dod,8( do)} |
      \t {la\<( fa' sold)} \t {do,( fa sold)} \t {mi( fa sold)} |
      la32\mp\>( sold fa8.~ \t {fa8) mi( dod~ } \t {dod) sold( fa~ } |
      \t {fa\!) mi( dod~ } dod4) r |
      do,!2-- r4 |
    }

    r \ten sol'2~--\p\< sol\mp\> fad4~--\! fad2 r4 |
    r sol2~--\< sol\> fad4~--\! fad2 r4 |
    r re'2~--\mp re\> red4~--\! red2 r4 |
    r re2~-- re\> red4~--\! red2 r4 |
    r fad2--\mp fad-- fad4~-- fad2 r4 |
    r fad2--\mp\< sib-- re4~--\mf re r2 | R2.*3
    \st {sol16\mf\> re lab mib la, lab'\!} r8 r2 | R2.

    r4 sib,2~--\mp( sib4 la2) R2.
    r4 la4.--\< mib'8~-- | mib4 lab2--\mp |
    r4 sib,2--\mp sib--\> si4~--\! si r8 \st {fa''16\pp( mi dod do la sold')} |
    r4 sib,,2-- sib--\> si4~--\! si r2 |
    r4 re2--\mf re--\< red4--\! | r16 \st {fa'\mp\<( mi dod do la) sold'( si) sold,( sold'\!) si,-> si'->} |
    re--\mf re-- r8 r4 re,,-- | sol2-- fad4~-- fad si\<( re\!) |
    r8 si\f( sib sol fad mib re') si( sib sol fad mib) |
    \t {r fa'(\psubito mi} \t {dod do la} \t {sold') fa( mi}|
    \t {dod la) fa'(} \t {sold) fa( mi} \t {dod) la( fa'} |
    \t {sold) do,\<( dod} \t {sold') dod,( fa} sold16\!) mi( fa sold |
    \grace la8 \pitchedTrill sold2.\p\>\startTrillSpan la sold4\!)\stopTrillSpan r2 |
    R2.*12
  }
}

InterludeTroisFluteUn = { \FluteUn
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    fad2.--\p r4 fad2-- r4 | fa'4.\p( lab8) solb( la) |
    fa4-- r8 la,32\<( do) fa lab |
    do2--\mf sib8( reb) do4.-- r8 |
    mib2-- lab4\<( si\!) | R2*4
  }
}

ActeUnSceneQuatreFluteUn = { \FluteUn
  \relative {
    \partial 4 r16 la''-.\mf la-. la-. re4-- do--( re8-.) la4-- r R2 r4 r16
    la-. la-. la-. | re4-- do--( re8-.) la4-- r r8 sib-.( r dod-. re4--) r2 | R2*2
    R2-\fermataMarkup

    %%% Allegretto comodo %%%
    R1 R2. R1*2 R1. R1*2 re,2--\p( re-- re--) re--( re--) re2.-- r4 |

    %%% Agitato %%%
    la8-.-> r r2 R2.*5 r4 r8 do--\mf( do-- do--) |
    \ten fa2.~-- fa8 r r4 sib,16\<( mib fad si |
    re4--->\f) re,-- re-- re'---> r8 re-. \t {re-.( re-. re-.)} |
    sold4---> sold,-- sold-- sold'---> r8 dod,-. \t {si-.( sold-. mi'-.)} |
    sol4---> r2 | R2.*4
    r2 \tt {la,,16( re mi sol la}
    dod8->\f) r r4 dod32-> dod16.~ dod16 dod-. |
    dod8-.-> r r4 dod8-.-> r dod8..-> dod32 dod8-.-> r r4 |
    re8-.-> r r4 re32-> re16. r8 re8..-> re32 re8-.-> r r4 |
    red8-.-> r r red-.-> r4 |
    sold16->( la sold mi) re( la) mi( re) sold,8-> r |
    sold''16->( la sold mi) re4-> \t {mi,8( la re)} |
    la'-> r r4 r2 | R2. R1 R2.
    r8 r16 mi,,32\mp( la mi'8-.) r | R2.
    \t {r8 mib16(} la8-.) r4 | R2.
    r4 la8-.\p( mi!-.) mi4-- r2 |

    %%% Placando assai %%%
    r2 la~\pp la2. r4 |
    r fa8.--( fa16 la2~) la2. r4 |
    la,2\>( lab sol \ten fad2.~\!) fad r4 |

    %%% Andante a piacere %%%
    r2 \t {dod4\mp\<( dod dod} \t {re\> re re} mib\!) r |
    r2 \t {dod4\<( dod dod} \t {re\> re re} mib\!) r |
    r2 \t {fa4\<( fa fa} \t {fad\> fad fad} sol\!) r |
    r2 \t {fa4\<( fa fa} \t {fad\> fad fad} sol\!) r |
    r2 mi''\mf( si4. la) fa'2\>( si, re4. la\!) |
    R1*7 R2*3 R2.*6

    %%% A tempo %%%
    r4 do,\f\<( reb mib\!) |
    r fad\<( sold la la'2.--\!) r4 |
    \ten la,,1~\mf la8 r r2 |
    r2 r4 r8 \t {sold16\<( si dod} |
    re2.~\mp) re8 r r4 r2 |
    fad,2.--\mp( fad2-- fad4-- fad-- fad2--) r8 \t {dod'16( fa la)} |
    dod8.--->\f dod16 dod8-. dod~-> dod \t {dod16( fa, la)} dod4-- |
    r16 dod dod8-. \t {dod,16( fa la)} dod8~---> dod dod-> dod-> dod->|
    \t {fa,8--->( la dod~)} \t {dod dod4--} dod8-> dod-> |
    r dod-> \t {dod4--->\< dod8->} \t {fa,16( la dod4--->)} |
    red4.--->\! r8 red4-- | red4---> r8 \t {red,16\<( sol si)}
    red8.--->\! red16 red8-. red~---> red4 red-- r8 fa4-- r8 |

    sold2->\fp\<\startTrillSpan sold8-.->\!\stopTrillSpan sold,-. sold,-. r4 |
    \ten lad2~\mf lad8 r | R4.
    sold''2\fp\<\startTrillSpan sold8-.->\!\stopTrillSpan sold,-. sold,-. |
    \ten sol2~\mf sol8 r r4 |
    sold''2\fp\<\startTrillSpan sold8-.\!\stopTrillSpan sold,-. sold,-. |
    la''8-.\sfz r r4 R2*2
    mi,,4.~\mp mi4 r16 do'8.~--\mf\< do4 lab'-- |
    R2\! R4. r2 r8 \t {sold16\<( si dod)} |

    re4->\f r r2 | r4 r8 \t {dod,16\sfz\> sib do} \t {sol4\< sib do} |
    dod4->\! r r2 | R1 r2 \t {mib,4\mp( re mib} | fad2.--) r4 |
    r8 re'4\mp( mi8 fa4. sol8~sol4) sib--\mf\<( do-- dod-- |
    re4--->\!) r r2 R1*3 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    R2.*21
    R1. R1 R1. R1 R1. r2 la,4->\mf r | R1. R1
    la4\mf( sol fa mi fa8\< mi fa sol la2\! mib4) r |
    R1.*5 r2 mib4-.\sfz r | R1. R1 r2 r4 la\mp( sol fa |
    mi-.\sfz) r r2 | R1.*5 r2 la4-.\sfz r |
    r2 r4 fad-.-> la-.-> r | r2 la4---> r |
  }
}

EntracteFluteUn = { \FluteUn
  \relative {
    R2*9
    R1*10 r4 \t {reb''16\p( do sib} sol8-.) r2 | R1
    r4 dod-- r2 | R1 r4 re,--\mp r re-- | r dod( re-.->) r | R1*2
    r2 sold,16\mf( la) \st {sold mi} re( mi) \st {sold la} | sold2.-- r4 |
    re16\<( fad) \st {sold si} mi2.~--\! mi4 r r2 | R1*2
    r8 \st {lab'\pp( mi mib) sol( fad fa lab)} | R1
    r4 \t {lab8-.( mib-.) la-.(} \t {fa-. mi-.) lab-.(} \t {sol-. fad-. la-.)} |
    r2 r4 r8 \t {do,,16\mp( re mi)} | fad4\<( re'-.\!) r2 | R1
    r8 \t {sol,16\mf( sib do)} \st {dod8 dod re4} r | R1*4
    r4 r8 mi,,32\<( la do fa) sold8\mp( la) la( lab) |
    do\<( reb) mib( do) mi( fa) sold-.\f sold-. |
    la4-> r r8 \t {sold,16( la dod} re4->) |
    r8 \t {sold,16( la dod} re4->) r |
    r8 \t {sold,,16\mf\<( re sold} si) \st {fad sold si}
    re8-- \t {sold16( re sold} la) \st {mi sold la} |

    %%% Fugato %%%
    re4--\f r \ten dod,2~--\mp dod2. r4 | R2.*2 R2
    R1 r4 \ten dod2~\p dod2.~ dod4 r r2 |
    reb\mp( sib8) r r4 | R2. do2( la8) r |
    R1 reb2( sib8) r r4 R2. sol2.( re'4) r r2 | R1
    r4 do\p( si'~ si2. sol2.) r4 | R1
    r4 re2~--\mp re si'4\<( sold'2~\!) sold8 r \tt {la,16\<( si re mi sol} |

    %%% Stretto %%%
    la4->\f) r r2 R1
    r8 \t {mi16\mp( dod red} lad4-.) r2 |
    mi8-.\pp sold-. mi'4-- r2 |
    sol,,4-- r8 do-. r si'-. r4 |
    sold--\mf r sold8( lad) r lad( |
    sold4) sold8( lad) r4 r8 \t {fad16\<( lad re} |
    fad4-.->\!) r r r8 \t {la,16( do fa} |
    sold4-.) r r r8 \t {sol,16( la do} |
    re4-.) fa16\mp( sol) lab-. sol-. lab4-- r R1*3

    %%% Noir %%%
    R2.-\fermataMarkup R2.*4 R2 R2. R1 R2. R2
    R1*5 R1.*4 r2 sib,,--\p R2.-\fermataMarkup
    R2.*8 R2.-\fermataMarkup

    %%% poco più %%%
    R2.*4 R2.-\fermataMarkup

    %%% Andantino %%%
    \ten mi1~\mp mi4 r mi1~ mi4 r mi1~ mi4 r si2.-- r4 R2.

    %%% Largo non troppo %%%
    do'1.\mf( si1~ si4) r la1.( sol2 fa mi4) r |
    la1.~ la1~ la4 r | la1( mi'2~ mi1~ mi4) r |
    la1.~\p\<( la2\mf sol fa~ fa\> mi2.\!) r4 |
    la,4\mf( sol fa mi fa8 mi fa sol |
    la1~ la4) r | si1.( \grace do8 \afterGrace
    si2\startTrillSpan { la16[ si]\stopTrillSpan }
    do2.) r4 |
    do2( si la~ la4 sol fa mi fa) r |
    \ten do1~--->\f do4 r re2.---> r4 R1 R2. R2
  }
}

ActeDeuxSceneUnFluteUn = { \FluteUn
  \relative {
    R2.*4 R2 R2.*2 R2 | r2 \tt {si''16\p\<( red) re( fad) fa}|
    la4~--\mp( la8[ fa]~ fa8) r | r8. red16-. si4.--\> la'8~\pp | la2~ |
    la2.~ | la2~ | la4 r \t {r8 sol,,( mib'} | fad2.~) | fad4 r |
    r \tt {sib16\p\<( mib) dod( fad) mi} la4~--\! | la4. sib,8\>( la'4~)\! |
    la2.~| la4 r | R2. R2 | R2.*2 R2 |
    mi2.~\pp\<| mi2.~| mi2.~\mf\>| mi4\! r |

    %%% Entrée de la Soprano Deux %%%
    R2.*2 R1 R2. \t { r2 mi,,\mf\>( la} lab2.~\mp) lab4 r sib2.~\p sib2 r |

    %%% Andantino %%%
    r2 \ten mi,~-- mi2. r4 R2. | r2 mi4~-- mi2.~ mi4 r mi~-- mi r |
    mi-- r2 r mi4~-- mi2.~ mi4 r2 R2. | R1 R2. R2
    re2-- r4 r mi( \ten la2~) la4 r2 R1 R2. R1
    \ten re2.~\p re2. r4 | R2. R1 mi,2-- r4 R1 R2.
    re4--\mp( la'-- sold8\> mi~\!) mi4~ mi2.~ mi2. r4 |
    r8 re( la'2~) la2. r4 | r mi2\>( la2.\!) r4 |
    mi'4.\mp( la4.) sold4( mi re) r |

    %%% Entrée de la Contralto %%%
    sold,8\mp( la sold mi) re( mi) | sold( la sold mi) re( mi \ten sold4~) sold2.~ sold4 r r2 |
    R2. R1 R2. R1 r2 re4~--\p re re2-- r4 | r2 re4~-- |
    re2. r4 | r4 mi2~-- mi4 r mi-- r | r re2~-- re4 r r2 |
    re''8-.\ppleggiero r r2 | r r8 \st {re r8 r16 re, | re'8 r r2 | R1 r4 r8 re,} r4 |
    re,4--\p\< fa8( sib4) mib8~-- | mib2\! r4 |
    R2.*5 r4 re2~--\p re r4 | r mib8\mp( fa la2~) la4\! r2 |
    R1 lab,4\mp( solb fa mib fa8 mib fa solb lab4 | mib2.~) mib4 r r2 |
    R2. R1 re'8\p( mib re sib lab sib re4) r r2 |
    la4\mp( sol fa mi fa8 mi fa sol la4 | mi2.~) mi4 r | fad2.\p r4 |
    R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisFluteUn = { \FluteUn
  \relative {
    R1 R2. R2

    %%% Presto agitato %%%
    sol'8\p( mi sol mi sol mi sol mi sol mi | sol2.) r2 |
    sol8(  mi sol mi sol mi sol mi sol lab | sol2.) r2 |
    sol8(  mi sol mi sol mi sol mi sol lab | sol2.) r2 |
    sol8( mi? sol mi sol mi sol mi sol lab | sol2.) r2 |
    sol8( mi sol mi sol mi sol mi sol lab) | sol( mib reb mib sol4) r2 |
    sol8( mi sol mi sol mi sol mi sol lab) | sol( mib reb mib sol lab sol4) r |
    sol8( mi sol mi sol mi sol mi sol mi) |
    sol(  mi sol mi sol mi sol mi sol mi) |
    sol\>(  mi sol mi sol mi sol mi sol mi | sol4\!) r1 | R1*5/4
    r2 dod8\mp( re dod la) sol( la | dod4) r1 | R1*5/4
    re,8\p\<( dod re dod re dod re dod re dod | re4->\f) r1 |

    R1*5/4*6
    \ten mi1*5/4~\pp mi2. r2 | R1*5/4*3
    \ten fa1*5/4~ fa2. r2 | R1*5/4*9

    %%% Boum %%%
    R1*5/4-\fermataMarkup
    sol8\p( mi sol mi sol mi sol mi sol mi | sol2.) r2 |
    sol8( mi sol mi sol mi sol mi sol mi | sol2.) r2 |
    sol8( mi sol mi sol mi sol mi sol mi | sol2.) r2 |
    sol8( mi sol mi sol mi sol mi sol mi | sol2.) r2 |
    sol8( mi sol mi sol mi sol mi sol mi | sol2.) r2 |
    sol8( mi sol mi sol lab sol mi sol lab | sol2.) r2 |
    sol8( mi sol lab) sol( mi sol\< lab) sib( reb) |

    %%% Air Ténor %%%
    mi'4~\f( mi16 fa mi fa mi fa mi fa mi4~) \t {mi8 red( mi} | red2) r4 red,\<( mi) |
    mi'4~\!( mi16 red mi red mi red mi red mi4) r |
    r4 \t {mi,,8\<( sol lab} \t {sib si re} \t {mi sol lab} sib16 reb mib fa |
    lab4.--\!) \st {mib8( sib sol) sol,\<( sol' sib mib} | lab2.--\!) r4 sol,,8\p( mi |
    sol mi sol mi) \t {lab\<( sib re} \t {mi sol sib} \t {reb mib fa} |
    sib4.\f) \st {lab8 mib} sib'~-- \ten sib2~ |
    sib4 r \t {sol,,8\<( mi sol} \t {si re lab'} \t {sib mib lab} |
    si4.--\!) \st {lab8( si mib, lab) do,\<( mib lab} | si2.--\!) r4 sol,,8( mi) |
    \t {sol\<( lab sib} \t {reb mib mi} \t {sol lab sib} \t {reb mib fa} \t {lab sib si} |
    re8\!) r \st {lab,\<( reb fa sib\!) r mi,,\<( lab reb | fa4\!)} r r2 sol,,8\p( lab |
    sol mi sol mi sol mi sol mi sol) r | sol( mi sol mi sol lab sol) r r4 |
    sol8( mi sol mi sol mi sol mi sol lab) | sol( mi sol mi sol mi sol) r r4 |
    sol8( mi sol mi sol mi sol mi sol lab) |

    %%% Moderato assai %%%
    sol8(\pdolce mi sol mi sol mi sol mi sol mi sol mi sol mi | sol4) r2 r1 |
    sol8( mi sol mi sol mi sol mi sol mi sol mi sol mi | sol4) r2 r1 |
    sol8( mi sol mi sol mi sol mi sol mi sol mi sol mi | sol4) r2 r1 |
    sol8( mi sol mi sol mi sol mi sol mi sol mi sol mi) | sol4( mi sol |
    mi\> sol mi sol~\!) sol2 r4 R2 |
    do2.~--\pp do4 r2 | do2.~-- do4 r2 | si2.~-- si4 r2 |
    sol8\p( mi sol mi sol mi sol mi sol mi sol mi sol4) r2 |
    la4\pp( sol la sol la sol la) | sol8\p( la sol la sol la sol2) r |
    sol8( la sol mi re mi sol2) r4 sol8( mi |
    sol2) r4 | sol8( la sol mi re mi | sol2) r4 |
    sol8( la sol mi re la' | sol2) r4 |
    sol4( mi) sol8( mi sol la sol mi re mi |
    sol1) r2 r4 | sol4( mi sol mi sol2.~) |
    sol4 mi( sol2) mi4( sol) r |
    sol8( mi sol mi sol mi sol mi sol mi sol mi sol mi |
    \repeat volta 2 { sol4) r2 r1 |
    sol8( mi sol mi sol mi sol mi sol mi sol mi sol mi |
    sol4) r2 r8 mi( sol mi sol mi sol mi | }
    sol4) r2 r8 mi( sol mi sol mi sol mi | sol4) r2 r1 |

    %%% Presto subito %%%
    \ten sol1.~--\f sol2 r \t {fad'8\mp( mi sol} red'4-.) | R1.
    \tt {sol,,8->\f( mi sol mi) r } \tt {sol->( mi sol mi) r} \tt {sol->( mi sol mi) r} |
    \tt {sol8->( mi sol mi) r } \tt {sol->( mi sol mi) r} r2 |

    %%% Tempo giusto %%%
    mi2-- r4 | R2.*6
    la2~\mp la4 r |
    \ten mi2.~ mi2 r4 | do'2-- r4 | mib2-- r4 |
    lab4.-- r8 | R4. |
    r8 sol~--->\f\< \t {sol sol sol} \t {sold sold sold} \t {la la la} |
    \repeat tremolo 8 {do32\fmolto re} |
    \repeat tremolo 4 {do re} do32( re mi fa |
    sol2->) r4 |
    \repeat tremolo 8 {do,32 re}
    \repeat tremolo 4 {do re} do32( re mi fa |
    sol2->) r4 |
    \repeat tremolo 8 {sol32\ff la} sol8-. |
    fad4---> fad8-. fad~-> fad \st {fad fad |
    la4->\sffz} r r8 \t {reb,16\p( sib do} |
    sol8-.) r r2 | r4 r8 \t {fa'16( si, lab} solb8-.) r | R2.
    r4 r8 \t {solb16(\ppleggiero sib, reb} fa,8-.) r | R2.
    r4 r8 \t {reb''16( fa, solb} sib,8-.) r | R2.
    r4 r8 \t {la'16( sib, reb} re,8-.) r | R2.
    r4 \t {reb'16( fa mi} lab8-.) r4 |
    r \t {fa16( la lab} do8-.) r4 |
    r8 re,\<( mib fad sol sib fad'2.--\mp) | R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    r2 r4 \st {fa,,16\< sib reb solb} | \acc {la4\f r2 la4 r | la r la r2 |
    la4} r2 r8 si( sold'4-.) | R1*5/4-\fermataMarkup
    r4 sol,,8(\pdolce mi sol mi sol mi sol mi | sol2.) r2 |
    r4 sol8( mi sol mi sol mi sol mi | sol2.) r2 |
    r4 sol8( mi sol mi sol mi sol mi | sol2.) r2 |
    r4 sol8( mi sol mi sol mi sol mi | sol2.) r2 |
    r4 sol8( mi sol mi sol mi sol mi | sol2) r4 sol8\mp( mi sol mi |
    sol lab sol2) r4 sol8( mi | sol lab sol4) r sol8\<( mi sol lab |
    \ten sol1*5/4~\mf) sol2. r2 |
    R1*5/4*7
  }
}

ActeDeuxSceneDeuxFluteUn = { \FluteUn
  \relative {
    R1.*4 la'4(\pdolce sol fa mi fa8 mi fa sol | la4 mi) r1 | R1*2 la4\mp( sol fa |
    mi) fa8( mi fa sol) la4( mi) r | R2.*2 | la4\p( sol fa mi fa8 mi fa sol la1) r2 |
    R1. (la4 mi) r2 | R1 la4( sol fa mi) fa8( mi fa sol) la4( mi) r8 |
    r4 r8 la~--\pp \ten la2~ la4 r8 la~-- la2~ la4 r8 mib'~-- mib2~ |
    mib4 r8 mib~-- mib4 r | fa8\p( sib) sib( dob) r4 sib8--\mf sib-- | fa'4.-- r8 \acc {mib16\f mib fa8} r4 |
    R2. la,,4\p( sol fa mi fa8 mi fa sol la4 mi2) r4 | mi2.-- r4 | R2.*2 r2 r8 la~\mp\>( la mi\!) r4 |
    R2.*2 r2 r8 la'~\>( la mi\!) r4 | R4. \ten mi,1~\mf mi2. r4 |
    r8 mi'->\f r4 r8 mi'16( mi,) r4 | r4 r8 r16 re( mi8) r r4 |
    r2 r4 \st {sold16\mf sold la8 | sib4-> r r sold16 sold la8 |
    sib4-> r r sold16 sold la8 | sib4-> r r sold16\< sold lad8} | \ten si!1~--\f si2 r4 |
    la,4\p( sol fa mi fa8 mi fa sol la4 mi) r2 |
    la4( sol fa mi fa8\> mi fa sol | \ten la1.~\!) la2 r4 | la4( mi) r2 |
    la2.~\pp la1~ la2.~ la1~ la2.~ la2. r4 | la2.~
    la1~ la2 r4 R1 la2.~ la1~ la2.~ la1~ |
    la2 r4 | R1 R2. R1 R2. R1 r2 r8 r16 \t {mi''32\<( fa sol} |
    la8-.\f) r r4 | r r8 \t {mi16( fa sol} | la8-.) r r4 |
    r2 r8 \t {mi16( fa sol} | la8-.) r r4 r2 | R1*2
    la8-.-> r2 | la,4-- r8 \st {sold sold | la sold,-> sold la} r |
    mib'4-- r8 \st {re re} | mib4-- la,8-. r4 | lab4---> r4 r8 | R2*5/4
    lab''8-.-> r2 | R2*5/4 lab,,4 r4 r8 | R2*5/4*4
    R1*3 r4 \slap { \ind #"slap" reb\p sib} r r \slap {sib sol} r | R1*4
    lab'4-.->\sfz r2 R2 R1*2 la,!4\p( sol fa mi fa8\> mi fa sol \ten lab2.~\!) lab2 r4 | R2.*3
    R2*2 R2.*2 R2*2
    mib''4\mp( reb dob sib) dob-- r | r r8 \slap { sold,\mp la} r r4 |
    r8 \slap {sold la} r r \slap {sold la fad |
    sol} r r4 | R2*4 r4 la8->\pp r | R2
    r4 r8 \slap {sold\mp la} r r4 | R2*7
    la'4\p( sol fa mi fa8 mi fa sol | la4 mi) r | R2.*2 la4( mi) r \meno la,( mi) r |
    R2.*9
  }
}

ActeDeuxSceneTroisFluteUn = { \FluteUn
  \relative {
    %%% Larghetto %%%
    R4.*2 sold'8(\pdolce la dod,~) dod4.~ dod4 r8 | R4.*3
    sold'8( la dod,~) dod4 r8 |
    \simile sold' la dod,~ dod4 r8 |
    sold' la dod,~ dod4 r8 |
    sold' la dod,~ dod4 r8 |
    sold' la sold do,!4 r8 |
    sold' la sold do,4 r8 |
    sold' la sold do,4 r8 |
    sold' la sold do, r la' |
    sold la sold do, r la' |
    sold la sold do, r la' |
    sold la sold do, r sold' |
    \st {la16\pleggiero la la la r8 |
    r16 la la la la8 |
    la16 la la la} r8 |
    \det {la8 sib la la} r4 |
    lad16\pp( lad si8) sold16( sold |
    la8) lad16 lad( si8) |
    \st {la16\pleggiero la la la r8 |
    r16 la la la la8 |
    la16 la la la} r8 |
    la16 la( sib8) fad16 fad( |
    sol8) la16 la( sib8) |
    \st {la16 la la la r8 |
    r16 la la la la8 |
    r la16 la la8 |
    la16 la la la} r8 |
    \ind #"poco più" sid16 sid( dod8) lad16 lad( |
    si8) sid16 sid( dod8) |
    si16 si( do8) r |
    \st {la16 la la la r8 |
    r16 la la la la8} |
    R4*2 r8 \slap { \ind #"slap" sold\mf la sol sold} r |
    R4*2 r8 \slap { sold la fad sib r r sold16 sold la8} r |
    R4*2 \ordin la16-.\p \st {la la la |
    r8 r16 la | la la la8 |
    la16 la la la} |
    R4 r8 \slap { sold\mf la fad sol} r |
    R4*5 R4. R4*7
    \st {la16\p la la la r8 |
    r16 la la la la8 |
    la16 la la la r8 |
    r16 la la la la8 |
    la16 la la la} r8 |
    R4. r8 r16 dod( si re |
    sib'8-.) r4 | r8 \st {sold16\mp sold la8 |
    sib8-> r4 | r8 lad16 lad si8 |
    do-> r4 | sib,16 sib sib sib r8 |
    r16 sib\<} mib( lab) dod-. dod-. |
    \ten re4~\! re~ re~ re8 r |
    re,4~ re~ re8 r |
    \st {re16 re re re re re re re |
    mi8-> r R4 re16 re re re | mi8-> r R4 |
    dod16 dod re8 mi->} r |
    r \slap {mi,\mf fa} r |
    dod'16-. dod( red8) |
    la16-. la( si8) la16-. la( si8) | si16-. si-. r8 |
    \slap { sold\psempre sold la r fad fad sol r R4 re8 re } |
    R2.-\fermataMarkup R2.*6

    %%% Interlude %%%
    \ten re'2~\pp re4 r |
    sold,8\p\(( la) sold( la) si( do)\) r4 |
    sold8\(( la) sold( la) si( do)\) r4 |
    R2 \t {sold4( la8~)} \t {la sold( la)} |
    si( do) si( do~) do4~ \t {do8 si( do)} re( mib) |
    r16 red8.~--\mp red8 r |
    \t {mi4( fad sol)} \t {red( mi fad} |
    sol4.) r8 | la,8( sib do dod red mi) r4 |
    lad,8\<( si re red fad) |
    dod'2~\mf( dod4 re lad si dod re dod2~) dod4 r8 re-- |
    lad\>( si dod re dod2~\!) dod4 \t {r8 re( dod)} |
    mi4.\mf( fa8) dod( re~ \t {re mi fa} |
    sol4) r16 lab8.-- r8 sol-- r r16 lab-.-> |
    r8 sol---> r16 lab-.-> r8 |
    sol8( lab mi fa | sol lab) r sol---> |
    r16 lab-.-> r8 sol---> r sold16-> sold-> |

    %%% Quatuor %%%
    la8-> r r4 | r8 \st {re,\mp sol, |
    re r r4 | r8 re' sol, |
    re r r4 | r8 re' sol, |
    la, r16 re,\< mib'8->} |
    la'2--->\f r4\fermata
    R2.*6 R2*2 r2 sold,,8--\p sold-- |

    %%% Air baryton 1 %%%
    la2~-- la4 r | r2 sold8-- sold-- |
    la2~-- la4 r | R2.
    la2~-- la4 r | r4 r8 mi( fa sol |
    la2~) la4 r |
    r16 \st {re, re re mib mib mib mib} r4 |
    la4\mp( sol8 fa mi4) r8 |
    sib'2-- r16 re\p\>( mib) sol-. la( re,) |
    re'4.--\! r8 | r4 \t {r16 do,,( si')} \t {r la'( fad')} |
    r4 r8 \t {r16 sol,,( fad')} \t {r mi( dod')} r8 |
    la16->\mf la-> sold8-> r4 |
    \st {mi16 mi mi mi r mi mi mi |
    mi mi r mi mi mi mi mi mi8} \t {mi16\<( la mi')} |
    re4.--\f r8 \t {mib,,16\<( re' do'} la'8~\!) la4~ |
    la2 r4 R2 |

    %%% Doppio tempo %%%
    R2*7 mib,,2\p( sib'4) |
    r mib,( la) r re,( fad) r re( mi) |
    r dod( sold') r fad( si) r sold( re') |
    r8 \st {la'\mp la la} | \det {re4 do} re8-. la~-- |
    la4. r8 | R2. R2 R2. R2 R2. R2
    r8 mi,-. re16( la') \st {mib' fad la4} R2 R2. R2 |
    sold,16\p\<( la sold la \tt {si re mi fa sol} \tt {sib do reb mib fad} |

    %%% Climax %%%
    sold8->\f) r r4 | R4.
    mi4.---> r8 r4 \st {sol,8 r sold} r r4 | R4.
    la'4.---> r8 | r4 \st {la,8 r sold r r4 |
    r r8 re' |
    re'\>} la16( mi) \st {si fad} |
    dod8.--\! \st {dod16 dod8} |
    r8 dod~-- dod dod~-- dod16 \st {dod dod8} |
    sold'2.--\f r4 |

    %%% Soprano 2 %%%
    \slap re,4 r2 | R1 r2 r8 \t {si'16\<( dod red} |
    mi4-.\p) \st {la, si8 red mi4} | sib8( la) \st {re mi} r4 | R1
    r4 r8 lab( sol solb |
    fa4-.) r r2 | R2. R1 r4 sol,--\pp r |
    r r8 sol~-- sol4 r | r la-- r |
    r r8 la~-- la4 r | r sol-- r |
    r lab'\p( fa mib | re-.) r2 |
    \st {la8\p la la la r2 r8 la la la la4 |
    sold8 sold sold sold} r4 sold( |
    la-.) r sol( sold) r r lad( |
    si) r dod( | re) r r2 | R2.
    %%% Issue #34 (aka "grace notes are a PITA")
    re32\mp( mib8..) sib'4-- lab8( fa mib4) R2.
    re'32( mi!8..) r4 r2 |
    r4 sold,,\p( si |
    re2) r4 re( | la'2) r4 |

    %%% Soprano 1 %%%
    re4-- r r2 | r8 si\p( sib sol fad mib |
    re'4) r r2 | r8 fa( mi dod do la |
    sold'4) r r2 | r4 r8 do,,( si') fad( |
    fa'4) r r2 | r4 la,,\pp( do |
    re2.) r4 | do4\<( re la' |
    re1~\p) re4 r re( |
    la'2.) r4 | R2.
    \st {la,,8\p la la la r la la la | la4-- r fad8 fad |
    sol4-- r r2 R2. sol4-- r r2 R2. |
    R1 sol4-- r sol8 sol} | sold4 r r2 | R2. R1
    r4 sold\p\<( la) |

    %%% Duo %%%
    sold'2.\!( la4 | do2.) r4 |
    sold4\mp( la) r sold( la) r fad8\>( sold la do |
    re2.\p) re4-- mi4.( si8-.) r16 dod\>( sold8~\!) sold4~ |
    sold4. la,8( | sold'4.) r8 | la,2--\< |

    %%% Baryton 2 %%%
    re4->\! r2 R2. |
    mib,2.\mf( fa4) r2 |
    re''4---> r2 |
    \tt {re,16\f( fad sold la si} re4->) re-- |
    sold2---> r4 | R2.
    re,,2.\mf( mib mi4) r2 | R4.
    sold''4->\f r2 | r8 \st {re\p re re} re4-- |
    \st {re,,8 re re re} r4 | R2.*3
    \accdet {sold4\mf sold sold | re'} r2 |
    r8 \acc {re'\f re re re re | R2.
    r8 re re re re re} |

    %%% Boum %%%
    \slap sold,,4 r2 | R2.*2
    re4. re'8~ re re'~ |
    re4 fad la | si2.~ si4 fad8 fa sib, la |
    r4 re,2~ | re4 r8 re8~ re4 |
    \tt {mi16 sold sol si sib} re2~ re2 r4 |
    \t {sol,8 fa lab} mi'2~ |
    mi8 fa, mi'4~ mi16 fa, mi' re |
    si'4~ \t {si8 fad dod} \tt {sol'16 re la mi si} |
    fad8 r \tt {do''16 reb mi fa sol} sold4 |

    %%% Contralto %%%
    re8 r r4 | R2 r4 sold4 |
    re8 r r4 | R2*8 R2. R2*6
    la,8 la la la r4 | r8 la la la la4 |
    re8 re re re r4 | r8 fa fa fa fa4 |

    %%% Grand ensemble %%%
  }
}
