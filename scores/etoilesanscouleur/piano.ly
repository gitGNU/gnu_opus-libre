%-- Étoile sans couleur -- piano.ly -------------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

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

PianoMd = \relative do' {
  \partial 16 s16
  R1*7/16*4
  R2.*19

  %%% 1 %%%
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
}



PianoMg = \relative do {
  \clef bass
  \partial 16 s16
  R1*7/16*4
  R2.*18

  %%% 1 %%%
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
  fa, re' lab' \md sib' la' do, fad, \mg mi, \stemNeutral
  \t {\tt {fa do' sol' \md sol' re'} la'4 \tt {\mg fa,,,16 dod' mi \md sib'' reb}} \tupletUp
  \t {la'4 \tupletDown \tttt {fa,,,16 si re lab \md fad' do' mib} sib'8 \mg fa,,,} | \tupletNeutral
  \t {mi,8 mi' red'} \t {sol lab red} \tt {sol red lab sol si,} \tt {mi, re' sol lab reb} |
  \tt {sol reb lab sol sib,} \tt {mi, re' fad sol la} si16 la sol fad sol fad mi dod |
  mib,8 sib' \t {si fad' sol} \t {re' si lad} \t {si lad fad} \t {re' si lad} \t {si lad fad} |
  \t {re' do sib} \t {si la sol} \t {fad si lad} \t {sol lad sol} \tt {fad sol red dod do} |
  \tt {mi, red' sol red lab'} \tt {si lab sol red do} \tt {mi, si' re fa lab} |
  \tt {si lab sol re sib} \tt {mi, si' fad' sol re'} \clef treble \t {la' sib fa'} do'4 | \clef bass
  <la,,,, la'>1.*1/3\laissezVibrer \clef treble
  \t {la''''4 mi dod} \t {sold' la mi,} |
  dod' sold' la2.\laissezVibrer r4 |

  %%% 6 %%%

}
