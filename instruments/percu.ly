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
  \set GrandStaff.instrumentName = \markup { \hcenter-in #27.5 "Marimba  "}
  \set GrandStaff.shortInstrumentName = "Mar.  "
  \set GrandStaff.midiInstrument = "marimba"
}

Vibraphone = {
  \set Staff.instrumentName = \markup { \hcenter-in #27.5 "Vibraphone  "}
  \set Staff.shortInstrumentName = "Vib.  "
  \set Staff.midiInstrument = "vibraphone"
  \clef treble
}

Timbales = {
  \set Staff.instrumentName = \markup { \hcenter-in #27.5 "Timbales  "}
  \set Staff.shortInstrumentName = "Timp..  "
  \set Staff.midiInstrument = "timpani"
  \clef bass
}

ProloguePercus = {<< 
	\new DrumStaff { \Percus 
		\new  DrumVoice { \drummode {
		\partial 4 wbh4-\markup "WoodBlock" r r8 wbh r4 | r8 wbh r4 r16 wbh8. | 
		wbh8 wbh \t { wbh wbh wbh } \tt {wbh16 wbh wbh wbh wbh} | wbh4 r2. |
		cb2-\markup "Gong" \laissezVibrer | R2 |
			}
		}
	}
	\new Staff { \Timbales
		\relative{
		\partial 4 r4 R2.*3 | R1 | r8 mi,, \t {mi mi mi} | mi4 r |		
		}
	} >>
}

ActeUnSceneUnBisPercus = { <<
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
      r2 r4 \ind #"Tambour" sn |
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
      %FIXME: stupid, stupid, stupid... use short notation!
      \repeat tremolo 24 dod,32
      \repeat tremolo 24 dod32
      \repeat tremolo 24 dod32
      \repeat tremolo 24 dod32
      \repeat tremolo 24 dod32
      \repeat tremolo 16 dod32 dod8 r |
      r re4 re8 \t { re re sold,} |
      
      %%% Piu vivo %%%
      re'4 r r2 | \repeat tremolo 24 sold,32 |
      re'4 r r2 | \repeat tremolo 24 sold,32 |
      <sol re'>4 r8 \t {sol16 sol sol} sol4  |
      r sol32 sol8.. r4 | \t {sol16 sol sol~} sol8 r4 reb' |
      sol, r2 |
      sol8  reb'~reb4~ \repeat tremolo 8 reb32 reb4\laissezVibrer r2 R2.-\fermataMarkup
      sol,8 reb'~reb4~ \repeat tremolo 8 reb32 reb4\laissezVibrer r2 R1-\fermataMarkup 
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
	\clef bass dod,,4 fad2\laissezVibrer | R2. | \repeat tremolo 32 sold,32\laissezVibrer |
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

ActeUnSceneTroisPercus = { <<
  \new DrumStaff { \Percus
    \new DrumVoice \drummode {
      \ind #"Tambour" sn2.:32~sn8 \t {sn16 sn sn} sn2:32~ sn2.:
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
}

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

ActeUnSceneTroisTerPercus = { <<
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
}

ActeUnSceneQuatrePercus = {
  <<
   \new Staff { \Vibraphone
     \relative {
       \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*3-\fermataMarkup
       R1 R2. \t {la'2 la4~} \t {la la2} |
       \t {la la4~} \t {la la2} |
       \t {sol sol4~} \t {sol sol2} \t {sol sol4} |
       \t {fad2 fad4~} \t {fad fad2} |
       \t {fad fad4~} \t {fad fad2} |
       \t {<si,red fad> <si red fad>4~} \t {<si red fad> <si red fad>2}
       \t {<si red fad> <si red fad>4~} \t {<si red fad> <si red fad>2}
       <si red fad>2 \t {<sol sib mib> <sol sib mib>4~} <sol sib mib>2
       \clef bass re4 r2 | R2.*26
       R1 R2. R1 R2. R2 R2. R2 R2. R2 R2.
       R1*5 R2 R2. R1*10 R2. R1 R2. R1*7 R2*3 R2.*6
       R1*4 R2. R1 R2.
       R1 R2. R1 R2. R1*2
       R2.*3 R1*2

       R2. R4. R2. R4. R2 R4. R2*3 R4. R2*3 R4. R2*3 R4. R2.
       R1*12 R2 R2.*2 R2 R1




     }
   }
   \new DrumStaff { \Percus
     \drummode {
       \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*2-\fermataMarkup
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
       R1*12 R2 R2.*2 R2 R1
     }
   }
   \new Staff { \Timbales
     \relative {
       \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*3-\fermataMarkup
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
     }
   }
  >>
}
     

ActeDeuxSceneUnPercus = {\Percus
		R2.*4 R2 R2.*2 R2 R2.*3 R2 |
}
