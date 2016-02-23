\language "italiano"

\version "2.19"
\include "pilypi.ly"
\include "modify.ly"
\header {
  title = "Konzert"
  subtitle = "für Violoncell und Orchester"
  composer = "Robert Schumann, Op.129 (1850)"
  arranger = "(Julius Klengel)"
}

\pointAndClickOff
nudge = \once \override NoteColumn.force-hshift = #0
tupletOff = {
  \override Staff.TupletBracket.transparent = ##t
  \override Staff.TupletNumber.transparent = ##t
}
tupletOn = {
  \revert Staff.TupletBracket.transparent
  \revert Staff.TupletNumber.transparent
}
md = { \change Staff = "md" }
mg = { \change Staff = "mg" }

#(define schumann-numbers
   (list
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\7 #\8 #\4 #\2 #\1 #\2 #\6 #\6 #\9 #\9 #\4 #\1 #\8 #\1 #\2 #\7 #\0 #\3 #\9 #\3
#\4 #\1 #\3 #\3 #\7 #\7 #\1 #\4 #\1 #\4 #\0 #\6 #\5 #\1 #\5 #\7 #\2 #\7 #\9 #\1
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\3 #\3 #\7 #\7 #\1 #\4 #\1 #\4 #\0 #\6 #\5 #\1 #\5 #\7 #\2 #\7 #\9 #\1
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\5 #\2 #\1 #\3 #\5 #\4 #\5 #\1 #\2 #\7 #\1 #\3 #\9 #\1 #\4 #\5 #\1 #\0 #\5 #\8 #\1 #\8 #\3 #\5 #\9 #\4 #\6 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
#\8 #\7 #\4 #\4 #\9 #\8 #\8 #\3 #\6 #\3 #\2 #\1 #\3 #\9 #\6 #\8 #\5 #\5 #\5 #\6
))


%% Music definitions:

Solo = \relative do' {
  \clef bass
  \key la \minor
  \tempo "Nicht zu schnell." 4 = 130
  \accidentalStyle Score.modern
  R1*4
  \clef treble
  mi1\p^"Solo." la2.(-> si4) do8( la mi do)
  fa4.( mi8) mi4( red2->) red4( re4. mi16 fa! mi4) re~
  re do2 sold4(~ sold8 la)
  \tuplet 3/2 {do( mi la)} sold4.( la8)
  si1 do,,2.(\cresc dod4\!~ dod~
  \tuplet 7/8 {dod32) re( sol sib re sol sib}
  re4) reb,,\f(
  do4.)\f sib''8-- la--[ sol-- fa-- mi--]
  re!4( do2) dod4( re) re,2(-> mib4)
  dod4(~\f
  \tuplet 7/8 {dod32 re fad la re fad la}
  re4) fa,( mi4.)
  fa'8-- mi-- re-- do!-- si--
  la4(\> sold2) mi4(~ mi2\! la4. si8)
  do2~ do8 sold( la si) re8 do4 la mi8(
  \tuplet 3/2 {do fa mi)} mi4( red2->) red4(
  re4.-> mi16 fa! mi4) re( do8 mi sold la~
  la) fa( re si la fa re si) la''(\fp dod, re mi)
  re( fa sold la do)\cresc la( fad red
  do la fad red) mi'(\sf si do re) do r
  la,4\sf~
  \tuplet 7/8 4 {
    la32 si( do re mi fad sold la si do re mi fad sold
  } la8) r la,,4\sf~
  la32 si( do re mi fad sold la si do re mi fad sold la si)
  do4 re mi fa(~\sf
  fa8 re) si sold fa re si8.( sold16)
  %%% A %%%
  \mark \default
  si4( la) r2 R1*15
  \clef bass
  r4 re,,(~\fp ^"Solo." re8 mi fa sib sold\< la fa')
  dod( \clef treble re fa la re) do4(\> si!)\! r sol( sold)
  la( sol'4. la,8) do4( si) r sol( sold)
  la( sol'4. la,8)\< do4( si) do(-- re--)
  fa(\> mi)\! la4.(-- fad8-.) sol2
  la8( si) mi,(-. fad-.)
  sol4\< sold( la) lad->~
  lad8\! si( _\markup \italic "dolce" fa' re si sol la fa)
  fa4( mi) do'2->~ do8 la( mi fa dod re mi fa)
  la4 sol mi'2->~ mi8\< do( sold la mid fad dod re)
  la'4(\! sol) r2
  R1*2
  r4 sol-.\f fa'2~
  \tuplet 3/2 4 {
    fa8 mi re re( do) si-.
    \tupletOff
    si( la) sol-. sold( la) fa-.
  } mi4 do'\p\< sib'2(~ sib8 sol) mi-- do--
  \tupletOn
  do( dod re sib) la4\! \tuplet 3/2 {la8( sol) fa-.}
  \tupletOff
  si4-> \tuplet 3/2 {si,8( la) sol-.}
  do4-> \tuplet 3/2 {do'8(\cresc si) la-.}
  re4-> \tuplet 3/2 {re,8( do) si-.}
  mi4->\! \tuplet 3/2 4 {
    red8( mi) la sol mi do la fad mib
    re-. fa( mi fa) mi re si'-. fa'( mi fa) mi re
  } mi4 \tuplet 3/2 4 {
    do,8( mi) sol-. fad la do mib( fad) la
    sol fad sol do-- mi,( fa mi) red mi la-- dod,( re
  } do4) \clef bass do,,-. \clef treble
  sib'''2->~\sf sib8\f re( do sib)
  sib( la sold la)  \clef bass
  fa,,2-> \clef treble \acciaccatura do''8 do'2->\sf ~
  do8\f mi( re do) do(\> si! lad si)\!
  r4 \tuplet 3/2 4 {
    do,,8\p sol' sib re,\< sol sib re sol sib
  } do4\! \tuplet 3/2 4 {
    do,,8 sol' sib re,\< sol sib re sol sib
  } do4\! \tuplet 3/2 4 {
    do,,8( sol' la sib la sol) do( sol' la)
    sib-- la sol fa mi re do(\trill si) do dod re sib
  } la4 \tuplet 3/2 4 {
    re,8 fad la sib-. mi( fad sol) fad-. mi-.
  } la4 \tuplet 3/2 4 {
    re,,8 fad la sib-. mi( fad sol) fad-. mi-.
  } la4 \tuplet 3/2 4 {
    re,,8 fad( mid fad) la( sold la) do( si
    do) red( dodd red) la'( sold
    la) do-. si-. do-. si-. la-.
    \clef bass
    sol,,-!\f \noBeam \clef treble mi'''-.[ red-.] mi( re) do-.
    do-. do-. si-. do( si) la-.
    sol-.\noBeam mi[ red-.]-. mi( re) do-.
    do-. do-. si-. do( si) la-.
  } \clef bass sol16 sol, la si do re mi fa
  sol do, re mi fa sol la si
  \clef treble
  do sol la si do re mi fa
  sol sol si, si do do la' la
  sol4 \clef bass sol,,-. \clef treble fa'''2~\sf
  fa16[ mi( re do si la sol fa mi re do si
  \tupletOff
  \tuplet 9/8 {la32 sol fa mi re do si la sol])}
  %%% B %%%
  \mark \default
  mi'4-> r r2
  R1*7
  r8 si(\mf ^"Solo" do fa la do fa la)
  la2( sol4.) re8( re'2.\sf la4) sib4 r r2
  r fad,(~\fp fad8 sol sib re) sib'4.( re,8)
  sol2 sol4.( si,8) sol'4-- sold-- la2~\fp
  la8 sib( si do sib la sol fa) do'4( sold) la2~\fp
  la8 sib( si do sib) la-- sol-- fa--
  \clef bass
  mib,,1\sf
  dod4(~ \tuplet 3/2 {dod16 re fad} la32 re fad la) re4 r
  fa,,1\sf
  red4(~ \tuplet 3/2 {red16 mi sold} si32 mi sold si) mi4 r
  %%% C %%%
  \mark \default
  r8 sold,,(\p\< la do \clef treble mi la si do)
  do2(\(\! si4.) si8-.\) mi2(\( si4.) si8-.\)
  mi2.\sf r8 mi fad2(\( dod4.) dod8-.\)
  fad1\sf sold,\p dod2.(\< red4)
  mi8(\! dod sold mi) la4.(\> sold8) sol2\! r4 mi'!(\sfp
  fa!1) sib2.( do4) reb8( sib fa reb) solb4.( fa8) mi1
  \clef bass
  r4 do,8_\markup \italic "marcato" r sib r do sib
  la r do r sib r do sib
  la( do sib la mib'\< reb do solb')
  fa( mib \clef treble do' sib la mib' reb do)
  do'4\! \clef bass re,,!8 r do r re do si! r re r do r re do
  si16\< si re re do do si si
  fa' fa mib mib re re \clef treble re' re
  mib1\sf
  %%% D %%%
  \mark \default
  \clef bass
  r4 lab,,(\p sol lab8 sol lab4) lab( sol lab8 sol)
  lab1~\< lab~\> lab4\! lab(
  \tupletOn \tuplet 3/2 {sol lab sol}
  lab mib') \tuplet 3/2 {sol,( lab sol}
  lab1)~\< lab~\> lab4\!
  sold-> fad-> sold8->(-. fad->-.)
  mi4-> mi-> re->\cresc mi8->(-. re->-.)
  dod4->\! dod-> sid-> dod8->(-. sid->-.)
  dod4.( sid8 dod) mid( sold dod)
  \clef treble
  dod'1 fad2.(-> sold4)
  la8( fad dod la) re4.( dod8) dod4( sid) r sid(
  si4.\sf dod16 re dod4 si)
  r2 r4 dod(~ \tuplet 3/2 2 {
    dod si re~ re dod si)~
    si\cresc sold( la~ la fadd sold~
    sold mid fad)
  } fad4.( fad'8) fad1\sf \>
  dod2(\f fad4. sold8)
  la( fad dod la) re4.( dod8)
  \tuplet 3/2 4 {
    sid-> \clef bass fad sold la!( sold) fad-.
    \tupletOff
    si-> mid, fad sold( fad) mid-.
    la-> dod, fad la( sold) fad-.
    dod,-> la'' si dod( si) la-.
    sid-> fad sold la!( sold) fad-.
    si-> mid, fad sold( fad) mid-.
    la-> mi fad sol( fad) mi-.
    re,-> la' re fad( mi) re-.
    sol-> si, mi sol( fad) mi-.
    la-> mi fad sol( fad) mi-.
    la-> re, mi fad( mi) re-.
    sol,-> sol' la si( la) sol-.
    do-> mi, la do( si) la-.
    re-> re, mi fad( mi) re-.
    %%% E %%%
    \mark \default
    sol, sol'( la si)\cresc la sol
    re' sol,( la si) la sol
    sol,( si) re-. sol si re
    mib(\sf do) la-. fad mib do
    sol sol'( la si) la sol
    re' sol,( la si) la sol
    sol,( si) re-. sol si re
    fa!(\sf si,) re-. fa,-. si-. re,-.
  } do,4.(\sf mi8 sol) do( \tuplet 3/2 {mi sol do)}
  \clef treble
  la'2. si4 do8(\> la mi do) fa4.(\p mi8)
  mi4( red2) red4( re4.-> mi16 fa! mi4) re~
  re do2 sold4(~ sold8 la) \tuplet 3/2 {do( mi la)}
  sold4.( la8) si1
  do,,2.(\cresc dod4\!~ dod~
  \tuplet 7/8 {dod32) re( sol sib re sol sib}
  re4) reb,,\f(
  do4.)\f sib''8-- la--[ sol-- fa-- mi--]
  re4( do2) dod4( re) re,2( mib4)
  dod4(~\sf
  \tuplet 7/8 {dod32 re fad la re fad la}
  re4) fa,( mi4.) fa'8-- mi-- re-- do!-- si--
  la4(\> sold2) mi4(~ mi2\! la4. si8)
  do2~ do8 sold( la si) re8 do4 la mi8(
  \tuplet 3/2 {do fa mi)} mi4( red2) red4(
  re4.-> mi16 fa! mi4) re( do8 mi sold la~
  la) fa( re si la fa re si) la''(\fp dod, re mi)
  re( fa sold la do)\cresc la( fad red
  do la fad red) mi'(\sf si do re) do r
  \clef bass
  la,4\sf~
  \tuplet 7/8 4 {
    la32 si( do re mi fad sold
    \clef treble
    la si do re mi fad sold
  } la8) r \clef bass  la,,4\sf~
  la32 si( do re mi fad sold
  \clef treble
  la si do re mi fad sold la si)
  do4 re mi fa(~\sf fa8 re) si sold fa re si8.( sold16)
  %%% F %%%
  \mark \default
  si4( la) r2 R1*12
  r4 mi(~\p mi8 red mi si' la sold re' dod si) si( fad' mi)
  mi4( re!) r mi,(
  \bar "||"
  \key la \major
  mid)\< fad(\> mi'4.\! fad,8) la4( sold) r mi(
  mid)\< fad(\> mi'4.\! fad,8) la4(\< sold) la(-- si)--
  re(\> dod) fad4.(\! red8)-. mi2
  fad8( sold) dod,-.( red)-. mi4\< mid( fad) fadd~
  fadd8\! sold(_\markup \italic "dolce" re' si sold mi fad re)
  re4( dod) la'2~-> la8 fad( dod re lad si dod re)
  fad4 mi dod'2~-> dod8 la( mid fad dodd red lad si)
  fad'4( mi) r2 R1*2
  r4 mi-.\f re'2~ \tuplet 3/2 4 {
    re8 dod si si( la) sold-.
    sold fad mi mid( fad) re-.
  } dod4 la'\p sol'2(~ sol8\< mi) dod-- la-- la( lad si sol)
  fad4\! \tuplet 3/2 {fad8( mi) re}
  sold4-> \tuplet 3/2 {sold,8( fad) mi}
  la4-> \tuplet 3/2 {la'8(\cresc sold) fad}
  si4-> \tuplet 3/2 {si,8( la) sold}
  dod4->\! \tuplet 3/2 4 {
    sid8( dod) fad mi dod la
    \clef bass fad red do
    si-. re( dod re) dod si
    sold'-. re'( dod re) dod si
  } dod4 \tuplet 3/2 4 {
    la,8( dod) mi-. red fad la
    \clef treble do( red) fad
    mi red mi la-- dod,( re dod) sid dod
    fad-- lad,( si
  } la4) \clef bass la,-. \clef treble sol''2~\sf
  sol8\noBeam si[(la sol)] sol( fad mi fad)
  \clef bass
  re,,2-> \clef treble la'''~\sf
  la8 dod( si la) la( sold fadd sold)
  \clef bass
  r4 \tuplet 3/2 4 {
    la,,8\p\< mi' sol si, mi sol
    \clef treble si mi sol
  } la4\! \tuplet 3/2 4 {
    \clef bass
    la,,8\< mi' sol si, mi sol
    \clef treble si mi sol
  } la4\! \tuplet 3/2 4 {
    \clef bass
    la,,8( mi' fad sol fad mi)
    \clef treble la( mi' fad)
    sol fad mi re dod si la(\trill sold) la lad si sol
  } fad4 \tuplet 3/2 4 {
    si,8 red fad sol-. dod( red mi) red-. dod-.
  } fad4 \tuplet 3/2 4 {
    si,,8 red fad sol-. dod( red mi) red-. dod-.
  } fad4 \tuplet 3/2 4 {
    si,,8-. red( dodd red) fad( mid fad) la( sold
    la) do( si do) fad( mid fad)
    la-. sold-. la-. sold-. fad-.
    mi-.\noBeam dod'-.[ sid]-. dod( si) la-.
    la-. la-. sold-. la( sold) fad-.
    mi-.\noBeam dod-. sid-. dod( si) la-.
    \clef bass
    la-. la-. sold-. la( sold) fad-.
  } mi16 mi, fad sold la si dod re
  mi la, si dod re mi fad sold
  la mi fad sold \clef treble la si dod re
  mi mi sold, sold la la fad' fad
  mi4 \clef bass mi,,-. \clef treble re'''2~\sf
  re16 dod( si la sold fad mi re dod si la sold
  \clef bass
  \tuplet 9/8 {fad32 mi re dod si la sold fad mi)}
  %%% G %%%
  \mark \default
  la4 r r2
  R1*15
  \tempo "Etwas zurückhaltend."
  R1*2 \clef treble
  re''2(\fp ^"Solo."  do4 sib) la( sol) la( sib
  \tupletOn
  do) fa,(~ \tuplet 3/2 {fa4 do' sib)} sol1
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \tempo "Langsam." 4 = 63
  \time 4/4
  \key fa \major
  r2 fa4.(^\markup \italic "mit Ausdrück." sib,8)
  sib4( la~ la8 sib) \tuplet 3/2 {sib( do re)}
  re4( sol,2) sold4--
  la8(\< do fa mi sol!)\> fa( do la)
  sol2\! \acciaccatura fa8 fa'4.\(\fp la,8\)
  do4( sib~ \tuplet 3/2 4 {sib8) sold( sib la sib do)}
  re4( sol,2) sold4--
  la8( do fa la) sol!4. do,8( sol'4 fa) r2
  R1
  sol4(\fp mi8. re16) do4( sold)
  R1
  la'4(_\markup \dynamic "sfp" mi8. re16) re8( dod si la)
  fa'4 fa2(~\< fa8.\> sib,16)
  sib4(\! la~ \tuplet 3/2 4 {la8) sold( sib la sib do)}
  re4(\fp la) re(\fp sol,!)
  la8( do fa la) sol4.( fa8)
  %%% H %%%
  \mark \default
  fa2 <do la'>_(~_\markup \italic {\dynamic p dolc.}
  q4 <la fa'>) << {sib2( la)} \\ {re,4.( mi8 fa2)} >>
  <do' la'>(~ q4 <la fa'>) <re, sib'>4.^( <dod la'>8)
  q2 <do' la'>~ q4
  << {\oneVoice <sib sol'>~ q2_(_~ \voiceTwo sib4 la)}
     \\ {\voiceOne s4 \once \hideNotes sol'2^( fa)} >>
  <la, fa'>~ q4 <fa la>^( <re do'>4. <mi sib'>8)
  <fa la>4 r fa'4.(->\pp sib,8)
  sib4( la~ la8 sib) \tuplet 3/2 {sib( do re)}
  re4( sol,2) sold4--
  la8(\< do fa mi sol!)\> fa( do la)
  sol2\! \acciaccatura fa8 fa'4.\(\fp la,8\)
  do4( sib~ \tuplet 3/2 4 {sib8) sold( sib la sib do)}
  re4( sol,2) sold4--
  la8( do fa la) sol4.( fa8) fa2 r
  \bar "||"
  \tempo "Etwas lebhafter."
  R1*3
  r2 r4 red(\f re4._\markup \dynamic "sfp" mi16 fa mi4 re)
  r2 r4 r8 mi(_\markup \italic {più \dynamic f}
  re4. mi16 fa mi4 re)
  r2
  \tempo \markup \medium \italic "ritard."
  do'4.(-> fa,8)
  \tempo "Erstes Tempo."
  fa4( mi~ mi8) fa( \tuplet 3/2 {mi fa sol)}
  la4( re,2->)\cresc red4
  mi8(\f \cresc sol do si re!) do( sol mi)\!
  \bar "||"
  \tempo "Schneller."
  r2 mi4..(\f fa16) fa2\sf r
  r4 mi(~\f mi8 fa si, do) re4. re8( mi4 si) re( dod) r2
  r mi4..(\f sol,16) sol2 r
  r mi'4..(\f sol,16) sol4.( dod8 mi re dod mi)
  sol( fa mi sib' la sol fa mi)
  \override TextSpanner.bound-details.left.text =
    \markup \bold "Schneller und schneller."
  sol(\startTextSpan fa mi sib' la sol fa mi)
  re(\cresc dod mi re dod sib la sold)
  \clef bass
  la( sold sib la sol fa mi re)
  dod( sib sold sib la sol fa mi)\!\stopTextSpan
  \bar "||"
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \tempo "Sehr lebhaft." 4 = 114
  \time 2/4
  \key la \minor
  re8 r r4
  \clef treble
  mi'8.\sf red16 mi sold si mi
  R2
  mi,8.\sf red16 mi sold si mi
  R2*2
  mi,8.\sf red16 mi sold si mi
  la, la do mi la8 fa'
  mi8.\sf \noBeam red,,16 mi sold si mi
  la, la do mi la8 la' sol4-> mi->
  re8.(-> do16) si8(-. la)-.
  mi'4-> si8(-> do16 si) mi4-> si8(-> do16 si)
  %%% J %%%
  \mark \default
  R2*6
  <do,,, sol' mi' do'>8\f r do'4->~
  do8. si16 do mi sol do mi8-> do la'(\trill \sf sol16) fad
  sol8 re sol(\trill \sf fa16) mi re4-> fa-> mi-> do,->~
  do8. si16 do mi sol do mi8-> do do'(\trill \sf si16) la
  sol8(\trill \sf fad16) mi fad8-. si-.
  %%% K %%%
  \mark \default
  mi,4 red,16( mi sold la si do re do mi re do si) la'4-> la,->
  R2
  r4 red,16( mi sold la si do re do mi re do si) la'4-> la,->
  R2
  fa'4-> dod16 re red mi fa4-> dod16 re red mi
  fa4 fa(~\cresc fa la--)
  do8.->\! la16 mid fad la si
  do8.-> la16 mid fad la si
  do4 red(~ red fad--)
  fa16->\mf re do si lad si do re
  mi-> do si la sold la si do
  fa->\p re do si lad si do re
  mi-> do si la sold la si do
  re->\cresc si la sol fad sol la si
  do-> la sol fad mid fad sol la
  si8.->\! si16 do dod re red
  mi8.-> si16 do dod re red
  mi2 la\sf sold4( sol~ sol\> fa) mi\! r
  R2*7
  %%% L %%%
  \mark \default
  mi,4(\p la) sold2\fp
  mi4( la) sold2\fp
  sol4(\fp re8) r
  R2
  re4(\fp sol,8) r
  R2
  mi8(\< sol do mi mi')\! si( do la) sol4 r
  R2
  sol4(\fp la,8) r
  R2
  mi'4( sol,8) r
  R2
  fa8( la re mi fa4 mi)
  fa,8( la re mi) sol( fa4) mi8
  %%% M %%%
  \mark \default
  la8.-> fa16 re la fa re
  dod8.-> mi16 sol sib mi sib'
  la8.-> fa16 re la fa re
  si!8.-> re16 fa lab si lab'
  sol4 do,-. do'2~\sf do do(~\sf do4 dod)
  mi8.->\sf re16 do si la sol
  do,,8.->\p si!16 do mi sol do
  fa8.-> sol16 fa re si! fa
  do8.-> si!16 do fad sib do
  sib'8.-> do16 sib sol mi do
  la'( fa) mi fa mi( fa) sol la
  sib( sol,) fad sol fad( sol) la sib
  la( fa) mi fa mi( fa) sol la
  sib( sol,) fad sol fad( sol) la sib
  la( fa) mi sol fa la sold sib
  la re dod mi re fa mi sol
  fa la sol sib la re dod mi
  re fa mi sol fa sol sold la
  reb8:16 lab: fa: reb: lab: fa: reb: lab:
  fad: la: do: red: fad: la: do: red
  \tuplet 3/2 4 {
    \clef bass
    sol,,8( sol') sol,-. la( la') la,-.
    si( si') si,-. do( do') do,-.
    \clef treble
    re( re') re,-. mi( mi') mi,-.
    fa( fa') fa,-. fad( fad') fad,-.
  } sol' \clef bass sol,, \clef treble fa'''4(~\sf
  fa16 re) si fad \acciaccatura la8 sol16( fad) sol sold
  si(-> la) fa re si sol fa re
  \clef bass
  si'(-> la) fa re si sol fa re
  %%% N %%%
  \mark \default
  do4 r
  R2*11
  %%% O %%%
  \mark \default
  \clef treble
  red''8.-> si16 do dod red mi
  red8.-> si16 do dod red mi
  red4 r
  R2
  mi,8.-> mi16 fa fad sol sold
  la8.-> mi'16 fa fad sol sold
  la4 r
  R2
  si,8.-> si16 do dod re red
  mi8.-> si'16 do dod re red
  mi4 r
  R2
  fa,8.-> dod16 re mi fa sol
  fa mi re do si la sol fa
  R2*2
  re'8.-> lad16 si do re mi
  re do si la sold fa mi re
  %%% P %%%
  \mark \default
  do8 r r4
  mi8.\sf red16 mi sold si mi
  R2 \clef bass
  si,8.\sf lad16 si mi sol! si
  la do si do si la sol fad
  mi8 r r4
  si'8.\sf lad16 si red fad si
  R2
  sold,8.\sf fadd16 sold si fa' sold
  la8. si16 la mi do la
  R2*2
  mi8.\sf red16 mi sold si mi
  R2
  re8.\sf mi16 re la fa re
  \clef bass
  sol, sib la sib la sol fa mi
  re8 r r4 \clef treble
  mi'8.-> red16 mi sold si mi
  fa8.-> sol!16 fa do la fa
  fad8.-> mid16 fad la red fad
  sold8.-> la16 sold re si sold
  do,8.-> si16 do mi sol! do
  fa-> mi fa sol fa do sib fa
  red8. re16 red fad do' red
  sol fad sol la sol mi do sib
  %%% Q %%%
  \mark \default
  la8 r r4
  do,8.->\p si16 do mi sol do
  R2
  re,8.-> dod16 re fad la re
  sol,8 r r4
  re'8.-> mib16 re la fad re
  R2
  re8.\sf dod16 re fad la re
  R2
  mi,8.\sf red16 mi sold si mi
  do8 r r4
  mi8.\sf fa16 mi si sold mi
  R2 \clef bass
  sib8. la16 sib re fa sib
  si8. do16 si sold re si
  la8. sold16 la do mi sold
  la8. sib16 la fa re la
  sol! la fad la sol( sib) mi fad
  sol( la) fad la sold( re) si sold
  la-> do mi la do,-> mi sol! do
  \clef treble
  fa,-> la do fa la,-> dod mi la
  re,-> fa la re fa,-> la re fa
  mi(-> fa) red fa mi( si) sold mi
  si'(-> do) lad do si( sold) mi si
  sold'(-> la) fadd la sold( mi) si sold
  mi'(-> fa) red fa mi( si) sold mi
  \tuplet 3/2 4 {
    \clef bass
    mi,8->\f <si' sold'> q q mi,( <si' sold'>)
    sold-> <mi' si'> q q sold,( <mi' si'>)
    \clef treble
    si-> <sold' mi'> q q si,( <sold' mi'>)
    mi <si' sold'> mi, <re' si'> mi,(-. <re' si'>)-.
  }
  %%% R %%%
  \mark \default
  la'4 r
  R2*19
  <do,,, sol' mi' do'>8\f r do'4~
  do8. si16 do mi sol do mi8-> do la'(\trill \sf sol16) fad
  sol8 re sol(\trill \sf fa16) mi re4-> fa-> mi-> do,->~
  do8. si16 do mi sol do mi8-> do do'(\trill \sf si16) la
  sol8(\trill \sf fad16) mi fad8-. si-.
  mi,4 red,16( mi sold la si do re do mi re do si) la'4-> la,->
  R2
  r4 red,16( mi sold la si do re do mi re do si) la'4-> la,->
  R2
  fa'4-> dod16 re red mi fa4-> dod16 re red mi
  fa4 fa(~\cresc fa la--)
  do8.->\! la16 mid fad la si
  do8.-> la16 mid fad la si
  do4 red(~ red fad--)
  fa16->\mf re do si lad si do re
  mi-> do si la sold la si do
  fa->\p re do si lad si do re
  mi-> do si la sold la si do
  re->\cresc si la sol fad sol la si
  do-> la sol fad mid fad sol la
  si8.->\! si16 do dod re red
  mi8.-> si16 do dod re red
  mi2 la\sf sold4( mi~ mi)\> mi <>\!
  \bar "||"
  %%% S %%%
  \mark \default
  \key la \major
  R2*8
  dod,4(\p fad) mid2\fp
  dod4( fad) mid2\fp
  mi4(\fp si8) r
  R2
  si4(\fp mi,8) r
  R2
  dod8(\< mi la dod dod')\! sold( la fad)
  mi4 r
  R2
  mi4(\fp fad,8) r
  R2
  dod'4(\fp mi,8) r
  R2
  re8( fad si dod re4 dod)
  re,8( fad si dod) mi( re4) dod8
  %%% T %%%
  \mark \default
  fad8.-> re16 si fad re si
  lad8.-> dod16 mi sol dod sol'
  fad8.-> re16 si fad re si
  sold8.-> si16 re fa si fa'
  mi4 la,-. la'2~\sf la la(~\sf la4 lad)
  dod8.-> si16 la sold fad mi
  la,,8.-> sold16 la dod mi la
  re8.-> mi16 re si sold re
  la8.-> sold16 la red sol la
  sol'8.-> la16 sol mi dod la
  fad'( re) dod re dod( re) mi fad
  sol( \clef bass mi,) red mi red( mi) fad sol
  fad( re) dod re dod( re) mi fad
  sol( mi,) red mi red( mi) fad sol
  fad( re) dod mi re fad mid sol
  fad si lad dod si re dod mi
  re fad mi sol fad si lad dod
  \clef treble
  si( re) dod mi re mi mid fad
  sib8:16 fa: re: sib: \clef bass fa: re: sib: fa:
  red: fad: la!: do: red: fad: la: do:
  \tuplet 3/2 4 {
    mi,,8( mi') mi,-. fad( fad') fad,-.
    sold( sold') sold,-. la( la') la,-.
    si( si') si,-. dod( dod') dod,-.
    \clef treble
    re( re') re,-. red( red') red,-.
  } \clef bass <mi, si' sold' mi'>\noBeam mi-.
  \clef treble
  re'''4(~\sf re16 si) sold red
  \acciaccatura fad8 mi16( red) mi mid
  sold(-> fad) re si sold mi re si
  \clef bass
  sold'(-> fad) re si sold mi fad sold
  %%% U %%%
  \mark \default
  la4 r
  R2*15
  r4 re,4(~\sf ^"Cadenza."
  \cadenzaOn
  re8[ dod\p re sib')]
  sol([ fa mib' re] dod[ re\cresc do sib)]
  sol'([ mi fa \clef treble re')] do([ sib mib dod)]
  \bar "|"
  re4 \clef bass <sib, fa' re'>~\f
  \bar "|"
  q <la fa' do'>8.^([ <sib fa' re'>16)-.]
  \bar "|"
  <la fad' re'>8 r re,4(~\sf
  \bar "|"
  re8[ dod\p re la')]
  \tuplet 3/2 4 {
    sol([ fad do'] sib[\cresc la mib']
    re[ do la'] sol[ fad la)]
  } \clef treble do4-> dod-> re-> \clef bass re,,->
  \clef treble
  \bar "|"
  \cadenzaOff
  do'''4.\sf la8 fad re dod do
  %%% V %%%
  \mark \default
  \tuplet 3/2 4 {
    \clef bass
    sib-.\p <sol, re'>(-. q-.) q-. <re' sib'>-.( q-.)
    sib'-. <sol, re'>(-. q-.) q-. <re' sib'>-.( q-.)
  } fad,4.(-> \tuplet 3/2 {sol16 re' sib')}
  \clef treble
  sol'4.(-> \clef bass \tuplet 3/2 {sib,16 re, sol,)}
  \tuplet 3/2 4 {
    fa8-. <re' la'>(-. q-.) q-. mi,-.( mi-.)
    fa-. <re' la'>(-. q-.) q-. mi,-.( mi-.)
  } fa4.(~-> fa32 la re la')
  re4.(~-> re32 la re, la)
  \tuplet 3/2 4 {
    mi8-. <mi' re'>-.( q-.) q-. mi,-. mi(
    red)-> <mi' re'!>-.( <mi re'>-.) q-. mi,-. mi(
    red)-> <mi' dod'!>-.( <mi dod'>-.) q-. mi,-. mi(
    red)-> <mi' dod'>-.( q-.) q-. mi,-. mi(
    red)-> <la'' fad'>-.( q-.) q-. mi,-. mi(
    red)-> <sold' fad'>-.( q-.) q-. mi,-. mi(
    red)-> <la'' mi'>-.( q-.) q-. mi,-. mi(
    red)-> <la'' mi'>-.( q-.) q-. mi,-.( mi-.)
    <mi si'>-.\cresc red'-.( si'-.) si-. red,-.( <mi, si'>-.)
    q-. mi'-.( dod'-.) dod-. mi,-.( <mi, si'>-.)
    q-. red'-.( si'-.) si-. red,-.( <mi, si'>-.)
    q-. mi'-.( dod'-.) dod-. mi,-.( <mi, si'>-.)
    q-. red'-.( si'-.) si-. red,-.( <mi, si'>-.)
    \clef treble
    la''(\f fad red si\prall lad si)
    red( dod do si lad la)
    \clef bass
    sold( fad mi) red( dod si)
  } mi,16(\cresc si' sold' mi') mi( sold, si, mi,)
  mi( si' la' fad') fad( la, si, mi,)
  mi( si' sold' mi') mi( sold, si, mi,)
  mi( si' la' fad') fad( la, si, mi,)
  mi( si' sold' mi') mi( sold, si, mi,)
  \tuplet 3/2 4 {
    \clef treble
    re'''8(\fff si sol mi) mi mid
    sold fad mi red re si
    \clef bass
    sold fad mi red re si
  }
  \bar "||"
  %%% W %%%
  \mark \default
  \tempo "Schneller."
  la4 r
  \tuplet 3/2 4 {
    la8->_\markup \italic {immer \dynamic ff}
    dod re mi fad sold
  } la4 r
  \tuplet 3/2 4 {
    la,8-> dod mi la si dod
    lad, si dod fad, sold lad
    si re fad \clef treble si re fad
    mi-> dod la \clef bass mi dod la
    \clef treble mi''-> si sold \clef bass mi si mi,
    la dod mi \clef treble la dod mi
    si'-> sol mi dod la sol
    sol'-> mi dod la sol mi
    mi'-> dod sol mi dod lad
    r re' dod re dod si
    r sol' fad sol fad mi
    r re dod re dod si
    r sol' fad sol fad mi
    si re dod re dod si
    lad si sol fad mi re
  } si:16 si': la': fad: red: la: sold: fad:
  \tupletOn
  \tuplet 3/2 4 {
    mi4( red8)-- mi sold la
    \tupletOff
    si sold fadd sold si dod
    re( re') si sold mi red
    re si sold mi re si
  } la4 r
  \tuplet 3/2 4 {
    mi'4\sf red8 mi sold si
  } dod4 r
  \tuplet 3/2 4 {
    mi4\sf red8 mi sold si
    dod4 dod,8 mi la dod
    mi4 mi,8 la dod mi
    la4 la,8 dod mi la
    dod4 mi,8 la dod mi
  } la r r4 \clef bass
  <la,,,, mi' dod'>8\ff r r4
  la2\fermata
  \bar "|."

}

PianoMd = \relative do' {
  \tempo "Nicht zu schnell." 4 = 130
  \key la \minor
  \accidentalStyle Staff.piano
  <mi la do mi>1\p <la re fa la>
  << {\oneVoice <do mi la do>~ \voiceOne q4*1/2}
     \\ {s1 r8} >>
  <do, mi>8_( la <do mi> la <do mi> la <do mi>)
  \clef bass
  r <do mi>( la <do mi> la <do mi> la <do mi>)
  r <do mi>( la <do mi> la <do mi> la <do mi>)
  r <do mi>( la <do mi>) r <do fa>( la <do mi>)
  r <do mi>( fad, <do' red> fad, <do' red> fad, <do' red>)
  r <si re fa>( fa <si re fa>) r <si re mi>( mi, <si' re mi>)
  r <la re>( mi do') r <sold mi'>( mi mi')
  r mi( la, mi') << red2 \\ {r8 si4( la8)} >>
  r <si mi>( sold <si mi> sold <si mi> sold <si mi>)
  r <sol sib do>4 q8 r <sol sib dod>4 q8
  r q4 q8^( re') <sol, sib re>^( reb') <sol, sib reb>
  r <sol sib do>4 q q q8
  r q4 q8 r <mi sib' do>^( dod') <mi, sib' dod>-.
  r <re la' re>4 q8 r <la' do re>(\< mib')\> <la, do mib>-.\!
  r <la do re>4 q8^( re) re( fa) <si, re fa>-.
  r <si re mi>4 q8 r <do re fa>4 q8
  r <re fa>4 q8 r <sold, si mi>4 q8^(
  mi') mi( la, mi' la, mi' \clef treble re <sold si>)
  r do( <do, mi> do' <do, mi> do' <do, mi> do')
  \clef bass
  r <do, mi>( la <do mi>) r <do mi>( fa, mi')
  r <do mi>( fad, red') r <la red>( fad <do' red>)
  r re( si re) r mi( si re)
  <la do>4 r \clef treble <la fa' la> r r2 <sol dod la'>
  <la re la'>4 r <red la' do>2 r <si re mi>4 r
  <la do> r r2 <la do la'>4-> r r2
  <do mi la do>4-> r r2 <si re fa sold>4-> r r2
  %%% A %%%
  \clef bass
  r4 <mi, la do mi>^(\f \clef treble mi'' <mi, do'>8 la)
  << {la4( sold)} \\ <re mi>2 >> <la mi' la>4( mi'8.) sol16
  <la, re fa>4 q^( fa'') <re, fa re'>8. si'16
  <si, re sold>8. <la do la'>16 <re fa si>2
  << {do'8 sold~
      \oneVoice <re mi sold> <do la'>^( re' <do, re lad'>~)
      q <si si'>^( mi' <si, mi si'>)~
      q <do do'> <sol'! do sol'!>(\sf <fa fa'> do' la <do, fa> red)
     } \\ {<re mi>4~ \nudge \hideNotes q s2. s1} >>
  <si mi>2-> <mi si' re>4. q8
  <mi si'>( do' <sol do sol'>\sf <fa fa'> do' la <do, fa> <mib fad>)
  << sol2-> \\ {<sol, re'>8 r s4} >> <fa'! re' fa!>4. q8
  <mi do' mi>4 <do mi sol do>->^(~
  do16 re32 mi fa sol la si! do8.) <do do'>16
  <la do la'>4 <fa la do fa> <fa sol si! re> <fa sol si re fa>
  <mi sol do mi> <mi sold si mi>~->^(
  mi16 fad32 sold la si do re mi8.) <mi si' mi>16
  << {do'4 la sold la fad sol fad?^\sf sol fa la, dod re red mi}
     \\ {
       mi16 do mi do mi do mi do do la do la do la do la
       si sol! si sol si sol si sol do sol do sol do sol do sol
       la fa! la fa la fa la fa la fa la fa la fa la fa
       sold mi sold mi sold mi sold mi} >>
  <la mi' la>4 <la, mi' la> <fa' la re fa>\sf r r2
  R1*2
  <dod mi>1_(^\(\fp <re fa>4)\) r r2
  <dod mi>1_(^\(\fp <re fa>4)\)
  << {sol2 sol4} \\ {sol,2 sol4} \\ {re'_( do! si)} >>
  <sol do sol'> r <mib' fad>-.\p r8 q-.
  <re fa sol>2 <mib fad>4 r8 q-.
  <re fa sol>4\< <re fa>2 q4~ q\p r r2
  \clef bass
  <sol, do>4 r r <do sold'>_~^( <do la'>) r
  << {si r s} \\ {lab2( \voiceOne <sol do>4)} >> r r
  \clef treble <mi' mi'>~\( q la\) r
  \clef bass
  << {\oneVoice <fad, la re> <sol re'>\<
      \clef treble
      \voiceOne <sol' si>( <la do> <si re>)
      <do fa>(\> mi4) \oneVoice <la, re fad la>-.\p}
     \\ {s2 sol( fa!4 mi) r s} >>
  r8 <la re fad>-.
  <sol re' sol>2 <la re fad la>4-. r8 <la re fad>-.
  <sol re' sol>2 r4 <re fa! la>_~^(
  <re fa sol>) r r \clef bass <sol, re' fa>
  <sol do mi> r r \clef treble \once \stemUp <sol' sib re>~^(
  <sol sib do>) r r <do, sol' sib>
  <do fa la> fa( <si,! si'!> mi)
  <do do'> la'( <re, re'> sol)
  <mi sol mi'> r r \clef bass <mib fad la>
  <re sol> r r <sol, re' fa!>
  <sol do mi> r r <mib' fad la>8 r
  <re sol> r <do fa!> r <si mi!> r <la re>[ r16 <lab si>]
  <sol do>8 r r4 \clef treble <dod sib'>2_(^~->
  <re sib'>)^\( re4\) r r2 <red do'>_(^~->
  <mi do'>)^\(\> mi4\)\! r
  <sib' do> r <re sol sib re>-.\p r8 <re sol>-.
  <do sol' do>4-. r <re sol sib re>-. r8 <re sol>-.
  <do sol' do>4-. r r2 r r4 <mi, sib' dod>-.
  <re la' re>-. r <mi' sib' mi>-. r8 <mi sib' dod>-.
  <re la' re>4-. r <mi sib' mi>-. r8 <mi sib' dod>-.
  <re la' re>1 <red, la' red>
  <mi sol mi'>4 r <mib fad la do>-> r
  <mi sol> r <mib fad la do>-> r
  <mi sol>1~ <mi sol do>2 <sol mi'>4.^( la'8)
  << {sol1\p sol\cresc <>\p} \\ {
    \repeat tremolo 4 {si,16 fa!}
    \repeat tremolo 4 {si fa}
    \repeat tremolo 4 {<si re> fa}
    \repeat tremolo 4 {<si re> fa}
  } >>
  %%% B %%%
  <si, mi>4-. r
  << {<red fad do'>-. r}
     \\ \tuplet 3/2 4 {r8 do-. si-. do-. si-. la-.} >>
  <si mi>4-. r
  \tupletOff
  << {<red fad do'>-. r}
     \\ \tuplet 3/2 4 {r8 do-. si-. do-. si-. la-.} >>
  << mi''1_\f ^\markup \dynamic "sf" \\ {
    \repeat tremolo 8 {si32 mi,}
    \repeat tremolo 8 {si' mi,}
  } >>
  <red mi la>2. <re mi si'>4
  <do mi la do>-.\p r
  << {<sold' si fa'>-. r}
     \\ \tuplet 3/2 4 {r8 fa-. mi-. fa-. mi-. re-.} >>
  <do mi la do>4-. r
  << {<sold' si fa'>-. r}
     \\ \tuplet 3/2 4 {r8 fa-. mi-. fa-. mi-. re-.} >>
  << mi'1_\f ^\markup \dynamic "sf" \\ {
    \repeat tremolo 8 {la,32 mi}
    \repeat tremolo 8 {la mi}
  } >>
  <re mi sold>2. <do mi la>4 \clef bass
  <la do>\p r r2 <re, re'>2. r4 \clef treble
  <re' la'>1-> <re sib'>4-. r
  << {<fad la mib'>-. r}
     \\ \tuplet 3/2 4 {r8 mib-. re-. mib-. re-. do-.} >>
  <re sol sib>4-. r
  << {<fad la mib'>-. r}
     \\ \tuplet 3/2 4 {r8 mib-. re-. mib-. re-. do-.} >>
  <re sol sib>4-. r r2
  <do sol'>4 r <si! sol'>2^~
  <do sol'>4 do_~^( <do la'>2)~\fp
  q4 r r2 r4 do_~^( <do la'>2)~\fp
  q4 r r2 \clef bass r
  << {
      dod->( re4) r \tuplet 3/2 4 {
        r8 do-.^\f sib-. do-. sib-. la-.
      }
     } \\ { sol2~ sol( fad4) s}
  >> r2
  << {
      red'->( mi4) r \tuplet 3/2 4 {
        r8 re-.^\f dod-. re-. do-. si-.
      }
     } \\ { la2~ la( sold4) s}
  >> \clef treble
  %%% C %%%
  <do do'>4\p r r2 \clef bass <fa, fa'>2. r4
  <mi' sold>2. r4 \clef treble
  <dod sol'! dod>4\f r \tuplet 3/2 4 {
    r8 sol'-.\cresc fad-. sol-. fad-. mi-.\!
  } r2 \clef bass <fad, dod'>4 r
  r2*1/6 s2*5/6\f \tuplet 3/2 4 {
    sid8-.\noBeam \clef treble
    la'-.[ sold-.] la-. sold-. fad-.
  } r <red sold>4\p q q <sid sold'>8
  \clef bass
  \tupletOn
  r <sold dod sold'>4 q q <fad sold dod sold'>8
  r <sold dod mi sold>4 q <la mi' la> <sold mi' sold>8
  \clef treble
  << {sol'!2.\ff \voiceTwo mi4(\sf \voiceOne fa8)}
     \\ {<mib mib'>4. q8 q4 \voiceOne r s8} >>
  <do fa>4\p q q <la fa'>8
  \clef bass
  r <fa sib fa'>4 q q <la mib' fa>8
  r <sib reb fa>4 q8 r <sib reb solb>4 <sib reb fa>8
  \clef treble
  << mi!2*2\ff \\ {<do do'>4. q8 q2} >>
  r <solb' reb' solb>4.\p <mi reb' mi>8
  <fa do' fa>-. r r4 <solb reb' solb>4. <mi reb' mi>8
  <fa do' fa>-. r r4 r2
  R1 r2 <lab mib' lab>4.\p <fad mib' fad>8
  <sol re' sol>-. r r4 <lab mib' lab>4. <fad mib' fad>8
  <sol re' sol>-. r r4 r2
  \clef bass <mib, do'>8\f mib' re do
  \clef treble sol' fa mib sol
  %%% D %%%
  mib'2-> <reb fab>_(^\(\p <do mib>4)\) r
  << {\oneVoice <reb fab>2_(^\(
      \voiceOne <do mib>4)\) r r2
      s1 s2}
     \\ {s mib,1~ mib~ mib2}
     \\ {s \hideNotes mib1^( \unHideNotes lab2. sib4 dob2)} >>
  << {\oneVoice <fab, sib reb>( <mib lab dob>4) r
      \nudge <fab sib reb>2^\( \voiceOne \nudge <lab dob>4\) r r2
      mib'1}
     \\ { s1
       \hideNotes \nudge fab,2_(
       \unHideNotes \nudge mib1)~ mib~ mib2}
     \\ { s1 \hideNotes \nudge sib'2^(
       \nudge lab4) s s1*2}
     \\ {s1 s2 \hideNotes \nudge mib1^\(
       \unHideNotes \voiceThree lab2. sib4 dob2\)} >>
  << {si!~ si si~ si
      \voiceTwo \nudge <la red fad>_(^\( \nudge <sold dod mi>)\)}
     \\ {la!( sold fad mid)
         \hideNotes \voiceOne \nudge red'( \voiceTwo \nudge dod)}>>
  r \clef bass
  r8 dod,( la dod) r dod( si dod)
  r dod( la dod la dod la dod)
  r dod( la dod) r re( la dod)
  r fad( <do mib> fad) r mib( do mib)
  r4 <la, si re> r <sold si dod>
  \clef treble <fad' dod' fad>2.\sf <dod fad la>4\p
  r <si re la'> r <si re sold>
  r <la dod la'> r <sold re' mid>
  r <fad dod' fad> r <fad' dod' mi fad>
  << {red'2(\sf\> re) <>\p} \\ <fad, si fad'>1 >>
  r8 la( <dod, fad> la') r la( <dod, fad> la')
  r la( <dod, fad> la') r la( <dod, fad> dod')
  <red, fad sid>4 r <re sold si> r
  <dod fad la> r r r8 <dod fad la dod>
  <red fad sid>4 r <mid sold si> r
  << {<sol! la!>2->^~ \nudge la4*1/2 s}
     \\ {<mi! sol>2_( \nudge <re! fad>4*1/2) s}
     \\ {\hideNotes \nudge sol2_( \nudge fad4*1/2) s} >>
  r4 <si, mi sol> r <la mi' la> r
  << {<fad' la>2^( sol4)} \\ re2. >> r4
  <mi la do!> r <re fad re'> r
  %%% E %%%
  <re sol si re>2_(^\(
  <sol sol'>4. <la la'>8 <si si'>4)\)
  r <mib fad do'>2_(^\( <sol, re'>)\)
  <sol sol'>4._(^\( <la la'>8 <si si'>4)\)
  r <re fa! si re>2 \clef bass
  r8\p <mi,, lad mi'>4 q q q8
  r <la! red la'!>4 <la red la'> q <la red si'>8
  r <la do mi>4 q8 r <la do fa>4 <la do mi>8
  r q4 <la do red> <fad do' red> q8
  r <fa do' re>4 <fa si re>8 r <mi si' re>4 q8
  r <mi la re>4 <mi la do>8 r <sold do mi>4 <re' mi sold>8
  r mi( la, mi') << red2 \\ {r8 si4( la8)} >>
  r <si mi>( sold <si mi> sold <si mi> sold <si mi>)
  r <sol sib do>4 q8 r <sol sib dod>4 q8
  r q4 q8^( re') <sol, sib re>^( reb') <sol, sib reb>
  r <sol sib do>4 q8 r q4 q8
  r q4 q8 r <mi sib' do>^( dod') <mi, sib' dod>
  r <re la' re>4 q8 r <la' do re>^(\< mib')\> <la, do mib>-.\!
  r <la do re>4 q8~ re re( fa!) <si,! re fa>-.
  r <si re mi>4 q8 r <do re fa>4 q8
  r <re fa>4 q8 r <sold, si mi>4 q8~
  mi' mi( la, mi' la, mi' \clef treble re <sold si>)
  r do( <do, mi> do' <do, mi> do' <do, mi> do')
  \clef bass
  r <do, mi>( la <do mi>) r <do mi>( fa, mi')
  r <do mi>( fad, red') r <la red>( fad <do' red>)
  r re( si re) r mi( si re)
  <la do>4 r \clef treble <la fa' la> r r2 <sol! dod la'>
  <la re la'>4 r <red la' do!>2\cresc \clef bass r\!
  <si re! mi>4 r <la do> r r2 \clef treble
  <la do la'>4-> r r2 <do mi la do>4-> r r2
  <si re fa sold>4-> r r2
  %%% F %%%
  \clef bass
  r4 <mi, la do mi>^(\f \clef treble mi'' <mi, do'>8 la)
  << {la4( sold)} \\ <re mi>2 >> <la mi' la>4( mi'8.) sol16
  <la, re fa>4 q^( fa'') <re, fa re'>8. si'16
  <si, re sold>8. <la do la'>16 <re fa si>2
  << {do'8 sold~
      \oneVoice <re mi sold> <do la'>^( re' <do, re lad'>~)
      q <si si'>^( mi' <si, mi si'>)~
      q <do do'> <sol'! do sol'!>(\sf <fa fa'> do' la <do, fa> red)
     } \\ {<re mi>4~ \nudge \hideNotes q s2. s1} >>
  <si mi>2-> <mi si' re>4. q8
  <mi si'>( do' <sol do sol'>\sf <fa fa'> do' la <do, fa> <mib fad>)
  << sol2-> \\ {<sol, re'>8 r s4} >> <fa' re' fa>4. q8
  <mi do' mi>4 <do mi sol do>->^(~
  do16 re32 mi fa sol la si! do8.) <do do'>16
  <la do la'>4 <fa la do fa> <fa sol si! re> <fa sol si re fa>
  <mi sol do mi> <mi sold si mi>~->^(
  mi16 fad32 sold la si do re mi8.) <mi si' mi>16
  << {do'4 la sold la}
     \\ {
       mi16 do mi do mi do mi do
       red la red la red la red la} >>
  <sold mi' si'>4 r r2
  R1*2
  \key la \major
  \clef bass
  <lad, dod>1\fp_(^\( <si re>4)\) r r2
  <lad dod>1\fp_(^\( <si re>4)\)
  << {mi2 mi4} \\ {mi,2 mi4} \\ {si'_( la sold)} >>
  <mi la mi'> r <do' red>-.\p r8 <do red>-.
  <si re mi>2 <do red>4-. r8 <do red>-.
  <si mi>4\< <si re>2 q4~ q\p r r2
  r r4 <la mid'>_~^( <la fad'>) r <sold sold'> r
  \clef treble
  <la la'> r r <dod dod'>~ q^\( fad\) r <si, red fad>
  <si mi> <>\<
  << {<mi sold>( <fad la> <sold si>)} \\ {mi2 <re! mi>4} >>
  <dod la' re>\>^( dod') <fad, si red fad>-.\p r8 <fad si red>-.
  <mi si' mi>2 <fad si red fad>4-. r8 <fad si red>-.
  <mi si' mi>2 r4 \clef bass <si re! fad>^(~\mf
  <si re mi>) r r <mi, si' re> <mi la dod> r r
  \clef treble <mi' sol si>~^(\p <mi sol la>) r r
  <la, mi' sol> <la re fad> re( <sold,? sold'> dod)
  <la la'> fad'(\cresc <si, si'> mi)
  <dod mi la dod>->\! r r \clef bass <do red fad>
  <si mi> r r <si re> <mi, la dod> r r <do' red fad>8 r
  <si mi> r <la re> r <sold dod> r
  << {si r} \\ {fad8. <fa sold>16} >>
  <mi la>8 r r4 <lad sol'>2->^~_(
  <si sol'>)^\( si4\) r r2 <sid la'>->^~_(
  <dod la'>)^\( dod4\) r \clef treble
  <sol' la> r <si mi sol si>-.\p r8 <si mi>-.
  <la mi' la>4-. r <si mi sol si>-. r8 <si mi>-.
  <la mi' la>4-. r r2 r r4 <dod, sol' lad>-.
  <si fad' si>-. r <dod' sol' dod>-. r8 <dod sol' lad>-.
  <si fad' si>4-. r <dod sol' dod>-. r8 <dod sol' lad>-.
  <si fad' si>1 <sid, fad' sid>
  <dod mi la dod>4 r <sid red fad la>-> r
  <la dod> r <sid red fad la>-> r
  << {\hideNotes \nudge <mi>1^( \unHideNotes la2)}
     \\ {\nudge <dod, mi>1~ q2} >>
  <mi dod'>4.^( fad'8)
  << mi1 \\ {
    \repeat tremolo 4 {sold,16 re!}
    \repeat tremolo 4 {sold re} } >>
  << mi' 1 \\ {
    \repeat tremolo 4 {<sold, si>16 re}
    \repeat tremolo 4 {<sold si> re} } >>
  %%% G %%%
  <do la'>8-.\p r r4 <reb sol sib reb>8-. r r4
  <do fa la>8-. r r4 <reb sol sib reb>8-. r r4
  <la' la'>1\sf <dod, sol' la dod>2. <re fa la re>4
  <mi sol sib mi>8-.\p r r4 <fa sold si fa'>8-. r r4
  <mi sol sib mi>8-. r r4 <fa sold si fa'>8-. r r4
  <sib mi sol sib>1\f ^\markup \dynamic "sf"
  <re, sold! si! re>2. <mi sol dod mi>4
  <fad do' fad>8\noBeam
  dod[ re fad!] la re fad la
  << {<la, re la'>2^\sf^( sol'4.) sol8}
     \\ {r dod,,! re fad! sol sib re sol} >>
  <re la' re>2^( la'4.) \stemUp la8 \stemNeutral
  << {<re, la' re>2^( sold!4) r}
     \\ {r8 re, dod! re sold! si re \voiceFour sold} >>
  <si, si'>\noBeam mi,[ red mi]
  <si mi sold!> si' \tuplet 3/2 {mi sold si}
  << {\oneVoice <si, mi si'>2^( \voiceOne la'4.) la8}
     \\ {\mg
         \voiceOne r mi, red mi
         \md
         \voiceTwo la do mi la,} >>
  <mi' si' mi>2^( <si si'>4.) si'8
  << <mi, si' mi>2 \\ {r8 mi, red mi} >>
  \stemUp <lad lad'> dod mi lad \stemNeutral
  %% \tempo "Etwas zurückhaltend"
  <mi, sib' mi>1_(^\(\p\< <la mib' la> <re re'>2.)\)\fp
  r4 \clef bass
  r2 <reb, mi!>\p( <do fa> <re fa>)
  <sol, do>^( \clef treble sib')
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %% \tempo "Langsam"
  \key fa \major
  \tuplet 3/2 4 {
    r8_\markup \italic {\dynamic p dolce}
    <la, do fa la> q q q q
  } <sib reb fa sib>4 r
  \tupletOff
  \tuplet 3/2 4 {
    r8 <sib do fa sib> q r <la do fa la> q r <sib fa'> q
  } q4
  \tuplet 3/2 4 {
    r8 <sib do sol'> q q q q
  } <re' re'>4^( <sold, sold'>)
  \tuplet 3/2 4 {
    r8 <la, do fa la> q q q q
  } q4 r8 <la re fa la>
  << \tuplet 3/2 4 { \oneVoice
      r <sol mi' sol> q q q q r <do fa la> q q q q
      r <do fa> q r <sib fa' sib> q
      \voiceOne
      r \oneVoice <sold mib' fad> <sib mib fad>
      <la mib' fad> <sib mib fad> <do mib fad>
      r <la re la'> q <sol re' sol> q q
      \voiceTwo
      r <fa' sol> q <fa sold> q q
      r <do fa la> q q q q
      \oneVoice
      r <sib do mi sol> q q q q
      r <la do> q <la do fa> q q
     } \\ {
      s1 s2 mib'4._(
      \mg \voiceThree fad,8)
      \md \voiceOne
      s2 fa''4.( si,8 do2) s s
  } >>
  <do, fa la>~^(\p\< q <fa lab re> <sol do sol'>4\!) r r2
  <do, fa la>2^(\p\< <re fa si re> <la' dod mi la>4\fp) r r2
  \clef bass
  \tuplet 3/2 4 {
    r8 <la, re fa> q q q q r <sib fa'> q q q q
    r q q r <la fa'> q r <la do> q r <sol do> q
    \clef treble
    r <do re la'> q r q q
    r <si fa' sol> q r <sol re' fa sol> q
    r <la do fa la> q q q q
  } <sib do mi sol>4 r
  \clef bass
  %%% H %%%
  <la do fa>4\pp r q r r2 sib4 r
  la2 <la do fa>4 r r2 sib4 r8 la
  la4 r <do! re> r
  << {re2^( reb4 do_~ do2) re^( do)}
     \\ {s sib s la4 r s2} >> do4 r
  \clef treble
  \tuplet 3/2 4 {
    r8 <la do fa la> q q q q
  } <sib reb fa sib>4\pp r
  \tuplet 3/2 4 {
    r8 <sib do fa sib> q r <la do fa la> q r <sib fa'> q
  } q4
  \tuplet 3/2 4 {
    r8 <sib do sol'> q q q q
  } <re' re'>4^( <sold, sold'>)
  \tuplet 3/2 4 {
    r8 <la, do fa la> q q q q
  } q4 r8 <la re fa la>
  << {
      \tuplet 3/2 4 { \oneVoice
        r <sol mi' sol> q q q q r <do fa la> q q q q
        r <do fa> q r <sib fa' sib> q
        \voiceOne
        r \oneVoice <sold mib' fad> <sib mib fad>
        <la mib' fad> <sib mib fad> <do mib fad>
        r <la re la'> q <sol! re' sol!> q q
        \voiceTwo
        r <fa' sol> q <fa sold> q q
        r <do fa la> q q q q
      } \voiceOne <do mi sol>4 r \oneVoice
      \tuplet 3/2 4 {
        la8 <la do fa> q q q q
      }
     } \\ {
      s1 s2 mib'4._(
      \mg \voiceThree fad,8)
      \md \voiceOne
      s2 fa''4.( si,8 do2)
      \voiceTwo sib,4._( la8) s2
  } >>
  la'2~
  %% \tempo "Etwas lebhafter"
  <red, la' red>1\pp^( <mi la do mi>2 <la la'>4. <si si'>8)
  <do mi la do>^( <la la'> <mi mi'> <do do'>
  <fa fa'>4.\espressivo <mi mi'>8)
  << {mi'2(\sf red4)} \\ <la do>2. >> r4
  <si,! re!>8\p r r4 q8\cresc r r4
  <mi la do mi>2.\f\> r4\!
  <si re>8\p r r4 q8\cresc r r4
  <do mi do'>2_(^\(\f\> fa)\)\p
  %% \tempo "Erstes Tempo"
  r8 <do fa> r <do mi> r4 q8 q
  r <la do re>4 q8 <do' do'>4^(\cresc <red, red'>)
  <do mi sol do>4.\f r8 r2
  %% \tempo "Schneller"
  << {mi1\pp\< fa2*7/8\> s16\! re'4..^\ff^( mi,16)
      mi1\pp \clef bass re re4(
      dod2.)\< re2\> mi\!\espressivo
      dod1*1/2 s2\< re\> mi\!\espressivo}
     \\ {
       \repeat tremolo 8 {re32 si}
       \repeat tremolo 8 {re si}
       \repeat tremolo 8 {re do}
       \repeat tremolo 8 {re do}
       \repeat tremolo 8 {re si}
       \repeat tremolo 8 {re si}
       \repeat tremolo 8 {si fa}
       \repeat tremolo 8 {si mi,}
       sib'32 mi, sib' mi, sib' mi, sib' mi,
       la mi la mi la mi la mi
       \repeat tremolo 8 {la mi}
       \repeat tremolo 8 {sol re}
       \repeat tremolo 8 {sol re}
       \repeat tremolo 8 {la' mi}
       \repeat tremolo 8 {la mi}
       \repeat tremolo 8 {sol re}
       \repeat tremolo 8 {sol re}
  } >> <la' dod>4 r r2
  R1*5 \clef treble
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %% \tempo "Sehr lebhaft"
  \key la \minor
  <la re fa la>8\cresc r <fa' la re fa> r <mi sold si mi>4-> r
  <la, re fa la>8 r <fa' la re fa> r <mi sold si mi>4-> r
  <do mi la>8\f r <mi la do mi> r
  << {<fa' la>4.( <mi sol!>16 <re fa>)} \\ la2\sf >>
  <mi sold si mi>8\p r r4
  <la do mi>8 r r <la re fa> <sold si mi> r r4
  <la do mi>8 r r <do fa la>
  <re sol> r <mi, do' mi> r <fa si re> r r4
  <mi do' mi>8 r <re mi sold si> r
  <mi do' mi> r  <re mi sold si> r
  %%% J %%%
  <sold, mi'>->^( fa'16 mi) si'8->(\cresc do16 si)
  mi8->( fa16 mi) mi'8->( fa16 mi)
  <la,,, re fa la>8\f r <fa' la re fa> r
  <mi sold si mi>8.\sf red16 mi sold si mi
  la,8 r <la do fad la> r
  <sol si re sol>8.\sf fad16 sol si re sol
  <mi, sol do mi>8 r r4 R2 r4 <red' fad la>->
  <re sol>8\p r <do mi sol> fa16 mi
  <la, do re>8 r <si! re fa> r <do mi> r r4
  R2 r4 <mi fad do'>8 r <si mi sol> r <si mi fad> <si red si'>
  %%% K %%%
  mi->\noBeam <si, mi>[ q q] q[ q q q]
  mi-> r <si' red>16 <do mi> <la fad'> <si sold'>
  <do la'> <mi si'> <la do> <sold si>
  <si re> <la do> <sold si> <fad la>
  <mi sold si mi>8->\noBeam <re, mi>[ q q]
  q[ q q q]
  <la mi' la>-> r sold'16 la sib la
  <dod mi> <re fa> <mi sol> <dod mi>
  <fa la> <mi sol> <re fa> <dod mi>
  <fa, re' fa>4-> r8 <sib mi>
  <fa la fa'> r r <sib mi>
  <fa la fa'>4 <fa la>~ q <mi la>
  <red fad la do>8 r r <mi la>
  <red fad la do>8 r r <mi la>
  <red fad la do>4 red'^(~
  <fad, si red>\cresc <fad si red fad>)
  <fa si re fa>8\p r r4 mi-> r
  <fa! si re fa!>8\pp r r4 r <re fad la>8 r
  <re sol re'>\cresc r sol r do r <la, do fad> r
  <si si'> r r <red fad do'> <mi si'> r r <red fad do'>
  si'16\! mi, si' mi, si' mi, si' mi,
  \clef bass
  << {la2^\sf ^\cresc sold4( sol)~\! sol(\> fa!) <>\!}
     \\ {
       mi16 la, mi' la, red la red la
       mi' si mi si mi si mi si
       do la do la re! si re si
  } >> <do mi>2 <do fa>\<
  \clef treble
  <fa si! re fa>8.\f re'16 dod re mi fa
  <mi, sol do mi>8.\f do'16 si do re mi
  do,4\p <mi sib' mi> do\cresc <fa la do fa>
  <fa si! re fa>16\f re' dod re dod re mi fa
  <mi, sol mi'> do' si do si do re mi
  %%% L %%%
  \clef bass
  mi,4\p <la, red>_(^\( <si mi>2)\)\fp
  mi4 <la, red>_(^\( <si mi>2)\)\fp
  r8\p <si re! sol!>4 q8
  %% FIXME
  \clef treble
  <<{fa''4^\fp( si,8) r} \\ {r <fa sol>4 s8} >>
  r <re fa sol>4 q8
  << {la'4^\fp( red,8) r} \\ {r <si fa'> s4} >>
  r8 <mi sol>4 q8 q4.( <red fad>8)
  mi(\< sol do re! <mi, sol mi'>\> si'
  \voiceOne do sib \oneVoice
  la)\! <dod, mi sol la>4 q8
  << {sol''4^\fp( dod,8) r} \\ {r <sol la>4 s8} >>
  r <mi sol la>4 q8
  << {sib'4->( la8) r} \\ {r <dod, mi sol>4 s8} >>
  <re fa la> r r4 <re' fa>^( <do mi>)
  R2 <la sol'>8^( <si fa'>4 <do mi>8)
  %%% M %%%
  <la, la'> r r4 <dod mi sib'>8 r r4
  <re la'>8 r r4 <si re lab'>8 r r4
  <do sol'>8 r r4
  \clef bass
  << {do2~ do~ do \clef treble do4( <fad dod'>)} \\ {
    fa,4( sol sib la) lab( sol
    \mg
    \voiceOne fad2)} >>
  << {mi''8.->( re16 do si la sol)} \\ <fa sol>2 >>
  <sib sib'>4\fp^( mi8) r
  <fa, fa'>4\fp^( si8) r
  <sib, re'>4\fp^( fad'8) r
  <do do'>4\fp^( <sol sol'> <la do la'>8) r r4
  <dod mi sib'>8 r r4 <la re la'>8 r r4
  <dod mi sib'>8 r r4 <la re la'>8 r r4
  R2
  \clef bass r8 <mi dod'>-. <fa re'>-. <dod' mi>-.
  \clef treble <re fa>-. <mi sol>-. <fa la>-. <fa re'>-.
  <reb fa lab reb>-> r r4 R2
  <do mib la! do>8-> r r4 R2
  <do mi! sol>8\p r r4
  <re'' fa>^( <do mi> <fa, si re> <mi do'>
  <re fa si> <do mib la>) <fa, sol si! re sol>8-> r r4
  R2*2
  sol16\< sol, sol' sol, sol' sol, sol' sol,
  %%% N %%%
  <do mi la do>8\f r <la' do re la'> r
  <sol si re sol>4.-> \voiceOne r8 \oneVoice
  <mi sol do mi>8 r <do' mi la do> r
  <si red fad si>4.-> \voiceOne r8 \oneVoice
  << {<mi sol>4 <la mi'>~ q <sol re'>~ q <la do> q <fa si>}
     \\ {
       si,16 sol si sol sol'\sf mi sol mi
       fa! mi fa mi fa\sf re fa re
       mi re mi re mi\sf do mi do
       re do re do re si re si
  } >>
  <mi, sol mi'>8. do'16 << {dod-^ re mi fa} \\ lab,4 >>
  <mi sol mi'>8. do'16 << {dod-^ re mi fa} \\ lab,4 >>
  <mi sol do mi>8 do'4 sol8~ sol mi4 do8
  %%% O %%%
  \clef bass
  <red, fad si>\p r r <sol lad mi'>
  <fad si red> r r \clef treble <sol' lad mi'>
  <fad si red> si4 fad8~ fad red4 si8
  \clef bass
  << {<si mi> r r4 <la mi'>8 r r re} \\ {mi,2~ mi2*3/4 si'8} >>
  \clef treble
  << {do'8. sold16 la si do re} \\ {do,4 r} >>
  do'16 si la sol fad mi re do
  << {\nudge si2( mi4. fad8)} \\ {\once \hideNotes si,2~ si} >>
  <sol' sol'>8. red'16 mi fad sol la
  sol fad mi re do si la sol
  <la, do fa>8 r r4 <si fa'>8 r r4
  <mi sold mi'>8. lad16 si do re fa
  mi re do si la sol fa mi
  <re la'>8 r r4 <re sold>8 r r4
  %%% P %%%
  <do la'>8 r <la' fa'> r <mi sold mi'>4-> r
  <la, la'>8 r
  << {\oneVoice fa''4^(~ \voiceOne fa mi~ mi red
      \oneVoice <mi, mi'>8)}
     \\ {s4 si'2 la8 r fad r s} >>
  r <mi' do'> r <red si'>4-> r
  <mi, mi'>8 r
  << {s4 fa'!2 mi re s8}
     \\ {\oneVoice
       <do do'>4^(~ \voiceTwo q
       \oneVoice <si sold' si>~ \voiceTwo <si si'>
       \oneVoice <la la'>~ \voiceTwo q
       \oneVoice <sold sold'> <la la'>8)} >>
  r <fa'! la re fa!> r
  <mi sold si mi>4-> r
  << {r4 sol!~ sol fa~ fa8 mi( fa dod) re( do sib la)}
     \\ {la8.-> sib16 la
         \mg \voiceOne
         mi dod la
         \md \voiceTwo
         mi''4 fa sib,8 r sol r fa r fa mi} >>
  <re sold> r mi r
  << la2 \\ {fa8 r do r} >>
  <red fad la> r <la fad'> r
  << si'2 \\ {<re, sold>8 r re r} >>
  <sol sib do!> r do, r <fa sib do> r do r
  <red do'> r do r <mi do'> r do r
  %%% Q %%%
  << {<do' la'>4^( <lab' re>~ re do~ do) <sol do>~^(
      <sol sib> <fad la!> <sol sib>8)}
     \\ {fa2_(~ fa4 mi mib2 re)~ re8}
     \\ {s2 \voiceFour sol2 s s s8} >>
  r <sol, sib mib> r <fad la re>4-> r
  << {sib'( mib~ mib re~ re) <la re>~^(
      <la do> <sold si!> <la do>8)}
     \\ {sol2_(~ sol4 fad) fa2_( mi!4 re mi8)}
     \\ {s2 \voiceFour la2 s s s8} >>
  r <la, do fa> r <sold si mi>4-> r
  <mi la do>8 r
  << {fa'4~ fa fa r mi~ mi mi r re~ re re r re}
     \\ {fa,( sib la sold2) la4( sol fa2) sol4( fa mi) mi} >>
  <mi la do>8 r <do sol'! sib> r <do fa la> r <dod mi sol> r
  <re fa> r <la re> r <sold si mi> r r4
  R2 <mi' sold si mi>8 r r4
  R2 <sold si mi sold>8-> r r4
  R2*3
  %%% R %%%
  <la, re fa la>4\f <fa' la re fa>
  <mi sold si mi>8.\sf red16 mi sold si mi
  <la,, re fa la>4 <fa' la re fa>
  <mi sold si mi>8.\sf red16 mi sold si mi
  <la,, do mi la>8 r <mi' la do mi> r
  <la fa' la>4.^(\sf <mi' sol!>16 <re fa>)
  <mi, sold si mi>8.\sf red16 mi sold si mi
  la,, la do mi la8\noBeam <fa la re fa>
  <mi sold si mi>8.\sf red16 mi sold si mi
  la,, la do mi la8\noBeam <la re fa la>
  <sol re' sol>4 <mi sol do mi>
  <fa si re>8.^( do'16) si8 <fa la>
  <mi la do mi>4 <mi sold si>8^>^( do'16 si)
  <mi, la do mi>4 <mi sold si>8^>^( do'16 si)
  <sold, mi'>8^>^( fa'16 mi) si'8->(\cresc do16 si)
  mi8->( fa16 mi) mi'8->( fa16 mi)
  <la,,, re fa la>8\f r <fa' la re fa> r
  <mi sold si mi>8.\sf red16 mi sold si mi
  la,8 r <la re fad la> r
  <sol si re sol>8.\sf fad16 sol si re sol
  <mi, sol do mi>8 r r4
  R2 r4 <re' fad la>-> <re sol>8 r <do mi sol> fa!16 mi
  <la, do re>8 r <si! re fa> r <do mi> r r4
  R2 r4 <mi fad do'>8 r <si mi sol> r <si mi fad> <si red si'>
  mi->\noBeam <si, mi>[ q q] q[ q q q]
  mi-> r <si' red>16 <do mi> <la fad'> <si sold'>
  <do la'> <mi si'> <la do> <sold si>
  <si re> <la do> <sold si> <fad la>
  <mi sold si mi>8->\noBeam <re, mi>[ q q]
  q[ q q q]
  <la mi' la>-> r sold'16 la sib la
  <dod mi> <re fa> <mi sol> <dod mi>
  <fa la> <mi sol> <re fa> <dod mi>
  <fa, re' fa>4-> r8 <sib mi>
  <fa la fa'> r r <sib mi>
  <fa la fa'>4 <fa la>~ q <mi la>
  <red fad la do>8 r r <mi la>
  <red fad la do>8 r r <mi la>
  <red fad la do>4 red'^(~
  <fad, si red>\cresc <fad si red fad>)
  <fa si re fa>8\p r r4 mi-> r
  <fa! si re fa!>8\pp r r4 r <re fad la>8 r
  <re sol re'>\cresc r sol r do r <la, do fad> r
  <si si'>\! r r <red fad do'> <mi si'> r r <red fad do'>
  << mi'2 \\ {
    si16 mi, si' mi, si' mi, si' mi,} >>
  << la'2 \\ {
    mi16\cresc la, mi' la, red la red la\!} >>
  <si mi sold>4
  << {mi~ mi mi} \\ {<mi, sold>_( <fad la>\> <sold si>) <>\!} >>
  %%% S %%%
  \key la \major
  <mi la dod mi>2 <fad la re fad>2*1/4 s4.\<
  <re sold re'>8.\f si'16 lad si dod re
  <dod, dod'>8.\f la'16 sold la si dod
  <mi, la dod mi>2 <re la' re>\<
  <re sold re'>16\f si'16 lad si lad si dod re
  <dod, dod'>\f la'16 sold la sold la si dod
  \clef bass
  dod,4(\p <la sid>) <sold dod>2\fp
  dod4(\p <la sid>) <sold dod>2\fp
  r8 <sold si! mi>4 q8 \clef treble
  << {re''4(^\fp sold,8)} \\ {r8 <re sold>4} >>
  r8 r <si re mi>4 q8
  << {fad''4(^\fp sid,8)} \\ {r8 <re, mi>4} >>
  r8 r <dod mi>4 q8 q4.( <sid red>8)
  << {\oneVoice dod(\< mi la si \voiceOne dod\> sold la sol)\!}
     \\ {s2 r8 mi4 s8} >>
  fad-. <lad, dod mi fad>4 q8
  << {mi''4(^\fp lad,8)} \\ {r <mi fad>4} >> r8
  r <dod mi fad>4 q8
  << {sol'4(^\fp fad8)\noBeam} \\ {r <dod mi>4} >>
  fad8 <re fad> r r4
  <si' re>^( <la dod>)
  R2
  << {mi'8( re4 dod8)} \\ {fad,8( sold4 la8)} >>
  %%% T %%%
  <fad fad'> r r4 <sol lad sol'>8 r r4
  <fad si fad'>8 r r4 <fa sold! fa'>8 r r4
  <mi la mi'>8 r r4
  << {la2~ la~ la}
     \\ {la,2~ la <re fa>4_( <dod mi>)}
     \\ {\voiceFour re mi sol fad s2} >>
  << {\oneVoice <si, red la'>4^( <red lad'>
      \voiceOne dod'8.->)\( si16 la sold fad mi\)}
     \\ {s2 <re mi>} >>
  <sol sol'>4\fp^( dod8) r
  <re, re'>4\fp( sold8) r
  <si, si'>4\fp( red8) r
  \clef bass
  <la la'>4( <mi mi'> <fad la fad'>8) r r4
  <lad dod sol'>8 r r4 <si re fad>8 r r4
  <lad dod sol'>8 r r4 <si fad'>8 r r4 R2
  \clef treble
  r8 <dod lad'>-. <re si'>-. <lad' dod>-.
  <si re>-. <mi, dod' mi>-. <fad re' fad>-. <si re si'>-.
  <sib fa' sib>-> r r4 R2
  <la do fad la>8-> r r4 R2
  <mi la dod mi>8-> r r4
  <si'' re>^( <la dod> <re, sold si> <dod la'>
  <si re sold> <la do fad>) <sold si mi>8-> r r4
  R2*2
  \clef bass mi16\< mi, mi' mi, mi' mi, mi' mi,
  %%% U %%%
  <la dod fad la>8\f r \clef treble <fad' la si fad'> r
  <mi sold si mi>8.-> red16 mi sold si mi
  <dod, mi la dod>8 r <la' dod fad la> r
  <sold sid red sold>8.-> fadd16 sold sid red sold
  <mi, dod' mi>4
  << {<fad' dod'>~ q si~ si <fad la> q <re sold>}
     \\ {
       mi16\sf dod mi dod re dod re dod
       re\sf si re si dod si dod si
       dod\sf la dod la si la si la si sold si sold} >>
  <dod mi la dod>8. la'16 <re, fa lad>-> si' dod re
  <dod, mi la dod>8. la'16 <re, fa lad>-> si' dod re
  <dod, mi dod'>8 << {la'4 mi8~ mi} \\ {la,4 mi8~ mi} >>
  dod'4 la8
  <fa la re fa>8. re'16 <sib dod red>-> mi fa sol
  <fa, la re fa>8. re'16 <sib dod red>-> mi fa sol
  <la, re fa>8 re4 la8~ la fa4 re8
  <sib' re fa sib>4\ff r\fermata
  \cadenzaOn
  R2*7
  \bar "|"
  <do, re fad re'>8\f r r4\fermata
  \bar "|"
  R2*5
  \bar "|"
  \cadenzaOff
  <do! fad la do!>8\f r r4 R2
  %%% V %%%
  <re sol sib>8 r r4
  sib''-.\p re,-. sib-. re,-. R2*2
  la''4-. re,-. la-. re,-. R2*2
  <si'' re>4-. mi,-. <si dod!>-. mi,-.
  <la' dod>-. mi-. <fad,! fad'!>-. <fad la>-.
  <re'' fad>-. <fad, sold!>-. <re mi>-. <mi, la>-.
  <dod'' mi>-. <dod, la'>-.
  <red la' si>2\cresc <mi la dod>4. <mi fad>8
  <red la' si>2 <mi la dod>4. <mi fad>8
  <red la' si>2\! R2*3
  <sold re'! mi>2\mf <fad la re fad>4.\cresc <la si>8
  <sold re' mi>2 <fad la re fad>4. <la si>8
  <sold re' mi>2\! R2*2
  r4 <re, mi>8\f r
  %%% W %%%
  %% \tempo "Schneller."
  <dod' mi>4(-> la8) r <mi'' sol>4(->\mf <sol, dod>8) r
  <dod, mi>4(-> <dod, sol'>8) r  <sol' si>4(-> <sol, mid'>8) r
  << {\oneVoice fad'4^( <lad dod fad>)~^\(
      \voiceOne fad' re8 si\)}
     \\ {s2 re4 fad,} >>
  <mi la dod mi> r <mi si' re mi> r
  <dod' mi>4(-> la8) r <sol' si>4(-> <dod, mi>8) r
  <mi sol>4(-> <sol, dod>8) r <dod mi>4(-> <mi, sol>)
  <re fad>8 r r4 <lad' dod mi sol>8 r r4
  <re, fad>8 r r4 <lad' dod mi sol>8 r r4
  <fad si>2~ q
  << {<fad si fad'>2~\< q <>\f}
     \\ {la8[ la la la] la[ la la la]} >>
  <re, mi sold si mi> r r4
  R2*3
  <mi la dod>4\ff <la do red fad> <mi sold si mi>-> r
  <mi la dod> <la do red fad> <mi sold si mi>-> r
  <dod mi la dod>8 r r4 R2
  q8 r r4 q8 r r4 <dod mi la>8 r r4
  <la dod mi la>8\ff r r4 <la dod mi la>2\fermata
}

PianoMg = \relative do' {
  \clef bass
  \key la \minor
  \accidentalStyle Staff.piano
  <la do>1 <re, la' fa'> <la mi' do'>~ q4 r r2
  r la4 r r2 do4._( si8)
  r2 la4 r r2 la4 r
  r la r sold r la r si
  r do <fa, fa'>2 r <mi mi'>
  <mi mi'>4 r <fa fa'>2~ q2. q4
  <mi mi'> r <do do'> r r <mi mi'>2 <sol sol'>4
  <fad fad'>2_( <sol sol'>2*1/2\<) s4\>
  <fad fad'>2\! r4 <la la'>
  r sold r la r si r <re, re'>~_(
  q <do do'>) r <si si'> r <la la'> <la' la'> r
  r <la, la'>2 <la' la'>4
  r4 la_( do si8 la)
  r4 la r sold
  la r <re, re'> r
  r2 <mi mi'> <fa fa'>4 r <fad fad'>2
  r <sold sold'>4 r <la la'> r r2
  <fa fa'>4-> r r2 <mi mi'>4-> r r2 <mi mi'>4-> r r2
  %%% A %%%
  r4 <la, la'>2\sustainOn <la' la'>4*1/2 s\sustainOff
  <si, si'>2 <dod dod'>
  <re re'>4 <re re'>2\sustainOn <si si'>8.\sustainOff <re re'>16
  <mi mi'>8. <fa fa'>16 <re re'>2 <mi mi'>4~
  q8 <fa fa'>4 <fad fad'> <sol! sol'!> <sold sold'>8
  <la la'>4 <la' do>2 <la, la'>4 <sold sold'>8\noBeam
  mi'([ do' si] sold mi re si)
  <la, la'> r <la'' do>2 <la,, la'>8 <do do'>
  <si si'>\noBeam sol''([ mi'! re] si sol fa re)
  <do, do'>4 <do' sib'>2 sib'8. sib16
  <do, la' do>4 q <do sol' si!> <do sol' si>
  <do sol' do> <mi, mi'>2 <sold mi'>4
  <la la'>2 <fa fa'>~ q4 q <mi mi'>2~ q
  <re re'>~ q4 q <do do'> <do' do'> <re, re'> r r2
  R1
  r4 <sol sol'>2\p <sol sol'>4 q1
  r4 q2 q4 q1 r4
  << {fa'^( mi re)} \\ {fa,_( mi <re sol>)} \\ {sol2 s4} >>
  <do, sol' do> r do'-. r8 do-. do4( si) do-. r8 do-.
  do( si4 sib la lab8) sol2( la4 si) do r r mi,(
  fa) r fa' r mi mi( <fad la> <sold si> <la do>) r r do, si
  << {<fa! fa'!>_( <mi mi'> <re re'> <do do'>)} \\ {sol'2 sol4 s} >>
  r <do' re>-. r8 <do re>-. << re2 \\ {<do fa!>4_( si)} >>
  <do re>-. r8 <do re>-. << re2 \\ {<do fa!>4_( si)} >>
  r do( si) r r si, do r r fa'( mi) r r mi,
  fa2 sol la si <do, do'>4-> r r do si r r sol
  <do, do'> r r do''8 r si r la r sol r fa r mi r r4
  << {\hideNotes sol2~ \unHideNotes sol^( fad4) r}
     \\ {<mib sol>2^>_( re) r} >> r2
  << {\hideNotes la'2~ \unHideNotes la^( sold4) r}
     \\ {<fa! la>2^>_( mi) r} >>
  <mi sol>4 r \clef treble <fa' sol sib>-. r8 q-.
  <mi sol sib>4-. r <fa sol sib>-. r8 q-.
  <mi sol sib>4-. r r2 \clef bass
  r2 r4 <sol,, sol'>-. <fad fad'>-. r \clef treble
  <sol'' sib dod>-. r8 q-. <fad la>4-. r
  <sol sib dod>-. r8 q-. <fad la>1 \clef bass
  <fad, do'!>
  <sol do>4 r <sol, sol'>-> r r2 <sol sol'>4-> r
  q1~ q2 <sol' mi' sol>4.^( <sol mib' fad>8)
  <sol re'>1\sustainOn
  \repeat tremolo 4 {sol,16 sol'}
  \repeat tremolo 4 {sol, sol'}
  %%% B %%%
  \tuplet 3/2 4 {
    sold,8-.\noBeam sold'[-._\markup \italic "marcato"
    fad]-. sold-. fad-. mi-.
  } la,4-. r
  \tuplet 3/2 4 {
    sold8-.\noBeam sold'[-. fad]-. sold-. fad-. mi-.
  } la,4-. r
  \tupletOff
  <sold sold'>1\sf <do mi do'>2. <si si'>4
  \tuplet 3/2 4 {
    <la la'>8-.\noBeam do'[-. si-.] do-. si-. la-.
  } re,4-. r
  \tuplet 3/2 4 {
    la8-.\noBeam do'[-. si-.] do-. si-. la-.
  } re,4-. r
  <do mi do'>1\sf <si mi si'>2. <la la'>4
  <fa fa'> r r2 sib2. r4 <fad re'>1->
  \tuplet 3/2 4 {
    sol8-.\noBeam sib'[-. la-.] sib-. la-. sol-.
  } do,4-. r
  \tuplet 3/2 4 {
    sol8-.\noBeam sib'[-. la-.] sib-. la-. sol-.
  } do,4-. r
  sol-. r r2
  << {mi'4 r fa2( sol4)} \\ {do,, r re2( mi4)} >>
  r <fa fa'>2~ q4 r r2 r4 mi_( <fa fa'>2)~ q4 r r2
  R1
  <re re'>8 r r4 r2
  R1
  <mi mi'>8 r r4 r2
  %%% C %%%
  R1
  <re re'>2. r4 <mi mi'>2. r4
  \tuplet 3/2 4 {
    mi8-.\noBeam sol'[-. fad-.] sol-. fad-. mi-.
  } fad,-. r r4
  la r <la, la'> r
  \tuplet 3/2 4 {
    r8 la''8-. sold-. la-. sold-. fad-.
  } sold,4-. r
  r sid(\p <fad fad'> <mi mi'>8 <red red'>)
  <fad fad'>4( <mi mi'>2) <red red'>4 <dod dod'>1
  << {mib'2. mi4( fa)} \\ {mib,1~ mib4} >>
  la(\p <mib mib'> <reb reb'>8 <do do'>)
  <mib mib'>4( <reb reb'>2 <do do'>4) <sib sib'>1
  r4 <do do'>8-> r <sib sib'>-> r <do do'>-> <sib sib'>->
  <la la'> r r4 <sib'' reb>8-. r r4
  <la do>8-. r r4 <sib reb>8-. r r4
  <la do>8-. r r4 r2
  R1 r2
  <do mib>8-. r r4 <si! re>8-. r r4
  <do mib>8-. r r4 <si! re>8-. r r4
  r2 <do,, do'>4 r r2
  %%% D %%%
  r
  <reb'' fab>_(^\( <do mib>4)\) r
  <reb fab>2_(^\( <do mib>4)\)
  mib->-. reb->-. mib8->-. reb->-.
  dob4->-. dob->-. sib->-. dob8->-. sib->-.
  lab4->-. r
  << {\hideNotes reb2^( \unHideNotes dob4)}
     \\ {<sib reb>2_( dob4)} >> r
  <sib reb>2_(^\( dob4)\)
  mib->-. reb->-. mib8->-. reb->-.
  dob4->-. dob->-. sib->-. dob8->-. sib->-.
  lab4->-. r si! r r2 si!4 r
  R1*2
  r4 <fad la>-. <mid sold>-. <fad la>8-. <mid sold>-.
  << {<fad la>4-. r r2 s2} \\ {dod1~ \oneVoice <dod, dod'>2} >>
  fad r4 <sold sold'>-._\markup \italic "marc."
  <fad fad'>-. <sold sold'>8-. <fad fad'>-. q4_( <mid mid'>) r2
  <la dod fad la>2. fad4 fad2( mid) fad( si) la( lad)
  << {red'( re)} \\ <si, fad'>1 >>
  <dod, dod'>4 r r2
  R1
  q4 r q r q r r r8 q q4 r q r q2->_( <re re'>4) r
  r2 dod'4 r do r si r la r <re, re'> r
  %%% E %%%
  sol2 r r <sol sol'>4 r <sol, sol'> r r2
  r q4 r do!1 fa! mi
  r4 fad_( do' si8 la)
  r4 la r sold r la r si
  r do <fa, fa'>2 r <mi mi'>
  q4 r <fa fa'>2~ q2. q4 <mi mi'> r <do do'> r
  r <mi mi'>2 <sol sol'>4
  <fad fad'>2_( <sol sol'>2*1/2)\< s\>
  <fad fad'>2\! r4 <la la'>
  r sold r la si r <re, re'>_(~
  q <do do'>) r <si si'> r <la la'> <la' la'> r
  r <la, la'>2 <la' la'>4 r
  r la_( do si8 la)
  r4 la r sold la r <re, re'> r
  r2 <mi mi'> <fa fa'>4 r <fad fad'>2
  r <sold sold'>4 r <la la'> r r2
  <fa fa'>4-> r r2 <mi mi'>4-> r r2 q4-> r r2
  %%% F %%%
  r4 <la, la'>2\sustainOn <la' la'>4*1/2 s\sustainOff
  <si, si'>2 <dod dod'>
  <re re'>4 <re re'>2\sustainOn <si si'>8.\sustainOff <re re'>16
  <mi mi'>8. <fa fa'>16 <re re'>2 <mi mi'>4~
  q8 <fa fa'>4 <fad fad'> <sol! sol'!> <sold sold'>8
  <la la'>4 <la' do>2 <la, la'>4 <sold sold'>8\noBeam
  mi'([ do' si] sold mi re si)
  <la, la'> r <la'' do>2 <la,, la'>8 <do do'>
  <si si'>\noBeam sol''([ mi'! re] si sol fa re)
  <do, do'>4 <do' sib'>2 sib'8. sib16
  <do, la' do>4 q <do sol' si!> <do sol' si>
  <do sol' do> <mi, mi'>2 <sold mi'>4
  <la la'>2 <fa fa'> <mi mi'>4 r r2
  R1 r4 <mi' mi'>2^\p q4
  \key la \major
  q1 r4 q2 q4 q1
  r4 <re, re'>_( <dod dod'> <si si'>) <la la'> r
  la''-. r8 la-. la4( sold) la-. r8 la-.
  la( sold4 sol fad fa8)
  mi2( fad4 sold)
  la r r dod,( re) r
  << {fa2( mi4)} \\ {re r dod} >>
  dod^( <red fad> <mid sold> <fad la>) r r la,
  sold <re! re'!>_( <dod dod'> <si si'>)
  <la la'> r <la'' si red>-. r8 <la si>-.
  << si2 \\ {<la re>4_( sold)} >>
  <la si red>-. r8 <la si>-.
  << si2 \\ {<la re>4_( sold)} >>
  r la( sold) r r sold, la r r re'( dod) r r dod,
  re2 mi fad sold la4-> r r la, sold r r mi' la, r r
  la'8 r sold r fad r mi r re r dod r r4
  << {mi2->~ mi red4 r} \\ {do2_( si) r} >> r2
  << {fad'2->~ fad mid4 r} \\ {re!2_( dod) r} >>
  <dod mi>4 r <re' mi>-. r8 q-. <dod mi>4-. r <re mi>4-. r8 q-.
  <dod mi>4-. r r2 r r4 mi,-.
  red-. r <mi' sol>-. r8 q-. <red fad>4-. r <mi sol>-. r8 q-.
  <red fad>1 <red, la'> <mi la>4 r <mi, mi'> r r2 q4 r
  <mi' la>1~ q2 <mi dod'>4.^( <mi do' red>8)
  <mi si'>1 <mi, mi'>
  %%% G %%%
  \tupletOn
  \tuplet 3/2 4 {
    fa8-.\noBeam la'-.[^\markup \italic "marcato"
    sold-.] la-. sol-. fa-.
    \tupletOff
    r reb'-. do-. reb-. do-. sib-.
    fa,-.\noBeam la'-.[ sold-.] la-. sol-. fa-.
    r reb'-. do-. reb-. do-. sib-.
  }
  \repeat tremolo 4 {fa,16 fa'}
  \repeat tremolo 4 {fa, fa'}
  <mi mi'>2. <re re'>4
  \tuplet 3/2 4 {
    dod8-.\noBeam sib'-.[ la-.] sib-. la-. sol-.
    re-.\noBeam fa'-.[ mi-.] fa-. mi-. re-.
    dod,-.\noBeam sib'-.[ la-.] sib-. la-. sol-.
    re-.\noBeam fa'-.[ mi-.] fa-. mi-. re-.
  }
  \repeat tremolo 4 {dod,,16 dod'}
  \repeat tremolo 4 {dod, dod'}
  <fa, fa'>2. <mi mi'>4
  <re re'>8\sustainOn r r4 r2*3/4 s8\sustainOff
  <sib sib'>\sustainOn r r4 r2*3/4 s8\sustainOff
  fad'!\noBeam \sustainOn dod'![ re fad]
  la re fad <>\sustainOff
  \stemDown \md la
  \stemNeutral \mg
  << {r8 re,, dod! re sold! si re
      \voiceTwo \md sold}
     \\ {fa,,2\sustainOn mi4*3/4 s8\sustainOff} >>
  r2 <re mi'>8\sustainOn r r4*1/2 s\sustainOff
  \voiceTwo r2 \oneVoice <do do'>4 r
  << {r8 mi' red mi sold si mi sold} \\ {r2 sold,,4 r} >>
  << {r8 mi' red mi lad dod
      \stemDown \md mi lad}
     \\ {sol,,2 fad} >>
  %% \tempo "Etwas zurückhaltend"
  <solb' sib>1_(^\( <fa do'>)\)
  << {fad2( sol4)} \\ sib,2. >> r4
  << {s1 s2 fa'~ fa4^( mi re' do)}
     \\ {\oneVoice r2 <sib,, sib'>_( <la la'>
         \voiceTwo sib) do1} >>
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %% \tempo "Langsam"
  \key fa \major
  fa4 r fa r
  << {fa'4.( mib8) re4.( sib8) mi2( do) fa1}
     \\ {fa,4 r r2 fa4 r r2 fa4 r r r8 si}
     \\ {s1 s2 \tuplet 3/2 4 {
       r8 <sib' do mi sol> q r <sib do mi sold> q}} >>
  <do,, do'>4 r
  << {fa'2~( fa mib) la4( sol)
      \tuplet 3/2 4 {r8 <sol re'> q <sold re'> q q}}
     \\ {mib4 r re r do r si r si r8 re}
     \\ {s2 s1 re2 s} >>
  <do do'>4 r <do, do'> r <fa fa'> r
  <fa' la>2_(~ q <si, re'> <do mi'>4) r r2
  <fa la>2_( <sold, si'> <la la'>4) r r2
  <re, re'>4 r
  << {reb'2( do) fa4.( mib8) re4( fad) sol,( si) do1}
     \\ {reb,4 r do r fa r re r sol, r do r do r} >>
  %%% H %%%
  << {
      r8 do'( fa do fa do fa do)
      fa( do fa do fa do fa <mi sol>
      fa do fa do) fa( do fa do
      fa do fa do) sol'( re sol mi
      la dod, la' dod,) la'( re, la' re,
      la' re, sol re) sol( reb sol do,
      fa do fa do) fa( re fa re
      fa do fa do fa do fa <mi sol>)
     } \\ {
      fa,4 r fa r r2 fa4 r
      fa r fa r r2 sol4 r
      la r fad r sol r mi r
      fa r si, r do r r2
     } \\ {
      s1*4
      mi'2 s
      s1*3
  } >>
  <fa, fa'>4 r q r
  << {fa'4.( mib8) re4.( sib8) mi2( do) fa1}
     \\ {fa,4 r r2 fa4 r r2 fa4 r r r8 si}
     \\ {s1 s2 \tuplet 3/2 4 {
       r8 <sib' do mi sol> q r <sib do mi sold> q}} >>
  <do,, do'>4 r
  << {fa'2~( fa mib) la4( sol)
      \tuplet 3/2 4 {r8 <sol re'> q <sold re'> q q}}
     \\ {mib4 r re r do r si r si r8 re}
     \\ {s2 s1 re2 s} >>
  <do do'>4 r <do, do'> r <fa fa'> r r2
  %% \tempo "Etwas lebhafter"
  << {do''1~ do}\\ {fa,1_( mi)} \\ {s1 r8 la4 la la la8} >>
  mi2 \acciaccatura la,,8 la'4 r
  << {mi''2( red4)} \\ fad,2. >> r4
  <la,, la'>8 r r4 <sold sold'>8 r r4 <la la'>2. r4
  q8 r r4 <sold sold'>8 r r4 <la' do la'>2_(^\( <lab lab'>)\)
  %% \tempo "Erstes Tempo"
  <sol sol'> r <fad fad'> r8 <la' do>4 q8
  <sol, sol'>4. r8 r2
  %% \tempo "Schneller"
  <sold, sold'>1 <la la'> <sold sold'>~ q
  <sol sol'>2 <la la'>4.._( <sib sib'>16)
  q2 r r <la la'>4.._( <sib sib'>16) q2 r
  <la la'>4 r r2
  R1*5
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %% \tempo "Sehr lebhaft"
  \key la \minor
  re'8 r <re, re'> r <mi mi'>4-> r
  re'8 r <re, re'> r <mi mi'>4-> r
  <la mi' la>8 r <do, do'> r <re re'>2
  <mi mi'>8 r r4 mi'8 r r re
  <mi, mi'> r r4 <la la'>8 r r <do do'>
  <si si'> r <do do'> r <re, re'> r r4
  <mi mi'>8 r q^> r q r q^> r
  %%% J %%%
  \repeat tremolo 4 {mi16_\markup \italic "trem." mi'}
  \repeat tremolo 4 {mi, mi'}
  <re, re'>8 r <re re'> r
  <mi mi'>8. red'16 mi sold si mi
  <la,, la'>8 r <re,! re'!> r
  <sol sol'>8. fad'16 sol si re sol
  <do,, do'>8 r r4
  R2 r4 do'-> si sib8 la16 sol
  fa8 r <sol, sol'> r <do, do'> r r4 R2
  r4 la''8 r si r si, si
  <mi, mi'>->\noBeam <mi' sold>[ q q] q[ q q q]
  <mi, mi'>->\noBeam <mi' do' mi>[ q q] q[ q q <mi do' red>]
  <mi, mi'>->\noBeam <mi' sold>[ q q] q[ q q q]
  <dod, dod'>->\noBeam <la'' mi' sol!>[ q q] q[ q q q]
  re,4-> r8 <sol mi'> re r r <sol mi'>
  re4 re~ re do! si!8 r r do' si, r r do'
  si,2 si4( la) <sold, sold'>8 r_\markup \italic "marc."
  <re' re'> r <do do'>4-> r
  <sold sold'>8 r <re' re'> r <do do'> r <re re'> r
  <si si'> r <sol' sol'> r la r red r
  sol, r r <la la'> sol r r <la la'>
  <sol sol'>2 <fa! fa'!> <mi mi'>
  << {<mi mi'>4_(^\( <re! re'!>)\)} \\ sol2 >>
  \acciaccatura do,8 sib''8.-> sol16 fad sol la sib
  la8.-> fa16 mi fa sol la
  <do, sol' re'>2 <do sol' do>
  <do sib'>16 sol' fad sol fad sol la sib
  la fa mi fa mi fa sol la
  <do, sol' re'>2 <do sol' do>
  %%% L %%%
  <do, do'>4 <si si'> <mi mi'>2
  <do do'>4 <si si'> <mi mi'>2
  <fa! fa'!>8 r r4
  << {sol'8.-> fad16 sol si \md \voiceTwo re sol}
     \\ {re,8 r r4} >>
  <si, si'>8 r r4
  << {sol''8.-> fad16 sol si \md \voiceTwo red sol}
     \\ {sol,,8 r r4} >>
  sol8 r r4
  R2 sol8 r r4
  << {sol'8.-> fad16 sol do \md \voiceTwo mi sol}
     \\ {sol,,8 r r4} >>
  sol8 r r4
  << {la'8.-> sold16 la dod \md \voiceTwo mi la}
     \\ {mi,8 r r4} >>
  <dod, dod'>8 r r4
  << {la''8.-> sold16 la dod \md \voiceTwo mi la}
     \\ {sol,,8 r r4} >>
  << {fa'4.( mi8) la( si do sol)} \\ {sol,4 r re'4( mi)} >>
  << {fa4.( mi8) re4( do)} \\ {sol2~_( sol4 la)} >>
  <fa fa'>8 r r4 sol'8 r r4
  <fa, fa'>8 r r4 q8 r r4 <mi mi'>8 r r4
  << {re'( mi sol fa)~ \nudge \once \hideNotes fa s <la, fad'>2}
     \\ {re,4_( mi sol fa)~ \nudge <fa fa'>_( <sol mi'>
         \once \hideNotes la2)}
     \\ {\voiceFour do2~ do2*1/2 s2 s} >>
  <si sol'>->
  <do, do'>4 r <re' do'> r <red, do'> r <mi do'> r
  <fa fa'>8 r r4 fa'8 r r4
  <fa, fa'>8 r r4 fa'8 r r4
  <fa, fa'>8 r r4 r8
  <sol sol'>-. <fa fa'>-. <mi mi'>-. <re re'>-.\noBeam
  <sib' sib'>-. <la la'>-. <sol sol'>-. <fa fa'>-.
  <mi mi'>-. <re re'>-. la'-. fa-> r r4
  R2 fad8-> r r4
  R2 <sol sol'>2~ q~ q~ q q8-> r r4
  R2*2 sol2
  %%% N %%%
  <la la'>8 r <fad re' la'> r
  <sol sol'>8.-> fad'16 sol si re sol
  <do,, do'>8 r <la mi' do'> r
  <si si'>8.-> lad'16 si red \md \voiceTwo fad si
  \mg \oneVoice <mi,, mi'>4 <dod la' mi'>~ <re la' re>
  <si sol' re'>~ <do sol' do> <la mi' do'> <fa fa'> <sol sol'>
  <do, do'> <fa' si fa'>-> <do, do'> <fa' si fa'>->
  <do, do'>8 do''4 sol8~ sol mi4 do8
  %%% O %%%
  <si, si'> r r4 si'8 r r4 <si, si'>8 r r4
  R2
  <sold sold'>8 r r <re'! re'!> <do do'> r r <si si'>
  <la la'> r r4
  R2
  r4 r8 <la' la'> <sol sol'> r r <fad fad'>
  <mi mi'> r r4
  R2
  q8 r r4 <re re'>8 r r4 q8 r r4
  <do do'>8 r r4 <si si'>8 r r4 <mi mi'>8 r r4
  %%% P %%%
  <la, la'>8 r <re re'> r <mi mi'>4-> r
  la8 r r4 sol!8 r  <sol sol'> r
  <fad fad'> r <si si'> r <sol sol'> r <la la'> r
  <si si'>4-> r <mi, mi'>8 r r4
  <re re'>8 r <re' re'> r <do, do'> r <do' do'> r
  <si, si'> r <mi mi'> r <do do'> r <re re'> r
  <mi mi'>4-> r
  r \voiceTwo dod'8 r \oneVoice
  <re, re'> r <re' re'> r
  <sol, sol'> r <la la'> r <sib sib'> r <re re'> <do! do'!>
  <si si'> r r4 <do do'>8 r <mi, mi'> r mi'2
  re!8 r mi, r <mi mi'> r r4
  <do' do'>8 r <fa, fa'> r
  <do' do'> r <fad, fad'> r
  <do' do'> r <sol sol'> r
  %%% Q %%%
  <fa fa'> r r4
  R2 sol''8.-> lab16 sol mib do sol
  R2 <sol, sol'>8 r <do, do'> r <re re'>4-> r
  R2*2 la'''8. sib16 la fa re la
  R2 <mi mi'>8 r <mi red'> r <mi, mi'> r <mi' mi'> r
  <mi, mi'> r r4
  << {re''4( do si!2)} \\ {mi,2~ mi} >>
  << {do'4( sib la2)} \\ {mi2~ mi} >>
  << {sib'4( la sol! sold)} \\ {mi2~ mi} >>
  <mi la>8 r <mi, do'> r <mi fa'> r <mi la> r
  <mi re'> r <mi fa'> r <mi mi'> r r4
  R2 <mi mi'>8 r r4
  R2 <mi mi'>8-> r r4
  R2*3
  %%% R %%%
  re'4 <re, re'> <mi mi'>8. red'16 mi sold si mi
  re,4 <re, re'> <mi mi'>8. red'16 mi sold si mi
  la,,8 r <do, do'> r <re re'>2
  <mi mi'>8. red'16 mi sold si mi
  la,, la do mi la8\noBeam <re,,! re'!>
  <mi mi'>8. red'16 mi sold si mi
  la,, la do mi la8\noBeam <do, do'>
  <si si'>4 <do do'> <re, re'>4. q8
  <mi mi'>4 mi'-> <mi, mi'> mi'->
  <>_\markup \italic "trem."
  \repeat tremolo 4 {mi,16 mi'}
  \repeat tremolo 4 {mi, mi'}
  <re, re'>8 r q r
  <mi mi'>8. red'16 mi sold si mi
  <la,, la'>8 r <re,! re'!> r
  <sol sol'>8. fad'16 sol si re sol
  <do,, do'>8 r r4
  R2 r4 do'-> si sib8 la16 sol
  fa8 r <sol, sol'> r <do, do'> r r4
  R2 r4 la''8 r si r si, si
  <mi, mi'>->\noBeam <mi' sold>[ q q] q[ q q q]
  <mi, mi'>->\noBeam <mi' do' mi>[ q q] q[ q q <mi do' red>]
  <mi, mi'>->\noBeam <mi' sold>[ q q] q[ q q q]
  <dod, dod'>->\noBeam <la'' mi' sol!>[ q q] q[ q q q]
  re,4-> r8 <sol mi'> re r r <sol mi'>
  re4 re~ re do! si!8 r r do' si, r r do'
  si,2 si4( la) sold8 r_\markup \italic "marc."
  <re re'> r <do do'>4-> r
  sold'8 r <re re'> r <do do'> r <re re'> r
  <si si'> r <sol' sol'> r la r red r
  sol, r r <la la'> sol r r <la la'>
  <sol sol'>2 <fa! fa'!> <mi mi'>4
  << {sold'( <fad la> <sold si>)} \\ {mi~ mi mi} >>
  %%% S %%%
  \key la \major
  << {sol8.-> mi16 red mi fad sol
      fad8.-> re16 dod re mi fad} \\ {la,2 la} >>
  <la mi' si'> <la mi' la>
  <la sol'>16 mi' red mi red mi fad sol
  fad re dod re dod re mi fad
  <la, mi' si'>2 <la mi' la>
  la4( sold) <dod, dod'>2
  la'4( sold) <dod, dod'>2
  <re re'>8 r r4
  << {mi'8.-> red16 mi sold si mi} \\ {si,8 r r4} >>
  sold8 r r4
  << {mi'8.-> red16 mi sold sid mi} \\ {mi,,8 r r4} >>
  <mi mi'>8 r r4 R2
  <mi mi'>8 r r4
  mi'8.-> red16 mi la dod mi
  <mi,, mi'>8 r r4
  << {fad'8.-> mid16 fad lad dod fad} \\ {dod,8 r r4} >>
  lad8 r r4
  << {fad'8.-> mid16 fad lad dod mi} \\ {mi,,8 r r4} >>
  << {re'4.( dod8) fad( sold la! mi) re4.( dod8) si4( la)}
     \\ {mi8 r r4 si'4( dod) mi,2 mi4( fad)} >>
  <re re'>8 r r4 <mi mi'>8 r r4
  <re re'>8 r r4 q8 r r4
  <dod dod'>8 r r4 <si si'>4( <dod dod'> <mi mi'> <re re'>)~
  q( <mi mi'> <fad fad'>2) <sold mi'>->
  <la, la'>4 r <si la'> r <sid la'> r <dod la'> r
  <re re'>8 r r4 re'8 r r4 <re, re'>8 r r4 re'8 r r4
  <re, re'>8 r r4 r8 <mi mi'>-. <re re'>-. <dod dod'>-.
  <si si'>-.\noBeam <sol' sol'>-. <fad fad'>-. <mi mi'>-.
  <re re'>-.\noBeam <dod' dod'>-. <si si'>-. <fad fad'>-.
  <re re'>-> r r4 R2
  <red red'>8-> r r4 R2
  <mi' mi'>2~ q~ q~ q q8-> r r4 R2*3
  %%% U %%%
  <fad, fad'>8 r <red red'> r
  <mi mi'>8.-> red'16 mi sold si mi
  <la,, la'>8 r <fad fad'> r
  <sold sold'>8.-> fadd'16 sold sid red sold
  <dod,, dod'>4 <lad fad' dod'>~ <si fad'>
  <sold mi' si'>~ <la mi'> <fad fad'>
  <re re'> <mi mi'> <la la'> <re' fa>->
  <la, la'> <re' fa>->
  <la, la'>8 r r4 r8 dod'4 la8
  <re,, re'>4 <re'' sol>-> <re,, re'> <re'' sol>->
  <re,, re'>8 re''4 la8~ la fa4 re8
  <re, sib' fa'>4 r\fermata
  \cadenzaOn
  R2*7
  \bar "|"
  <la' la'>8 r r4\fermata
  \bar "|"
  R2*5
  \bar "|"
  \cadenzaOff
  <re, re'>8 r r4 R2
  %%% V %%%
  <sol sol'>8 r r4 R2*2
  \acciaccatura sol8 sib'4-. re,-.
  \acciaccatura fa,8 la'4-. r R2*2
  \acciaccatura fa,8 la'4-. re,-.
  \acciaccatura mi,8 sold'!4-. r
  <mi, mi'>8 r r4 R2
  <mi mi'>8 r r4 R2
  <mi mi'>8 r r4 R2
  <mi mi'>8 r r4 <mi mi'>8 r r4 \clef treble
  <mi'' la dod>4. <mi fad>8 <red si'>2
  <mi la dod>4. <mi fad>8 <red si'>2 R2*3
  \clef bass R2
  \acciaccatura mi,8 <re' la'>2*3/4->\sustainOn s8\sustainOff
  R2
  \acciaccatura mi,8 <re' la'>2*3/4->\sustainOn s8\sustainOff
  R2*3 r4 <mi,, mi'>8 r
  %%% W %%%
  %% \tempo "Schneller."
  <la, la'>4 r \clef treble <mi'''' sol>4(-> <sol, dod>8) r
  \clef bass <la,, la'>4 r R2
  r4 <fad fad'>( <si si'>) q mi r <mi, mi'> r
  <la la'> r \clef treble <sol'' si>(-> <dod, mi>8) r R2
  \clef bass <la, la'>4( <lad lad'>) <si si'>8 r r4
  <mi mi'>8 r r4 si8 r r4 <mi mi'>8 r r4
  << {si'8[ si si si] si[ si si si]} \\ {re,2~ re} >>
  <red, red'>2~ q <mi mi'>8 r r4 R2
  mi16 mi' mi, mi' mi, mi' mi, mi'
  mi, mi' mi, mi' mi, mi' mi, mi'
  <la, la'>4 <la' do> <la, mi' si'>-> r
  <la la'> <la' do> <la, mi' si'>-> r
  <la mi' la>8 r r4 R2 q8 r r4 q8 r r4 q8 r r4
  <la, la'>8 r r4 <la la'>2\fermata
}


\score {
  <<
    \new Staff \with { fontSize = #-3 instrumentName = "Violoncell." }
  \piify
    \Solo
    \new PianoStaff \with { instrumentName = "Pianoforte" } <<
      \new Staff = "md" \PianoMd
      \new Staff = "mg" \PianoMg
    >>
  >>
  \header {
    piece = \markup \fill-line { \epsfile #Y #40 #myplot }
  }
}

