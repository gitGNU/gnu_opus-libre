%------------------------------------------------------------------%
% Opéra Libre -- livret_score.ly                                   %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


\include "italiano.ly"

\include "./definitions/common.ly"
\include "./definitions/functions.ly"
%%% Special hack for non-standard tempo indications
#(define-markup-command (mvt layout props arg) (markup?)
    (interpret-markup layout props
    (markup #:hspace 0)))

\include "./definitions/paper.ly"
\include "./definitions/layout.ly"
\include "./definitions/markup.ly"

\include "./texte/decoupage.ly"
\include "./texte/personnages.ly"
\include "./definitions/structure.ly"
\include "./texte/didascalies.ly"
\include "./definitions/mesures.ly"

\include "./texte/texte.ly"

\include "./voix/soprano1.ly"
\include "./voix/soprano2.ly"
\include "./voix/contralto.ly"
\include "./voix/tenor.ly"
\include "./voix/baryton1.ly"
\include "./voix/baryton2.ly"



%%%%%%%%%%%%%%%%%% Paper and layout declarations %%%%%%%%%%%%%%%%%%%

\paper {
  \includePaper
}

\layout {
  \includeLayout
  \context {
    \Score
    \override BarNumber #'transparent = ##t
  }
  \context {
    \TopLine
    \remove "Metronome_mark_engraver"
    
  }
}

%%%%%%%%%%%%%%%%% Scene-by-scene lyrics inclusion %%%%%%%%%%%%%%%%%%

Prologue = {
  <<
    \new TopLine \PrologueMesures
    \new InvisibleChoirStaff
      <<
        \new InvisibleStaff \new InvisibleVoice = "tenor" \PrologueTenor
        \new Lyrics \lyricsto "tenor" { \PrologueTenorTexte }
        \new InvisibleStaff \new InvisibleVoice = "baryton" \PrologueBarytonDeux
        \new Lyrics \lyricsto "baryton" { \PrologueBarytonDeuxTexte }
      >>
  >>
}


%%%%%%%%%%%%%%%%%%%%%%%%% The actual score %%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \header {
	  title = \OperaTitre
	  subtitle = \Livret
	  poet = \OperaLivret
	  composer =  \OperaPartition
    tagline = \OperaNotice
  }

  \score {
	  \Prologue
    \header {
      piece = \PrologueTitre
    }
  }
}
