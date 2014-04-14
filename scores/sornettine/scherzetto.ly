%-- Sornettine -- scherzetto.ly ------------------------------------%
% (c) 2014, Valentin Villenave <valentin@villenave.net>

\language "italiano"

ScherzettoTitre = "II. Scherzetto"

ScherzettoMesures = {
  \tempo "Tempo di marcia"
  \time 4/4 \partial 8 s8 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 2/4 s2 \bar "||"
  \time 4/4 s1
  \time 3/4 s2.
  \time 2/4 s2
  \time 4/4 s1
  \time 3/4 s2. \bar "||"
  \time 2/4 s2
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2. \bar "||"
  \time 1/4 s4
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 1/4 s4 \bar "||"
  \time 4/4 s1
  \time 3/4 s2.*2
  \time 4/4 s1
  \time 2/4 s2 \bar "||"
  \time 4/4 s1
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 s1 \bar "||"
  \time 2/4 s2
  \time 4/4 s1
  \time 3/4 s2.*2
  \time 4/4 s1 \bar "||"
  \time 1/4 s4
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 1/4 s4 \bar "||"
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 2/4 s2 \bar "||"
  \time 3/4 s2.
  \time 4/4 s1
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 s1 \bar "||"
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s2.. \bar "|."
}

ScherzettoAlto = \relative do' {
  \clef alto
  sold16 lad
  % a %
  si si si si si8 sold16 lad si si si si si8 sold16 lad |
  si dod re re mib re do re si do sold sol |
  si si si si si8 sold16 lad si si si si si8 sold16 lad |
  si sol sold si sol sold lad sold lad si sold si |
  dod re re re re dod re mib |
  % b %
  fa fa fa fa fa8 re16 mib fa fa fa fa fa8 re16 mib |
  fa sol sold fad fa sol mib re sib re dod mi |
  fa fa fa, fa r si? re mib |
  fa fa fa fa fa8 re16 mib fa fa fa fa fa8 re16 mib |
  fad sol, fa' sol lab sol, re' mib lad, si la' lad |
  % c %
  \clef treble
  si si si si si si la lad |
  si si si si si8 la16 lad si si si si si la lad si |
  mi fa dod re sold, la \clef alto lad, si do do la' lad |
  \clef treble
  si si si si si la lad si red red red red red mi mid fad |
  <re, la'> fad' fad mi mid fad <red, lad'> fad' la lad si si |
  % d %
  <do, si'>8 la'16 lad |
  <do, si'> <dod si'> <red si'> <red si'>
  <red si'> <red si'> <do si'> <dod si'>
  <red si'> <red si'> <red si'> <red si'>
  <red si'> si' sol sold |
  <do, lad'> <do si'> <do si'> <do si'>
  <do si'> dod red mi <fa, mi'> <fa mi'> <fa mi'>8 |
  <do' si'>16 <dod si'> <re lad'> <re lad'>
  <re lad'> <red si'> <mi do'> <fa dod'>
  <fad red'> <fad red'> <fad red'> <fad red'>
  r <mi do'> <fa dod'> <fad red'> |
  <fad red'> <fad red'> r <mi do'>
  <fa dod'> <fad red'> <fad red'>8
  <mi do'>16 <fa dod'> <fad red'>8 |
  <mi do'>16 <fad red'> r8 |
  % e %
  \clef alto
  do,,16^"pizz." do do do do8 do16 sol' re'8 do,16 do
  do8 <do sol' re'>\arpeggio |
  r <do sol' re'>\arpeggio
  r do16 sol' re' mib <fa la>8\arpeggio |
  do,16 sol' re' la' lad si r8 do,,16 do do do |
  do8 sol'16 mib' si'8 sold,16 re' sib' fad' r do,,
  do8 <re' sib' fad'>\arpeggio |
  r <re sib' fad'>\arpeggio r4 |
  % f %
  \tuplet 3/2 {r8 <re sold>^"arco" <do sol'>}
  <do, sold' mi'>16 <sold' mi'> <sold mi'> <sold mi'>
  <sold mi'>8 <do, sold' mi'>\arpeggio ^"pizz."
  r <do sold' mi'>\arpeggio |
  \tuplet 3/2 {r8 <re' sold>^"arco" <do sol'>}
  <do, sold' mi'>16 <do la'> <do lad'> <do si'>
  <do' sold'> <dod la'> <re lad'> <red si'> |
  \clef treble
  \tuplet 3/2 {<do' sold'>8 <si sol'> <sold mi'>}
  \tuplet 3/2 {<la fa'> <dod la'> <sid sold'>} |
  <dod dod'>4. <sid sid'>8~ <sid sid'>4 |
  \clef alto
  r8 <dod,, dod'>~ <dod dod'>8. <do do'>16~ <do do'>4
  <do si'>16 <do si'> <do si'> <do si'> |
  % g %
  <do si'>8 <do sold'>16 <do lad'>
  <do si'>8 <mib si' sol'>\arpeggio ^"pizz." |
  r <mib si' sol'> mi16^"arco" mi mi mi
  mi mi dod red mid8 <mid dod' la'>\arpeggio ^"simile" |
  r <mid dod' la'>\arpeggio r16 do^"arco" sol' re' la' re, sol, do, |
  la'' lad si8 <fa, dod' la'>\arpeggio
  <do sold' re'>\arpeggio la''16 lad si8 |
  <fa, dod' la'>\arpeggio <do sold' re'>\arpeggio
  la''16 lad si do,, sold' re' red mi fa8 <do, si'>16 <do? dod'> |
  % h %
  <fad fad'> <sold sold'> <la la'> <lad lad'> |
  <si si'> <si si'> <si si'> <si si'>
  <si si'>8 <la la'>16 <lad lad'>
  <si si'>8 <sold sold'>16 <lad lad'> |
  <si si'> <si si'> <si si'> <si si'>
  <si si'>8 <sold sold'>16 <lad lad'>
  <si si'> <si si'> <si si'> <si si'>
  <si si'>8 sold'16 lad |
  <si, si'> dod' re re <mib, mib'> re'
  <do, do'> re' <si, si'> do' <sold, sold'> <sol sol'> |
  <si si'> <si si'> <si si'> <si si'>
  <si si'>8 <sold sold'>16 <lad lad'>
  <si si'> <si si'> <si si'> <si si'>
  <si si'>8 si'16 do |
  \clef treble
  re si' do re |
  % i %
  mib re dod fa fad8 re16 dod re do re si |
  do sold sol si sold fad mid re, si'' \clef alto dod,, sib lab
  sol \clef treble si'' \clef alto <do,,, sol'> \clef treble si''' |
  si \clef alto <do,,, sol'> <do sol'> \clef treble si'''
  dod re \clef alto <re,, la'> <do, sol'>
  <do sol'> \clef treble <fad'' re'> r <fad re'> |
  \clef alto
  <do,, sol'> <do la'> <do sib'> do \clef treble
  <mi'' si'> <fad dod'> <sol re'> \clef alto <do,,, sol'>
  <do la'> <do sib'> \clef treble <sol''' re'>
  \clef alto <do,,, sol'> \clef treble <fad'' dod'> <sol re'>
  \clef alto <do,,, sol'> <do la'> |
  <do sib'> <sol' fa'> <sol fad'> <sol? sold'>
  <re' do'> \clef treble <re mib'> <do' sold'> <dod la'> |
  % j %
  <sol, red'' si'> <red'' si'> <red si'> <red si'>
  \clef alto <do,, sol'>8 \clef treble
  <sol' red'' si'>\arpeggio ^"pizz."
  r <sol? sid' sold'>16^"arco" <dodd' lad'> |
  r <red si'> <red si'> <red si'> \clef alto
  do,, sol' <re' fa'> fad' \clef treble
  <si, sol'> <sid sold'> <dod la'> <dodd lad'>
  r8 <sol, red'' si'>\arpeggio |
  \clef alto
  r16 do, sol' re' <fad sib> re' dod mi |
  r <fad,, sol> <fad sol> <fad sol>
  <fad sol> <fad sol> re' mi mid fad r <fad, sol> |
  <fad sol> <fad sol> si do re <fa, sol>
  <fa sol> <mib sol> <mib sol> <reb sol> <reb sol> <reb sol>
  r8 sold16 lad |
  % k %
  si si si si si8 sold16 lad |
  si si si si mib re fa fad sol, do sold lad |
  si si si si si8 sold16lad si si si si si8 sold16 lad |
  si mid, fad sold red mi fad re mi fa do dod |
  re re re re re8 do16 dod re8 do16 dod re8
}

ScherzettoGuitare = \relative do' {
  \clef "G_8"
  r8 |
  % a %
  <re, la' mi'> r <do fad si> r
  <re la' mi'> r <do fad si> r |
  <re la' mi'> r r <dod mid si'> r4 |
  <re la' mi'>8 r <do fad si> r
  <re la' mi'> r <do fad si> r |
  <dod mid mi'?> r r16 <fad lad si>8. r8 <lad red mi> |
  r8 r16 fa,~ fa4\glissando |
  % b %
  <do' re' sol>8 r <fa sib mi> r
  <do re' sol> r <fa sib mi> r |
  <do re' sol> r r16 <mib la fa'>8. r8 r16 <do sol' re'> |
  r4 fad,\glissando |
  <do' re' sol>8 r <fa sib mi> r
  <do re' sol> r <fa sib mi> r |
  <si, dod' fad> r r <sib do' fa> r4 |
  % c %
  mi,4 << {
    <sol' si> <fad si sold' dod> <re' sol do>
    <la fad' si> <dod mid do'?>
  } \\ {
    \tuplet 3/2 {la,8 re mi,~} mi2\laissezVibrer s2
  } >> <lab' do fa si>4 r8 <do mib sib'> r16 mi,,8.\laissezVibrer |
  <fad' si re la'>4 <sib mib la> <re, sib' dod sold'> <la' re sol> |
  <do, re' sol> <si? fa' sib> r8 la''16 si! |
  % d %
  << {
    do16 do do do
    do8 la16 si do do do do do8 la16 si do do do do
    do8 la16 lad
  } \\ {
    <reb, solb>8 r mib r sib r fa re lab' r
    <reb solb> r
  } >> <re si'> fa16 fad sold la si do |
  << {
    red red red red red8 si16 sid dod dod dod dod
  } \\ {
    mi,8 r si r <sol fa'>
  } >> <re mib' fad dod'>4 |
  << {
    do''8 do16 do si8 sib16 sib
  } \\ {
    <reb, solb>8 fa do mi
  } >> \tuplet 3/2 {<mib la> <re lab'> <reb sol>} |
  fad16 fad fad fad |
  % e %
  <do, re sol do fad>8 sol16 la
  sib <re sol dod fad> r <sol dod fad>
  r sol, la sib <sol' mib' lab> lab' <dod, fad> <re sol> |
  <mib lab> re, sol <mib' lab>
  <mi la> la la la <fa, sib mi la>8 fad16 sol |
  sib la mi fa lab sol <mib' fa sib> sib'
  <mi, fad si> si' <re,, fad' sold dod> dod'' |
  r re,, mib solb fa do dod mi red r lad si
  re <dod re> r lad si re fad mid dod sib sol lab |
  % f %
  << {
    sib sib sib sib sib8 sol16 lab
    sib sib sib sib si8 sold16 lad
  } \\ {
    la la la la la la r8
    la16 la la la la la r8
  } >> si16 <dod re> q q q red mi fa
  sib la fad sol |
  do si sold la re dod <dodd mi> <red mi> |
  <mi fa> q q q q8 <dod mi>16 <red mi> <mi fa> q q q |
  << {
    la la sold sold si si lad lad
    dod dod sol sol dod, dod sol8
  } \\ {
    fa'8 mi sol fad la mib la, mib16 lab,
  } >>
  % g %
  sib sib sib sib sib8 sol16 lab |
  << {
    sib sib sib sib sib8 sol16 lab
    sib sib sib sib si8 sold16 lad
  } \\ {
    la la la la la la r8
    la16 la la la la la r8
  } >> <la si>16 si do dod <dod re> q q q q red mi <fa sol> |
  q q <fad sol> <sol lab> la, <sol' lab> q la, <sol' lab> q la, re |
  <sol lab> re <sol lab> <sol la> << {si si si si} \\ {sol8 r} >>
  <si red>16 re, <do' mi> <dodd mid>
  <re fad> sol, <mi' sold> <fa la> |
  % h %
  <fad lad>8 sib,, |
  <re mi' la mi'>4\arpeggio <fa? do' fad si> <lab reb sol do> |
  <re, mi' la mi'> <fa? do' fad si> <re mi' la mi'> <sol do fad si> |
  <re' la' mi'>8 r16 <fad do' sol'> r8
  <fa si mi> r16 <la, sold' dod>8. |
  <re, mi' la mi'>4 <fa do' sol'>
  << {
    sib8 do16 sib la la la la la8 r
  } \\ {
    <lab, mib'>4 <sol re'> <fa dod'>8 mi16 fad
  } >> |
  % i %
  sol <do fa si mi> r <fa si mi> r mi, fad sol
  <dod red' sold> sold'' <sid, mid> <dodd fadd> |
  <red sold> dod, fad <red' sold> <do, re> q q q
  << {<dod' fad> q <si mi> <sid mid>} \\ {re,8 r} >>
  <dod' fad> <do, re> |
  <sol' mi' lad>16 si' <fad sold dod>8
  << {r8 lad16 si} \\ {<do,, re>8 sol'} >>
  <sold' dod>16 q q <dod, fad> |
  <sold' dod> re, <la'' re> <si mi>
  <do fa> re,, <lad'' red> <si mi>
  <dod fad> sol, <dod' fad> <fad, si>
  <sid mid> <dod fad> <red sold>8 |
  r16 fad,, mid dod sib fa la re |
  % j %
  << {<red fa sib mi sold>4 <mid fad>16 q q q} \\ {mi,2} >>
  <mid' fad>16 mi, do' sold' |
  << {lad'4} \\ {<si, do>16 q q q} >>
  <si dod>8 <do, re>16 <dod re> <re mib>8 <dodd' re>16 <mi fa>
  << {<mid fad> q q q} \\ {sol,4} >> |
  <mid' fad>8 <fadd sold>16 <soldd lad>
  <lad si>8 <fadd sold>16 <soldd lad> |
  <re lad' si>8 <la mi' si'> r <dod mid si'> r <do fad' si> |
  r16 <sol' si> q q <dod, sol' si> <la dod> q q
  q <sol la> <mib sol la> q q8 r |
  % k %
  <re la' mi'> r <do fad si> r |
  <re la' mi'> r <dod mid si'> r r16 <lad sold' dod>8. |
  <re la' mi'>8 r <do fad si> r <re la' mi'> r <fa do' sol'> r |
  <lab mib' sib'>4 r8 <la\harmonic re\harmonic mi'\harmonic>4. |
  <do sol'\harmonic si\harmonic>4.
  <la\harmonic re\harmonic mi'\harmonic>4
  <la\harmonic re\harmonic mi'\harmonic>8
  \xNotesOn
  <mi sol si re fa>
}
