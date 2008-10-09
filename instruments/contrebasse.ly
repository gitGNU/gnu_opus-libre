%------------------------------------------------------------------%
% Opéra Libre -- contrebasse.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

Contrebasse = {
  \set Staff.instrumentName = \markup { \hcenter-in #27.5 "Contrebasse  "}
  \set Staff.shortInstrumentName = "Ctrb.  "
  \set Staff.midiInstrument = "contrabass"
  \clef "F_8"
}

PrologueContrebasse = { \Contrebasse
  \relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2.*3 R1 | mi,,,2 r8 mi' \t {mi mi mi}
    mi,2.~|mi2 r8 mi' \t {mi mi mi} | mi,2.~| mi4 \pizz mi | 
    r8 mi \t {mi mi mi}| \arco mi2. ~ | mi4 \pizz mi |
    r8 mi \t {mi mi mi}| \arco mi2. ~ | mi4 mi'~| mi8 mi \t {re re re} |
    dod4 r2 | \t {\pizz dod4 re mi} sol4 r | 
    \arco dod,2 r8 sol r dod r sol | dod4 dod sol8 dod~|
    dod4 r | sol dod sib8 dod~| dod sol dod4 | dod sol8 dod r sib | 
    r dod4 sol8 | sib2
  }
}

ActeUnSceneUnBisContrebasse = { \Contrebasse
  \relative {
    dod,,2.
    <dod sold'>~<dod sold'>2 r4 |
    sib16 lab si sol sib lab si sol sib lab si sol |
    dod re mi sol dod,8 r dod16 re mi sol |
    dod,re mi sib sol la sib mi dod re mi sol, |
    lab8 lab16 lab fa8 fa'16 fa mib8 mib16 mib |
    
    %%% Piu vivo %%%
    re4 r r8 do sol la | fad2 \t {sol8 la do} |
    re4 r r8 mib lab, fa| sib4. lab |
    sol2.~sol~ sol4 r reb' | sol2. |
    R2. r4 reb'2~ reb4. r8\fermata r4 |
    R2. r4 reb2~reb~reb8 r\fermata r4 | r2 r4 fad,, sol la |
    
    %%% Largo %%%
    do2 do~ do~ do2.~
    do2~ do2.~ do2~ do2.~
    do4 do2 do4 r r2 |
    R1 R2. R2 R1 R2.*2 R2*2 R2. R2*3 R2. R1 R2.
    R2*3 R2.*3
    
    %%% Adagio %%%
    R1*9
    r2 r4 r8 <sol' si\harmonic si''>~ |
    <sol si\harmonic si''>1~<sol si\harmonic si''>2. r4 |
    R1 sib8 lab si sol~sol2~ |
    sol4 sib sol2~
    sol4 sol, fa sold |
    mi1~mi~mi~mi2 r | R1*13
    R2 \pizz re''4 sold, fa r
    r \arco dod
  }
}

ActeUnSceneDeuxContrebasse = { \Contrebasse
  \relative {
    %%% Air de la Soprano2 %%%
    
    \repeat unfold 9 {R2.*2 R1*2}
    R2. | r4 dod,, r | 
    sol1~  sol~ | sol2.~  sol4 r2 | sol1~ sol2.  r4 |R2.*2 |
    sold1~ sold~| sold2.~ sold~   |sold1~ sold2. r4 |
    \repeat unfold 7 {R2.*2 R1*2} R2.*2 R1 R1-\fermataMarkup |
    
    %%% Récitatif %%%
    
    R2.*2 R1 R2.*3 R1 R2.*6 R2 R2. R1*2 R2.*5 R1 |
    
    %%% Duo %%%
    
    \pizz re'4
    \repeat unfold 16 re
    \repeat unfold 7  reb
    \repeat unfold 4  si
    \repeat unfold 4  sib r |
    \arco sol lab8 sib |
    reb4 dob sib | dob sib lab sib | 
    dob sib lab fa | dob' r8 sib r4 |
    mi,2.~| mi r4| mi'1 | reb2.~|reb~|reb4 r2 | R1 |
    
    %%% Piu vivo %%%
    sol,2.~ | sol1~ sol2 r4 | R2.
    sol2 sol4 sol dod4. dod8 dod dod |
    sol2 r8 sol sol sol | dod4. dod8 \t {dod dod dod} |
    sol4 sol2 r4 |
    dod4 r8 sib lab si |
    sol4 sol sol sol r2 | sol4 sol sol si r2 |
    sib4 sib sib | re r2 | re4 re re re r2 | re4 re re re r2 re4 re re |
    dod r2 dod4 dod dod fa,1~ fa2 r4 si~ | si8 do4. dod2 |
    
    %%% Tempo giusto %%%
    \pizz re4 re re re re re re re |
    dod dod dod dod si si si si | si r r2 |
    \arco <sol sol'>2 r4 |
    \repeat unfold 16 sol8 |
    sol r r2 | r4 \t { re'8 si do} |
    \repeat unfold 14 sold |
    sold r r sold fad la |
    fa2~fa4. fa8 |
    fa2~ fa |
    r8 la sol sib |
    fad2~ fad2. \pizz la'8\CaV r r2
    R1 R2.*3 R2 R2. R1*4
  }
}

ActeUnSceneTroisContrebasse = { \Contrebasse
  \relative {
    R2.*4 do,,2.\upbow ~ do~ do do4 r2 | R2.*3
    si2. sib2.:32 si2. sib2.:32 si2. dod2.:32~dod:~dod4 r
    \pizz sold si r2
    \arco sib2.~sib~sib~sib2 r4 |
    
    %%% Lamento %%%
    r2 r4 \pizz re si dod \arco sib2 re4 r r2 | reb fa4 r r2 |
    sib,re4 r r2 reb fa4 r r2 | sib,re4 r r2 | reb fa4 r2 |
    sib,reb4 r2 | re fa4 r2 sib,reb4 r2 sib si4 r2 |
    mi,2 sol4 r | sold2 si4 r |
    mi,2 sol4 r | si2 fa'4 r |
    reb2 reb4 reb4. reb8 reb reb reb4 reb8 reb r4 | R2*2
    
    %%% Tempo I %%%
    R2.*3
    << {mi2.~mi~mi~mi~mi~mi~mi4}\\
    {s2.*2 mi,4-+ s2 mi4-+ s2 mi4-+ r mi-+
    mi-+ r mi-+ mi-+}>> r8 mi' \t {mi mi mi} sold4 r2 |
    R2.*3
    
    %%% Tempo II %%%
    R1. do,~ do~ do~do~do2 r1 | r2 r4 do r | R1 R2. R2
  }
}

ActeUnSceneTroisBisContrebasse = { \Contrebasse
  \relative {
    R1*3 r4 sol2\CaV r4 R1*2 r4 sol2\CaV r4 |
    R1 r2 re,4 la8 si fad4 r r2 | R1*8
    fad1~fad~fad2. r4 | R1*2
    \pizz <re' la'\harmonic>4 r <re sol\harmonic> r
    \arco <re fad\harmonic>1~<re fad\harmonic>2. r4 \clef "G_8" |
    \simile fad''4\CaV r fad\CaV r
    fad\CaV r fad\CaV r
    fad\CaV r fad\CaV r
    fad\CaV r fad\CaV r
    fad\CaV r fad\CaV r
    fad\CaV r fad\CaV r
    fad\CaV r fad\CaV r
    fad\CaV r fad\CaV r |
    \ordin fad\glissando red8 r red4\glissando do8 r |
    sib\glissando sol16 r sol8\glissando mi16 r mi8\glissando dod16 r \clef "F_8" |
    re,1~re~re
    <fa dod'>4\upbow  \ind #"pizz. du pouce" re\thumbpizz r2
    <fa dod'>4\upbow \simile re\thumbpizz r2
    <fa dod'>4\upbow re\thumbpizz <fa dod'>\upbow re\thumbpizz
    <fa dod'>\upbow re\thumbpizz <fa dod'>\upbow re\thumbpizz
    <fa dod'>\upbow re\thumbpizz <fa dod'>\upbow re\thumbpizz
    <fa dod'>\upbow re\thumbpizz <fa dod'>\downbow <la, fa'> |
    fad1~fad~fad~fad~fad~fad~fad2. r4 |
    R1*7
    <re' fad\harmonic>1~<re fad\harmonic>~<re fad\harmonic>4
    r4 \ordin fad2~fad1~fad4 r r2 |
    sol1 fad~fad~fad~fad~fad~fad\fermata
  }
}

ActeUnSceneTroisTerContrebasse = { \Contrebasse
  \relative {
    R2*3 R2. R2*2 R2.*7
    \pizz mib,,4 r r2
    mi4 r fa r |
    re'8 sol, do fad, lad si sol sold |
    la fad sib sol lab reb sol, si |
    do lab la sib sol si lab la |
    re lab do reb la sib mib la, |
    dod re sib si do dod |
    
    %%% Poco meno %%%
    re4 r2 R2.*2
    \arco re'2.~\CaV re~\CaV re~\CaV re~\CaV re4\CaV r2 |
    re2.~\CaV re~\CaV re4\CaV r2 |
    <re, sol\harmonic re''>2.~\CaV
    <re sol\harmonic re''>~\CaV
    <re sol\harmonic re''>~\CaV
    <re sol\harmonic re''>~\CaV
    <re sol\harmonic re''>2\CaV r4
    <re sol\harmonic re''>2.:32~\CaV
    <re sol\harmonic re''>8\CaV r r2
    \pizz fa4 r2 R2.*2
    fa,4 r2 R2.*2
    dod'4 r2 R2.*2
    dod4 r2 R2.
    r8 \arco mi fa sold fa mi |
    la,2.~\CaV la~\CaV la2\CaV r4 |
    <la la'>2.~ <la la'>~<la la'>4 r8 \pizz la' r4 |
    sold r8 si r16 fad8. | fa4 do r |
    mib r sib | la r8 la' sol, sol' sib, sib' |
    \arco fad,2.~fad~fad2 r4 |
    fad2.~fad~ fad2 r4 |
    fa2.~fa~fa4 dod'2 |
    fa2.~fa~fa4 la2 |
    dod,2.~dod~dod4 la'2 |
    dod,2.~dod~dod4 fa2 |
    la,2.~la~la~la2 r4 |
    la'2.\CaV la,4-+ r2 | R2.*13
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
    \pizz la,4 r2 | la,4 r2 | do4 r2 | do4 r2 |
    R2. la'2~la4\glissando do2. | mi4 r
    sold,,~\upbow | sold dod si | re r2 |
    re4 r r16 la' la la | re,4 r2 | re4 r r16 la la la |
    re4 r8 re' fad, si |
    mib,4 r8 reb4 sol8 | do,4 r8 fa la, re |
    fad,4 r8 la4 mib'8 | lab4 r8 la reb, solb |
    sib,4 r8 sib4 sib8 | mi4 r8 mi, \t {mi mi mi} |
    mi4 mi mi | mi4 r2 |
    mi'4 r8 mi, \t {mi mi mi} | mi4 r2 |
    mi'4 mi sib8 mi~ | mi2 re4~ | re fa2 |
    dod2~dod8 r r4 | R2. R1 R2. R2 R2. R2 R2. R2 R2.

    %%% Placando assai %%%
    dod2. dod4 sol2. r4 | dod2. dod4 sol2. r4 |
    dod2 re mib mi2.~mi2. r4 |

    %%% Andante a piacere %%%
    \pizz fa,4 r r2 r reb'4 r |
    fa, r r2 r reb'4 r |
    \arco fa,1~ fa2 reb fa1~ fa2 reb |
    sol2. r4 r8 dod4 sol dod8 |
    sol2. r4 r8 dod4 sol sol8 |
    dod8 r r4 r2 |
    sol1~sol~sol~sol~sol~sol2. r4 |
    R2*3 R2.*6

    %%% A tempo %%%
    do4 r8 fad,4 do' fad,8 |
    do'4 r8 fad,4 do' fad,8 |
    do'4 do r8 fad, r4 |
    R1
    \pizz la16 fad' sold8 dod,16 sib do8 fa16 re mi,8 |
    la4 r4 r2 | r4 la4 sol'8 re dod4 si8 fad fa4 mib'8 sib |
    la4 r2 | r16 re,8. r4 r2 |
    R2. \arco sol2~sol8 sol \t {sol sol sol} | sol2 r8 dod4. |
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
    <sol do\harmonic sol''>~
    <sol do\harmonic sol''>~
    <sol do\harmonic sol''>~
    <sol do\harmonic sol''>2. r2 |
    R1*5/4 <sol sib\harmonic re''>1*5/4~
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
  }
}
