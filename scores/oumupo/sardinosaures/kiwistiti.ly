%-- Sardinosaures -- kiwistiti.ly ---------------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

KiwistitiVoix = \relative do' {
  \key mib \minor
  \time 3/4
  R2.
  mib16 mib solb lab sib8 lab16 solb lab8 mib |
  sib'4 r16 reb8 sib16 reb lab dob8 |
  r mib, r16 mib'8 reb16 mib do reb lab |
  r8 solb16 lab sib si8. reb16 sib fab' mib, |
  R2.
  \key si \major
  red8 sold16 red dod8-. red-. sold-. red-. |
  dod4 r8 dod16 red fad red fad red |
  si'4 r8 red16 dod lad sold r8 |
  dod8 si4 dod8 la4 |
  r8 fad16 sold lad8 sold16 lad si8 sold16 fad' |
  si8 r16 la, dod fad, red sold si,4 |
  r dod8 red dod red~ |
  red sold4 dod8~ dod4 |
  si2 r4 |
  \key mib \minor
  mib,16 mib solb lab dob8 lab16 solb lab8 reb |
  sib8 mib,16 la \times 2/3 {solb'8 sib, mib} reb,4 |
  sib'8 lab sib lab mib'4~ |
  mib8 solb, dob4 r8 reb,16 mib |
  solb8 lab16 dob~ dob4 reb16 sib mib lab, |
  dob'4-. r2 |
  \key si \major
  r2 r8 fad,,-. |
  red-. dod-. la4-- dod8-. red-. |
  si4-- r16 red lad'8-. red,16 lad'8-. red,16-. |
  lad'4-- r16 dod, red fad lad8 sold16 dod~ |
  dod8. lad16 red4. r8 |
  r8 fad,16 si~ si4 r |
  \key mib \minor
  mib,16 mib solb lab sib8 lab16 solb lab8 reb |
  dob4. reb8 lab solb |
  mib16 solb lab sib dob8 lab16 sib reb mib r8 |
  r4 sib8 lab sib solb~ |
  solb lab dob,4 reb8 mib |
  lab2 r4 |
  mib8 mib solb lab sib4 |
  r lab sib8 lab~ |
  \times 2/3 {lab4 sibb mib,} solb |
  r4 mib' reb |
  mib solb, sib |
  reb,2 r4 |
  \key si \major
  R2.
  r8 si'16 lad r8 si r16 sold8. |
  r16 lad red, fad dod4 r \bar "|."
}

KiwistitiPianoMd = \relative do' {
  \ottava #1
  r16 si''' \dyn "pp_staccato molto"
  si, si, \mg si, si, si, \md si''''''
  \ottava #0 r4 R2.*11
  si,,,2.
  si,16 si si si si do si si si si si si |
  si'4 <si, si'>16 <si si'> <si si'> <si si'>
  <si si'> <si si'> <si si'> <si si'> |
  <si' si'>8 r r16 <la si la' si> r8
  <la si la' si>16 <la si la' si> <la si la' si> <la si la' si> |
  r2 r16 <si si'> <si si'> <si si'> |
  s2.*3 s4 la,2 |
  
}

KiwistitiPianoMg = \relative do' {
  \clef bass
  r4 s \ottava #-1
  si,,, si si si |
  si si si si si si si si si si si si |
  r si si si si8 si si16 si si do |
  si' do si si si si, si' si <si do> si si si |
  si, si' si si si, si' <si mi> si si, mi si' si |
  si si si si si si si, si' si si, si' si |
  \ottava #0
  si'^"loco" si, si si si' si si si si si si si |
  si \ottava #-1 si,, si si \ottava #0
  si''^"loco" si, si' si si, si' si si |
  si, si si si' \ottava #-1 si,,
  \ottava #0 si'^"loco" si si si si si si |
  <la' si> si, si si <la' si> <la si> si, si
  \ottava #-1 la,, si \ottava #0 la'^"loco" si |
  si'' si si si, si' si si, si si' si, si si |
  <la' si> \ottava #-1 <la,,, si> \ottava #0 <la' si>^"loco" <la' si>
  si' si si si r si si si |
  si si si si si si si si si si si si |
  <si,, si'>4 \ottava #-1 si, \ottava #0 <si'' si'> |
  si'16 si si si r2 |
  \ottava #-1 si,,,16 si si si si si si si' r4 |
  <la, si>16 \ottava #0 <la' si>^"loco" <la' si> <la' si>
  si si si si r4 |
  si,16 si
}
