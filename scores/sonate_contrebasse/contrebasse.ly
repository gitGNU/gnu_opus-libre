%-- Sonate pour contrebasse et piano -- contrebasse.ly ------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"


\header {
  title = "Sonate"
  subtitle = "pour contrebasse et piano"
  composer = "Valentin Villenave"
  date = "Été 2014"
}

\pointAndClickOff

Contrebasse =
% In case of so-called "solo tuning".
%\transpose do re
\relative do' {
  % I’d much rather use \clef "F_8" here
  % - but it seems that’s not the way people do it.
  % Oh well.
  \clef bass
  \tempo "Allegro"
  \time 2/2
  re4. mib8~ mib2~
  mib8 r re4~ re8 fa16 re mib4~
  mib8 re4. mib2
  r8 re~ \t {re mib re} reb8. lab'16 lab4~
  lab lab~ \t {lab sol solb}
  \t {fa8 solb fa} mi16 fa mi mib re?2
  r4 re~ re8 mib4.~
  mib8 re4 mib8~ mib r mib16 re8.~
  re4 do16 re la do~ do2
  \time 3/2
  \t {r4 \acciaccatura mib8 re4 do~} do8 fa,4 la8 si,4 r |

  % A %
  \time 2/2
  r2 r4 mi,~
  mi2 r8 mi4 fa8~
  fa1
  mi8 fa2..
  mi4 fa~ fa8 sib4 sol8
  mi fa~ fa2 mi4~
  mi8 fa sib sol \tt {fad' sib, re dod' sol}
  fad'4 sol8 fad~ fad4. sol8~
  sol4. fad8~ fad4 \t {mi8 fad dod}
  mi2~ mi8 fa4 sol8~
  \clef treble
  sol4 fad~ fad8 la4 sol8
  do?4 fad, mi' fad,
  sol' r sol2~
  sol sol~
  sol4 la2 sol4
  sib2. la4~
  la2. r8 sib~
  sib4. r8 sib4. la8~
  la2 r4 sib~
  sib re8\CaV la~ la4 \t {sol8 la mi}
  sol4. r8 r4 la~\CaV
  \t {la la sol} \t {sol\CaV re re\CaV}
  la8\CaV la mib sol dod, mi sib re\CaV
  \time 3/2
  \clef bass
  sold,16 la sold mib re mib sold la
  sold mib re si mib re si sib
  \t {la8 si sib} \t {la sib la} |

  % B %
  \tempo "Poco più libero"
  \time 2/2
  sold8 r r4 r <sold dod re>8->-.^"(battuto)" r
  r2 r4 re''~\CaV
  re2. r8 <sold,, dod re>->-.
  r2 re''~
  re4 mib2.
  <sold,, dod re>8->-. r re''4~ re4. fa16 re
  mib2. r4
  <sold,, dod re>4->-. r8 q->-. r4 mib''16 re8.~
  re4 do~ \t {do re la}
  \time 3/2
  do2 r4 \clef treble do~
  \ttt {do16 dod_"quasi gliss." re red mi fa}
  \ttt {fad sol sold la lad si} |

  % C %
  \tempo "A tempo"
  \time 2/2
  do4-. r r r8 do~
  do4. re?8~ re sib do4~
  do8 lab4 sib16 sol lab2~
  lab4. r8 mi'? re?4 sol8
  fa4 mi16 re mi si~ si8 la~ la16 si8 do16
  re4 do16 si8.~ si8 sol~ sol16 la mi8~
  mi4. r8 fa16 sol la sib r do re8
  mi1~
  mi2 r4 mi~
  mi2 mi8 fa4.~
  fa4 sol mi8 fa4.~
  fa2. r4
  r fad8 mi4 la8 sol4
  fad16 mi fad dod~ dod8 si~
  si16 dod re8-. \t {mi do sol}
  dod16 si dod sold~ sold fad8 si16
  la sol la re,~ re red mi8-.
  \clef bass
  fa16 mi, mi fa fa mi, mi fa
  fa mi mi mi mi mi mi mi
  r fa si mi, lad si lad mi
  fa mi lad si fa' mi lad si
  \clef treble
  \t {fa'8 mi lad} r4 mi'4. fa8~
  fa1~
  fa4 \clef bass mi,,,
  \clef treble mi'''8 fa4.~
  fa8 sol16 mi fa2 \t {re8 mi si}
  re2. \clef bass mi,,,4
  \clef treble mi'''16 re mi si~ si8 re~ re4. r8
  \time 3/2
  si16 re si la sold fad mib reb
  \clef bass
  do reb do sib sol fa mi re
  si la si sol fad' mi fad re |

  % D %
  \time 2/2
  dod' re, la' dod mib re, sold mib'
  dod re, la' dod mib re, sold mib'
  dod re, la' dod mib re, sold mib'
  dod re, la' dod mib mib mib re,
  re re dod' re, la' dod mib re,
  la' mib' re, la' mib' mib mib <sol, lab>
  q q <la, mib'> q q mi mi mi
  sold'' re, la'\CaV mib' sol\CaV re, sib' dod
  sold' re, la' mib' sol re, sib' dod
  sold' re, la' mib' sol re, sib' dod
  sold' re, sol dod sold' re, sol sib
  sold' dod, sib dod sol' dod, sib dod
  <dod sold'> q q <re, sol> q q <dod' sold'> q
  <la, re> q <dod' sold'> q q <mi,, la> q q
  \clef treble
  fad'' dod' si dod sol'? dod, si dod
  sol si dod si fad' si, dod sol
  fad dod' si dod sol'? dod, si dod
  sol si dod si fad' si, dod sol
  \time 3/2
  \clef bass
  fad sol fad sol si, dod si dod
  \t {mi,8 fad mi} \t {la, si sol} fa4 r |

  % E %
  \time 2/2
  re''4. mib8~ mib2~
  mib8 r re2 fa16 re mib8~
  mib4 re~ re8 mib4.~
  mib8 r \t {re mib re} reb8. lab'16 lab4~
  \clef treble
  lab reb,8. sib'16 sib4 reb,8. mib'16
  mib2~ mib8 re4 fa16 re
  mib2. r4
  \t {mib re si~} si8 do la4~
  la8 re~ \t {re mib fa} lab4 sib~
  sib4 r8 sib8~ sib2
  \t {r8 re, mib} \t {fa lab sib}
  si4 lad16 si si lad
  lad si si lad lad si si lad
  lad si si lad lad si si lad
  lad si si sol fad sol sol fad
  fad sol sol fad fad sol sol fad
  fad sol mib re re mib mib re
  mib fad fad sol lad si fad sol
  re mib re mib fa mib fa mib
  re mib re mib fa lab fa mib
  re mib re mib fa mib re mib
  do re la do sol la sol la
  fad sol la do re do la sol
  fad sol fad mi dod mi fad sol
  \clef bass
  mi fad mi fad si, dod si dod
  lad si lad sold fa mib fa mib
  re mib re mib fa mib fa mib
  \t {re8 mib re} \t {mib fa mib}
  \tempo "Poco allargando..."
  re2.~ <re re'>4~
  q~ <re mib'>2 r4
  r2 re~
  re4 mib re' \clef treble mib\glissando
  \time 3/2
  re'1\CaV \clef bass \t {r4 re,, red8 r} |

  % F %
  \tempo "Doppio più lento"
  \time 2/2
  % TODO: factorize.
  \set harmonicDots = ##t
  \set glissandoMap = #'((1 . 1))
  <mi, mi'>4.\glissando <fa si>8~ q2~
  q r4 <mi mi'>~
  <mi mi'>8\glissando <fa si>2..~
  q4 r \clef treble
  <\parenthesize re''' sol sol\harmonic do\harmonic>2~
  <\parenthesize re sol sol\harmonic do\harmonic>4
  <\parenthesize mi la la\harmonic re\harmonic>2
  <\parenthesize do fa fa\harmonic sib\harmonic>4
  <\parenthesize re sol sol\harmonic do\harmonic>4.\glissando
  <\parenthesize sib mib mib\harmonic lab\harmonic>
  <\parenthesize do fa fa\harmonic sib\harmonic>8
  <\parenthesize la re re\harmonic sol\harmonic>
  <\parenthesize sib mib mib\harmonic lab\harmonic>2. r4
  \clef bass
  <mi,,, mi'>4.\glissando <fa si>8~ q2~
  q r4 <mi mi'>~
  \time 3/4
  q8\glissando <fa si>4. r8 q~
  q2. \bar "|."
  \mark \markup \musicglyph #"scripts.ulongfermata"
}
