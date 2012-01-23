%-- Piano Sonata -- variations.ly ----------------------------------%
% (c) 2009-2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

UnPianoMd = \relative {

  %%% Variation I %%%
  \time 5/4
  \tempo Lent
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
    \oneVoice la\> si2.\!) |
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
  \bar "||"

  %%% Variation II %%%
  \time 7/4
  \tempo "Stesso Tempo"
  r4\pp si'2~( si8. do16 si2.) |
  r8 si--~( si4.. do32 si la4~)
  %%FIXME: ugly tuplet
  la8 r \stemUp \t {la4( si8~)} si r \stemNeutral |
  si8(-\dyn "poco_più" do~) \t {do reb,( do'~)}
  do do--~ do4 si8.( do16~) do4 \t {r8 si(\< do)} |
  do(\! reb~) reb reb4-- do8--~ \t {do re,!( do')}
  do(\< reb~\! \t {reb do si'~} si do,?) |
  r8 reb16( mib~) \t {mib8 la,( si~}
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

  si2.\ppp \startTrillSpan ~ si8 la\startTrillSpan ~
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
  \bar "||"

  %%% Variation III %%%
  \time 3/4 R2.
  \time 4/4
  r8 solb'~ solb16. fa32 solb8~
  solb16 fa' mib32 do sib solb~
  solb16. lab32 fa16. sol32 |
  \t {mi8 red'16} \t {dod lad sold}
  mi16. lad32 mi8~
  \ttt {mi16 red' dod lad sold mi~}
  mi16. fad32 mib16. fa32 |
  \time 3/4
  \t {re8 dod'16} \t {si sold fad}
  \t {re8 do'16} \t {sib sol fa}
  \tt {reb si' la fad mi} |

  r4 \pl {
    <do>2\arpeggio
    \time 4/4
    r4 do2.
    s2 s8 \hideNote do~
    do8.[ reb16] %%%FIXME: no flag???
    \time 3/4
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

  \time 4/4
  <do, si'>2 \ottava #1
  \pl {
    \oneVoice r16. lad''32 si,8~ \t {si do, si'~}
    \time 3/4
    \voiceTwo si4~ \t {si4 do,8~} do4
  } {
    s2 r8 solb''~ solb16 solb8.~
    solb16 lab \t {fa solb lab}
  }
  <si, lad'>8 <si lad'>~ <si lad'>16. si32 lad'8
  do,16 si~ \t {si do, si'} |
  \time 4/4
  \pl {
    r16. do32 si8~ si16 la~ \t {la si sold}
  } {
    lad'8 \t {r lad16~} lad4
  }
  \ottava #0
  si,16-"loco" sold sol si~ \tt {si sol sold mi red} |

  fad8. mid16 fad2~ fad16 do reb32 do mid fad~ |
  \time 3/4
  fad8 \t {do16 si'8~} si16 sol? sold32 mi red fad~
  fad16 sold \tt {mid32 fad sold sib la} |
  <do, si'>4 \pl {
    do2~ \time 4/4 do8. reb16
  } {
    si'4. do8 si2*1/2\laissezVibrer
  } do,16 do' \ottava #1 si si'~
  si la fa?8 \t {sol mi mib} |

  \time 3/4
  solb4 solb4.. lab16 |
  \time 4/4
  fa4 r8 solb \t {r16 solb lab}
  solb8\startTrillSpan ~ \tt {solb8\stopTrillSpan r16 fa solb} |
  \pl {
    do,8 si si do si4
  } {
    si'2.
  } r4 \ottava #0 |
  \time 3/4
  r4 r8 \pl {
    s8 s4
    s4 r8 r16 reb,, do4~
    \time 4/4
    do s do2~ do8
  } {
    \oneVoice si'8-"(loco)" ~ si8. la16~ |
    \t {la8 si4~} \voiceOne si2~
    si4 \oneVoice <fa mi'>8 <mib re'> \voiceOne
    si'8. do16 si4~
    si8
  } r \t {r <si, lad'>4}
  <re, la'>2 |
  \time 3/4
  <mi fa si>2.\laissezVibrer \fermata
  \bar "||"

  %%% Variation IV %%%
  \time 3/4 %% TODO: add tempo indication
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
    <la'' dod red sold>16 \mg <do,,, fa sol si> \md
    <lab''' re mi sol> <sib,, reb mib la>
    <mi fa re' dod'> <reb' do'> \mg <sol,, si dod fad> \md
  } | \t {<do fa sol si>4 <mi la si red>8~ } <mi la si red>2 |
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
  \bar "||"

  %%% Variation V %%%
  \time 2/4 %%%FIXME: tempo
  do4~ \t {do8 do4~} | \t {do8. si16 do8~} do4~ |
  \t {do8 si do} \t {si \mg mi, red} | \md do'4 \t {si8 si do} |
  \tt {solb' fa red16~} red mi lab sol |
  \time 3/4 %%%FIXME: tempo
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
    sol4. lab8 sol4~ sol8 mib \oneVoice mib re sib' la
    dod,4. do8 do fa,?
  }

  \time 2/4 %%%FIXME: tempo
  si,4~ \t {si8 si4~} | \t {si8 do si~} si4~ |
  \t {si8 \mg \stemUp do, si} \t {lab mib' do} |
  \set tieWaitForNote = ##t
  \md \stemNeutral si'4~ \t {si8 la~ re~} |
  <la re sol>2\laissezVibrer \fermata
  \set tieWaitForNote = ##f
  \bar "||"

  %%% Variation VI %%%
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
  <mi fa sol>2-- <mi fa>2.--) |
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
}
