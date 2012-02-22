%-- Piano Sonata -- variations.ly ----------------------------------%
% (c) 2009-2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"


\layout {
  \context {
    \Voice
    \remove Forbid_line_break_engraver
    \override Glissando #'breakable = ##t
  }
}

UnPianoMd = \relative {

  %%% Variation I %%%
  si'2--\p si2~( si8. do16 | si2.) si2 |
  si2.( la2) | si1*5/4-- |
  si2--(-\dyn "p_sempre" si2.--) |
  si2~( si8. do16 si2~ | si\> la2.) |

  si2\! si~( si8 do | <sold la si>2.)\pp si2 |
  si2.~( si8 la~ la4) | si1*5/4--\> |
  si2-\dyn "p_sub."

  \pl {
    s2. r2 <mi,? fa>2. s1*5/4 |
  }{
    \oneVoice  si'2~( si8. la16 |
    \voiceOne si2.) la2~( |
    \oneVoice la4\> lad si2.\!) |
  }

  \pl {
    <reb,mib>2 <reb mib>2. |
    <reb mib>2 <reb mib>2. |
    <reb mib>2 <reb mib>2. |
    <mi? fa>1*5/4\laissezVibrer |
    r1 <mi fa>4~ | <mi fa>2 <mi fa>2. |
  }{
    sol2\mp sol~( sol8. lab16 |
    sol1) fa4~( | fa2 sol2.) |
    si4.(-\dyn "più_p" la8~ la4 si2~ |
    si4~ si8. do16 si2.~) | si2 si2. |
  }
  <re,? la'>2(\> <mi fa si>2.)\! \fermata |

  %%% Variation II %%%
  r4\pp si'2~( si8. do16 si2.) |
  r8 si--~( si4.. do32 si la4~)
  %%FIXME: ugly tuplet
  la8 r \stemUp \t {la4( si8~)} si r \stemNeutral |
  si8(-\dyn "poco_più" do~) \t {do reb,( do'~)}
  do do--~ do4 si8.( do16~) do4 \t {r8 si(\< do)} |
  do(\! reb~) reb reb4-- do8--~ \t {do re,!( do')}
  do(\< reb~\! \t {reb do si'~} si do,?) |
  r8 reb16( mib~) \t {mib8 la,?( si~}
  si32\> mi fa,8 sol16~ sol8 do,)
  \t {r4 si'8--~} si2\! |

  r4\pp si2( \t {do8 si4~)} si2. |
  r8 si--~ si4~ si16\< -"cantando" la8( red16~
  red16.\! do,32 fa8~) fa4. si8--~ si r |
  la8-\dyn "p_dolce" ( sib~) \t {sib sold( la~)}
  la16 sib( sold la)
  la8( sib~) sib16 fa( mi'8~)
  \t {mi la,16.-- sold'32 sib,8--~} sib r |
  si(-\dyn "poco_più" do~) do16 do8-- fad16(
  \tt {sol,16) mib'( la dod, sib)}
  mi32->( fa,16.) \t {la'16( sib, mi}
  \t {fa,4--) do'16(\> reb,~)} reb8.\! mi16
  la16(\< fa) \t {lad( si do)} |
  \tt {dod8--(\! re-- mib16--~)}
  \ttt {mib si'( la mi sol lab,)}
  \ttt {si'( la mi fad sol, do}
  \tt {sib) la'( fad sol, red'}
  \tt {\mg re,) \md la''( fad sol, mi')}
  fa,(\> dod' sol') si, \t {sold'8( la lad)} | %%FIXME deco.

  si2.\ppp \startTrillSpan ~ si8\stopTrillSpan la\startTrillSpan ~
  la4~ \t {la\stopTrillSpan si sold8 \t {sold16( la lad}} |
  si4)\startTrillSpan ~ \tt {si32\stopTrillSpan do si do si}
  la8\startTrillSpan ~ \t {la16\stopTrillSpan si sold}
  \t {si32 sold sol} si16~
  \t {si mi,16. fad32} \t {red8 si'16~}
  si do si8\startTrillSpan ~ si4~ si8~ si16\stopTrillSpan r |
  si32 la si sold sol si mi, fad \t {red4( si'8)\startTrillSpan ~}
  \t {si8.\stopTrillSpan do,16 si8\startTrillSpan ~}
  \t {si16\stopTrillSpan do8} \t {reb si16~}
  si32 reb do solb' fa la si16\startTrillSpan ~
  si4~ si8\stopTrillSpan r |
  \times 8/12 {r32 la si sold sol sib mib, re fad do reb fa}
  \t {\mg \stemUp re,4 \md \stemNeutral si'8\startTrillSpan ~} si4~
  si8.\stopTrillSpan la16 si8 r
  do16 si8 do16 \t {si8 la16~} la16 si32 sold |
  \t {sol4 si8\startTrillSpan ~} si8~ si\stopTrillSpan ~
  si16. do32 si8~ si r <re, la'>4
  <mi fa si>2\laissezVibrer \fermata |

  %%% Variation III %%%
  R2.
  r8 solb'~ solb16. fa32 solb8~
  solb16 fa' mib32 do sib solb~
  solb16. lab32 fa16. sol32 |
  \t {mi8 red'16} \t {dod lad sold}
  mi16. lad32 mi8~
  \ttt {mi16 red' dod lad sold mi~}
  mi16. fad32 mib16. fa32 |
  \t {re8 dod'16} \t {si sold fad}
  \t {re8 do'16} \t {sib sol fa}
  \tt {reb si' la fad mi} |

  r4 \pl {
    <do>2\arpeggio
    r4 do2.
    s2 s8 \hideNote do~
    do8.[ reb16] %%%FIXME: no flag???
    do4
  } {
    <si'>4.\arpeggio do8
    si2~ si8 si4.
    \oneVoice \t {r4 <fa mi'>\arpeggio <mib re'>\arpeggio }
    \set tieWaitForNote = ##t
    \voiceOne \t {r16 do~ si'~}
    <do, si'>8~ si'4~ si
    \set tieWaitForNote = ##f
  }
  r8 <solb fa'>~ \t {<solb fa'> mi' mib} |

  <do, si'>2 \ottava #1
  \pl {
    \oneVoice r16. lad''32 si,8~ \t {si do, si'~}
    \voiceTwo si4~ \t {si4 do,8~} do4
  } {
    s2 r8 solb''~ solb16 solb8.~
    solb16 lab \t {fa solb lab}
  }
  <si, lad'>8 <si lad'>~ <si lad'>16. si32 lad'8
  do,16 si~ \t {si do, si'} |
  \pl {
    r16. do32 si8~ si16 la~ \t {la si sold}
  } {
    lad'8 \t {r lad16~} lad4
  }
  \ottava #0
  si,16-"loco" sold sol si~ \tt {si sol sold mi red} |

  fad8. mid16 fad2~ fad16 do reb32 do mid fad~ |
  fad8 \t {do16 si'8~} si16 sol? sold32 mi red fad~
  fad16 sold \tt {mid32 fad sold sib la} |
  <do, si'>4 \pl {
    do2~ do8. reb16
  } {
    si'4. do8 si2*1/2\laissezVibrer
  } do,16 do' \ottava #1 si si'~
  si la fa?8 \t {sol mi mib} |

  solb4 solb4.. lab16 |
  fa4 r8 solb \t {r16 solb lab}
  solb8\startTrillSpan ~ \tt {solb8\stopTrillSpan r16 fa solb} |
  \pl {
    do,8 si si do si4
  } {
    si'2.
  } r4 \ottava #0 |
  r4 r8 \pl {
    s8 s4
    s4 r8 r16 reb,, do4~
    do s do2~ do8
  } {
    \oneVoice si'8-"(loco)" ~ si8. la16~ |
    \t {la8 si4~} \voiceOne si2~
    si4 \oneVoice <fa mi'>8 <mib re'> \voiceOne
    si'8. do16 si4~
    si8
  } r \t {r <si, lad'>4}
  <re, la'>2 |
  <mi fa si>2.\laissezVibrer \fermata

  %%% Variation IV %%%
  <do fa sol si>4. <mi la si red>~ <mi la si red>2 r4 |
  <do fa sol si> <mi la si red> <fa sib do mi> |
  <mi la si red>2.~ <mi la si red>4 r <do fa sol si> |
  <mi la si red>2 <fa sib do mi>4 |
  <mi la si red> \pl {
    <mib solb lab>8[ si']
  } {
    re4
  } <lab reb mib sol>4 |
  <mi la si red>2.\laissezVibrer R2.
  r2 <do fa sol si>4 |
  <mi la si red>2 <fa sib do mi>4 |
  <mi sold lad red>2. |
  r8 <do' fa sol si>~ <do fa sol si>4 <mi, la si red>~ |
  <mi la si red>2 r4 |
  r4 \t {<mi la si red>8 <fa sib do mi> <do fa sol si>}
  <mi sold lad red> r16. <lab reb mib sol>32 |
  <do mi fad si>2 r8
  \t {<mi, sold lad red>16 <fa la si mi> <do mi fad si>} |
  <mi la si red>8 \t {r32 <lab do re sol> <do fa sol si>}
  <mi sold lad red>16~ <mi sold lad red>4. r8 |
  \tt {
    <do, mi fad si>16 <fa' sib do mi> <mi sold lad red>
    <lab,, do reb sol> <la re mib sold>
  } \t {<mi' la si red>8 \mg <mib, sol la re> <solb sib do fa> \md }
  \tttt {
    \stemDown <la'' dod red sold>16 \mg \stemUp <do,,, fa sol si> \md
    \stemDown <lab''' re mi sol> <sib,, reb mib la>
    <mi fa re' dod'> <reb' do'> \mg \stemUp <sol,, si dod fad> \md
  } | \t {\stemNeutral <do fa sol si>4 <mi la si red>8~ } <mi la si red>2 |
  \pl {
    s4 \noTuplet \tt {s16 <lab' sol'> s <fa mi'> r} s4 s2.
  } {
    \ottava #1
    \oneVoice <la re mi sold>16 <lab reb fa sol> <do mi fad si>8~
    \voiceOne \tt {<do mi fad si>16 sol' <la, dod red sold> mi' <mi, sold lad red>~}
    \oneVoice <mi sold lad red>32 \bracketDown "m.s." <fad' sol,> \ottava #0
    <mib,, lab sib re>8.-"(loco)" ~ |
    \t {<mib lab sib re>4 <do' mi fad si> <mi, la si red>~ }
    <mi la si red>8 r
  }
  <lab, reb mib sol>4 <lab reb mib sol>4.. <sibb lab'>16 |
  <lab do re sol>2 r4 |
  <lab reb mib sol>4 <do mi fad si>2 |
  r4 \t {<lab reb mib sol> <do mi fad si> <reb solb lab do>} |
  <do fa sol si>2 <si mi fad lad>4 |
  <sib re mi la> <la re mi sold> <la'? do re sol!> |
  <mi sold lad red>2. |
  <do mi fad si>4 <mi la si red> <fa sib do mi> |
  <mi la si red>2. |
  <do fa sol si>2~ <do fa sol si>8 <mi la si red>~ |
  <mi la si red>2 \stemUp <do' mi fad si>4~ |
  <do mi fad si>8 <mi, la si red>~ \stemNeutral <mi la si red>2 |
  r4 <re la'>2 | <do mi fa sol si>2.\laissezVibrer

  %%% Variation V %%%
  do4~ \t {do8 do4~} | \t {do8. si16 do8~} do4~ |
  \t {do8 si do} \t {si \mg mi, red} | \md do'4 \t {si8 si do} |
  \tt {solb' fa red16~} red mi lab sol |
  si4. do8 si4~ | si8 do do si fa' solb |
  si,2~ si8 do | si2 si4~ | si8 sib la lab fab' mib |
  sol,4. sol8~ sol4~ |
  sol8. sol16~ sol8 lab16 sol~ sol8 mi? |
  red fad lad si~ si16 reb,8 do'16~ |
  \t {do8 si'4\laissezVibrer } r8 sol,~ sol4~ |
  sol8 sol~ \t {sol la lad~} \t {lad si la'16 si} |

  <do, la' do>4. <si sold' si>8 <do la' do>4~ |
  <do la' do>8 <si sol' si> <si sol' si> <do lab' do>
  <mi, do' mi> <red si' red> |
  <si' sol' si>4. <do la' do>8 <si sold' si>4~ |
  <si sold' si>8 <do lab' do> <do lab' do> <si sol' si>
  <sol' mi' sol> <lab fa' lab> |
  <si,? sol' si?>4. <si sol' si>8 <fa'? re' fa?> <mi dod' mi> |

  \ottava #1
  \t {<sol sib>4 <red' fad> dod~} dod8 <sib' la'> |
  r4 <sol si dod fad> <fad do' re fa> |
  r <dob mib fa sib> <sib mi fad la> |
  \ottava #0
  r <sol sid dod fad> r |
  r <mib lab re> <do fa reb'> |

  \pl {
    <lab reb sol>2*3/2\laissezVibrer <lab sol'>
    <lab reb mib>4 <lab reb mib>2 lab s4 s2.
  } {
    mib'4. fab8 mib4~ mib8 do si re fad sol~
    sol4. lab8 sol4~ sol8[ mib]
    \oneVoice mib[ re] sib'[ la]
    dod,4. do8 do fa,?
  }
  
  si,4~ \t {si8 si4~} | \t {si8 do si~} si4~ |
  \t {si8 \mg \stemUp do, si} \t {lab mib' do} |
  \set tieWaitForNote = ##t
  \md \stemNeutral si'4~ \t {si8 la~ re~} |
  <la re sol>2\laissezVibrer \fermata
  \set tieWaitForNote = ##f

  %%% Variation VI %%%
  r8 r16 sol' \t {fad,8 \mg la fa!~}
  fa16 do8 \md <red' si'>16\arpeggio ~
  <red si'>16 sold32 \mg mi, \md re'8~
  \t {re \mg dod, sib'} \md |
  <dod' sib'>2*1/8 \arpeggio s8.
  \stemDown la8. <do, fa>16 \stemNeutral
  \t {do'8 sold' si~} si8. fad16 r mi <dod, sib'>8\arpeggio
  r16 r32 dod'' do,16 mib~ \t {mib8 si,?4}
  r16 fad''' sol,8 r16 \stemUp sib lab, \mg sol,~ sol8 mi |
  \md r8 r16 r32 sol' fad,16 la8.\laissezVibrer
  r8 \ottava #1 mi''''16 sold,,
  \t {red'4 \ottava #0 re,,_"loco" \stemUp \mg dod,} |
  \stemNeutral \md \t {r16 mi''' fa,~} fa re~
  \t {re8 \stemUp \mg sol,, \stemNeutral \md sold'}
  \pl { r4 la8_"loco"} {\ottava #1 r32 dod' red'8. \ottava #0
  r4 r8 \ottava #1 lad'}
  r4 \t {sib,8 re,4} r4 r8 r16 fad' \ottava #0
  \t {r8 red,,,4_"loco"} |
  r16 \ottava #1 re'''32 fad, la sib, mi,16 r16 mib8.
  \pl {r16 do8.\laissezVibrer r2} {r8 si'''64 fa do16.~
  \t {do4 lab sol}} \ottava #0 |
  sib,,8-"loco" <fa, do' mi>
  \pl {dod''16 fad8. <sol do fa>8 <si, si'>\arpeggio}
  {r8 \ottava #1 sold'''32 la dod,16 s8 si}
  \t {si'4 \acciaccatura sol8 fad,8~} fad16 la fa8 |
  \ottava #0
  \clef bass sol,,32 fad, la fa si, do' \clef treble dod sib'
  sol' fad, la fa sib, re red mi sold, sold' si dod sib' sol' fad, la
  fa do dod' mi si' do re, mib \ottava #1 \stemUp
  re'32 la mi' fa sold, la' \stemNeutral <lad, fad'> lad' |
  \pl {
  r4 \ottava #0 <do,,,, re mi fa sol la si>8_"loco" <do' re mi fa sol la si>
  r4 r8 r16 <re mi fa sol la> r4
  r4 \ottava #0 \t { <sol,, si la'>16_"loco" <la do si'> <re fa do'>
  <mi sol re'> <sol' si la'> <la do si'>}
  \ottava #1 \t {<re fa do'> <mi sol re'> mi'64 fa sol la r8.}
  \t {<do,, si' re>16 <si la' do> <la mi' sol> <sol re' fa>
  \ottava #0 <do,, si' re>_"loco" <si la' do>}
  \t {<la mi' sol> <sol re' fa> r} <mi'' fa>8
  r4*1/4 s4*3/4 \t {r8 \ottava #0
  <do, re mi fa sol la si>4_"loco" \laissezVibrer }
  r4 \t {<do' fa sol si>8 <re mi la> <do' fa sol si>}
  \t {<re mi la> <do' re sol la> <mi fa>}}
  {<si si'>2 \ottava #1 <do do'>8 <si si'>~ <si si'>2*3/8
  <re, mi fa sol la>16 s4
  <si' si'>2 r8 <si si'>8~ <si si'>2
  r16 \oneVoice \ottava #1 <do do'>32 si' <la, la'>8~
  \voiceOne <la la'>8. \ottava #1 <la la'>16~ <la la'>8 <si si'>~ <si si'>2}
  \pl r4 <si si'>2*1/2\laissezVibrer
  r8 do'32 si, re la sol fa, la mi \tt {re sol do mi si}
  fa' do' re, mi' \t {fa16 sol la} si8 r |
  \tt {r16 re,,, sol do la'} <si si'>4
  \pl {\ottava #0 <si,,, mi fa si>4._"loco"
  \ottava #0 <do re sol la>
  \ottava #0 <si mi fa si>2_"loco" <si mi fa si>2*1/2 }
  { r16 r32 \ottava #1 <la''' do'> <si si'>8\laissezVibrer s2 |
  r32 \ottava #1 do' si re, mi sol la fa
  mi, sol re la' si fa do' si, \ottava #0
  do^"loco" la re, mi fa si sol do,} \clef bass
  \t {r16 la, si,} do32 mi, re' mi \tt {fa sol, fa la sol'} r8 |
  \clef treble \pl <do mi fad si>2*1/2
  \t {r8 \ottava #1 fad'''32 sol la si si, do re mi}
  \t {fa16 reb mib} \t {lab, sib fa} \ottava #0
  \t {r16 sib, reb} \t {mib fa, lab}
  \pl r8 <si,, dod mid sold lad>2*1/4 \clef bass
  r32 lab mib fad si,16 r \clef treble
  \ottava #1 \t {do''''' lab sib} \ottava #0 |
  \pl {r16 <do,,,, fa sol si>4..}
  { \t {r8 \ottava #1 \acciaccatura do''''16 si,8 re}
  \oneVoice \t {sib \acciaccatura mi16 red,8 fad} }
  \t {re \ottava #0 \acciaccatura lab'16 sol,8 sib}
  fad si,4.\glissando \ottava #1 |
  si'''4 r si,,,\glissando si''' \ottava #0
  \pl { s4 r } { \oneVoice si,,,,-"loco"\glissando
  \ottava #1 <do'''' do,>2*1/2\laissezVibrer }
  \ottava #0 \acciaccatura sol,,16 fad,8 la16 fa~ fa16
  \ottava #1 \acciaccatura <mi'' mi'>16 \ottava #0 <fa,, fa'>8_"loco" do16~
  \t {do16 red si'} sold32 mi re16~ \t {re8 dod' sib'} |
  \ottava #1 \pl r8 <fa' fa'>2*1/4 \acciaccatura reb'16 \ottava #0 do,8_"loco" ~
  do16 mib si8~ \t {si16 fad la} fa8~ fa <sib, re> \acciaccatura lab16 sol,4 |
  \pl r16. <si'' si'>2*3/16 sol,32 s8 r8 \t {red16 si' sold'~}
  sold mi~ \t {mi dod sib'} r4 \ottava #1 <do' re sol la> |

  %%% Variation VII %%%
  <si mi fa si>1*5/4\laissezVibrer \ottava #0
  <<
    { \voiceTwo
      <mi,,, fa>2 <mi fa>2.
      <mi fa>2 \ottava #0 <mi fa>2.
      <mi fa>2 <mi fa>2.
      <mi fa>2 \ottava #0 <mi fa>2.
      <mi fa>4 <dod re>2 <mi fa>4 <dod re>
      <dob mib sol sib>2.
      \mg \stemUp <do mib sol>8 \stemDown
      \md \ottava #0 <mib sol sib>~
      \oneVoice \t {<mib sol sib> <do mib sol> sib'}
    } \\ {
      \voiceOne
      si2 si~ si8. do16 si1 si4~
      si8. do32 si la2~ \ottava #0 la8 la4 \ottava #0 si8~
      si2.~ \ottava #0 si8 sol si4~
      si8 la~ la si~ \t {si sold4}
      \t {r8 si la} sold fad
      \t {r4 \ottava #1 <dod''' mi sold si>4 <re mid fad la>}
      <dod mi sold si> <re mid fad la>2*1/2 s4
    } \\ {
      \voiceThree
      s1*5/4
      r4 \ottava #1 lad'1\laissezVibrer
      r2 r8 \ottava #1 fad4. \ottava #1 dod4
      r4 \ottava #1 <re sol> r8 \ottava #1 <do la'> s2
      s1*5/4*2
    }
  >>
  <si,,, mi fa si>1*5/4 <si mi si'>2 <si re la' si>2. |
  %%% This causes a collision with the hidden note. Not to worry.
  \pl {\oneVoice <do fa sol si>2 \voiceTwo <do fa sol si>2.
  \oneVoice <do fa sol si>2 \voiceTwo <do fa sol>2. r4 <do fa sol si>2. do'8 si
  <do, re sol>1*1/2 \voiceThree r4 r8 <dod'' red fad sold lad>4.
  \oneVoice <do,, reb lab'>2 \voiceTwo <do reb lab'>~ lab'8 solb
  <do, reb lab'>2 <mi la si>2.
  <do reb>1*5/4
  }
  {s2 r4 \t {r8 re''^"loco" la'} re,4
  \hideNote si,2~ si8. do16 si2
  \t {r8 do' si'~} si mi, fa4~ \t {fa8 sol4\laissezVibrer} s4
  si,,2 la2. s2 r4 r8 lab'~ lab4\laissezVibrer
  r4 mib~ mib8. mi16 mib2 |
  lab,2. solb2} |
  <reb mib sol>2 <reb mib sol>~ sol8. lab16 |
  sol2. lab2 <re, mib fad>1 r4
  \pl mi1*5/4 {r4 r8 fa~ fa2 sol4} |
  <re sol la>2~ <re sol la>8 <mi fa si>2\laissezVibrer\fermata s8
}

UnPianoMg = \relative {
  <mi fa>2--( <mi fa>2.--) |
  <mi fa>2--( <mi fa>2.--) |
  <mi fa>2_"simile" <mi fa>2. |
  <mi fa>2 <mi fa>2. |
  <do fa sol>2 <do fa sol>2. |
  <do fa sol>2 <do fa sol>2. |
  <do re sol>1*5/4-- |

  <mi fa>2 <mi fa>2. |
  <fa sol?>2 <fa sol>2. |
  <mi fa sol>2--( <mi fa sol lab>2.-- |
  <mi fa sol>4..-- solb16 <mi fa>2.--) |
  <red mi>2 <red mi>2. |
  <red mi>2 <re mib>2. |
  <re mib fa sol>1*5/4-- |

  r4 do2. r4 | r do2. r4 |
  r do2 do |
  \pl {
    r4 do~do2.
  }{
    <reb mib sol>2 <reb mib sol>2.
  }
  <do reb sol>2 <do reb sol>2. |
  \pl {
    <do reb>2 <do reb>2.
  }{
    sol'4~( sol8. lab16 sol2.)
  }
  r2 <do, re! sol la!>2.\fermata

  %%% Variation II %%%
  \clef bass
  mi4--( fa,-- si-- do,-- sol'-- si-- fa--) |
  mi'--( fa,-- si-- do,-- sol'-- si-- fa--) |
  mi'_"simile" fa, si do, sol' si fad |
  sol' lab, red mi, si' la dod |
  sol' lab, red mi, si'--( la-- lab--) |

  sol--( fad-- fa-- mi--) lab--( sol-- fad--) |
  sol--( fad'-- fa,-- mi'-- do,-- si'-- fad--) |
  re'--( dod-- do-- si--) mib,--( mi-- fa--) |
  re--( dod'-- do,-- si'--) fad--( sol-- sold--) |
  la--_( sold'-- do,,-- reb'--
  \stemDown mi,-- \stemNeutral mib-- sib'--) |
  mi_"simile" fa, si do, sol' si fa |
  mi' fa, si do, sol' si fa |
  mi' fa, si do, fa si sol |
  si--( \stemDown do,--) \stemNeutral re--( fa--) sol--( si-- fa--) |
  si--( fa-- si-- mi--) r \clef treble
  <do re sol la>2\fermata \laissezVibrer
  \clef bass |

  %%% Variation III %%%
  \tt {si16-"legato assai" do, re fa sol}
  \tt {si do, re fa sol}
  \tt {si do, re fa sol} |
  \tt {si do, re fa sol}
  \tt {si do, re fa sol}
  \tt {si do, re fa sol}
  \tt {si do, re fa sol} |
  \tt {sib do, reb fa sol}
  \tt {sib do, reb mi fad}
  \tt {lad si, dod mi fad}
  \tt {lad si, dod red fad} |
  \tt {la sib, reb mib fa}
  \tt {la sib, do mib fa}
  \tt {la sib, do re mi} |

  \tt {sold la, si re mi}
  \tt {sold la, si re mi}
  \tt {sold la, si re mi} |
  \tt {sold la, do re mi}
  \tt {sol la, si re mi}
  \tt {sold la, si re mi}
  \tt {sold la, si re mi} |
  \tt {sold la, si re mi}
  \tt {sold la, si re mi}
  \tt {sold la, si re mi}
  \tt {sold la, si re mi} |
  \tt {sold la, si do red}
  \tt {sold la, si do red}
  \tt {sol la, si do re} |

  \tt {mib lab, do si' sol}
  \tt {mib sol, do si' lab}
  \tt {mib lab, do si' sol}
  \tt {mib sol, do si' lab} |
  \tt {mib lab, do si' sol}
  \tt {mib sol, do si' lab}
  \tt {red, fad, do' si' la} |
  \tt {red, mi, do' si' sol}
  \tt {lab, si do, fa sol}
  \tt {red' fa, do' si' sold} |
  \tt {red mi, do' si' sol}
  \tt {lab, si do, fa sol}
  \tt {red' mi, lab sol' si,}
  \ttt {re mib, sol la do re} |

  \tt {red mi, sold lad dod}
  \tt {red mi, sold lad dod}
  \tt {red mi, sold lad dod}
  \tt {red mi, sold lad dod} |
  \tt {red mi, sol sib do}
  \ttt {re mi, sol sib do re}
  \tt {red mi, sold lad dod} |
  \tt {red mi, fad la si}
  \tt {red mi, fad la si}
  \tt {red mi, fad la si} |
  \tt {red mi, fa sol la}
  \tt {si do, re mi fad}
  \tt {sol la si dod mib}
  \tt {re mi fad sold lad} |

  \tt {si do, re fa sol}
  \tt {si do, re fa sol}
  \tt {si do, re fa sol} |
  \tt {si do, re mi fa}
  \tt {la re, mi fa sol}
  \tt {si mi, fa sol la}
  \tt {si re, fa sol la} |
  \tt {si do, re fa sol}
  \tt {si do, re fa sol}
  \tt {si do, re fa sol}
  \tt {si do, re fa sol} |
  \tt {sib do, reb fa sol}
  \tt {sib do, reb fa sol}
  \tt {sib do, reb fa sol} |

  \tt {la do, reb mi fad}
  \tt {la do, reb mi fad}
  \tt {la do, reb mib fad} |
  \tt {la do, dod re fad}
  \tt {sold do, dod re fad}
  \tt {sold do, dod re mib}
  \tt {sol do, dod re mib} |
  \tt {fad re mi fa sol}
  \tt {sold mib sol la lad}
  <mi si'>2 | <do re sol la>2.\fermata \laissezVibrer

  %%% Variation IV %%%
  R2. r4 \ottava #-1 <do,, si'>2\laissezVibrer \ottava #0 R2.
  r2 r8 \ottava #-1 <do si'>~ <do si'>2\laissezVibrer \ottava #0 r4 |
  r r8 \ottava #-1 do~ do4\laissezVibrer \ottava #0 R2.
  r2 r8 \stemUp <do'' fa sol si>~_"(loco)" |
  <do fa sol si>4 \stemNeutral \pl {
    r4 r8 <reb,, do'>~ <reb do'>2\laissezVibrer s4
    r <reb do'>2\laissezVibrer
    r2 r8 <reb do'>~ <reb do'>2\laissezVibrer s4
    r <do si'>2\laissezVibrer
  } {
    <mi'' sold lad red>2 r <fa sib mi>4
    <mi sold lad red>2 <mib sol la re>4
    <mi la si red>2.
    r8 <do fa sol si>~ <do fa sol si>4 <mi la si red>~
    <mi la si red>2 r4
  }
  r4 r8 <re fad sold dod>16-. r
  \ottava #-1 \t {r8 la, re,}
  r16. mi32 <fa sol>8~ \t {<fa sol>8 <re la'> <do si'>~}
  <do si'> \ottava #0 r16 <re'' sol la dod>-. _"(loco)" |
  r4 \ottava #-1 r16 <do,, si'>16. <do si'>~
  <do si'>32 <reb sib'> <do si'>8. \ottava #0 |
  s2.
  \ottava #-1 \t {r8 <do reb>4} r16 <do reb>16. <do reb>~
  <do reb>32 <lad' si> <do, reb>8. \ottava #0 |
  \t {r4 <mi'' la si red>8~ _"(loco)" } <mi la si red>4
  \t {r8 <fa lab sib mi> <mi la si red>\laissezVibrer } |
  \ottava #-1 r8 <fa,, solb> r <fad sol> \ottava #0 r4 |
  r8 \ottava #-1 do r do r mib | r do r mib r si' |
  r do, r mib r si' | r lab r do, r mib |
  r do r lab' r mib \ottava #0 |
  \pl {
    r8 \ottava #-1 do \ottava #0 r \ottava #-1 mib \ottava #0 r4
    r8 \ottava #-1 do r do \ottava #0 r4
  } {
    <do'' fa sol si>4 ^"(loco)" <mi sold lad red> <fa sib do mi>
    <mi sold lad red>2.
  }
  <do fa sol si>4 <mi sold lad red> \ottava #-1 do,, \ottava #0 |
  \pl {
    r \ottava #-1 do \ottava #0 r
    r \ottava #-1 do \ottava #0 r
    r8 \ottava #-1 <do si'>4. \ottava #0 r4
    s2.
  } {
    <mi'' la si red>2. <do fa sol si>2~
    <do fa sol si>8 <mi la si red>~
    <mi la si red>2 \md \stemDown <si' mi fad lad>4~ %%FIXME: ugly tie
    <si mi fad lad>8 \mg \oneVoice \stemNeutral <mi, la si red>~
    <mi la si red>2
  }
  r4 \ottava #-1 <do,, si'>2 <re la'>2.\laissezVibrer
  \ottava #0

  %%% Variation V %%%
  R2*2 s2 R2*2 \clef treble
  \pl {
    lab'''2. lab s4 lab2 s4 <lab sib>2~ \hideNote <lab sib>2.
    \clef bass
    do,2. do2 do4~ \hideNote do2 do4~ \hideNote do2. do2.
  } {
    r4 <reb' mib sol> <reb mib sol>
    r <reb mib sol> <reb mib sol> <reb mib sol>
    r <reb mib sol> <reb mib sol>
    r <reb mib sol> <reb mib sol>2 <reb mib sol>4
    r <fa, si> <fa si> r q2 q4 q r <fa si re>2 q4 r <mi fa si>2
  }

  re,4 <fa' solb sib reb> <fa solb sib reb> |
  lab, <la' sib re fa> <la dod fad> |
  fad, <sol' sib mib> <solb mib mib> |
  do,, <la'' sib reb solb> <la re fad> |
  sib, <dod' re fad> <sold la re> |

  \pl {
    <mi fa> <mi, fa'>2 fa2. <mi fa> <mi' fa>4 fa,2
    <mi' fa>4 <mi, fa mi' fa>2 s4 do2 do2.\laissezVibrer
    do' s4 reb2 re red4
  } {
    si'4. do8 si4~ si8 mi, fa do' si4~
    si8 lab sol sib re red
    si4. mi,8 red do' si2.
    <do, fa sol si>4 r <do fa sol si>
    r <mi la si red> <mi la si red>
    r <fa sol si> <fa sol si> <fa sol si>
    r <solb lab do> r <fa sol si> r
  }
  <mi fa>8 <mi fa>4. | <mi fa>8 <mi fa>4. |
  <mi fa>2*1/8 s4.. | r8 <fa sol>4
  \pl {\oneVoice do8~ \voiceTwo do2\laissezVibrer}
  {s8 <mi fa si>2\fermata \laissezVibrer }

  %%% Variation VI %%%
  r4 s1 |
  \tupletDown \t {r8 sol \md fad'} \tupletNeutral
  \mg r16 \acciaccatura {la,,32[ sol]} mib8.~
  mib8. mib'16 \t {si'16 sold mi'} re,8 \t {re,4 fa?8} |
  r4 \t {sib,4 lab'8} do8. fa?16 \stemDown \t {re'4 fad8}
  \t {la,, dod, \ottava #-1 red,} |
  \pl {si2 si2~ si8. do!16 si2 fad'4 si,2
  si2~ \t {si16 do si} la8~ la2 si4.. \ottava #-1 do16 si2.
  la4 r16 \t {mib'32 re dod} si8~ si4}
  {r4 r8 fa'' si,,16. lad'32 r8 s2
  r4 s r4 r8 do?4. r8 mi,16 fa\laissezVibrer
  r8 sol'~ sol4 \t {do8 sold'4~} sold
  \t {r16 \ottava #0 lab,^"loco" mib'} fa'8
  \t {mi,16 fad' sib,} dod8\laissezVibrer
  r4 \tt {la,,32 sol sold dod re} mi8~ mi4
  r16 la8 sib32 fad~ fad8 \t {r16 mib re'}
  r16 si, <si' si'>8} si,,4.. do16 |
  si32 do' \ottava #0 dod^"loco" sib'
  \ottava #-1 re,, mi mib la \ottava #0
  fa'^"loco" dod' re si, do' mib sol si
  la, la, fad' sol mi' re, mi mib
  \ottava #-1 lab,16 sol la fad
  \stemUp sib \ottava #0 \stemDown \md red''''
  mi \stemUp \mg dod,,,, \stemNeutral
  \pl {\ottava #-1 <si, si'>2 \ottava #-1 <do do'>8 <si si'>~ <si si'>2*1/2
  <re mi>4 <si si'>2 r8 \ottava #-1 <si si'>~ <si si'>2
  r16 \oneVoice \ottava #-1 do32 <si si'> <la la'>8~
  \voiceTwo <la la'>8. \ottava #-1 <la la'>16~
  <la la'>8 <si si'>~ <si si'>2}
  {r4 \ottava #0 <do'' re mi fa sol la si>8 ^"loco" <re, mi fa sol la si>
  r4 r8 r16 s <fa, sol la>4
  \t {r8 <sol si la'>16 <la do si'> <re fa do'> <mi sol re'>}
  \ottava #0 mi'32^"loco" fa8.. \clef treble mi''32 fa16.
  \clef bass r8 r \ottava #0 <mi,, fa>\laissezVibrer ^"loco"
  \t {r8 <do, si' re>16 <si la' do> <la mi' sol> <sol re' fa>}
  r4*1/4 s4*3/4 \t {r8 \ottava #0 <do' re mi fa sol la si>4^"loco" \laissezVibrer}
  r4 <do, mi fa si>8 <re sol la> <do, mi fa la> <re sol>}
  \pl si2*1/4\laissezVibrer
  \ttt {si16 si' \ottava #0 do^"loco" la' re sol}
  \clef treble <si mi fa si>2 <si mi fa si>4.. do'16
  \pl r4 <si, mi fa si>2*1/2 \clef bass
  re,,32 do' si mi la, fa' re sol s2 r8 \ottava #-1
  \tt {si,,,32 do' \ottava #0 la'_"loco" re sol} |
  s4 \ottava #-1 si,,,16 do' la re \ottava #0 r4
  \ottava #-1 la,16 sol' fa si re, mi do8 |
  \pl si2*1/2 \t {r8 \ottava #1 \clef treble
  \tupletDown \t {sol''''''16 la fad} \t {mi do re}} \tupletNeutral
  \ottava #0 fad,32 sol la si do, dod red mi <mib, sol la re>4 \clef bass
  r32 mi, fa sol \tt {la la, sib do re} red, mi fad sold la, si do re |
  \ottava #-1 si,2 \ottava #0 \clef treble <lab''' reb mib sol>8
  <do fa sol si>4 <do fa sol si>4. | \clef bass
  r8 \ottava #-1 si,,,4.\laissezVibrer \clef treble \ottava #0
  \graceNotes { \tttt {r16 dod''' red fad sold lad dod}
  \tttt {red fad sold lad \ottava #1 dod red fad}
  \tttt {sold lad dod red fad sold lad} } |
  \clef bass \ottava #-1 \pl <si,,,,,,, si'>2
  {r8 fa'~ \t {fa fad' mib}} sol4 \ottava #0 <la, dod'>\arpeggio
  \tt {mi'16 sold lad si' re} |
  \pl <fa,,, fa'>2 {r8 \t {r16 mi' fa'~} \t {fa8 re fad} }
  sold,8. do32 mib \t {sol8 la dod} r mi,, |
  \pl <si si'>2*3/2 {r8 \t {fad''16 la fa~} fa16 do8.~ do8 re}
  r4 \ottava #-1 <do,, re sol la>4 |

  %%% Variation VII %%%
  <si mi fa si>1*5/4\laissezVibrer \ottava #0
  R1*5/4
  r4 \ottava #-1 sib1\laissezVibrer
  r4 r8 mib4. lab2\laissezVibrer
  r4 <do, la'>8 re sol4 \ottava #0 r2 |
  R1*5/4
  r4 \ottava #-1 <do, si'> <re la'>2.*1/3 \ottava #0 s2 |
  r2 \ottava #-1 <dod sib'>2. r4 <mib lab>2 fad |
  \ottava #0 R1*5/4
  r4 mi'2.-"loco" r4 |
  re1*5/4 mi4 fa1~ fa2~ fa8 mi' fa4 sib |
  \t {r4 mi, fa~} fa4~ fa8. mi16 fa4 |
  r4 r8 <mi fa si>~ <mi fa si>2. |
  \clef treble
  do'4 do1
  \pl {<do reb>2 <do reb>2.} mib1*5/4 |
  <mi? fa?>2 <mi fa> r4 |
  R1*5/4
  <mi fa>2~ <mi fa>8 <do re sol la>2\laissezVibrer\fermata s8
}
