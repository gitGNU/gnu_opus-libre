%-- Chansons Oulipiennes -- charles.ly ----------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

TrempetteInstr = "Trempette"

BasseInstr = "Centrebasse"

CharlesChant = \transpose si la
\relative do' {
  \tocItem \CharlesToc
  \key si \minor
  R1*3
  \dynamicUp
  r4 fad8(\mp fad8
  re'4. fad,8 re'2.) r4
  r8 fad,( fad fad re' fad, fad fad
  mid4) r \times 2/3 {dod' mid, mid}
  dod'2 do4 mi,!8( si'
  do2) r8 mi, re8 re
  si'2 re,8 r si'4--~ \times 2/3 {si4 re, re}
  si'2 r4 lad8-. dod,4-- dod8-. lad'-. lad8-.
  si4-- r4 r si(\mf

  sol'2. la,4
  fad'2.) sol,8( sol
  mi'4. fad, mi'4
  re2.) r8 fad,-.\>
  \times 2/3 {mid4( re' dod} mi,)\! r
  do'8( si) re,-. si'-. lad4 r
  re4.--\f fa,8 re'4 mi,8-.\< lad fad'2.--\! r4

  re4.(\p re8 fad,2) r4 fad \times 2/3 {re'\> fad, re'}
  dod2.\! r4 r2 \times 2/3 {mid,4( mid dod'}
  mi,2.) r4 r mi8-. dod'8--~ dod4 mi,4--
  si'8-. si-. re,2-- r4
  r re2-- si'8( si re,2.) r4 r re(\< \times 2/3 {si' re, si'}
  do1)~ do4 do(\cresc do do

  lab'4.\f do,8 lab'2)~ lab4 do,8 do4 do8\< do( lab'~\!
  lab4 sol2.)~ sol2 r
  solb2.(\glissando la,4 la la2) solb'4( fa2.) r4
  r solb,8\mp solb mib'4-- fad,8 fad re'2--
  r8 fad,\< fad fad re'4.-- sol,8
  mi'4.-- lad,8 fad'4(\sf fad,) r2
  re'2\mp( dod4 mi, si'-.) r r r
  fad2--\p r4 r8 sol-. si,4-. r r2
}

CharlesTrempette = \transpose si la
  \relative do' {
  %\key si \minor
  %\accidentalStyle teaching
  \tempo "Andante"
  \time 2/2
  R1*12
  r4 red \times 2/3 {mi(\< fad sol)}
  si1(\mp la2.) r4
  r sol16( fad) sol8~ \times 2/3 {sol4\>( la sol)}
  \grace sol8(\! fad2) r
  R1*3
  r4 dod'-- si-- lad--
  \parenthesize si2. r4 R1
  r2 si4-.\p sib-. \times 2/3 {la la la}
  lab-. sol-. r fad2.:32 -- ~ fad4 r r2
  r4 r8 la-.\< re8.(\! la16) si8-. sol-.
  fad2 r
  r4 fa2.~\pp fa2( sol4 fa4
  << {mi4) r8 do16 sol' sol8-. la-. sol16 fa re fa
  sol2~ \times 2/3 {sol4 lab(\< sib} }
     \new Staff \with {
       alignAboveContext = #"Trempette"
       fontSize = #-4
       \override StaffSymbol.staff-space = #(magstep -4)
       \remove "Time_signature_engraver"
       \override StaffSymbol.stencil =
       #(lambda (grob)
         (ly:stencil-translate
          (ly:stencil-combine-at-edge
           (ly:stencil-translate
             (grob-interpret-markup grob "Ossia : ")
             (cons -2 -1))
           X right
           (ly:staff-symbol::print grob))
          (cons -5.5 0)))

     } {
          mi,8\repeatTie r fad( sol la sol fad mi) sol2*7/8( s16)
        } >>
  do2.)\mp r4
  do2 \times 2/3 {si4( do si}
  sib2.) r4 r2 reb,4( sib')
  la( do2) r4 r2 mib,~ mib4\> reb8( do) reb2\!
  R1*3
  r2 \times 2/3 {fad8( sol fad)~} fad4 R1
  r2 \times 2/3 {sol8( la sol} fad4)
  r4 fad-. r2
  R1
}

CharlesBasse = \transpose si la
\relative do' {
  \clef bass
  \key si \minor
  si,4.--^\mf sol'8( mi'4-.) sol,-.
  si,4.-- sol'8( mi'4-.) sol,-.
  lad,4.-- fad'8( re'4) fad,
  lad,4. fad'8 re'4 lad,
  si4. sol'8 mi'4 sol,
  si,4. sol'8 mi'4 sol,
  dod,4. la'8 mid'4 la,
  dod,4. lad'8 fad'4 la,
  sol,4. mi'8 do'4 mi,
  sol,4. fad'8 si4 fad
  mid,4. re'8 si'4 re,
  fad,4. mi'8 lad4 dod,
  si4. sol'8 si4 red,4

  mi4. dod'8 sol'4 dod,
  re,4. si'8 la'4( sol)
  dod,,4. lad'8 fad'4 lad,,
  si4. re8 lad'4( si)
  dod,4. si'8 lad4 do,
  si4. sold'8 dod4 mi,
  sol,4. fa'8 si4 sol,
  fad4. mi'8 re'4 lad

  si,4. sol'8 mi'4 sol,
  si,4. sol'8 mi'4 sol,
  lad,4. fad'8 re'4 fad,
  lad,4. fad'8 re'4 si,
  dod4. lad'8 sol'4 lad,
  dod,4. lad'8 sol'4 lad,
  re,4. si'8 sol'4( fad)
  re,4. lad'8 fad'4 lad,
  re,4. sol8 mi'4 sol,
  fa4. sol8 si4 fa,
  mi4. do'8 do'4 mi,
  sol,4. do8 sib'4 mi,,

  fa4. reb'8 sib'4 reb,
  fa,4. reb'8 sib'4 reb,
  mi,4. do'8 lab'4 do,
  mi,4. do'8 lab'4 do,
  fa,4. mib'8 reb'4 mib,
  fa,4. mib'8 reb'4 la,
  sib4. lab'8 reb4 lab,
  fad4. re'8 lad'4 re,
  fad,4. re'8 si'4 re,
  fad,4. mi'8 sol'4 re,
  fad,4. lad'8 fad'4 fad,,
  mi4. re'8 sol4 fad,
  sol4. mi'8 dod'4 mi,
  fad,4. re'8 lad'4 dod,
  r si si' r \bar "|."
}
