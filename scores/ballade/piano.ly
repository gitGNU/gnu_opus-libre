%-- Ballade -- piano.ly -------------------------------------------%
% (c) 2003-2010 Valentin Villenave <valentin@villenave.net>

\language "italiano"

PianoMd = \relative do' {
  \pl <mi fa>8-.\laissezVibrer <mi' fa mi' fa>-.\laissezVibrer
  r r2 | R2.

  %%% A %%%
  <do, sib'>8(\pp <dod la'> <re sol>4)
  \pl mi4 {do'8( sib)} |
  \pl {fa4 s} {mi'8( reb <reb, sol do>4)}
  <mib sib'> |
  <solb reb'>( <mib sib'>)
  \pl {lab8( sib)} mib4 |
  <lad, dod>8( <si mi> <dod fad>4)
  <fad, la>8( <sol sib>) |
  <sold dod>4( <sol sib>)
  <sold dod>8( <lad fad'>) |
  <do mi>8( <reb sol> <mib do'>4)
  <sol, fa' sol>-- |
  <re mi mi'>2.-- r8 fa,32( si la red) |

  %%% B %%%
  <dod mi dod'>4(\mp <re sol re'>8 <mi sib' mi>
  <sol si sol'>2)~ |
  <sol si sol'>8( <fa' lab fa'>)
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
  {dod'4 re8 mi sol2}
  <lab, sib>2
  \pl <lab sib> {dod4( re)}
  \pl <lab sib>2. {dod4\> re mi\!} |

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
  <la la'> <sol sol'>-.-- <mi mi'>--~ |
  <mi mi'>4 <sib' sib'>8--~( |
  <sib sib'> <la la'>) |
  <sol sol'>-. <sib sib'>16( <lab lab'> |
  <sol sol'>8)-.-- <fa fa'>-.-- |
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
  \pl {<mi,, mi'>16( fa)} {<fa' mi'>(-> fa')}
  \ind "simile" r8 %% What did I mean when I wrote this??
  r4 <fa,, mi'>16(->\mf fa') r8 |
  <fa, mi'>16(-> fa') r8 r
  \pl {<mi, mi'>16 fa~ fa <dod dod'> re8 <mi mi'>16 fa}
  {<fa' mi'>->\ff fa'~ fa <re, dod'>-> re'8 <fa, mi'>16-> fa'}
  r8 r <fa,,, mi'>16( fa') r4 |
  r4 r8 <fa mi'>16\f( fa')~ fa <re, dod'>( do'8) |
  <fa, mib'>16( fa') r8 <fa, mib'>16( fa') r8 r4 |
  mib,16( fa) dod( si) r sold-. r mib'( fa) dod( si8) |
  r8 \pl \t{<mi mi'>16(\f fa) s} \t {<fa' mi'>( fa') \oneVoice r}
  r4\mg mi,,,8(\pp fa si do \md

  %%% H %%%
  <sol la mi'>2)\laissezVibrer |
  s2*3 s2. s2*2
  <sol la mi'>16(\pp fa') r8 r4 | R2
  <sol, si mi>16( fa') r8 r4 R2 |
  <la, sib mi>8(-\dyn "espr." fa') r4 | R2
  fa8(\< sol) mi( fa) sol( la) fad( sold) | %%FIXME: acciaccatura.
  \pl \t {<mi la mi'>16(\sfz fa) s} \t {<fa' la mi'>( fa') \oneVoice r}
  <mib,, mib'>4\mf( <fa fa'>8 | <dod dod'>4 <si si'>) |
  \pl \t {<mi la mi'>16(\sfz fa) s} \t {<fa' la mi'>( fa') \oneVoice r}
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
  \stemDown \ind "loco" <red,, si'>2.*1/3\pp
  \stemUp \dynamicUp <dod' dod'>4(-\dyn "pp_sub." \dynamicNeutral
  <do do'>8 <sib sib'> |
  \stemNeutral <sol sol'>2)
  \pl \t {dod4\> do sib\!} <mib, sib'>2 |
  <sib dod sol'>1--
  <mi fa la mi'>16->( fa') r8 r4 \ind "dolce" dod,4( re8 mi |
  <mi, fa sib re sol>1) |
  \pl <sol si re sol>1.\pp {r2
  \arpeggioParenthesis <sib' sib'>4\arpeggio r <lab lab'>\arpeggio r }
  \pl <sol, si re sol>1. {r4 dod'~ \t {dod re mi} <sol, sol'>2} |
  <sol' si mi>16(^\pp fa') r8 r4
  \arpeggioParenthesis <sib,, sib'>\arpeggio r <lab lab'>\arpeggio r
  \arpeggioNormal r re,(\< \t {mi fa la} re4.\> dod8 |

  %%% L %%%
  <re, sol si>2)\pp \laissezVibrer s2 |
  <dod mi la>8(\pp <re sol si> <mi la dod> <sib re sol>16 <dod mi la>)~|
  <dod mi la>2 |
  <dod mi la>8(-\dyn "senza cresc." <re sol si> <mi la dod>16 <sol si mi>8 <sib, re sol>16 |
  <dod mi la>8) <re sol si>16 <mi la dod> <sol si mi>8( <la dod fad>16 <sol si mi>~|
  <sol si mi>8 <la dod fad>16 <sol si mi> <si mi sol>4 |

  %%% M %%%
  <dod fad lad>4..) R1*7/16
  <dodd mid lad>8\mf <red sold si> <mid lad dod> <si red sold>16 |
  <dodd mid lad>8 <red sold si>16 lad' <mid sold dod>8 <sol, do mib>16 |
  <la re fa>8 <sid red sold> <dodd mid lad> <red sold si>16 |

  %%% N %%%
  <fad dod'>8-. red,-. mi-- dod16 red~ |
  red mi8-- dod16( red) mi8 red16( |
  mi8)-. fad-. <mi sold>-- mi16 fad~ |
  fad sold8-- fad16( <mi sold>8)-. <fad la>-. |
  <mi sold lad>-. <la dod>16( <lad red>)~ <lad red>16 <mi la>8-- <lad dod>16 |
  <la mi'>8-. <dod red>16( <mi sol>)~ <mi sol>8 <dod mi>16( <la? red> |
  <dod mi>8)-. <la red>-. <dod mi>16( <red sol> <mi la>8)-. |
  <dod mi>16( <red sol> <mi la> <sol lad>)->~
  <sol lad> <dod, mi>( <red sol> <mi la> |
  <sol lad>8)-. <dod, mi>16( <red sol> <mi la> <sol lad> <la dod>8)-. |
  <lad red>-- <do mi>16( <red sol>)~ <red sol> <do mi>( <red sol>8)-.
  \ottava #1 <do mi>-- <re mi sol sib>-- |

  %%% O %%%
  \t {<dod dod'>16->\ff <do do'> <sib sib'>} <sol sol'>8~ <sol sol'>2. \ottava #0 |
  r4 r8 dod-.\pp sol2-- |
  r4 r8 dod-. sol-. dod-. |
  sol2-- r4 r8 sib,-. |
  \pl {\oneVoice <mi,, sold si mi>1\mp --~ \voiceTwo <mi sold si mi>}
  {\arpeggioParenthesis s1 <sol' sol'>4\arpeggio r <fa fa'> r }
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
  \pl <fa si re sol>1 {r2 <dod''' sol'>4\laissezVibrer r }
}

PianoMg = \relative do' {
  \clef bass
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
  
}