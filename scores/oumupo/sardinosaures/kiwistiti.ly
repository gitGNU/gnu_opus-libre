\language "italiano"


\header {
  title = "Le kiwistiti"
  poet = "Olivier Salon"
  composer = "Valentin Villenave"
  copyright = "© V. Villenave, 2012. Licence Art Libre"
}

#(set-global-staff-size 15)
\pointAndClickOff

dash ={
  \once \override LyricHyphen #'minimum-distance = #4
  \once \override LyricHyphen #'length = #2
  \once \override LyricHyphen #'thickness = #1.2
}

texte = \lyricmode {
  Le ki -- wi -- sti -- ti
  Est un sim -- ple fruit
  Vert, et vert au -- ssi.
  Qui, oui
  Pro -- vient d’Au -- stra -- lie,
  Mais pousse au -- ssi
  Dans le Mi -- di.
  Quand le ki -- wi -- sti -- ti
  S’en -- nuie
  Ou quand il est en -- dur -- ci
  Il se ba -- lance, de ci
  De là, et re -- joint par i -- ci,
  Grand mer -- ci,
  La bran -- che que voi -- ci :
  Il est a -- lors a -- dou -- ci.
  Pour fai -- re ce -- ci
  Le ki -- wi -- sti -- ti
  Par la queue sa -- pri -- sti
  Se ba -- lan -- ce sans sou -- ci
  Et s’é -- lance ain -- si :
  Il a ré -- u -- ssi !
  On dit par là, ou par ci
  Que le ki -- wi -- sti -- ti
  Dan -- se le twist i -- \dash ti --
  Né -- rant, mais si !
  Les ki -- wi -- sti -- tis
  É -- vo -- luent \dash gra -- ci --
  Eu -- se -- ment par ban -- des de six
  Ou par -- fois dix.
  Quand le mois d’août rou -- ssit
  Tous les fruits,
  Les ki -- wi -- sti -- tis
  De so -- leil a -- bru -- tis,
  Tom -- bent en con -- fe -- tti.

  \dash Ci -- gît six p’tits ki -- wi -- sti -- tis.
}

voix = \relative do' {
  \key mib \minor
  \time 3/4
  mib16 mib solb lab sib8 lab16 solb lab8 mib |
  sib'4 r16 reb8 sib16 reb lab dob8 |
  r mib, r16 mib'8 reb16 mib do reb lab |
  r8 solb16 lab sib si8. reb16 sib fab' mib, |
  R2.
  \key si \major
  red8 sold16 red dod8-. red-. sold-. red-. |
  dod4 r8 dod16 red fad red fad red |
  si'4 red16 dod lad sold r16 dod si8 |
  dod16 la8. r8 fad16 sold lad8 sold16 lad |
  si8 sold16 fad' si8 r16 la, dod fad, red sold |
  si,4 r dod8 red |
  dod8 red4 sold8~ sold16 dod8. |
  si2 r4 |
  \key mib \minor
  mib,16 mib solb lab dob8 lab16 solb lab8 reb |
  sib4 r8 mib,16 la solb'8 sib,16 mib |
  reb,4 r sib'8 lab |
  sib lab mib'4 solb,8 dob~ |
  dob4 r8 reb,16 mib solb8 lab16 si~ |
  \key si \major
  si4 dod16 lad re sold, si'4-. |
  r4 r8 fad,-. red-. dod-. |
  la4-- dod8-. red-. si4-- |
  r8 red16 lad'-. r red, lad'8-. red,16-. lad'8.-- |
  r16 dod, red fad lad8 sold16 do~ do4 |
  lad16 red8.~ red4 r4 | r8 fad,16 si~ si4. r8 |
  R2.
  \key mib \minor
  mib,16 mib solb lab sib8 lab16 solb lab8 reb |
  dob4. reb8 lab solb |
  mib16 solb lab sib dob8 lab16 sib reb mib r8 |
}

md = \relative do' {
}

mg = \relative do' {
  \clef bass
}

\score {
<<
  \new Staff \new Voice = "voix" \voix
  \new Lyrics \lyricsto "voix" \texte
  \new PianoStaff <<
    \new Staff = "md" \md
    \new Staff = "mg" \mg
  >>
>>
  \layout {
    \context {
      \Score
      \override SystemStartBrace #'collapse-height = #1
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
