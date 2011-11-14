%-- Étoile sans couleur -- mesures.ly -----------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>


Mesures = {
  \tempo "Adagio" 4 = 60
  \time 7/16
  \partial 16 s16
  R1*7/16*4
  \time 3/4
  s2.*2 \bar "||"
  s2.*22 \bar "||"
  s2.*19 \bar "||"
  s2.*19 \bar "||"
  \tempo "Quasi doppio tempo" 2 = 52~60
  \time 3/2
  %% Well, look at that: 9-11-14! \o/
  s1.*9 \bar "||"
  s1.*11 \bar "||"
  s1.*14 \bar "||"
  \tempo "Presto" 4 = 160~176
  \time 3/4
  %% 49 is 6+9+11+14+9
  %% (not necessarily in that order)
  s2.*49 \bar "||"
  \tempo "Tempo I"
  s2.*31 \bar "||"
  s2.*20 \bar "||"
  s2. \bar "|."
}


%- Beaming rules --------------------------------------------------%

%%% Default beaming is pretty dumb and ugly.
%%% (Or perhaps I may have a peculiar taste.)


#(define my-time-signature-settings
  (append modern-time-signature-settings
    '(
      ((3 . 2) .
       ((baseMoment . (1 . 4))
	(beamExceptions . ((end .  (((1 . 16) . (4 4 4 4 4 4))))))))
      ((3 . 4) .
       ((baseMoment . (1 . 8))
	(beamExceptions . ((end . (((1 . 8) . (2 4 6))))))))
    )))

\layout {
  \context {
    \Score
    timeSignatureSettings = #my-time-signature-settings
    subdivideBeams = ##t
  }
}

%------------------------------------------------------------------%
