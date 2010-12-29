%-- Ballade -- piano.ly -------------------------------------------%
% (c) 2003-2010 Valentin Villenave <valentin@villenave.net>

\language "italiano"

PianoMd = \relative do' {
  \pl <mi fa>8-.\laissezVibrer <mi' fa mi' fa>-.\laissezVibrer
  r r2 | R2.

  %%% A %%%
  <do, sib'>8(\pp <dod la'> <re sol>4)
  \pl mi4-- {do'8( sib)} |
  \pl {fa4-- s} {mi'8( reb <reb, sol do>4)}
  <mib sib'> |
  <solb reb'>( <mib sib'>)
  \pl {lab8( sib)} mib4 |
  <lad, dod>8( <si mi> <dod fad>4)
  <fad, la>8( <sol sib>) |
  <sold dod>4( <sol sib>)
  <sold dod>8( <lad fad'>) |
  <do mi>8( <reb sol> <mib do'>4)
  <sol, fa' sol>-- |
  <re mi mi'>2.-- r8
  \graceNotes \lightBeams {fa,32( si la red)} |

  %%% B %%%
  <dod mi dod'>4(\mp <re sol re'>8 <mi sib' mi>
  <sol si sol'>2)~ |
  <sol si sol'>8([ <fa' lab fa'>)]
  <mi sol mi'>( <re fa re'>4 <do mi do'>8) |
  <si fad' si>( <mi la mi'> <fa, re' fa>4) |
  <fad re' fad>8( <fa dod' fa>4)
  <si re si'>4-- <re, fa re'>8-- |
  <si red lad'>2-- |
  r8 <sol'' sol'>4( <fad fad'>8
  \ottava #1 <do' do'> \ottava #0
  <mib, mib'>) |
  \t {<do? do'?>( <si si'> <sib sib'>}
  <sol sol'>4)~ |
  <sol sol'>( dod\> si sib)\!

  %%% C %%%
  \pl {\oneVoice \tieDown <sol, si re sol>2 \pp ~
  \voiceTwo
  \hideNote <sol si re>~
  \hideNote <sol si re>~ \oneVoice
  <sol si re sol>4 \tieNeutral r }
  { s2 \appoggiatura sib'16~ <sib sib'>4-. r %%FIXME #1333
  \appoggiatura lab16~ <lab lab'>4-. r s2 }
  R2
  \pl {<dob, fa sib>2\pp ~<dob fa sib>}
  {dod'4( re8 mi sol2)}
  <lab, sib>2
  \pl <lab sib> {dod4( re)}
  \pl <lab sib>2. {dod4\>( re mi\!)} |

  %%% D %%%
  <fa sib re sol>4--\pp q8-.
  r <sol sib re fa>-. q-. |
  r <fa sib re sol>4--
  <sol sib re fa>8-. q-. |
  r <fa sib re sol>-. |
  <fa sib re sol>-. <mi sib' re sold>-. |
  r <mi sib' re fa>-. q-. |
  r <fa sib mi>--~ q <sol sib re fa>-. |
  q-. r <fa sib re sol>-. q-. q-. r |
  r <fa sib mi sold>-.-- q-.-- q-.-- q-.-- r |

  %%% E %%%
  r <mi sold si! mi>-. r |
  <mi sold dod>-. <dod sold' re'>-. r |
  <dod sold' dod>-. <dod sold' dod>-. <mi si' re>-. |
  r \ottava #1 <si' re mi sol si>-.-- q-.--
  q-.-- q-.-- \ottava #0 r |

  %%% F %%%
  sib,16(\mp sib'8) sib,16( |
  sib'8)-. <la, la'>--~
  %% Ugh. `lab' would actually sound better here, `la' makes it
  %% sound like we're in G minor.  OTOH, I really want to stay
  %% consistent with the initial 1-2-3 melodic pattern.
  %% Hmm... `la' isn't that bad after all.
  <la la'> <sol sol'>-.-- <mi? mi'?>--~ |
  <mi mi'>4 <sib' sib'>8--~( |
  <sib sib'> <la la'>) |
  <sol sol'>-. <sib sib'>16( <lab lab'> |
  <sol? sol'?>8)-.-- <fa? fa'?>-.-- |
  <sib sib'>16-> <lab lab'>~ <lab lab'>4 |
  \ottava #1
  mi''8(-- sol16 la) | do8( sib) |
  mib(-. do-. sib-.) |
  mi,!8(-- sol16 la) | do8( sib) |
  <mi,! mib'>8(-- do'-. sib-.) |
  mi,8(-- sol16 la <mi do'>8-.) |
  <sol mib'>16(->\< la do8-.) |
  <mi,! mib'>(-- sol16 la) |
  <mi! mib'>8-.-- sol16( sib) |

  %%% G %%%
  <mi, fa la mi' fa>4->--\ff
  \pl fa, {mi'16( fa) r8} \ottava #0 r4 |
  \pl {<mi,, mi'>16([_"simile" fa)]}
  {<fa' mi'>([-> fa')]} r8
  r4 <fa,, mi'>16(->\mf fa') r8 |
  <fa, mi'>16(-> fa') r8 r
  \pl {<mi, mi'>16 fa~ fa <dod dod'> re8 <mi mi'>16[ fa]}
  {<fa' mi'>->\ff fa'~ fa <re, dod'>-> re'8 <fa, mi'>16->[ fa']}
  r8 r <fa,,, mi'>16( fa') r4 |
  r4 r8 <fa mi'>16\f( fa')~ fa <re, dod'>( do'8) |
  <fa, mib'>16( fa') r8 <fa, mib'>16( fa') r8 r4 |
  mib,16( fa) dod( si) r sold-. r mib'( fa) dod( si8) |
  r8 \pl \t{<mi mi'>16(\f fa8)} \t {<fa' mi'>16( fa'8)}
  r4\mg mi,,,8(\pp fa si do \md

  %%% H %%%
  <sol la mi'>2)\laissezVibrer |
  s2*3 s2. s2*2
  <sol la mi'>16(\pp fa') r8 r4 | R2
  <sol, si mi>16( fa') r8 r4 R2 |
  <la, sib mi>8(-\dyn "espr." fa') r4 | R2
  fa8(\< sol) mi( fa) sol( la) fad( sold) | %%FIXME: acciaccatura.
  \pl \t {<mi la mi'>16(\sfz fa8)} \t {<fa' la mi'>16( fa'8)}
  <mib,, mib'>4_\mf(-"cantabile assai" <fa fa'>8 | <dod dod'>4 <si si'>) |
  \grace s8
  \pl \t {<mi la mi'>16(\sfz fa8)} \t {<fa' la mi'>16( fa'8)}
  <mib,, mib'>4\mf( <fa fa'>8 <dod dod'> <si si'>) |
  r16\< <mib' mib'>-. <fad fad'>8--
  <sold, sold'>-- <reb reb'>16-. <mib mib'>--~
  <mib mib'> <sib sib'>-. <do do'>8-- |

  %% Per tradition, there's no `I' in rehearsal marks.
  %%% J %%%
  \pl {<dod dod'>4\ff( <do do'>8 <sib sib'> <sol sol'>4.)
  <dod dod'>4~( \t {<dod dod'>8 <do do'> <sib sib'>} <sol sol'>4)}
  {<dod' dod'>4( <re re'>8 <mi mi'> <sol sol'>4.)
  <dod, dod'>4~ \t {<dod dod'>8 <re re'> <mi mi'>} <sol sol'>4} |
  r8 \pl {<dod,, dod'>( <do do'> <sib sib'> <re sol sib re>4--)}
  {<dod' dod'>8~( \t {<dod dod'> <re re'> <mi mi'>)}
  <mi mi'>( <fa fa'>)} |
  <mi la re> \ottava #1 <sib' sib'>->--~
  <sib sib'>16 <lab lab'>8.->--~
  <lab lab'>8 <sib sib'>16( <lab lab'>) |
  <mi la re>16 <sib' sib'>8.->--~
  <sib sib'>8 <lab lab'>->--~
  <lab lab'>16 <sib sib'> <lab lab'>8 |
  <fa fa'>4.-- <sib sib'>16 <lab lab'>
  \t {<fa fa'>8(\< <lab lab'> <sib sib'>)} |

  %%% K %%%
  \pl r4 <si re sol si>2*1/2\ff\laissezVibrer \ottava #0
  \stemDown <red,, si'>2.*1/3-"loco"^\pp
  \stemUp \dynamicUp <dod' dod'>4(_\dyn "pp_sub." \dynamicNeutral
  <do do'>8 <sib sib'> |
  \stemNeutral <sol sol'>2)
  \pl \t {dod4\> do sib\!} <mib, sib'>2 |
  <sib dod sol'>1--
  <mi fa la mi'>16->( fa') r8 r4 dod,4(-"dolce" re8 mi |
  <mi, fa sib re sol>1) |
  \pl <sol si re sol>1.\pp {r2
  \arpeggioParenthesis <sib' sib'>4\arpeggio r <lab lab'>\arpeggio r }
  \pl <sol, si re sol>1. {r4 dod'~ \t {dod re mi} <sol, sol'>2} |
  <sol' si mi>16(^\pp fa') r8 r4
  \arpeggioParenthesis <sib,, sib'>\arpeggio r <lab lab'>\arpeggio r
  \arpeggioNormal r re,(\< \t {mi fa la} re4.\> dod8 |

  %%% L %%%
  <re, sol si>2)\pp ~ \hideNote si'2 |
  <dod, mi la>8(^\pp <re sol si> <mi la dod> <sib re sol>16 <dod mi la>)~|
  <dod mi la>2 |
  <dod mi la>8(-\dyn "senza cresc." <re sol si> <mi la dod>16 <sol si mi>8 <sib, re sol>16 |
  <dod mi la>8) <re sol si>16 <mi la dod> <sol si mi>8( <la dod fad>16 <sol si mi>~|
  <sol si mi>8 <la dod fad>16 <sol si mi> <si mi sol>4 |

  %%% M %%%
  <dod fad lad>4..) R1*7/16
  <dodd mid lad>8\mf( <red sold si> <mid lad dod>) <si red sold>16-. |
  <dodd mid lad>8( <red sold si>16 lad' <mid sold dod>8) <sol, do mib>16-. |
  <la re fa>8--(\< <sid red sold>-- <dodd mid lad>-- <red sold si>16--) |

  %%% N %%%
  <fad dod'>8-.\fp red,-.-"poco string." mi-- dod16 red~ |
  red mi8-- dod16( red) mi8 red16( |
  mi8)-. fad-. <mi sold>-- mi16 fad~ |
  fad sold8-- fad16( <mi sold>8)-. <fad la>-. |
  <mi sold lad>-. <la dod>16( <lad red>)~ <lad red>16 <mi la>8-- <lad dod>16 |
  <la mi'>8-.\cresc <dod red>16( <mi sol>)~ <mi sol>8 <dod mi>16( <la? red> |
  <dod mi>8)-. <la red>-. <dod mi>16(\! <red sol> <mi la>8)-. |
  <dod mi>16( <red sol> <mi la> <sol lad>)->~
  <sol lad> <dod, mi>( <red sol> <mi la> |
  <sol lad>8)-.-\dyn "stringendo..." <dod, mi>16( <red sol> <mi la> <sol lad> <la dod>8)-. |
  <lad red>-- <do mi>16(\< <red sol>)~ <red sol> <do mi>( <red sol>8)-.
  \ottava #1 <do mi>--\! <re mi sol sib>-- |

  %%% O %%%
  \t {<dod dod'>16->\ff <do do'> <sib sib'>} <sol sol'>8~ <sol sol'>2. \ottava #0 |
  r4 r8 dod-._\pp sol2-- |
  r4 r8 dod-. sol-. dod-. |
  sol2-- r4 r8 sib,-. |
  \pl {\oneVoice <mi,, sold si mi>1\mp --~ \voiceTwo <mi sold si mi>}
  {\arpeggioParenthesis s1 <sol' sol'>4\arpeggio r <fa fa'>\arpeggio r }
  r8 <sol,! mi'>( <si sold'> <mi si'>
  <sol mi'>\> <si sold'> <mid dod' re> <sold mi'>) |

  %%% P %%%
  <sol sol'>4\pp( mi'8 re) <dod dod'>4( re8 mi) |
  <sol, sol'>4( mi'8 re) <dod dod'>4( re8 mi) |
  <sol, sol'>4( mi'8 re) <dod dod'>4( re8 mi) |
  \ottava #1
  <la, la'>4( sol'8 mi) <dod dod'>4( re8 mi) |
  <si si'>4( sol'8 re) <dod dod'>4( mi8 sol) |
  <si, si'>4( la'8 fa) <do do'>4( fa8 la) |
  <si, si'>4( la'8 fa) <do do'>4( fa8 la) |
  <mi mi'>4( si'8 sold) <mid mid'>4( sold8 si) |
  <mi, mi'>4( si'8 sold) <mi mi'>16(-> <fa fa'>) r8 \ottava #0 r4 |
  \pl {<lad,,, red>1*1/4 <mi'' mi'>4--( <fa fa'>--) s}
  {la,2. sol4} |
  <sol, do!>2( \mg <mid lad>) \md |
  \pl <fa si re sol>1-- {r2 <dod''' sol'>4\laissezVibrer r }
}

PianoMg = \relative do' {
  \clef bass
  %% already set by default, but let's play it safe.
  \set Score.tieWaitForNote = ##f
  R2.*2

  %%% A %%%
  la2.-- sol-- mi-- mi,-- |
  <mi mi'>-- <sol sol'> <la mi'>1-- |

  %%% B %%%
  \t {re,8( la' re} la'--) re,--
  \t {re,( la' re} la'--) re,-- |
  \t {la( re la'} re--) la-- re,-- la-- |
  \t {sold( mi' sold} mi'--) mi,-- |
  <sold,, sold'>4 \t {red''8( sold red'} sold,--) red-- |
  sold,( re' \t {fa fad sold)}
  \pl <la, la'>2.\laissezVibrer <re' mi>\laissezVibrer |
  <dod,, dod'>2
  \pl <re re'>1 <la'' mi'> |
  <fa,, fa'>2~ \hideNote q~ \hideNote q~ q4 r |
  R2*5 R2. \clef treble

  %%% D %%%
  <sol''' re'>4.~ <sol re'>4 r8 |
  <sol re'>4.--~ <sol re'>4~ q~ q |
  R4.
  <sol re'>4--~ q |
  r8 <sol re'>4 |
  <mi si'>4--( <sol re'>8) |
  <dod, re sol>4 <dod sol' si>8---. q---. q---. r |

  %%% E %%%
  <sib reb fa lab>-.\p q-. <lab fa' sib>-. |
  r <sib fa' dob'>-. <reb sib'>-. |
  <sib lab'>-. \longHairpin <sol fa'>-.\< r |
  <sol reb' lab'>---.\! q---. q---. q---. q---. r |

  %%% F %%%
  \clef bass
  <sol, sol'>( <la' do mib fa>-.)
  \clef treble
  r <do mib fad>-.-- % Could be solb, but
  % I want to make it clear that it's a
  % dim. 7th chord.
  <do mib fa>-.-- r <do mib?>-. |
  <do mib lab>-.--( <do mib fa>-.--) r |
  <mib fad>-.-- <do fa>-.-- |
  \clef bass
  <dod,, dod'>( <fad' sold si>-.) |
  <fad sold si>-.-- <mid sold si>-.-- |
  r <fad sold si>-.\cresc <fad sold si>-. |
  r <red sold si>-. |
  <dod, dod'>( <fad' sold si>-.) |
  r <mid sold si>-.( <red sold si>-.) |
  r <do! sold' si>-.-- <do sold' si>-.-- q-.-- |
  <sol, sol'>--( <do' sold' si>-.) r |
  <fa dod' mi>-.-- q-.-- r |
  \clef treble
  <si! sol' sib>-.-- <si sol' sib>-.-- |
  q-.-- r <sol' do fa>-.-- <sol do fa>-.-- |

  %%% G %%%
  \clef bass
  \set Score.tieWaitForNote = ##t
  \pl {\voiceFour <re,,, re'>2.*1/3--->~ s4 s
  \hideNote \grace re4}
  {r4 \clef treble \oneVoice \pl {mi'''16( fa) r8}
  mi'4 \oneVoice r \grace s4} \oneVoice r2
  \clef bass <mi,, mi'>16( fa) r8 |
  <mi mi'>16( fa) r8 r8*4 |
  r4 r8 <mi, mi'>16( fa) r4 |
  \pl {<re, re'>2.~ \hideNote re8}
  {r4 r8 <mi'' mi'>16( fa)~ fa <dod do'!>( do8)
  <mi? mi'?>16([ fa)]} r8 <mi? mi'?>16( fa') r8
  <re,,, re'>4\laissezVibrer |
  mib''16( fa) dod( si) r sold-. r mib'( fa) dod( si8) |
  r4 <re,, re'>4~ \hideNote \grace re s2 |

  %%% H %%%
  \set Score.tieWaitForNote = ##f
  <re' la' do>2~ \hideNotes re~ re~ re~ re2.~ re2~ re \unHideNotes |
  <re la' do>~<re la' do> <re do'>~ <re do'> |
  <re sib' re>~ q~ q~ q |
  \acciaccatura <re la'>8 s2 \hideNote re2
  \acciaccatura <re la'>8 s2 \hideNote re4 |
  <re re'>2--~ <re re'>8 sold |

  %%% J %%%
  <sol, sol'>2*7/8~ \hideNote sol16 |
  r4 <sol sol'>8~ <sol sol'>4\laissezVibrer s2 |
  <sol sol'>2.*5/6~ \hideNote sol8 |
  <sol sol'>4-- \clef treble
  \pl {<sol''' sib dod>-.( <sol sib dod>-.)}
  {<mi' la re>-.( <mi la re>-.)} \clef bass |
  <sol,,,, sol'>-- \clef treble
  \pl { <sol''' sib dod>-.( <sol sib dod>-.)}
  {<mi' la re>-.( <mi la re>-.)} \clef bass |
  <sol,,,, sol'>-- \clef treble
  \pl { <sol''' sib dod>-.( <sol sib dod mi>-.)}
  {<mi' la re> s}

  %%% K %%%
  \clef bass
  <sol,,,, sol'>1*1/16 \hideNotes q16 q q q q q q q q q q q q q q \unHideNotes |
  dod2 <dod mi'?> <re sol si? mi>1-- |
  \pl <re la' mi' fa>-- {r4 dod'2(_\dyn "pp_espr." do4)}
  \pl <re, sib'>1-- {r4 dod'2(_\> do4*7/8) s32_\!} |
  <fa,, fa'>1. <fa fa'> <fa sol'>
  \pl <fa fa'> <re'' sol si dod> |

  %%% L %%%
  <sol,, sol'>2~ <sol sol'>~
  <sol sol'>4 r8 dod'-. |
  sol4-- r | r r8 dod-. |
  sol4-- r | r r8 lad'-.|

  %%% M %%%
  red,4.. R1*7/16
  red16 mi'!8--( dod-- lad-.) |
  red,16 sol'!8--( re!-- lad-.) |
  red,16 sol'!8--( mi!-- re!--) |
  \set Score.tieWaitForNote = ##t

  %%% N %%%
  <fad,, fad'>16~ dod''-.[ dod-. dod-.]
  \hideNote \grace fad,, dod''-.[ dod-. dod-. dod-.] |
  \set Score.tieWaitForNote = ##f
  dod dod dod dod dod dod dod dod |
  <dod red> q q q q q q q |
  q q q q q q q q |
  <sid dod red fad> q q q q q q q |
  \clef treble
  <sid dod red fad lad> q q q q q q q |
  q q q q q q q q \clef bass |
  <do,! do'!>8-> \clef treble <sid' dod red fad lad>16-.[ q-.]
  q-. q-. q-. q-. | q q q q q q q q | q q q q
  \clef bass
  <la, la'>8-> \clef treble <sid' dod red fad lad>16-.[ q-.]
  q-. q-. q-. q-. |

  %%% O %%%
  \clef bass
  <re,,, re'>4->-- <re re'>2-> q4->~^\> |
  q <re' re'>4-- q-- q--~^\! |
  q q2 | q2.-- q4 | q1--~

  %%% P %%%
  q |
  <re re'>1~ \hideNote re
  <re re'>--~ \hideNote re
  \pl{\oneVoice <re do'>--~ \hideNote \grace re s <re re'>\laissezVibrer}
  {s1 \oneVoice <sold' lad re>~ \hideNote \grace re' s}
  \pl <sol, si dod> {mi'16 fa8.~ fa2.}
  \set Score.tieWaitForNote = ##t
  <re,, re'>1~ \clef treble
  \hideNote \grace re4
  \pl <si'' re>2*1/2 {mi16 fa8.\laissezVibrer}
  \pl <re' fa sol>2*1/2 {lab'16 sib8.\laissezVibrer}
  \clef bass <dod,,,, dod'>2 |
  dod'1 dod \pl { r2 sol,4\laissezVibrer r}
  <sol' mi'>1--
}