%-- Impromptu -- piano.ly -----------------------------------------%
% (c) 2004 - 2010 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

Violon =
\relative do' {
  \time 7/4
  \tempo "Andantino" 4 = 72 % was 60 originally
  R1*7/4
  la4. sib8~ sib1 r4 |
  la2~ la8 la4 sib8~ sib2 r4 |
  r r8 la2 sib4 mib8 mi2~ |
  mi4 r r8 la,~ \t {la sib mib}
  mi8 sol4 fad8 la4~ |
  la r8 fad~ \t {fad dod mib}
  sib4 
  \pl {\oneVoice do8 sol~ sol2~ \voiceTwo sol2~ sol8}
  {s2. r8 <la' mi'>\stopped r <la mi'>\stopped r4*1/2}
  sol,4 la8 sib2.~ |
  sib4 r \t {r8 sol la} re do16 re sol8 re16 sol
  la re, sol la re4~ |
  re r8 mi~ mi4 \acciaccatura fa8 mi2 r8 mi~ mi16 re la mi' |

  la2 la4. sib8~ sib2.~ |
  sib8 la,~ la4\glissando la'8~ \t {la16 sib la}
  sold8. la16 sib4~ sib8 <la, la'>~ \t {<la la'> la' sib} |
  <\blackNote re,, \blackNote la' si'>2 do''~ do8 re,
  do'4 \t {r8 si, re,} | si''?4. do8~ do2~
  \t {do8 si, do} \t {si re, la'} si mi |
  lad4. si8~ si4. si8 si, mi lad si~ si r |
  si4. do8~ do4~ \t {do8 lab mib}
  \t {solb do, fa} si do~ do16 si8. |
  do8 dod4.~ \t {dod8 sib do} \t {dod sol sib}
  \t {do dod fa,} \t {sol sib si} do dod |

  R1*7/4
  r2 la,,4. sib8~ sib2 re4 |
  la4. sib8~ sib2 re4 mib fa |
  la8 sib la fa mib fa
  la sib la fa mib fa la4 |
  lad4. si8~ si2~ si8 lad4 red lad8 |
  si4~ si8 lad4 fad' lad,8 si red lad fad'4. |
  fad8 mi si fad'~ fad si, mi si'
  fad mi si fad' mi16 fad si la |

  mi'2. r8 la,,,~ \t {la re la'}
  mi' re, la''16 la, re' mi, |
  mi'2 <la,, mi'>8 <sib fa'> <re la'> <la mi'>~
  \t {<la mi'> <fad dod'> <fa do'>} <re la'> <la re>
  \pl {la'4\glissando \oneVoice la'4.}
  {mi8*2\stopped s4. } <sol,, re'>8~
  \t {<sol re'> la' <sol, re'>}
  <la' la'> sib' <re,, la'> sib' r2 |

  la,4. sib8~ sib4~ \t {sib8 fad' fa}
  la fad \t {dod' la sib} \t {la fad fa} |
  la,4. sib8~ sib4~ sib8 mib~
  \t {mib dod fad} mi la sol do |
  la' la, la, sib'~ sib16 mib,8 fa16~
  sib,16 do fad sold \ttt {mib fa si dod fad, sold}
  re' mi si re \t {mi8 si' la} |
  mi'2.~ mi2 r2\fermata |

  <do,, mi>4 <do mi> q q q q q |
  q q q q q q q | q q q q q q r |
  la2.~ la2~ la8 sib4.~ |
  sib2 la~ la4. sib8~ sib4 |
  sib4. la8~ la2~ la4. sib8~ sib4 |
  sib4. la8~ la2~ la2. |
  sib4. la8~ la2~ la2. |
  la1*7/4\fermata \laissezVibrer \bar "|."
}