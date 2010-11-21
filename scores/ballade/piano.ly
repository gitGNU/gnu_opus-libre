%-- Ballade -- piano.ly -------------------------------------------%
% (c) 2003-2010 Valentin Villenave <valentin@villenave.net>

\language "italiano"

PianoMd = \relative do' {
  \pl <mi fa>8-.\laissezVibrer <mi' fa mi' fa>-.\laissezVibrer
  r r2 | R2.

  %%% A %%%
  <do, sib'>8(\pp <dod la'> <re sol>4)
  \pl mi4 {do'8( sib)} |
  \pl {fa4 s} {mi'8( reb <reb, sol do>4)}
  <mib sib'> |
  <solb reb'>( <mib sib'>)
  \pl {lab8( sib)} mib4 |
  <lad, dod>8( <si mi> <dod fad>4)
  <fad, la>8( <sol sib>) |
  <sold dod>4( <sol sib>)
  <sold dod>8( <lad fad'>) |
  <do mi>8( <reb sol> <mib do'>4)
  <sol, fa' sol>-- |
  <re mi mi'>2.-- r8 fa,32( si la red) |

  %%% B %%%
  <dod mi dod'>4(\mp <re sol re'>8 <mi sib' mi>
  <sol si sol'>2)~ |
  <sol si sol'>8( <fa' lab fa'>)
  <mi sol mi'>( <re fa re'>4 <do mi do'>8) |
  <si fad' si>( <mi la mi'> <fa, re' fa>4) |
  <fad re' fad>8( <fa dod' fa>4)
  <si re si'>4-- <re, fa re'>8-- |
  <si red lad'>2-- |
  r8 <sol'' sol'>4( <fad fad'>8
  \ottava #1 <do' do'> \ottava #0
  <mib, mib'>) |
  \t {<do? do'?>( <si si'> <sib sib'>}
  <sol sol'>4)~ |
  <sol sol'>( dod\> si sib)\!

  %%% C %%%
  \pl {\oneVoice \tieDown <sol, si re sol>2 \pp ~
  \voiceTwo
  \hideNote <sol si re>~
  \hideNote <sol si re>~ \oneVoice
  <sol si re sol>4 \tieNeutral r }
{ s2 \appoggiatura sib'16~ <sib sib'>4-. r %%FIXME #1333
  \appoggiatura lab16~ <lab lab'>4-. r s2 }
  R2
  \pl {<dob, fa sib>2\pp ~<dob fa sib>}
  {dod'4 re8 mi sol2}
  <lab, sib>2
  \pl <lab sib> {dod4( re)}
  \pl <lab sib>2. {dod4\> re mi\!} |

  %%% D %%%
  
}

PianoMg = \relative do' {
  \clef bass
  R2.*2

  %%% A %%%
  la2.-- sol-- mi-- mi,-- |
  <mi mi'>-- <sol sol'> <la mi'>1-- |

  %%% B %%%
  \t {re,8( la' re} la'--) re,--
  \t {re,( la' re} la'--) re,-- |
  \t {la( re la'} re--) la-- re,-- la-- |
  \t {sold( mi' sold} mi'--) mi,-- |
  <sold,, sold'>4 \t {red''8( sold red'} sold,--) red-- |
  sold,( re' \t {fa fad sold)}
  \pl <la, la'>2.\laissezVibrer <re' mi>\laissezVibrer |
  <dod,, dod'>2
  \pl <re re'>1 <la'' mi'> |
  <fa,, fa'>2~ \hideNote q~ \hideNote q~ q4 r |
  R2*5 R2. \clef treble

  %%% D %%%
  
}