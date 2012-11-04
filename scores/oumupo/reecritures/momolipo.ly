\language "italiano"

#(define afterGraceFraction (cons 15 16))

\header {
  title = "Snate Fcile"
  subtitle = "d’près Mzart"
  composer = "OuMuPo"
}

#(set-global-staff-size 18)
\pointAndClickOff

\score {

\new PianoStaff <<
  \new Staff \relative do'' {
    \override Fingering #'avoid-slur = #'inside
    \repeat volta 2 {
      r2 mi4(\mp sol si,4._> dod16 re) r2
      la'2(_> sol4\<mi'\! sol,_> fa8-\trill\> mi16 fa mi4)\! r
      la,8\p\<\( si16 la re mi fa sol\! la\> sol fa mi re la si la\!
      sol8\<la16 si sol re' mi fa\! sol\> fa mi re si la si sol\!
      fa8\<sol16 la si mi re mi\! fa\> mi re si la sol la fa\!
      mi8\<fa16 sol la si sol re'\! mi\> re si sol la sol fa mi\!\)
      re8\p\( mi16 fa sol la si dod re la\<si dod re mi fa sol\!
      la si do! si la sol fa mi fa8 la16 mi fa mi re do!\)
      si8->\f( re) mi-. do-. re( si) mi-. do-.
      re4-. <re si'>-. dod,-. r
      
      R1
      re''8\mp( si) fad4.( la16 si la8 re,)
      \acciaccatura mi re8.-\trill( mi16-.) fad4 r2
      re'8\mp( si) fad4.( la16 si la8 sold)
      \acciaccatura la sold8.-\trill( fad16) fad4 r2
      re'4-> r16 re si sold mi4 r16 mi( fad mi)
      do'4-> r16 do( la fad red4) r16 mi( fad mi)
      si'4-> r16 si( sold mi do4) r16 do( mi do
      la'4->) r16 la( fad do? si4) r16 fad'( mi si
      la2\p) \acciaccatura si8 do4-.\<\acciaccatura red8 mi4-.\!
      \acciaccatura sold8 la4.-> si32( la sold la do8 la) do( la)
      si(\f fad) mi'2(\sf do16 si la sol)
      \override PhrasingSlur #'direction = #DOWN
      \acciaccatura si8 \afterGrace la1\startTrillSpan\(( { fad16[ sold])\stopTrillSpan }
      fad4\) fad16( si, fad' si mi si sold si do la fad la
      mi4-.) fad,16( si, fad' si mi_> si sold si do-> la fad la)
      r4 <sold' si>-. <si, dod>-. r
      
    } \break \repeat volta 2 {
      sol-. sol'16( re sol sol, re'' sol, re sol
      do la fad la sol4-.)
      sol,16_( re sol re re' la sol la
      do la fad la sol4-.)
      r r16 sol' sib la sol fa mi re
      red4-.\sf r r16 red'( mi re dod sib la sol
      fa4\sf) re16( la re fa la fa re fa
      sol mib dod mib re4-.)
      re,16 la re fa la fa re fa
      sol mib dod mib
      r re( fa sol sold la do la re4-.\sf) r
      r16 si( dod red mi fad sold la si4-.\sf) r
      r16 sib( fa' mib dod si la sol fa4-.\sf) r
      r16 sol( red' dod si la sol fa mib4-.\sf) r
      r16 fa( do' sib lab fad mi re do4-.\sf) r
      r16 mib( sib' lab solb mib reb sib lab4-.\sf) r
      r16 sib re do sib la sol fa mi\> fa sol la sib do re mi\!
      \override PhrasingSlur #'direction = #UP
      r2 la4(\mp do mi,4._> fad16 sol) r2
      re'2(_> do4\<si'\! do,_> sib8-\trill\> la16 sib la4)\! r
      re,8\p\<\( mi16 fad sol la sib do\! re\> do sib la sol fad mi re\!
      do8\<re16 red mi sol la sib\! do\> sib la lab sol mi re do\!
      sib8\<do16 dod re mi sol la\! sib\> la sol mi re do re sib\!
      la8\<sib16 do re mi fad sol \! la\> sol mi mib re do sib la\!\)
      la'4-. r r <do, la'>-. <si sol'>-. r r <la sol'>-.
      <re fa>-. r r <si fa'>-. <mi, mi'>-. r r <la mi'>-.
      re16\( re, mi fad sold la si dod re la si dod re mi fad sold
      la si re si la sol fa mi fa sol la sol fa mi re lad\)
      si8->\f( re) mi-. dod-. re( si) mi-. fad,-.
      re'4-. <si' re>-. dod,,-. r
      r1 fad'8\mp( mi) dod4.( re16 mi re8 dod)
      \acciaccatura re dod8.-\trill( si16-.) si4 r2
      fad'8\mp( mi) dod4.( re16 mi re8 dod)
      \acciaccatura re dod8.-\trill( si16) si4 r2
      sold'4-> r16 sold mi dod la4 r16 la( dod la)
      fa'4-> r16 fa( re si sol4) r16 sol'( si sol)
      mi'4-> r16 mi( dod la fa4) r16 fa( la fa
      re'4->) r16 re( si sol mi4)
      r16 si'( sol mi
      re2\p) \acciaccatura dod8 re4-. \acciaccatura dod8 re4-.
      la'2\p \acciaccatura sold8 la4-. \acciaccatura sold8 la4-.
      fad16\f( sold la si dod re mi fa mi re si la fa mi re dod)
      \override PhrasingSlur #'direction = #DOWN
      \acciaccatura mi8 \afterGrace re1\startTrillSpan\(( { dod16[ re])\stopTrillSpan }
      \override PhrasingSlur #'direction = #UP
      <si dod>4-.\) si16\( fad_> si mi sold mi dod mi fa_> re si re
      <si dod>4-. si,16 fad-> si mi sold mi dod mi fa-> re si re\)
      <si dod>4-. <mi' fad si dod>-. <si dod> r
    }
  }
  \new Staff \relative do' {
    \override Fingering #'avoid-slur = #'inside
    \repeat volta 2 {
      r8 sol'(\p mi sol) r sol( mi sol)
      re( sol fa sol) r sol( mi sol)
      r la fa la r sol mi sol
      si, sol' re sol r sol mi sol
      fa4 r r \clef "bass"
      <fa, re'> -. <mi mi'>-. r r <mi si'> -.
      <re re'>-. r r <re si'> -.
      r2 r4 mi-. <fa la>1 fa4.( sol8 la4. fad8)
      fad,16\( si re lab' lab, do mi fad
      fad, si re lab' lab, do mi fad lab,4-.\) fad'-. dod,-. r
      dod''16->\p( re dod re dod re dod re
      do-> re do re do re do re)
      si-> re si re \repeat unfold 3 { si re si re }
      do\mp re si re la re si re do re si re do re la re
      \repeat unfold 4 { si re si re }
      do re si re la re si re do re si re do re la re
      \clef "treble"
      r si( re fa? si4) r16 do,( mi la do4)
      r16 la,( do fad la4) r16 si,( dod fad si4)
      r16 fad,( si mi sold4) r16 la,( do mi la4)
      r16 fad,( la dod fad4) r16 lab,( si re dod'4)
      \clef "treble"
      \repeat unfold 16 <do, mi>8-.
      red16 si' sold si \repeat unfold 3 { red, si' sold si }
      \repeat unfold 4 { dod, do' fad, do' }
      <fa,? si>4 r r <la do> <fa si> r r \clef "bass"
      <la, do> <fa si> <fad, sold fad' sold> <fad sold fad' sold> r
    }
    \repeat volta 2 {
      <sol sol'> r r \clef "treble"
      <re'' do'>( <sol la>) r r \clef "bass"
      <re, la' do>
      r16 sol,( la sib do re mi fad sol4-.\sf) r
      r16 la,( si re red mi fad sold la4-.\sf) r
      <re,, re'> r r \clef "treble"
      <la'' dod sol'>( <re fa>-. ) r r \clef "bass"
      <la, dod sol'>( <re fa>-. ) r
      r16 re'( fa mib re do sib la sol?4-.)\sf r
      r16 sol( sib lab solb fa mib reb dob4-.)\sf r \clef "treble"
      r16 re'( la' sol fa mi red dod si4-.\sf) r
      r16 do( sol' fa mi re do si la4-.\sf) r
      r16 si( fa' mi re dod si lad \clef "bass"
      sold4-.\sf) r r16 sold( do si la sol fa mi re2\sf) <do sol' sib>\sf
      \clef "treble"
      r8 do''(\p la do) r do( la do) sol( do sib do)
      r do( la do) r re sib re r do la do
      mi, do' sol do r do la do sib4 r r \clef "bass"
      <sib, sol'> -. <la mi'>-. r r <la fad'> -. <sol sol'>-. r r <sol mi'> -.
      si-. r r2
      sold16\( la sold la sib do re mi fad mi re do sib la sol fad
      mi8 fad16 sol la si re red mi re si la sol sold la mi
      re16 dod re mi la sold la si re si la sold la fad mi re
      r8 re16 mi fa sol la si r si la sol fa mi re8-.
      \once \set fingeringOrientations = #'(right)
      <fa la>1\p \) fa4. sol8 la4. fad8
      fad,16\( si re lab' lab, dod mi fad
      fad, si re lab' lab, si mi fad <fad, lab>4-.\)
      <fad' lab>-. dod,-. r
      \clef "treble"
      fad''8->-.\p fad-. fad-. fad-. mid16( fad mid fad mid fad mid fad)
      mi-> fad mi fad \repeat unfold 3 { mi fad mi fad }
      mid\mp fad mid fad re fad mi fad mid fad mi fad mid fad re fad
      \repeat unfold 4 { mi fad mi fad }
      mid fad mi fad re fad mi fad
      mid fad mi fad mid fad re fad
      \clef "bass"
      r mi,( sold dod mi4) r16 fa,( la dod fa4)
      r16 re,( fa si re4) r16 mi,( sold si mi4)
      \clef "treble"
      r16 si( mi la si4) r16 re,( fa la re4)
      r16 si,( re fad si4) r16 si,( mi sol si4)
      r8 \repeat unfold 7 { <fa la>-. } \clef "bass"
      \repeat unfold 8 { <fad, si red>-. }
      \repeat unfold 4 { sold16 mi' re mi }
      \repeat unfold 4 { <fad, sold> fa' si, fa' } <si, dod mi>4-. r r <sold re' fa>(
      \override Slur #'direction = #DOWN
      <si dod mi>-. ) r r <sold, re' fa>( <si dod mi>) <si dod'>-. <dod, si'> r
    }
  } 
>>
\layout {
  \context {
    \Score
    autoAccidentals = #`(Staff ,(make-accidental-rule 'same-octave 0)
                          ,(make-accidental-rule 'any-octave 0)
                          ,(make-accidental-rule 'same-octave 1)
                          ,neo-modern-accidental-rule)
    autoCautionaries = #`(Staff ,(make-accidental-rule 'same-octave 1)
                           ,(make-accidental-rule 'any-octave 1))
    extraNatural = ##f
  }
}
\midi { \tempo 4 = 92 }
}