\language "italiano"
\include "pilypi.ly"
\include "modify.ly"

\header {
  title = "Cello concerto n°1"
  composer = "Dmitri Schostakovich"
}

Chosta = \relative do' {
  \clef bass
  \tempo "Allegretto" 4 = 116
  \time 2/2
  \key mib \major
  \accidentalStyle modern
  % 3 7 1 3 3 7 1 1 3 7 1 3 3 7 1 5 2 1
  % 9 5 2 2 1 9 6 5 3 7 1 3 3 7 1 1 0 1
  % 2 1 2 2 1 5 3 7 1 2 1 2 2 1 5 3
  r4 sol,-_\p fab-_ dob'-_ sib1~
  sib4-_ sol-_ fab-_ dob'-_ sib1~
  sib4-_ dob-_ lab-_ mib'-_
  re-_ fa-_ re-_ la'-_
  lab-_ mib8-_ fa-_ solb4-_ la,-_ re-_ do8-_ re-_ mib4-_ solb,-_
  do-_ sol-_ fab-_ dob'-_ sib1~
  sib4-_ sol-_ fab-_ dob'-_ sib1~
  sib4-_ lab'-_ sol-_ fa-_ mi-_ re8-_ mi-_ fa4-_ do-_
  mib-_ lab,-_ sol-_ fa-_ mi-_ re8-_ mi-_ fa4-_ do-_
  mib-_
}

#(define chosta-numbers
   (list
#\3  #\7  #\1  #\3  #\3  #\7  #\1  #\1  #\3  #\7  #\1  #\3  #\4  #\8  #\9  #\3  #\2  #\7  #\9  #\5  #\7  #\3  #\2  #\3  #\3  #\9  #\4  #\8  #\9  #\7  #\6  #\9
))

\score {
\piify \Chosta
  \header {
   piece=\markup \fill-line { \epsfile #Y #40 #myplot }
  }
}
\score {
\piify #chosta-numbers \Chosta
  \header {
   piece=\markup \fill-line \bold { Modification : }
  }
}
