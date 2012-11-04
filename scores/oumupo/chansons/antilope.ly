\language "italiano"

\header {
  title = "L’antilope et l’antiquaire"
  poet = "Jacques Roubaud"
  composer = "Valentin Villenave"
  copyright = "© V. Villenave, 2012. Licence Art Libre"
}

#(set-global-staff-size 18)
\pointAndClickOff

dash ={
  \once \override LyricHyphen #'minimum-distance = #4
  \once \override LyricHyphen #'length = #2
  \once \override LyricHyphen #'thickness = #1.2
}

texte = \lyricmode {
  É -- trange, é -- trange est l’an -- ti -- lope
  L’an -- ti -- lope de l’an -- ti -- sa -- vane
  Qui an -- ti -- broute et an -- ti -- ga -- lope
  Et se nou -- rrit d’an -- ti -- ba -- nanes
  É -- trange, é -- trange est l’an -- ti -- lope

  É -- trange, é -- trange est l’an -- ti -- quaire
  L’an -- ti -- quaire des an -- ti -- car -- pathes
  Qui met son an -- ti -- cha -- peau sur l’an -- ti -- pa -- tère
  Et vend des an -- ti -- ta -- bleaux qu’il an -- ti -- date
  É -- trange, é -- trange est l’an -- ti -- quaire

  É -- trange, é -- trange est l’an -- ti -- lope
  L’an -- ti -- lope de l’an -- ti -- cam -- brousse
  Qui boit de l’an -- ti -- punch et fume des an -- ti -- clopes
  L’an -- ti -- lope an -- ti -- an -- ti -- rousse
  É -- trange, é -- trange est l’an -- ti -- lope
}

voix = \relative do' {
  \time 4/4
  \partial 8 dod'8 |
  mib,4\fermata r8 dod' mib, sib' dod, la' |
  re,4 r \times 2/3 { r mib sib' } |
  la4. re,8 \times 2/3 { do?4 mib sib' } |
  la2 r8 re, mib sib' |
  la4. re,8 \times 2/3 { mib4 sib dod } |
  la2 r8 do mib sib' |
  la2 \times 2/3 { dod,4 mib sib' } |
  \time 3/4
  la2 r8 dod |
  \time 4/4
  mib,4\fermata r8 dod' mib, sib' dod, la' |
  re,4 r r\fermata r8 red'
  \bar "||"
  fa,4\fermata r8 red' fa, do' red, si' |
  mi,4 r \times 2/3 { r fa? do' } |
  si4. mi,8 \times 2/3 { red4 fa? do' } |
  si2 r8 mi, fa do' |
  si si sib mi, fa fa do red |
  si2 r8 mi fa do' |
  si si sib mi, \times 2/3 { fa4 re? do' } |
  \time 3/4
  si2 r8 red |
  \time 4/4
  fa,4\fermata r8 re'! fa, sib dod, la' |
  \bar "||"
  re,2 r\longfermata ^ "(BREAK)"
  r2 r4 r8 dod' |
  mib,4\fermata r8 dod' mib, sib' dod, la' |
  re,4 r \times 2/3 { r mib sib' } |
  la4. re,8 \times 2/3 { do?4 mib sib' } |
  la2 r8 re, mib sib' |
  la la re, re mib mib sib dod |
  la2 r4 mib'8 sib' |
  la4. re,8 \times 2/3 { dod4 mib sib' } |
  \time 3/4
  la2 r8 dod |
  \time 4/4
  mib,4\fermata r8 dod' mib, sib' dod, la' |
  re,4 r r r8
  \bar "|."
}

pianoMd = \relative do' {
  r8 r8 dod''-. mib,4--\fermata <sib, reb mib>-. <sol dod fa>-. |
  s1*6
  r8 <sib mib sol>-. r <si mi sol>-. r4
  r8 dod'' mib,4\fermata <sib, reb mib>-. <sol dod fa>-. |
  s2 s4 red'''-.
  r8 red fa,4\fermata <la,, do fa>-. <si red sold>-. |
  s1*6
  r8 <si mi la>-. r <do? fa? sib>-. r4 |
  r8 lab''' sib,4\fermata <fa,, lab re>-. <mi sol dod>-. |
  <fa re'> r r2
  R1
  r8 dod''' mib,4 \fermata <sib, reb mib>-. <sol dod fa>-. |
  s1*6
  r8 <sib mib sol>-. r <si mi sol>-. r4
  r8 dod'' mib,4\fermata <sib, reb mib>-. <sol dod fa>-. |
  r \acciaccatura dod8 re4-.
  \acciaccatura mib''8 <re re'>4-. r8
}

md = { \change Staff = "md" }

mg = { \change Staff = "mg" }

pianoMg = \relative do' {
  \clef bass
  r8 r2 r8 sol,-. la,4-. |
  re8( la' \md <la' re fad>-.) \mg
  mib,( sib') \md <sib' mib solb>4.--
  \mg re,,8( la' \md <la' re fa>-.) \mg
  mib,( sib') \md <sib' mib sol>4.--
  \mg re,,8( la' \md <la' re fad>-.) \mg
  mib,( sib') \md <sib' mib solb>4.--
  \mg re,,8( la' \md <la' re fa>-.) \mg
  mib,( sib') \md <sib' mib sol>4.--
  \mg re,,8( la' \md <la' re fad>-.) \mg
  mib,( sib') \md <sib' mib solb>4.--
  \mg re,,8( la' \md <la' re fa>-.) \mg
  mib,( sib') \md <sib' mib sol>4.--
  \mg mib,,8( sib') mi,( si') r4 |
  r2 r8 sol la,4 |
  re'8-. la'-. re-. \md sold-. re'-. la'-. \mg <si,, la'>4-. |
  r2 r8 do, si,4 |
  mi8( si' \md <si' mi sol>-.) \mg
  fa,( do') \md <do' fa la>4.-- \mg
  mi,,8( si' \md <si' mi sold>-.) \mg
  fa,( do') \md <do' fa lab>4.-- \mg
  mi,,8( si' \md <si' mi sol>-.) \mg
  fa,( do') \md <do' fa la>4.-- \mg
  mi,,8( si' \md <si' mi sold>-.) \mg
  fa,( do') \md <do' fa lab>4.-- \mg
  mi,,8( si' \md <si' mi sol>-.) \mg
  fa,( do') \md <do' fa la>4.-- \mg
  mi,,8( si' \md <si' mi sold>-.) \mg
  fa,( do') \md <do' fa lab>4.-- \mg
  fa,,8( do') fad,( dod') r4 |
  r2 r8 sol la,4 |
  re r r2
  R1
  r2 r8 sol-. la,4-. |
  re8( la' \md <la' re fad>-.) \mg
  mib,( sib') \md <sib' mib solb>4.--
  \mg re,,8( la' \md <la' re fa>-.) \mg
  mib,( sib') \md <sib' mib sol>4.--
  \mg re,,8( la' \md <la' re fad>-.) \mg
  mib,( sib') \md <sib' mib solb>4.--
  \mg re,,8( la' \md <la' re fa>-.) \mg
  mib,( sib') \md <sib' mib sol>4.--
  \mg re,,8( la' \md <la' re fad>-.) \mg
  mib,( sib') \md <sib' mib solb>4.--
  \mg re,,8( la' \md <la' re fa>-.) \mg
  mib,( sib') \md <sib' mib sol>4.--
  \mg mib,,8( sib') mi,( si') r4 |
  r2 sol4-. la-. | r re,-. r4 r8
}

\score {
<<
  \new Staff \new Voice = "voix" \voix
  \new Lyrics \lyricsto "voix" \texte
  \new PianoStaff <<
    \new Staff = "md" \pianoMd
    \new Staff = "mg" \pianoMg
  >>
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
