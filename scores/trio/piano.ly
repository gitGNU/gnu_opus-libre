%-- Trio -- piano.ly ----------------------------------------------%
% (c) 2003-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

PianoMd = \relative do' {
  r4-\dyn "ff_(décidé)" \ottava #1
  \pl {
    <sol' dod fad>2_\sfz ~ <sol dod fad>8 <dob re mi sib'!>_>
  } {
    <sib' mi lab do!>2~ <sib mi lab do>8 <reb fa sol lab!>^>
  }
  r4
  \pl {<lad, red fad>8_>_. r r2} <do' re la' mi'>2.^> |
  \ottava #0
  R1*3 R2*7 R1*2 R2 R1*2 R2*4
  r2 r4 r8. dod,32( fa) |
  re2.-- r8. dod32( fa) |
  \t {re4--( dod-- fa4*3/4--) \slashStem \graceNotes \lightBeams {dod32( fa)}}
  \t {re4--( dod-- fa4*3/4--) \slashStem \graceNotes \lightBeams {dod32( fa)}} |
  re2.--_\dyncresc "(poco a poco più intenso ma senza cresc.)" r8. dod32( fa) |
  \t {re4--( dod-- fa4*3/4--) \slashStem \graceNotes \lightBeams {dod32( fa)}}
  \t {re4--( dod-- fa4*3/4--) \slashStem \graceNotes \lightBeams {dod32( fa)}}
  re?2..->--_\! r32 fa,( dod' fa) |
  re4..-- dod32( fa) |
  re8( dod\< \t {dod' fa, fa')} |
  R1*2\! R2
  r2 r4 r8. re,32( fad) |
  dod1~ dod4.. re32( fad) |
  dod2.. r8 |
  dod2~ \t {dod4( re fa4*3/4) \slashStem \graceNotes \lightBeams {re32( fad)}}
  dod1~ dod~ dod2 |
  \pl {<la, re sol>2--_( <la re sol>--)}
  {r8 dod'~ dod2.} |

  %%% Tempo giusto %%%
  <si mi sold si>2.\arpeggio -\dyn "f_dolce espr."
}

PianoMg = \relative do {
  \clef bass
  <do,, do'>4~ \hideNote <do do'>1*3/4 s1
  R1*3 R2*7 R1*2 R2 R1*2 R2*4 \clef treble
  r2 <la''' sol' la>(--~ -\dyn "pp_(tre_corde)" |
  <la sol' la> q--~ q q--) |
  <sib re sol la>2(-- q--~ q <sib mib sol la>--) |
  <si red fad la>2*1/2(-- s4\< q2--) |
  <do mib solb si>--(\mf <do mi sol si>4-- <dod mid sold si>--) |
  R1*2 R2
  r2 mi2--(-\dyn "pp_(una_corda)" |
  <si la'>--) <si la'>~ q |
  <sol si lad'>--( q--~ q q--) |
  \clef bass
  <mib la re>--( q--~ q q--)~ q |
  mib <sib mib> |

  %%% Tempo giusto %%%
  <\whiteNote fa, fa'>4.
}
