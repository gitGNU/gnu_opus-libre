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
      \ind #"Tambour" sn2.:32~sn:~sn:~sn:~sn:~sn:~sn:~sn4 r2 |
    }
  }
  >>
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

ActeDeuxSceneUnPercus = {\Percus
		R2.*4 R2 R2.*2 R2 R2.*3 R2 |
}
