%-- Sonate pour contrebasse et piano -- piano.ly ------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

IPianoMd =
\relative do' {
  \mg re,16 _\dyn "mf_quasi non legato"
  lab' \md \clef bass sol^"très égal" re'
  \mg re sold, \md la? re,
  \mg re lab' \md sol? re' \mg re sold, \md la re,
  \mg re lab' \md sol re' \mg re sold, \md la re,
  \mg re lab' \md sol re' \mg re sold, \md la re,
  \mg re lab' \md sol re' \mg re sold, \md la re,
  \mg re lab' \md sol re' \mg re sold, \md la re,
  \mg re lab' \md sol re' \mg re sold, \md la re,
  \mg reb( lab') \md sol re'? \mg mib( lab,) \md la? re,
  \mg reb(_\dim lab') \md sol re' \mg mib( lab,) \md la re,
  \mg reb( lab') \md sol re' \mg mib( lab,) \md la re,
  \mg reb( lab') \md sol re' \mg mi( sold,) \md la re,
  \mg do(_\p lab' \md sol? re') \mg mi( sold, \md la re,)
  \mg do( lab' \md sol re') \mg mi( sold, \md la re,)
  \mg do( lab' \md sol re') \mg mi( sold, \md la re,)
  \mg si( \md \hairpinText "(poco)" lab'\< sol re'
  fa\! \mg sold, la? re,)
  sib( \md \clef treble lab'\< sol re' fad\! \mg sold, la re,)
  la(_\p _\cresc \md lab' sol' re) \mg mi,( \md do' sold' la,)
  \mg lab,( sol'? \md la'? sib,) \mg mib,( \md sib'' la, re)
  \mg sol,, \md si''( la, dod) \mg fa, \md do''( \mg mi,, \md red')
  \mg solb,, \md dod''( la, fa') sib, re'( mi, \mg mib,)
  fa,(_\! \< sol' do, sib') \md mib'(\mf \> lab, reb, la')

  % A %
  re,(\pp \< la lab mib' re la' lab mib')
  re(\mp \> sol, sold dod, re\! \mg sol, sold dod,)
  re( la' lab \md mib' re\< la' lab mib'
  re la' lab mib') re(\mp \> sol, sold dod,
  re sol, sold dod, re\! \mg sol, sold dod,)
  re_( la' lab \md mib' re la' lab mib'
  \ottava #1
  re la' lab mib' re la' lab mib')
  re(\dyn "pp_sempre" sol, sold dod, re sol, sold dod,
  \ottava #0
  re sol, sold dod, re \mg sol, sold dod,)
  re( la' sold re' dod sol lab mib)
  \voiceOne
  re( la' sold re' dod sol lab mib)
  re( lab' sol \oneVoice \md dod re lab' sol dod)
  mib,( la sold re' dod\cresc sold') la( re,
  mib lab, do sol lab \mg mib) \md la'( re,
  fa do dod la) la'( re, fad sib,)
  la'( mi fa dod) la'( fad sold red)
  <sib sib'>4.(\dyn "mf_(en dehors)" _\> <la la'>8~) <la la'>2_\!
  r4 <sib sib'>2(\> <la la'>4~)\!
  q8 <sib sib'>\>( <la la'>2)\! <sib sib'>4~--
  q4 q2-- <la la'>4~
  q <sib sib'>8(\> <la la'>~)\! q2
  \t {<sib sib'>4(\> <la la'>^"espr." <fad fad'>~)\!} <fad fad'>2
  <sol sol'>8(\dyn "mp" <fad fad'>~) q2 r4
  r <do? sol'>2^-^(_\p <do sol'>4^-)\laissezVibrer
  \mg \voiceOne
  fad,,16^( dod' mi sol
  \md \oneVoice
  do?\< mi sol la sib\> la sol mi
  \mg \voiceOne
  do\! sol reb sol)
  \md \oneVoice
  r4 <do sol'>2^-^( q4^-)\laissezVibrer
  \mg \voiceOne
  fad,,16^( re' la'
  \md \oneVoice mib' lab\< do fa? sol
  fa\> re dod la fa\! re dod la
  fad4) <do' sol'>2^-^(_\mp q4~^-)
  q8 <re la'>4^( <sib fa'>8) <do sol'>2^-
  <lab mib'>8^.^- <sib fa'>16^( <sol re'> <lab mib'>2) r4
  r8.\cresc <re la'>16^( <do sol'>4) <fa do'>16^( <mib sib'>4..)
  <dod sold'>8^(^. <si fad'>^. <dod sold'>^. <sold red'>^.)
  <sib fa'>^(^. <lab mib'>^. <sib fa'>^. <fa do'>^.)
  <sol re'>^(^. do^. re^. la^.)

  % B %
  sold1~\dyn "fpp" \startTrillSpan
  sold1~
  sold1~
  <fadd sold>~
  q~
  sold
  r4\stopTrillSpan
  <si' la'>16^(_\dyn "pp_clair" si' dod <mi, red'>^.)
  r <fad mi'>^( <sold fad'>8^.) <lad sold'>4^.^-
  r2 \ottava #1 <do sib'>4.-.-- <sold fad'>8-.
  r <lad sold'>-. \ottava #0 r4 r2
  \clef bass
  % Virtually impossible to play in tempo,
  % but that’s the intended effect.
  \lightBeams \graceNotes \tttt 4 {
    sold,,16(\dyndim "pp_cresc. molto"
    la sold sol sold sol fad)
    fa( sold sol fad sol fad fa)
    mi( fa fad sold fad fa mi)
    mib( sol fad fa mi mib re)
  }
  \lightBeams \graceNotes \ttt 4 {
    reb( mib mi fa fad sold)
    fad( sol la lab sib si)
  }
  \clef treble

  % C %
  do'16\dyn "f_quasi non legato"
  reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb fa sol <fa do'> sol fa reb
  do reb mib fa <mib do'> fa mib reb
  do reb mib fa <mib do'> fa mib reb
  do reb fa sib <reb, do'> sib' fa reb
  do reb fa sib <reb, do'> sib' fa reb
  do( reb fa sol <fa do'> sol fa reb)
  do( reb fa sol <fa do'> sol fa reb)
  do( reb fa sol fa reb do la)
  sold( mi dod lad) sol'( mi dod lad)
  \clef bass
  dod( lad sol do mi,) dod'( lad sol
  do mi,) dod'( lad sol do mi,) dod'(
  lad sol do mi,) dod'( lad sol do)
  fa,?( sol fa sol sib do sib sol)
  fa( sol fa sol sib do sib) fa(
  sol\< do reb \clef treble fa sol sib reb mib)
  <sol reb'>(\fp lab reb lab sol lab sol mib
  reb mib reb sib sol fa reb do)
  sol( do reb fa sol fa reb do)
  sol( do reb fa sol fa reb do)
  sol( dod re fa sol fa re dod)
  sol( la dod re sol re dod la)
  re( dod \mg la mi) sol( mi dod si)
  mi( si sol fad) \md r4
  r r8 \pl \crossStaff {\mg \stemUp <do' sol'>8~ q2} { re'?8~^- re2}
  <fa, do' sol'>4^-\laissezVibrer si?16 do fa sol
  sib\dyn "p_quasi non legato"
  dob mib fa <mib sib'> fa mib dob
  sib dob mib fa <mib sib'> fa mib dob
  sib dob mib fa <mib sib'> fa mib dob
  sib dob mib fa <mib sib'> fa mib do
  sib do mib solb <mib sib'> solb mib do
  sib do mib sol <fa sib> sol fa reb
  do\> reb do sol fad sol fad reb
  \voiceOne r2\! \oneVoice <mib' mib'>16(_\mp <re re'>4..)~
  <re re'>4 r r8 <la la'>(_\pp <sold sold'>4~)
  q2 r2 r

  % D %
  \ottava #2
  re'''4.(_\dyn "mf_cuivré" mib8~) mib2
  r4 re4~-- re8 fa16( re mib4~)
  mib2~ \t {mib4 re( mib)}
  r2 re8( lab')-. sib?-. fa-.
  sol16( re mi!8~) mi4
  dod8-. la'16( sib,~) sib8 mib-.
  fad,4-- \ottava #0 do-- r do--
  r r8 do-.-- r2
  \ottava #1
  fad4._\dyn "mf_sempre" sold8~-- sold mi-. fad4
  re8-. mi16( dod re4) r8 sold-. fad4
  si8-.\cresc la~ la16( sold fad sold)
  red( dod red sib) do( sib fa mib)
  \ottava #0
  fa( sib, la sib) fa( mib fa do)
  \clef bass

  % E %
  re4--\dyn "fpp" \ttt {re,?16( mib re mib re mib}
  re mib re mib re mib re mib
  re4) r <mib, la>8->-. r r4
  re'16( mib re mib re mib re mib
  re') mib, re(\< mib re mib re mib
  re'4)\mp r \pitchedTrill re,?2~\pp \startTrillSpan mib
  re1~
  \t {re8(\p \stopTrillSpan sol lab} \t {mib' lab, sol)}
  \t {re( sol lab} \t {do? fa,? sib,)}
  \t {sib'( mib, lab,)} \clef treble
  <fad'' fad'>4~--^\dyn "mf_en dehors"
  q8 <sold sold'>4-- <mi mi'>8-.
  <fad fad'>2--_\> <re re'>4-.
  <mi mi'>16(_\! <dod dod'> <re re'>8~)
  q4 <sib' sib'>16(->_\< <lab lab'>8.)
  <dod dod'>8(-> <si si'>4.~)
  <si si'>2._\! r4
  <do! do'!>16(-> <si si'>4..)
  r16 <mi,, fa> <mi' fa> q <mi' fa> <mi, fa> q mi,
  fa(^\mp do' reb lab' reb, do) la( do
  reb lab' reb, do) fa,( do' reb lab'
  reb, do) la( do reb lab' re, do)
  \clef bass
  la( do reb do la lab) reb,( lab'
  la\dim do la lab) reb,( lab' la do
  la lab fa mi) fa( mi reb do)
  \pl {\oneVoice \t {lad4(\p si fad'} sol2~) sol1}
  {s1 r2 \clef treble \oneVoice <do? sol'>--\laissezVibrer}
  \ottava #1 sol'''4._\mp la4-- fa8-. sol4~
  sol8 \ottava #0 <mib, mib'>4--
  \pl {s8 s2 r2}
  {\oneVoice <fa fa'>16( <re re'> <mib mib'>2~)
  \voiceOne mib1*1/2\laissezVibrer}
  r4 <do, sol'>~(\dyn "pp_très clair (con Ped. al fine)"
  q q2 q4~
  q q2) q4~(
  q <re la'>2 <sib fa'>4
  <do sol'>2.) q4~(
  q q2 q q4~)

  % F %
  q8 q4.(-- q4-- q--)
  <sol re'>8( <do sol'>4-- q-- q--) <sol re'>8(
  <do sol'>4-- q-- q--) <sol re'>8( <do sol'>~--
  q q4-- q8~--) q4 <sol re'>~
  ^\dyn "legato molto (quasi indistinto)"
  \mergeDifferentlyDottedOn
  q8 q <do sol'>4. <lab mib'>
  <lab mib'>2 <sol re'>4. <lab mib'>8~
  q4. <sol re'> <lab mib'>4
  <do sol'> <lab mib'>4. <lab? mib'?>~
  <lab mib'>8 <sol re'>4. <lab mib'>2
  q4. <lab? mib'?>~
  <lab mib'>8 q~ q2
}

IPianoMg =
\relative do' {
  \clef bass
  s1*10 s2

  % B %
  <mi,,, mi'>4.( <fa fa'>8~)
  \voiceTwo q2~
  q1~ q2. \oneVoice r4
  r2 <mi mi'>4.( <fa fa'>8~)
  <fa fa'>1 \voiceTwo
  r4 <mi mi'>2( <fa fa'>4~)
  \oneVoice
  <fa fa'>1
  r8 sol'-.-- re'-.-- sib-.--
  dod'-.-- sold-.-- mi'-.-- do-.--
  \clef treble
  %TODO:upstream.
  \override Staff.DynamicText.extra-spacing-width = #'(+inf.0 . -inf.0)
  \textLengthOff
  la'16_\dyn "pp_quasi non legato" mib re lab sol dod re sold
  la mib re lab sol re' do mib
  sib' mib, fa si, fad dod' mib re
  sib' dod, fa si, fad mib' re fa
  sib re, fad sib, fad re' sib fad'
  si re, mi do fa, la re sol
  si?_\dyn "(pp_sempre)" mi, sol re mi do re la
  fa do' re la mi' re sol do,
  si' mi, la, sol' do, fa, do' sol'
  la, mi' si' mi, la, sol' do, fa,
  do' sol' la, mi' si' do fa, sib,
  \clef bass
  fad' si, mi, do' sold mi' do sold'
  do, mi sold, do mi, do' sold mi'
  do_\< mi sol, do mi, sol dod, sol'
  fad,(_\mp dod' mi sol la sol mi dod)
  fad,( dod' mi sol sib sol mi dod)
  \voiceTwo
  fad,4 \oneVoice r8 <do do'>4--_\mp <fad fad'>--
  \voiceTwo <do do'>8-.
  \oneVoice
  fad16( dod' mi sol la sol mi dod)
  fad,( dod' mi sol sib sol mi dod)
  \voiceTwo
  fad,4 \oneVoice
  <fad? fad'>4.--_\mf <sold sold'>4-- <mi mi'>8-.
  fad16(_\p dod' re la' sib la re, dod)
  fad,( dod' re la' sib la re, dod)
  fad,( dod' re) dod fad,( dod' re) dod
  fad,( dod' re mi) re dod fad, dod'
  sib,--_( fad' dod' re) mi,--_( do' mib fa
  solb fa mib do sib la sol mi)
  sib--_( fad' dod' re) mi,--_( sib' mib fa
  solb fa mib do sib sol) dod,_( sol'
  la sib do mib do sib) dod,_( sol'
  la sib do sib la sol mi re)
  dod_( re mi la sib do mib fa

  % B %
  sol?1)~\startTrillSpan
  sol?1~
  sol?1
  <re, sold>8->-.\stopTrillSpan r r4 r2
  r2 r4 <re sold>8->-. r
  sol'?1(\startTrillSpan
  <fadd sold>)~
  q~
  q(
  sol4)\stopTrillSpan r r2 r8
  <fad,, fad'>(-. <do' do'>-. <fad fad'>-.)

  % C %
  \clef treble
  do''16 reb fa sol do sol fa reb
  do reb fa sol do sol fa reb
  do reb fa sol do sol fa reb
  do reb fa sol do sol fa reb
  do reb fa sol do sol fa reb
  do reb fa sol do sol fa reb
  do reb fa sol do sol fa reb
  do reb mib fa sib fa mib reb
  do reb mib fa sib fa mib reb
  do reb mib sol sib sol mib reb
  sib reb fa sol sib sol fa reb
  sib reb fa sol sib sol fa reb
  lab sib reb mib sol mib reb sib
  lab sib reb mib sol mib reb sib
  fad(\> lad dod mi sold mi dod lad)
  fad( lad dod mi sol\! mi dod lad)
  \clef bass
  fad(\dim lad dod mi) dod( lad dod lad)
  sol( fad sol fad) mi( do mi do)
  fad,(\mp dod' fad,8~) fad2 <do do'>4~--
  q8 <fad fad'>4-- <do do'>8-. <fad fad'>2~--
  q1
  r8 <do do'>4.--_\dyn "(mp_sempre)" <fad fad'>2~--
  q2 \t {si8_( re mi} \t {la mi si}
  <fad, fad'>2) r8 red'4.--
  <fad, fad'>2.-- \t {dod'8( sol sold)}
  <red red'>2.\p red'?4--
  r8 <la' la'>4--_\> <mib mib'>8-.
  <la la'>2--_\!\laissezVibrer
  \clef treble
  do'16 reb mib solb sib solb mib reb
  do reb mib solb la? solb mib reb
  do8 \clef bass <mib,, mib'>4-- <la la'>8~-- q2~
  q <mib mib'>--\laissezVibrer
  \md do''16^( \mg lab_\pp sol fab mib fab sol lab)
  si?( sol fab mib do mib fab sol)
  \t {lab8( mib dob} \t {sib dob sib} fa2~)
  fa r r4 r8 \ottava #-1 re,--\laissezVibrer
  \ottava #0

  % D %
  \clef treble
  re'''4.(_\dyn "pp_(loco)" mib8~) mib2
  r4 re~-- re8 fa16( re mib4~)
  mib2~ \t {mib4 re( mib)}
  r2 re8( lab')-. si!-. fa-.
  sol16( re mi?8~) mi4 dod8-. la'16( sib,~) sib8 mib-.
  \clef bass
  fad,4-- do-- r do--
  r r8 do-.-- r2
  \clef treble
  fad''4._\dyn "pp_sempre" sold8~-- sold mi-. fad4
  re8-. mi16( dod re4) r8 sold-. fad4
  si8-. la~ la16( sold fad sold)
  red( dod red sib) do( sib fa mib)
  \t {fa8( \clef bass do sib} \t {sol la sol}

  % E %
  \pitchedTrill reb1~)\startTrillSpan mib
  reb~
  reb~
  \t {reb8(\stopTrillSpan re reb} do4)
  si16( dod si dod) fad( dod fad dod)
  si mi,( si' dod fad dod fad dod)
  si mi,( si' dod fad dod sold' dod,)
  si( mi, si' mi,) la,( mi' si' dod
  fad dod si dod) si( mi, si' mi,)
  la,( mi' si' mi,) la( re sol re)
  la( mi' si') mi,( la re sol, do,)
  si'( mi, si' mi, la,8)_\mp
  <mib mib'>4-- <la la'>-- <mib mib'>8-.
  la16( la' si la) mi( si' fad' la,)
  la,( re sol re) mi( la re sol,)
  la,( mi' si' la) mi( si' fad'8)
  \pl {<la,,, la'>8_(\cresc <sib sib'>4.)}
  {la'16^( re sol do fad, dod' \md sold'8)}
  r8\mf <mi,, mi'>4-- <sib sib'>8-.
  <mi mi'>4--^\< r^\>
  \ottava #-1
  <mi, mi'>4.(^\! _\dyn "(sotto_voce)" <fa fa'>8~) q2~
  q2. <mi mi'>8( <fa fa'>~)
  q4 <sol sol'>16( <mi mi'> <fa fa'>8~) q2~
  q4 <mi mi'>2-- <dod dod'>4-.--
  <mi mi'>1--
  \ottava #0
  \pl {
    r4 \ottava #-1 mi2.\laissezVibrer
    \ottava #-1
    \oneVoice sib2-- mi?--
    \voiceTwo sib4-.-- \ottava #-1 mi2.--\laissezVibrer
  } {
    sol''4.^"loco" \ottava #0 la4-- fa8-. sol4\laissezVibrer
    s1
    \t {r4 \ottava #0 re^( \ottava #0 la'} do2)\laissezVibrer
  }
  s2 <re, la'>\laissezVibrer
  \ottava #-1 mi,,?1\laissezVibrer \ottava #0
  <mib'' sib'>1~
  q2 <re la'>~
  q1 r2

  % F %
  R1*3
  <re la'>2_\dyn "pp_al fine"
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \mergeDifferentlyDottedOn
  \override Beam.auto-knee-gap = #7
  re8_( la' \md \stemDown sol \mg \stemNeutral re
  la' \md \stemDown sol do) \mg \stemNeutral re,_(
  la' \md \stemDown lab \mg \stemNeutral re, sol
  \md \stemDown lab \mg \stemNeutral la?) re,_( la'
  \md \stemDown sol \mg \stemNeutral re la' \md \stemDown lab
  \mg \stemNeutral sol) re_( la'? \md \stemDown sol
  \mg \stemNeutral re sol \md \stemDown lab \mg \stemNeutral la?)
  \ottava #-1
  \pl <re,,, dod'>1\laissezVibrer
  {
    \md \stemDown do'''?8 \mg \stemNeutral \ottava #0 la
    \md \stemDown lab \mg \stemNeutral re,_(
    la'? \md \stemDown lab
    \mg \stemNeutral sol) re
  }
  la' \md \stemDown sol \mg \stemNeutral re sol
  \md \stemDown lab \mg \stemNeutral la? re, la'
  \ottava #-1
  \pl {
    <re,,, dod'>2.\laissezVibrer
    r4 \ottava #-1 <re dod'>2\laissezVibrer
  }
  {
    \md \stemDown lab'''8 \mg \stemNeutral \ottava #0 re,
    la'? \md \stemDown lab
    \mg \stemNeutral sol re
    la' \md \stemDown lab
    \mg \stemNeutral
    dod,, \ottava #0 re' sol lab
  }
}

IIPianoMd = \relative do' {
  % A %
  sib'4-.--_(\dyn "ppp_(2 ped.)"
  mib,-.-- lab,-.-- do-.-- re'-.-- sol,-.--)
  la,(-.-- mi'-.-- si'-.--) dod(-.-- fad,-.--)
  \showStaffSwitch
  mi( \mg re, la') do( \md sol' \mg fa,)
  \md mib'( lab, sib' \mg fad, dod)
  si( sol' \md red' re \mg sib do,)
  la( fa' \md dod' mi sold)

  % B %
  \hideStaffSwitch
  si1(\dyn "p_impavide" mi2 sib2.
  \stemUp \mergeDifferentlyHeadedOn
  fad2) \stemNeutral
  fa'1( la2 mib do2.)
  lab'( re2 sol,4~ sol dod,1)

  % C %
  <do sol' re'>2--~ \arpeggio q8 re'4-- \acciaccatura sol8 mib8~ mib2
  r8 \acciaccatura mib lab,~ lab1
  \t {r16 sol,( re'} la'4) \acciaccatura mi'8 sib8~
  sib16 dod8.--~ dod2.
  s1*5/4
  r2 si4.--_\mp fa'16 do~ do2
  r8 do4( fad, do8 fad, do)
  \mg \t {fad,( do fad,)} \md

  % D %
  reb'''2(\mf lab'4 do,4. sol?4)
  sib2( mi4 la, fa4.)
  \showStaffSwitch
  mib4.(\dim si'!4 re,8~ re\! \stemUp \mg
  fad,2) \md \stemNeutral
  \hideStaffSwitch

  % E %
  R2.
  \ottava #1
  r8\p do'''\(--~ do16. mib'32( reb,8~) reb32 lab'( lab,16~)\)
  lab8 r mi'4(-- \acciaccatura la16 fad8. fa16~)
  fa4~ fa8 \acciaccatura mi'8 fa,4
  % ?
  \ottava #0
  r8 sib,4(--\> \acciaccatura re8 si4 sol8~) sol2\! r8

  % F %
  <mib mib'>2\dyn "mp_appassionato"
  <do'! do'!>4( <re, re'>4.) <sol, sol'>4
  r8 <fa' fa'>4~ <fa fa'>16 <dod' dod'>(~
  q8 <mi, mi'>~) q8 <si si'>2
  sib'4.\p sold'8( la,4~) la8 fad2

  % G %
  <do,! do'!>4--\mf <reb' reb'>8-. <si, si'>-. r fa'-- r
  <sol, fad'>^(-- sold'-> la-> sib->)
  r <sol sol'>4-- <sib' sib'>8-. <lab, lab'>-. <la la'>4-- <do, re>8^(-.
  <dod red>-. <mi fa>-. fad-.)
  <re re'>-. <mi' mi'>4.(-- <red red'>4--) fad8--\noBeam
  <do, sold'>^(-. la'-.\< sib-. si-.)

  % H %
  <fa fa'>2(\f <mi' mi'>4. <fad, fad'>8) r <do do'>4--
  <mib mib'>2( <dod' dod'>4 <re, re'>8 <si si'>~) q4.
  <la la'>( <sib' sib'>8 <lab, lab'>4.) <sol la sol'>8--~
  q4.

  % I %
  <sol sol'>8->^\dyn "fp_secco" q q <sol fa' sol>-> q q <lab sol'> q <mi' sol> q q
  <sol, la sol'> q <sol lad sol'>-> q <si sol'> q <sol fad'>
  <si sol'> q <sol fad'> q
  q q <sol dod sol'>-> q <dod sol' dod>^\mp q <do sol' do> q
  <sol' do sol'>\< <sol re' sol> <sol mib' sol>

  % J %
  \ottava #1
  <sol' sol'>4.(\fp <la' la'>4-- <fad, fad'>8 <sib sib'>2*3/4)
  \ottava #0 s4^"(loco)" \ottava #1
  <mi, mi'>8( <fa' fa'>4. <re, re'>4--\> <reb reb'>2--) s8\!
  \ottava #0
  \grace s4 r8 do4.( mib4 si\> sold8) <>\!
  << {
    \t {sold( sold sold)~} sold2*1/2
   } \\ {
    s4 sold-.--\pp
  } >>

  % K %
  dod,(-.-- fad,-.--) si''(-.-- red,-.-- sol,-.--)
  re'(-.-- do,2-- \mg \stemUp fa,4-.--
  sib,-.--) \md \stemNeutral
  dod'(\dim sold' fad, sib' mib fa)
  si( mi, sol, do, re)
  sib'(\ppp mib, lab, do re' sol,)
  mi(\>\laissezVibrer
  si'\laissezVibrer fad'2\laissezVibrer
  dod4)\!\laissezVibrer\verylongfermata
}

IIPianoMg = \relative do' {
  \clef bass
  R1*6/4 R1*5/4
  s1*6/4 s1*5/4
  s1*6/4 s1*5/4

  % B %
  sol,4( re'8 sol, re' la' mi') re,( si' fad' la, re,)
  mib( sol, re' fad si) mib,(
  \stemDown \mergeDifferentlyHeadedOn
  \md fad' \mg \stemNeutral si, mi, mib)
  si( do) sol( mi' la fa re') do( fa sib, la re,)
  fa dod si'( sol, re' lab' re) sib( fad' dod)
  mib( sib do fa,) sol,( re' la' mi' fad si,) dod( lab')
  sib( mib, fa la, si mi, fad re do lab)

  % C %
  fad,( dod' sold') dod,( <mib' fa> lab, sib) dod,( la' mi si dod)
  fad( dod' re la' sib) fa'( do sol si mi,)
  do( fa sib mib sold, dod,) fad,( mi' si' re la' sol,)
  \t {do,( \md lab' mib'} si' mi,) \mg la,( sib4 fa'8)
  \t {dod,( \md sol'' re')} \mg
  \t 4 {
    fad,,,(\( si mi) do( sol' re')
    sold,( dod, fad,)\) sib'(\( fa do)
    fad,( la' mib) do( mib' la,)\)
    dod(\( re sib') la( fa si,) sold'( mi mib)
  } sol,4--\) \md r8 \t {lad'16( si do)} \mg

  % D %
  \mergeDifferentlyHeadedOn
  \pl fa,,,!2*1/2\laissezVibrer {fa8( do')}
  <la' mi'>( dod <la mi'>4)
  dod,8( sold' <si mi>4--) dod,8
  la( fa') <dod' fad>( re <dod fad>4)
  dod,8( <mi sold>4 <fad sib>8 <do' re>)
  fa,,( re') <fad sib>( sol <fad si>4)
  \pl {la,4-- la8( sib si)} {la8 s2}

  % E %
  << {
    r8 <dod fa la>( <red sol si> <fa la dod> <sold si red> <do mi>)
    \mergeDifferentlyHeadedOn
    <la fa'>2*5/4
    r8 <red, sol si>( <fa la dod> <sol si red> <la dod fa> <re fad>)
    <red sol>2*5/4
    r8 <lab reb fa>( <do mi sold> \clef treble
    <fa la> <fad sib> <sold si>) \clef bass
    s \clef treble <re fad la>( <reb fa sib> <mib lab do> <mi sol re'>)
    \clef bass
   } \\ {
    <mi,, do'>2 sol4
    \mergeDifferentlyHeadedOn
    \t {la'8( sold fa} reb do la
    mi4.) sib'--
    \t 4 {red'8( si sib sol mib re} si)
    s4 \acciaccatura dod8~ dod2
    mi,8 s2
   } \\ {
     s2. mi2 s8 s2. mi2 s8 \voiceFour mi2. s2 s8
  } >>

  % F %
  \pl {
    re8*6\laissezVibrer fad4-- mi-- sold8--
    re'8*6\laissezVibrer sib4-- do-- sold8--
    re8*4\laissezVibrer sold4 re' sold, re8
  }
  { \t 8 {
    re16( la' dod fad la sib
    fa fad sib si sib fa
    dod sold' si sold dod, sold)
    fad( si mi la mi si)
    mi,( sib' dod fa fad fa)
    sold,( mi' la)
    re,( mib lab si lab mib
    re lab' si mi si lab
    re, si' mi sol lab, mib)
    sib( mib lab la re sol)
    do,,( fa sib la mi si)
    sold( dod fad)
  }
  \tt 4 {
    re,( la' re mi si')
    fad'( dod la mi re)
    sold,( mib' sib' do fa,)
    re( do' sib lab') si,
  } \t {sold, fad' dod}
  do sol re re'
  }

  % G %
  <dod, dod'>8-> mib re_"non legato" <mid dod'>
  fad <dod la'> sol' sold^(-.
  <dod, si'>-. do'-. mi-.)
  <dod, dod'> mi re red
  <dod fad> <sold' dod> <dod, sib'> la'^(-.
  <dod, si'>-. do'-. fa-.)
  <dod, dod'> re do' fad,
  dod sol' sold si
  <dod, mib'>( fa' sib,)

  % H %
  <do, do'>( dod' do') re,(--~
  re si fad4--) do'(-- fad,8)
  do( fad' sold') sol,(~
  sol sib, lab4) sib( fad8)
  do( mi' fa') mib,--~
  mib mi,( la la') re,,( fad4)

  % I %
  si,-.-- si-.-- <dod' sib'>2->-- sol4.(--
  si,4-.--) si-.-- <red' mi do' re>4->-- r8 fa,--~ fa4.
  si,4-.-- si-.-- <sold'' la si re>2->-- re,4( si8)

  % J %
  <sib sib'>4--\laissezVibrer \t 4 {<sib' re>8( mib <dod mi> fa <sold si> do)}
  \pl {mi,,4(-- sib8-. mi4--)}
  {r8 \t 4 {<la' dod>( re <do mib> \md <fa sold> fad <sol si>)} \mg}
  sib,,,4--\laissezVibrer \t 4 {<lab'' do>8( la <si fad'> sol' <red sold> la')}
  \pl {mi,,4(-- sib'-- mi,8-.)}
  {r8 \t 4 {<re' fad>( sol <fa sold> <la si> do <lad dod>)} }
  \grace s4 sib,,4--\laissezVibrer \t 4 {si'8( dod re fa fad sol)}
  \pl {mi,4.-- mi4--} {r8 la'2}

  % K %
  la,,1.~ la2 la2.~ la1~ la4 la~ la1~ la4~ la2 la1~ la~
  la4\laissezVibrer\verylongfermata
}

