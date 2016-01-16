%------------------------------------------------------------------%
% Opéra Libre -- contrebasse.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008, 2009                               %
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
    sol,,4\p(\upbow mi)\thumbpizz r2 | sol4(\upbow mi)\thumbpizz r |
    sol8\upbow mi\thumbpizz sol\upbow mi\thumbpizz
    sol\upbow mi\thumbpizz \pizz sol lab |
    \arco sol\upbow mi\thumbpizz sol\upbow mi\thumbpizz
    \pizz sol lab |
    \simile sol mi sol mi sol mi sol lab |
    sol mi sol mi sol lab |
    sol mi sol mi sol mi sol lab |
    sol mi sol mi sol r |
    r \arco mi-.\mf( r mi-.) r mi-.( sol-. lab-.) |
    r mi r mi sol mi |
    r mi r mi sol lab |
    r mi sol mi |
    r <mi mi'>\f r <mi mi'> r <mi mi'> |
    r <mi mi'> r <mi mi'> |
    r <mi mi'> r <mi mi'> |
    r <mi sol'>\ff r <mi sol'> |
    sol16 mi sol lab si lab si do |
    mib\< do mib mi sol mi sol lab |
    sol8->\! re-> sol-> re-> la8\sfz r r4 |
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
    re4-- r r16 la'\upbow\< la la | re,4--\! r2 |
    re4-- r r16 la\< la la |
    re4--\! r8 re'-.\mp\upbow fad,-. si-. |
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
    dod8-.\sfz r r4 r2 |
    sol1\pp~sol~sol~sol~sol~sol2. r4 |
    R2*3 R2.*6

    %%% A tempo %%%
    do4--->\f r8 fad,4-> do'-> fad,8-. |
    do'4---> r8 fad,4-> do'-> fad,8-. |
    do'4-> do-> r8 fad,-.-> r4 |
    R1
    \pizz la16\mp fad' sold8 dod,16 sib do8 fa16 re mi,8 |
    la4-> r4 r2 | r4 la4\mf sol'8 re dod4 si8 fad fa4 mib'8 sib |
    la4-> r2 | r16 re,8.-> r4 r2 |
    R2. \arco sol2~--->( sol8 sol--) \t {sol-> sol-> sol->} | sol2---> r8 dod4.---> |
    sol2---> r4 sol\downbow\< sol\downbow sol\downbow fa2--->\ff\downbow fa4-- fa~---> \t {fa8 fa4~--->} \t {fa fa8~--->} fa4 |
    r fa~--->( fa8 mib'-.) \t {mib-> mib-> fad->} |

    \ten re2.~--->\ff re8 r4 | sold,2--\f si4~--\<( si8 dod4--) |
    re2~--\! re8 r4 | la4.-- sib8~--\<( sib8. do16~-- do4) |
    mib2~--\! mib8 r4 | si2~\mf si8 do~--\<( do16 re8.--) |
    fa,2~--\! fa4 r8 | fa2~--\mf fa | R2 R4. R2.
    re'4\f\CaV r r re--\p | re-- re-- re-- re-- \simile re re re re |
    re re re re re re re re |
    re' <re, re'> re' <re, re'> re' <re, re'> re' <re, re'> |
    re'8 re <re, re'> re re' re <re, re'> re |
    re'16\CaV re re re re re re re re re re re re re re re |
    re4\CaV re,-+ re'\CaV re,-+ \pizz <re re'> r r2 |
    R1 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    r2 \clef "G_8" \arco \ten si''?4~\pp si2 r4 | R2.
    r2 \simile si4~ si2 r4 |
    r2 si4~ si2 r4 |
    r2 si4~ si2 r4 |
    r2 do4~ do2 r4 | R2.
    r2 re4~ re2 r4 |
    r2 mib4~ mib2 r4 |
    r2 mib4~ mib2 r4 | R2. \clef "F_8"
    r4 \pizz si,?\mp\> r r re,\! r |

    %%% Stesso tempo %%%
    la4\f r r2 r8 mi4. | la4 r r2 |
    la4 r r do r mi, | la4-> r r2 |
    la4 re dod fad fa sib, | la4-> r r2 | R1. R1 R1. R1
    la8\mp do sib4 fa'8 sold, fad4 dod'8 mi re4 |
    la8 sol re'4 dod8 si fad'4 fa8 mib sib4 |
    la8 fad sold4 dod8 sib do4 fa8 re mi4 |
    la,8 si mi,4 fa'8 sol do,4 reb8 mib lab,4 |
    la8 do sib4 dod8 si fad4 fa'8 re mi,4 |
    la-> r r2 | R1. \arco \ten do1\pp~ do1.
    do4-.->\ffsubito r \pizz sib\mp reb |
    la8 fad sold4 dod8 sib do4 fa,8 re' mi,4 |
    la8 si mi,4 fa8 sol do4 reb8 mib lab,4 |
    la8 do sib4 fa8 lab solb4 dod8 mi, re'4 |
    la8 sol' re4 dod8 si fad4 fa'8 mib sib4 |
    la8 fad' sold4 fa8 sol do,4 dod8 mi, re' sol |
    la,4-> r r2 R1. R1
  }
}

EntracteContrebasse = { \Contrebasse
  \relative {
    sold,,2~\pp sold sold~ sold |
    sold~ sold sold sold sold4 r8 \t {sold16\< dod si} |
    re4\sfz r r2 | R1*22
    re'2:16\mp\CaV re:\CaV re:\CaV re:\CaV re:\CaV re:\CaV re:\CaV re:\CaV
    re:\CaV re:\CaV re:\CaV re:\CaV re:\CaV re16\< dod si sib lab sol fa mib |
    re4->\! r r2 \pizz re4\mf r si fa' dod red sold,8 sold' r4 |
    fad,4 sib mib reb fa si, do mi sib fad sol la8 sol |
    la4 sol'8 la mi4 do | \arco re2:8\mf re: re: re4: re2: re: |

    %%% Fugato %%%
    <mi, mi'>1~\f <mi mi'>~ <mi mi'>2.~ <mi mi'>~ <mi mi'>4 r |
    mi'1~\mf mi2.~ mi~ mi1~ mi~ mi2.~ mi4 r2 |
    mi,1~ mi~ mi2.~ mi fa2\p mi fa1~ fa2.~ fa2. |
    r4 fad2.\mp sol2 fad sol2. r4 sol2\< |
    sold2.\! \t {sold8\< si dod} |

    %%% Stretto %%%
    re2:8\f re: re: re:
    re8 re'\mp\CaV re4:8\CaV re2:8\CaV
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
    \ordin mi: mi: re4-.-> r r2 R1*3

    %%% Noir %%%
    R2.-\fermataMarkup R2.*4 R2 R2. R1
    R2. R2 R1*5 R1.*4 R1 R2.-\fermataMarkup
    R2.*8 R2.-\fermataMarkup

    %%% Poco più %%%
    la2.\pp sib do dod2 r4 R2.-\fermataMarkup

    %%% Andantino %%%
    R1 R2 R1 R2 R1 R2 R1 R2.

    %%% Largo non troppo %%%
    \det {la2\mf la la si si si do do do re re re |
    la la la si si si do do do re re re |
    <la la'> <la la'> <la la'> <si sol'> <si sol'> <si sol'> |
    <do sol'> <do sol'> <do sol'> \cresc dod dod dod |
    <re re'> <re re'> <re re'> sol, <sol' sol> sol, |
    do do do re re re red red red} |
    <mi, mi'>--->\ff r1 <mi mi'>2---> r R1 R2. R2
  }
}

ActeDeuxSceneUnContrebasse = { \Contrebasse
  \relative {
    R2.*4 R2 R2.*2 R2 |
    r4 sol2~\p\CaV sol2.~\CaV sol2.~\CaV sol4\CaV r |
    R2. R2 | R2.*2 R2 |
    r4 sold2~ sold2.~ sold2.~ sold4 r |
    R2. R2 | R2.*2 R2 | R2.*2 | R2. \clef "G_8" |
    \ttt { mi8\f[ mi16 mi mi mi] } \ttt { mi[ mi mi mi mi mi] }|

    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {dod'8\f dod16 dod dod dod} dod8 r r4 |
    r2 \ttt {fa,8\f fa16 fa fa fa} \clef "F_8" |
    R1 \pizz fa,,4\p fa' r R2 mi,4 mi' r R1 |

    %%% Andantino %%%
    sib4 r r2 R1 R2. mi4 r2 R2.*2 R2 \clef "G_8"
    \arco <re''mi>2._\markup {
      \center-column \bracket {
        \score { \new Staff \with {
          \remove Time_signature_engraver }
          \relative { \clef "F_8" <la,, do\harmonic re sol\harmonic>1}
          \layout {indent = #0 }
        }
      }
    }~\p\CaV
    <re mi>2.~\CaV <re mi>~\CaV <re mi>2\CaV r4 |
    <re mi>--\CaV r <re mi>--\CaV | r <re mi>--\CaV r <re mi>--\CaV |
    r <re mi>--\CaV r | R2 \clef "F_8" |
    fad,,4--\mp dod'-- sid8 sold \ten fad1~-- fad2 r4 |
    r8 fad( fad,) do''! fad,4--( fad,--) | fad'2.~\upbow fad2( fad,4)\thumbpizz r |
    R2. R1 fad'2.~\p fad2. r4 | R2. fad1~ fad2 r4 |
    fad,1\pp\upbow fa2.~ fa2. r4 | fad2.~\upbow fad1 fa2.~ fa2. r4 |
    fad2.~\downbow fad2. r4 |

    %%% Entrée de la Contralto %%%
    R2. R1 R2. R1
    R2. R1 R2. R1 do'2.~ do2. r4 | r do2~ |
    r4 do2.\upbow | dod2.~ dod2. r4 | do2 r4 | R1
    fad2.\mf\upbow fa2. r4 | fad2.\upbow fa2. r4 |
    fad2. \ten sol2.~ sol4 r \pizz fa |
    sib, r2 si4 r2 sib4 r2 si4 r2 | mi4 r2 |
    \arco \ten mib2.~\mp mib2 r4 | R1 R2.
    R1 R2. R1 \pizz lab4\mp r2 la4 r r2 | lab4 r2 |
    sol4 r r2 | R2. r4 \arco lab\mp\>( sol) fa |
    re2.~\pp re1~ re4 r2 R2 |
    R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisContrebasse = { \Contrebasse
  \relative {
    R1 R2. R2 \clef "G_8"

    %%% Presto agitato %%%
    <sol, do\harmonic sol''>1*5/4~\pp
    \simile sol''~\CaV sol~\CaV sol~\CaV sol2.\CaV r2 |
    R1*5/4 <sol,,sib\harmonic re''>1*5/4~\p
    <sol sib\harmonic re''>2. r2 \clef "F_8" |
    R1*5/4*7
    sib,1*5/4~\p sib~ sib2. r2 |
    dod2\mp re( mi4) \ten sol1*5/4~ sol2. r2 |
    \accdet {<re do'>4\sfz r2 <re do'>4\sfz r | <re do'>\sfz r <re do'>\sfz r2 |
    <re do'>4\sfz r r8 <re do'>\sfz r2 | <fa' sol>4\sfz} r1 |
    R1*5/4*3
    \ind #"détaché (sotto voce)" sol,,8\mp mi sol mi sol mi sol mi sol-> lab |
    sol mi sol mi sol mi sol mi sol-> lab |
    \simile sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol mi sol mi sol mi sol mi sol lab |
    sol\< mi sol mi sol mi sol mi sol4 |
    \accdet {lab4\sfz r2 lab4\sfz r | lab\sfz r lab\sfz r2 |
    lab4\sfz r r8 lab\sfz r2 | do4\sfz} r1 |
    R1*5/4 <mi,red'>4->\sffz r1 | R1*5/4-\fermataMarkup |

    %%% Boum %%%
    R1*5/4*12 r1 \t {la'8--\f\< mi-- fad--} |
    \ten <mi, red'>1*5/4~--->\! <mi red'>2. r4 \t {la'8--\< mi-- fad--} |
    <mi, red'>1*5/4--->\! fa4-- mib'2-> \t {reb8--\< sib-- do--} \t {sol-- fa-- lab--} |
    \ten <mi mi'>1*5/4\!---> | r4 mi2.\upbow\< fa4~\! |
    fa2 \det {sib8\f\< lab si sol fa lab | \ten <mi mi'>1*5/4~->\!} <mi mi'>2. fa2---> |
    \ten <mi mi'>1*5/4~ <mi mi'>1*5/4 \acc {sib'2\upbow\ff lab\< si4 |
    <mi, mi'>1*5/4~--\!} <mi mi'>2. r2 | R1*5/4*5

    %%% Moderato assai %%%
    R1*7/4*7
    \pizz fa8\p( do' dod sold' la mi') | R1
    si,8( fad' sol re') \clef "G_8" mib sib' \clef "F_8" R2 |
    mi,,,4 r2 red'4 r2 mi,4 r2 sol4 r2 mi4 r2 fad4 r2 sol4 r2 si4 r2 do4 r2 |
    \arco \ten fa,1*7/4~-- fa4 r2 r1 | R1*7/4 R2.*7
    sol'1*7/4~\mf sol1 r2 r4 |
    R1*7/4*2 \repeat volta 2 {\det {la1\mf si2. la si1 R1*7/4} \meno si1} r2 r4 | R1*7/4

    %%% Presto subito %%%
    \tt {mi,,8\f re' fa r4} \tt {mi,8 re' fa r4} \tt {mi,8 re' fa r4} |
    \tt {mi,8 re' fa r4} \tt {mi,8 re' fa r4} \tt {mi, r8 re' fa} |
    \tt {mi,4 r8 re' fa} \tt {mi,4 r8 re' fa} \tt {mi,4 r8 re' fa} |
    \tt {mi,4 r8 re' fa} \tt {\ind #"détaché" mi, re' fa sol re} \tt {mi, re' fa sol re} |
    \tt {mi, re' fa sol re} \tt {mi, re' fa sol re} \tt {mi, re' fa sol re} |
    \pl {re2.~ re~ re~ re~ re~ re2}
    {re4\leftpizz r2 re4\leftpizz r2 re4\leftpizz r2 re4\leftpizz r2 re4\leftpizz r2 re4\leftpizz r}
    \pizz re r fa r mi r r mi |
    fad r2 fad4 r2 sold4 r sold r fad r \clef "G_8" sib8 mib lab4 R4. \clef "F_8" |
    mi,4-> \clef "G_8" mi'-> mi'-> r \clef "F_8" |

    \arco mib,,4--->\ff \accdet {mib~ mib8 mib4 | fad2 r4 |
    mib4 mib~} mib8 \accdet {mib4 | do2 r4 | mib4} \det {mib8\< mib mib |
    <la, la'>2} \acc {la'8\< la la\!} |
    \pl {la,\sfp\leftpizz \pizz do sib mib} {la8 s s4} r4 |
    fad,8 si dod mi r4 |
    sold,4 r8 sold r4 sold4 sold sold |
    \arco \ten sol2.~--\mp sol2 r4 | sol2.~-- sol2 r4 sol2.~-- sol2 r4 |
    sol2 r4 sol2 r4 r si2--\upbow sold2.--\mp | R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    R1 \accdet {<la sold'>4\sfz r2 <la sold'>4\sfz r <la sold'>\sfz r <la sold'>\sfz r2 |
    <la sold'>4\sfz r r8 <la sold'>\sfz} r2 | <dod sold'>4\sffz r1\fermata |
    R1*5/4*21
  }
}

ActeDeuxSceneDeuxContrebasse = { \Contrebasse
  \relative {
    R1.*6 R1*2 R2.
    re,,8->\f r r16 re-> fa8-> r16 fad8.-- |
    re8---> re16 re re re re re re8 mib |
    re fa mib lab fa si lab lab, sib mi si fa' |
    \ten re1.~--\mf re1 r2 |
    R1. R1*2 R2.
    si8->\f r r16 si8-- re16 r red8.-- r16 \acc {si re red} |
    R4. si4---> r r8 \pizz sold4. |
    <si si'>4\plak r8 sold r sol r4 |
    <si si'>4\plak r8 si r si r4 |
    <si si'>4\plak r8 si r si r4 |
    <si si'>4\plak r8 si r si r4 |
    <si si'>4\plak r8 si r \arco si--\ff \det {la\> do |
    \ten sold2.~->\mf} sold1 r2 | R1*2

    \pizz fa4\mp r2 fa4 r2 fa4 r2 fa4 r |
    fa' r red <mi, mi'>\plak r2 mi'4 r2 |
    do4 r |
    r16 \arco la->\upbow \acc {fad sol fa lab |
    <mi mi'>4--} r r8 \pl sol sol'\leftpizz r4 |
    <mi, mi'>4-> r8 \st {sol r sold} r4 |
    <mi mi'>4-> r8 mi' r mi r4 |
    <mi, mi'>4 r8 mi' r mi r4 |
    <mi, mi'>4 r8 mi' r r16 \acc {la, fad sol fa lab |
    mi8-.} \ind #"scherzando" mi'-.\p r dod-. | <mi, mi'>4-- dod'8-. do-. |
    <mi, mi'>8 mi' mi, mi' |
    r16 \acc {sib\pp la do dod sol fa lab} |
    mi8 mi' r4 | \t {mi re fa} |
    \ten dod1~\mf dod2 r4 |

    \det {dod1\pp r4 dod | sol2. r4 |
    dod1 r4 dod | \ten sol1.~\mp} sol2 r4 | R1 \clef "G_8"
    la'''2.~\pdolce\CaV la1~\CaV la2.~\CaV la1~\CaV la2.~\CaV la1~\CaV la2.~\CaV |
    la1~\CaV la2.~\CaV la1~\CaV la2.~\CaV la1~\CaV la2.~\CaV la1~\CaV |
    la4\CaV r2 \clef "F_8" | R1 R2. R1 R2. R1 R2.
    \ten <la,,,la'>2~\f la~ <la la'>~ la2.~ <la la'>2~ la~ la1~ la2. r4 |

    <la sold'>4---> r r8 | <la la'>8 <la la'> <la sold'> r4 |
    \acc {la8 la sold r4   | <la la'>8 <la la'> <la sold'> r4 |
    <la sold'>4--} r r8 | \dwnb {sold4 sold r8 | la4} r r8 |
    <la sold'>4---> r \st {mib'8 | mib re} r4 r8 | \dwnb {<re sold>4 <re sold> r8 |
    <mib la>4} r r8 | \acc {mi8 mi fa} r4 | r8 \accdet {fad4 fad sol} r r8 |

    R1*2 si,4->\sffz r r2 | r4 \pizz mi\mp fa r r dod mi r | R1
    \arco <mi, mi'>2~--->\mp mi8 mi-. mi4--\upbow |
    <mi mi'>2~---> mi8 mi-. mi4--\upbow |
    <mi mi'>2~---> mi8 mi-. mi4--\upbow |
    \pl mi4_\thumbpizz mi'^\f\leftpizz r2 | \pizz re4\mp r |
    R1*2 R2.*4 r4 sib' r r fad r | R2.
    \pizz <la, la'>4\p\plak mib' sold re |
    dod' sol do | fa, si mi, |
    mib la, re sold, |
    dod sol do fad, | fa' mi <re sib'>\arpeggUp <re sib'>\arpeggUp |
    \simile <re sib'> <re sib'> |
    <re sib'> <re sib'> |
    <re sib'> <re sib'> |
    dod sol do fad, | si fa sib mi, |
    R2 r8 \arco la16-.\pp \st {la sold8} r | R2
    \pizz <re'sib'>4\p <re sib'> |
    <re sib'> sold re-> r | R2*6 \clef "G_8"

    la''2.~\pp\CaV la2.~\CaV la2.~\CaV la2.~\CaV la2.~\CaV la2.~\CaV la2\CaV r4 |
    R2.*9
  }
}

ActeDeuxSceneTroisContrebasse = { \Contrebasse
  \relative {
    %%% Larghetto %%%
    R4.*9
    \ten re,,4.~\pp re~ re4 r8 | R4.
    fad4.~ fad~ fad8 r4 |
    fa4.~ fa~ fa~ fa4 r8 | R4.*3
    la4.~ la4 r8 | R4.*2
    fa4.~ fa8 r4 | la4-- r8 |
    \pizz dod,4\mp r8 |
    re4 r8 | dod4 r8 |
    re4 r8 | fad4 r8 |
    \arco \ten fa4.~\p fa4 r8 |
    \pizz dod4\mp r8 | re4 r8 |
    dod4 r8 |
    \arco \ten do4.~\p do4 r8 |
    \pizz dod4\mp r8 sol4 r8 |
    dod4 r8 | sol fa lab |
    \pl {mi4_\leftpizz s8 s4} {\arco \ten mi'4.~\p mi4 } r8 |
    \pizz mi\< re fa |
    dod4\mp r8 | dod dod dod |
    <re sib'>4\p\arpeggUp | <re sib'>\arpeggUp |
    <re sib'>\arpeggUp | <re sib'>\arpeggUp |
    <re sib'>\arpeggUp | <re sib'>\arpeggUp |
    <re sib'>\arpeggUp |
    <dod sold'>\arpeggUp | <dod sold'>\arpeggUp |
    <dod sold'>\arpeggUp | <dod sold'>\arpeggUp |
    dod <dod sold'>\arpeggUp |
    <dod sold'>\arpeggUp |
    si r8 si | R4
    <si sold'>\arpeggUp | <si sold'>\arpeggUp |
    <si sold'>\arpeggUp | <si sold'>\arpeggUp |
    <sib fa'>\arpeggUp <sib fa'>\arpeggUp <sib fa'>\arpeggUp | R4
    <sib mi>\plak <sib mi> | <sib mi> r8 |
    sib4 sib sib R4*4
    sold4 r8 | re'4 r8 |
    sold,4 r8 | re'4 r8 |
    sold,4 r8 | sold'4 r8 |
    sol4 sib,8 |
    fad4 r8 | do'4-- fa,8 |
    fad4 r8 | do'4-- fa8 |
    fad4 fad8 fa4-- fad8 |
    mi4-- sol8 |
    \arco \ten mib4~\mf mib~ mib~ mib8 r | R4*3
    \pizz <re sib'>4\mf\arpeggUp <re sib'>\arpeggUp |
    dod8-> r | R4
    re4 dod8-> r | R4
    re4\mp dod8 sold' dod, sold' |
    dod, sold' dod, sold' |
    do, sol' do, sol' |
    do, sol' do, sol' |
    do, sol' do, si |
    r si r si r si |
    R2.-\fermataMarkup R2.*6

    %%% Interlude %%%
    R2*2 \arco fa'2~\p fa~ fa4 si,~ si2~ si |
    fa'2~ fa4. si8~ si2. |
    fad2~ fad4 r16 do8.~ |
    do4 r8 r16 fad~ |
    fad2 r16 do'8.~\< do4~ |
    do4. dod8~\! dod2 r8 |
    sol,2~\p sol~ sol~ sol4 mi~ |
    mi2~ mi8 sol4.~ sol16 mi8.~ mi4 |
    sol8\mp sol' sol sol sol sol sol sib, |
    sib sib sib sib sib sib sol' sol |
    sol8. sib,16 r sib8 sib16 |
    r sol'8 sol,16 r8 sib |
    sol'8.--->\f sib,16~---> sib dod8.---> |
    <mi, mi'>2---> dod'4---> <mi, mi'>~---> |
    mi8. sib'16-> dod8.-> mi,16->\< dod'-> sib-> |

    %%% Quatuor %%%
    sol'4--->\! \pizz sol\mf\CaV | sol\CaV r8 |
    sol4\CaV sol\CaV sol\CaV r8 |
    mi16\CaV la\CaV re8\CaV
    mi,16\CaV la\CaV re8\CaV |
    \ordin mi,4 r8 | re8. fa |
    \arco dod2--\f r4\fermata | R2.*6 R2*2 R2.

    %%% Air Baryton 1 %%%
    do!2--\pp( do--) fad,-- r4 |
    do'2--( do--) fad,-- r4 |
    do'2--( do--) sol-- r4 |
    do2~ do~ do r4 |
    sol8-.\mp\upbow sol~-- sol16 dod8--( sol16-.) | dod4-- r8 |
    sol-.\upbow sol~-- sol16 dod8--( sol16-.) | mi'4-- r8 |
    \ten do2~\p do4 r16 sol8-- do16~--( do sol-.) do8~-- do4 do\upbow\<( |
    dod4\!)\thumbpizz r |
    r8 \arco sol~---> sol16 dod8--( si16-.) |
    sol'2---> r4 |
    re1~--->\f re2.~ re4 r |

    %%% Doppio tempo %%%
    re8-> r r4 | R2*5
    r8 sold,4--\upbow\mp( re'8-.) |
    sold,2.~ sold~ sold2 r4 |
    sold'2.~ sold~ sold2 r4 |
    R2. R2 r8 sold,4--\f\>( fad--) la8-. |
    fa2~--\mp fa lab4 |
    fa2~ fa4 lab2 |
    fa~ fa r4 | fa2~ fa r4 | fa2~ fa r4 |
    r8 fa'4.\upbow\f mib2-- fad4-- |

    %%% Climax %%%
    <re re'>4---> \st {<re re'>8 <re re'>} |
    <re re'>4:16\< <re re'>8: |
    <re re'>4--->\! r |
    r8 mib'-. \ind #"détaché" do16 si la fad |
    re4---> \st {<re re'>8 <re re'>} |
    <re re'>4:16\< <re re'>8: |
    <re re'>4--->\! r |
    r8 sold'-. fad16 mib reb do |
    re,4---> r8 <re re'>~->\< |
    <re re'> <re re'>-. <re re'>-. <re re'>-. |
    sold,-.\! sold-. sold-. sold4:16 sold8:16 |
    sold4---> r8 re'4---> sold,8-. |
    re'2:16 re4-- r |

    %%% Soprano 2 %%%
    \pizz re4\mp la sold dod do fa, mi' |
    la, r2 | la4 r r2 |
    re4 si fad' red r la sold |
    dod r2 | reb4 do8 sol' r fa r mi |
    si4 r2 si4 r r2 |
    sib4\p fa' r8 sib, |
    r4 r8 fa' r4 sib, |
    R2. R1
    sib4 fa' sib, fa' mib r8 do r4 |
    R2. dod4\mp r r2 | sol4 r2 |
    R1 R2. R1 R2.
    re'4\p r r2 |
    r8 sold'\< re si fa re |
    do4\! r r2 | R2.
    \arco sib'4-.\mp fa'-. mi8( do) sib4-. |
    do8( sib) fa'( mi) r4 |
    \pizz sold,,4 r r2 | r8 sold' r4 mi |

    %%% Soprano 1 %%%
    re4-> r r2 | re4\p r2 |
    re'4\CaV r r2 | dod,4 r2 |
    dod4 r r2 |
    si4 r2 si'4 r si, r |
    sib8\p fa' r sib, r4 |
    fa' r sib, r8 fa' |
    r sib, fa' sib, r fa' |
    r4 sib, r fa' |
    r8 sib, r fa' sib, fa' |
    r sib, r4 fa' r |
    sib, r8 fa' r sib, |
    dod4 r r2 | sol4 r2 |
    sib8\p fa' r4 r2 | R2.
    sib,8 fa' sib,4 r2 |
    r4 r8 fa' r4 | R1
    sib,8 fa' sib,4 r |
    r8 \arco dod\mp\( re( fa) fad( la) sib,4--\) |
    r8 dod\( re( fa) fad( la)\) |
    r re,\( mib( fad) sol( sib) si,4~--\) |
    si2 r4 |

    %%% Duo %%%
    \pizz la\p do sib mib |
    fa lab, solb si | dod mi re sol, |
    sib sol la mi | re' si dod sold |
    fad mib' fa do |
    do'8 la si fad sold dod, red re |
    sold,4 r |

    %%% Baryton 2 %%%
    \arco <re' re>4--->\downbow\fsubito <re re>--->\downbow <re re>--->\downbow <re re>--->\downbow \det {re re |
    re re re re re re |
    <re re'>-> <re re'>-> <re re'>-> |
    <re re'>->} re8\< re \t {re re re} |
    \accdet {re4\! re re re} \det {re re |
    dod dod dod si si si |
    sol\< si fa'} si8-.->\! fa4---> |
    \det {<re sib'>\fp <re sib'> <re sib'> |
    <re si'> <re si'> <re si'> |
    <re do'> <re do'> <re do'>} |
    <re dod'>8-> re-. <re dod'>-> re-. <re dod'>-> re-. |
    <re mib'>-> re-. <re mib'>-> re-. <re mib'>-> re-. |
    <re fad'>-> re-. <re fad'>-> re-. <re fad'>-> re-. |
    <re sold'>4---> <re sold'>---> re---> |
    <re re'>--->\sfz r2 |
    r8 \acc {si' mi, fad do mib re4-- r2 |
    r8 sol sib do mib4 |

    %%% Boum %%%
    <si, lad'>4\sffz} r2 | R2.*2
    \ten sold2.--\mp~ sold2 r4 |
    mi2.--~ mi2 r4 |
    do'2.--~ do2 r4 |
    si2.--~ si2 r4 |
    fa2.--\mf~ fa2 r4 |
    sold2.--~ sold2 r4 |

    %%% Contralto %%%
    re'4---> r R2 r4 re'--\mf\CaV re,---> \pizz re\mp |
    re re re re re re re re |
    do do do do |
    \arco si8\mp si r4 | la4---> r | R2. R2*6
    \pizz dod4\mp r2 sol4 r2 | dod4 r2 | sol4 r sold-> |

    %%% Grand ensemble %%%
    \arco dod1~\psubito dod sol~ sol2 dod~ |
    dod sol~sol\< sold\! | \ten mi1~ mi2. r4 |
    r2 mi'--\mp~ mi4 sib--~sib8 mi4-- sib8-. |
    mi2.-- r4 | R1
    \ten sib'1--\mf~ sib2 r8 do,4.-- |
    <la la'>1--~ <la la'>2. r4 |
    sib4--\< la-- sib-- do-- |
    \ten <re re'>1\f~ <re re'>2. r4 |
    r \det {<re re'> <re re'> <re re'> |
    <re re'> <re re'> <re re'> <re re'> |
    r <re re'> <re re'> <re re'> |
    <re re'> <re re'> <re re'> <re re'> }|
    r8 <re re'>-> <re re'>-> <re re'>->
    <re re'>-> <re re'>-> <re re'>-> <re re'>-> |
    R2.

    %%% Chute %%%
    re2.:32\sfp~ re2:32
    <re re'\harmonic>4:32~ <re re'\harmonic>2.:32~
    <re re'\harmonic>4:32 \glissando
    <re la'\harmonic>2:32~\psempre
    <re la'\harmonic>2:32\glissando
    <re sol\harmonic>4:16
    <re sol\harmonic>16 <re sol\harmonic>16
    <re sol\harmonic>16 <re sol\harmonic>16
    <re sol\harmonic>16 <re sol\harmonic>16
    <re sol\harmonic>16 <re sol\harmonic>16
    <re sol\harmonic>16 <re sol\harmonic>16
    <re sol\harmonic>8 r4
    R2

    %%% Andante al fine %%%
    R2.*4
    \harmo { <la do\harmonic>2.\pp~
      \oneVoice
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>~
    <la do\harmonic>2} mi'' r4 | R2.*2
    \ten mi,2.\pp~ mi2 r4 |
    \longHairpins {mi,2.:32\mp~\< mi2:32\f } \ind #"ample" <mi mi'>4---> |
    <mi mi'>8--->\< <mi mi'>---> \t {<mi mi'>---> <mi mi'>-. <mi mi'>-.}
    \tt {<mi mi'>16-> <mi mi'>-> <mi mi'>-> <mi mi'>-> <mi mi'>->\!}
  }
}