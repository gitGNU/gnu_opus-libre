%------------------------------------------------------------------%
% Opéra Libre -- contrebasse.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

Contrebasse = {
  #(make-instrument-name 'double-bass "contrabass" 27.5)
  \clef "F_8"
}

PrologueContrebasse = { \Contrebasse
  \relative {
    %%% Introduction %%%

    \partial 4 r4 R2.*3 R1 | mi,,,2\f r8 mi'-- \t {mi--( mi-- mi--)}
    mi,2.~|mi2 r8 mi'-- \t {mi--( mi-- mi--)} | mi,2.~\mp| mi4 \pizz mi |
    r8 mi--\mf\> \t {mi-- mi-- mi--}| \arco mi2.\mp ~ | mi4 \pizz mi |
    r8 mi \t {mi mi mi}| \arco mi2. ~ | mi4 mi'~| mi8 mi\< \t {re--( re-- re--)} |
    dod4--->\f r2 | \t {\pizz dod4--\mf re-- mi--} sol4-- r |
    \arco dod,2--->\f r8 sol-. r dod-. r sol-. | dod4---> dod---> sol8-. dod~--->|
    dod4 r | sol-- dod-- sib8-. dod~--| dod sol-. dod4-- | dod-- sol8-. dod-. r sib-. |
    r dod4\>( sol8) | sib2~--\p sib2 r4 |

    %%% Tempo giusto %%%
    re8\sfz re'-. re,-. re'-. |
    re,-. re'-. re,-. re'-. |
    re,-. re'-. re,-. re'-. |
    re,-- re mib re | fa re lab' fa |
    sib lab si dod | dod, r r4 | R2
    re4--\f re-- re-- | lab2-- r4 |
    re4.-- re-- | fad,2.\mp mib' do |
    sib2\< sol4~ sol mi'2 | \ten re2.~\f re4 r8 sol--\ff mi-- re-- |
    \ten dod1~---> dod4 r R2 R2-\fermataMarkup |

    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    sol2~\pp sol~ sol~ sol~ sol2.~ sol~sol~ sol~
    sol2 r4 | \repeat tremolo 12 {sol32\p\<( lab\!} sol'2.) R2.*4
    R4.

    %%% Andantino %%%
    \pizz <sol lab>8\p\plak r4 | <sol lab>8 r4 | R4.*2
    <sol lab>8 r4 | <sol lab>8 r4 |
    <sol lab>8 r4 | <sol lab>8 r4 |
    R4.*6
    mi,4\p r8 <sol sol'>4\plak r8 |
    mi4 r8 <sol sol'>4\plak r8 |
    red'4 r8 | <fad, fad'>4\plak r8 |
    red'4 r8 | <fad, fad'>4\plak r8 |
    mi4 r8 | <mi mi'>4\plak r8 |
    re'4 r8 \arco solb8\>( mib reb) \ten do4.~\pp do~ do4 r8 |
    solb'8( mib reb) | do4.~ do~ do4 r8 |
    solb'8( mib reb) | do4.~ do4 r8 |
    fad4\< mib8~ mib dod4 |

    %%% A tempo %%%
    re8\sfz r4 | \pizz sold,8--\mf( si-- dod--) |
    re8\sfz r4 | sold,8\mf( si dod) re( fa sol) |
    lab4-- r8 | \arco lab4--->\f fa8~---> fa mib4---> |
    \ten re4.~---> re~ re4 r8 |
    mib4( re8) \ten fa,4.~ fa~ fa4 r8 |
    fa'4.\mf re\< do si4.~\fmolto si4 r8 |
    \ten sib4.~ sib~ sib~ sib4 r8 | R4.
    si8--\f\>( sib-- lab--) |
    fa4.~\mp fa~ fa8 r4 | R4.*3
    fa8\pp fa fa fa4.:8 fa4---> r8 r16 fad'\mf fad fad |
    re4--\f mib-- re-- | fa8.--( lab--) fa8--\>( mib-- re--) | do2\mf mib4--\> |

    %%% Adagio %%%
    la,1~\p\CaV la~\CaV la\CaV |
    sib1~\p sib1.~ sib4 r r1 |
    la1~\CaV la\CaV
    sib~\p sib1.~\pp sib4 r r1 |
    la1~\CaV la\CaV sib2.\p |

    %%% Valse %%%
    sol2.~\pp sol4 r dod~-- | dod2 r4 |
    sol2-- r4 | dod2-- r4 | sol2-- r4 |
    \pizz sib4 r <mi, mi'>\plak r | sol4 r2
    R2 R2.*2 R1
    r4 \arco do2--\pp r4 | fad,2-- r4 | do'2-- r4 | fad,2-- r4 |
    do'2-- r4 | \pizz fad,4 r2 | <mi mi'>4\plak r | <sol sol'>\plak r |
    \arco do1\mf do4 do4. sold8 |

    %%% Vivo al fine %%%
    <re' re>8\sfz lab'-. sib-. fa-.
    <re re>-> sib'-. dod-. sold-. |
    <re re>-> lab' sib fa
    <re re>-> sib' dod sold |
    <re re>-> dod mi fad
    <re re>-> fa lab <re, re>-> |
    sol sib <re, re>-> lab' si <re, re'>-> la' mib |
    re4-> <re mib'>---> <re dod'>---> <re mib'>---> |
    <re dod'>---> <re mib'>---> <re dod'>---> <re mib'>---> |
    <re re'>\> re re\p re |
    re re re re re-- re'-- re,-- re'-- re,-- r |
    \pizz re r re r R2*9
    r4 mi,\mp
  }
}

ActeUnSceneUnContrebasse = { \Contrebasse
  \relative {
    do,,2--\pp( do) fad,-- r4 |
    do'2--( do--) fad4--( fad,2--) |
    do'2--( do--) fad4.--( fad,8~-- fad4) |
    do'2--( do--) fad2--( fad,4--) |
    do'2-- do fad8 fad,~-- fad2 |
    do'2-- do-- fad2~--\mp\< fad8 fad, |
    \ten fa1\p fa4-- fa2-- |
    \ten fa1-- fa2--( fa'4--) |
    reb1--\psempre reb4--( reb2--) |
    reb1 reb2--\<( reb4--) |
    \t {do4\mf( sol'8} mi'4) \t {do,4\>( sol'8} mi'4\!) |
    do,4-- \t {sol'4( do,8)} sol'4-- |
    do,16( sol' mi') sol,
    do,( sol' mi') sol,
    do,( sol' mi') sol,
    do,( sol' mi') sol, |
    do,( sol') do, sol'
    do,( sol') do, sol'
    do,( sol') do, sol' |
    do,4\downbow do\downbow do\downbow \simile do do do do do do |
    \t {fad,8-- sol--( la--)} \t {<fad do'>-- re'--( mib--)} fa4-- |
    \t {<fad, la>8-- do'--( re--)} \t {mib-- fa--( lab--)} sib4-- |
    fad,4\downbow fad\downbow fad\downbow fad8---> fad-- \t {fad-- fad-- fad--} fad'4---> |
    \ten do1~\f do2 r4 |

    %%% Ad libitum %%%
    R1 R2.*2 R1 R2.*2 |

    %%% Agitato %%%
    re2:8\fp re: re: re: re: re: re: re: re: re: re: re: |
    re: re: re: re: re: re: re: |
    re: re: re: re: re: re: re: re: re: |
    re: re: re: | re4:8 mib: re: mib: | re8-> re mib re-> re mib re-> re |
    mib4\mp\downbow mib\downbow \simile mib mib mib mib |
    mib mib mib mib mib mib mib mib mib mib mib mib |
    mib mib mib mib mib2:8\< mib: mib: |
    \ten <mi, mi'>1.\f R1.*2

    %%% Allegro non troppo %%%
    R1R2.R1*5 R2. R1 R2. R1 R2. R1
    sol2.\ff sib4.--\< reb8~--\! \t {reb4 sib--\>( lab--\!)} |
    sol2. r4 | R1*3 R2.*3 R1*6

    %%% Moderato %%%
    la4.---> sib8~\mp sib2 | la4. sib8~ sib2 |
    la8. sib16~ sib4. la8 | do2.~ do2 r |
    la8. sib16~ sib4~ sib16 la8. | do1~ |
    do2 la4 | do2 r4 \t {la8--\<\upbow( do-- sib--)} |
    \ten mib2.~\mf mib2 r | \ten fa2.~\p fa2 r | mib4\mp( fa2) |
    mib8.( fa16~) fa2~ \t {fa8 mib--\<( fa--)} |
    solb8.\mf( lab16~) lab2 | solb4-- lab4~-- lab16 solb8.-- lab-- mib16~---> |
    mib8.\< fa16~---> fa8 solb~---> solb16 lab8.~--->\! | lab8 fa,->\f solb-> lab-> |
    si8\sfz r r2 | R1 R2*4 |

    %%% Allegro marcato %%%
    \acc {si?4\f si' si, si' si, si' si,} r | R1*3
    \acc {si4\f si' si, si' si, si' si,} r | R1*16

    %%% Agitato %%%
    re2:8\f re: re: re: re: re: re: re: |
    \det {re4\fp re' re, re' re, re' re, re' |
    re, re' re, re' re, re' re, re' |
    re, re' re, re' re, re' re, re' |
    re, re' re, re'} <re, re'>8->\sfz r r4 r1 | R1*3 R2. R2*3
    re'16\<\CaV re\CaV re\CaV re\CaV re8->->\! r | R2 R1*4
  }
}

ActeUnSceneUnBisContrebasse = { \Contrebasse
  \relative {
    dod,,2.\pp
    <dod sold'>~ <dod sold'>2 r4 |
    \st {sib16\pp lab si sol sib lab si sol sib lab si sol |
    dod re mi sol} dod,8-- r \st {dod16 re mi sol |
    dod,\p\< re mi sib sol la sib mi dod re mi sol,} |
    lab8--\mf lab16 lab fa8-- fa'16 fa mib8-- mib16 mib |

    %%% Piu vivo %%%
    re4\sfz r r8 do-- sol--( la--) | fad2--\f \t {sol8--( la-- do--)} |
    re4---> r r8 mib-- lab,--( fa--)| sib4.-- lab-- |
    \ten sol2.~---> sol~ sol4 r reb'---> | sol2.---> |
    R2. r4 reb'2~\p reb4. r8\fermata r4 |
    R2. r4 reb2~ reb~ reb8 r\fermata r4 | r2 r4 fad,,--\p( sol-- la--) |

    %%% Largo %%%
    do2\downbow \ten do~\downbow do~ do2.~
    do2~ do2.~ do2~ do2.~
    do4 do2\<\upbow do4\mp r r2 |
    R1 R2. R2 R1 R2.*2 R2*2 R2. R2*3 R2. R1 R2.
    R2*3 R2.*3

    %%% Adagio %%%
    R1*9 \clef "G_8"
    r2 r4 r8 <\parenthesize sol' si''>~\pp\CaV |
    si''1~\CaV si2.\CaV r4 \clef "F_8" |
    R1 sib,,8\p( lab) si sol~ sol2~ |
    sol4 sib-- sol2~--
    sol4 sol,--( fa-- sold--) |
    mi1~\pp mi~ mi~ mi2 r | R1*13
    R2 \pizz re''4\mp sold, fa r
    r \arco dod\f\downbow
  }
}

InterludeUnContrebasse = { \Contrebasse
  \relative {
    R1. R1*3 R1. R1 R1.*2 R1*2
    la,4\CaV r r1 \clef "G_8"
    la'1\mf( si2 do1~) do4 r2 | R2 \clef "F_8"
    r2 \ttt {r16 fad,,-- red-- dod-- sib-- do--} |
    sol1~\f sol2 sol8 do-- sib-- dod-- |
    sol1-- r8 dod4.-- | sol8-- sol'-- sol,-- sol'-- sol,-- sol'-- sol,-- sol'-- |
    sol, sol' sol, sol' sol, dod dod dod |
    sol16--\mf sol sol'-- sol sol,-- sol sol'-- sol
    sol,-- sol sol'-- sol sol,-- sol sol'-- sol
    sol,-- sol sol sol sol sol sol sol |
    sol sol sol sol sol sol sol sol dod dod dod dod \t {r8 mib--( reb--)} |
    fad,2.--->\ff\> sol2\p r4 | R2.*4
    si2.~\pp si~ si~ si~ si8 sib4( lab) si8( |
    sol'2.~) sol~ sol~ sol~ R2.*2
  }
}

ActeUnSceneDeuxContrebasse = { \Contrebasse
  \relative {
    %%% Air de la Soprano2 %%%

    \repeat unfold 9 {R2.*2 R1*2}
    R2. | r4 dod,,--\mf r |
    \ten sol1~\f  sol~ | sol2.~  sol4 r2 | sol1~---> sol2.  r4 |R2.*2 |
    sold1~\pp sold~| sold2.~ sold~   |sold1~ sold2. r4 |
    \repeat unfold 7 {R2.*2 R1*2} R2.*2 R1 R1-\fermataMarkup |

    %%% Récitatif %%%

    R2.*2 R1 R2.*3 R1 R2.*6 R2 R2. R1*2 R2.*5 R1 |

    %%% Duo %%%

    \pizz re'4\p
    \repeat unfold 16 re
    \repeat unfold 7  reb
    \repeat unfold 4  si
    \repeat unfold 4  sib r |
    \arco sol\f lab8--( sib--) |
    reb4-- dob-- \simile sib | dob sib lab sib |
    dob sib lab fa | dob' r8 sib r4 |
    mi,2.~\mp| mi r4| mi'1\mp\<\upbow | \ten reb2.~\!|reb~|reb4 r2 | R1 |

    %%% Piu vivo %%%
    \ten sol,2.~ | sol1~ sol2 r4 | R2.
    sol2\ff sol4\downbow sol dod4.-> dod8 dod dod |
    sol2-- r8 sol sol sol | dod4.-> dod8\downbow \t {dod dod dod} |
    sol4---> sol2-> r4 |
    dod4-> r8 sib-> lab-> si-> |
    sol4--->\ff sol---> sol---> sol---> r2 | \simile sol4 sol sol si r2 |
    sib4 sib sib | re r2 | re4 re re re r2 | re4 re re re r2 re4 re re |
    dod r2 dod4 dod dod \ten fa,1~\ff fa2 r4 si~\f\> | si8 do4. dod2\! |

    %%% Tempo giusto %%%
    \pizz re4\mf re re re re re re re |
    dod dod dod dod si si si si | si r r2 |
    \arco <sol sol'>2--->\f r4 |
    sol8-.\mp sol-. sol-. sol-. \simile sol sol \repeat unfold 10 sol |
    sol-- r r2 | r4 \t { re'8--\upbow si-- do--} |
    \repeat unfold 14 sold |
    sold r r sold--\upbow fad-- la-- |
    fa2~\f fa4. fa8 |
    fa2~ fa |
    r8 la\upbow( sol sib) |
    \ten fad2~ fad2. \pizz la'8\CaV r r2
    R1 R2.*3 R2 R2. R1*4
  }
}

InterludeDeuxContrebasse = { \Contrebasse
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    \pizz si,,4--\mf r re-- r si-- r fad'-- r sol--\p r sol r sol r |
    dod, r mi sib do fad mi sib do fad mi r R2 |
    \arco \ten la,1~\p la~ la~ la2 r | R2.
    \ten fa1~ fa2 r4 | R2. \pizz dod'4\p r r2 | R2. dod4 r |
  }
}

ActeUnSceneTroisContrebasse = { \Contrebasse
  \relative {
    R2.*4 do,,2.\upbow\p ~ do~ do\< do4->\sfz r2 | R2.*3
    si2.\mp sib2.:32\pp si2. sib2.:32 si2.\mp dod2.:32~\mf dod:~\< dod4\! r
    \pizz sold\mf si r2
    \arco \ten sib2.~\p sib~ sib~ sib2 r4 |

    %%% Lamento %%%
    r2 r4 \pizz re\p si dod \arco sib2\>( re4\!) r r2 | reb\>( fa4\!) r r2 |
    sib,\>( re4\!) r r2 reb\>( fa4\!) r r2 | sib,\>( re4\!) r r2 | reb\>( fa4\!) r2 |
    sib,\p( reb4) r2 | re( fa4) r2 \simile sib, reb4 r2 sib si4 r2 |
    mi,2\mp\> sol4\upbow\! r | \simile sold2 si4 r |
    mi,2 sol4 r | si2\< fa'4\mf r |
    \ten reb2\p reb4 reb4. reb8-> reb-> reb-> reb4---> reb8->\ff reb-> r4 | R2*2

    %%% Tempo I %%%
    R2.*3
    << {mi2.~\p mi~ mi~ mi~ mi~ mi~ mi4}\\
    {s2.*2 mi,4-+ s2 mi4-+ s2 mi4-+ r mi-+
    mi-+ r mi-+ mi-+}>> r8 mi'\f \t {mi\< mi mi} sold4\sfz r2 |
    R2.*3

    %%% Tempo II %%%
    R1. do,~\pp do~ do~ do~ do2 r1 | r2 r4 do->\sffz r | R1 R2. R2
  }
}

ActeUnSceneTroisBisContrebasse = { \Contrebasse
  \relative {
    R1*3 r4 sol2--\pp\CaV r4 R1*2 r4 sol2--\CaV r4 |
    R1 r2 re,4--\p la8( si) fad4-- r r2 | R1*8
    fad1~\pp fad~ fad2. r4 | R1*2 %%FIXME: harmonics
    \pizz <re' la'\harmonic>4 r <re sol\harmonic> r
    \arco <re fad\harmonic>1~\p <re fad\harmonic>2. r4 \clef "G_8" |
    \simile fad''4\p\CaV r fad\CaV r
    fad\CaV r fad\CaV r
    fad\CaV r fad\CaV r
    fad\CaV r fad\CaV r
    fad\CaV r fad\CaV r
    fad\CaV r fad\CaV r
    fad\CaV r fad\CaV r
    fad\CaV r fad\CaV r |
    \ordin fad(\glissando red8) r red4(\glissando do8) r |
    sib\>(\glissando sol16) r sol8(\glissando mi16) r mi8(\glissando dod16\!) r \clef "F_8" |
    re,1~ re~ re
    <fa dod'>4\mp\upbow  \ind #"pizz. du pouce" re\thumbpizz r2
    <fa dod'>4\upbow \simile re\thumbpizz r2
    <fa dod'>4\upbow re\thumbpizz <fa dod'>\upbow re\thumbpizz
    <fa dod'>\upbow re\thumbpizz <fa dod'>\upbow re\thumbpizz
    <fa dod'>\upbow re\thumbpizz <fa dod'>\upbow re\thumbpizz
    <fa dod'>\upbow re\thumbpizz <fa dod'>\downbow <la, fa'> |
    fad1~\p fad~ fad~ fad~ fad~ fad~ fad2. r4 |
    R1*7
    <re' fad\harmonic>1~\pp <re fad\harmonic>~ <re fad\harmonic>4
    r4 \ordin fad2~ fad1~ fad4 r r2 |
    sol1\p\> \ten fad~\pp fad~ fad~ fad~ fad~ fad\fermata
  }
}

ActeUnSceneTroisTerContrebasse = { \Contrebasse
  \relative {
    R2*3 R2. R2*2 R2.*7
    \pizz mib,,4 r r2
    mi4 r fa r |
    re8\mp sol, do fad, lad-- si sol sold |
    la-- fad sib-- sol lab reb-- sol, si |
    do lab la sib-- sol si-- lab la |
    re-- lab do reb la sib mib-- la, |
    dod-- re sib\< si do dod |

    %%% Poco meno %%%
    re4\mf r2 R2.*2
    \arco re'2.~\CaV re~\CaV re~\CaV re~\CaV re4\CaV r2 |
    re2.~\CaV re~\CaV re4\CaV r2 |
    <re, sol\harmonic re''>2.~\CaV
    <re sol\harmonic re''>~\CaV
    <re sol\harmonic re''>~\CaV
    <re sol\harmonic re''>~\CaV
    <re sol\harmonic re''>2\CaV r4
    <re sol\harmonic re''>2.:32~\CaV
    <re sol\harmonic re''>8\CaV r r2
    \pizz fa4\mf r2 R2.*2
    fa,4 r2 R2.*2
    dod'4 r2 R2.*2
    dod4 r2 R2.
    r8 \arco mi\mf fa( sold) fa( mi) |
    la,2.~--\CaV la~\CaV la2\CaV r4 |
    <la la'>2.~\mf <la la'>~<la la'>4 r8 \pizz la' r4 |
    sold r8 si r16 fad8. | fa4 do r |
    mib r sib | la r8 la' sol,-- sol' sib,-- sib' |
    \arco fad,2.~\mp fad~ fad2 r4 |
    fad2.~ fad~ fad2 r4 |
    fa2.~ fa~ fa4 dod'2--\upbow |
    fa2.~ fa~ fa4 la2--\mf\upbow |
    dod,2.~ dod~ dod4 la'2-- |
    dod,2.~-- dod~ dod4 fa2--\f |
    la,2.~---> la~ la~ la2 r4 |
    la'2.\pp\CaV la,4-+ r2 | R2.*13
  }
}

InterludeTroisContrebasse = { \Contrebasse
  \relative {
    sol,,4\upbow mi\thumbpizz r2 | sol4\upbow mi\thumbpizz r |
    sol8\upbow mi\thumbpizz sol\upbow mi\thumbpizz
    sol\upbow mi\thumbpizz \pizz sol lab |
    \arco sol\upbow mi\thumbpizz sol\upbow mi\thumbpizz
    \pizz sol lab |
    \simile sol mi sol mi sol mi sol lab |
    sol mi sol mi sol lab |
    sol mi sol mi sol mi sol lab |
    sol mi sol mi sol r |
    r \arco mi r mi r mi sol lab |
    r mi r mi sol mi |
    r mi r mi sol lab |
    r mi sol mi |
    r <mi mi'> r <mi mi'> r <mi mi'> |
    r <mi mi'> r <mi mi'> |
    r <mi mi'> r <mi mi'> |
    r <mi sol'> r <mi sol'> |
    sol16 mi sol lab si lab si do |
    mib do mib mi sol mi sol lab |
    sol8 re sol re la8 r r4 |
  }
}

ActeUnSceneQuatreContrebasse = { \Contrebasse
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*2
    R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2

    %%% Agitato %%%
    \pizz la,4\mp r2 | la,4 r2 | do4 r2 | do4 r2 |
    R2. \arco la'2~\mf\< la4\glissando do2.\! | mi4 r
    sold,,~\f\upbow | sold dod-- si-- | re-- r2 |
    re4-- r r16 la'\upbow\< la la | re,4--\! r2 | re4-- r r16 la\< la la |
    re4-- r8 re'-.\mp\upbow fad,-. si-. |
    mib,4-- r8 reb4--\downbow sol8-. | do,4-- r8 fa-.\upbow la,-. re-. |
    fad,4-- r8 la4--\downbow mib'8-. | lab4 r8 la-. reb,-. solb-. |
    sib,4-- r8 sib4--\downbow\< sib8-- | mi4->\! r8 mi,-. \t {mi\< mi mi} |
    mi4--\f\downbow mi\downbow mi | mi4---> r2 |
    mi'4-> r8 mi,-. \t {mi\< mi mi} | mi4->\! r2 |
    mi'4--\downbow mi--\downbow sib8-. mi~-> | mi2 re4~---> | re fa2---> |
    dod2~\sfp dod8 r r4 | R2. R1 R2. R2 R2. R2 R2. R2 R2.

    %%% Placando assai %%%
    dod2.--\p(\upbow dod4--) sol2.-- r4 | dod2.--(\upbow dod4--) sol2.-- r4 |
    dod2\<(\upbow re mib) \ten mi2.~\p mi2. r4 |

    %%% Andante a piacere %%%
    \pizz fa,4\mp r r2 r reb'4 r |
    fa, r r2 r reb'4 r |
    \arco \ten fa,1~\mp fa2 reb fa1~ fa2 reb |
    sol2.\mf r4 r8 dod4--\upbow sol-- dod8-. |
    sol2.---> r4 r8 dod4--\upbow sol-- sol8-. |
    dod8\pp r r4 r2 |
    sol1~sol~sol~sol~sol~sol2. r4 |
    R2*3 R2.*6

    %%% A tempo %%%
    do4--->\f r8 fad,4-> do'-> fad,8-. |
    do'4---> r8 fad,4-> do'-> fad,8-. |
    do'4-> do-> r8 fad,-.-> r4 |
    R1
    \pizz la16\mp fad' sold8 dod,16 sib do8 fa16 re mi,8 |
    la4-> r4 r2 | r4 la4\mf sol'8 re dod4 si8 fad fa4 mib'8 sib |
    la4-> r2 | r16 re,8.-> r4 r2 |
    R2. \arco sol2~--->( sol8 sol--) \t {sol-> sol-> sol->} | sol2 r8 dod4. |
    sol2 r4 sol sol sol fa2 fa4 fa~ \t {fa8 fa4~} \t {fa fa8~} fa4 |
    r fa~fa8 mib' \t {mib mib fad} |

    re2.~ re8 r4 | sold,2 si4~si8 dod4 |
    re2~ re8 r4 | la4. sib8~sib8. do16~do4 |
    mib2~ mib8 r4 | si2~si8 do~do16 re8. |
    fa,2~fa4 r8 | fa2~fa | R2 R4. R2.
    re'4\CaV r r re | re re re re re re re re |
    re re re re re re re re |
    re' <re, re'> re' <re, re'> re' <re, re'> re' <re, re'> |
    re'8 re <re, re'> re re' re <re, re'> re |
    re'16\CaV re re re re re re re re re re re re re re re |
    re4\CaV re,-+ re'\CaV re,-+ \pizz <re re'> r r2 |
    R1 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    r2 \clef "G_8" \arco si''?4~si2 r4 | R2.
    r2 si4~si2 r4 |
    r2 si4~si2 r4 |
    r2 si4~si2 r4 |
    r2 do4~do2 r4 | R2.
    r2 re4~re2 r4 |
    r2 mib4~mib2 r4 |
    r2 mib4~mib2 r4 | R2. \clef "F_8"
    r4 \pizz si,? r r re, r |

    %%% Stesso tempo %%%
    la4 r r2 r8 mi4. | la4 r r2 |
    la4 r r do r mi, | la4 r r2 |
    la4 re dod fad fa sib, | la4 r r2 | R1. R1 R1. R1
    la8 do sib4 fa'8 sold, fad4 dod'8 mi re4 |
    la8 sol re'4 dod8 si fad'4 fa8 mib sib4 |
    la8 fad sold4 dod8 sib do4 fa8 re mi4 |
    la,8 si mi,4 fa'8 sol do,4 reb8 mib lab,4 |
    la8 do sib4 dod8 si fad4 fa'8 re mi,4 |
    la r r2 | R1. \arco do1~ do1. do4 r \pizz sib reb |
    la8 fad sold4 dod8 sib do4 fa,8 re' mi,4 |
    la8 si mi,4 fa8 sol do4 reb8 mib lab,4 |
    la8 do sib4 fa8 lab solb4 dod8 mi, re'4 |
    la8 sol' re4 dod8 si fad4 fa'8 mib sib4 |
    la8 fad' sold4 fa8 sol do,4 dod8 mi, re' sol |
    la,4 r r2 R1. R1
  }
}

EntracteContrebasse = { \Contrebasse
  \relative {
    sold,,2~ sold sold~ sold |
    sold~ sold sold sold sold4 r8 \t {sold16 dod si} |
    re4 r r2 | R1*22
    re'2:16\CaV re:\CaV re:\CaV re:\CaV re:\CaV re:\CaV re:\CaV re:\CaV
    re:\CaV re:\CaV re:\CaV re:\CaV re:\CaV re16 dod si sib lab sol fa mib |
    re4 r r2 \pizz re4 r si fa' dod red sold,8 sold' r4 |
    fad,4 sib mib reb fa si, do mi sib fad sol la8 sol |
    la4 sol'8 la mi4 do | re2:8 re: re: re4: re2: re: |

    %%% Fugato %%%
    <mi, mi'>1~ <mi mi'>~ <mi mi'>2.~ <mi mi'>~ <mi mi'>4 r |
    mi'1~ mi2.~ mi~ mi1~ mi~ mi2.~ mi4 r2 |
    mi,1~ mi~ mi2.~ mi fa2 mi fa1~ fa2.~ fa2. |
    r4 fad2. sol2 fad sol2. r4 sol2 |
    sold2. \t {sold8 si dod} |

    %%% Stretto %%%
    re2:8 re: re: re:
    re8 re'\CaV re4:8\CaV re2:8\CaV
    <re, do'\harmonic>2:8
    <re do'\harmonic>:
    <re do'\harmonic>:
    <re do'\harmonic>:
    <re si'\harmonic>:
    <re si'\harmonic>:
    <re si'\harmonic>:
    <re si'\harmonic>:
    <re sol\harmonic>:
    <re sol\harmonic>:
    \ordin mi: mi: re4 r r2 R1*3

    %%% Noir %%%
    R2.-\fermataMarkup R2.*4 R2 R2. R1
    R2. R2 R1*5 R1.*4 R1 R2.-\fermataMarkup
    R2.*8 R2.-\fermataMarkup

    %%% Poco più %%%
    la2. sib do dod2 r4 R2.-\fermataMarkup

    %%% Andantino %%%
    R1 R2 R1 R2 R1 R2 R1 R2.

    %%% Largo non troppo %%%
    la2 la la si si si do do do re re re |
    la la la si si si do do do re re re |
    <la la'> <la la'> <la la'> <si sol'> <si sol'> <si sol'> |
    <do sol'> <do sol'> <do sol'> dod dod dod |
    <re re'> <re re'> <re re'> sol, <sol' sol> sol, |
    do do do re re re red red red |
    <mi, mi'> r1 <mi mi'>2 r R1 R2. R2
  }
}

ActeDeuxSceneUnContrebasse = { \Contrebasse
  \relative {
    R2.*4 R2 R2.*2 R2 |
    r4 sol2~\CaV sol2.~\CaV sol2.~\CaV sol4\CaV r |
    R2. R2 | R2.*2 R2 |
    r4 sold2~ sold2.~ sold2.~ sold4 r |
    R2. R2 | R2.*2 R2 | R2.*2 | R2. \clef "G_8" |
    \ttt { mi8[ mi16 mi mi mi] } \ttt { mi[ mi mi mi mi mi] }|

    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {dod'8 dod16 dod dod dod} dod8 r r4 |
    r2 \ttt {fa,8 fa16 fa fa fa} \clef "F_8" |
    R1 \pizz fa,,4 fa' r R2 mi,4 mi' r R1 |

    %%% Andantino %%%
    sib4 r r2 R1 R2. mi4 r2 R2.*2 R2 \clef "G_8"
    \arco <re''mi>2.~\CaV <re mi>~\CaV <re mi>~\CaV <re mi>2\CaV r4 |
    <re mi>\CaV r <re mi>\CaV | r <re mi>\CaV r <re mi>\CaV |
    r <re mi>\CaV r | R2 \clef "F_8" |
    fad,,4 dod' sid8 sold fad1~ fad2 r4 |
    r8 fad fad, do''! fad,4 fad, | fad'2.~ fad2 fad,4\thumbpizz r |
    R2. R1 fad'2.~ fad2. r4 | R2. fad1~ fad2 r4 |
    fad,1 fa2.~ fa2. r4 | fad2.~ fad1 fa2.~ fa2. r4 |
    fad2.~ fad2. r4 |

    %%% Entrée de la Contralto %%%
    R2. R1 R2. R1
    R2. R1 R2. R1 do'2.~ do2. r4 | r do2~ |
    r4 do2. | dod2.~ dod2. r4 | do2 r4 | R1
    fad2. fa2. r4 | fad2. fa2. r4 |
    fad2. sol2.~ sol4 r \pizz fa |
    sib, r2 si4 r2 sib4 r2 si4 r2 | mi4 r2 |
    \arco mib2.~ mib2 r4 | R1 R2.
    R1 R2. R1 \pizz lab4 r2 la4 r r2 | lab4 r2 |
    sol4 r r2 | R2. r4 \arco lab sol fa |
    re2.~ re1~ re4 r2 R2 |
    R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisContrebasse = { \Contrebasse
  \relative {
    R1 R2. R2 \clef "G_8"

    %%% Presto agitato %%%
    <sol, do\harmonic sol''>1*5/4~
    \simile sol''~\CaV sol~\CaV sol~\CaV sol2.\CaV r2 |
    R1*5/4 <sol,,sib\harmonic re''>1*5/4~
    <sol sib\harmonic re''>2. r2 \clef "F_8" |
    R1*5/4*7
    sib,1*5/4~ sib~ sib2. r2 |
    dod2 re mi4 sol1*5/4~ sol2. r2 |
    <re do'>4 r2 <re do'>4 r | <re do'> r <re do'> r2 |
    <re do'>4 r r8 <re do'> r2 | <fa' sol>4 r1 |
    R1*5/4*3
    sol,,8 mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol4 |
    lab4 r2 lab4 r | lab r lab r2 |
    lab4 r r8 lab r2 | do4 r1 |
    R1*5/4 <mi,red'>4 r1 | R1*5/4-\fermataMarkup |

    %%% Boum %%%
    R1*5/4*12 r1 \t {la'8 mi fad} |
    <mi, red'>1*5/4~ <mi red'>2. r4 \t {la'8 mi fad} |
    <mi, red'>1*5/4 fa4 mib'2 \t {reb8 sib do} \t {sol fa lab} |
    <mi mi'>1*5/4 | r4 mi2. fa4~ |
    fa2 sib8 lab si sol fa lab | <mi mi'>1*5/4~ <mi mi'>2. fa2 |
    <mi mi'>1*5/4~ <mi mi'>1*5/4 sib'2 lab si4 |
    <mi, mi'>1*5/4~ <mi mi'>2. r2 | R1*5/4*5

    %%% Moderato assai %%%
    R1*7/4*7
    \pizz fa8 do' dod sold' la mi' | R1
    si,8 fad' sol re' \clef "G_8" mib sib' \clef "F_8" R2 |
    mi,,,4 r2 red'4 r2 mi,4 r2 sol4 r2 mi4 r2 fad4 r2 sol4 r2 si4 r2 do4 r2 |
    \arco fa,1*7/4~ fa4 r2 r1 | R1*7/4 R2.*7
    sol'1*7/4~ sol1 r2 r4 |
    R1*7/4*2 \repeat volta 2 {la1 si2. la si1 R1*7/4} si1 r2 r4 | R1*7/4

    %%% Presto subito %%%
    \tt {mi,,8 re' fa r4} \tt {mi,8 re' fa r4} \tt {mi,8 re' fa r4} |
    \tt {mi,8 re' fa r4} \tt {mi,8 re' fa r4} \tt {mi, r8 re' fa} |
    \tt {mi,4 r8 re' fa} \tt {mi,4 r8 re' fa} \tt {mi,4 r8 re' fa} |
    \tt {mi,4 r8 re' fa} \tt {mi, re' fa sol re} \tt {mi, re' fa sol re} |
    \tt {mi, re' fa sol re} \tt {mi, re' fa sol re} \tt {mi, re' fa sol re} |
    \pl {re2.~ re~ re~ re~ re~ re2}
    {re4\leftpizz r2 re4\leftpizz r2 re4\leftpizz r2 re4\leftpizz r2 re4\leftpizz r2 re4\leftpizz r}
    \pizz re r fa r mi r r mi |
    fad r2 fad4 r2 sold4 r sold r fad r \clef "G_8" sib8 mib lab4 R4. \clef "F_8" |
    mi,4 \clef "G_8" mi' mi' r \clef "F_8" |

    \arco mib,,4 mib~ mib8 mib4 | fad2 r4 |
    mib4 mib~ mib8 mib4 | do2 r4 | mib4 mib8 mib mib |
    <la, la'>2 la'8 la la |
    \pl {la,\leftpizz \pizz do sib mib} {la8 s s4} r4 |
    fad,8 si dod mi r4 |
    sold,4 r8 sold r4 sold4 sold sold |
    \arco sol2.~ sol2 r4 | sol2.~ sol2 r4 sol2.~ sol2 r4 |
    sol2 r4 sol2 r4 r si2 sold2. | R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    R1 <la sold'>4 r2 <la sold'>4 r <la sold'> r <la sold'> r2 |
    <la sold'>4 r r8 <la sold'> r2 | <dod sold'>4 r1\fermata |
    R1*5/4*21
  }
}

ActeDeuxSceneDeuxContrebasse = { \Contrebasse
  \relative {
    R1.*6 R1*2 R2.
    re,,8 r r16 re fa8 r16 fad8. |
    re8 re16 re re re re re re8 mib |
    re fa mib lab fa si lab lab, sib mi si fa' |
    re1.~ re1 r2 |
    R1. R1*2 R2.
    si8 r r16 si8 re16 r red8. r16 si re red |
    R4. si4 r r8 \pizz sold4. |
    <si si'>4\plak r8 sold r sol r4 |
    <si si'>4\plak r8 si r si r4 |
    <si si'>4\plak r8 si r si r4 |
    <si si'>4\plak r8 si r si r4 |
    <si si'>4\plak r8 si r \arco si la do |
    sold2.~ sold1 r2 | R1*2

    \pizz fa4 r2 fa4 r2 fa4 r2 fa4 r |
    fa' r red <mi, mi'>\plak r2 mi'4 r2 |
    do4 r |
    r16 \arco la fad sol fa lab |
    <mi mi'>4 r r8 \pl sol sol'\leftpizz r4 |
    <mi, mi'>4 r8 sol r sold r4 |
    <mi mi'>4 r8 mi' r mi r4 |
    <mi,mi'>4 r8 mi' r mi r4 |
    <mi,mi'>4 r8 mi' r r16 la, fad sol fa lab |
    mi8 mi' r dod | <mi, mi'>4 dod'8 do |
    <mi, mi'>8 mi' mi, mi' |
    r16 sib la do dod sol fa lab |
    mi8 mi' r4 | \t {mi re fa} |
    dod1~ dod2 r4 |

    dod1 r4 dod | sol2. r4 |
    dod1 r4 dod | sol1.~ sol2 r4 | R1 \clef "G_8"
    la'''2.~\CaV la1~\CaV la2.~\CaV la1~\CaV la2.~\CaV la1~\CaV la2.~\CaV |
    la1~\CaV la2.~\CaV la1~\CaV la2.~\CaV la1~\CaV la2.~\CaV la1~\CaV |
    la4\CaV r2 \clef "F_8" | R1 R2. R1 R2. R1 R2.
    <la,,,la'>2~ la~ <la la'>~ la2.~ <la la'>2~ la~ la1~ la2. r4 |

    <la sold'>4 r r8 | <la la'>8 <la la'> <la sold'> r4 |
    la8 la sold r4   | <la la'>8 <la la'> <la sold'> r4 |
    <la sold'>4 r r8 | sold4 sold r8 | la4 r r8 |
    <la sold'>4 r mib'8 | mib re r4 r8 | <re sold>4 <re sold> r8 |
    <mib la>4 r r8 | mi8 mi fa r4 | r8 fad4 fad sol r r8 |

    R1*2 si,4 r r2 | r4 \pizz mi fa r r dod mi r | R1
    \arco <mi, mi'>2~ mi8 mi mi4 |
    <mi mi'>2~ mi8 mi mi4 |
    <mi mi'>2~ mi8 mi mi4 |
    \pl mi4_\thumbpizz mi'^\leftpizz r2 | \pizz re4 r |
    R1*2 R2.*4 r4 sib' r r fad r | R2.
    \pizz <la, la'>4\plak mib' sold re |
    dod' sol do | fa, si mi, |
    mib la, re sold, |
    dod sol do fad, | fa' mi <re sib'>\arpeggUp <re sib'>\arpeggUp |
    \simile <re sib'> <re sib'> |
    <re sib'> <re sib'> |
    <re sib'> <re sib'> |
    dod sol do fad, | si fa sib mi, |
    R2 r8 \arco la16 la sold8 r | R2
    \pizz <re'sib'>4 <re sib'> |
    <re sib'> sold re r | R2*6 \clef "G_8"

    la''2.~\CaV la2.~\CaV la2.~\CaV la2.~\CaV la2.~\CaV la2.~\CaV la2\CaV r4 |
    R2.*9
  }
}
