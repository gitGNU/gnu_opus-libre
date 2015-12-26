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
  sol4^"pizzicato al fine"
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
    mi,8 \xNotesOn re' re r re re r4 \xNotesOff
    mi,8 \xNotesOn re' re r re16 \palmMute re re8 re4 \xNotesOff
    mi,8 \xNotesOn re'16 re r re16 \palmMute re re8 re4 \xNotesOff
     } \\ {
    mi,4 r8 mi4.-+ mi8-+ si-+
    mi4 r8 mi4.-+ mi8-+ si-+
    mi4 r8 mi4.-+ mi8-+ si-+
  } >>

}

SolPianoMd = \relative do' {
  \key la \minor
  sol8--\sfz sol16 do fa8-. sib4->( mib,8) lab( reb,)
  sol,8-- sol16 do fa8-. sib-. mib( lab) reb( reb,)
  \mg fad,,-- \md fad16 si mi8-. la4->( re,8) sol( do,)
  fad,-- si16 mi la8-. re-. sol( do) fa( <fa, sib>)
}

SolPianoMg = \relative do' {
  \clef bass
  \key la \minor
  sol,8-- sol16 do fa8-. sib4.-> <reb, lab'>4--
  sol,8-- sol16 do fa8-. <mib sib'>4( re8-.) reb4--
  \stemDown fad,8-- fad16 si \stemNeutral
  mi8-. la4.-> <do, sol'>4--
  fad,8( si) mi-. <re la'>4( do8) <sib fa'>4--
  mi,,
}
