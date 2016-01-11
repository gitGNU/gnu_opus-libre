%-- 7 Tangos -- tangosol.ly ---------------------------------------%
% 2015 Valentin Villenave <valentin@villenave.net>

\language "italiano"

SolCb =
% \transpose re do
\new Voice \with { \consists Balloon_engraver }
\relative do' {
  \tempo "Andante con moto" 4 = 96
  \clef bass
  \key la \minor
  sol4\f ^"pizzicato al fine"
  \xNote re'16 \palmMute re \xNote re \palmMute re
  \xNote re4 mib,
  sol
  \xNote re'16
  \balloonGrobText #'NoteHead #'(1 . 1) \markup \italic "right thumb"
  \palmMute re
  \xNote re \palmMute re
  \xNote re4 mib,8 re
  fad8
  \xNote re'16 \palmMute re \xNote re8
  \xNote re16 \palmMute re \xNote re8
  re,4.
  fad8
  \xNote re' \xNote re16 \palmMute re \xNote re \palmMute re
  \xNote re8 sib4.
  << {
    mi,8 \xNotesOn re'16 \palmMute re re8 r re re r4 \xNotesOff
    mi,8 \xNotesOn re' re r re16 \palmMute re re8 re4 \xNotesOff
    mi,8 \xNotesOn re'16 re r8 re16 \palmMute re re8 re4 re8\xNotesOff
    mi,8 \xNotesOn re' r \xNotesOff
    mi,8 \xNotesOn re' r re re \xNotesOff
     } \\ {
    mi,4 r8 mi4.-+ mi8-+ si-+
    mi4 r8 mi4.-+ mi8-+ si-+
    mi4 r8 mi4.-+ mi8-+ si-+
    mi4 si8-+ mi4 si8-+ mi-+ si-+
  } >>
  mi\< la re sol
  \clef treble do fa4--\! mi16( red)
  mi8\noBeam \clef bass mi,,16\< la re8 sol
  \clef treble do fa4--\! dodd16( red)
  mi8\noBeam \clef bass sold,,\< re' sol
  \clef treble do fa4--\! mi16( red)
  mi8\noBeam \clef bass mi,,16\< sold re'8 sol
  \clef treble do\! fa-. sol16(-> fa) mi(-> red)
  mi8\noBeam la,,\< re sol \t {do4\! fa mi'\open}
  mi,8\noBeam fad,16 si mi8 la4->-- sol8\prall fa red
  mi\noBeam \clef bass mi,,\< re' sol
  \clef treble do fa4--\! mi16( red)
  mi8\noBeam la,, re sol \t {do4\> dod fa}
  mi8\!\noBeam la,, si mi la re4-- sol,8
  re'\noBeam \clef bass do,,16 fa sib8
  \clef treble mib lab re?4-- sib16( si)
  do8\noBeam \clef bass fa,, sib mib
  \clef treble lab reb4-- \t {do16( reb do)}
  si8\noBeam \clef bass fad,,16 si mi8 la
  \clef treble re\< sol do( si)
  mi\! la, re, do' \t {si4 lad fad}
  \clef bass
  sol8 sib, do, re' \t {dod4 sold' mi}
  fa8-- la, si, fa''-- la, si, sol''-- si,,
  mi'-- re si mi, r fad,\> sol sold
  la4\! si do si la do re red
  mi fa sol fa mi re do si
  la sol fad sold la si do dod
  re mi fa re sib re mib fa
  mi8 mi16\< la re8 sol \clef treble
  do\> fa4-- mi8--\laissezVibrer
  r4\! sol,,8 do fa sib mib( mi)
  mi,, mi16\< la re8 sol do\> fa4-- mi8--\laissezVibrer
  r4\! r8 \xNotesOn do,16 \palmMute do do8 do do4 \xNotesOff
  mi,8 mi16\< la re8 sol do\> fa4-- mi8--\laissezVibrer
  r8\! \xNote do,[ \xNote do] do fa sib mib4--
  mi,,8\< la re sol do\> fa4-- mi8--\laissezVibrer
  \clef bass
  r8\! \xNotesOn \t {re,16 \palmMute re re} \palmMute re8 \xNotesOff
  si,-+ \xNote re' mi,-+ \xNote re'16 \palmMute re \xNote re8
  mi,8 la re sol
  \clef treble
  do fa4-- mi8--\laissezVibrer
  r8 \xNote do,16 \palmMute do \xNote do8\noBeam
  do fa sib mib4--
  mi,,8\> la re sol do fa4-- mi8--\laissezVibrer
  r\! dod, fad si mi2--
  mi,,8 la re sol do fa4 mi8\laissezVibrer
  r4 sold,,\dim \t {dod fad si}
  mi mi8 la re4 r
  r sol2\pp\laissezVibrer r4
  \bar "|."
}

SolPianoMd = \relative do' {
  \key la \minor
  sol8--\sfz sol16 do fa8-. sib4->( mib,8) lab( reb,)
  sol,8-- sol16 do fa8-. sib-. mib( lab) reb( reb,)
  \mg fad,,-- \md fad16 si mi8-. la4->( re,8) sol( do,)
  \mg fad,-- \md si16 mi-2 la8-.-5 re-.-1
  sol(-2 do)-4 fa( <fa, sib>)
  \ottava #1 <si mi si'>1*15/16\fp\arpeggio s16
  \ottava #0 r4 sol,8( do fa4)
  \ottava #1 <sib mib lab>-.--
  <si mi si'>1*1/4\arpeggio
  \ottava #0
  \mg <sib,,, mib lab>8
  \showStaffSwitch
  \md <si''! mi! la!>4-- ^"(loco)"
  \mg <sib,,! mib! lab!>8
  \md <la''! re sol>4--
  \hideStaffSwitch
  \mg \stemUp <sib,, mib>8
  \md \stemNeutral <sold'' dod fad>(--\cresc
  r16 <sol do fa>8.-- r8 <mid fad si mi>4.--)
  mi8(\mf la) si( do) r <mi, la fa'>4-- <do' mi>16( <si red>)
  <la mi'>8( mi) la( si) r <mi, do' fa>4-- <sib'^2 re^4>16( <la^1 red^3>)
  <sold^2 mi'^5>8( mi) lad( si) r <fadd sold? re' fa>4-- <la mi'>16( <lad red>)
  <si mi>8( mi,) si'( do) re-. <si la'>-.
  <mi^3 sol^5>16(\> <re fa> <do^1 mi^3> <si^2 red^4>
  <la mi'>4)\mp si8( do) r <do fa>4-- <si red>8-.
  <la mi'>( mi) si'( do) r <si do fa>4-- <la red>8-.
  <sold mi'>4-- lad8( si) r <do re fa>4-- <la mi'>16( <lad red>
  <si mi>4) do8(\>\prall sib16 la) sol8-- mi-- fa( sol)
  <mi fa la>4(--\p re8) <mi fa la> r <sib re fa la>4^(-- lab'8)
  <re, mib sol>( do) <re mib sol>( sib)
  \t {r4 \pl <lab do mib>2*1/2 sol'4-- solb--}
  <do, reb fa>8( lab) \clef bass <fa do'>( reb)
  r <reb sol do>4.-- <re sold si>2-- \clef treble
  r8\cresc \pl {sib'( la sol)} <sol dod mi>4.--
  <la do re fa>4.(--\mp q8-.) r <lad si red fad>4.--
  <sib re mib sol>4(-- q8-.) <la dod mi sold>--~ q2
  <la fa' la>8( re-.) si-. <si fa' la>4--
  \pl {s16 <do re fa>--~ q4} {sold'8( la lad)}
  \pl \t {fa4(-- mi-- red--)} <re sold si>1*1/2 mi2
  \clef bass
  \acciaccatura mi8-> mi,\mf mi16( la-2 re8)-5 sol-.-3 \clef treble
  do-.-4 <red, la'^2 si^3 fa'^5>4(--\arpeggio
  <mi do' mi>8--~)
  \t {q4 <si' do sol'>(-- <la fad'>--)}
  \pl {<sold do>( la)} {fa'8(-5 mi)-4 <si^2 red^4>( <do mi>)}
  \clef bass
  re,, re16( sol do8) fa-.
  \clef treble sib-. <mi, si' red>4(-- <fa sold re'>8--~)
  q8 <fadd sold mi'>-. <re' sol>16(-> <dod fad> <do fa>4) red8-.
  \pl <mi,-1 fa-1>4 {mi'16( sold,-2 sol-1 fa)-4}
  mi8-3 mi,16( la re8) sol16( do) fa8-.
  <sol, la red sib'>4(--\arpeggio <sol dod mi la>8--~)
  q4 \t {<red'^2 sold^4>8(-> <re^1 sol^5> <do^2 fa^4>~)}
  \t 2 {q4 red^(^3 <sib^2 mi^4>}
  <la^1 mi'^5>8-.) re,16( sol do8)-3 <fa, la fa'>4^(-- la8) <fa re' mi>4--~
  \t {q4 <mi do'>(\dim <re sib'>)} <fa re'>8^( sold sol fa)
  \clef bass
  <mi, la do mi>1\dyn "pp_al fine" \laissezVibrer
  r4 r8 red'16( mi) fa8( mi red mi)
  <mi, la re mi>1\laissezVibrer
  \t {r4 sold'(-- sol--)} fa( red)
  <mi, la do mi>1\laissezVibrer
  \t {r4 fa'( mi} \t 4 {red) mi8( red mi fa)}
  <mi, la re mi>1\laissezVibrer
  \clef treble
  \t 2 {r4 sol(_\< do fa sib red_\!}
  <mi, la do mi>1)\laissezVibrer
  fa'4.( mi8~) \t {mi4 red( re}
  <mi, fa do'>2..)\> <re fad sold dod>8--~ <re fad sold dod>1 \!
  <fa la si mi>--~\arpeggio q~ \hideNotes q s
}

SolPianoMg = \relative do' {
  \clef bass
  \key la \minor
  sol,8-- sol16 do fa8-. sib4.-> <reb, lab'>4--
  sol,8-- sol16 do fa8-. <mib sib'>4( re8-.) reb4--
  \stemDown fad,8-- fad16 si \stemNeutral
  mi8-. la4.-> <do, sol'>4--
  \stemDown fad,8( \stemNeutral si) mi-.
  <re la'>4( do8) <sib fa'>4--
  \pl mi,,1*1/4\laissezVibrer r4 si''8( mi la4 re~)
  re1
  mi,,,8\laissezVibrer mi' s2.
  \stemDown mi4 \stemNeutral re do si
  \ottava #-1
  la-. si-. do-. si-. la-.sol-. fad-. fa-.
  mi-. sold-. si-. la-. sold-. mi-. fad-. sold-.
  la-. si-. do-. si-. la-.
  sol-. fad-. fa-.
  mi-. sold-. si-. la-. sold-. mi-. la-.
  dod-. re-. fa-. sol-. re-. do-. mib-. fa-.
  lab,-. sib-. reb,-. mib-. fa-. mi-. sold-. la-.
  \ottava #0 dod-._"loco"
  re-. fa-. sold-. si,-. do-. mi-. fad-. la,-.
  si-. do-. re-. si-. mi-. re-. do-. si-.
  \ottava #0
  la8( mi') si'-. do~ do2
  r8 mi16( la si8-.) do~ do2
  mi,,,8( mi')_1 si'-._2 re~_1 re2
  r8 mi,16( si' re8-.) sold~ sold2
  la,,8( mi') si' la4 la8( mi') sib'
  dod,-- \clef treble la'16(_5 mi'_2 sol8)-.-1 sib~ sib4 r
  \clef bass
  re,,,8( la') mi' re~ re4 la
  sib,8( fa') do' re4-- sib,8 do( re)
  \pl {mi,4. mi r4} mi'1\laissezVibrer mi8( si') do la'~ la2
  \pl {mi,,4. mi r4} mi'1\laissezVibrer mi8( si') re la'~ la2
  \pl {mi,,4. mi r4} mi'1\laissezVibrer mi8( si') do la'~ la2
  \pl {mi,,4. mi r4} mi'1\laissezVibrer mi8( si') re la'~ la2
  \pl {mi,4. mi8~ mi2} mi'1\laissezVibrer mi8( la) si do~ do2
  \pl {mi,,4. mi8~ mi2} mi'1\laissezVibrer mi8( la) si re~ re2
  << {\oneVoice mi,8( la) si mi~ mi2~
      \voiceOne mi1~ \hideNotes mi}
     \\ {s <la,,, mi' si'>--~\arpeggio \hideNotes q}
  >> s
}

