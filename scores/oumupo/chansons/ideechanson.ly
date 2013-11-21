%-- Chansons Oulipiennes -- ideechanson.ly ------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

IdeechansonVoix =
\relative do' {
  \partial 4 r16
                 re^\p fad re fad8[ r16 mi] do mi8 do16
  r4 r16 re fad re fad4 mi8 do16 mi r16 do8. r16 re fad re |
  fad4 r16 mi do mi do4 r16 re fad re |
  fad8 mi16^\< do r mi8 sol16~ sol4^\! r16 re^\p fad re |
  fad8[ r16 mi] do mi8 do16 r4 r16 re fad re |
  fad4 mi8-- do-- mi-- do-- r16 re fad re |
  fad4 mi16 do8 mi16 r do8. r16 re fad re |
  fad8.^\< mi16 do8 mi16 sol~ sol4^\!~ sol16
                                             sol\( sib sol
  re'8.\) re16~ re do sib8 la4-- r16 fad\( la fad
  dod'16\) dod8 si16~ si la8 sold16--~ sold4 r16 dod,\( mid dod
  sold'4\) mi16\( fad fadd sold\)~ sold4 r16 sol mib sol
  do,4 do--^\> dod8.-- re16--~ re8^\! mi--~ mi2. r4
  R1 r2 r4 r16
               re fad re |
  fad4 mi16 do8 mi16 r8 do r16 re fad re |
  fad8 mi16 do r mi8 do16 r4 r16 do mi re |
  fad8 fad re16 mi8 do16 r4 r16 re fad re |
  fad mi8 do16~ do8 mi r16 sol8.~ sol16
                                        re'\(^\mf sib re |
  sol,8\) sol16 sold r la8 si16--~ si4 r16 fad\( la fad |
  dod'8\) dod si16 la8 sold16--~ sold4 r16 dod,\( mid dod |
  sold'4\) mi16\( fad fadd sold\)~ sold4 r16 do,\( mib do |
  sol'4\) sol r8 fa-- r16 mib8.-- | re2.-- r4 |
  R1 r2 r4 r16
               re fad re |
  fad4 r16 mi do mi~ mi8 do r16 re fad re |
  fad8 mi16 do r do'8-> lab16-> r4 fad\( |
  re\) fad8\( fad re4\) mi\( do\) mi8 mi r4 r16 re^\pp fad re |
  fad4 r16 mi sol8 r16 mi do8~ do16
                                    sol'^\mp sib sol |
  re'8 re16 do r sib8 la16--~ la4 r16 dod\( la dod |
  fad,8.\) fad16 r sol16 sold8 lad8-- r dod,16 mid dod sold'~ |
  sold4 mi16 fad fadd sold~ sold4 r16 re fad re |
  la'8 la sol16 fa8 mi16--~ mi4 r16
                                    re^\p fad re |
  fad8[ r16 mi] r do mi8 r16 do8. r16 fad re fad |
  re do8 mi16 r do[ r mi]~ mi4 r16 re fad re |
  fad8 r mi\(^\< sold mi sold\)~ sold4^\! |
  fad16^\p re fad re r4 r16 mi do mi do4 |

  r2 r4 r16 sol'^\mf sib sol |
  re'8. re16~ re do sib8 la4-- r16 fad la fad
  dod'16 dod8 si16~ si la8 sold16--~ sold4 r16 dod, mid dod
  sold'4 mi16 fad fadd sold~ sold4 r16 sol mib sol
  do,4 do--^\> dod8.-- re16--~ re8 mi--~ mi2.^\! r4
  R1 \bar "|."
}

IdeechansonGuitare =
\relative do' {
  \clef "G_8"
  r4 re,8 <re' fad> r4
  do,8 <do' mi> \xNotesOn \grace {la,32[ la]} la16 la la8 \xNotesOff
  re8 <re' fad> re,4
  do8 <do' mi> \xNotesOn \times 2/3 {la,16 la la} la8 \xNotesOff
  re8_"simile, ad lib." <re' fad> r4 do,8 <do' mi> r4
  re,8 <re' fad> r4 do,16 sol' <red' si'>8 r4
  re,8 <lad' re fad> r4 do,8 <sold' do mi> r4
  re8 <lad' re fad> r4 do,8 <sold' do mi> r4
  re8 <lad' re fad> r4 do,8 <sold' do mi> r4
  re8 lad' <re fad>4 do,16 sol'( sold) si( do) mi sold red'

  <la, mib' sol re'>2\arpeggio <sol dod fa do'!>\arpeggio
  <lab re fad dod'>\arpeggio <fad do'! mi si'>\arpeggio
  <re fa do' mi sold> <dod mi si' red sol>
  <do mib sib' re fad>1\arpeggio
  <si fa' la mi'>1*11/16\arpeggio
  \xNotesOn \times 2/3 {la32 la la} la16 la la la \xNotesOff

  re8 <re' fad> r16 re,8 re16 do8 <do' mi> r4 |
  sib,8 <re' fad> r sib, do <do' mi> r4 |
  sold,8 <re'' fad> r4 lad,8 <do' mi> r4 |
  sold,8 <re'' fad> sold,, <re'' fad> lad, <do' mi> r4
  sold,8 <lad' re fad> r4 lad,8 <sold' do mi> r4 |
  sold,8 <lad' re fad> r4 lad,16 do re mi fad red fa sol |

  <la mib' sol re'>2\arpeggio <fad do' mi si'>\arpeggio
  <lab re fad dod'>\arpeggio <sol dod fa do'!>\arpeggio
  <re fa do' mi sold> <do mib sib' re fad>
  <dod mi si' red sol>1\arpeggio <si fa' la mi'>1\arpeggio

  re8 <lad' fad'> r4 do,8 <sold' mi'> r4 |
  re8 <lad' fad'> re,4 do8 <sold' mi'> r4 |
  re16 lad' fad' <la dod fa>~ <la dod fa>4
  do,,16 sold' mi' <si' red sol>~ <si red sol>4 |
  re,,16 lad' fad' <la dod fa>~ <la dod fa>4
  do,,16 sold' mi' <si' red sol>~ <si red sol>4 |
  re,,8 <la'' dod fa>4. sold,8 <la' dod fa>4. |
  do,,8 <si'' red sol>2.. |
  <sold, re'>4 r <sib do> r |

  <la mib' sol re'>2\arpeggio <fad do' mi si'>\arpeggio
  <lab re fad dod'>\arpeggio <sol dod fa do'!>\arpeggio
  <re fa do' mi sold> <do mib sib' re fad>
  <dod mi si' red sol> <si fa' la mi'>

  fad8 <fad' re'> r4 mi,8 <mi' do'> r4 |
  fad,8 <fad' re'> r4 mi,8 <mi' do'> r4 |
  fad,8 <fad' re'> r4 sold,8 <sold' mi'> r4 |
  lad,8 <lad' fad'> r4 do, r | R1

  <la' mib' sol re'>2\arpeggio <sol dod fa do'!>\arpeggio
  <lab re fad dod'>\arpeggio <fad do'! mi si'>\arpeggio
  <re fa do' mi sold> <dod mi si' red sol>
  <do mib sib' re fad>1\arpeggio
  do'16 mi sold sib, re fad do mi sold sib, re fad do sold' sib, fad'
  r2 mi'2\harmonic \laissezVibrer
}

% Not used by default.
IdeechansonPianoMd =
\relative do' {
  r4 s1*8
  <mib sol re'>2\arpeggio
  <reb fa la? do>\arpeggio
  <re fad dod'>\arpeggio
  <do mi sold si>\arpeggio
  <do mi sold> <si red sol>
  <sib re fad>1 <fa la mi'>\arpeggio ^"(fill)"
  s1*6
  <mib' sol re'>2\arpeggio
  <do mi sold si>\arpeggio
  <re fad dod'>\arpeggio
  <reb fa la? do>\arpeggio
  <do mi sold> <sib re fad>
  <si red sol>1 <fa la mi'>\arpeggio ^"(fill)"
  s1*6 R1
  <mib' sol re'>2\arpeggio
  <do mi sold si>\arpeggio
  <re fad dod'>\arpeggio
  <reb fa la? do>\arpeggio
  <do mi sold> <sib re fad>
  <si red sol> <fa la mi'>\arpeggio ^"(fill)"
  s1*4 R1
  <mib' sol re'>2\arpeggio
  <reb fa la? do>\arpeggio
  <re fad dod'>\arpeggio
  <do mi sold si>\arpeggio
  <do mi sold> <si red sol>
  <sib re fad>1
  do16\ppp mi sold sib, re fad do mi sold sib, re fad
  do sold' sib, fad' r2 \ottava #1 <mi'' mi'>\arpeggio
}

% Not used by default.
IdeechansonPianoMg =
\relative do' {
  \clef bass
  r4
  re,8-. \md <re' fad>-.\p r4 \mg
  do,8-. \md <do' mi>-. r4 \mg
  re,8 \md <re' fad> r4 \mg
  do,8 \md <do' mi> r4 \mg
  re,8 \md <re' fad> r4 \mg
  do,8 \md <do' mi> r4 \mg
  re,8 \md <re' fad> r4 \mg
  do,16-. sol'-. \md <red' si'>8-.-> r4 \mg
  re,8 \md <sib' re fad> r4 \mg
  do,8 \md <lab' do mi> r4 \mg
  re,8 \md <sib' re fad> r4 \mg
  do,8 \md <lab' do mi> r4 \mg
  re,8 \md <sib' re fad> r4 \mg
  do,8 \md <lab' do mi> r4 \mg
  re,8 \md <sib' re fad> r4 \mg
  do,8 \md <lab' do mi> r4 \mg
  <la, la'>2 <sol sol'>
  <lab lab'> <fad fad'>
  <re' fa la> <dod mi sold>
  <do mib sol>1 <si, si'>
  re'8 \md <re' fad> r4 \mg
  do,8 \md <do' mi> r4 \mg
  sib,8 \md <re' fad> r4 \mg
  do,8 \md <do' mi> r4 \mg
  lab,8 \md <re' fad> r4 \mg
  sib,8 \md <do' mi> r4 \mg
  lab,8 \md <re' fad> \mg
  lab,8 \md <re' fad> \mg
  sib,8 \md <do' mi> r4 \mg
  lab,8 \md <re' fad> r4 \mg
  sib,8 \md <do' mi> r4 \mg
  lab,8 \md <re' fad> r4 \mg
  sib,8 \md <do' mi> r4 \mg
  <la, la'>2 <fad fad'>
  <lab lab'> <sol sol'>
  <re' fa la> <do mib sol>
  <dod mi sold>1 <si, si'>
  re'8-. \md <sib' fad'>-.\mp r4 \mg
  do,8-. \md <lab' mi'>-. r4 \mg
  re,8-. \md <sib' fad'>-. r4 \mg
  do,8-. \md <lab' mi'>-. r4 \mg
  re,8( \md <la'' dod fa!>4.)\pp \mg
  do,,8( \md <si'' red sol>4.) \mg
  re,,8( \md <la'' dod fa>4.) \mg
  do,,8( \md <si'' red sol>4.) \mg
  re,,8( \md <la'' dod fa>4.) \mg
  sold,8( \md <la' dod fa>4.) \mg
  do,,8( \md <si'' red sol>2..) \mg
  R1
  <la,, la'>2 <fad fad'> <lab lab'> <sol sol'>
  <re' fa la> <do mib sol>
  <dod mi sold> <si, si'>
  fad'8-. \md <re'' fad>-.\p r4 \mg
  mi,,8-. \md <do'' mi>-. r4 \mg
  fad,,8-. \md <re'' fad>-. r4 \mg
  mi,,8-. \md <do'' mi>-. r4 \mg
  fad,,8-. \md <re'' fad>-. r4 \mg
  sold,,8-. \md <mi'' sold>-. r4 \mg
  sib,8-. \md <fad'' sib>-. r4 \mg r2
  R1
  <la,, la'>2 <sol sol'>
  <lab lab'> <fad fad'>
  <re' fa la> <dod mi sold>
  <do mib sol>1\laissezVibrer
  R1*2
}
