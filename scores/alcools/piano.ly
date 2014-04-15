%-- Alcools -- piano.ly -------------------------------------------%
% (c) 1999-2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

ColchiquesPianoMd =
\relative do' {
  \clef bass
  r8 dod4 do2 do4 |
  si2 re4 la fa2 |
  red'2 mi4~ mi r2 |
  \t {r8 fad, sol} lab4
  << {
    sib~ sib2.*1/3 \voiceTwo
    <sold si>4 <sol do> s <lab reb> <la do>
    s <la fa'> s s <si fad'> <mib sol>
  }\\{
    s4 \voiceThree mi,,2. fa do2 fad4 sol2.
  } >>
}


AdieuPianoMd =
\relative do' {


}

AdieuPianoMg =
\relative do' {
  \clef bass
}
