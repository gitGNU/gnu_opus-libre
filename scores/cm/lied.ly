% Harmoniques -- lied.ly ------------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"


LiedIPianoMd =
\relative do' {
  \key si \minor
  si'4.(\p\> mi,2.)\! fad4.(\> si,2.)\!
  << {sol'8-. sol-. sol-. sol-. sol-. sol-.}
     \\ {mi4( re8 do4.)} >>
  <lad fad'>8^( sold' <dod, lad'>)
  <si si'>4~ q16 fad'( si4.) r
  si4.( mi,2.) fad4.( si,2.)
  << {fad'8-. fad-. fad-. mi-. mi-. mi-. mi( re dod)}
     \\ {<fad, si>4( la8 <sol do>4.) <fad lad>} >>
  si4~ si16 fad'( si4.) r
  r4 r16 <dod dod'>( mid2.)
  r4 r16 <re re'>( mid2.)
  r8 <re, la' re> <re la' do>
  \tuplet 2/3 4. {<re mi sol si>8. <re sol si>16}
  \tuplet 2/3 4. {<red sold sid>8. <red fad sid>16}
  <dod mid dod'>2. r4.
  <fa sol si>8-. <mi sol si>-. <re sol si>-.
  <do sol' do>-. q-. <mi sol do>-.
  \tuplet 2/3 {<mi fad lad>8. <dod fad lad>16}
  <re si'>4~ q16 fad( si4.) r
}

LiedIPianoMg =
\relative do' {
  \key si \minor
  \clef bass
  si4.( mi,2.) fad4.( si,2.)
  <mi, do'>4( <sol re'>8 <do mi>4.) <fad, mi'>
  <si re>4~ q16 fad'( si4.) r
  si4.( mi,2.) fad4.( si,2.)
  <re, re'>4. mi fad
  <si re>4~ q16 fad'( si4.) r
  \pl la1*9/8 {r4. mid'2.}
  fad,4. <sold mid'>2.
  fad4.
  \tuplet 2/3 4. {sol8. sol16 <sold, sold'>8. q16}
  dod2. r4.
  sol'4 fa8 mi4.
  \tuplet 2/3 4. {fad8. fad16}
  si,4~ si16 fad'( si4.) r
}

LiedIBrice =
\relative do' {
  \tempo "Mit viel Leid"
  \time 9/8
  \clef bass
  \key si \minor
  R1*9/8*4
  si4 si8 si4. mi,
  re4 do8 fad4. si,
  fad'8 si,8. do16 sol'4 fad8 \tuplet 2/3 {sold8 lad}
  si2. r4.
  dod4.~ \tuplet 2/3 4. {dod8 si la sold}
  la4 re,8 sold4. dod,
  \tuplet 2/3 4. {la'8. si16 mi,8. si'16 sid8. fad16}
  dod'2. r4.
  \tuplet 2/3 8. {si16([ la)] la([ sol)]}
  \tuplet 2/3 8. {si,([ do)] sol'([ la)]}
  mi8( lad) mi\noBeam si'2. r4.
  \bar "|."
}

LiedIIBrice =
\relative do' {
  \time 3/4
  \tempo "Brindisi"
  \key sib \major
  \clef bass
  R2.*4
  sib2 si4 do8 fa, fad sol re'4
  sol,2(~ sol8. la16) fa2 r4
  r mi mib re do sib fa'2.~ fa4 r si,
  sol'2 dod,4 re8 mi fad4 re'
  sol,2(~ sol8. la16) fa2 r4
  r fa do' fad, re'4. sol,8 re'2 r4
  R2.*2 r2 sol,4
  fa4. do' sib mib,? la re,8 re r
  mi4 fad re' sol,2(~ sol8. la16) fa2 r4
  r do' fa, si mib, reb sol2.(~ sol8 lab)
  re,4 mib8 si' re2.~ re8 r mib4 la, mi'
  la,4.\fermata sib8 fa'2.~ fa~ fa4 r2
  R2.*2 \bar "|."
}

LiedIIPianoMd =
\relative do' {
  \key sib \major
  r4 <sib re fa>-. <re sol sib>-.
  <fa sib re>-.\arpeggio r2
  r4 <sib, re fa>-. <re sol sib>-.
  <fa sib re>-.\arpeggio r2
  r4 <fa, re'>-. <re' fa>-.
  <mib sol>-. <do mib>-. <fa la>-.
  r <fa, re'>-. <sib sol'>-. <re fa>-. r2
  r4 <sol, do>-. <sib do sol'>-.
  <mib sol sib>-. r <do mib fa>-.
  r <fa, re'>-. <do' re fa>-. <si re sol>-. r2
  r4 <do mib sol> <dod mi sib'>
  <re fa sib> <mib do'> <do fad la>
  <sib do sol'> <do sol' sib> <sol' sib do>
  <fa sib re> <re sib'> <sib' reb mi sol>
  <la do fa>2 r4 R2.
  r4 <fa, re' sol>-. <re' fa sib>-.
  <sol sib re>-. r2
  r4 <fa, re' sol>-. <re' fa sib>-.
  <mi sol dod>-. r2
  <la, fa'>4-. <fa re'>-. <do' mi la>-.
  <sib mib sib'>-. <sol mib'>-. <sib sol'>-.
  <la re la'>-. <fa re'>-. <la fa'>-.
  <do fad>-. <re sib'>-. <fad la>-.
  <re la'>-. <sol, re'>-. <sib sol'>-.
  <la fa'>-. <sol mi'>-. <fa re'>-.
  <fa lab> <sol do> <lab fa'>
  <sol si sol'> <la do sol'> <si fa' sol>
  <do mib sol> <mib do'> <sol mib'>
  <mib sib' solb'> <fa sib fa'> <solb sib mib>
  <fa sib re fa>2 r4
  <la do fa la>2 r4 R2.
  r4 <re fa re'> <sol sib sol'> <fa re' fa>
  <re sib' re> <sib sol' sib> <fa re' sol>
  <sol sib fa'> <fa sib re>
  <sib, sib'>8 la' <sib, sib'>4 <fa fa'>
  R2.
}

LiedIIPianoMg =
\relative do' {
  \key sib \major
  \clef bass
  <sib, fa' re'>4\arpeggio r2 fa4 r2
  <sib fa' re'>4\arpeggio r2 fa4 r2
  sib4 r2 fa4 r2 sib4 r2 fa4 sib si
  do r2 fa,4 r2 sib4 r lab sol r2
  do4 r2 re4 r2 mib4 mib, mi fa r2
  <fa mib' la>\arpeggio r4 R2.
  sib4 r2 fa4 r2 sib4 r2 la4 si dod
  re r2 sol,4 r2 fa4 r2 re'4 r do
  sib r sol re' r2 re,4 r2 re4 r reb do r2
  <do do'>4 <re re'> <mib mib'>
  <fa fa'>2 r4
  <fa mib' do'>2\arpeggio r4 R2.
  <sib sib'>8 <la la'> <sib sib'>4 <fa fa'>
  <sib sib'>8 <la la'> <sib sib'>4 <fa fa'>
  <sib sib'>8 <la la'> <sib sib'>4 <fa fa'>
  sib8 la sib4 fa
  R2.
}

LiedIIIGrille =
\chordmode {
  sol2:m6 re:7/la
  sol:m6 re:7/la
  sol:m6 re:7/la
  sol:m6 re:7/la
  mib:maj7/sol re:7/la
  sib:6 sol:7.9+/si
  do1:m7 mib:7
  la:m7.5- re:7
  sol2:m6 re:7/la
  sol:m6 re:7/la
  sol:m6 re:7/la
  sol:m6 fa:7/la
  sib1:maj7 mib:7
  lab2:7 re:7.9+
  sol:m6 re:sus4
  sol:m6 re:sus4 sol1:m6
}

LiedIIIBrice =
\relative do' {
  \tempo "Mild Swing"
  \key sol \minor
  \clef bass
  R1 r2 r8 re4 sol,8
  re'1~ re4 sol,8 fad reb' do4 sib8
  mib,4. re8~ re2~ re4 r la' sib
  mib,4. sib'8~ sib2
  r8 sib4 mib,8 \t {sib'4 do sib}
  la1~ la8 r sib4~ sib8 do4.
  re8~ re4 dod8 re4 r
  r do8 sib reb do~ \t {do fa, mib}
  la sol4.~ sol2~ sol4 r r dod,
  la'8 re,4.~ \t {re4 la' mib}
  sib'2.\prall
  r4 r mib,~ mib8 \acciaccatura solb fa4.
  r4 sol2.~ sol1~ sol1\fermata
  \bar "|."
}

