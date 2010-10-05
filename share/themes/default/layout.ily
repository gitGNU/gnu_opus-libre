
\layout {
  \context {
    \Score
    subdivideBeams = ##t
  }
  \context {
    \Voice
    \override LaissezVibrerTie #'details =
      #'((height-limit . 2.0) ; default 1
        (note-head-gap . -2.6) ; default 0.2
        (horizontal-distance-penalty-factor . 51)) % default 10
    \override LaissezVibrerTie #'extra-offset =
    #'(2.5 . 0) % has to match note-head-gap. Sort of.
  }
}
