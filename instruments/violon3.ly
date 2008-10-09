%------------------------------------------------------------------%
% Opéra Libre -- violon3.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

ViolonTrois = {
  \set Staff.instrumentName = \markup { \hcenter-in #23.5 "Violon 3  "}
  \set Staff.shortInstrumentName = "Vl. 3  "
  \set Staff.midiInstrument = "violin"
}

PrologueViolonTrois = { \ViolonTrois
  \relative {
    %%% Introduction %%%
    
    \partial 4 r4 R2.  la'''2.~ la2.~ 
    \repeat tremolo 8 la16~ \repeat tremolo 8 la32~ la8 r 
    mi,,2~| mi4 r | mi2.~| mi4 r | mi2 mi2.~| mi4 r R2 |
    <sol,? re'>2.~| <sol re>4 r | R2 sib2.~|
    si!4 mi'8 mi \t {mi mi mi} \tt {mi16 mi mi mi mi} |
    re2 r4 
    \repeat unfold 16 re16 | fad4. r8 sid, r | 
    r sid r4 | r8 sid r4 sid8 r |
    r4 sid | dod8 r r dod r4| r8 dod r4 | red
  }
}

ActeUnSceneUnBisViolonTrois = { \ViolonTrois
  \relative {
    R2.*5
    r4 \ttt {lab16 sol sib si lad dod } re8 r |
    sol16 lab sol sib si dod si mi fad sol la do |
    
    %%% Piu vivo %%%
    re4 re, re,2 | R2.
    re''4 r8 re,,~re2 | R2.
    <do' la'>4 <do la'>8 <do la'>4 <do la'>8 |
    <si sold'>4 <si sold'>8 <lab sol'>4 <lab sol'>8 |
    si4 si8 <mi dod'>4 <mi dod'>8 | <mi dod'>2.
    R2. r4 sib,2~sib4. r8\fermata r4 |
    R2. r4 sib2~sib~sib8 r\fermata r4 | R1 R2
    
    %%% Largo %%%
    R2*3 R2. R2 R2.
    lab2~lab4 r2 |
    <sol mib'>2 sol4 lab4 r r2 |
    R1 R2. R2
    r2 r8 si4. |
    la2.~ la2 r4 |
    <sol mi'>2 sib~ sib4 r2 |
    R2*3 R2. R1 R2.
    r4 <sib re> <sib mib>2~<sib mib>
    <la red>2. r2 <la red>4 |
    <sold mi'>2.
    
    %%% Adagio %%%
    R1*33 R2*4
  }
}

ActeUnSceneDeuxViolonTrois = { \ViolonTrois
  \relative {
    %%% Air de la Soprano2 %%%
    
    R2.*2 R1*2  R2. |
    sold'8 la sold mi re mi | sold la sold mi re mi sold4 |
    sold8 la sold mi re mi sold la sold mi re mi sold4 |
    R2.| la,4-. re-. mi8( re la4-.) | re8( la mi' re)-. r re mi4-. |
    re-. la8( mi' re4)-. | la'8( sold mi re)-. r la' |
    R1*2 |  R2.*2 |
    sold8( la sold mi re mi sold la | 
    sold mi re mi sold4)-. sold8( la |
    sold mi re mi sold la | sold mi re mi sold4)-. |
    R1 | re4-. la'-. sold8( mi re4-.) |
    mi8( re la' sold)-. r la | sold mi re mi sold4-. |
    r4 <re sol\harmonic> r2 | 
    r8 <re sol\harmonic> r2 <re sol\harmonic>4 |
    r8 <re sol\harmonic> r4 <re sol\harmonic> | 
    r4 r8 <re sol\harmonic> r4 |
    r <sol' do\harmonic> r2 r8 <sol do\harmonic> r2 <sol do\harmonic>4 |
    r8 <sol do\harmonic> r4 <sol do\harmonic> |
    r4 r8 <sol do\harmonic> r4 | 
    r4 <sol,, do\harmonic> r2 | la4 re8 si r la si4 |
    re4 sol8 fa do'4 | fa,8 sol si do r4 |
    sol, do re8 fa re do | 
    sol do re fa re do sol do | re2.~| re4 r2 | 
    lab'8 sib re mib fa, lab sib re | 
    re, fa re do sol2~| sol2.~| sol2 r4 |
    R1*2 R2.*2 R1*2 R2.*2 |
    <re' la'!>1~\CaV <re la'>~\CaV | 
    <re la'>2.~\CaV <re la'>~\CaV| 
    <re la'>1~\CaV <re la'>~\CaV | 
    <re la'>2.~\CaV <re la'>2\CaV  r4|
    sold8 la sold mi re mi  sold la |
    sold mi re mi sold4 sold8 la | 
    sold mi re mi sold la | 
    sold mi re mi sold4 |
    sold8 la sold mi re mi  sold la | 
    sold mi re mi sold4 sold8 la |
    sold mi re mi sold la | 
    sold mi re mi sold4 |
    R1*2 R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1 R1-\fermataMarkup  |
    
    %%% Récitatif %%%
    
    R2.*2 R1 R2.*3 R1 R2.*2 |
    r4 r8 fad4 mib8~| mib2.~| 
    mib8 mib~ \t {mib mib mib} \repeat tremolo 8 mib32 |
    mib8 r8 r2 | R2 | R2.| R1*2| R2.*5| R1|
    
    %%% Duo %%%
    
    r8 \pizz <sib re>
    \repeat unfold 15 {r8 <sib re>} <sib re>4 |
    \repeat unfold 7 {r8 <do mi>} |
    \repeat unfold 3 {r8 <red fad>} <red fad>4 |
    \repeat unfold 4 {r8 <dod fad>} r4 | R2
    \arco re8
    \repeat unfold 27 re
    \repeat unfold 14 sold
    \repeat unfold 8  red'
    do do re'! sol, do, re' | 
    sol, do, re' sol, do, do |
    R2. R1 |
    
    %%% Piu vivo %%%
    <sol, sol'>2.~ <sol sol'>1
    \repeat tremolo 4 sol16
    \repeat tremolo 4 lab16
    \repeat tremolo 4 sib16
    \repeat tremolo 4 reb16
    \repeat tremolo 4 mi16
    \repeat tremolo 4 fad16
    <sol,sol'>4 <sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> |
    dod2 r4 |
    <sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'>4 |
    dod2 r4 |
    sol4 sol \t {mi' re fa} |
    dod2 \tt {sib16 la lab sib si} |
    sol4 r2 |
    \pizz sol4 sol sol sol r2 |
    si4 si si | sib r2 |
    \arco re4 r8 re r16 re re8 |
    re4 \pizz sib8 mib mi la |
    \arco <re, re'>4 \pizz sib8 mib fad si |
    \arco <re, re'>4 \pizz sib8 mib sold dod |
    \arco <re, re'>4 \pizz sib8 fad' mi sold |
    \arco <re  re'>4 \pizz do8 fa fad si |
    \arco <mi, mi' mi>4 \pizz red8 sold si mi |
    \arco <sol,, sol' sol'>4 \tt {mi'16 fa sol sib do} \tt {dod re mi sol la} |
    
    %%% Poco allargando %%%
    <re, sib'>2. re4~ | re4. <sol, mi'>8 ~ <sol mi'>2 si la4 r |
    %%% Tempo giusto %%%
    re,16 re dod dod sib sib dod dod re re dod dod sib sib dod dod |
    re re sib sib re re sib sib re re sib sib re re sib sib |
    fa' fa mi mi do do mi mi fa fa mi mi do do mi mi |
    fad fad re re sib sib re re fad fad re re fad fad re re |
    sol sol mi mi si si mi mi sol sol si si la la do do |
    dod2 r4 |
    <sol, fa' sib\harmonic fa''>1~ <sol fa' sib\harmonic fa''>~ <sol fa' sib\harmonic fa''>4 r2
    R2
    <fa' sib\harmonic fa''>2~ <fa sib\harmonic fa''>~ <fa sib\harmonic fa''>2.~
    <fa sib\harmonic fa''>8 r dod16 mi fad la si re mi sol |
    <re, re' mi>4 <re re' mi> <sol la mi'> <sol la mi'> |
    <re re' mi> <re re' mi> <sol la mi'> <sol la mi'> |
    <la la'>8 mi16 sol si re mi sol |
    <re, sol' la>4 <re sol' la> <sol la mi'> <sol la mi'> <sol' la>
    \pizz <fa sol>8 r r2 |
    
    %%% Largo assai %%%
    R1 R2.*3 R2
    \arco sib,,2.~ sib2. r4 | 
    r2 \pizz fa'4 mi | mib r la, r | re r r2 |
  }
}

ActeUnSceneTroisViolonTrois = { \ViolonTrois
  \relative {
    R2.*5 <sib la'>2.:32~ <sib la'>: <sib la'>4 r2 |
    r4 \pizz si r | r sol r r8 sib r dob sib4 |
    \arco la2. R2.*2 sold2. <la sold'>2. |
    <si lad'>2.:32~ <si lad'>:~ <si lad'>4 r \pizz sol sib r2 |
    R2.*4
    
    %%% Lamento %%%
    R1.*6 R1*5/4*5 R1*4
    \arco <sib sol' mib'>4 <sol' mib'>8 <sol mib'> \t {<sol mib'><sol mib'><sol mib'>}
    <sib, sol' mib'>4 <sol' mib'>8 <sol mib'> \t {<sol mib'> <sol mib'> <sol mib'>}|
    <sib la'>16 <sib la'> <sib la'> <sib la'> \t {<sib la'><sib la'><sib la'>} <sib la'>8 r4 |
    R2*2
    
    %%% Tempo I %%%
    \pizz la,4 si r do la r |
    R2.*6 \arco fa'2.:32
    \repeat tremolo 12 {re32 fa} lab4 r2 |
    R2. \pizz sib,4 r sold r2 la4 |
    
    %%% Tempo II %%%
    R1.*3 r2 sol1~ sol2. r4 r2 |
    r2 r4 la'2.:32 <la sold'>2.: <la sold'>4 r | R1 R2. R2
  }
}

ActeUnSceneTroisBisViolonTrois = { \ViolonTrois
  \relative {
    R1*8 r2 red4 mid fad4 r r2 |
    R1*20
    sol,1 sol2 sol sol sol sol sol |
    la'4 si8 r fad4 la8 r | do,8 mib16 r sib8 do16 r sol8 sib16 r |
    R1*16
    r2 r4 r8 \pizz si |
    r si r4 r r8 si |
    R1*3
    r2 \arco <sold mi'> <sol mib'> re' | fad4 r r2 |
    R1*4
    dod1 la~la~la~la~la~la\fermata
  }
}

ActeUnSceneTroisTerViolonTrois = { \ViolonTrois
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4 r2
    R2. \arco si2.~ si4 r2 |
    \pizz <sib sib'>4 r2 R2.
    <mib sol>4 r r2 <mi sold>4 r <fa la> r |
    <re re'> r r2 R1*3 R2. |
    
    %%% Poco meno %%%
    \arco
    <re sol\harmonic re''>2.:32 ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>: ~ 
    <re sol\harmonic re''>4
    \ordin re''2:32~ re2.: ~ re:~ re: ~ re4: ~ si: sib:
    re,2.:32~\CaV re8\CaV r r2 | R2.*13
    
    r4 <sol,, fad'>2 <sol fad'> <sol fad'>4~<sol fad'>2 r4 |
    r  <sol fad'>2 <sol fad'> <si! sib'>4~<si sib'>2 r4 |
    R2.*3 R1 R2.
    r4 si?2~ si4 sib2 | R2.
    r4 \t {sib8 mi sib} \t {mi sib mi} \t {sib mi sib} \t {mi sib mi} sib4 |
    r  <sib sol'>2~<sib sol'> <re fad>4~<re fad> r2 |
    r4 <sib sol'>2~<sib sol'> <re fad>4~<re fad> r2 |
    r4 <sib sol'>2~<sib sol'> <fad'fad>4~ <fad fad>2 r4 |
    r  \t {sol8 re re} \t {sib sib sol} \t {sib' sol sol}
    \t {re re sib} \t {si' fad fad} \t {red red si}
    \t {red' si fad} \t {sol' re sib} |
    r mib re si sib sol fad' mib re si sib sol |
    fad' mib re si sib sol fad mib4 sib sol8~ sol2 r4 |
    R2.*4
    
    la'4 sol fa mi fa8 mi fa sol la4 mi2~ mi2.~ mi2 r4 |
    R2.*5
  }
}

InterludeTroisViolonTrois = { \ViolonTrois
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    <lad fad'>16 <lad fad'>8 <lad fad'> <lad fad'> <lad fad'>
    <lad fad'> <lad fad'> <la fa'> <si sol'>16 |
    <lad fad'><lad fad'>8<lad fad'><lad fad'>
    <la fa'> <sol red'> <lad fad'>16 |
    <fad'do'> <fad do'>8 <fad do'> <fad do'>
    <la fa'> <sol mib'> <lad fad'>16 |
    <fad do'> <fad do'>8 <fad do'> <fad do'> <fad do'>16 |
    <sold mi'> <sold mi'>8 <sold mi'> <sold mi'>
    <sold mi'> <fad re'> <la fa'>16 |
    <sold mi'> <sold mi'>8 <sold mi'> <sold mi'> <sold mi'>16 |
    <si sol'> <si sol'>8 <si sol'>16 <si sol'> <si sol'>8 <si sol'>16 |
    <si sol'> <si sol'>8 <si sol'>16 <si sol'> <si sol'>8 <si sol'>16 |
    R2*2
    \tt {sol,16 si sib re dod} fa32 mi lab sol si sib re dod |
    la'8 r r4 |
  }
}

ActeUnSceneQuatreViolonTrois = { \ViolonTrois
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    R2. re4 si si8 dod r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2
    
    %%% Agitato %%%
    do2.:32 re: <re la'>: <re la'>8 r la' mi' si' mi, | la, r r2 |
    R2.*2 re,2.:32 re8 r sib16 do mib fa fad sold si dod |
    re8 sol do re, sol16 la, la la | re4 r2 |
    re8 sold dod red, sold16 la, la la | re4 r2 |
    re,4 r16 la la la re8 r |
    <re mib>4 r8 <re mib> \t {<re mib><re mib><re mib>} |
    <re mi>4 <re mi> <re mi> |
    <re fad> r8 <re fad> \t {<re fad><re fad><re fad>} |
    <re la'>4 <re la'><re la'> | <re la'> r8 <re la'> r <la' mi'> |
    dod re dod la sol la | dod re dod la sol la |
    dod re dod la sol sib | re mib re sib lab sib |
    re mib re si! la! si | red mi la red, mi la |
    sold16 la sold mi re mi sold la sold mi re mi |
    sold la sold mi re mi sold la sold mi re mi |
    la8 r r4 r2 | <la,, re>4 <la re> <la re> <la re>2. r4 |
    <la re>4 <la re> <la re> <la re>2 <la re>4 <la re> <la re> |
    <sib mib>2 <sib mib>4 <sib mib> <sib mib> |
    <si mi>2 <si mi> <si mi>4 |
    \t {r4 si si} si2~ si2. r4 |
    \t {r4 si si} si2~ si2. r4 |
    \t {si si si} \t {sib sib sib} \t {la la la} |
    \t {sold sold sold} sold~ sold2. r4 |
    
    %%% Andante a piacere %%%
    \t {r4 dod dod} \t {dod dod dod} \t {re re re} \t {mib mib mib} |
    \t {r4 dod dod} \t {dod dod dod} \t {re re re} \t {mib mib mib} |
    \t {r4 fa fa} \t {fa fa fa} \t {fad fad fad} \t {sol sol sol} |
    \t {r4 fa fa} \t {fa fa fa} \t {fad fad fad} \t {sol sol sol} |
    \t {r <red la'><red la'>} \t {<red la'><red la'><red la'>} |
    \t {<mi sold><mi sold><mi sold>} <mi la>8<mi la> |
    \t {r4 <lab re> <lab re>} \t {<lab re><lab re><lab re>} |
    \t {<sib mi><sib mi><sib mi>} <sol mib'>8<sol mib'> |
    R1*7 R2*3 R2.*2
    \pizz si,4 r lab do r2 sib4 r2 re4 r2 |
    
    %%% A tempo %%%
    \arco
    <si re>2 <si re>4 <si re> |
    <re mi> <re mi>2 <re mi>4 |
    <re sol> <re sol> <re sol> r |
    R1 R2. R1 R2.
    la1:32 <si red>2. <dod re>2 sib4 do | dod2 r4 |
    <dod' la'>2 <dod la'>4 <dod la'> <dod la'>4. <dod la'>8~<dod la'>4 r8 la16 dod |
    fa2 \t {fa,8 la dod} fa2 \t {sol,8 si red} |
    sol8. sol16 sol8 sol4 sol8 | sol8. sol16 sol8 sol4 sol8~sol4 |
    <si, sold'>~\t{<si sold'>8<si sold'>4~}\t{<si sold'><si sold'>8~}<si sold'>r|
    si,16 dod dod si si dod dod si si dod dod si |
    si dod dod si si dod | sol2.~sol8 r4 |
    si16 dod dod si si dod dod si | si dod dod si si dod |
    sol2~sol4. r8 |
    re'16 mi mi re re mi mi re | re mi mi re re mi |
    re2~re4 r |
    mi16 re re mi mi re re mi | mi re re mi mi re |
    re mi mi re re mi mi re re mi mi re re mi mi re |
    R2 R4. r2 sib'16 dod fad la |

    re4 r r dod16 do sib do, | 
    re,4\CaV re16 re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    do do do do do do do do do do do do do do do do |
    do do do do do do do do mib mib mib mib mib mib mib mib |
    mib mib mib mib fa? fa fa fa fa fa fa fa fa fa fa fa |
    re8 re re4 re' re,8 re | R1*3 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    R2.*11
    r4 sib2~ sib r4 |
    r4 sib2~ sib r4 |
    r4 sib2~ sib r4 | R2.
    r4 sib2~ sib r4 | R2.
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5
    R1 R1. R1 R1.
    R1 R1.*5 R1 R1. R1
  }
}

EntracteViolonTrois = { \ViolonTrois
  \relative {
    R2*9
  }
}

ActeDeuxSceneUnViolonTrois = { \ViolonTrois
\relative {
    la''2.~\CaV la2.~\CaV la2.~\CaV la4\CaV r2 
    R2 R2.*2 R2 si2.~ si2.~ si2.~ si4 r |
    R2. R2 | r4 r8 fad~ fad4~| fad2.~| fad2 | 
    sib2.~| sib2.~| sib2.~| sib4 r | 
    <re,, sol\harmonic re''~>2. \simile re''2~ re2.~ re2.~ re4 r |
    \ttt { re8[ re16 re re re] } \ttt { re16[ re re re re re] } 
    \ttt { re16[ re re re re re] } | 
    \repeat unfold 3 { \ttt { si16[ si si si si si] } } | 
    \repeat unfold 5 { \ttt { si16[ si si si si si] } }
   
    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {re16[ re re re re re] } \t {re re re} r8 r4 |
    r4 r8 \t {mi,16 mi mi} \ttt {mi mi mi mi mi mi} | R1 R2. R2 R2. R1
    
    %%% Andantino %%%
    R1*2 R2.*4 R2
    R2.*5 R1 R2. R2
    r4 re, r re r re r | re r re |
    r re r re | r re r | re r re r |
    r <do re> r | r <do re> r <do re> | r sib r | sib r sib r |
    r sold r | r la r la | r la r |
    r la r la r la r | la r la r | la r la |
    r la r la | r la r | la2. r4 |
    si2.~ si2. r4 |
    
    %%% Entrée de la Contralto %%%
    r2 <la re>4 | r <la re> r <la re> | r <la re> r | <la re> r <la re> r |
    r <la re> r | <la re> r <la re> r | r <la re> r | <la re> r <la re> r |
    r8 \pizz la r la r la | r do r do r fad r fad | r re r do r la |
    r la r la r la r la r2 r8 la |
    r la r la r re r re | r la r la r la | r la r la r4 \arco si |
    r2 \pizz do4 | r4 r8 do r2 | r2 do4 | r4 r8 do r4 r8 do |
    r4 do do sol do fa sib re r |
    r4 r8 do, r4 | r4 r8 si r4 |
    r4 r8 do  r4 | r4 r8 si r4 |
    r8 \arco si4 do8 re4 fa2.~ fa2 r4 | R1 R2.
    R1 R2. R1 r4 mib r r do r do | r mib r r do r do | R2. R1
    re2.~\CaV re1~\CaV re4\CaV r2 R2 | R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisViolonTrois = { \ViolonTrois
  \relative {
    \pizz mi4 r r2 R2. R2
    
    %%% Presto agitato %%%
    R1*5/4*2
    \repeat tremolo 8 {\arco \ind #"sul tasto"mi16*5/4 sol}
    \repeat tremolo 8 {mi sol}
    \repeat tremolo 8 {mi sol}
    \repeat tremolo 8 {mi sol} mi2. r2 |
    \repeat tremolo 8 {sol16*5/4 mi}
    \repeat tremolo 8 {sol mi} sol2. r2 |
    \repeat tremolo 8 {mi16*5/4 sol}
    \repeat tremolo 8 {mi sol} mi2. r2 |
    \repeat tremolo 8 {sol16*5/4 mi}
    \repeat tremolo 8 {sol mi}
    sol4 r re sol8 la sol la |
    sol4 r re sol8 la sol la |
    sol4 r re sol8 la sol la |
    sol4 r2 re4 la8 sib |
    re mi re4 r2 re4 |
    la8 sib re4 r \ordin re8 re re re |
    mib4 re8 re re re mib4 re8 re |
    mib4 re8 re mib4 re8 re re re |
    mib re re re re mib re re re re | re4 r1 |
    R1*5/4*11
    mi8 dod mi fa mi dod mi dod mi dod |
    mi dod mi fa mi dod mi dod mi dod |
    fa4 mi8 mi mi mi fa4 mi8 mi |
    fa4 mi8 mi fa4 mi8 mi mi mi |
    fa mi mi mi mi fa mi mi mi mi | mi4 r1 | R1*5/4
    dod4 r1 | R1*5/4-\fermataMarkup
  }
}
