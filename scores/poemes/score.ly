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

tt =
#(define-music-function (parser location music) (ly:music?)
#{ \times 4/5 $music #})

ttt =
#(define-music-function (parser location music) (ly:music?)
#{ \times 4/6 $music #})

pl =
#(define-music-function (parser location one two) (ly:music? ly:music?)
#{ << { \voiceTwo $one } \\ { \voiceOne $two } >> #})

dash = {
  \once \override LyricHyphen #'minimum-distance = #4
  \once \override LyricHyphen #'length = #2
  \once \override LyricHyphen #'thickness = #1.2
}

leftSyl = {
  \once \override LyricText #'self-alignment-X = #0.9
}

#(define (make-dynamic-extra dynamic string)
     (make-music
       'AbsoluteDynamicEvent
       'tweaks
         ;; calculate centering for text
         (list (cons (quote X-offset)
           (+ -0.5 (* -0.5 (string-length dynamic)))))
       'text
         (markup
           #:line (
               dynamic
               #:hspace -0.3
               #:normal-text #:italic string))
      ))
ppptresclair = #(make-dynamic-extra "ppp" "très clair")

\layout {
  \context {
    \Voice
    \remove Arpeggio_engraver
  }
  \context {
    \Staff
    \consists Arpeggio_engraver
  }
}


%%%%%%%%%%%%%%%%%%%%%%%%% Music Inclusion %%%%%%%%%%%%%%%%%%%%%%%%%%

\include "voix.ly"
\include "piano.ly"
\include "texte.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Titling %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
%   \score {
%     <<
%       \new Staff \new Voice = "soprano" \UnSoprano
%       \new Lyrics \lyricsto "soprano" \UnTexte
%       \new PianoStaff <<
%         \new Staff = "md" \UnPianoMd
%         \new Staff = "mg" \UnPianoMg
%       >>
%     >>
%     \header {
%       piece = "I"
%     }
%   }
  \score {
    <<
      \new Staff \new Voice = "soprano" \DeuxSoprano
      \new Lyrics \lyricsto "soprano" \DeuxTexte
      \new PianoStaff <<
        \new Staff = "md" \DeuxPianoMd
        \new Staff = "mg" \DeuxPianoMg
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
        \new Staff = "md" \TroisPianoMd
        \new Staff = "mg" \TroisPianoMg
      >>
    >>
    \header {
      piece = "III"
    }
  }
}
