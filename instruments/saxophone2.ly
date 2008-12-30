%------------------------------------------------------------------%
% Opéra Libre -- saxophone2.ly                                     %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

SaxAltoDeux = {
  #(make-instrument-name 'saxophone-two "alto sax" 25)
  \clef treble
}

SaxophoneBaryton = {
  #(make-instrument-name 'saxophone-baritone "baritone sax" 25)
  \clef bass
}

PrologueSaxophoneDeux = { \SaxophoneBaryton
  \relative {

    %%% Introduction %%%
    \partial 4 r4 R2.*3 R1
    \ten mi,,2~\fp mi4 r | mi4~\p \tt {mi32( fa mi mi' fa)} mi'8~ mi4~ |
    mi2~ mi4 r | mi,,2--\p r4 |
    R2*2 \ten mi2.~ | mi2~ mi4 r |
    mi2.( | mi'2) \t {sol4\<( sib do8) r} |

    %%% Entrée du baryton 2 %%%
    re,8.->\f dod16~-> dod8 mi-> r4 | R2*2 | reb,2--\p r4 | R2
    la'4--\mp\< si-- fa'8->\! sol~-> |
    \ten sol2~\p sol2.~ sol8 r r4 | R2. R2 |
    sib,2~--\pp sib4 r \t {lab8(\fsubito fa mib} |

    %%% Tempo giusto %%%
    re8->\f) r r4 | R2*2 re4\p( mib fa lab sib si8) r |
    \t {reb4\p( mi fad} \t {sol\< la do} |
    re4\f) r2 lab,2.--\mp( re4--) r2 solb2.\p mib do |
    r2 lab'8-> r r4 do8-> r r4 | re,,2\f re'4~-- re mib2-- |
    reb2.---> r4 | R2*2 R2-\fermataMarkup

    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*11 R4.*15
    mi,?8-.\pp r4 sol?8-. r4 |
    mi8-. r4 sol8-. r4 |
    mib8-. r4 solb8-. r4 |
    mib8-. r4 solb8-. r4 |
    mi8-. r4 mi8-. r4 |
    re8-. r4 re?8-. r4 |
    \ten do'4.~\pp do~ do~ do8 r4 |
    do4.~ do~ do~ do8 r4 |
    do4.~ do~ do4 r8 |
    r r16 re'\mp\< \t {re re lab} |

    %%% A tempo %%%
    re,8\sfz r4 | lab4.--\p( re8) r4 | re4.~\p( re4.) |
    \ten lab4.~\mf lab~ lab4 r8 | re,8-> r4 | R4.*2
    r8 mib\mp( re) \ten fa4.~ fa~ fa4 r8 | R4.*4
    r8 mi''\<( re | fa4.\f) R4. | r8 dod\<( si mi4\!) r8 |
    R4.*2 fa,,4.~\p fa8 r4 fa'4--\mf r8 R4.
    \t {mi16\>( fa fad} sol8) r |
    R4. solb,8\pp( lab la |
    si re mi fa\< sol sib do reb |
    re4--\f) r re,,-- | fa-- r2 | R2. |

    %%% Adagio %%%
    R1*3 \ten \ind #"détimbré" sib1~\pp sib1.~ sib4 r r1 |
    R1*2 \simile \ten sib1~ sib1.~ sib4 r r1 |
    R1*2 sib2\pp r4 |

    %%% Valse %%%
    sol2 r4 | R2.*2
    r4 \ind #"détimbré" si'2-- r4 la2-- | r4 solb2-- r4 solb-- r mi-- |
    sol,2.~\pp sol4 r | R2.*2 R1*2
    r2 lab4\mp( sol'2) r4 |
    r si,2( mi2) r4 | r2 re4( la'2\> | sol\!) |
    \ordin \ten do,1~\f do2 lab4-- |

    %%% Vivo al fine %%%
    re,4---> r | R2*3
    \ten re'2~\p re~ re8 re->\mf\< re-> re-> re->\! r r4 |
    R2*22 r4 mi,8->\pp r |
  }
}

OuvertureSaxophoneDeux = { \SaxAltoDeux
  \relative {
    R2. r2 \tt { sib16 si solb' sol re'} |
    mi,4 la,16 la sold8 r16 re \t {la' la lab} |
    sib4
  }
}

ActeUnSceneUnSaxophoneDeux = { \SaxAltoDeux
  \relative {
    R2*2 R2. R2*2 R2.
    R2*2 R2. R2*2 R2.
    R2*2 R2. R2*2 R2.
    fa,2~\pp fa8 r16 r32 fa'\mf( sol4) |
    fa,2.~\pp fa4 r sol'16\mf\>( sib reb8~\!) reb16 sib( sol fa) |
    fa\>( mi4..\p) r4 |
    reb,1~\p reb8 do'16\mp( re fa4.) r8 |
    reb,4--\p r8 sib''16\mf( sol~) \t {sol do( sib} do8~) do r |
    \t {reb4--( sib8~--} \t {sib fa4--)} sol~\< |
    \ten sol2~\mf sol8 r r sol,~\mp( | sol sib4.) r4 | sol8( sib~) sib2 r4 |
    sol8 sib~ sib4 \t {fa8(\< sib re} |
    do4--\f) r2 | R2.*2
    \ten solb2.~\pp solb~ solb~ solb4 r \t {solb8\<( la sol} |
    \ten do1~\f) do2 r4 |

    %%% Ad libitum %%%
    R1 R2.*2 R1 R2.*2

    %%% Agitato %%%
    \ten re,1~\mf re2 r R1 |
    re4\sfz r r2 | R1 r2 re4\sfz r |
    r re\sfz r1 | R1*2 r4 re\sfz r1 | R1*3
    r4 re\sfz r1 | R1*2 R1.
    r8 mib-.\mp mib8.( si'16) lab2 r |
    r4 \t {si8\mf\<( lab) si} mi4\! \t {lab8\<( mib lab} si2\!) |
    r4 si,2--\mp r4 | r sib'2-- r4 r2 |
    mi,,!1--\f r2 | R1.*2 |

    %%% Allegro non troppo %%%
    R1 R2. R1*5
    R2. R1 R2. R1 R2. R1
    sol2--\f r4 r2 \t {reb'4--\> sib-- lab--} |
    sol2.--\! r4 | R1 sol2.--\p r4 | R1 sol2-- r4 |
    R2.*2 R1*8

    %%% Moderato %%%
    R2.*2 R1 R2. R1
    R2. R1
    \ten mib2.~\pp mib2 r | \ten fa2.~ fa2 r | mib4-- fa2-- |
    mib8.( fa16~) fa2. | solb8.\p( lab16~) lab2 |
    solb4 lab2. | mib8.--\mp fa16~-- fa8 solb~-- solb16 lab8.~ |
    lab8 solb-- fa-- mib-- | sib'8-> r r2 | R1
    R2*4

    %%% Allegro marcato %%%
    r4 mib,8.--\mp\< mib16 solb4.\! r8 |
    r4 mib8.--\< mib16 solb4\!( re8) r |
    R1*2 dod4->\mf( re8-- mi-- sol!4--) r |
    r4 mi8.\mp\< mi16 sol4.\! r8 |
    r4 mi8.\< mi16 sol4\!( mib8) r | R1*2
    r2 r4 fa---.\pp mi2--( fa8) r fa4---. |
    mi2--( fa8) r r4 | R1
    r2 r4 fa---. | mi2--( fa8) r fa4---. | mi2--( fa8) r r4 | R1*2
    r2 r4 sib8-.\pp r | \st {lab( r fa r mib)} r re' r |
    \st {do( r la r sol) r r4 |
    fad8( r mi r dod)} r r4 | R1

    %%% Agitato %%%
    re2.\mf r4 | r re-- r re-- R1 |
    r4 re2.--( re8-.) r r4 r2 | R1*6
    do'8-.->\sfz r r4 r1 | R1*3 R2.
    \st {si'8\p fa si fa la mi la mi |
    dod fad dod sold dod fad dod->} r | R2 r1*4
  }
}

ActeUnSceneUnBisSaxophoneDeux = { \SaxAltoDeux
  \relative {
    R2.*7
    re4->\f r r2 | r4 mib,2\p\<(
    re4\!) r r2 | r4 lab'2\p\<(
    sol8->\f) r do'2---> | fa,---> sib,4~---> |sib lab2---> | R2.*2
    \ten sib2.~---> sib4.\pp r8\fermata r4 | R2.
    \ten sib2.~\pp sib2~ sib8 r\fermata r4 | R1 R2

    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 si-.\p | sib2-- r4 si-. | sib2-- r4
    r sol\mp\<( solb fa\!) r2 |
    R2.*2 R2*2
    r2 r8 la-.\p | lab4-- r8 la-. | lab2-- |
    r8 sib->\mf r4 | r8 la-> mi'-> r r4 |
    r2 r8 lab,->( fa'-> mi->) |
    R2. R2*3 R2.*3

    %%% Adagio %%%
    R1*33
    R2*4
  }
}

InterludeUnSaxophoneDeux = { \SaxAltoDeux
  \relative {
    R1. R1*3 R1. R1 R1.
    mi32\mp( fa8..~) fa4 r mi8( fa~ fa4) \tt {re16( mi fa la sold} |
    si4.) r8 \t {fa16( re mi} si8~) \ten si4~ si r r2 |
    R1. r2 \t {r8 la'\mf( sold} si4~) si4. r8 |
    r2 r4 \t {mi,4( fa8~)} | fa16 mi32( fa mi8~ mi4) r |
    R2 R2.
    sold4\mp( mi8) r sold4( mi8) r |
    sold4( mi8) r sold4( mi8) r |
    sold4( mi8) r sold4( mi8) r sold4( mi8) r |
    sold4( mi8) r sold4( mi8) r |
    sold4( mi8) r sold4( mi8) r |
    \tt {mi16\mf( fa sol\< do sib} do2.\!) r2 |
    \tt {mi,16 fa sol8 do16} sib4 \ttt {mib16 reb sib fa8 sol16} mi8 r |
    fad,2.\f\> sol2\pp r4 | R2.*15
  }
}

ActeUnSceneDeuxSaxophoneDeux = { \SaxAltoDeux
  \relative {
    %%% Air de la Soprano2 %%%

    \repeat unfold 9 { R2.*2 R1*2} R2.*2 |
    re'8\mf( mib re sib) lab( sib) re4-- | re8( mib re sib) lab( sib re mib) |
    lab,( sib re mib) lab,( sib | re mib) r2 |
    lab,8\mf( sib lab fa) lab( sib re mib) | re\>( sib lab fa) re( fa re do) |
    lab4--\! r sol8( lab | do re) do( lab) do4-- | \ten re,1~\ppp| re2. r4 |
    \repeat unfold 8 {R2.*2 R1*2}
    R2.*2 R1 R1-\fermataMarkup |

    %%% Récitatif %%%

    R2.*2-\markup "Prenez le Sax. Baryton" \SaxophoneBaryton
    R1 R2.*3 R1 R2.*4
    \repeat tremolo 12 {si'32\p\< do} |
    si8\sfz r r2 R2 R2. R1*2 R2.*5 R1 |

    %%% Duo %%%

    re,4---.\p re---. \simile re \repeat unfold 14 re
    \ind #"senza cresc." reb \repeat unfold 6 reb
    \repeat unfold 4 si
    \repeat unfold 4 sib r
    sol4->\mf lab8-> sib-> | reb4---> reb-- lab-- | \simile reb lab fa lab | reb lab fa reb |
    reb' r8 lab r4 | \ten mi2.~\p| mi r4 | mi'1\mp\<( | dod2.~\!) dod~ dod4 r2 r2 r8 si'4.--\fsubito |

    %%% Piu vivo %%%
    sol,4\sfz r2 | R1-\markup "Prenez le Sax. Alto" \SaxAltoDeux R2.*2 R1
    r4 la''--\mf fad-- | la8-> mib~-> mib4 r2|
    r4 la-- fad-- |sol8-> mi~-> mi4 r2|
    r4 la-- sol-- |mi'8-> si~-> si4 r | R2.
    r4 si-- la-- |mi'8-> si~-> si4 r |
    r  si la | si8\< re~\! re4  r |
    R2.*2 r16 la-.->\mp r8 r2 |
    R2.*2 r4 r16 sold-> r8 r4 |
    R2.
    %%% Poco allargando %%%
    \t {fa,4--\f( fa-- fa--)}
    \t {fad--( fad-- fad--)}
    \t {sol--( sol-- sol--)}
    re'2-> | R1
    %%% Tempo giusto %%%
    R1*5 R2. R1*2 R2. R2
    \ten sold,2~\mp sold | sold2.~ sold8 r r2 |
    fa4.--\mf fa8( la) fa r fa( si) la r fa( la) fa r fa( |
    si) re( mi) si( fad4--) r8 re'\f( mi) la, r re( mi) si'(|
    sold-.) r r2 |
    R1 R2.*3 R2 R2. R1*4
  }
}

InterludeDeuxSaxophoneDeux = { \SaxophoneBaryton
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    R2*14
    la,2.--\pp r4 | la2.-- r4 la2.-- r4 R1 R2.
    fa2.-- r4 fa2 r4 | R2. reb2--\pp r R2. reb4-- r |
  }
}

ActeUnSceneTroisSaxophoneDeux = { \SaxophoneBaryton
  \relative {
    R2.*4 sol8-.\mp mi4-- sol8-. mi4-- r r8 mi4-> dod8-. si2.~--\< si8\! r r2 |
    R2.*8 r2 \t {mi'8-.\f mi-. mi-.} mi4-- sol-- la8-> mi~-> mi4 r2 |
    R2.*5

    %%% Lamento %%%
    R1.*6 R1*5/4 reb,2\pp\>( do4\!) r2 |
    reb\>( do4\!) r2 |
    \simile reb do4 r2 |
    re reb4 r2 |
    sol2\p( fad4) r |
    sol2( fad4) r |
    sol2( fad4) r |
    red2\>( mi4\!) r |
    reb4.\mp reb,4 reb'8~ reb4\< sib'\! do,\<( reb,4.\mf) r8 r4 | R2*2

    %%% Tempo I %%%
    R2.*7 \ten mi2.~\fp mi mi\< lab8\sfz r r2 | R2.*3
    R1. r2 r4 sol2.\pp( lab mib') mi1.~\p mi2. r4 r2 | \ten do1.~--\mp do2.~ do8 r r4 |
    \ten do1~\pp do4 r2 | r4 si-- |
  }
}

ActeUnSceneTroisBisSaxophoneDeux = { \SaxophoneBaryton
  \relative {
    R1*2 \ind #"détimbré" mi,1\pp R1 r2 \ten lab,~ lab1 R1 r2 fa~ fa r |
    \ten solb1~\pp solb~ solb2. r4 | R1*2 |
    solb1~ solb~ solb2. r4 | R1*5
    r4 \st {re'16\p lab' fa sib reb8 r re,16 lab' fa sib |
    reb8 fa,16 sib reb8 fa,16 sib} reb8 fa,16\< sib reb fa, re la |
    solb4--\sf r r2 | R1
    \ten si1\p~ si~ si2. r4 | R1*6 R2.
    re,1~ re~ re2. r4 |
    fa4\p( re8) r r2 fa4( re8) r r2 |
    fa4( re8) r fa4( re8) r
    fa4( re8) r \simile fa4 re8 r
    fa4 re8 r fa4 re8 r
    fa4 re8 r fa4 re8 r |
    \ten solb1~\p solb2~ solb8 r \simile solb4~ solb1~ solb2. r4 solb1~ solb~ solb2. r4 |
    R1*7
    \ten solb1~\pp solb~ solb4 r r2 | R1*9
  }
}


ActeUnSceneTroisTerSaxophoneDeux = { \SaxophoneBaryton
  \relative {
    R2*3 R2. R2*2 R2.*7 R1*6 R2.*19
    r4 mib,2--\pp mib-- re4~-- re\> re\! r |
    r  mib2 mib-- re4~-- re\> re--\! r |
    r sol2--\p sol-- fad4~-- fad\> fad--\! r |
    r sol2-- sol-- fad4~-- fad\> fad--\! r |
    r mib2--\p mib-- mib4~-- mib2 r4 |
    r mib2--\mp\< sol-- si4~--\mf si r2 |
    R2.*3 R1
    r4 si,2--\pp si-- si4~-- si2 r4 |
    r  si2-- si si4~-- si2 r4 |
    r sol'2--\p sol--\> fad4~--\! fad r2|
    r4 sol2-- sol--\> fad4~\! fad r2 |
    r4 mib2--\mp mib--\< re4~--\! re\> re--\! r |
    r  re'2-- sol-- fad4~-- fad sol\<( fad\!) |
    r8 fad\mf( sol re mib sib si) fad'( sol re mib sib |
    si4) r8 fad'\>( sol,4\!) | r8 re~--\p re4 r | R2.*15
  }
}

InterludeTroisSaxophoneDeux = { \SaxophoneBaryton
  \relative {
    R1 R2. R1 R2. R1 R2.
    si,8\p( lab) si( lab) si( lab) si---. do---. | si( lab) si( lab) si---. do16---. r |
    \simile si8 lab si lab si lab si do | si lab si lab si do16 r |
    reb8 sib reb sib reb mib | reb sib reb mi16 r |
    reb8\mf sib reb sib reb mib | reb sib reb mi16 r |
    fa8\f( re) fa( solb) si\<( lab) si( do\!) | R2*4
  }
}

ActeUnSceneQuatreSaxophoneDeux = { \SaxophoneBaryton
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*2
    R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2

    R2. r16 la-.\mp la--( la--) re4-.( do--) re8-.( la4.--) r4 | r16 la-.\mf la-. la-.
    \acciaccatura dod16 re4-- \acciaccatura si16 do4--
    \acciaccatura mib16 re8-.( la4.--) r4 | R2.*4
    re,,4--->\mf r2 R2. re4---> r2 R2. re4---> r2 R2.*3
    lab'4--\p lab-- lab-- \ten sib2~-- \tt {sib16 la( sol fa lab)} |
    \ten mi2.~--\f mi4 r2 | r8 sib'-> r4 r8 sib-> |
    mi,2---> r4 r8 sib'-> r4 r8 sib-> |
    mi,2---> sib'8-. mi,~-> mi2 r4 R2.
    reb8-> r r4 r2 | R2. R1 R2. R2 R2. R2 R2. |
    \ten reb'2~--\p reb4 r2 | R1*5 R2 R2. R1
    r2 \ten sib~\pp sib2. r4 | r2 sib~ sib2. r4 |
    r2 lab~ lab2. r4 | r2 lab~ lab2. r4 |
    r2 sib'4\mp( solb fa4. reb) |
    r2 fa4\>( solb fa4. fa4\!) r8 |
    dod,2->\mp( re4\> mi \ten sol1\!~) sol~ sol2. r4 | R1*3 R2*3 R2.*6

    do4.--->\f si'8~\<( si16 re8. mi8\!) r |
    do,4.---> re'8~\<( re16 mi8. fa8\!) r |
    do,4---> do---> r8 fad,-.-> r4 R1
    la8-.\mp lab-. reb,-. do'-. fa,-. mi'-. la,-.-> r r4 r2 |
    r4 la8-.\p r sol-. r reb-. r si'-. r fa'-. r mib,-. r la-.-> r r2 |
    R1 R2.
    sol2.--\f r4 sol2-- r8 dod4.-- |
    sol2-- r4 sol2-- r4 fa2-- r4 fa2.-- r4 r fa4.--\ff mib-- |

    re2-- r4 | r8 re'-.->\f r | sold,2-- si4~-- si8 dod4-- |
    re2-- | r8 re-. r | la4.-- sib8~-- sib8. do16~-- do4 |
    mib2-- r8 mib-. r | si2~-- si8 do~-- do16 re8.-- |
    fa,2~\p fa4 r8 r fa''4.~--\mp\< fa2 |
    R2\! R4. r2 \ttt {re16\<( la solb) reb( sib fa)} |

    re4->\f r r2 | \ten re1~\pp re2 r4 re-- |
    \ten re1~ re2. r4 | r2 sol'\p( mi reb sib solb |
    re4->) r r2 | R1*2
    \st {re'4\p re re re R2 re4 re re R2. re4\pp re} R1 |

    %%% Piu lento %%%
    R2.*21
    \st {la8\mp do sib mib fa lab, solb si reb mi re, sol |
    la4 r r2 |
    la8 solb lab mib reb sib' do sol fa re mi' si |
    la4 r r2 |
    la8 sol re' mi reb si solb lab fa mib sib' do |
    la4} r la->\mp r R1.
    do8\p( sib4) do8 \ten la2--~ la1.~la2. r4 |
    \st {la8\p do sib mib fa lab, solb si reb mi re,4 |
    la'8 sol re' mi reb si solb lab fa4 r |
    la8 solb lab mib reb sib' do4 r8 re, r4 |
    la'8 si mi re fa,4 do' reb, lab' |
    la8\mp do sib mib reb si solb lab fa\< re mi' si |
    la4->\mf r mib\sfz r | R1. R1 R1. sib'4\sfz r r2 |
    la8\p solb lab mib reb sib' do sol fa re mi'4   |
    la,8 si mi re, fa sol do sib reb4 r |
    la8 do sib mib fa lab, solb4 r8 mi r4 |
    la8 sol re' mi reb4 solb, fa sib |
    la8 solb lab mib fa sol do sib reb mi re, sol |
    la4-> r la\sfz r | r2 r4 la-> la-> } r | r2 re,4---> r |
  }
}

EntracteSaxophoneDeux = { \SaxAltoDeux
  \relative {
    R2*7 mi4--\pp sold-- sol8-- r r4 |

    %%% Vivo subito %%%
    re4\sf r r2 R1*2
    r2 r8 r16 sol,\<( do8.) sib16( |
    \ten mib1~\mf) mib4. r8 r2 | R1*10
    r4 re,--\p r re-- r re-- r2 | R1*7
    r4 mib8.--\mf mib16 sol4-- r r la8-.\p la-. sold4-. r |
    re1~\pp re4 r r2 | R1*3
    r2 re8--\p r r4 R1 mi8 r r4 r2 R1*2
    re'4\f re8 re re4 re8 re re4 re8 re re4 re8 re re4 re8 re re4 |

    %%% Fugato %%%
    re,4 r r2 | R1-\markup "Prenez le Sax. Baryton" \SaxophoneBaryton R2.*2 R2
    R1 R2.*2 R1
    mi,2\p( sol8) r r4 | R2. lab2( si8) r |
    R1 mi,2( sol8) r r4 | R2. si2.( fa4) r r2 |
    R1 R2.*2 sol'1~ sol2. r4 | R2.*2
    sold4--\mf re'-- la-- la-- |

    %%% Stretto %%%
    re,-- re,---> r re---> r re---> r re'---> | re,---> re'--\p re-- re-- |
    reb-- reb-- si-- si-- sib-- sib-- sib-- sib-- |
    lab2-- re-- mi( sol4) r |
    r16 fa\mf fa8-> r4 r2 | r16 mi mi8-> r4 r mi8-. mi-. |
    re4-. r r2 R1*3

    %%% Noir %%%
    R2.-\fermataMarkup R2.*4 R2 R2. R1 r4 r8 fa'?->\mf r4 R2
    R1*4 mib,2( do4) r R1.*2 r2 mib( do4) r | R1. r2 mib-- |
    R2.-\fermataMarkup R2.*8 R2.-\fermataMarkup

    %%% poco più %%%
    R2.*4 R2.-\fermataMarkup

    %%% Andantino %%%
    \ten la,1~--\p la4 r si1~-- si4 r do1~-- do4 r re2.-- r4 R2.

    %%% Largo non troppo %%%
    la1.\mp( si1~ si4) r |
    do1.( re1~ re4) r |
    la1. si1~ si4-- r |
    do1. re1~ re4 r |
    la2( la') la,-- si( si') r |
    do,( do') do,-- dod( dod,) r |
    re( re') re,-- sol( sol') r |
    do,1-- do2-- \cresc re,1~\mp re4 r red1~ red4 r |
    \ten mi1~--\f mi4 r mi2.-- r4 | R1 R2. mi8-.->\sffz r r4 |
  }
}

ActeDeuxSceneUnSaxophoneDeux = { \SaxophoneBaryton
  \relative {
    R2.*4 R2 R2.*2 R2 \ten mi,2.~ mi2.~ mi2.~ mi4 r | R2. R2 R2.*2 R2 |
    R2.*3 R2 | la4\mf( re,2~) | re4 r | mi4.( la,8~) la4~ | la2 r4 |
    si2--\f | \ten mi,2.~-- | mi2.~ | mi2.~\> | mi4\! r |

    %%% Entrée de la Soprano Deux %%%
    R2.*2 R1 R2. fa'1\p mi2.~-- mi4 r mib2.~\pp mib4 r8 mi,4--\mp( fa-- sol8-. |

    %%% Andantino %%%
    \ten sib1~--) sib2. r4 R2.*4 R2
    R2.*5 R1 R2. R2
    solb4--\p reb'-- do8( lab) | solb2.-- r4 |
    lab8( solb) reb'( do) r solb-. | do-- r r4 r2 |
    solb8( lab) do4-- reb-- solb,8( reb') r4 r2 |
    R2. R1 \ten solb,2.~\p solb2. r4 | R2. solb1~ solb2 r4 |
    R1 R2. R1 R2. R1 R2. R1
    solb2.~--\mf\> solb2.\! r4 |

    %%% Entrée de la Contralto %%%
    lab'2.~\pp lab2. r4 | R2. R1
    R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 do,2.--\mp reb2--( mib) |
    solb8-.\p r r2 | R1 R2. R1 R2. \ten fa2.~--\p fa4 r fa,--\mp |
    sib2.--( si2) r4 sib2.--\mp si2\<( dod4) | mi2\! r4 R2.*2 R1 R2.
    R1 re2\mp( mib4~ mib fa2.) | lab2.--( la2.) r4 | lab2.--( sol2.) r4 | R2. R1
    re2.~\pp re1~ re4 r2 R2 sib2.--\pp r4 |
    lab'\p( fa) r lab( fa) r2 lab4( fa) r lab fa lab-- la-- |
    lab( fa) r lab( fa) r2 |
  }
}

ActeDeuxSceneUnBisSaxophoneDeux = { \SaxAltoDeux
  \relative {
    R1 R2. R2

    %%% Presto agitato %%%
    R1*5/4*18
    r8 sol'16 la sol4 r r2 |
    R1*5/4*2
    mib4 r2 mib4 r | mib r mib r2 | mib4 r r8 mib r2 |
    fa,4 r1 | R1*5/4*7
    r1 r8 si16 dod | si4 r1 | r8 re16 mi re4 r r2 |
    R1*5/4 r4 r8 mi16 fa mi4 r2 | R1*5/4
    reb,4 r2 reb4 r | reb r reb r2 | reb4 r r8 reb r2 | fa4 r1 |
    R1*5/4 mi4 r1 | R1*5/4-\fermataMarkup

    %%% Boum %%%
    R1*5/4*13 mib2. fa2 si fa2. |
    r4 mib2. fa4~ fa2 lab2 si4 |
    mi1*5/4~ mi2. r2 |
    r1 lab,4 | sib2~sib8 re~re2 |
    reb'2 r sib,4 | mib2~mib8 sol~sol2~|
    sol4 fa2 r4 sol,~ | sol2. si2~ |
    do2. r2 | reb2. r2 | r4 reb2. r4 |
    r2 reb2.~reb4 r1 | R1*5/4*2

    %%% Moderato assai %%%
    R1*7/4*7-\markup "Prenez le Sax. Baryton" \SaxophoneBaryton
    fa,,2.~ fa4 r r2 | si2.~si4 r |
    mi,4 r2 | red'4 r2 | mi,4 r2 | sol4 r2 |
    mi4 r2 | fad4 r2 | sol4 r2 la4 r2 | do4 r2 |
    fa,1 r2 r4 | fa1 sol2. fa sol1 | R2.*7
    sol1 r2 r4 | R1*7/4*3
    \repeat volta 2 { R1*7/4*3 } R1*7/4*2

    %%% Presto subito %%%
    mi''1 fa,,2~fa1~fa4 r |
    \tt {re8 fa r4 r8} r4 fa2 \t {mi8 fa sol} |
    sib2. r4 r2 | R1.

    %%% Tempo giusto %%%
    re,4 r2 re4 r fa |
    re r2 re4 r2 | re4 r2 |
    re4 r re8 fa | mib'4 fa, mib' |
    mi,4. r8 | fad' si, mi,4 |
    fad8 dod' sold'4 r |
    fad,8 si mi4 r |
    sold,4 r sold8 red' | si'2 r4 |
    fa4. r8 R4. |
    mi8 mib'~ mib4 mi fa8 r |
    mib,,2~mib4 r8 |
    fad8. mi'16 dod'8 dod4. |
    mib,,2~mib4 r8 |
    do'8. sol'16 mib'8 mib4. |
    R1*5/8 |
    la,,4. r8 | do'8 do4 |
    la r2 R2.*3
    r4 mib2 mi4 sol lab |
    r mi2 mib4 lab sol |
    r mib2 mi4 sol lab |
    r sib si r re mib |
    r fa,2 mi2. R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    R1 sol2 la,4 sol'2 | r4 la, sol' mib solb |
    re'2 r2 r4 | do,4 r1\fermata |
    R1*5/4*3
    \ind #"détimbré" lab'1*5/4~ lab4 r1 |
    R1*5/4*2
    \simile sol1*5/4~ sol4 r1 | R1*5/4*12
  }
}

ActeDeuxSceneDeuxSaxophoneDeux = { \SaxAltoDeux
  \relative {
    R1.*6 R1*2 R2.
    re,4 re8 re r4 | re8 re r4 r8 re |
    r16 sol sol sol r8 re r4 | R2.
    re1 r2 | R1.*2 R1*2 R2.
    re4 re8 re r8 re do'4 | lab4 r8 |
    la2. si4~ si2. r4 | si1~ si2. r4 | si1~ si2. r4 |
    R2. R1. R1*2 la2. sib la2 r4 | R2
    sold2 la4~ la2 r4 | sib2 r4 | R2
    la4. mi4 r r la8 la | sold4 r r la8 la |
    sold4 r r la8 la | sold4 r r sold8 sold la4 r r2 |
    mi2~ mi~ mi~ mi4 r | mi2~ mi4 r |
    r4 r8 reb' reb reb r4 | reb8 reb reb4 reb8 reb |
    reb4 r r1 | R1 R1. sol,1.~ sol2 r4 | sol4 re r2 |

    R2. R1 R2. R1 R2. R1 R2.
    R1 R2. mi'1~ mi4 r2 | R1 R2. R1
    R2. R1 R2. R1 R2. R1 R2.
    la,2 R2 la2~ la4 r2 | la1~ la4 r r2 | R1
    la8 la sold r4 | sold4 r8 la la | sold4 r8 la la |
    sold re r re r | re re mib r4 | la4 r r8 | R2*5/4
    sold8 sold la r4 | R2*5/4 la4 r r8 | R2*5/4*4

    R1*2 sib4 r r2 | R1*3
    mi,1~ mi~ mi2 r2 |
    reb'4 r2 R2 R1 | sol,1~ sol2.~ sol2. solb4 r2 R2.*4 |
    R2*2 R2.*2 R2*2
    mi'4 mib re reb do si sib8 r re, re |
    r4 re8 re r4 re8 re | r4 re8 r16 sib' |
    do8 r r4 | R2*4 r4 reb,8 r | R2
    re!8 r re re r4 mi8 mi | re8 r r4 | R2*6 R2.*16
  }
}
