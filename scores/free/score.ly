%------------------------------------------------------------------%
% opus_libre -- main.ly                                            %
%                                                                  %
% (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        %
%                                                                  %
%     opus_libre is a free framework for GNU LilyPond: you may     %
% redistribute it and/or modify it under the terms of the GNU      %
% General Public License, version 3 or later: gnu.org/licenses     %
%                                                                  %
%------------------------------------------------------------------%

%#(ly:set-option 'old-relative)
\header {
  filename = "free.ly"
  title = "The Free Software Song"
  enteredby = "David Madore"
  
  tagline = \markup {
    \center-align {
      "Copyright © 1993 Richard Stallman"
      "Verbatim copying and distribution of this entire score is permitted in any medium,"
      "provided this notice is preserved."
      "Typeset by David Madore using GNU LilyPond."
    }
  }
}

\version "2.14"

%{
Changed a syllabification a little, converted to 1.3.122 (feb 18, 2001)
Han-Wen Nienhuys <hanwen@cs.uu.nl>

Converted to 2.4.2, fixed mistakes with alignment & spelling (dec 10, 2004)
Erik Sandberg <ersa9195@student.uu.se>

Converted to 2.10.33 and changed notes in bar 6 from CDCB to a halfnote D,
a quarternote C, and a whole note B (mar 25, 2010)
Jeanne Rasata <rms-assist@gnu.org>

Converted to 2.10, added closing barline.
Added some extenders and deleted one erroneous hyphen.
-- Wilbert Berendsen <info@wilbertberendsen.nl>
%}

%{
To the melody of Sadi Moma.
%}



\score { <<
    \new Staff \context Voice = VA <<
      \set Staff.midiInstrument = "whistle"
      \firstVoice
      >>
    \new Lyrics \lyricsto VA \wordsOne
    \new Lyrics \lyricsto VA \wordsTwo
    \new Lyrics \lyricsto VA \wordsThree
    
    \new Staff <<
      \set Staff.midiInstrument = "orchestral strings"
      \secondVoice
    >>
  >>
  
  \layout { }
  % this is approximately the tempo rms sang the song in his legendary recording.
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 110 2)
    }
  }
}

