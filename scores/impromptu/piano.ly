%-- Impromptu -- piano.ly -----------------------------------------%
% (c) 2004 - 2010 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

PianoMd =
\relative do' {
  <do mi>4--(\pp q-- q-- q-- q-- q-- q--) |
  q--( q-- q-- q-- q-- q-- q--) |
  q--( q-- q-- q-- q-- q-- q--) |
  <do mi>-"simile" q q q q q q |
  q q q q q q q |
  q q q q q q q |
  <do re mi> q q q q q q |
  r <la do re mi sol>-\dyn "pp_senza cresc." q q q q
  %% Hideous trick to lengthen the violin's crescendo.
  q4*1/2 \hideNote q |
  q4 q q q q q r |

  <sib do fa>-\dyn "f_ample" q q q q q q |
  q q q q q q q |
  <solb sib do fa> q q q q q q |
  <solb sib reb fa> q q q q q q |
  \pl {\oneVoice <sol la? mib' fa>
  \voiceTwo \bracketDown "m.s."
  <fa' mib la, sol> q q q q q }
  {s4 r16 <sold sold'>8.~ <sold sold'>8 <la la'>~
  <la la'>4~ \t {<la la'>8 <sold sold'> <la la'>}
  <sib sib'>4-- <si si'>--}
  <\whiteNote do, mib fa \whiteNote do'>4*1/2~ \hideNote <do do'>8
  <sold la mib' fa>4 q q q q q |
  <sol lab mi' fa> q q q q q q |

  \tempo "(stesso tempo)"
  \ottava #1 <la'' sib mi! fa la>4-|\laissezVibrer \ff \ottava #0
  s1.-\dyn "pp_sub. (les deux pédales)"
  s2 la,,8 sib la fa \mg mib \md fa la sib la fa |
  \mg mib \md fa la sib la fa \mg mib \md fa la sib la sib re4 |
  <la la'>8-- -\dyn "senza cresc." mib' fa <sib, sib'>-- fa'
  mib fa <re re'>-- mib
  <la, la'>-- <sib sib'> fa' <la, la'>4 |
  <si lad'>8-\dyn "p_legato" mi fad si, <mi lad> fad
  si, mi fad mi <si lad'> mi fad si, |
  mi fad <si, lad'> mi fad <si, lad'> mi
  fad <si, lad'> mi fad <si, lad'> mi fad |
  <si si'> fad' mi <lad, lad'> mi' <red red'>
  fad <do do'> <mi mi'>4\< \t {<dod dod'> <red red'> <fa fa'>} |

  \ottava #1
  <fad fad' la>4.-\dyn "f_espr." <sib sib'>8~ <sib sib'>4~ \t {sib8
  \ottava #0 <la, la'>-"(loco)"( <fad fad'>)} <sib, sib'>( <la la'>
  <fad fad'>) <la' la'>4( <sib sib'>8
  \ottava #1
  <la' dod fad la>4.) \ottava #0 <la, dod la'>8~ <la dod la'>4
  <sib sib'>2~ \t {<sib sib'>8\> <la la'>( <fad fad'>)}
  <fa fa'> <dod dod'>\! |
  <la sib fa' la>2\mf fad'4\> fa <dod re>2.*1/2\! s4.\p |

  <do fa>4--( q-- q-- q-- q-- q-- q--) |
  <do re fa> q q q-\dyn "poco a poco cresc." q q q |
  <do re fa sol> q q q q q q |
  <si do re fa sol la>-\dyn "pp_très clair." q q4. q q2*1/2\laissezVibrer
  s4\fermata | \hideNote q1*7/4\laissezVibrer \pppp

  la'4.-"semplice"-\dyn "p_(tre corde)" sib8~ sib2.~
  \t {sib4\> sib, la} |
  la'4.\pp sib8~ sib2.\>( la4 fad) |
  <do fa>4--(-\dyn "ppp_al fine (una corda)" q-- q-- q-- q-- q-- q--) |
  q--( q-- q-- <do mi>-- q-- q-- <do fa>--) |
  q--( q-- <do mi>-- q-- q-- <do fa>-- q--) |
  q--( <do mi>-- q-- q-- <do fa>-- q-- q--) |
  <do mi>--( q-- q-- q-- q-- q-- q--) |
  q--( q-- -\dyndim "rit. molto" q-- q-- q-- q-- q--\!)\fermata |
}

PianoMg =
\relative do {
  \clef bass
  R1*7/4*3
  <la, la'>4. <sib sib'>8~ <sib sib'>2~ <sib sib'>2. |
  <la la'>4. <sib sib'>8~ <sib sib'>2~ <sib sib'>2. |
  <la la'>4. <sib sib'>8~ <sib sib'>2~ <sib sib'>2.~ |
  <sib sib'>2 <sib sib'>~ <sib sib'>2. |
  <sib sib'>4. <si si'>8~ <si si'>2~ <si si'>2. \clef treble
  r8 <sol''' sib do fa>-.-- r <sol sib do fa>-.-- r4 \clef bass
  sol,--( <mi sol>-- <re mi sol>--) r |

  \pl {re,1~ \hideNote re2.
  re1~ \hideNote re2.
  \override Voice.TieColumn #'tie-configuration = #'((2.0 . 1) (-9.0 . -1))
  <re re'>1~ <re re'>2.
  \override Voice.TieColumn #'tie-configuration = #'((2.0 . 1) (-9.0 . -1))
  <re do'>1~ <re do'>2.
  \revert Voice.TieColumn #'tie-configuration }
  {la'4. sib8~ sib2~ <re, sib'>2.
  la'4. sib8~ \tieDown sib2~ <re, sib'>2. \tieNeutral
  la'4. sib8~ sib2~ sib2.
  la4. sib8~ sib2~ sib2.} |
  <re, la' dod>1*7/4\laissezVibrer
  \pl {<re re'>1*7/4
  <re re'>2 <re re'>4. <re re'>8~ <re re'>4}
  {la'8 sib4.\laissezVibrer s4*5
  la4. \tieDown sib8~ sib4 \tieNeutral do~ do8 si}
  <re, do'>8. <re dod'>16~ <re dod'>8 re'

  \pl {<re, mib'>2\laissezVibrer s4 mib'2 s4 mib4
  r2 mib,2. mib2~ mib4 mib2. mib
  mib4 mib mib mib mib mib}
  { r4 la'8( sib la fa mib fa) la( sib la fa mib fa)
  la( sib re4) mib, mib s mib mib
  s mib mib s mib mib mib
  mib2. mib2.}
  <mib, mib'>4-- |
  <red red'> q q-- q q q-- q |
  q q-- q q q-- q q |
  q q q q q q r |

  \t {re8 la' mi'} re16( la' mi' la, sib'4)
  re,,, <re re'> q q |
  re16( la' mi' re <la' mi'>4) re,, <re re'> q q q |
  \t {re8( la' mi')} re,4 re re' r r8 <re, re'>~ <re re'>4 |

  <mib mib'>1 r4 r8 <re re'>~ <re re'>4 |
  <mib mib'>1 <re re'>2. |
  <mib, mib'>1~ <mib mib'>4. <mib mib'>8~ <mib mib'>4 |
  <mi mi'>1*7/4--\laissezVibrer |

  mi--\laissezVibrer
  fa''1~ fa4~ fa8 mi~ mi4 |
  re1 r2 r4 |
  <la, la'>4. <sib sib'>8~ <sib sib'>2~ <sib sib'>2. |
  <la la'>4. <sib sib'>8~ <sib sib'>2~ <sib sib'>2. |
  <la la'>4. <sib sib'>8~ <sib sib'>2~ <sib sib'>2.~ |
  <sib sib'>1~ <sib sib'>4. <sib sib'>8~ <sib sib'>4 |
  <la la'>1*7/4\laissezVibrer
  \hideNote q1.\laissezVibrer s4\fermata
}