%-- 7 Tangos -- tangofa.ly ----------------------------------------%
% 2015 Valentin Villenave <valentin@villenave.net>

\language "italiano"

FaCb =
% \transpose re do
\relative do' {
  \tempo "Andante con moto" 4 = 96
  \clef tenor
  \key la \minor
  \romanStringNumbers
  \set Timing.beamExceptions = #'()
  fa4.(->--\mf\2 mi->--) red8( mi)
  fa4(-> la,8-.)\open mi'4.-- <la, red>8( mi')
  << {fa4 fa8-. mi4. red8( mi)}
     \\ {la,( la')^\open s la,( la'\open la,-.) la4} >>
  << {fa'4 fa8-. mi4. red8( mi)}
     \\ {la,( la')\open r la,( la'4)\open la,} >>
  \clef treble
  <la fa'\2>8( do')\1 fa,-.\2 <la, mi'>4(^"simile" si'8-.)
  <la, red>( mi')
  <la, fa'>( do)\3 <la fa'>-. <la mi'>4( sol'8)
  <la, red>( mi')
  <la, fa'>8(\cresc do') <la, fa'>-. <mi' si'>-> <la, mi'>-. q-.
  <la red>( mi')
  << {do'([ si)] la} \\ {fa4 fa8} >>
  \acciaccatura mi8 mi'4(\open mi,8)
  <si\open red\3>( mi)
  % III
  fa'4.(\1\f mi4 do8-.) red( mi)
  fa8( la16 si la fa) mi4 <si,\3 mi\2>8-. <lad red>( <si mi>)
  \t {r4 fa'' mi} si'16 fa8.~ fa8 red
  \t {<fa si>4 <mi do'> <fa si>} <red la'> <mi sold>
  <fa sib> <mi la>2 <re sol>8 <red sold>
  \pl mi4 {sib'16 la sib8} r <re, sold>8~ q4 \clef bass <si,, mi>4
  \clef treble
  <fa''' sib>8 <mi la> <sol do>16 <fad si> <fa sib>8~
  \t {q4 <re sol> <red sold>} <do fa> <si mi>
  \clef bass r8 mib,^"pizz." re la
  \acciaccatura do sib16^"arco" la sib do re mi fa8
  \clef treble
  mi16 red mi sol sib la sib sol
  sol mi fa sol la sold la8
  re,16 fa la re do8\prall sib16 la
  sol8\prall fa16 mi
  \clef bass re8\prall do16 si la8\prall sold fa' red
  \halfBeat
  \t 8 {mi16 mi mi do do do mi mi mi fa fa fa \clef treble la la la}
  \fullBeat
  do8 \t {mi fa sol}
  <reb lab'> reb' lab <reb, sol>4 re8 mib16 fa mib fa
  <do sol'>8 do' sol <do, fa> fa, do' reb16 mib reb mib
  fa8 <sol, sib> fa' <fa si?>4 fa8 \pl {mib reb} sib'4
  <mi, sib'>8\noBeam \clef bass mi,, do' sol' \clef treble reb'4 do
  sib'4. la8~ la4 sold8( la) sib4. la8 sol fa mi fa
  la4. sol8~ sol2~ sol4 r r2
  lab4. sol8~ sol2 \t {fad8 sol lab~} lab4~ lab8 sol fa mi
  reb4. do8~ do2 \clef bass \t {r4 reb, la} do fa,
  <fad, fad'>4. dod'8 lad'4 dod,
  fad,4. dod'8 lad'4 dod,
  fad,4. sid8 sold'4 sid,
  fad4. sid8 sold'4 sid,
  fad4. si8 sold'4 re
  fad,4. re'8 sol4 si,
  dod4. sold8 \t 2 {
    dod4 red fad mid dod' sold'
    \clef treble si sid dod
  }
  fa4. mi4. red8 mi
  fa4. mi4. r4
  fa,4. mi8~ mi do red mi
  fa8 sold16 la sold fa mi8 \clef bass r4 mi,
  <mi fa'>4. <mi mi'>8~ q2~ q2. r4
  \clef tenor
  <la fa'>4. <mi' si'>8~ q2~ \t {si'4 si mi,} do' fa,\fermata
  \bar "|."
  % 2 mesures sur Mi7
  % IV
  % re1~ re4. mi2 re4. mi2 | re4 mi fa fad
  % V
  % sol<m7>2 do fa, sibM7 si mi, la1 (<do mi lab do - mi sib'>
  % VI
  % sol<m7>2 do fa, sibM7 si mi, la1 (<do mi sold do - mi sib'>
  % VII
  %
  %
  %
  % <fa do'>1
}

FaPianoMd = \relative do' {
  \key la \minor
  R1*4 \clef bass
  \ottava #-1
  la,,8-.\dyn "ppp_secco" si-. mi-. red-. sol-. fad-. fa-. re-.
  do-. lad-. si-. dod-. re-. sold,-. sol-. fa-.
  mi-. sold-. dod-. do-. red-. sib-. la-. fad-.
  mi-. lad,-. si-. fa'-. mi-. fa-. si-. sib-.
  \ottava #0
  mi-._"loco" fad-. si-. lad-. re-. dod-. sol-. sold-.
  la-. sold-. do-. si-. fa'-. red-. sib-. fad-.
  mi-. la-. re-. do-. red-. dod-. sol-. fa-.
  sold la re red re la sold' red
  <mi la do fa>1\arpeggio \clef treble
  <la si re sol>\arpeggio
  <do mi fa la>2\arpeggio <re fad sol si>\arpeggio
  <mi fa do'>8 la sold <mi fa do'>4 la8 \t {<do, re sol> sold' la}
  <fa sib>4. <mi sib'>8~ q4 red8 mi
  mi( la) mi <re la'>4 sib8 do dod
  <re la'>4. <re sold>8~ q la' si( do)
  \t {si4 la\prall fa} mi << fa \\ {si,8( do)} >>
  reb16\prall do reb mib fa sol lab8
  mi16 sol si? do mib reb do sib
  sib sol lab sib do si do8
  fa,16 lab do mi sol fa mib reb
  do8\prall sib16 lab sol8 si\prall sib16 lab sol8 lab16 sol fad fa
  \pl sib,2. {\t {mi4 fa fad} <reb sol>} r
  \pl {<do fa>1~\arpeggio q2}
  {<sib'>4.\arpeggio la8~ la2~ la2} <do, fa la>
  <si re sol>1~\arpeggio q4 dod \t {re mi fa}
  \pl {<sib, reb fa>1~\arpeggio q2}
  {<lab'>4.\arpeggio sol8~ sol2~ sol2} <sib, reb mi sol>
  \set tieWaitForNote = ##t
  fa'8~ la,~ do4~ <la do fa>2
  \set tieWaitForNote = ##f
  fa'8 la, reb do \t {fa4 <fad fad'> <sold sold'>}
  \pl dod1*7/8 {<si si'>4.\arpeggio <lad lad'>8~ <lad lad'>2*3/4}
  dod8 \t {<re, re'>4 <si' si'> <lad lad'>~}
  q8 dod <sold sold'> <fadd fadd'>
  \pl <sid red>1*3/2\arpeggio
  {<lad'>4.\arpeggio <sold, sold'>8~ q2~ q} r
  \pl <si re>1
  {<la! la'!>4. <sold sold'>8~ \t {q4 <mid mid'> <fad fad'>}}
  \pl re'1
  {<lab lab'>4.\arpeggio <sol sol'>8~ q4 <mid mid'>8 <fad fad'>}
  << {fad'4. mid8~ mid4 sold,4} \\ {fad2. s4} \\ <sold dod>1 >>
  \pl {sold,2 la} {mid'4. mi8~ mi2} \clef bass
  <mi, la do fa>1\arpeggio <fa sold si mi>\arpeggio
  <fa la do re>2\arpeggio <re sold si>\arpeggio
  \pl <mi fa>2\arpeggio {<sib'>2\arpeggio sold}
  <mi la>1\laissezVibrer R1*3
}

FaPianoMg = \relative do' {
  \clef bass
  \key la \minor
  R1*8
  la,,4 do mib fa mi re sol dod,
  si sib fad sold la mib la mib'
  re4. fa' la,4 mi4. sold' do,,8 dod
  re4 fa'8 mi,4 sold'8 sib, la
  re,4 mi fa fad
  sol re' do sol fa la sib fa'
  si, fa mi sold la si do la
  sib reb mib sol, lab mib' reb lab
  sol lab sib si do do, r2
  fa4. do'8 la'4 do,
  fa,4. do'8 la'4 do,
  fa,4. si8 sol'4 si,
  fa4. si8 sol'4 si,
  fa4. sib8 sol'4 sib,
  fa4. sib8 sol'4 sib,
  fa4 la8 do sol'4 fa
  la,4. reb fa,4
  <fad fad'>1~ q2. r4
  <fad red' sold>1~ q4 dodd' \t {red mid fad}
  \pl {<fad,>1\arpeggio ~ fad}
  {<si re sold> \arpeggio <si sol' re'>}
  dod1 dod,2. dod4
  re4. fa' la,4 dod,4. re' sold,4
  re fa'8 dod,4 dod'8 re sold,
  re4 dod si sib
  la4. la8~ la2 la4. la8~ la2
  r4. la8~ la2\laissezVibrer R1
}
