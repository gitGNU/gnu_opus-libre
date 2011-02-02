%-- Trio -- cello.ly ----------------------------------------------%
% (c) 2003-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Violoncelle = \relative do' {
  \override PianoStaff.SystemStartBrace #'collapse-height = #6
  \clef bass r8 << {do,,~^\ff \stemDown
  do4^\sfz ^\< \stemNeutral s4. s8^\!}
  \new Staff \with {\remove "Time_signature_engraver" alignAboveContext = #"Violoncelle" }
  {s8
  \once \override Stem #'cross-staff = ##t
  \once \override Stem #'length = #30
  \once \override Stem #'flag-style = #'no-flag
  \once \override Stem #'direction = #DOWN
  <\blackNote la''' fad' re'>2~ <fad' re'>8~ <fad re'>}>>
  R1*4 R2*6 r4 r8. sib,,32(\downbow \pp mi |
  la,2.) r8. sib32(\downbow mi |
  la,2)\< mi'8\mp \longHairpin sib4.~\> |
  sib8\! r r8. sib32( mi |
  la,4) sib8(\upbow mi)~
  \downGliss \longHairpin mi2(_"(senza vib.)" -"(gliss.)" \glissando
  misb4)\mf~ \t {misb8 sib\> mi} la,4.\! r16 sib32(\p\downbow mi |
  \t {la,4)-"semplice, senza cresc." sib( mi8) r16 sib32( mi}
  \t {la,4) sib( mi8) r16 sib32( mi}
  la,8) \downGliss \longHairpin mi'4.--(\glissando |
  \t {misb8)\mf \> sib( mi)} \t {dob(\! sib dob)} |
  la2.\pp\> r4\! | R1*5
  R2*2
  <\blackNote sol, mib'' la>2_\leftpizz -\dyn "f_espr."\< <sol'' la>~ |
  <sol la>4..\! mi32(\upbow la) fa4.--(\> \longHairpin \downGliss mi8)(\glissando |
  \t {misb)\! sib( mi)} \t {dob( sib dob)} |
  la2.\pp\> r4\! | R1 R2 R1*2
  r2 r4 sib,4\downbow~(\p |
  sib\> la2 fad4\!~ | fad) r |
  r sib--\upbow -\dyn "f_risoluto" la-- fad-- |

  %%% Tempo giusto %%%
  fa2.~ | \t {fa4 re8~} \t {re dod r} |
  <fa fa'>2--~ \t {<fa fa'>4 mi' <fad, dod'>} |
  <fa do'>2~ <fa do'>8 \t {re'16\cresc mi mid}
  fad_( fad') \clef treble fad_( fad') |
  <fad, fad'>2.\f r4 |
  r8 fad'4.(->-\dyn "f_intense"~ \t {fad4 fa re)} |
  \t {r fad(\upbow red)} re2\>~ |
  re4\! re-- -"très à la corde" dod-- mi-- |
  si2.-"(ten.)" r4 | R2*3
  r2 r8 fa--\upbow si16(\< re) red( red') |
  red2-\dyn "fff_aigre"( re4 sib) |
  \t {r red(\fff re)} sib->\>( la)\! |
  red4.-> -\dyn "fff_(douloureux)" re8->~(\upbow
  re16 si8->) sib16->~ sib8 lab-> \hairpinText "(molto)"
  sol4(\> fad) mib( re) |
  \upGliss si2(\p -"plaintif" \glissando sisd2)(\> r4)\! |
  \clef bass

  %%% Calme et étrange %%%
  R1*8
  re,,1-\dyn "p_dolce_espr." \downGliss dod2.\<( dosd4) |
  sol1\!\CaV~ sol2. <sol mi'>8( fa') |
  r4 <sol, mi'>8(\p fad') la( mi) <sol, fa'>4 |
  <sol mi'>8( fad' la sib re red4.) |
  <reb,, lab' fa'>8( sol' lad si re mib4.) |
  fa,8(\mp sol lad si re mib fa4) |
  \clef treble
  si,16\cresc si re re mib mib fa fa
  la la fa fa la\< la dod dod | \clef bass

  %%% Risoluto %%%
  <do,,, sol' mi'>4\ff\downbow -"ten." <sol' mi' sib'>\downbow -"ten."
  <do, sol' mi'>4\downbow -"ten." <sol' mi' sib'> |
  <do, sol' mi'> <sol' fad' red'> <do, sol' mi'> <sol' fad' red'> |
  <do, la' mib'> <la' mib' reb'> <do, la' mib'> <la' mib' reb'> |
  <do, la' mib'> <la' mib' reb'> <do, la' fad'> <sol' sol' dod> |
  <do, sol' mi'> <sol' mi' sib'> <do, sol' mi'> <sol' mi' sib'> |
  <do, sol' sol'> <sol' re' fad'> <do, sol'> <sol' re' fad'> |
  <do, la' mib'> <la' mib' reb'> <do, la' mib'> <la' mib' reb'> |
  <do, la' mib'> <la' mib' si'> <do, sol' fad'> <sol' la' fad'> |
  <do, sol' mi'> <sol' mi' sib'> <do, sol' mi'> <sol' mi' sib'> |
  <do, si' fad'> <sol' fad' si> <do, si' fad'> <sol' fad' si> |
  <dod, sold' red'>2\downbow <dod' sold' red'>\downbow |
  <dod, sold'>1\upbow\< ~ <dod sold'>2\! |

  %%% Presto %%%
  \pl {sol'4 s s sol16*4->
  sol-> s sol-> s sol-> s
  s sol-> sol-> s}
  {<sol sol'>4 sol16 sol sol sol |
  sol sol sol sol sol sol sol sol
  sol sol sol sol sol sol sol sol
  sol sol sol sol sol sol sol sol
  sol sol sol sol sol sol sol sol
  sol sol sol sol sol sol sol sol
  sol sol sol sol sol sol sol sol}
  <sol sol'>-> sol sol sol sol sol sol sol |
  \pl {sol16*4-> mi->} {s16 sol sol sol s sol sol sol} |
  mib-> sol sol sol do,-> sol' sol sol |
  \t {\stemDown sol8_(\noBeam \stemUp sol sol')} \t {sol_([ sol,] \stemDown sol)} |
  \t {\stemDown sol_(\noBeam \stemUp sol sol')} \t {sol_([ sol,] \stemDown sol)} |
  \t {\stemNeutral sol( sol sol')} \t {sol( sol, sol)}
  \t {sol( sol sol')} \t {sol( sol, sol)}
  \t {sol( sol sol')} \t {sol( sol, sol)}
  \t {sol( sol sol')} \t {sol( sol, sol)}
  \t {sol( sol sol')} \t {sol( sol, sol)}
  sol16 sol re' re sol\< sol sol' sold
  la4.\! \clef treble sib16(\ff mi) |
  la,4. sib16( mi) |
  la,8. mi'16 sib8. mi16 |
  la,2 \clef bass
  \t {sol,,8(\p\< re' sol,} \t {re' sol re)}
  \t {la'(\! si la} \t {fa la si)} \clef tenor |
  re8. la'16 la4->--~ la \t {re,4 la'8} |
  la2\sfz~ \clef treble la4 sib8(\mp mi) |
  la,->( sib) \t {mi sib mi} |
  la,( sib) \t {mi sib mi} |
  la,( sib) \t {mi( sib mi)} |
  la,(\cresc sib) \t {mi( sib mi)} |
  la,( sib) \t {mi( sib mi)}
  la,\noBeam sib\noBeam mib |

  %%% Plus large %%%
  lab,2\f-> r4 \clef bass \stemDown sol,,16[( re'16*1/4) s s s \clef treble re'16( re')] \stemNeutral |
  dod2(-\dyn "f_intense" mi4 fa) |
  \t {r4 dod(\upbow mi)} \t {fa( mi do)} |
  r8 dod4.~ dod8 mi(~ \t {mi fa lab)} |
  la4-- sol--\< fad-- sib8--\noBeam\! \clef bass
  \slashStem \graceNotes \lightBeams
  \t {do,,,,16[_( sol'16*1/4 s s s \clef treble re'''16\CaV ])} |
  mib'1->-"(ten.)"\fff |

  %%% Tempo primo %%%
  R1*2 R2 R2. \clef bass
  r2 r8 re,,4(\upbow -\dyn "p_dolce" sib8) |
  mi,2--\< \longHairpin mib2--\> R1*3\!
  r4 mib,--\upbow\f mi-- dod-- |
  << {do4--~ \stemDown do s2 s4 do do do\stemNeutral }
  \new Staff \with {\remove "Time_signature_engraver" alignAboveContext = #"Violoncelle" }
  {s4
  \once \override Stem #'cross-staff = ##t
  \once \override Stem #'length = #26
  \stemDown
  <\blackNote la''' fad' re'>2.~ <fad' re'>4
  \override Stem #'cross-staff = ##t
  \once \override Stem #'length = #26
  <sol, re' sib'>--
  \once \override Stem #'length = #22
  <re la' fa'>-- \clef tenor
  \once \override Stem #'length = #26
  <sold, red' si'>--}>>
  <do,, sol' la' mi'>8-- r r4 r2 | \clef tenor
  r2 r4 lab'''8(\p\upbow sol |
  \t {mi4--) lab( sol)} mi8(\< lab) sol16( mi) lab( sol) |
  R1\! \clef bass
  <\blackNote do,,, sol' mi'>2.\p r4 |
  <do sol'>2. r4 |
  do4\fermata -"pizz." r r2
}
