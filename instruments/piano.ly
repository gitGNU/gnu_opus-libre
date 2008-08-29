%------------------------------------------------------------------%
% Opéra Libre -- piano.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

Piano = {
  \set PianoStaff.instrumentName = \markup { \hcenter-in #27.5 "Piano  "}
  \set PianoStaff.shortInstrumentName = "Piano.  "
  \set PianoStaff.midiInstrument = "acoustic grand" 
}

ProloguePiano = { \Piano
	\PianoDeuxMains { \clef treble
    \relative { 
      \partial 4 r4 R2.*3 R1
      mi2\laissezVibrer r4 \clef bass mi,4\laissezVibrer|
      r4 mi2\laissezVibrer | r8 \tt {mi,32 fa mi' mi fa} red'4\laissezVibrer|
      r4 r8 \t {mi,,16 mi' mi} | mi'2.\laissezVibrer | 
      R2*2 |<< \makeClusters { \ind #"dans les cordes" sol,16 la si do re2 } \\ {\hideNotes s4 re2 \laissezVibrer \unHideNotes} >>
      R2*2 |<< \makeClusters { \simile sol,16 la si do mi2 } \\ {\hideNotes s4 mi2 \laissezVibrer \unHideNotes} >>
      R2*2 |<la, re sol>2 r4 | R2*2 |
      << {\voiceTwo <si re mi>2\laissezVibrer} \\ {\voiceFour r8 \voiceOne <sid, dod>8 <sid dod> <sid dod>}>>
      \repeat unfold 16 <sid dod>8 |
      \repeat unfold 8 <dod re>8 <re mib> <re mib>
      \repeat unfold 10 <red mi>8
      r8 <mi fa> <mi fa>4 | <mi fa>8 <mi fa>4 <mi fa>8 <mi fa>4 |
  }}
  {\clef bass 
    \relative {
      \partial 4 r4 R2.*3 R1
      <mi,, mi'>2\laissezVibrer r4 <mi, mi'>4\laissezVibrer r4 <mi mi'>2\laissezVibrer |
      r4 <mi mi'>\laissezVibrer | r4 <mi mi'>\laissezVibrer mi'4 mi,2\laissezVibrer |R2*2 |
      r4 <mi mi'>2\laissezVibrer | R2*2
      r4 <mi mi'>2\laissezVibrer | R2 r4 <re' re'> |
      <dod dod'>2 r4 | R2*2
      <dod, dod'>2 r8 <sol' sol'> | r dod r <sol sol'> | dod4 <dod, dod'> <sol' sol'>8 dod~|
      R2 <sol sol'>4 dod <sib sib'>8 dod~| dod <sol sol'> dod4 |
      <dod, dod'>4 <sol' sol'>8 <dod dod'>4 <sib sib'>8 | r <dod dod'>4 <sol sol'>8 |
      <sib sib'>2~<sib sib'>4 r2 |
  }}
}

ActeUnSceneUnPiano = { \Piano
  \PianoDeuxMains
  \relative { \clef treble
    
  }
  \relative { \clef bass
    
  }
}

ActeUnSceneUnBisPiano = { \Piano
  \PianoDeuxMains
  \relative { \clef treble
    
  }
  \relative { \clef bass
    
  }
}

ActeUnSceneDeuxPiano = { \Piano 
	\PianoDeuxMains { \clef treble
		\relative{
		%%% Air de la Soprano2 %%%
		
		\repeat unfold 6 {R2.*2 R1*2} R2. | \clef bass
		dod,8 re fad sold fad re | dod1~ dod~ | dod2 r4 | re fad8 sold fad4 | 
		mi8 fa la si la fa mi fa | la si la4 fa8 la si re | si4 la8 si re fa |
		\clef treble re4 fa8 sol si do | \ottava #1 si''8 do si sol fa sol si4 | 
		si8 do si sol fa sol si do | si do si sol fa sol | fa re si re la4 |
		\ottava #0
		<lab, lab'>1 ~ <lab lab'>2. r4 | R2.*2 R1*2 |
		R2. lab8 re, do lab s4 \clef bass | r4 <re, sold>2.\arpeggio \laissezVibrer R1 |
		R2. \clef treble | r4 r8 \ottava #1 fa''''! sol,!4 | \ottava #0
		r4 r8 \ottava #1 fa' do sol sold re | do' sol re sold la,4 \ottava #0 r | R2.*2 |
		r4 \ottava #1 fa'' \ottava #0 r2 R1 | R2.*2 | r8 \ottava #1 fa do sol fad' si, mi,4 | \ottava #0 R1 | R2. |
		r8 \ottava #1 fa'! do sol lad'4 | red,4 \ottava #0 r r2 |
    
    %FIXME: line breaks make the "15ma" text move to the left.
    r2 \ottava #2
		sol!4 do | si8 sol fa4 si8 do | si sol fa sol si4 |
		sol4 fa8 do' si4 do8 si | sol fa sol si r do fa, sol |
		si4 do fa, | si8 sol fa sol si4 | si8 do si sol fa sol si do |
		si sol fa sol si4 si8 do | si sol fa sol si do | si sol fa sol si4 |
		si8 do si sol fa4 si8 do | si sol fa sol si4 si8 do |
		si sol fa4 si8 do | si sol fa sol si4 |
		si8 do si sol fa4 si8 do | si sol fa sol si4 r |
		si8 do si sol fa4\laissezVibrer \ottava #0 | R2. R1 | r2
		\ottava #1 <si,, dod lad'>2\fermata \ottava #0 | 
		
		%%% Récitatif %%%
		}
	}
	{ \clef bass
		\relative {
		%%% Air de la Soprano2 %%%
		
		R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1*2 R2. r2 mi,4~ | mi1~ mi2 r4 fad8 sold | si2.~|si2 r4|
		R1*2 | re,4 si' sold8 fad | re4 sold8 fad re dod | sold1 | re'8 fad sold4 re8 dod sold4~ |
		sold2.| R2. | dod,1~ dod~ | dod2 r4 | re fad8 sold fad re | 
		<dod dod'>1~ <dod dod'>~ | <dod dod'>2 r4 | R2.| 
		<< {\voiceTwo <mi mi'>1~\laissezVibrer s1 <dod dod'>2.~ <dod dod'>2 }\\
		{ \voiceOne r2 \clef treble fa''8 sol si do si sol fa sol si4 r4 \clef bass
		r4 la,8 si re4 si8 re fa sol } >> r4
		<sol,,,! sol'!>1~ <sol sol'>2. r4 | R2.*2 | <sol sol'>1~ <sol sol'>2. r4 |
		R2. << {s2 sol''8 re s1 s1 dod8 re fad2~ fad r4 s1 s2.} \\ 
		{R2. <sold,, sold'>1~ <sold sold'>~ <sold sold'>2.~ <sold sold'>~ 
		<sold sold'>1~ <sold sold'>2.}>> r4 R2.*2 R1*2 R2.*2 R1*2 R2.*2 \clef treble
		<re''' la'>1\laissezVibrer r2 \ottava #1
		sol''!4 do | si8 sol fa4 si8 do | si sol fa sol si4 |
		sol4 fa8 do' si4 do8 si | sol fa sol si r do fa, sol |
		si4 do fa, | si8 sol fa4 si8 fa | sol1~|sol2. \ottava #0 r4 | R2.*2 |
		R1*2 |R2.*2 | R1*2 | R2.*2 | R1 r2 <la,,! do!>2\fermata |
		
		%%% Récitatif %%%
		}
	}
}

ActeDeuxSceneUnPiano = { \Piano <<
\new Staff = "droite" { 
    \relative { R2.*4 R2 R2.*2 R2 \clef bass r8 <sol lab sib dob re>\arpeggio ~ <sol lab sib dob re>2\laissezVibrer R2.*2 R2 |
R2. R2 R2.*2 R2 | r8 <sol lab si do mib>\arpeggio ~ <sol lab si do mib>2\laissezVibrer | R2.*2 R2 | R2. R2 | R2.*2 | R2 | } }

\new Staff = "gauche" { 
    \clef bass \relative { R2.*4 R2 R2.*2 R2 mi,,2.\laissezVibrer R2.*2 R2 |
R2. R2 R2.*2 R2 | mi2.\laissezVibrer | R2.*2 R2 | R2. R2 | R2.*2 | R2 |} }  >>
}
