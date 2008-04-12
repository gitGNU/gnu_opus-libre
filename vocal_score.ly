%------------------------------------------------------------------%
% Opéra Libre -- vocal_score.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "./texte/decoupage.ly"
\include "./texte/personnages.ly"
\include "./texte/didascalies.ly"

\include "./definitions/functions.ly"
\include "./definitions/structure.ly"
\include "./definitions/layout.ly"
\include "./definitions/mesures.ly"

\include "./texte/texte.ly"


\include "./voix/soprano1.ly"
\include "./voix/soprano2.ly"
\include "./voix/contralto.ly"
\include "./voix/tenor.ly"
\include "./voix/baryton1.ly"
\include "./voix/baryton2.ly"

\include "./instruments/reduction.ly" 

\layout {
  \context {
    \type "Engraver_group"
    \consists "Time_signature_engraver"
    \consists "Axis_group_engraver"
    \name "TimeSig"
  }
  \context {
    \Staff
    \type "Engraver_group"
    \name "StaffUp"
    \alias Staff
		\remove "Time_signature_engraver"
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 5)
  }
  \context {
    \StaffUp
    \type "Engraver_group"
    \name "StaffDown"
    \alias Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 3)
  }
  \context {
    \Staff
    \remove "Axis_group_engraver"
    \consists "Hara_kiri_engraver"
    \accepts "Lyrics"
    \override Beam #'auto-knee-gap = #'()
    \override VerticalAxisGroup #'remove-empty = ##t
  }
  \context { \PianoStaff 
    \denies "Staff"
    \accepts "TimeSig"
    \accepts "StaffUp"
    \accepts "StaffDown"
    \remove "Time_signature_engraver"
    connectArpeggios = ##f % to avoid collisions with pianoTimeSigs
  }
}

\paper {
  line-width = #180
  bottom-margin = #20
  ragged-bottom = ##f
  ragged-last-bottom = ##t
  left-margin = #20
 % systemSeparatorMarkup = \slashSeparator
 % between-system-space = 1.5\cm
 % between-system-padding = #1
 % annotate-spacing = ##t
}

Prologue = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "tenor" \PrologueTenor
    \new Lyrics \lyricsto "tenor" { \PrologueTenorTexte }
		\new Staff \new Voice = "baryton" \PrologueBarytonDeux
    \new Lyrics \lyricsto "baryton" { \PrologueBarytonDeuxTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\PrologueMainDroite
 	\new TimeSig {\PianoTimeSig \PrologueMesures}
	\new StaffDown = "gauche"		\PrologueMainGauche
		>> }
>>
}

ActeUnSceneUn = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "soprano" \ActeUnSceneUnSopranoUn
		\new Lyrics \lyricsto "soprano" { \ActeUnSceneUnSopranoUnTexte }
		\new Staff \new Voice = "barytonUn" \ActeUnSceneUnBarytonUn
		\new Lyrics \lyricsto "barytonUn" { \ActeUnSceneUnBarytonUnTexte }
		\new Staff \new Voice = "barytonDeux" \ActeUnSceneUnBarytonDeux
		\new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneUnBarytonDeuxTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneUnMainDroite
	\new TimeSig {\PianoTimeSig \ActeUnSceneUnMesures}
	\new StaffDown = "gauche"		\ActeUnSceneUnMainGauche
		>> }
>>
}

ActeUnSceneUnBis = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "barytonUn" \ActeUnSceneUnBisBarytonUn
		\new Lyrics \lyricsto "barytonUn" { \ActeUnSceneUnBisBarytonUnTexte }
		\new Staff \new Voice = "barytonDeux" \ActeUnSceneUnBisBarytonDeux
		\new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneUnBisBarytonDeuxTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneUnBisMainDroite
	\new TimeSig {\PianoTimeSig \ActeUnSceneUnBisMesures}
	\new StaffDown = "gauche"		\ActeUnSceneUnBisMainGauche
		>> }
>>
}


ActeUnSceneDeux = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "soprano" \ActeUnSceneDeuxSopranoDeux
		\new Lyrics \lyricsto "soprano" { \ActeUnSceneDeuxSopranoDeuxTexte }
		\new Staff \new Voice = "baryton" \ActeUnSceneDeuxBarytonDeux
		\new Lyrics \lyricsto "baryton" { \ActeUnSceneDeuxBarytonDeuxTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneDeuxMainDroite
	\new TimeSig {\PianoTimeSig \ActeUnSceneDeuxMesures}
	\new StaffDown = "gauche"		\ActeUnSceneDeuxMainGauche
		>> }
>>
}

ActeUnSceneTrois = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "tenor" \ActeUnSceneTroisTenor
		\new Lyrics \lyricsto "tenor" { \ActeUnSceneTroisTenorTexte }
		\new Staff \new Voice = "baryton" \ActeUnSceneTroisBarytonUn
		\new Lyrics \lyricsto "baryton" { \ActeUnSceneTroisBarytonUnTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneTroisMainDroite
	\new TimeSig {\PianoTimeSig \ActeUnSceneTroisMesures}
	\new StaffDown = "gauche"		\ActeUnSceneTroisMainGauche
		>> }
>>
}

ActeUnSceneTroisBis = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "alto" \ActeUnSceneTroisBisContralto
		\new Lyrics \lyricsto "alto" { \ActeUnSceneTroisBisContraltoTexte }
		\new Staff \new Voice = "barytonDeux" \ActeUnSceneTroisBisBarytonDeux
		\new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneTroisBisBarytonDeuxTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneTroisBisMainDroite
	\new TimeSig {\PianoTimeSig \ActeUnSceneTroisBisMesures}
	\new StaffDown = "gauche"		\ActeUnSceneTroisBisMainGauche
		>> }
>>
}

ActeUnSceneTroisTer = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "soprano" \ActeUnSceneTroisTerSopranoUn
		\new Lyrics \lyricsto "soprano" { \ActeUnSceneTroisTerSopranoUnTexte }
		\new Staff \new Voice = "barytonUn" \ActeUnSceneTroisTerBarytonUn
		\new Lyrics \lyricsto "barytonUn" { \ActeUnSceneTroisTerBarytonUnTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneTroisTerMainDroite
	\new TimeSig {\PianoTimeSig \ActeUnSceneTroisTerMesures}
	\new StaffDown = "gauche"		\ActeUnSceneTroisTerMainGauche
		>> }
>>
}

ActeUnSceneQuatre = { \ReductionLayout
<<
\new ChoirStaff
	 <<
		 \new Staff \new Voice = "soprano" \ActeUnSceneQuatreSopranoDeux
		 \new Lyrics \lyricsto "soprano" { \ActeUnSceneQuatreSopranoDeuxTexte }
     \new Staff \new Voice = "alto" \ActeUnSceneQuatreContralto
     \new Lyrics \lyricsto "alto" { \ActeUnSceneQuatreContraltoTexte }
     \new Staff \new Voice = "tenor" \ActeUnSceneQuatreTenor
     \new Lyrics \lyricsto "tenor" { \ActeUnSceneQuatreTenorTexte }
		 \new Staff \new Voice = "barytonUn" \ActeUnSceneQuatreBarytonUn
		 \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneQuatreBarytonUnTexte }
     \new Staff \new Voice = "barytonDeux" \ActeUnSceneQuatreBarytonDeux
     \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneQuatreBarytonDeuxTexte }
	 >>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneQuatreMainDroite
	\new TimeSig {\PianoTimeSig \ActeUnSceneQuatreMesures}
	\new StaffDown = "gauche"		\ActeUnSceneQuatreMainGauche
		>> }
>>
}

%{ Entracte={ \ReductionLayout
<<
\new ChoirStaff
 <<
    \new Staff \new Voice = "sopranoUn" \EntracteSopranoUn
		\new Lyrics \lyricsto "sopranoUn" { \EntracteSopranoUnTexte }
    \new Staff \new Voice = "sopranoDeux" \EntracteSopranoDeux
		\new Lyrics \lyricsto "sopranoDeux" { \EntracteSopranoDeuxTexte }
    \new Staff \new Voice = "alto" \EntracteAlto
    \new Lyrics \lyricsto "alto" { \EntracteAltoTexte }
    \new Staff \new Voice = "tenor" \EntracteTenor
    \new Lyrics \lyricsto "tenor" { \EntracteTenorTexte }
		\new Staff \new Voice = "barytonUn" \EntracteBarytonUn
		\new Lyrics \lyricsto "barytonUn" { \EntracteBarytonUnTexte }
    \new Staff \new Voice = "barytonDeux" \EntracteBarytonDeux
    \new Lyrics \lyricsto "barytonDeux" { \EntracteBarytonDeuxTexte }
    >> 
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\EntracteMainDroite
	\new TimeSig {\PianoTimeSig \EntracteMesures}
	\new StaffDown = "gauche"		\EntracteMainGauche
		>> }
>>
} %}

ActeDeuxSceneUn = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "sopranoUn" \ActeDeuxSceneUnSopranoUn
    \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneUnSopranoUnTexte }
		\new Staff \new Voice = "sopranoDeux" \ActeDeuxSceneUnSopranoDeux
    \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneUnSopranoDeuxTexte }
		\new Staff \new Voice = "contralto" \ActeDeuxSceneUnContralto
    \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneUnContraltoTexte }
	>>
	\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeDeuxSceneUnMainDroite
	\new TimeSig {\PianoTimeSig \ActeDeuxSceneUnMesures}
	\new StaffDown = "gauche"		\ActeDeuxSceneUnMainGauche
		>> }
>>
}

ActeDeuxSceneUnBis = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "tenor" \ActeDeuxSceneUnBisTenor
    \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneUnBisTenorTexte }
		\new Staff \new Voice = "barytonUn" \ActeDeuxSceneUnBisBarytonUn
    \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneUnBisBarytonUnTexte }
		\new Staff \new Voice = "barytonDeux" \ActeDeuxSceneUnBisBarytonDeux
    \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneUnBisBarytonDeuxTexte }
	>>
	\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeDeuxSceneUnBisMainDroite
	\new TimeSig {\PianoTimeSig \ActeDeuxSceneUnBisMesures}
	\new StaffDown = "gauche"		\ActeDeuxSceneUnBisMainGauche
		>> }
>>
}

ActeDeuxSceneDeux = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "sopranoUn" \ActeDeuxSceneDeuxSopranoUn
    \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneDeuxSopranoUnTexte }
		\new Staff \new Voice = "sopranoDeux" \ActeDeuxSceneDeuxSopranoDeux
    \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneDeuxSopranoDeuxTexte }
		\new Staff \new Voice = "contralto" \ActeDeuxSceneDeuxContralto
    \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneDeuxContraltoTexte }
    \new Staff \new Voice = "tenor" \ActeDeuxSceneDeuxTenor
    \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneDeuxTenorTexte }
    \new Staff \new Voice = "barytonUn" \ActeDeuxSceneDeuxBarytonUn
    \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneDeuxBarytonUnTexte }
    \new Staff \new Voice = "barytonDeux" \ActeDeuxSceneDeuxBarytonDeux
    \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneDeuxBarytonDeuxTexte }
    >> 
	\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeDeuxSceneDeuxMainDroite
	\new TimeSig {\PianoTimeSig \ActeDeuxSceneDeuxMesures }
	\new StaffDown = "gauche"		\ActeDeuxSceneDeuxMainGauche
		>> }
>>
}

ActeDeuxSceneTrois = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "sopranoUn" \ActeDeuxSceneTroisSopranoUn
    \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneTroisSopranoUnTexte }
		\new Staff \new Voice = "sopranoDeux" \ActeDeuxSceneTroisSopranoDeux
    \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneTroisSopranoDeuxTexte }
		\new Staff \new Voice = "contralto" \ActeDeuxSceneTroisContralto
    \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneTroisContraltoTexte }
    \new Staff \new Voice = "tenor" \ActeDeuxSceneTroisTenor
    \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneTroisTenorTexte }
    \new Staff \new Voice = "barytonUn" \ActeDeuxSceneTroisBarytonUn
    \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneTroisBarytonUnTexte }
    \new Staff \new Voice = "barytonDeux" \ActeDeuxSceneTroisBarytonDeux
    \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneTroisBarytonDeuxTexte }
    >> 
	\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeDeuxSceneTroisMainDroite
	\new TimeSig {\PianoTimeSig \ActeDeuxSceneTroisMesures }
	\new StaffDown = "gauche"		\ActeDeuxSceneTroisMainGauche
		>> }
>>
}

\book {
  \header {
	  title = \OperaTitre
	  subtitle = \Reduction
	  poet = \OperaLivret
	  composer =  \OperaPartition
    tagline = \OperaNotice }

%{\score {
	   \Prologue
    \header {
	    piece = \PrologueTitre
	    }
}%}
%{\score {
    \ActeUnSceneUn
    \header {
      piece = \ActeUnSceneUnTitre
    }
}%}
%{\score {
    \ActeUnSceneUnBis
    \header {
      piece = \Separateur
    }
}%}
%{\score {
	  \ActeUnSceneDeux
    \header {
	    piece = \ActeUnSceneDeuxTitre
	    }
}%}
%{\score {
    \ActeUnSceneTrois
    \header {
	    piece = \ActeUnSceneTroisTitre
	    }
}%}
%{\score {
    \ActeUnSceneTroisBis
    \header {
	    piece = \Separateur
	    }
}%}
%{\score {
	  \ActeUnSceneTroisTer
    \header {
	    piece = \Separateur
	    }
}%}
%{\score {
	  \ActeUnSceneQuatre
    \header {
	    piece = \ActeUnSceneQuatreTitre
	    }
}%}
%{\score {
    \Entracte
    \header {
      piece = \EntracteTitre
      }
}%}
%{\score {
	   \ActeDeuxSceneUn
    \header {
	    piece = \ActeDeuxSceneUnTitre
	    }
}%}
%{\score {
      \ActeDeuxSceneUnBis
      \header {
        piece = \Separateur
      }
}%}
\score {
    \ActeDeuxSceneDeux
    \header {
      piece = \ActeDeuxSceneDeuxTitre
    }
}%}
%{\score {
    \ActeDeuxSceneTrois
    \header {
      piece = \ActeDeuxSceneTroisTitre
    }
}%}
}
