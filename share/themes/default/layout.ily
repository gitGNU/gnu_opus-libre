
%% Only cosmetic stuff.
%% i.e. don't use this file to fiddle with things that
%% affect input syntax, like ignoreMelismata etc.

\layout {
  \context {
    \Score
    subdivideBeams = ##t
    \override TrillPitchAccidental #'avoid-slur = #'inside
    \override TimeSignature #'style = #'()
    \override SystemStartBracket #'collapse-height = #1
    %\override SystemStartBrace #'collapse-height = #1
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t
    autoAccidentals = #modern-accidentals-style % see liblayout.scm
    autoCautionaries = #modern-cautionaries-style
    extraNatural = ##f
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
