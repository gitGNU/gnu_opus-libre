%-- Arkipel -- cbII-2.ly ------------------------------------------%
% (c) 2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Cbb =
\relative do' {
  \clef bass
  <mi,, sol'>2*3/2\mf\laissezVibrer ^"pizz."
  R2.*2
  \clef treble
  sol'''2.\ppp\CaV ^"arco"
  sol~\upbow sol2 sol4(~
  sol2.~ sol2 mi4) sol2( mi4)
  sol4( mi sol mi sol mi) sol( mi sol)
  re( fa re fa re fa) re( fa re)
  sol2( mi4) sol2( mi4) sol2 mi4
  sol( mi sol mi sol mi) sol( mi re)
  reb( lab reb~ reb) lab( reb~ reb) lab reb
  mi2( sol4) mi( sol fa)
  mi( sol mi sol mi sol)
  r <sol, mib'>--\mf\<\upbow q-- q--
  <dod, fad>->--\! r sold^"pizz."
  <dod fad>--^"arco" r8 <dod si'>-.
  r4 \clef bass mib,^"pizz." \clef treble
  <do' sib'>--^"arco" <dod si'>2~--
  q8 dod^"pizz." sold4 r
  R2 R2.*3
  sold'8.--\p ^"arco" si16~-- si8 sold~-- sold16 si8.--
  sold8.-- si16~-- si8 sold~-- sold16 si8.--
  sold8.-- mib16~-- mib8 do~-- do16 mib8.--
  \t 4 {do4-- mib8~-- mib-- do4--}
  R2.
  \clef bass
  <mib, lab>2--\mf r4
  q4.-- q-- r8 q~-- q2 q4->-- r2
  mi,4\p ^"pizz." mi
  r8 mi4 si'8
  mi,4 r8 mi si' mi, r4
  mi8 si' r2
  sib8 fa' sib, fa'
  r sib,4 fa'8
  sib,4 sib8 mi,
  la sol sib4
  do8 sib mib fa
  r sold\< fad si dod4
  mib8(\dyn "mf_solo" ^"arco" sib)
  mib-. reb4(-> do8-.)
  mib(\downbow fab-.) reb(\downbow do-.)
  dob-. mib->\downbow
  r reb4(->\downbow do8-.) mib(\downbow fab-.)
  reb(\downbow sol) solb(-. fab-.)
  mib(-> sib) mib-. reb4(-> do8-.)
  mib(\downbow fab-.) reb(\downbow do-.)
  mib->\downbow sib->
  reb4(->\downbow do8-.) mib4(->\downbow si8-.)
  reb(\downbow do) re(-. red-.)
  mi4(->\downbow si8) re(->~\downbow
  re dod-.) mi4--\downbow
  fa8(->\downbow re-.) dod-. mi4-- si8-.
  mi(\downbow si-.) re4--\downbow
  dod8-. mi4-- fa8-. re( dod)
  r sol'(-.\upbow fad-. fa-.)
  mi4\downbow re\downbow dod8-. mi->
  r fa->\downbow re(-. dod-.)
  r re(-.\upbow mi-. fa-.)
  fad(->\f dod) fad-. mi-> red-. fad(->\downbow
  dod) mi(->\downbow si) red-. fad(->\downbow dod)
  mi(-> la,?) red-. fad(-> sol) mi(->
  do?)\cresc red-. fad(->\downbow red)
  fad->\downbow sol,?->\upbow
  fad'(\< red) fad-- red-- fad4--
  \clef treble
  <sol si?>->--\dyn "f_molto"
  <sol si>2->-- <sol si?>->-- <sol si>4->--
  \t 4 {r4 sib8(\< reb) la( do)}
  <sol si>4->--\! q2->-- q->--
  r8 la:16\< sib: si:
  do4->--\! r2
  \clef bass
  <mi,,, sol' \parenthesize do>8.->--\dyn "ff_solo"
  q16->--~ q8 q->--~ q16 q8.->--~
  <mi sol'>8 q-> q-> q->~ q2~^"ten." q r4
  r8. mi16->--~\< mi8 mi(->-- mi->--) mi(->--~\ff
  mi16 sol do mib) do( sol mi sol)
  mi( sol) mi( sol)
  mi( sol) do mib do( sol) mi sol
  mi( sol) do mib do( sol) mi sol
  mi( sol) mi sol mi( sol) do mib
  do( sol) mi sol mi( sol) do sol
  \repeat tremolo 4 {mi( sol)}
  \t {mi8-- sol-- r} r4
  R2.*2
  \improvisationOn
  \t {re4\f ^"perc." re8} r re
  r4 re
  \improvisationOff
  r8 lab'16\< lab re re sol8
  \improvisationOn
  \t {re,4\! re8} r re r re
  \improvisationOff
  r do'16\< reb mib mi fad sol
  \improvisationOn
  \t 4 {r8\! re, re r re4}
  r re \t {r re8}
  \t 4 {r re re r re re r re4}
  \improvisationOff
  \t {mi4->\ff\downbow mi8->\downbow}
  r mi->\downbow
  r sib'-.\<\upbow red16 mi fad la
  \t {mi,4->\!\downbow mi8->\downbow}
  r sib'16\< sib red red mi8
  \improvisationOn
  re,8\mf ^"perc." re r4
  re8 re r4
  re8 re r4
  re8 re r4
  re8 re r4
  re8 re r4
  re8 re r4
  re8 re
  \improvisationOff
  \clef treble
  do''16\f\< red mi fa solb lab sib reb
  \improvisationOn \clef bass
  re,,,4\!
  \improvisationOff \xNotesOn
  re''_"col legno sulla cordiera" re re
  re8 \xNotesOff <mi,, la re sol>-+\arpeggDown
  \xNotesOn re'' \xNotesOff <mi,, la re sol>-+\arpeggDown
  \xNotesOn re'' \improvisationOn re,,
  re \improvisationOff \xNotesOn re'' r
  \improvisationOn re,,
  \improvisationOff \xNotesOn re''4
  \improvisationOn re,,8
  \improvisationOff \xNotesOn re''16
  \xNotesOff <la, re sol>-+\arpeggDown
  \xNotesOn re'8
  \improvisationOn re,,
  \improvisationOff \xNotesOn re''16
  \xNotesOff <la, re sol>-+\arpeggDown
  \xNotesOn re'8
  << {\xNotesOn re8 re} \\ {\improvisationOn re,,8 re} >>
  \improvisationOn re4
  \improvisationOff \xNotesOn
  re''8 \xNotesOff <mi,, la re sol>-+\arpeggDown
  \xNotesOn re''4 re8
  \xNotesOff <mi,, la re sol>-+\arpeggDown
  \xNotesOn re'' \improvisationOn re,,
  \improvisationOff \xNotesOn re''
  \xNotesOff <mi,, la re sol>-+\arpeggDown
  \xNotesOn re''
  \improvisationOn re,, re
  \improvisationOff \xNotesOn re'' re
  \improvisationOn re,,
  \improvisationOff \xNotesOn re'' re
  r << {\xNotesOn re} \\ {\improvisationOn re,,} >>
  r << {\xNotesOn re''} \\ {\improvisationOn re,,} >>
  r << {\xNotesOn re''} \\ {\improvisationOn re,,} >>
  r << {\xNotesOn re''} \\ {\improvisationOn re,,} >>
  << {\xNotesOn re'' re16
      \override Voice.NoteHead.style = #'default
      <la, re sol>-+\arpeggDown}
     \\ {\improvisationOn re,8 s} >>
  re''16 \xNotesOff <la, re sol>-+\arpeggDown
  \xNotesOn re'
  \improvisationOn re,, re8
  \improvisationOff \xNotesOn re''16
  \xNotesOff <la, re sol>-+\arpeggDown
  \xNotesOn re'
  \xNotesOff <la, re sol>-+\arpeggDown
  \xNotesOn re'
  \improvisationOn re,, re8
  \improvisationOff \xNotesOn re''16
  \xNotesOff <la, re sol>-+\arpeggDown
  \xNotesOn re'8
  \improvisationOn re,,
  \improvisationOff \xNotesOn re''16
  \xNotesOff <la, re sol>-+\arpeggDown
  \xNotesOn re'8
  \xNotesOff r
  << {\xNotesOn re re re} \\ {\improvisationOn re,, re re} >>
  R2.*3
  \clef treble
  r4 <sol''' sol>2->--~\ff q2 q4-- q--\< q(-- q--)
  \t 4 {
    <re,, sol''\CaV>4~\! <re la''\CaV>8~
    la'' \clef bass re,, la''
    re,, do' la~\harmonic la\harmonic do re,
    re\> la' do la\harmonic do la
  } re,\mf la' do4
  \clef treble la'~\CaV la2.^"(vib.)"
  mi'2.~\>\CaV mi~\pp\CaV mi4\CaV r2
  r2 <sol sol>4~\f q2 r4
  \clef bass
  \t 4 {
    dod,,8( sold) dod, sold'( dod,) sold
    dod( sold) dod sold'( dod,) sold'
    dod( sold) dod, sold'( dod,) sold
    dod( sold') dod, sold'( dod,) sold
    dod( sold) dod sold'( dod,) sold
    dod( sold) dod sold'( dod,) sold
  } dod(\> sold) si( fad) la( mi)
  \t 4 {
    la(\mf\downbow mi la) mi'( la, mi)
    la( mi la) mi'( la,) mi
    la( mi) sib'( mi,) do'( mi,)
    la( mi la) mi'( la, mi)
    la( mi la) mi'( la,) mi
    la( mi) sol( mi) fad( mi)
    la(-> mi la) mi sol(-> mi sol mi) fad->
    la(-> mi) sib' la( mi) sol( mi) fad( mi)
    la( mi) sol( mi) fad( mi) la(-> mi) sib'->
    sol(->\dim mi sol mi sol mi)
    fad( mi fad mi fad mi)
  }
  fa16(\p mi fa mi \repeat tremolo 2 {fa mi)}
  \repeat tremolo 4 {fa( mi)}
  \repeat tremolo 4 {fa( mi)}
  \t {fa4-- mi-- fa--} r4
  sol16(\dyn "fp_très net" lab) sib(-. sol-.)
  fa8--\downbow mi16(\downbow sol)
  lab-. fa8(\downbow mi16-.)
  sol(\<\downbow si) dod-. mi,-. re'( mib)
  fa-. lab,-. sib'(\f la-.) do,-. fad->~
  fad8 sol,16(->\p\downbow lab) sib(-. sol-.)
  fa8--\downbow mi16(\downbow sol) lab-. fa(--~
  fa mi-.) sib'(\< sol) lab fad'
  mib(\f\> reb) do re sib(-. dod-.)
  sol8\!\downbow fa\downbow
  mi16\upbow sol(\downbow
  lab-.) fa(~\downbow fa mi-.) sib'( lab)
  sol\< lab sib dob sib(\> lab)
  sol-. fa(\downbow->~ fa\! mi) sol(\downbow lab)
  fa8.(\downbow mi16) sib'\upbow lab sol8--
  fa16( dob'-.) sib(-. lab-.)
  sol8\downbow fa\downbow mi16-.\upbow
  sol(\downbow lab-.) fa(~\downbow
  fa mi) sol(\upbow lab)
  sib( dob) sib lab sol( fa) sib lab sol fa sib lab
  sol\cresc fa lab sol fa lab sol fa lab sol lab sol
  sib( mi,) red' si la fad' lab( sol)
  fa'(\< re,) do'( dod)
  mi8--\mf sib-- la-- fa-- mib-- do--
  re--\cresc dod-- si-- sold-- fad-- sol--
  mi-+\f \xNotesOn re'' re re re \improvisationOn
  re,, \improvisationOff \xNotesOn re'' re re
  \improvisationOn re,, \improvisationOff \xNotesOn re'' re
  \improvisationOn re,, \improvisationOff \xNotesOn re''
  r8 \xNotesOff fa,16\< fa mi'8\! r
  \improvisationOn re,, \improvisationOff \xNotesOn re'' re16
  \improvisationOn re,, \improvisationOff \xNotesOn re''8 re16
  \improvisationOn re,, \improvisationOff \xNotesOn re''8
  << {\xNotesOn re re} \\ {\improvisationOn re,, re} >>
  \xNotesOff r4 \t {lab'''\<\upbow sol fad}
  \improvisationOn re,,\! re8 re re re
  \improvisationOff r8 fa''4.--\mp\upbow
  \clef treble
  sib2\pp reb4~ reb sib reb
  sib2 sib4 reb sib2
  sib4. reb sib reb sib reb
  sib reb sib reb sib\cresc reb
  sib reb sib reb sib\mp reb sib\> reb
  dod4(\pp la) dod dod( la) dod dod dod8( la dod4)
  dod( la) red dod( la) red dod dod8( la red la)
  dod4( la) red dod( la) dod
  <lab re>4. do <lab re> do <lab re> do
  <lab re> do <lab re>2 r4
  sol( mi) sol mi4. sol mi sol
  mi\dyn "pp_sempre" sol mi sol
  mi4 sol mi~ mi sol mi
  \clef bass
  sol,4. mi' sol, mi
  sol,2.~ sol2 r4
  red''8(\mp\downbow si) red( si red4) r
  sol,,2\f fa4(~ fa8 mi) sol\< lab sib4\!
  r8 la4(-> sol8) sib( do) la4--\upbow
  \t {sold4(\> si8)\!} r4
  la8(\upbow sold) fad-- fa-- sol4--
  r8 fa4(\upbow\dyn "(f)" mi8) lab(\< sib)
  \t {sol4(-- la--) dod--\!~}
  dod2~ <dod fad\harmonic>~ q4 r
  si8(\dyn "f_(ordin.)" dod re mi fa) si,(
  dod re mi fa) si,( re
  mi fa sol sib) si,( re
  mi fa sol sib do) si,_"simile"
  re mi fa sol sib do
  reb si, re mi fa sol
  sib do \clef treble
  dod red fad sold
  sol,\dyn "(f_sempre)" sib do dod red fad
  sold la si do, dod red
  fad\> sold la si re4~
  re2.~\dyn "mf_intenso" re4
  r8 si4(\upbow mi8)
  re2.(~ re8 mi) \t {si4( sold) re'~}
  re2.~ re4 r dod8(\>\upbow si)
  \t {lad4( sold8~} sold4) si
  mi(\mp re2)~ re2.~ re~
  re~ re~ re~ re~
  re~ re4 mi\pp re~ re mi re~ re mi re~
  re mi re r re(\upbow mi)
  do( mi do fa do mi) do( fa do)
  sold4. red' sold, red' sold,4( red'2)
  sold, red'4~ red sold, red'
  r4 r8 red8~ red4
  fa,( do' fa,) do'( fa,) do'~ <fa, do'>4. q
  <reb lab'>2.~ q4. do' <reb, lab'> do'
  <reb, lab'>2 q4(--~ q q2--) <dod la'>2.~ q r4
  fad(\pp la fad la fad la)
  fad( la fad la fad la)
  mid( sold mid sold mid fad)
  \clef bass
  r4 r8 la,,4.\p\laissezVibrer ^"pizz."
  <mi sol'>2\plak\laissezVibrer s4
  \clef treble
  sol'''2.~\ppp\CaV sol~\CaV sol~\CaV sol4\CaV r8
  sib,\<^"pizz. al fine" dod mib
  sol4\mf r8 sol\> mib sib
  sol4\!\CaV r2 R2. r4 r8
  sib\< re mi sold4\mp r8 sold\> mi sib
  sol4\!\CaV r2 R2.*2 r4 r8
  si?\p dod sold' lad4 r2
}
