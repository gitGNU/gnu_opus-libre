%-- 7 Tangos -- tangomi.ly ----------------------------------------%
% 2015 Valentin Villenave <valentin@villenave.net>

\language "italiano"

up = \change Staff = "up"
down = \change Staff = "Cb"

MiCb =
% \transpose re do
\relative do' {
  \tempo "Andante con moto" 4 = 96
  \clef treble
  \key la \minor
  mi8~ <mi si'>4 fa8~ <fa do'>2
  mi8~ <mi si'>4 <fa do'>8~ q2
  <mi si'>4. <fa do'>8~ q2
  <mi si'>4. <fa do'>8~ q2
  <mi si'>8 mi si <fa' do'>8~ q mi sib16 sib sib sib
  <mi si'>8 si <fad' dod'>8 <fa do'>4 <mib sib'>8
  <re la'>16 <dod sold'> <do sol'> <si fad'>
  \clef bass
  <si, mi>8 r r4 \clef treble r8 la''' \t {sol re do}
  re2~ \t {re8 la' sol} \tt {re16 la' sol re do}
  re2. sol16 fa do sib
  do8 fad \t {mi si la~} la8 si4.~
  si4 la' \t {si mi fad} mi2. r4
  \clef bass
  <la,,,, si mi>8\arpeggio la' <si, mi> <do fa>4 la'8 \t {sib si do}
  <la, si mi>\arpeggio la' <si, mi> <do fa>4 la'8 si16 do si sib
  <si, mi>8( la) <si mi> <do fa>4 <sol' la>8 \t {<fad la> <fa la> <mi la>}
  <la, si> <mi' la> <la, si> <do fa> <mi la> <do fa> \t {sib' do dod}
  <si mi> la <si mi> <do fa>4 mi,8 <do' fa> mi,
  <si' mi> la <si mi> <do fa>4 mi,8 <do' fa> <lad red>
  <si mi> mi, <si' mi> <do fa>4 <dod fad>8 <re sol> <red sold>
  \clef tenor
  <mi si'> <mi, la> <mi' si'> <fa do'>~
  \t {do'4 re red}
  \clef treble
  mi4. fa8~ fa2~ fa8 mi4 fa4 mi8 \t {fa si do}
  si4. do8 \t {si4 mi si~}
  si r8 do \t 4 {sib fa mib mi si la}
  mi4 r8 do \t {re sol la} sol mi'16 re
  la sol la4. r8 mi fa16 sol do re
  do4. fa,8 mib16 fa sib do reb, mib lab sib
  \clef tenor
  lab, sib fa' sol fad, sold mib' fa
  mi8 sol \t {fad fa mi}
  <<
    {
      \clef bass <mi, la> \up <mi' si'>
      \down <si, mi> \up <fa'' do'>16 q
      q8 \down <mi, la> \up <fa' do'>16 q q q
      \down <mi, la>8 \up <mi' si'>
      \down <si, mi> \up <fa'' do'>16 q
      q q q8 \down <mi, la> \up <fa' do'>
      \down <mi, la> \up <sol' re'>
      \down <mi, la> \up <lab' mib'>->
      \down <si,, mi> \up <lab'' mib'>16 q q-> q q8
      \down <mi, la> \up <sol' re'>
      \down <mi, la> \up <lab' mib'>4
      <sol re'>8 <lab mib'>16 q <la mi'>8
      \down <mi, la> \up <sib'' fa'>
      \down <mi,, la>16 q \up <si'' fad'>8
      r8 q16 q q8 \down <mi,, la> \up
      <sib'' fa'>8 <si fad'>
      \down <si,, mi> \up <sib'' fa'>
      <si fad'> <sib fa'>
      \t {<si fad'> <dod sold'> <re la'>}
      <mi si'> \down <si,, mi> <mi la>
      \up <fa'' do'>4
      \down <fad,,, si>16 q <si mi> q <mi la>8
      \up <mi'' si'>4 \down <mi,, la>8
      \up <fa'' do'>~ q2
      \showStaffSwitch
      \down <> \clef treble
    }
    \new Staff = "up" \with {
      alignAboveContext = "Cb"
      \remove Time_signature_engraver
    } {
      s1*8
    }
  >>
  <mi si'>4. <fa do'>8~ q4 mi'~
  mi8 <mi, si'>4 <fa do'>8~ q2
  <mi si'>4. <fa do'>8~ q2
  <mi si'>4. <fa do'>8~ q4 r
  <mi, si'>4. <fa do'>8~ q2
  \clef bass
  r8 <mi, si'>4 <fa do'>8~ q4. <si, mi>8
  <si mi>8 r r4 \clef treble
  r8 la''' \t {sol re do}
  re2~ re8 la' \t {sol do, re~}
  re fad \t {mi16 si la~} la4 si8~ si4~
  si8 la \t {si mi fad}
  si,4. \clef bass mi,,8 \t {fad si dod}
  si,2.~ si4 r
  <lad si>4 <mi' mi'\harmonic>->\sfz
  \bar "|."
}

MiPianoMd = \relative do' {
  \key la \minor
  << {\oneVoice R1 \voiceOne r2 r4} \\
     {\xNotesOn \stemNeutral r8 do do16
      \mg do \md do8 r do
      \ttt {do16 \mg do \md do \mg do \md do \mg do}
      \md do8 do16 \mg do \md do8 do16 \mg do
      << {\voiceThree \xNotesOn \md do8[ do]}
         \\ {\md do[ do]} >>}
     >>
  \ottava #1
  \tt {r16 sol''' la re mi} re2
  r8 \xNotesOn do,,[ do] \xNotesOff mi''8
  sol8\prall fa16 mi re8 fa\prall
  mi16 re do8\prall si16 la sold fa
  lab sib mib fa mib8 \xNotesOn do,,16[ \mg do, \md do'8]
  \xNotesOff fa'16 sol do re do8
  re,16 mi la si sib, do fa sol
  sol, la re mi mi, fad si dod  \ottava #0
  <mi,, si'>8 \t {si16 si si}
  \mg \stemUp si4 \md \stemNeutral
  \halfBeat
  r8 \t {si16_4 si_3 si_2}
  \ttt {si_1 si_3 si_2 si_1 si_3 si_2}
  r8 \t {si16 si si}
  \mg \stemUp si4 \md \stemNeutral
  \fullBeat
  r8 \t {si16 si si} si si si si
  \halfBeat
  r8 \xNotesOn do16 do do4
  \t {do16 do do} do8 \t {do16 do do} do do
  r8 do16 do \t {do do do} r8
  r \t {do16 do do} do do do do
  r do \t {do do do} do8[ r16 do]
  r do8 do16 do do \t {do do do}
  r8 \t {do16 do do} do4 r8 do16 do do4
  \xNotesOff \fullBeat
  r8 <mi' si'>4 <fa do'>8~ q8. fa16 sol do re do
  r8 <mi, si'>4 <fa do'>8~ \t 4 {q mi' re la sol la}
  r <mi si'> si <do fa> fa, <re' sol> <mi la> <do fa>
  r <si mi> mi, <do fa> \t {do'4 <mi, si'> <mib sib>}
  \tt {<re la'>16 sol' la re mi} re2~ re8 mi
  sol8\prall fa16 mi re8 fa\prall
  mi16 re do8\prall si16 la sold fa
  \tt {lad sold red dod red~} red4~
  red8 dod \t {red sold lad}
  si16 la mi re mi8 mi16 re
  la sol re do re8 \t {mi,16 si' do}
  <mi si'>8 si16 re mi8 <fa do'>4. r4
  <mi si'>8 si16 re mi8 <fa do'>4. r4
  <si mi>8 fa16 la si8 <do fa>4. r4
  <si mi>8 fa16 la si8 <do fa>4. la'8 lad
  <mi si'> si mi, <fa' do'>4
  <do, mi>8 <fa si> <do' mi>
  <mi sib'> sib mi, <mi' la>4 mi,8 do' dod
  <la si mi>8 mi la <do fa>4 re,8 sold sol
  <si mi> <do fa>4 <si mi>8 <do fa> <si mi>
  <re sol>16 <dod fad> <do fa>8
  r8 <mi, si' mi>4 <fa do'>8~ q4 fa'
  r8 <si,, mi si'>4 <do fa>8~ q2
  \clef bass
  <si mi>4. <fa do'>8~ q2
  <mi si'>4. <do fa>8~ q2 \clef treble
  r8 \t {si'16 si si} si4-.
  r8 \t {si16 si si} si8 si
  r \t 8 {si16 si si si si si si si si}
  r8 \t {si16 si si} si si si8
  si16 si si8 si16[ si r si]
  r8 \t 8 {si16 si si si si si} si8
  r \t {si16 si si} si4-. si8 si r4
  \xNotesOn
  r8 do do16 do do8 r do
  \ttt {do16 \mg do \md do \mg do \md do \mg do}
  \md <<
  { r2 r4 } \\ {
    \xNotesOn \stemNeutral
     do8 do16 \mg do \md do8 \t {\mg do16 \md do \mg do}
     \stemUp \md do8[ do]
  } \\ { \xNotesOn \stemDown
    s2 s8 do
  } >>
  \ottava #1 \xNotesOff
  \tt {r16 sol''' la re mi}
  re2~ re8 sol, \t {la re mi}
  re8 sol,32 la re mi re4 r8 sol,16 la re8 mi,
  \pl {sol8 fa16 mi re8 fa mi16 re do8 mi16 re do si}
  {
  \lightBeams {sol'64 \graceNotes {la re la sol16}} s4
  \lightBeams {fa64 \graceNotes {sol do sol fa16}} s4
  \lightBeams \t {mi64 \graceNote fa \graceNote si} s8.
  }
  \ottava #0 sib,16 la sol fa
  mi re do si sib la sol fa mi re do si
  <mi si'>8 \t {si16 si si}
  \mg \stemUp si4 \md \stemNeutral
  r8 \xNotesOn do do16 do do8 \xNotesOff
  r8 \t {si16 si si}
  \mg \stemUp si4 \md \stemNeutral
  \xNotesOn \t {do16 do do} do8 \t {do16 do do} do8
  r8 do do4 r8 do do4
  r8 do do4 r do
  r do r2 \xNotesOff
  r \tt {r16 mi' fa si do} <mi, mi'>8-.-> r
}

MiPianoMg = \relative do' {
  \clef bass
  \key la \minor
  R1 r2 r4 \tt {r16 sol la re mi} re2 r8 \xNotesOn \md \stemDown do'[ do]
  \stemNeutral \xNotesOff \mg mi,8
  sol8 fa16 mi re8 fa mi16 re do8\prall si16 la sold fa
  lab sib mib fa mib8 s \md \xNotesOn \stemDown do'\noBeam
  \stemNeutral \xNotesOff \mg fa,,16 sol do re do8
  mi,16 fad si dod mib, fa sib do re, mi la si dod, red sold lad
  mi,8 r \stemDown si'' \stemNeutral <fa do'>8~ q2
  <mi si'>8-. r \stemDown si' \stemNeutral <fa do'>8~ q2
  <mi si'>4-. r8 <fa do'>~ q4. si,8
  <mi si'>4-. r8 <fa do'>~ q2
  <si, mi si'>4-. r8 <fa' do'>~ q4 \t {r8 si, fa'}
  <si, mi si'>4-. \pl {s4 r8 si \t {sib si sib}}
  {\oneVoice r8 <fa' do'>~ \voiceOne q2}
  <la,, la'>4 si do si la sol fa mi
  la si do si la si do dod
  <re, re'> <mi mi'> <fa fa'> <mi mi'>
  <re re'> do' si do
  <dod, dod'> <red red'> <mi mi'> <dod dod'>
  <do do'> re' mi <sold, sold'>
  \pl {
    <la la'>4 s s \t {mib4 mi32 fa sol sold}
    la4 s s \t {mib4 mi32 fa fad sol}
    sold4 s s \t {re4 mi32 fa fad sol}
    sold4 s s \t {mib4 mi32 fa sol sold}
    la4 s s \t {sol'4 fa32 mi mib re}
    dod4 s s \t {sold4 la32 si do dod}
    re4 s s \t {sib4 si32 do re red}
  } {
    r8 re'16 mi la8 <la, fa' si>4. r4
    r8 re16 mi la8 <la, fa' si>4. r4
    r8 la'16 si re8 <red sold>4. r4
    r8 la16 si re8 <red sold>4. r4
    r8 la,16 mi' la8 \clef treble
    <mi' la si>4. \clef bass r4
    r8 la,,16 mi' la8\clef treble
    <dod sol' sib>4. \clef bass r4
    r8 la,16 mi' la8 <fa si mi>4. r4
  }
  mi,4 re do si
  la si r mib, la do r mib,
  la mi' r mib, la fa' r mib,
  \pl {
    la4 fa'2 mi8 mib, la4 fa'2 mi4
    la,4 fa'2 mib,4 la fa'2.
  } {
    la,8 si'4 do8~ do2
    la,8 si'4 do8~ do2
    la,8 si'4 si8~ si2
    la,8 si'4 si8~ si2
  }
  r4 si2.\laissezVibrer
  \voiceTwo
  r2 r4 \oneVoice
  \tt {r16 sol' la re mi}
  re2~ re8 sol, \t {la re mi}
  re8 sol,32 la re mi re4 r8 sol,16 la re8 mi
  sol fa16 mi re8 fa mi16 re do8
  mi16 re do si
  lab sib mib fa
  sol, la re mi
  fad, sold dod red
  fa, sol r8
  <mi, si' mi>8-.\arpeggio
  r \stemDown si'' \stemNeutral <fa do'>8~ q2
  <mi si'>8-. r \stemDown si' \stemNeutral <fa do'>8~ q2
  <mi si'>4-. r8 <fa do'>~ q2
  <mi si'>4-. r8 <fa do'>~ q2
  r4 r8 <fa do'>~ q2~ q4 r
  \tt {r16 mi' fa, si do} <mi, mi'>8-.-> r
}
