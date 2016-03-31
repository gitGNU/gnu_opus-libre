% Harmoniques -- lied.ly ------------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"


LiedIPianoMd = \relative do' {
  \key si \minor
  si'4.(\p\> mi,2.)\! fad4.(\> si,2.)\!
}

LiedIBrice = \relative do' {
  \tempo "Mit viel Leid"
  \time 9/8
  \clef bass
  \key si \minor
  R1*9/8*2
  si4 si8 si4. mi,
  re4 do8 fad4. si,
  fad'8 si,8. do16 sol'4 fad8 \tuplet 2/3 {sold8 lad}
  si4.
}

LiedIIBrice = \relative do' {
}

LiedIIIGrille = \chordmode {
  sol2:m6 re:7/la
  sol:m6 re:7/la
  sol:m6 re:7/la
  sol:m6 re:7/la
  mib:maj7/sol re:7/la
  sib:6 sol:7.9+/si
  do1:m7 mib:7
  la:m7.5- re:7
  sol2:m6 re:7/la
  sol:m6 re:7/la
  sol:m6 re:7/la
  sol:m6 fa:7/la
  sib1:maj7 mib:7
  lab2:7 re:7.9+
  sol:m6 re:sus4
  sol:m6 re:sus4 sol1:m6
}

LiedIIIBrice = \relative do' {
  \tempo "Mild Swing"
  \key sol \minor
  \clef bass
  R1 r2 r8 re4 sol,8
  re'1~ re4 sol,8 fad reb' do4 sib8
  mib,4. re8~ re2~ re4 r la' sib
  mib,4. sib'8~ sib2
  r8 sib4 mib,8 \t {sib'4 do sib}
  la1~ la8 r sib4~ sib8 do4.
  re8~ re4 dod8 re4 r
  r do8 sib reb do~ \t {do fa, mib}
  la sol4.~ sol2~ sol4 r r dod,
  la'8 re,4.~ \t {re4 la' mib}
  sib'2.\prall
  r4 r mib,~ mib8 \acciaccatura solb fa4.
  r4 sol2.~ sol1~ sol1\fermata
  \bar "|."
}

