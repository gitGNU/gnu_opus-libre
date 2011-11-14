%-- Étoile sans couleur -- piano.ly -------------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"


%-- Pinched strings -----------------------------------------------%

%%% There's no standard notation that I know of for this
%%% kind of shenanigans. (Granted, I for one am using it more as
%%% a contemporary-looking gimmick than anything really deep.)
#(define quasiHarp
  (define-music-function (parser location x) (ly:music?)
#{
  \override Stem #'stencil =
    #(lambda (grob)
       (let* ((x-parent (ly:grob-parent grob X))
              (is-rest? (ly:grob? (ly:grob-object x-parent 'rest))))
         (if is-rest?
             empty-stencil
             (ly:stencil-combine-at-edge
              (ly:stem::print grob)
              Y
              (- (ly:grob-property grob 'direction))
              (grob-interpret-markup grob
                (markup
                  #:center-align ; #:fontsize -4
                  #:musicglyph "noteheads.s2cross"))
              -2.3))))
    $x
   \revert Stem #'stencil
#}))

%-- The actual notes ----------------------------------------------%

%%% Right hand.
PianoMd = \relative do' {
  \partial 16 s16
  R1*7/16*4
  R2. R2.-\fermataMarkup

  %%% 1 %%%
  R2.*17
  \quasiHarp {
  r8 \acciaccatura {si16[^"simile" _"(gliss.)" do] \glissando} dod8\laissezVibrer
  r4 \t {r8 la''4\laissezVibrer} |
  \t {r8 sol \mg dod,,} \md fa'4\laissezVibrer r4
  R2.
  \t {r8 red'4\laissezVibrer} r4 r8 dod,,8\laissezVibrer |
  r4 sib'\laissezVibrer r |

  %%% 2 %%%
  R2.
  \acciaccatura {sold16[-"(gliss.)" la]} sib2\laissezVibrer r4 |
  \acciaccatura {fad16[-"(simile)" sol]} sold2\laissezVibrer r4 |
  r4 \acciaccatura {mi16[ fa]} fad2\laissezVibrer |
  R2.*2
  r4 \acciaccatura {lad'16[ si]} do2\laissezVibrer |
  r4 \acciaccatura {dod16[ re]} red2\laissezVibrer |
  R2.*6
  r4 mi2\laissezVibrer
  R2.*4
  }

  %%% 3 %%%
  r2 \ottava #1 r16 \t {la32 do fa} si8 |
  r8 sol16 do, \mg reb, \md fa' \mg do,, \md do'
  \tt {reb' \mg lab, mi, \md reb''' fa,} | \ottava #0
  \ttt {sol do, lab \mg mi, reb' \md lab'}
  \tt {\mg red,, mi, \md dod''' sib, \mg mi,,}
  \tt {\md la' si' \mg la,,, \md dod' sib'} |
  s4 <do, fa sol>2 <do fa sol>2. |
  <do fa sol>4 <do fa sol>2 <do fa sol> <do fa sol>4 |
  \pl {<do fa sol>4. <do fa sol>}
  {r4 \ottava #1 \t {si'16 red'' mi,,} \ottava #0 r8 r4} |
  \set tieWaitForNote = ##t
  \hideNotes \stemUp fa,16~ do~ sol'8~ \unHideNotes \stemNeutral <do, fa sol>2 |
  \set tieWaitForNote = ##f
  <do fa sol>4 <do fa sol>2 <lab do sol'>2. |
  <do fa sol>4 <do fa sol>2 <si re mi sol>2. |
  <do fa sol>4 <do fa sol>2 <si re mi sol> <si re mi sol>4 |
  <do fa sol>8 <si re mi sol>4 <do fa sol> s8 |
  \pl {<do fa sol>8 <si re mi sol>4.} {s4 \t {r8 <lab' sib reb> <fa sol>}}
  <fa, lab sib reb>8 <si re mi sol>~ |
  <si re mi sol> <si re mi sol> r2 |
  <si re mi sol>8 r r4 r8 s | \clef bass

  %%% 4 %%%
  <si, re mi sol>2 r4 <si re mi sol>2. |
  <si re mi sol>4. <si re mi sol>8~ <si re mi sol>2
  <mi sol>16 <si sol'> <re sol>8 r <re mi sol>~ |
  <re mi sol>4 <si re mi sol>~ <si re mi sol>4.
  <red mi sib' dod>8~ <red mi sib' dod>2 |
  <si re mi sol>4. fa32 si re mi sol4
  <mi sol>16 <si sol'> <re mi sol>8~ <re mi sol> <lab sib reb>4. |
  <si re mi sol>4. <si sol'>16 <re mi sol> r4 <si re mi sol>2. |
  <sib do mib fa lab>4. <si re mi sol>8~ <si re mi sol>2 \clef treble
  <mi' do' fa sol>2 | \clef bass
  \acciaccatura <lad,, dod>8 <si re mi sol>1\laissezVibrer r2 |
  r \t {r4 do dod} \t {sold' mi dod'} |
  fa1\laissezVibrer r2 |

  %%% 5 %%%
  R1. \clef treble r2 s1 s1.
  <si si'>16 <do do'>2... <si si'>8 <dod dod'>4.~ |
  <dod dod'>2. r4 <si si'>2 |
  <re re'>1.*1/3\laissezVibrer
  \t {mib,8 fad sol} \t {fad sol sib} \t {mib, fad sol} \t {fad sol sib} |
  \t {mib, fa sol} \t {mi fad sold} \t {sib re, mib} \t {fad dod re}
  \tt {mi do sol sib fad} | mi4 r
  <si'' si'>8 <do do'>2.. |
  <si si'>4 <dod dod'>2. <si si'>2*1/2 \ottava #1 \t {r8 dod' sold'} |
  \pl {r8 dod, \t {mi dod sold'}} <red red'>1.*1/3\laissezVibrer
  \tt {red'!8 dod, mi dod sold'} \tt {red' dod, mi dod sold'} |
  \tt {red' mi, sold mi lad} \tt {red fadd, lad sold si}
  \tt {red do mi, dod' sold'} |

  %%% 6 %%%
  r1 \pl {<red, mi>16[^"m.s." sib dod mi,]} {<red'' mi>8 r}
  \ottava #0 \stemUp la,,16[-"(loco)" mi dod sold] \stemNeutral |
  R1. r4 do~ \t {do do do~} do8 do4.~
  do1 r4 \pl {red'16 la_"m.s." dod, sib} {red'8^"m.d." r}
  R1. do,4 do~ do8 si si do r2 |
  R1.*2
  \tttt {red8 la dod sib' mi, sol4~} sol1\laissezVibrer |
  r4 r8 do, si do si4~ si8 si4.\laissezVibrer |
  \acciaccatura <lab'' do reb mi sol>16 <lab, do reb mi>4 r
  r8 \acciaccatura <do' sol'>16 <sold dod mi>8
  r8 \acciaccatura <do reb>16 <mi, sol>8 r2 |
  <la, re>16 \mg la, \md <fa'' dod' red> mi,
  \tt {<mi dod' red> <sib sol'> <sol' dod red> \mg <mi, sib'> \md r}
  \t {<re' mi>8 \mg <dod, fa sol> <re mi>} \md r4
  \t {si''16 do mib} sol8
  r16 \pl {si,,! <sol do>8~<sol do>1}
  {<dod la' sib>16 fa8~ fa1}
  r2 |
  \stemUp \tttt {\mg sol,8 \md do lab' mi dod' sol'4~} \stemNeutral
  sol4 \t {do8 dod mi} sold4 r |

  %%% 7 %%%
  R2.*2
  sol8 dod,, \ottava #1 sold'''4 \ottava #0 r4 |
  sib,,8 mi,, \ottava #1 dod''' \ottava #0 fa,,,_"(loco)" r4 |
  r4 r8 do'' sib \ottava #1 sib'' \ottava #0 |
  r2 <sib,,,, mi>4\arpeggio |
  r4 mi''8 \ottava #1 dod' \mg la,,, \md si''' \ottava #0 |
  do, fa \ottava #1 sib' \ottava #0 mi,,,, r4 |
  r2 \pl {s8 sib'} {do sib} |
  \ottava #1 sib'' \ottava #0 \mg mi,,,, \md r4
  \ottava #2 \t {mi''''8 sib' sib,} |
  do'4 \ottava #0 r8 sol,, \mg dod,, \md sold''' |
  r4 \pl sib,, \t {r8 mi dod'} fa4 |
  r \t {do,8 sib sib'} r4 |
  r4 \t {r mi,8} \t {dod' \mg la,, \md si''} |
  \t {do, fa sib} r4 s |
  r \t {<mi,, sib' do> <si dod mi fa> \mg <dod, sol' lab>} |
  \md R2.*3
  do'?4 do2 do2.\laissezVibrer
  R2.*2
  do2. do2 do4~ do4. do~ do4 do4. do8~ do4 do2 |
  si4. si~ si2 si4~ si2 si4~ si si do~ do do2~ |
  do8 do4 do4.~ do4 si4. si8~ |
  si4 do8 si4 si8~ | si4. si~ |
  si4. si4 si8 |
  do2 si4~ si do8 si4 do8~ |
  do4 si2~ si4. \pl {\oneVoice do4.~ |
  do2~ do8 do~ \voiceTwo do2 do4~ \oneVoice
  do2.~ do~ do~ \voiceTwo do}
  {s4. s2. fa'2.\laissezVibrer s2.*3 fa2.\laissezVibrer}
  r4 do,2 |

  %%% 8 %%%
  \pl {
    dod8 dod~ dod8. dod16~ dod4~ |
    dod8 dod~ dod16 dod8.~ dod8 dod~ |
    dod dod4 dod8~ dod8. dod16~ |
    dod4 dod dod8 dod~ |
    \t {dod8 dod8. dod16~} \t {dod8 dod8. dod16~} dod dod dod8~ |
    dod16 dod dod8~ dod16 dod8. dod dod16~ |
    \t {dod4 dod8~} \t {dod dod4}
  } {
    r4 sol''\laissezVibrer r |
    fa2\laissezVibrer s4 |
    \t {r4 sol8\laissezVibrer} r4 fa~ |
    fa2\laissezVibrer s4 |
    r4 r8 sol4.\laissezVibrer |
    \t {r4 fa8\laissezVibrer} r8. sol16\laissezVibrer r8 fa\laissezVibrer |
    r sol\laissezVibrer r fa16 sol\laissezVibrer
  }
  \set tieWaitForNote = ##t
  dod,,4~ dod r \mg \tt {re,16 mi \md sol'' dod,,~ fa'\laissezVibrer } |
  dod,4. dod4 dod8~ |
  \set tieWaitForNote = ##f
  dod2.~ dod4 dod2 dod dod4~ dod dod2 |
  <reb solb lab>4 <do fa sol>2 <do fa sol>2. |
  <dod sold'>2.~ <dod sold'>~ <dod sold'>2 r4 |
  \ottava #1 red'''4 \ottava #0 \mg la,,,,, \md dod'' |
  sib''2.\laissezVibrer s2. R2.*3
  r4 \quasiHarp red2_"cordes pincées" | R2.
  r4 \quasiHarp {dod,2 sib'2.\laissezVibrer } R2.*2
  r4 \pl {s2 <fa, sol!>2.}
  {\oneVoice \tieUp <dod' sold'>2~ \voiceOne
  <dod sold'> \tieNeutral \oneVoice si'4} |

  %%% 9 %%%
  \stemUp \tieUp do2~ do8 si dod2.~ dod4 si2 \stemNeutral \tieNeutral |
  \ottava #1 \pl \tt {r16 dod mi dod sold'}
  <red red'>2.*1/3\arpeggio \laissezVibrer
  \tt {red'16 dod, mi dod sold'}
  \tt {red' dod, mi dod sold'} |
  \tt {red' dod, mi dod sold'}
  \tt {red' dod, mi dod sold'}
  \tt {red' dod, mi dod sold'} |
  \tt {red' dod, mi dod sold'}
  \tt {red' dod, mi dod sold'}
  \tt {red' dod, mi dod sold'} | 
  \tt {red' dod, mi dod sold'}
  \tt {red' dod, mi dod sold'} 
  \tt {red' dod, mi dod' sold'} |
  \tt {red dod, mi dod sold'}
  \tt {red' dod, mi dod sold'}
  \tt {red' dod, mi dod sold'} |
  \tt {red' dod, mi dod sold'}
  \tt {red' dod, mi dod sold'}
  \tt {red' dod, mi dod sold'} |
  \tt {red' dod, mi dod sold'}
  \tt {red' dod, mi dod sold'}
  \tt {red' dod, mi dod sold'} |
  \tt {red' mi, dod' sib, mi}
  \tt {red' mi, dod' sib, mi}
  \tt {red' mi, dod' sib, mi} |
  \tt {red' la, dod sib' mi,}
  \tt {la, la, si' dod, sib'} \ottava #0
  \tt {sol' do, si dod, fa'} |
  \tt {sol do, sold dod, sold'}
  do, dod' mi, sold'
  \tt {red, mi, dod'' sib, mi,} |
  \tt {re mi sol' dod,, fa'}
  \tt {red la, dod sib' mi,}
  \stemDown fa do sol' \mg \stemUp mi, \md \stemNeutral |
  sib'2.~ \hideNotes sib2.~ sib~ sib R2.*2-\fermataMarkup
}


%%% Left hand.
PianoMg = \relative do {
  \clef bass
  \partial 16 s16
  R1*7/16*4
  R2. R2.-\fermataMarkup

  %%% 1 %%%
  R2.*16
  \quasiHarp {
  fa,2.\laissezVibrer ^"cordes pincées" _"(con Ped.)"
  R2. s4 s2
  R2.
  r4 la\laissezVibrer r |
  R2.
  }

  %%% 2 %%%
  R2.*19

  %%% 3 %%%
  R2. \clef treble
  s2. s4 \clef bass s2 |
  \md \t {fa''16 do sol'} \mg mi,,8~ mi2 | mi2. |
  mi4 mi2 mi mi4 |
  mi4. mi |
  \md \stemDown fa''16 do sol' \mg \stemNeutral mi,,~ mi2 |
  mi4 mi2 <mi reb'>2. |
  mi4 mi2 fa2. |
  mi4 mi2 fa fa4 |
  mi8 fa4 mi \md \stemUp <lab' sib reb>32 sol \mg <sib, reb> fa | \stemNeutral
  mi8 fa4. fa4~ fa8 fa r2 |
  fa8 r r4 r8 \md \stemUp \ttt {sol''32 reb sib lab \mg reb, sib} | \stemNeutral

  %%% 4 %%%
  \ottava #-1
  fa8 fa, fa fa fa fa fa fa fa fa fa fa |
  fa fa fa' fa, fa fa fa fa fa fa fa fa |
  fa mi' fa, fa fa fa fa fa fa fa solb' fa, |
  fa fa fa \t {lab16 sib reb} fa8 fa, fa fa fa fa fa fa |
  fa' fa, fa fa fa fa fa' fa, fa fa fa fa |
  mi' fa, fa fa' fa, mi fa fa fa fa fa fa |
  <fa fa'> <fa fa'> <fa fa'> <fa fa'>
  <fa fa'> <mi fa'> <mi fa'> <fa fa'>
  <fa fa'> <fa fa'> <fa fa'> <fa mi'> |
  <fa mi'> <fa mi'> <mi fa'> <mi fa'>
  <fa mi'> <mi fa'> <mi fa'> <mi fa'>
  <mi fa'> <mi fa'> <fa mi'> <fa mi'> |
  <fa mi'> fa fa' fa, fa fa mi fa fa fa fa fa |

  %%% 5 %%%
  \ottava #0
  fa16 lab' sib dod re dod sib lab
  fa la si re mi re si la
  fa si re mi sol mi re si |
  \stemDown \tt {fa lab sib reb sol} sold la reb, sib
  \tt {fa sib reb mib lab} \md sol' reb sib lab
  \mg fa, si lab' \md sol' la' mib fad, \mg sol, |
  %% ... And this, my friend, is what we call: a hack.
  fa,16*7/8[ re' lab' \md sib'] la'[ do, fad, \mg mi,] \stemNeutral
  \t {\tt {fa,16[ do' sol' \md sol' re']} la'4 \tt {\mg fa,,,16[ dod' mi \md sib'' reb]}}
  \tupletUp \t {la'4
  \tupletDown \stemDown \tttt {\mg fa,,,16[ si re lab' \md fad' do' mib]} \stemNeutral
  sib'4} \tupletNeutral \mg \graceNote fa,,,8*1/2 |
  \t {mi,8 mi' red'} \t {sol lab red} \tt {sol red lab sol si,} \tt {mi, re' sol lab reb} |
  \tt {sol reb lab sol sib,} \tt {mi, re' fad sol la} si16 la sol fad sol fad mi dod |
  mib,8 sib' \t {si fad' sol} \t {re' si lad} \t {si lad fad} \t {re' si lad} \t {si lad fad} |
  \t {re' do sib} \t {si la sol} \t {fad si lad} \t {sol lad sol} \tt {fad sol red dod do} |
  \tt {mi, red' sol red lab'} \tt {si lab sol red do} \tt {mi, si' re fa lab} |
  \tt {si lab sol re sib} \tt {mi, si' fad' sol re'} \clef treble \t {la' sib fa'} do'4 | \clef bass
  <la,,,, la'>1.*1/3\laissezVibrer \clef treble
  \t {la''''4 mi dod} \t {sold' la mi,\laissezVibrer} |
  dod'\laissezVibrer sold'\laissezVibrer la2.\laissezVibrer r4 |

  %%% 6 %%%
  R1. \clef bass
  \pl {
    r2 r4 \ottava #-1 la,,,,,2.\laissezVibrer \ottava #0
    s1.*2
    r2 r4 \ottava #-1 la2.\laissezVibrer \ottava #0
    s1 s8 <re' mi>4.
    la4. \ottava #-1 la,8\laissezVibrer \ottava #0 r2
    s4 <re' mi>
  } {
    <mi la sib dod red>1.~^"m.d."
    \hideNotes <mi la sib dod red>~ <mi la sib dod re> \unHideNotes
    <mi la sib dod red>2^"m.d." <mi la sib dod red>1~
    \hideNotes <mi la sib dod red>2 \unHideNotes
    \oneVoice r2 r8 \voiceOne <dod' fa sol>4.
    <mi la sib dod red>1\laissezVibrer
    \oneVoice r4 \voiceOne <dod fa sol>
  }
  r4 <dod red la' sib> r <red la' sib dod> r2 |
  \pl {
    r1 \ottava #-1 la,,2\laissezVibrer \ottava #0 s1 \oneVoice red'2_"(loco)"
  } {
    <mi la sib dod red>1.~
    \hideNotes <mi la sib dod red>1 \unHideNotes
    s2
  }
  r4 re!16 mi sol dod fa2 r4 <re' mi>8 <dod, fa sol> |
  s2. <dod, fa sol>4 r2 |
  \pl {r2 r4 r8 \ottava #-1 la, <la sib>4 \ottava #0 }
  {r4 <mi'' lab sib dod red>2.\laissezVibrer s4} r4 |
  s2 r1 |

  %%% 7 %%%
  R2.*3 r2 r8 fa, |
  dod' mi sib'4 r |
  mi' r <do,, sib'>\arpeggio |
  r2 s4 r2 r8 \ottava #-1 mi, \ottava #0 |
  \pl dod'4 {dod16 la' si do}
  \pl \t {fa8 sib mi} fa,4 r |
  s4 r2 |
  r2 s4 r2 \t {r8 dod mi,} |
  sib4 r mi' |
  \ottava #-1 sib,8 do, \ottava #0 r4 s |
  r4 \t {mi'''8 sib fa} do16 \md si' \mg la,, dod' |
  mi,4 r4 s |
  \pl {
    s2. r4 r8 \ottava #-1 la,,4.\laissezVibrer
    \ottava #0 s2.*2
  } {
    <mi'' la sib dod red>2.~ <mi la sib dod red>~
    <mi la sib dod red>~ <mi la sib dod red>\laissezVibrer
  }
  R2.
  \ottava #-1 la,,2 sib4~ sib la2~ |
  la4 si2~ si2.~ si2. la~ la |
  do~ do~ do~ do <la la'>~ <la la'> |
  <do do'>~ <do do'>~ <do do'>~ <do do'> |
  r4 <la la'>2 <do do'>2.~ <do do'>2 la4\laissezVibrer
  \ottava #0 R2. r4 mi'''2\laissezVibrer |
  R2.*2 mi2.\laissezVibrer R2.*3

  %%% 8 %%%
  re2\laissezVibrer \t {r8 mi4\laissezVibrer} |
  R2. \t {re2 mi4\laissezVibrer} r4 |
  R2. re2.\laissezVibrer mi2\laissezVibrer r4 |
  re2\laissezVibrer r4 r2 s4 |
  R2.*5
  fa,4 mi2 mi2. |
  <do'! mi>2.~ <la mi'>~ <la mi'>2 r4 |
  r4 s2 R2. r4 \ottava #-1 la,,2\laissezVibrer \ottava #0 |
  R2.*4 r4 \quasiHarp la''2\laissezVibrer R2.*4 r4 <do'! mi>2~ |

  %%% 9 %%%
  <do, mi do'>2. |
  mi8 do' \stemDown \md \t {si' sol sold} red'4 | \stemNeutral \mg
  red,,8 dod' \stemDown \md \t {sol'4 si, la'} fa'2. | \stemNeutral \mg
  <la,,,, la'>2.*1/3\laissezVibrer \clef treble
  la''''16 mi dod sold' la mi dod sold' |
  la mi dod sold' la mi dod sold' la mi dod sold' |
  la mi,\laissezVibrer dod' sold' la mi dod sold' la mi dod sold' |
  la mi dod sold' la mi dod sold' la mi dod sold' |
  la mi dod sold' la mi,\laissezVibrer dod' sold' la mi dod sold' |
  la mi, dod' sold' la mi, dod' sold' la mi, dod' sold' |
  do, mi, dod' sold' la mi, dod' sold' la mi, dod' sold' |
  do, mi, dod' sold' do, mi, dod' sold' do, mi, dod' sold' |
  la mi, dod' sold' sol do, dod, fa' \t {la,8 la, sib'} |
  do,16 dod' mi, sold \ttt {sol do, sold mi dod' sold'} do, mi, dod' sold' |
  \clef bass red la, dod sib' fa do sol' mi,
  \t {red'8 \stemUp la, \stemDown dod'} |
  r4 r8 \ottava #-1 la,,4.\laissezVibrer \ottava #0 s2.*3
  R2.*2-\fermataMarkup
}

%------------------------------------------------------------------%
