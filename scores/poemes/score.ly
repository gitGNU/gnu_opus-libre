%-- Trois poèmes, pour voix et piano ------------------------------%
%                                                                  %
% (c) 2004-2010 Valentin Villenave <valentin@villenave.net>        %
%                                                                  %
%   By using this score, you must comply with the Creative Commons %
% Attribution-NonCommercial-ShareAlike license v3.0.               %
%------------------------------------------------------------------%

\version "2.13"

%% Music functions for standalone compilation ( %FIXME: remove)

t =
#(define-music-function (parser location music) (ly:music?)
#{ \times 2/3 $music #})

pl =
#(define-music-function (parser location one two) (ly:music? ly:music?)
#{ << { \voiceTwo $one } \\ { \voiceOne $two } >> #})


%%%%%%%%%%%%%%%%%%%%%%%%% Music Inclusion %%%%%%%%%%%%%%%%%%%%%%%%%%

\include "voix.ly"
\include "piano.ly"
\include "texte.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Titling %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \score {
    <<
      \new Staff \new Voice = "soprano" \UnSoprano
      \new Lyrics \lyricsto "soprano" \UnTexte
      \new PianoStaff <<
        \new Staff \UnPianoMd
        \new Staff \UnPianoMg
      >>
    >>
    \header {
      piece = "I"
    }
  }
  \score {
    <<
      \new Staff \new Voice = "soprano" \DeuxSoprano
      \new Lyrics \lyricsto "soprano" \DeuxTexte
      \new PianoStaff <<
        \new Staff \DeuxPianoMd
        \new Staff \DeuxPianoMg
      >>
    >>
    \header {
      piece = "II"
    }
  }
  \score {
    <<
      \new Staff \new Voice = "soprano" \TroisSoprano
      \new Lyrics \lyricsto "soprano" \TroisTexte
      \new PianoStaff <<
        \new Staff \TroisPianoMd
        \new Staff \TroisPianoMg
      >>
    >>
    \header {
      piece = "III"
    }
  }
}
