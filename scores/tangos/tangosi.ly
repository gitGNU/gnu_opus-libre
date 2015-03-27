\language "italiano"

SiCb =
% \transpose re do
\relative do' {
  \key la \minor
  \acciaccatura {si'16[ do]}
  si4\mf la8-. fa'4-- mi8-. re16-> do si la
  si8(\> la) mi-. fa4--\! mi8-. la'16-> sib do re
  red8--\< si-. sol'-.\! fa4( re8)
  mib,16-> fa sol la
  si4-. \clef bass la,4--\f sol-- fa--
  mi8--\fp si'-.( sold-.) mi-- si'-.( sold-.)
  mi(\downbow fa)
  mi--\downbow do'-.( la-.) mi-- do'-.( la-.)
  mi(\downbow fa)
  mi--\downbow  re'(^"simile" si)
  mi, re'( si) mi,( fa)
  mi mi'( do) mi, mi'( do) mi,( fa)
  mi si'( sold) mi si'( sold) mi( fa)
  mi do'( la) mi do'( la) mi( fa)
  mi re'( si) mi, re'( si) mi,( fa)
  mi mi'( do) mi, mi'( do) mi,( fa)
  mi si'( sold) mi si'( sold) mi( fa)
  mi do'( la) mi do'( la) mi( fa)
  mi re'( si) mi, re'( si) mi,( fa)
  mi\cresc mi'(-. do-.)
  \clef treble fa(-> re) sol-. fa-. si-.
  mi->\f mi4-. mi8--~ mi re-. sol16-> fa mi re
  mi4 r8 mi--~ mi re-. do16-> si do re
  mi8 mi r mi--~ mi red-. sold16-> la sold fad
  mi4 r r fa8(\upbow fad)
  sol-. sol-. r sol--~( sol lab-.)
  \tt {do16( re do sib lab)}
  sol4 r8 sol-.\upbow lab,( sol)
  do16->( re) mib fa
  fad4 fad,8-. fa'-. fa,-.\dim fa'( mi) mi,-.
  mi'( red) red,-. red'( re) dod-. si-. lad-.
  sold4-.\mp \clef bass si,,^"pizz."
  dod8 dod mid dod
  fad,4 lad8 lad' si, si red si
  mid4 sold,8 sold' la, la re lad
  red4 r fad,8 red' lad' dod
  sold, red' fad <mid si'>4.--^"arco" r4
  fad,8^"pizz." fad' lad <sold si>4.--^"arco" r4
  mi8^"pizz." si mi <sol dod>4--^"arco"
  <sib re>8--~ q4
  \clef treble r8 re^"pizz." mib la sib
  do-.\upbow^"arco" si16\< do re mi
  fa2\mf r8 re-. sol16-> fa mi re
  mi2 r8 la,-. sold16-> la si do
  re4-- do8-. sib~-- \t {sib4 mi,( re)}
  do8( la') sold-. la--~ la dod4( mi8)
  \t {fa4( do' si} re2~)
  re4 mi8( si~ si sold la si)
  \t {si4( la fa)~} fa8 mib( re sib)
  la(\< si) la'-. sold~-- sold sol4( fa8)
  mi->\f mi4 mi8-> mi4 mi8-> mi~
  mi re( sol) fa-. do-.\> la-. sol-. fa-.
  \clef bass
  mi->\mf mi4 mi8-> mi4 mi--~
  mi fa8( mi) do-.\> la-. fa-. sol-.
  mi-.\p si'-. sold-. mi-. si'-. sold-. mi-. fa-.
  mi-. do'-. la-. mi-. do'-. la-. mi-. fa-.
  mi-. re'-. sold,-. si-. r4
  fa16(\upbow \f\< mi re do)
  si4\sfz r r2 \bar "|."
}

SiPianoMd = \relative do' {
  R1*7 s1
  \ottava #1
  \acciaccatura {si'''16[ do]}
  si2~\mp si8 la re16( do si la
  si2)~ si8 sol mib16( fa sol la
  si2)~ si8 la sold16( la sold fad
  mi4) r r2
  \acciaccatura {si'16[ do]}
  si2~ si16 sold la si do( lab solb fa
  si2)~ si8 mi, red16( fad sold la)
  si--( re do si) la--( do si la)
  sol--( si la sold) fa--( la sold fad)
  mi4-- \ottava #0 r r2
  r4 <fa,,, la si mi>2.^-
  r4 <fa sold si mi>2.^-
  <sol si mi>4.^- <fa la mi'>8^-~ q4 <sold re' mi>4^-
  <sol do mi>2^- <sol la do fa>4^( <sib mi sold>)
  <lab do mib sol>4.^-^( <lab! re sol>8^-~
  q4 <lab! re solb>^-)
  <sol re' sol>4.^-^( <fa do' sol'>8^-~
  q4 <lab do sol'>^-)
  <lab do fad>4.^-^( <lab! dob fa>8^-~
  q4 <sol sib mi>^-)
  r8 <sold la dod mi>^-^(~ q4
  <sol la do mi>8^-)\noBeam
  fad'' mid16^( fad sold lad
  <si, red si'>2) r8 sold' dod16^( si lad sold
  <lad, mid' lad>2) r8 fad' si16^( la sold fad
  <sold, re'! sold>2) r8 mi' dodd16^( red mid sold
  <lad, red fad>2) r8 dodd16( red mid fad sold lad)
  <si, red si'>4 <si, red fad>8-. <si dod mid>4--
  sold''8 fad16( mid fad sold)
  <mid lad>4 <lad,, fad'>8-. <la si red>4--
  red'8 dodd16( red mid fad)
  <si,? sold'>4. <sol dod>8~-- q mi'16 red
  <sold, dodd>(_- red' mi mid)
  <lad, fad'>4. <dod, sol' la>8~ q2
  <do' do'>8( fa do) <si si'>(
  fa' si,) <mi mi'>( fa)
  <si, si'>( mi si) <la la'>(
  mib' la,) <re re'>( mib)
  <lab, lab'>( re lab) <sol sol'>(
  sib) <sol sol'> <sold sold'>( si)
  <sol sol'>( do) <fad, fad'> <fa fa'>(
  la) <mi mi'>( dod' la)
  <re, do' re>4( mi8 <re fa do'>~ q4 <fa si>)
  <re mi si'>4.( <mi la>8~ q do <re la'> mi)
  <fa la>4.( <re lab'>8~ q do <sib lab'>4)
  <sib re sol>( la8 <sold re' sold>~
  q4 <la do fa>)
  <fa la si mi>4.( <fa sold si mi>8~
  q4 <sol si mi>)~
  q2 r
  <fa la re mi>4.( <fa lab mi'>8~ q4 <sol do mi>
  <si? re mi>) r r2
  \ottava #1
  \acciaccatura {si'''16[ do]}
  si2~ si8 la sold16( do re red
  si2)~ si4 la16( sol fa mib
  si'2) r
  r4 <lad si>-. \ottava #0 r2
}

SiPianoMg = \relative do' {
  \clef bass
  \grace s8
  R1*4
  mi,,4-.\p r8 mi-. r4 mi-.
  mi-. r8 <lad, si>-. mi'-. <lad, si>-. mi'4-.
  mi-. <lad si>8-> mi-. r <lad, si> mi'4-.
  mi8-> <lad si>-. mi'-. \md <lad si>-.
  mi'-. <lad si>-. mi'4-. \mg
  \clef treble
  \acciaccatura {si16[ do]}
  si2~ si8 la re16( do si la
  si2)~ si8 sol mib16( fa sol la
  si2)~ si8 la sold16( la sold fad
  mi4) r r2
  \acciaccatura {si'16[ do]}
  si2~ si16 sold la si do( lab solb fa
  si2)~ si8 mi, red16( fad sold la)
  si--( re do si) la--( do si la)
  sol--( si la sold) fa--( la sold fad)
  mi4-- r r \clef bass \t {mi,,8_(\< fa mib}
  <re re'>2)\mf r4 re
  <dod dod'>2 r4 dod
  do4. si8~ si4 sib
  mi,8( la) mi' re--~ re mi do4--
  <fa, fa'>4._( sib8~ sib4 fab')
  <mib, mib'>4._( <lab lab'>8~ q4 mib')
  re4._( reb8~ reb4 do)
  r8 fad~_( fad4 fa4) <red lad' dod fadd>\arpeggio
  sold8-.( red'-. <fad sold>-.
  <dod mid si'>~--) q4 r
  fad,8-.( dod'-. <fad sold>-.
  <si, red la'>~--) q4 r
  mi,8-.( si'-. <re mi>-. <la dod sol'>~--) q4
  <lad dodd sold'>--
  red,8-.( lad'-. red-. mid-. fad4-- fadd--)
  sold, lad si dod
  fad, sold la si
  mi,? sold la lad
  red8(-. fa!-. sol!-.) <la, la'>~ q2
  re,4-- re-- sol-- sol--
  do,-- do-- fa-- fa--
  sib,-- re-- mib-- mi--
  la-- mi'( la sol)
  fa4.( sol8~ sol4 sol,)
  do4.( fa8~ fa4 do8 dod)
  re4.( sib8~ sib4 re)
  mib4.( mi8)~ mi4 si8( do)
  re4.( dod8~ dod4 do)~
  do2 r
  si4.( sib8~ sib4 la
  sold) r r2
  \clef treble
  \acciaccatura {si''16[ do]}
  si2~ si8 la sold16( do re red
  si2)~ si4 la16( sol fa mib
  si'2) r
  r4 <si do>-. r2
}

