\language "italiano"

\header {
  title = "Hanoui"
  composer = "OuMuPo"
}
%'(0 1 2 3 4 5)
%'(5 0 4 1 3 2)
%'(2 5 3 0 1 4)
%'(4 2 1 5 0 3)
%'(3 4 0 2 5 1)
%'(1 3 5 4 2 0)

sup =
{ \once \override NoteHead #'color = #red
}
\score {
\new PianoStaff <<
  \new Staff \relative do' {
    \time 3/4
    \tempo Allegro 4 = 152
    do8 re mi fa sol \sup la re, fa \sup la sol mi do
    fa sol do, mi \sup la re, sol mi re \sup la' do, fa
    mi \sup la fa do re sol \sup la do, sol' re fa mi
    r re mi fa sol la \sup si re, la' mi sol fa
    sol \sup do la mi fa si do la sol \sup re' fa, si
    do re sol, si \sup mi la, si re \sup fa mi do la
    si \sup sol' re fa mi do si la \sup fa' do mi re
    si re do la sol \sup mi' si sol fa \sup re' la do
    si la fa mi \sup do' sol \sup si fa la sol mi re
    \sup do re mi fa sol la mi la fa \sup do re sol
    fa sol \sup do, mi la re, la' \sup do, sol' re fa mi
    sol mi re la' \sup do, fa re fa la sol mi \sup do\fermata
    \bar "|."
  }
  \new Staff \relative do' {
    \clef bass
    R2.*6
    do8 si la sol fa \sup mi la fa \sup re mi sol si
    mi, re la' fa \sup do sol' do, mi fa \sup si, sol' re
    re \sup la do fa mi si \sup sol mi' la, re si do
    \sup sol mi' re si la do sol si \sup fa re' do la
    sol fa la \sup mi do' si sol \sup re si' la fa mi
    sol mi re fa \sup do la' sol fa mi re do \sup si

    do \sup la' re, sol mi fa mi sol la re, \sup si' fa
    si sol mi fa la \sup do fa do mi \sup la sol re
    fa sol \sup si sol re la' mi fa sol la si \sup do_\fermata
    
}
>>
\midi {}
\layout {}
}