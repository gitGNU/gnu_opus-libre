%-- Étoile sans couleur -- mesures.ly -----------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

Mesures = {
  \tempo "Adagio" 4 = 60
  \time 7/16
  \partial 16 s16
      %% Why 7/16 to begin with?
      %% 'cause I'm mean, that's why.
  R1*7/16*4
  \time 3/4
      %% This was originally intended to be
      %% constrained with 6-9-11-14 rules,
      %% but it had to be softened in order
      %% for the dramatic progression to work.
  s2.*2 \bar "||"
  s2.*22 \bar "||"
  s2.*19 \bar "||"
  s2.*19 \bar "||"
  \tempo "Quasi doppio tempo" 2 = 52-60
  \time 3/2
      %% Well, look at that: 9-11-14! \o/
  s1.*9 \bar "||"
  s1.*11 \bar "||"
  s1.*14 \bar "||"
  \tempo "Presto" 4 = 160-176
  \time 3/4
      %% 49 is 6+9+11+14+9 (not necessarily in that order)
  s2.*49 \bar "||"
  \tempo "Tempo I" % Should probably be even calmer.
  s2.*31 \bar "||"
  s2.*20 \bar "||"
  s2. \bar "|."
}

%- Beaming rules --------------------------------------------------%

%%% Default LilyPond beaming is pretty dumb and ugly.
%%% (Or perhaps I may have a peculiar taste.)
%%% OTOH, I'm not sure I'll want these settings for
%%% other scores yet to come. Thus, I'm just overwriting
%%% the modern-time-signature-settings locally here,
%%% without merging these changes into the master branch.

#(define-public modern-time-signature-settings
  (append
    '(
      ((3 . 2) .
                ((beamExceptions . ((end . (((1 . 12) . (3 3 3 3 3 3))))))))
      ((3 . 4) .
                ((beamExceptions . ((end . (((1 . 8) . (2 2 2))))))))
     )
     modern-time-signature-settings))

%------------------------------------------------------------------%
