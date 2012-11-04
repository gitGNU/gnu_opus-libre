\language "italiano"

\header {
  title = "Le baobabouin"
  poet = "Jacques Roubaud"
  composer = "OuMuPo"
  copyright = "© V. Villenave, 2012. Licence Art Libre"
}

\pointAndClickOff

dash ={
  \once \override LyricHyphen #'minimum-distance = #4
  \once \override LyricHyphen #'length = #2
  \once \override LyricHyphen #'thickness = #1.2
}

texte = \lyricmode {
  Il n’est pas na -- bab
  Il n’est pas mar -- souin
  Le ba -- o -- ba -- bouin
  Il vo -- yage en cab
  A -- vec le pin -- gouin
  Le ba -- o -- ba -- bouin
  S’il n’a pas de rab
  Il fait du tin -- touin
  Le ba -- o -- ba -- bouin
  Un bon chich -- ke -- bab
  Il n’en veut pas mouins
  Le ba -- o -- ba -- bouin

  Il vous met k. o.
  A -- vec son ca -- bas
  C’est un vrai sa -- gouin
  Le ba -- o -- ba -- bouin
  \dash Là -- bas ou \dash là -- haut
  Vo -- yez les é -- bats
  Du ba -- o -- ba -- bouin

  Il fait du mé -- lo
  Pour une pêche mel -- ba
  Le ba -- o -- ba -- bouin
  Il fait du sa -- bbat
  a -- vec ses sa -- bots
  Le ba -- o -- ba -- bouin
  Il va \dash d’Saint -- Ma -- lo
  En A -- la -- ba -- ma
  Le ba -- o -- ba -- bouin
  Il pince comme un crabe
  Comme un ma -- rin -- gouin
  Le ba -- o -- ba -- bouin_!
}

grille = \chordmode {
  R1
  do dod:dim re:m sol
  re:m reb:7 do sol/do
  do dod:dim re:m sol
  re:m sol:7 do do:7
  fa:m7 sib:7 mib:maj7 do:7
  fa:m7 reb:7 do:maj7 do:7
  fa:m7 sib:7 mib:maj7 do
  re:m9 sol:7
  R
  re:m7 sol:7 do sol/do
  re:m7 sol:7 mi:m7 la:7
  re:m7 sol mi:m7 la:m7
  do/sol mi/sol fa/sol sol:7 do
}

voix = \relative do' {
  \time 4/4
  r4 r8 mi fa mi fa sol |
  r4 r8 mi fa mi fa sol |
  r4 r8 sol \times 2/3 {la,4 sol' la,} |
  re2. r4 |
  r4 r8 mi fa mi fa sol |
  r4 r8 mi fa mi fa sol |
  r4 r8 sol \times 2/3 {la,4 sol' la,} |
  mi'2. r4 |
  r4 r8 mi fa mi fa sol |
  r4 r8 mi fa mi fa sol |
  r4 r8 sol \times 2/3 {la,4 sol' la,} |
  re2. r4 |
  r4 r8 mi fa mi fa sol |
  r4 r8 mi fa mi fa sol |
  r4 r8 sol \times 2/3 {la,4 sol' la,} |
  do1~ do4 do \times 2/3 { do re do } |
  lab'1~ lab4 lab \times 2/3 { sib sol sib } |
  re,1~ re4 do \times 2/3 { do re do } |
  lab'1~ lab4 sol \times 2/3 { la, sol' la, } |
  mi'1 r4 do \times 2/3 {sol re' do} |
  lab'1~ lab4 lab \times 2/3 {sib sol sib} |
  re,1~ re2. do4 la?4. mi' do4~ do sol'2.\fermata
  r4 r8 mi fa mi fa la |
  r4 r8 mi fa mi sol si, |
  r4 r8 do \times 2/3 {la4 sol' la,} |
  mi'2. r4 |
  r4 r8 mi fa la do re, |
  r4 r8 mi fa sol la si |
  r4 r8 sol \times 2/3 {re4 do' la} |
  sol2. r4 |
  r4 r8 mi fa mi re do' |
  r4 r8 la si re si sol |
  r4 r8 sol \times 2/3 {la,4 sol' la,} |
  mi'2. r4 |
  r4 r8 mi fa mi fa sol |
  r4 r8 lab sib lab sib si |
  r2 r4 sol | la, r sol' r |
  r2 la,4 r | do' r r2 \bar "|."
}

pianoMd = \relative do' {

}

pianoMg = \relative do' {
  \clef bass

  
}

\score {
<<
  \new ChordNames \grille
  \new Staff \new Voice = "voix" \voix
  \new Lyrics \lyricsto "voix" \texte
%  \new PianoStaff <<
%    \new Staff = "md" \pianoMd
%    \new Staff = "mg" \pianoMg
%  >>
>>
  \layout {
    \context {
      \Score
      \override PaperColumn #'keep-inside-line = ##t
      \override NonMusicalPaperColumn #'keep-inside-line = ##t
      
      \override TimeSignature #'style = #'()
      \override TextScript #'stencil =
        #(lambda (grob)
           (let ((grob-markup (ly:grob-property grob 'text)))
             (grob-interpret-markup grob (make-italic-markup grob-markup))))
      \override TextScript #'direction = #UP

      autoAccidentals = #`(Staff ,(make-accidental-rule 'same-octave 0)
			   ,(make-accidental-rule 'any-octave 0)
			   ,(make-accidental-rule 'same-octave 1)
			   ,neo-modern-accidental-rule)
      autoCautionaries = #`(Staff ,(make-accidental-rule 'same-octave 1)
			    ,(make-accidental-rule 'any-octave 1))
      extraNatural = ##f
    }
  }
}
