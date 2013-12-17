%-- Sonate -- diagrams.ily -----------------------------------------%
% (c) 2013 Valentin Villenave <valentin@villenave.net>

%% These fingerings are (heavily) inspired by Wil Offerman’s
%% "Bamboo tones" study, in "For The Contemporary Flutist" (1992).

eflat =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . (b))
     (cc . (one two three four five sixR))
     (rh . (cis c )))

enatural =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . (b))
     (cc . (one two three four fiveR six))
     (rh . (cis c )))

fnatural =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . (b))
     (cc . (one two three fourR five six))
     (rh . (cis c )))

fsharp =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . (b))
     (cc . (one two threeR four five six))
     (rh . (cis c )))

gnatural =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . (b))
     (cc . (one two threeR four five six))
     (rh . (ees)))

gtrill =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . (b))
     (cc . (one two three))
     (rh . (dT ees)))

anatural =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . (b))
     (cc . (one twoR three))
     (rh . (ees)))

bflat =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . (b))
     (cc . (one four))
     (rh . (ees)))

bflattrill =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . (b bes))
     (cc . (one))
     (rh . (ees dT disT)))
  
bnatural =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . (b))
     (cc . (twoR three four five six))
     (rh . (ees)))

highc =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . (b))
     (cc . (twoR three four five))
     (rh . (ees)))

highcsharp =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . ())
     (cc . (twoR three four five))
     (rh . (ees)))

highd =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . ())
     (cc . (twoR threeR four five))
     (rh . (ees)))

highe =
\markup \override #'(size . 0.5) \woodwind-diagram #'flute
  #'((lh . ())
     (cc . (twoR three four five))
     (rh . (ees d dis)))

%#(print-keys-verbose 'flute (current-error-port))
