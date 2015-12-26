%-- 7 Tangos -- tangomi.ly ----------------------------------------%
% 2015 Valentin Villenave <valentin@villenave.net>

\language "italiano"

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
  re2.
  % basse : pizz quintes graves + perc
  % plus loin : 2 oct↑ à l’archet
  % plus loin : riff superposé sur A- (attention similarité avec suivante)
}

MiPianoMd = \relative do' {
  \key la \minor
  << {\oneVoice R1 \voiceOne r2 r4} \\
     {\xNotesOn r8 do do16 \mg do \md do8 r do
      \ttt {do16 \mg do \md do \mg do \md do \mg do}
      \md do8 do16 \mg do \md do8 do16 \mg do
      << {\voiceThree \xNotesOn \md do8[ do]} \\ {\md do[ do]} >>}
     >>
  \ottava #1
  \tt {r16 sol''' la re mi} re2 r8 \xNotesOn do,,[ do] \xNotesOff mi''8
  sol8\prall fa16 mi re8 fa\prall mi16 re do8\prall si16 la sold fa
  lab sib mib fa mib8 \xNotesOn do,,16[ \mg do, \md do'8] \xNotesOff fa'16 sol do re do8
  re,16 mi la si sib, do fa sol
  sol, la re mi mi, fad si dod  \ottava #0
  <mi,, si'>8 \t {si16 si si} \mg \stemUp si4 \md \stemNeutral
  r8 \t {si16_4 si_3 si_2} \ttt {si_1 si_3 si_2 si_1 si_3 si_2}

  % sextolet de doubles (+ riff ?)
  % utiliser la deuxième croche de la mesure pour introduire rythmique plus tango
  % fin : \tt {r16 mi fa si do} mi8-.-> r
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
  <mi si'>8-. r
}
%{
\include "articulate.ly"
\score {
  \articulate <<
   {\set Score.skipTypesetting=##t
    %r1*4*10
    \set Score.skipTypesetting=##f
   }
  \new Staff \with { midiInstrument = "baritone sax" } \transpose do do, \MiCb
  \newPianoStaff $"MiPiano"
  >>
  \midi {}
}
%}