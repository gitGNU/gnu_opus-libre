%-- Chansons Oulipiennes -- popincourt.ly -------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

PopincourtVoix =
%\transpose re fa
\relative do' {
  \time 3/4
  \key si \minor
  \tempo "Tempo de java (très swingué)" 4 = 152
  r8 si re fad si, re fad4 r8 si, si re |
  fa!4 lad, si8 re fad2 si,8 dod |
  fad4 re8 la! si re |
  fad2 r8 re dod si lad si dod re |
  fad4. do!8 la do | la'4. mi8 re mi |
  fad2 r4 r8 do do do do do | la' sol fad2 |
  r8 si, re fad si, re fad2 r8 dod
  dod sid dod mi re dod fad,2 r4 R2.*3 \bar "||"

  r8 si re fad si, re fad4 r8 si, si re |
  fa!4.\( lad,8\) si re fad2 si,8 dod |
  re mi4 la,!8 si re |
  fad2 r8 re dod si lad si dod re |
  fad4. do!8 la do | r4 la'8 mi re mi |
  fad2 r4 r8 do do do do do | la' sol fad2 |
  r8 si, re fad si, re fad2 r8 dod
  dod sid dod mi re dod fad,2 r4 R2.*3 \bar "||"

  r8 si^\pp re fad si, re fad4 r8 si, dod re |
  fa!4 lad, si8 re fad2 si,8 dod |
  re4 mi8 la,! si re |
  fad2 r8 sol mi red mi sol la sol |
  fad4. do!8 la do | la'4. mi8 re mi |
  fad2 r8 do | do^\> do \times 2/3 {do4 do re} |
  mi8 fad4.^\! r4|
  r8 si, re fad si, re fad2 r8 dod
  dod sid dod mi re dod fad,2 r4 R2.*3 \bar "||"

  \times 2/3 {lad'8 lad lad} lad red, sid mid |
  fad2 r8 dodd | red lad' la? mid red si |
  fad'2 r8 re | mi lad sold red sold, dodd |
  fad2 r8 dod | fad dod lad do re mi |
  fad4. do8 la do | la'4. mi8 re mi |
  fad2 r8 do | do do do4. do8 |
  la'4 sol8^"(rit.)" fad4. |
  r8 si, re fad si, re fad2 r8 dod
  dod sid dod mi re dod fad,2 r4
  R2.*2 r2 r8 si \bar "||"

  do dod re red mi mid | fad2 si,8 dod |
  fa re lad4 si8 re | fad2 si,8 dod |
  re4 mi8 dod re mi | fad2 r8 re dod si lad si dod re |
  fad4. do8 la do la'4. mi8 re mi |
  fad2 r8 la\( |
  fad\) mi\( fad\)^"rit." re\( fad\) dod\( | fad2.\) |
  r8 si, re fad si, re fad2 r8 dod |
  dod sid dod mi re dod fad,2 r4 |
  r8 \tiny si'8[ re fad si, re] fad2
  \normalsize r8 dod, |
  dod si re fa mib re | do2. R2.*2 \bar "|."
}

PopincourtGrille =
%\transpose re fa
\chordmode {
  si2.:m si:m/lad si:dim/la si:m/sold
  sol re dod:dim do fa sold:7 do/sol fad
  sol re fad do fad do fad

  si:m si:m/lad si:dim/la si:m/sold
  sol re dod:dim do fa sold:7 do/sol fad
  sol re fad do fad do fad

  si:m si:m/lad si:dim/la si:m/sold
  sol re dod:dim do fa sold:7 do/sol fad
  sol re fad do fad do fad

  red:m red:m/re red:dim/dod do:dim
  mi/si lad:7 fad/lad do fa lab:7 do/sol fad
  sol re fad do fad do fad

  si:m si:m/lad si:dim/la si:m/sold
  sol re dod:dim do fa sold:7 do/sol fad
  sol re fad do
  sol re fad2 sol4 do2.:m s do:m6.9
}

PopincourtToy =
%\transpose re fa
\relative do' {
  \key si \minor
  si'2.( lad la sold) sol2( re4 fad2.) mid mi4( fa sol)
  la2.( lab sol fad2) r4
  sol <si re sol> q re, <la' re fad> q
  fad <lad dod fad> <lad dod fad> <si, si'>2. R2.*3
  si'4( si' si, lad2.) la4( la' la, sold2.)
  sol4( re' mi fad2.) fa mi4( fa sol)
  la( la, la' sold2.) sol4( sol, sol' fad2) r4
  sol, <si re sol> q re, <la' re fad> q
  fad <lad dod fad> <lad dod fad> <si, si'>2. R2.*3
  R2. r4 fad''2\pp\laissezVibrer R2.
  r4 re2 R2. r4 la( sold
  sol2.) mi4( fa sol) la2.( sold
  sol fad2\fermata) r4 \pageBreak
  sol <si re sol> q re, <la' re fad> q
  fad <lad dod fad> <lad dod fad> <si, si'>2. R2.*3
  red'4( red' red, dodd2.) dod4( dod' dod, do2.)
  si4( si' si, lad2.) lad4( dod fad)
  <mi, mi'>( <fa fa'> <sol sol'>) <la la'>2. <lab lab'>
  <sol sol'>4( <la la'> <sol sol'>
  <fad fad'>2)\fermata r4
  sol <si re sol> q re, <la' re fad> q
  fad <lad dod fad> <lad dod fad> <si, si'>2. R2.*3
  R2. r4 re'( si fad2.) r4 si( sol re2.) r4 sol( la)
  si2. lad4( si lad) la2( sol4 fad2.)
  <sol sol'>4\fermata <la la'>\fermata
  <sol sol'>\fermata
  <fad fad'>2:32\fermata r4
  sol <si re sol> q re, <la' re fad> q
  fad <lad dod fad> <lad dod fad> R2.
  r8. si16(^"solo" re8. fad16)
  si,8.( re16 <fad, fad'>2.)
  R2. r4 do8 mib sol la do_\> mib sol4 la do re2\!
}

PopincourtPianoMd =
%\transpose re fa
\relative do' {
  \key si \minor
  \time 3/4
  r8. <si re fad>16-.\mp r4 <si re fad>4-- |
  r8. <si re fad>16-. r4 <si re fad>4-- |
  r8. <lad re fa>16 r4 <si re fa>4 |
  r4 <si re fad>8.( dod16 si8. la16) |
  si8.( <re fad>16) r8. la16( <si re fad>4) |
  r8. <la dod mi fad>16 r4 <la dod mi fad> |
  mi'8.-- <mid, si'>16 re'4-- <mid,! si' mi!>-- |
  <fad sib re mi>8.(-- sib16
  fa'8.-- sib,16 sol'4--) |
  <mi la>8.-- la,16( mi'8.-.) la16( mi4) |
  <mib solb lab>8. do16( solb'8.)
  sib16( <do, solb'>4) |
  <do fad sol>8( r <sol mi'> r do) r |
  <lad mi' fad>8.-- lad16 <mi' fad>8
  r <sol lad dod>4 |
  r4 <si re sol>->-. q->-. |
  r <la re fad>->-. q->-. |
  r <lad dod mi fad>->-. q->-. |
  r8.\f <si, re mi si'>16->~ q8. si16->~ si8. do'16 |
  <dod, fad lad>4->-- <la fad'>8.-. lad16 dod4-. |
  r4 <si mi si'>->--~ <sib mi do'>-. |
  <dod fad lad>2-- r4 |
  
  r8.\mp <si re fad>16-. r4 <si re fad si>4-- |
  r8. <si re fad>16-. r4 <dod re fad lad>4-- |
  r8. <si re fa>16 r4 <si re fad la>4 |
  r4 <si re fad sold>( lad' |
  si4) re,8. <fad sol si>16~ q8. dod'16 |
  <mi, fad la>8.( re32 mi re8.-.) dod16 si8. la16 |
  sol8.( <sib mi>16) r8. sib16( <sol mi'>4-.) |
  <la sib re fad>-- \t {sol8( la sib}
  \t {mi fa sol)} |
  <sol la do>4 fa8. mi16~ <mi la do>4 |
  <mib solb lab do>8. sib'32( do sib8. lab16 solb4) |
  <si, do mi sol>( re-. mi-.) |
  <lad, mi' fad>4-- <soldd lad>8. <mi' fad>16 r4 |
  r4 <si' re sol>->-. q->-. |
  r <la re fad>->-. q->-. |
  r <lad dod mi fad>->-. q->-. |
  r8.\f <si, re mi si'>16 <mi' si'>4->~
  q8. <do do'>16 |
  <dod fad lad>4->-- <la mid' fad>-.
  <mi soldd lad dod>-. |
  r4 << {do'( si)} \\ <si, do mi>2 >> |
  <mi fad lad>4-- <dod mi fad>-- <lad dod lad'>-- |
  
  r4\pp << <re' fad>2 \\ {dod4( si)} >> |
  r <lad re fad>2-- | r4 <la re fad>2-- |
  r4 << <si re fad>2 \\ {la4( sold)} >> |
  <fad sol si re>2( <la mi'>4) |
  << <mi fad dod'>2 \\ {si'4 la} >> <dod, mi fad> |
  r4 << <mi sol>2 \\ {lad,4( si)} >> |
  <do mi>8.-- sol16 <do fa>8.-- sol16
  <do sol'>8.-- sol16 |
  <mi' la>8.( do'16) r8. la16( mi4) |
  <do mib>4 \acciaccatura la'''16 <do, solb' sib>4-.
  r | <sol,, do mi>4( re' do) |
  lad2 r4 |
  r <si' re sol>->-. q->-. |
  r <re fad la re>->-. q->-. |
  r <lad dod mi fad>->-. q->-. |
  r8.\f <si, do mi si'>16~q4 <re mi sol do>-- |
  <dod fad lad>8. <lad dod fad>16
  r8. <sol lad dod>16~ q8. <fad lad>16 |
  r4 <si' do mi sol do>(\arpeggio <si sol' si>) |
  <lad dod fad lad>4.. <la re solb sib>16
  <la re solb sib>4 |

  <sib mib mib solb sib>8.\fp re,16(
  <mib solb sib>4) <sib fa' solb>-- |
  <mib solb sib>8.( re16 <mib solb sib>4)
  <sib fa' solb>-- |
  <mib solb sib>8.( re16 <mib solb la>8.)-.
  <mi fad la dod>16~-- q8. mi16 |
  <mib fad la do>4 <mib fad la re>(
  <fad la do>8.) mib16 |
  <mi sold si>8.-- si16 <red mi lad>4--
  <red mi sold>-- |
  <lab re sol>8.-- lab16
  << {<re solb>8.~^( <re fa>16)~ q4} \\
  {s4 <lab sib>} >> |
  \t 4 {<dod fad>8( fad, dod' lad dod fad
  lad dod re} |
  <mi, sib' mi>8.) mi16 <do fa>8.-- sib16
  <do sol'>8.-- sib16 |
  \t {<mi sol la>8 la-> mi'->} la4-> r |
  << {<sib,, do>8-- q16 q q8-. q} \\ {solb2} >>
  <solb sib do>4-- |
  <sol do>( <re' mi> <si do sol'> |
  <lad dod fad lad>)\arpeggio
  <fad' lad dod fad>2\arpeggio \fermata
  r4 <si re sol>->-. q->-. |
  r <fad la re fad>->-. q->-. |
  r <si dod fad>_( <lad dod fad>) |
  r \ottava #1 <sol''' la si>8\> fa <mib fad sold> re |
  <lab sib reb> la <mib fa sol> re <lab sib reb> sol |
  \ottava #0
  <reb mib fad> do <sol la si> fa <reb mib> do |
  lad2.\!

  r4 <si re fad>2--
  r4 <<
    {re''( si fad2.)} \\
    {<dod, re fad>2-- r4 <lad re mid>--_( la)}
  >> r4 <<
    {si''( sol? re2.)} \\
    {<sold,, re' fad>2-- r4 <sol si re>--^( <dod mi>)}
  >> r4 <<
    {sol''( la si2.) lad4( si lad la2 sol4 fad2.)} \\
    {
      <la,, mi' fad>2-- r4 <sold si re>_( <sol sib mi>)
      r4 <fad sib mi>2-- r4 <sol la mi'>2--
      r4 <solb lab do>2--
    }
  >> <la' do mi sol>4\arpeggio
  <sol do mi la>\arpeggio _"segue"
  <la do mi sol>\arpeggio |
  <mi lad dod fad>2--\arpeggio \fermata r4
  r <si' re sol>->-. q->-. |
  r <la re fad>->-. q->-. |
  r <lad dod fad>->-. q->-. |
  r <si, do mi si'>2--\p |
  r8. si''16(_"solo" re8. <fad, fad'>16 si8. re16 |
  <fad, fad'>2.) |
  r4 <mi,, lad re>( <fa si mib>) |
  r4 <mib' sol do>-. q-. |
  r <re fa sol do>-. q-. |
  r2 <do' mib sol la>4\arpeggio \fermata
}

PopincourtPianoMg =
%\transpose re fa
\relative do' {
  \clef bass
  \key si \minor
  si,4-.-- r8. si16-. r8. si16( |
  lad4-.--) r8. lad16-. r4 |
  la4-.-- r8. la16-. r8. la16-. |
  sold4-- r2 |
  sol4-- r8. fad16( mi4-.) |
  re4-- r8. re'16-. r8. re16( |
  dod4) r8. dod16-. r4 |
  do4--( re-- mi--) |
  fa-.-- r8. fa,16 sol4 |
  lab4 r2 |
  sol4-. do-. sol'-. |
  fad-- r8. mid,16( fad8) r |
  sol4-- r8. sol16-. r8. sol16 |
  re'4-- re,8.( re'16) r4 |
  fad,8.-- fad'16 sold,8.-- sold'16 lad,8.-- lad'16 |
  <do,, do'>2->-- r4 |
  <fad, fad'>2->-- r4 |
  <do' do'>2->-- r8. do'16 |
  <fad, fad'>4(-- sold8-. r lad-.) r |
  
  si4-.-- r8. si,16-. r8. si'16( |
  lad4-.--) r8. lad,16-. r4 |
  la'4-.-- r8. la,16-. r8. la'16-. |
  sold4-- r8. re'32( mi re4) |
  sol,4-- r8. fad16( mi4-.) |
  re4-- re8.( re'16-.) r8. re16( |
  dod4) r8. dod16-. r4 |
  do4--( re-- mi--) |
  fa-.-- fa,8. fa'16 sol4 |
  lab4 r2 |
  sol4-. r8. do,16-. r8. sol16-. |
  fad8.-. mi16 re4-. dod-. |
  <sol sol'>4~ q8. si'16( dod4-.) |
  <re, re'>2 r4 |
  fad8.-- fad'16 sold,8.-- sold'16 lad,8.-- lad'16 |
  <do,, do'>4..->-- q16 r4 |
  <fad fad'>4..->-- q16 r4 |
  << {do'4( re mi)} \\ do,2 >> |
  <fad fad'>4(-- sold'8-. r lad-.) r |
  
  << {r8. si16 r8. si16 r8. fad16} \\ si,2. >>
  << {r8. si'16 r4 r8. fad16} \\ si,2. >>
  << {r8. si'16 r8. fad16 si8. fad16} \\ si,2. >>
  si8. si'16 r2 |
  si,8. sol'16 sol,4 dod |
  re4 la8. re,16~ re8. re'16 |
  dod4 r8. dod16~ dod8. dod16 |
  do4-- re-- mi-- |
  fa r8. fa16( fa,4) |
  lab r re,,-. |
  sol'4( do sol') |
  fad8.( dod16) r8. mid,16( fad4-.)
  sol4.. sol16 sol,4 |
  <re' re'>2 mi4 |
  fad8.( mi16 re4-.) dod-. |
  <do do'>4.. do16~ do8. do'16 |
  <fad, fad'>4 fad, fad'' |
  <do, do'>4.. mi'16~ mi8. sol16 |
  fad,8.-> fad'16 mid,8.-> mid'16 mi,8.-> mi'16 |

  mib4-- sib8. mib,16~ mib8. mib'16 |
  re4-- sib8. mib,16~ mib8. re'16 |
  reb8.-- sib16 mib4-- reb-- |
  do8.( do16) r8. do,16( do'4) |
  dob,4.. dob'16 ~ dob8. dob,16 |
  sib'4-. sib,2-- | sib2( reb4) |
  <do do'>-- <re re'>-- <mi mi'>-- |
  <fa fa'>-- r sol |
  lab2 r4 |
  sol( la sol) |
  <fad fad'>2 \acciaccatura mid'8 fad4-. |
  <sol,, sol'>4..-- <sol' sol'>16-. r8. sol16 |
  <re re'>2-- \t {re8( mi mid)} |
  <fad, fad'>2.--
  \ottava #-1 do4\colpugno
  \ottava #0 <do'' mi si'>4.^(_"loco" do'8) |
  <fad,, dod' lad'>4 dod' fad, |
  do <do' mi sol si>2--
  <fad, dod'>8.-- fad'16 sold,8. sold'16
  lad,8.-- lad'16 |

  si,2 r8. fad'16 |
  si,2 r8. fad'16 |
  si,2 r8. fad'16 |
  si,2 fad'8. re16 |
  sol,2 r8. la16 |
  re,2 r8. re'16 |
  dod2 r4 do2 mi,4 |
  fa2 sol4 lab2. |
  <sol sol'>2. |
  <fad fad'>2\arpeggio \acciaccatura mid'8 fad4 |
  sol,4.. sol'16 r8. sol16 |
  re4 re,8. re'16 r8. mi,16 |
  fad8.-- fad'16 sold,8.-- sold'16
  lad,8.-- lad'16 do,4 r8. mi16( fad4) |
  sol,4( <si' re sol>) q |
  re,( <la' re fad>) q |
  fad,2( sol4) |
  do2. sol |
  <do, do'>2\laissezVibrer
  <do'' sol'>4\fermata
}
