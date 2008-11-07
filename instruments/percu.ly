%------------------------------------------------------------------%
% Opéra Libre -- percu.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

Percus = { 
  \set DrumStaff.instrumentName = \markup { \hcenter-in #27.5 "Percussions  "}
  \set DrumStaff.shortInstrumentName = "Perc.  "
  \override DrumStaff.VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
}

Marimba = {
  \set Staff.instrumentName = \markup { \hcenter-in #27.5 "Marimba  "}
  \set Staff.shortInstrumentName = "Mar.  "
  \set Staff.midiInstrument = "marimba"
}

GrandMarimba = {
  \set PianoStaff.instrumentName = \markup { \hcenter-in #27.5 "Marimba  "}
  \set PianoStaff.shortInstrumentName = "Mar.  "
  \set PianoStaff.midiInstrument = "marimba"
}

Vibraphone = {
  \set Staff.instrumentName = \markup { \hcenter-in #27.5 "Vibraphone  "}
  \set Staff.shortInstrumentName = "Vib.  "
  \set Staff.midiInstrument = "vibraphone"
  \clef treble
}

GrandVibraphone = {
  \set PianoStaff.instrumentName = \markup { \hcenter-in #27.5 "Vibraphone  "}
  \set PianoStaff.shortInstrumentName = "Vib.  "
  \set PianoStaff.midiInstrument = "vibraphone"
  \clef treble
}

Timbales = {
  \set Staff.instrumentName = \markup { \hcenter-in #27.5 "Timbales  "}
  \set Staff.shortInstrumentName = "Timp..  "
  \set Staff.midiInstrument = "timpani"
  \clef bass
}

ProloguePercus = << 
  \new PianoStaff { \GrandMarimba
    \PercuDeuxMains
    \relative {
      \ind #"bag. dures" <mi'' fa>4 r r8 mi r4 | r8 mi r4 r16 mi8. | 
      mi8 mi \t { mi mi mi } \tt {mi16 mi mi mi mi} | mi4 r4 r2 |
      R2*2 R2. R2*2 R2. R2*2 R2. R2*2 R2. R2*2 R2. R2*2
      r4 \ind #"bag.dure" re re | re \stemDown re8 \gauche \stemUp sol,,,, |
      \droite \stemDown re''''4 re8 \gauche \stemUp dod,,, 
      \droite \stemDown re''' \gauche \stemUp dod,,, \droite \stemNeutral |
      re'''4 re re re re re re re sold, re
      R2*2-\markup "Prenez la bag. de timbale" R2.
      
      %%% Tempo Giusto %%%
      R2*8 R2.*10 R1 R2
      <re, dod'>2\laissezVibrer R2-\fermataMarkup
      
      %%% Più lento %%%
      R1*2 R2. R1 R2. R1
      
      %%% Adagio %%%
      R2*4 R2.*6
      <lab, sol'>2.\laissezVibrer R2.
      \ind #"senza Ped." <lab sol'>4 r2 <lab sol'>4 r2
      <dob sib'>4 r <do si'> |
      R4.
      
      %%% Andantino %%%
      R4.*25 R4.*12 \GrandMarimba
      r4-\markup "Allez au Marimba"
      r32 solb'' lab sib |
      
      %%% A tempo %%%
      re8 r4 | r4 r32 solb, lab sib |
      re8 r4 | R4.*2 \stemDown <lab' re>8 \gauche \stemUp re,,
      \droite \stemDown <fa' sib> <re' sol> \gauche \stemUp
      lab,, \droite \stemDown <fa'' sib> <re' sol> \gauche \stemUp
      re,,, \droite \stemDown <fa'' sib> \stemNeutral |
      <re' lab'>16 lab <dod re> re, <dod' re> lab, |
      <dod' re> lab <dod re> re, <dod' re> lab, |
      <dod' re> lab <dod re> re, <dod' re> lab, |
      <dod' re> lab <dod re> re, <dod' re> lab, |
      <mi'' fa> si <mi fa> fa, <mi' fa> si, |
      <mi' fa> si <mi fa> fa, <mi' fa> si, |
      <mi' fa> si <mi fa> fa, <mi' fa> si, |
      <mi' fa> si <mi fa> fa, <mi' fa> si, |
      <mi' fa> si <mi fa> fa, <mi' fa> si, |
      <mi' fa> si <mi fa> fa, <mi' fa> si, |
      <fa'' sol> re <fa sol> sold, <fa' sol> re, |
      <fa' sol> re <fa sol> sold, <fa' sol> re, |
      <sol' si> dod, <sol' si> si, <sol' si> sol, |
      <sol' si> dod, <sol' si> si, <sol' si> sol, |
      <sold' si> dod, <sold' si> si, <sold' si> sold, |
      <mi' sol> sold, <mi' sol> sol, <dod mi> mi, |
      <sold si> dod, <sold' si> si, <sold' si> sold, |
      sol' fad, sol' fad, r8 |
      R4.*8 R2*5/4 R2.*3
      
      %%% Adagio %%%
      <fa'? dod'>2*2\laissezVibrer
      R1*3 R1.
      r1 mi4 r | <re sib'>2*2\laissezVibrer 
      R1*2 R1.
      r1 red4 r | <mi do'>2 <do sold'>\laissezVibrer
      R1 R2.
      
      %%% Valse %%%
      r4 <la' dod>8 <lab, fa'> <do' lab'>4 |
      r4 <si red>8 <si, sol'> <sib' solb'>4 |
      r4 <fa la>8 <lab, reb> <mi' do'>4 |
      r4 <si re>8 <mib, sol> <sib' solb'>4 |
      r4 <reb solb> <do mi> | r <sib mib> la |
      <lab mib'> reb | mib <lab, dob> |
      sol mib' si sol' r | R2.*2
      mi4 sold, do, mi,
      r2 <dod' la'>4 mi |
      r <la fa'> dod | r mi lab, |
      r <fad re'> la | r reb8 fa, lab4 |
      r sib <re, fa> | r solb <do fa> r | R1 R2.
      
      %%% Vivo al fine %%%
      R2*23
      
      %%% Recitativo %%%
      R2*7 r4 mi''
    }
    \relative {
      \partial 4 r4 R2.*3 R1 R2*2 R2. R2*2 R2. R2*2 R2. R2*2 R2. R2*2
      
      %%% Entrée du Baryton 1 %%%
      R2. R2*2 R2. s2_\markup { \indic "(bag. de timbale)" } s2. R2 
      r8 sol, dod4 sib8 dod |
      r8 sol dod4 dod' r2 | re4 sold, sib,2:32 R2.
      
      %%% Tempo Giusto %%%
      R2*8 R2.*10 R1 R2^\markup "Allez au Vibraphone"
      \GrandVibraphone \clef treble
      dod'2\laissezVibrer R2-\fermataMarkup
      
      %%% Più lento %%%
      R1*2 R2. R1 R2. R1
      
      %%% Adagio %%%
      R2*4 R2.*6
      sol2.\laissezVibrer R2.*4
      R4.
      
      %%% Andantino %%%
      R4.*25 R4.*13 \clef bass
      
      %%% A tempo %%%
      R4. sold,32 sold sold sold sold4 |
      R4. sold32 sold sold sold sold sold sold16
      re'32 re re re | re re re16
      sold32 sold sold sold sold sold sold16 |
      s4.*3 R4.*26 R2*5/4
      R2.*3-\markup "Allez au Vibraphone" \GrandVibraphone
      \clef treble
      
      %%% Adagio %%%
      <la fad'>2*2\laissezVibrer |
      R1*3 R1.*2
      <la fa'>2*2\laissezVibrer |
      R1*2 R1.*2
      <la fa'>2 <sol? mi'>\laissezVibrer
      R1 R2.
      
      %%% Valse %%%
      la4 r2 | R2.*3
      r4 la8 <fa' lab> s4 |
      r4 sol,8 <re' fad> si re |
      sib re fa4 |
      mi8 sol mib do | sol2*3/2\laissezVibrer s2
      R2.*2 R1
      \clef bass do,2\laissezVibrer \clef treble
      do'8 fa s4 |
      r4 fad,8 re' fa4 |
      r4 do8 reb fa4 |
      r4 sib,8 reb fa4 |
      r4 la, do | r4 sold8 dod la4 |
      r4 reb8 la | R2 R1 R2.
      
      %%% Vivo al fine %%%
      R2*23 \clef bass
      
      %%% Recitativo %%%
      R2*7-\markup "Allez au Marimba" \GrandMarimba
      r4 mi,
    }
  }
  \new DrumStaff { \Percus 
    \new  DrumVoice \drummode {
      \partial 4 r4 R2.*3 R1
      \ind #"Tam-tam" cb2 \laissezVibrer | R2 |
      R2. R2*2 cb2.\laissezVibrer R2*2 
      r4 cb2\laissezVibrer R2*2 
      r4 cb2\laissezVibrer R2*2
      
      %%% Entrée du Baryton 1 %%%
      R2. R2*2 R2. R2 R2. R2 R2. R2 R2. R2*2 R2.
      
      %%% Tempo Giusto %%%
      R2*8 R2.*10
      \set  drumStyleTable = #drums-style
      r4 \ind #"Cymb. suspendue" hh4:32~ hh2:32~ hh4\laissezVibrer r
      R2*2
      
      %%% Più lento %%%
      R1*2 R2. R1 R2. R1
      
      %%% Adagio %%%
      R2*4 R2.*4
      r4 r8 \ind #"Cymb." hh \t {hh hh hh~} hh2\laissezVibrer s4
      R2.*5 R4.
      
      %%% Andantino %%%
      \ind #"Tambour" bd8 \ind #"Cymb. (sur la cloche)" hh r |
      bd hh r bd hh4:32~ hh4:32 hh8 |
      bd r4 | bd8 hh r bd hh r bd hh r bd bd4:32 hh8 r4 | R4.*2
      r16 bd32 bd bd8 r | bd r bd |
      hh4 r8 | R4. hh4 r8 | r hh r hh4 r8 | R4.
      hh4 hh8 hh4 r8 |
      r16 hh \t {hh hh hh} hh8 | hh4 r8 R4.*2 |
      \ind #"bag. douces, sur le bord"
      hh4.:32~ hh:~ hh:~ hh4 r8 |
      hh4.:32~ hh:~ hh4 hh8 r hh r hh4. | R4.*3
      
      %%% A tempo %%%
      R4.*27
      \ind #"Cymb." hh4 r8 |
      \ind #"Tambour" bd16 bd bd8 r |
      r8 hh4 | bd16 bd bd bd r8 |
      bd4 bd8 | bd32 bd8.. r8 |
      hh4.:32~ hh4.:32~ hh8 \t {bd16 bd bd} |
      bd8 r16 bd bd bd bd8 r4 |
      R2.*2
      
      %%% Adagio %%%
      R1*4 R1.*2 R1*3 R1.*2 R1*2 R2.
      
      %%% Valse %%%
      R2.*6 R2*2 R2. R2 R2.*2 R1*2 R2.*5 R2*2 R1 R2.
      
      %%% Vivo al fine %%%
      R2*23
      
      %%% Recitativo %%%
      R2*8
    }
  }
  \new Staff { \Timbales
    \relative{
      \partial 4 r4 R2.*3 | R1 | r8 mi,, \t {mi mi mi} |
      mi4 \tt {mi16 mi mi mi mi} | mi2.:32\< mi2:32\sfz \> mi4\! r |
      R2.
      r4 mi r mi r2 \t {mi8 mi mi} | mi4 mi r mi |
      r4 r8 mi \t {mi mi mi} | mi4 mi r mi8. \t {dod'32 dod dod}
      
      %%% Entrée du Baryton 1 %%%
      dod4 r2 | r8 dod r4 | r8 dod r16 r32 dod dod8 |
      dod4 r2 R2 R2. R2 R2. R2 R2. R2*2
      r2 r8 \t {re16 re re} |
      
      %%% Tempo Giusto %%%
      re8. re16 re4 r8 r16 r32 re re4 |
      r8 re re8. re16 re4 r |
      \t {r4 sold,8} r16 re'8 sold,16 |
      \tt {r8 re' re sold, re'} | r8 sold, r4 |
      re'2:32 |re4 r8 re re re | sold,2.:32 |
      re'4 r8 re re re | sib4 r2 | sib32 sib8.. r2 |
      sib4 r sib |
      sib4 r8 r16 sib sib4 |
      sib4 r8 sib \t {sib sib sib} |
      re4 r re r re re re4 r r2 | R2*3
      
      %%% Più lento %%%
      R1*2 R2. R1 R2. R1
      
      %%% Adagio %%%
      R2*4 R2.*11 R4.
      
      %%% Andantino %%%
      R4.*25 R4.*13 
      
      %%% A tempo %%%
      R4.*34 R2*5/4 R2.*3
      
      %%% Adagio %%%
      R1*2 r2 r8 mi, \t {mi mi mi} |
      mi4 mi r2 r4 mi r2 mi4 r | mi r r1 |
      R1 r2 r8 mi \t {mi mi mi} mi4 mi r mi |
      mi mi r2 mi4 r | mi r r1 |
      R1 r2 r4 mi mi r2 |
      
      %%% Valse %%%
      R2.*6 R2*2 R2. R2 R2.*2 R1*2 R2.*5 R2*2 R1
      r2 r8 r16 \t {re'32 re re} |
      
      %%% Vivo al fine %%%
      re8. re16 re4 | r8 r16 r32 re re4 |
      r8 re16 re re8 re | r4 re |
      r8 r16 r32 re re4 | re re |
      r re re r re8. re16 re4 |
      r8 r16 r32 re re4 | r8 re16 re re4 |
      r re r re r re r re r re re r re r re r |
      R2*4
      
      %%% Recitativo %%%
      R2*8
    }
  }
>>


ActeUnSceneUnBisPercus = <<
  \new Staff { \Vibraphone
    \relative {
      R2.*7 R1 R2. R1 R2.*10 R1*2 R2
      R2*3 R2. R2 R2. R2 R2.*2
      R1*2 R2. R2 R1 R2.*2 R2*2
      R2. R2*3 R2. R1 R2. R2*3
      R2.*3 %% TODO: add pedal indications
      r4 <mi si'> <mi si'> <mi si'> |
      \repeat unfold 124 <mi si'>
      <mi si'>\fermata \laissezVibrer r r2 | R2*4
    }
  }
  \new DrumStaff { \Percus
    \new DrumVoice \drummode {
      R2.*7 R1 R2. R1 R2.*10 R1*2 R2
      R2*3 R2. R2 R2. R2 R2.*2
      r2 r4 \ind #"Tambour" \ind #"(bag. fagot)"  sn |
      sn32 sn8.. r4 r8.. sn32 sn8.. sn32 |
      sn4 r2 R2 R1
      R2.*2 R2*2
      r2  r8 \t {sn16 sn sn} |
      sn4 r8 \t {sn16 sn sn} |
      sn32 sn8.. r4 |
      r8 sn r4 |
      r8 sn16. sn32 sn4 r |
      r2 r8 sn32 sn sn sn sn sn sn sn sn8 |
      R2. R2*3 R2.*3
      R1*33 R2*4
    }
  }
  \new Staff { \Timbales
    \relative {
      dod,2.:32 dod: dod: dod: dod: dod2:32~ dod8 r |
      r re4 re8 \t { re re sold,} |
      
      %%% Piu vivo %%%
      re'4 r r2 | sold,2:32 | re'4 r r2 | sold,2:32 |
      <sol re'>4 r8 \t {sol16 sol sol} sol4  |
      r sol32 sol8.. r4 | \t {sol16 sol sol~} sol8 r4 reb' |
      sol, r2 |
      sol8  reb'~reb4~ reb4:32 reb4\laissezVibrer r2 R2.-\fermataMarkup
      sol,8 reb'~reb4~ reb4:32 reb4\laissezVibrer r2 R1-\fermataMarkup 
      R1 R2
      
      %%% Largo %%%
      R2*3 R2. R2 R2. R2 R2.*2
      R1*2 R2. R2 R1
      R2.*2 R2*2 R2.
      R2*3 R2. R1 R2.
      R2*3 R2.*3
      R1*33 R2*4
    }
  }
>>

InterludeUnPercus = \new PianoStaff {
  \GrandMarimba
  \PercuDeuxMains
  \relative {
    r8 <red fad> r <red fad>
    r <red fad> r <red fad>
    r <red fad> r4 | R1*2
    r8 <mib sol> r <mib sol>
    r <mib sol> r <mib sol> |
    R1. r8 <mi! sol> r <mi sol> r2 |
    \gauche sold,8 \droite <mi' sold> r <mi sold>
    r <mi sold> r <mi sold>
    r <mi sold> r <mi sold> |
    \gauche mi,8 \droite <mi' sold> r <mi sold>
    r <mi sold> r <mi sold>
    r <mi sold> r <mi sold> |
    r <mi sold> r <mi sold>
    r4 <mi la> | R1
    s1.*2 r8 <sold, mi'> s2 r8 mi' |
    r <mi sold> r <mi sold> r4 | R2 R2. |
    r16 \gauche sol, \droite <fad' fad'> sol fad
    \gauche <sol, sol'> \droite <fad' fad'> \gauche sol, \droite
    r \gauche sol \droite <fad' fad'> sol fad
    \gauche <sol, sol'> \droite <fad' fad'> \gauche sol, \droite |
    r \gauche sol \droite <fad' fad'> sol fad
    \gauche <sol, sol'> \droite <fad' fad'> \gauche sol, \droite
    r \gauche sib \droite <la' la'> sib %% FIXME: ugly beam slope!
    \stemDown la \stemNeutral <sib, sib'> <la' la'> \gauche sib, \droite |
    r \gauche sol \droite <fad' fad'> sol fad
    \gauche <sol, sol'> \droite <fad' fad'> \gauche sol, \droite
    r \gauche sol \droite <fad' fad'> sol fad
    \gauche <sol, sol'> \droite <fad' fad'> \gauche sol, \droite
    r \gauche re \droite <dod' dod'> \gauche re \droite <dod dod'> \gauche
    <re, re'> \droite <dod' dod'> \gauche re, \droite |
    r \gauche sol \droite <fad' fad'> sol fad
    \gauche <sol, sol'> \droite <fad' fad'> \gauche sol, \droite
    r \gauche sol \droite <fad' fad'> sol fad
    \gauche <sol, sol'> \droite <fad' fad'> \gauche sol, \droite |
    r \gauche sol \droite <fad' fad'> sol fad
    \gauche <sol, sol'> \droite <fad' fad'> \gauche sol, \droite
    r <re' re'> <dod' dod'> <re, re'> dod' <re, re'> <dod' dod'> <re, re'> |
    fad' <sol,, sol'> <fad'' fad'> <sol,, sol'>
    fad'' <sol,, sol'> <fad'' fad'> <sol,, sol'>
    fad'' <sol,, sol'> <fad'' fad'> <sol,, sol'>
    fad'' <sol,, sol'> <fad'' fad'> <sol,, sol'>
    fad'' <sol,, sol'> <fad'' fad'> <sol,, sol'>
    fad'' <sol,, sol'> <fad'' fad'> <sol,, sol'> |
    <fad' fad'>32 \gauche <sol,, sol'> \droite <fad'' fad'> \gauche <sol,, sol'> \droite
    <fad' fad'> \gauche <sol, sol'> \droite <fad' fad'> \gauche <sol, sol'> \droite
    <fad'' fad'> \gauche <sol,, sol'> \droite <fad'' fad'> \gauche <sol,, sol'> \droite
    <fad' fad'> \gauche <sol, sol'> \droite <fad' fad'> \gauche <sol, sol'> \droite
    <dod'' dod'> \gauche <sol,, sol'> \droite <dod'' dod'> \gauche <sol,, sol'> \droite
    <dod' dod'> \gauche <sol sol'> \droite <dod dod'> \gauche <sol sol'> \droite
    <dod' dod'> \gauche <sol,, sol'> \droite <dod'' dod'> \gauche <sol,, sol'> \droite
    <dod' dod'> \gauche <sol sol'> \droite <dod dod'> \gauche <sol sol'> |
    fad,16 <la re> \droite sib' \gauche <la re> \droite
    <sib' sib'>32 <la re> <sib sib'> <la re> <sib sib'> <la re> <sib sib'> <la re>
    <sib sib'>8 r | <re, sib'>4\arpeggio \laissezVibrer s2 R2.*13
    r8 <red fad> r <red fad> r4 | r8 <re sold> r2 |
  }
  \relative { \clef bass
    R1. R1*3 R1. R1 s2 r1 s2 r1 r2 mi,4 fa' | R1 |
    la,,16 mi' \droite <la mi'>8 r <la mi'>
    \gauche mi8 \droite <la mi'>16 \gauche mi
    la, mi' \droite <la mi'>8 r <la mi'>
    \gauche mi \droite <la mi'> \gauche |
    la,16 mi' \droite <la mi'>8  \gauche mi \droite <la mi'>
    r8 <la mi'>16 \gauche mi la,8 \droite <la' mi'>
    \gauche r16 mi \droite <la mi'>8 r <la mi'> \gauche |
    la, mi' r16 mi \droite <sold mi'>8 \gauche
    r8 <mi sold> r4 | R2. R2 R2.
    s1*2 s1. s1 s2 r2 R1. s1 s4 r2 |
    <dod si'?>4\arpeggio \laissezVibrer s2 | R2.*15
  }
}

ActeUnSceneDeuxPercus = {\Marimba 
  \relative {\clef bass
  %%% Air de la Soprano2 %%%
  
  R2.*2 R1*2 R2.*2 re,4 la' sold8 mi re4 mi8 re la' sold r mi sold4 |
  mi4 re8 la' sold4 la8 sold mi re r la'|
  re,8 mi sold4 la re,8 la' | r re, mi sold la4 sold8 re | mi4 sold la8 mi | 
  r sold la re, mi4\laissezVibrer| R1 | r2 r4 fad | si2\laissezVibrer r4 | R2. |
  re,4 si' sold8 fad re4 | fad8 re si' sold r fad sold4 |
  fad re8 si' sold4 | si8 sold fad re r4 | R1*2 R2.*2 | \clef treble
  \pl re4\laissezVibrer re'' <la' re> sold8 mi re4 | mi8 re'16 re,, la''8 sold 
  \pl re,,4 {r8 mi''} <sold re'>4 |
  mi8 re'16 re,, re'8 la' \pl {r re,,,} sold''4 | la8 sold mi <re, re'> r4 |
  \pl sol,\laissezVibrer {fa''8 sol!} <si sol'>4 do8 sol,, fa'' do' | 
  r <fa, sol'> sol si do16 sol,, sol sol <si'' sol'>8 fa |
  sol sol,, <si'' sol'>4 do8 sol | r si <do sol'> fa, sol sol,, |
  <do'' sol'>4 si8 sol fa8 sol,,16 re' <do'' sol'>4 | 
  si8 sol fa8 sol,,16 re' <do'' sol'>8 do, <si si'> <sol sol'> |
  <fa fa'>4 r2 R2. | R1*2 R2.*2 R1*2 | R2.*2 R1*2 |
  \clef bass dod,,4 fad2\laissezVibrer | R2. | sold,1:32\laissezVibrer |
    %%% Vibraphone %%%
  R1 R2.*2-\markup "Allez au Vibraphone" \Vibraphone |
  <re'' la'>1\laissezVibrer  r2 r4 <re la'>\laissezVibrer | R2.*2 |
  <re la'>1\laissezVibrer r2 r4 <re la'>\laissezVibrer R2.*2 |
  <<{ <sold dod>1\laissezVibrer} \\ {re2 la'}>> | sold4 mi re2\laissezVibrer | R2.*2 |
  <<{ <sold dod>2.} \\ {mi4 re la'}>> <sold la>4~ |<sold la>1\laissezVibrer |
  R2. r4 mi2 | <re sold dod>1\laissezVibrer | R1 | R2.*2 |
  <re mi sold>1\laissezVibrer | R1 | R2.*2 R1*2 |
  R2.*2 | R1 r2 <la' la'>2\fermata \laissezVibrer |
  
  %%% Récitatif %%%
  %TODO
  }
}

InterludeDeuxPercus = \new PianoStaff {
  \GrandMarimba
  \PercuDeuxMains
  \relative {
    r8 <red fad> r <red fad> r <red fad> r <red fad> |
    r <red fad> r <red fad> r <red fad> r <red fad> r <red fad> |
    R2. R2 r4 r8 <mi sold> r <mi sold> | R2
  }
  \relative {
    \clef bass r2 r4 <lab, re sol> |
    r2 <fa mi'>4 | R2 R2. R2 R2. R2
  }
}

ActeUnSceneTroisPercus = <<
  \new DrumStaff { \Percus
    \new DrumVoice \drummode {
      \ind #"Tambour" \ind #"(bag. fagot)" sn2.:32~sn8 \t {sn16 sn sn} sn2:32~ sn2.:
      sn8 \t {sn16 sn sn} sn8 \t{sn16 sn sn} sn4:32 sn8 sn4 sn8 sn4 |
      sn8 \t {sn16 sn sn} sn8 sn4 sn8 sn2.:32 R2.*4 |
      sn4:32 sn4 r |
      r8 \t {sn16 sn sn} sn4 r |
      r8 \t {sn16 sn sn} sn4 sn4:32 |
      sn8. sn16 r sn sn8 r \t {sn16 sn sn} |
      sn4 sn32 sn8.. r8 \t {sn16 sn sn} |
      sn2.:32~ sn: |
      R2.*6 R1.*6 R1*5/4*5 R1*4 R2.*3 R2*2
      
      R2.*3 sn4:32 r8 sn \t {sn sn sn} |
      sn4:32 r8 sn \t {sn sn sn} |
      sn4 r8 sn \t {sn sn sn} |
      sn4 r8 sn \t {sn sn sn} |
      sn32 sn8.. r8 sn \t {sn sn sn} |
      \t {sn16 sn sn} sn8 r sn \t {sn sn sn} |
      sn2.:32 R2.*4
      R1.*6 R1*5/4 R1 R2. R2
    }
  }
  \new Staff { \Timbales
    \relative { R2.*24
      r2 r4 si, si si |
      sib2:32 sib4 r r2 |
      si!2:32 sib4 r r2 |
      sib2:32 sib4 r r2 |
      si!2:32 sib4 r r2 |
      sib2:32 sib4 r r2 |
      si!2:32 sib4   r2 |
      sib4:32 \t {sib8 sib sib} sib4 sib r |
      si4:32 \t {si8 si si} si4 si r |
      sib4:32 \t {sib8 sib sib} sib4 sib r |
      si4:32 \t {si8 si si} si4 si r |
      mi,8 mi\t {mi mi mi} mi4:32 mi8 r |
      mi8 mi \t {mi mi mi} mi4:32 mi8 r |
      mi8 mi \t {mi mi mi} mi4:32 mi8 r |
      mi8 mi \t {mi mi mi} mi4:32 mi8 r |
      <mi dod'> <mi dod'> \t {<mi dod'> dod' mi,} \pl mi4:32 {dod'8. dod32 dod} |
      <mi,dod'>8<mi dod'> \t {<mi dod'> dod' mi,} \pl mi4:32 {dod'8. dod32 dod} |
      <mi,dod'>8. dod'16 <mi, dod'>4 r R2*2
      R2.*14
      r2 r4 do' do do do1.:32~do:~do:~do8 do \t {do do do} do1:32~do1\laissezVibrer r2|
      R1*5/4 R1 R2. R2
    }
  }
>>


ActeUnSceneTroisBisPercus = {
  \new GrandStaff \GrandMarimba \PianoDeuxMains
   \relative {
     r8<red fad> r <red fad> r <red fad> r <red fad> |
     r <red fad> r <red fad> r <red fad> r <red fad> |
     r <red fad> r <red fad> r <red fad> r <red fad> | R1 r2
     r8<red fad> r <red fad>
     r <red fad> r <red fad> r <red fad> r <red fad> | R1 r2
     r8<red fad> r <red fad>
     r <red fad> r <red fad> r2 R1*12
     r8<mi sol> r <mi sol> r <mi sol> r <mi sol> |
     r <mi sol> r <mi sol> r <mi sol> r <mi sol> |
     r <mi sol> r <mi sol> r <mi sol> r <mi sol> | R1*2
     r8<red fad> r <red fad> r <red fad> r <red fad> |
     r <red fad> r <red fad> r <red fad> r <red fad> |
     r <red fad> r <red fad> r <red fad> r <red fad> |
     r <red fad> r <red fad> r <red fad> r <red fad> |
     r <red fad> r <red fad> r <red fad> r <red fad> |
     r <red fad> r <red fad> r <red fad> r <red fad> |
     r <red fad> r <red fad> r <red fad> r <red fad> |
     \ttt {r16 fad \gauche sol, \droite red' \gauche mi, si}
     \tt {sold sol' mi sib' do} red4 \droite r8 <red fad> |
     \t {r16 \gauche <mi, sol> \droite <red' fad>} <re' fa>8
     r <re fa>
     r32 \gauche <sold,,, si> <sol' sib> <do mib> \droite <si' re>8 r <si re> |
     r16 \t {sib,32 mib do} la'8 r16 \gauche \t {sol,32 do sib} \droite fad'8 s4 |
     R1*3
     r8 <do re> r <do re> r2 r8 <do re> r <do re> r2 |
     r8 <do re> r <do re> r <do re> r <do re> |
     r <fa lab> r <fa lab> r <fa lab> r <fa lab> |
     <la,do><fa'lab> r <fa lab> r <fa lab> r <fa lab> |
     \gauche \t {<dod,mi>16 \droite <la' do> \gauche <dod,mi>} \droite <fa' lab>8
     r <fa lab> r <fa lab> r <fa lab> |
     R1*7
     r4 r8 <do fa> r <do fa> r4 |
     r4 r8 <do fa> r <do fa> r4 |
     r8 <do fa> r <do fa> r <do fa> r <do fa> | R1*16
   }
   \relative {
     R1
     r8 la r la r la r la |
     r  la r la r la r la |
     R1
     r2 r8 <sol la> r <sol la> |
     r <sol la> r <sol la> r <sol la> r <sol la> |
     R1
     r2 r8 <mi sol> r <mi sol> |
     r <mi sol> r <mi sol> r2  |
     R1*12
     r8 <fa lab> r <fa lab> r <fa lab> r <fa lab> |
     fa,<fa'lab> r <fa lab> r <fa lab>16 si, r8 <fa'lab> |
     r <fa lab> r <fa lab>32 fa,16 si32 r8 <fa'lab> r <fa lab> |
     R1*3
     r8 sol r sol r sol r sol |
     r <mi sol> r <mi sol> r <mi sol> r <mi sol> |
     r <mi sol> r <mi sol> si<mi sol> r <mi sol> |
     r <mi sol> si<mi sol> r <mi sol> r <mi sol> |
     r16 <mi sol> r8 r r16 <mi sol> r8 <mi sol> r <mi sol> |
     sold,<mi'sol>r<mi sol>r <mi sol> r <mi sol> |
     s1*2 s2 \t {r16 si sold} sol'8 |
     R1*5
     r8 la r la r la r la |
     r <la do> r <la do> r <la do> r <la do> |
     <dod, mi> <la' do> r <la do> r16 <la do> r8 r <la do> |
     s8 r16 <la do> r <dod, mi> r8 r r16 <la'do> r8 <la do> |
     R1*7
     r4 r8 <la si> r <la si> r4 |
     r4 r8 <la si> r <la si> r4 |
     r8<la si> r <la si> r <la si> r <la si> | R1*16
   }
}

ActeUnSceneTroisTerPercus = <<
  \new Staff { \Vibraphone
    \relative {
      R2*3 R2. R2*2 R2.*2 r2
      \pl {s4\sustainOn sol'~ fad~ mib~ <mib fad sol>}
      {si'4~ si2.~ si4} r2\sustainOff
      sib4\laissezVibrer \sustainOn la\laissezVibrer fad\laissezVibrer
      fa re dod \pl {mib2\sustainOn s mi\sustainOn fa\sustainOn}
      {si!4 sib sol fad do' si reb do}
      <re, re'>8\sustainOff r r4 r2 | R1*3 R2.*9
      r8 si'\sustainOn sib sol fad mib re'2.\laissezVibrer s2.*2
      r4 si\sustainOn sib sol fad mib re'2.\laissezVibrer s2.\sustainOff
      R2.*23 R1 R2.*18
      \t {r4 \ind #"con Ped." dob'8} \t {sib mib, re} \t {mib sib' dob} \t {sib sol fad}
      \t {sol sib dob} sib16 dob sib dob |
      sib4.\sustainOn fa dob solb do,!2 r4\sustainOff R2.*14
    }
  }
  \new Staff { \Marimba
    \relative {
      R2*3 R2. R2*2 R2.*7 R1*3
      r2 r8 r16 mi'32 fa mi'4 |
      \t {r16 la mi} mib, sib' r4 r8
      <mib,,, re'> r4 |
      r32 re''' fad,8 <fad,, sol'>16 r
      <mib re'> <fad sol'>8 \ottava #1
      si'''32 fad sib fa sol re fad dod
      \ottava #0
      \t {mi,8 sold, \clef bass do,,}
      r8 <dod re'> r <red mi'> \clef treble
      \tt {r16 <sold sol'!> la sold' re} |
      \pl re,4 re'' r2 |
      
      %%% Poco meno %%%
      
      R2.*17 \clef bass
      fa,,,2.:32~fa4 r2 | R2.
      fa2.:~ fa4 r2 | R2.
      dod'2.:~ dod4 r2 | R2.
      dod2.:~ dod4 r2 | R2.
      la2.:~ la4 r2 \clef treble
      r16 <dod'' dod'> \t {r fa' dod} fa,32 dod do'8. <mi, mi'>8 r \clef bass |
      la,,,2.:32~ la4 r2 | R2. \clef treble
      r32 do'' dod'8. r8 fa32 mi, dod' dod, do'8 <la,, sold'> |
      r8 \t {dod'16 mi dod'} \clef bass r8 <la,, sold'>
      <do, si'>16 <la' sold'> \clef treble fa'''8 |
      r <la,,, sold'> \ottava #1 r16 red'' \t {re, fad' fa,}
      lad32 la, dod' do, lab''16 <sib, sib'> |
      <sol sol'>4 \ottava #0 r8 <do,, si'>16 <la' sold'>
      r <sib, la'> <lab' sol'>8 \clef bass
      <si,, lad'>16 <solb' fa'>8. |
      fad,2.:32~ fad4 r2 | r8 si mi fa sold la |
      fad,2.:32~fad4 r2 | r8 sib si red mi sol|
      fa,!2.:32~fa4  r2 \clef treble |
      r4 r8 <lab''' fa'> r16 <reb, do'> r8 \clef bass |
      fa,,,2.:32~ fa4 r2 \clef treble |
      r4 r16 fa'''' mi,8 \t {do'16 dod la} sold'8 \clef bass |
      dod,,,,2.\laissezVibrer R2. \clef treble |
      r16 fa''' mi,8 r16 la,8 si16 \t {sold' re si'} fa8 |
      <re' mi>16 <re mi> r8 r2 | R2.*17
      <mi, red'>8 r r2 R2.*3
    }
  }
>>


InterludeTroisPercus = { \Timbales
  \relative {
    r8 <sol,mi'> r <sol mi'> r2 |
    r8 <sol mi'> r <sol mi'> r4 |
    <sol mi'>8 sol <sol mi'> sol <sol mi'> sol sol16 sol32 sol sol8 |
    <sol mi'>8 sol <sol mi'> sol sol16 sol sol8 |
    <sol mi'>8 sol <sol mi'> sol <sol mi'> sol sol16 sol32 sol sol8 |
    <sol mi'>8 sol <sol mi'> sol sol16 sol sol8 |
    <sol mi'> sol <sol mi'> sol <sol mi'> sol <sol mi'> <sol mi'> |
    <sol mi'> sol <sol mi'> sol <sol mi'> <sol mi'> |
    sol16 sol mi' mi sol, sol mi' mi sol, sol mi' mi sol,32 sol sol sol sol8 |
    sol16 sol mi' mi sol, sol mi' mi sol,32 sol sol sol sol16 sol |
    sol8 mi'16 mi r8 mi16 mi r8 mi32 mi mi mi |
    mi8 mi16 mi r8 mi32 mi mi mi |
    mi,8 <mi mi'> r <mi mi'> r <mi mi'>16 mi |
    <mi mi'>16 mi32 mi <mi mi'>8 r <mi mi'> |
    mi16 mi <mi mi'>8 mi16 mi <mi mi'>8 |
    mi16 mi <mi mi'> mi <mi mi'> mi <mi mi'> mi |
    mi2:32~ mi:~ mi2: mi'4 r |
  }
}    

ActeUnSceneQuatrePercus = <<
  \new Staff { \Vibraphone
    \relative {
      \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*2
      R2-\fermataMarkup
      R1 R2. \t {la'2 la4~} \t {la la2} |
      \t {la la4~} \t {la la2} |
      \t {sol sol4~} \t {sol sol2} \t {sol sol4} |
      \t {fad2 fad4~} \t {fad fad2} |
      \t {fad fad4~} \t {fad fad2} |
      \t {<si,red fad> <si red fad>4~} \t {<si red fad> <si red fad>2}
      \t {<si red fad> <si red fad>4~} \t {<si red fad> <si red fad>2}
      <si red fad>2 \t {<sol sib mib> <sol sib mib>4~} <sol sib mib>2
      re4 r2 | R2.*26
      R1 R2. R1 R2. R2 R2. R2 R2. R2 R2.
      R1*5 R2 R2. R1*10 R2. R1 R2. R1*7 R2*3 R2.*6
      R1*4 R2. R1 R2.
      R1 R2. R1 R2. R1*2
      R2.*3 R1*2
      
      R2. R4. R2. R4. R2 R4. R2*3 R4. R2*3 R4. R2*3 R4. R2.
      R1*12 R2 R2.*2 R2 R1
      
      %%% Piu lento %%%
      re4 \laissezVibrer <sib' dob sib'>2 <sib dob sib'>
      <sib dob sib'>4\laissezVibrer R2.
      re,4\laissezVibrer <sib' dob sib'>2 <sib dob sib'> <sib dob sib'>4 |
      re,4\laissezVibrer <sib' dob sib'>2 <sib dob sib'> <sib dob sib'>4 |
      re,4\laissezVibrer <sib' dob sib'>2 <sib dob sib'> <sib dob sib'>4 |
      re,4\laissezVibrer <sib' do! sib'>2 <sib do sib'> 
      <sib dob sib'>4\laissezVibrer R2.
      re,4\laissezVibrer <sib' do sib'>2 <sib re sib'> <sib re sib'>4 |
      re,4\laissezVibrer <sib' re sib'>2
      re,4\laissezVibrer <sib' mib sib'>2 <sib mib sib'> <sib mib sib'>4 |
      r <sib mib sib'>2 |
      re,4\laissezVibrer <sib' mi! sib'>2\laissezVibrer | R2.*2
      R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5 R1 R1. R1 R1. R1 R1.*5 R1 R1. R1
      
    }
  }
  \new DrumStaff { \Percus
    \drummode {
      \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*2
      R2-\fermataMarkup
      R1 R2. R1*2 R1. R1*2 R1. R1*2
      R2.*27
      R1 R2. R1 R2. R2 R2. R2 R2. R2 R2.
      R1*5 R2 R2. R1*10 R2. R1 R2. R1*7 R2*3 R2.*6 R1*3
      \ind #"Crécelle" hh4:32 hh4 r8 hh r4 |
      hh4:32 hh4 r | r8 hh8:32 r4 r8 hh8:32 r8 hh8 |
      hh4:32 hh8 hh4:32 hh8 | hh8:32 hh8 r16 hh8. r2 |
      r8 hh8:32 r2 | r16 hh8. r4 r16 hh8. \t {hh8 hh hh} |
      hh8:32 hh8 r2 | R1*2
      R2.*3 R1*2
      R2. R4. R2. R4. R2 R4. R2*3 R4. R2*3 R4. R2*3 R4. R2.
      R1*12 hh4:32 r4 | R2. r4 hh4:32 r4 | R2 r2 hh4:32 hh8 r |
      
      %%% Piu lento %%%
      R2.*21
      R1. r2 hh4:32 r4 | R1. r4 hh2:32 hh4 | R1.
      r4 r8 r16 \ind #"Tambour" \ind #"(bag. fagot)" sn sn4 r |
      R1. R1 R1. R1 sn4 r r2 r4 r8 sn16 sn |
      sn4 r r2 r4 r8 \t {sn16 sn sn} |
      sn4 r r2 r8 sn16 sn sn8 sn |
      sn4 r r2 r8 sn sn sn | sn sn sn4 r1 |
      sn4 r8 \t {sn16 sn sn} sn4 r | R1. R1 R1.
      sn32 sn8.. r4 r r8 r16 sn |
      sn4 r r2 r4 sn16 sn sn sn |
      sn4 r r2 r4 sn8 sn |
      sn4 r r2 r8 sn16 sn sn4 |
      sn4 r r2 r8 sn sn sn | sn sn sn4 r sn sn sn |
      sn4 r8 r16 sn sn4 r |
      r2 r4 sn sn r |
      r2 \ind #"Crécelle" hh4:32 hh4 |
    }
  }
  \new Staff { \Timbales
    \relative {
      \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*2
      R2-\fermataMarkup
      R1 R2. R1*2 R1. R1*2 R1. R1*2
      
      %%% Agitato %%%
      R2.*8
      re,4 r re4:32 re4 r2 |
      re8 re re re re4:32 re4 r2 |
      re8 re re re re4:32 re4 r2 |
      mib4 r2 R2.*4
      mi32 mi8.. r2 mi4 r2 |
      r8 sib32 sib16. r8 mi r sib |
      mi8 \t {mi16 mi mi} mi4 r |
      r8 sib4 mi sib8 | mi4 mi32 mi8.. sib8 mi |
      R2. re2.:32\glissando |
      dod4 r r r8 r16 sol32 sol | sol4 r2 |
      dod8 \t {dod16 dod dod} dod8 \t {dod16 dod dod} dod4 r |
      r8 sol4 dod sol8 | dod8 \t {dod16 dod dod} dod4 |
      r8 sol4 dod sol8 | \tt {dod16 dod dod dod dod} dod4 |
      r8 dod r2 | r8 dod4 sol8 | dod \t {dod16 dod dod} dod4 r |
      
      %%% Placando assai %%%
      dod2 r4 dod | sol2:32~ sol4 r |
      dod2 r4 dod | sol2:32~ sol4 r |
      R1 R2 R2. R1
      
      %%% Andante a piacere %%%
      fa1:32~ fa2 dod' |
      fa,1:32~fa2 dod' |
      fa,1:32~fa2 dod' | fa, r r dod' |
      sol2~sol2:32~sol8 dod4 sol dod8 |
      sol2~sol2:32~sol8 \t {dod16 dod dod} dod8 sol~sol16. sol32 sol8 |
      dod8 r r4 r2 |
      sol1:32~sol:~sol2.:32~sol4 |
      r8 sol \t {sol sol sol} sol2:32~sol1:32~sol2 r |
      R2*3 R2.*6
      
      %%% A tempo %%%
      r16 do32 do do8 r8 fad,4 do' fad,8 |
      r16 do'32 do do8 r4 \tt {r16 do do fad, do'} \t {fad,8 do' fad,} |
      do'8 \t {do16 do do} do4 r2 |
      R1 R2. R1 R2. R1 R2. R1
      
      r2 fad,4:32\glissando sol4 r r2 |
      sol32 sol8.. r4 r8 \t {dod16 dod dod} dod4 |
      \t {sol16 sol sol} sol8\laissezVibrer r2 |
      sol4 sol2:32\glissando fa4 r2 |
      fa4 r8 r16 fa fa4 r |
      fa r r dod'4:32\glissando re4 r2 |
      r16 r32 re re4 |
      sold,8 \t {sold16 sold sold} sold4 r8 sold |
      r4 sold32 sold16. | re'32 re re8. r4 |
      r16 r32 re re4 |
      la8 la32 la16. r4 | R2
      mib'4 mib r4 r8 |
      si4 r R2 |
      r8 r16 fa32 fa fa4 | R4. 
      fa4 fa8 fa \t {fa fa fa} \tt {fa16 fa fa fa fa} |
      R2 R4.
      re'2.:32 re4 r8 r16 re32 re re4 r |
      re16 re re8 r4 re r r re re re |
      re8 re16 re re4 re re8 \t {re16 re re} |
      re4 r r re8 re16 re re4 r r re8 re16 re |
      re4 r r re re r r re re r r2 | R1*3
      R2  R2.*2 R2 R1
      R2.*21
      R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5
      R1 R1. R1 R1. R1 R1.*5 R1 R1. R1
    }
  }
>>


EntractePercus = {
}

ActeDeuxSceneUnPercus = <<
  \new Staff \relative {\Vibraphone 
    R2.*4 R2 R2.*2 R2
    mi,8\sustainOn do' sol' mib' lab si\laissezVibrer R2.*2
    \sustainOff R2 R2. R2 R2.*2 R2
    mi,,,8\sustainOn si' do sol' lab mib'\laissezVibrer R2.*2
    \sustainOff R2 R2. R2 R2.*2 R2
    <re la'>4\sustainOn mi, <re la'> |
    \t {mi,8 <re' la'> mi} \t {<re' la'> mi, <re la'>}
    \t {mi, <re' la'> mi} <re'la'>2*3/2\laissezVibrer R2 \sustainOff
    R2.*2 R1 R2. R1 R2. R2 R2. R1
    
    %%% Andantino %%%
    
    %%FIXME: complete. As soon as I have *nothing* else to do.
  }
  \new PianoStaff {\PercuDeuxMains
    \relative {\GrandMarimba 
      R2.*4 R2 R2.*2 R2 R2.*3 R2 |
      R2. R2 R2.*2 R2 R2.*3 R2 |
      R2. R2 R2.*2 R2 R2.*3 R2 |
      R2.*2 R1 R2. R1 R2. R2 R2. R1
      
      %%% Andantino %%%
      r4<re mi> r <re mi> |
      r <re mi> r <re mi> |
      r <re mi> r |
      r <re mi> r |
      <re mi> r <re mi> |
      r <re mi> r | <re mi> r |
      r <re mi> r |
      r <re mi> r |
      <re mi> r <re mi> |
      r <re mi> r |
      <re mi> r <re mi> |
      r <re mi> r <re mi> |
      r <re mi> r |
      r <re mi> |
      r <mi sold> r |
      <mi sold> r <mi sold> r |
      <mi sold> r <mi sold> |
      r <mi sold> r <mi sold> |
      r <mi sold> r |
      <mi sold> r <mi sold> r |
      s2. R1 R2. R1 R2. R1 R2.
      R1 R2. R1 R2. R1 R2. R1
      R2. R1
      <re mi>4 r <re mi> |
      r <re mi> r <re mi> |
      r <re mi> r |
      <re mi> r <re mi> r |
      r <re mi> r |
      <re mi> r <re mi> r |
      r <re mi> r |
      <re mi> r <re mi> r |
      s2. s1 s2.
      s1 s2. s1
      s4 <re mi> r |
      r <re mi> r <re mi> |
      s2. s1 s2. s1 s2.*7 R2.
      s4 <do re> r <do re> r <do re> |
      R1 s4 <do re> r |
      R1 R2. R1
      r4 <mib solb> <mib solb> |
      r <do fa> <do fa> r |
      r <mib solb> <mib solb> |
      r <do fa> r <do fa> |
      r <do fa> r | R1
      R2. R1 R2. R2 R1 R2. R1 R2. R1 R2. R1
    }
    \relative {
      R2.*4 R2 R2.*2 R2 R2.*3 R2 |
      R2. R2 R2.*2 R2 R2.*3 R2 |
      R2. R2 R2.*2 R2 R2.*3 R2 |
      R2.*2 R1 R2. R1 R2. R2 R2. R1
      
      %%% Andantino %%%
      sib,2*2\laissezVibrer R1
      r4 sib r | mi,2*3/2\laissezVibrer R2.*2 R2
      r4 sib' r | mi,2*3/2\laissezVibrer R2.*3 R1 R2. r4 do' |
      fad, <la're> r | <la re> r <la re> r |
      <la re> r <la re> | r <la re> r <la re> |
      fad, <la're> r | <la re> r <la re> r |
      sib,8 sib' fa fa, mi' do | sib2:32~ sib4 r |
      fad2.:32~ fad4 r r2 | sib4 r2 |
      fad2:32~ fad4 r | R2.
      R1 R2. R1 R2. R1 R2. R1
      fad2.:32~ fad4 r r2 |
      <sold'la>4 r <sold la> |
      mi <sold la> si, <sold'la> |
      fad, <sold'la> r |
      <sold la> sol <sold la> do, |
      fa,! <sold'la> r |
      <sold la> mi <sold la> si, |
      fad <sold'la> r |
      <sold la> r <sold la> r |
      do,8 la' \droite <re sol> \gauche 
      do, la' \droite <re sol> | <fad do'> <re sol> \gauche
      do, la' \droite <re sol> \gauche
      do, la' \droite <do re> \gauche |
      do, fad si \droite mi \gauche
      do, fad | do sol' \droite re' <mi la> \gauche
      si \droite <mi la> \gauche fad, \droite <si mi> \gauche |
      dod, la' \droite <la're> \gauche
      dod,,la' \droite <si'mi> |
      fad <la re> \gauche dod,,si' \droite <mi la> \gauche
      dod, si' \droite <mi la> \gauche |
      do, la' s4 r4 | la4 r la r |
      fad8 la \droite <do re> \gauche la \droite <do re> \gauche la |
      fa lab \droite <do re> \gauche lab \droite <do re>4 \gauche r |
      fad,8 la\droite <do re> \gauche la \droite <do re> \gauche la |
      fa lab \droite <do re> \gauche lab \droite <do re>4 \gauche r |
      <fad,,fad'>8 la' \droite <do re> \gauche la \droite <do re>4 \gauche |
      sol,8 re' \droite <do'fa> \gauche sol, re' \droite <fa' sib> \gauche |
      re, do' \droite <sib'mib> \gauche re, \droite <mib' lab>4 \gauche |
      sib,,8 la' \droite <do fa> \gauche la \droite <do fa> \gauche la |
      si, lab' \droite <si mi> \gauche lab \droite <si mi>4 \gauche |
      sib,8 la' \droite <do fa> \gauche la \droite <do fa> \gauche la |
      si, lab' \droite <si mi> \gauche lab \droite <si mi>4 \gauche |
      R2.
      mib,8 la s4 r8 la s4 r8 mib s4 | r2 r4 <la si> |
      mib s r |
      re <si'dod> r <si dod> |
      re,<sib'do> r | R1
      lab2*3/2\laissezVibrer la\laissezVibrer r4 |
      lab2*3/2\laissezVibrer <sol, sol'>2\laissezVibrer r | R2. R1
      R2. R1 R2. R2 R1 R2. R1 R2. R1 R2. R1
    }
  }
>>


ActeDeuxSceneUnBisPercus = { \Percus
  
}

ActeDeuxSceneDeuxPercus = <<
  \new Staff { \Marimba
    \relative {
      sold'4 <mi sold> <fa la> r r2 |
      sold4 <mi sold> <fa la> r r2 |
      R1.
      <mi sold>4 <mi sold> <fa la> r sold r |
      la r r1 | R1.-\markup "Allez au Vibraphone" \Vibraphone
      R1*2 R2.*5 R1.*3 R1*2
      R2. R1 R4. R1*6 R2. R1. R1
      r2 r4 \pl {la fa'\laissezVibrer} {do\glissando do'\laissezVibrer} 
      \ind #"senza Ped." r2 |
      do4 r \pl {la, fa'\laissezVibrer} {do\glissando do'\laissezVibrer} r2 |
      re,4 do' | r si r | mi,,,\laissezVibrer mi'\laissezVibrer mi'\laissezVibrer |
      r2 r8 \hideNote sol8\glissando do4*1/2 \hideNote mi,8\glissando la4 | R4.
      R1*5 R2*6 R1 R2. R1. R1 R1.*2 R2. R1 
      
      la,2.\laissezVibrer \sustainOn r8 sol4.\laissezVibrer r2 |
      fa2.\laissezVibrer r8 mi4.\laissezVibrer r2 | fa4 mi fa |
      sol la2.\laissezVibrer R2.
      R1 <la, la'>2.\laissezVibrer R1 <sib la'>2.\laissezVibrer
      <mib la>1\laissezVibrer <sold la>2.\laissezVibrer R1
      <la, la'>2.\laissezVibrer R1 R2. R1 R2. R1 R2.
      R2*3 R2. R1*3
      R1*5/8*14 R1*9 R2. R2 R1*2
      la'4 sol fa mi2 r4 |
      <solb, la! fa' lab>2.\laissezVibrer R2.*4
      
      R2*2 R2.*2 R2*25
      <la' la'>2.\laissezVibrer \sustainOn R2.*6
      \pl {<fa do'>4 do' fa, <fa do'>2*3/2}
      {la'8 sol fa mi fa16 mi fa sol la8 mi8*5\laissezVibrer }|
      R2.
      \pl {<la, do>4 do la <la do>2. <sol re'> <la do>2}
      {la'8 sol fa mi fa16 mi fa sol la8 sol fa mi fa16 mi fa sol
      sib8 sol fa mi fa16 mi fa sol la8 mi8*3 } r4 | R2.*2
    }
  }
  \new DrumStaff { \Percus
    \drummode {
      R1.*6 R1*2 R2.*5 r1 \ind #"Crécelle" hh2:32~ hh4 r r1 R1. R1*2
      R2. R1 R4.
      R1*5 r4 \ind #"Crécelle" hh2.:32 R2. R1. R1*2
      R2.*3 R2 R2.*3 R2 R4. R1*5 R2*6 R1
      r4 \ind #"Crécelle" hh2:32 R1. R1 R1.*2 R2.
      r2 hh4:32 hh4 |
      
      R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1
      R2. R1 R2. R1 R2. R1 R2.
      
      R2*2 R2 R2. R1*3
      r4 \ind #"Tambour" \ind #"(bag. fagot)"  sn8 sn sn sn4 r8 sn sn |
      sn4 sn8 sn sn sn4 r8 sn sn | sn4 sn8 sn16 sn sn sn |
      sn4 sn r16 sn32 sn | sn4 r r8 |
      sn4 r8 sn sn | sn4 sn8 sn sn | sn4 sn r16 sn32 sn | sn4 r r8 |
      sn sn sn4 r8 | r sn sn sn sn | sn4 r r8 |
      R1 r2 r4 r8 \t {sn16 sn sn} | sn4 r r2 |
      R1*6 R2. R2 R1*2 R2.*7
      
      R2*2 R2.*2 R2*25 R2.*16
    }
  }
  \new Staff { \Timbales
    \relative {
      R1.*6 R1*2 r2 r8 r16 re,32 re |
      re4 re8 re r \t {re16 re re} |
      re8 re re16 re r8 re32 re re8. |
      re16 re re re re8 \t {re16 re re} re8 re |
      sold,8. re'16 r sold, re'8 r16 re8 sold,16 |
      re'2:32~ re4 r r2 | R1.*2 R1*2
      r2 r8 \t {si16 si si} |
      si4 si8 si32 si16. r16 si si si r8 \t {si16 si si} |
      sold4 r8 | si4 r r8 sold r4 | si4 r r2 |
      si4 r8 si r si r4 | si32 si8.. r8 si r si r r16 si32 si |
      si4 r8 si r si r4 | si r8 si r si r4 |
      sold2.:32~ sold4 r r1 |
      R1*2 R2.*3 R2 R2.*3 R2 R4. 
      
      mi4 r r mi'8 mi16. mi,32 |
      mi4 r r mi'16. mi32 mi8 |
      mi,4 r8 mi r mi mi' mi16. mi,32 |
      mi4  r8 mi r mi mi'16. mi32 mi8 |
      mi,4 r8 mi r mi mi'16 mi mi8 |
      mi,8 mi'16. mi32 mi4 |
      mi,8 mi'16. mi32 mi16 mi mi8 |
      mi,8 mi'16. mi32 mi4 |
      mi,8 mi'16. mi32 mi16 mi mi32 mi mi mi |
      mi,8 mi'16. mi32 mi4 |
      r4 re | dod1:32~ dod4 r2 |
      dod4 r r2 r4 dod | sol1:32 | dod4 r r2 r4 dod |
      sol1.:32~ sol4 r2 | R1 
      
      R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1
      R2. R1 R2. R1 R2. R1 r2 r8 r16 \t {la32 la la} |
      la4 r r r8 \t {la16 la la} la4 r r2 r8 \t {la16 la la} |
      la1:32~ la:~ la2 r8 la \t {la la la} |
      la4 r r8 | R1*5/8*13 R1*6
      mi2:32~ mi8 mi \t {mi mi mi} |
      mi2:32~ mi8 mi \t {mi mi mi} |
      mi2:32~ mi8 mi \t {mi mi mi} |
      mi4 r2 | R2 R1*2 R2.*7
      
      R2*2 R2.*2 R2*25 R2.*16
    }
  }
>>

