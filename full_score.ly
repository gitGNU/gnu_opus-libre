%------------------------------------------------------------------%
% Opéra Libre -- full_score.ly                                     %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%%% This is the main file for the full (orchestral) score.  This version
%%% is (obviously) not ready yet; please compile vocal_score.ly instead...

\version "2.11"

\include "./texte/decoupage.ly"
\include "./texte/personnages.ly"
\include "./texte/texte.ly"

\include "./definitions/functions.ly"
\include "./definitions/layout.ly"
\include "./definitions/structure.ly"
\include "./definitions/mesures.ly"

\include "./voix/soprano1.ly"
\include "./voix/soprano2.ly"
\include "./voix/contralto.ly"
\include "./voix/tenor.ly"
\include "./voix/baryton1.ly"
\include "./voix/baryton2.ly"

\include "./instruments/flute1.ly"
\include "./instruments/flute2.ly"
\include "./instruments/clarinette1.ly"
\include "./instruments/clarinette2.ly"
\include "./instruments/saxophone1.ly"
\include "./instruments/saxophone2.ly"
\include "./instruments/percu.ly"
\include "./instruments/violon1.ly"
\include "./instruments/violon2.ly"
\include "./instruments/violon3.ly"
\include "./instruments/alto1.ly"
\include "./instruments/alto2.ly"
\include "./instruments/violoncelle1.ly"
\include "./instruments/violoncelle2.ly"
\include "./instruments/contrebasse.ly"
\include "./instruments/piano.ly"


\layout {
  \context {
    \type "Engraver_group"
    \consists "Time_signature_engraver"
    \consists "Axis_group_engraver"
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \name "TimeSig"
  }
  \context{ \Staff
    \remove "Time_signature_engraver" 
    \remove "Axis_group_engraver"
    \consists "Hara_kiri_engraver"
    \accepts "Lyrics"
    \override Beam #'auto-knee-gap = #'()
    \override VerticalAxisGroup #'remove-empty = ##t
  }
  \context { \RhythmicStaff
    \remove "Time_signature_engraver" 
    \remove "Axis_group_engraver"
    \override VerticalAxisGroup #'remove-empty = ##t
    \consists "Hara_kiri_engraver"
  }
  \context { \DrumStaff
    \remove "Time_signature_engraver" 
    \remove "Axis_group_engraver"
    \override VerticalAxisGroup #'remove-empty = ##t
    \consists "Hara_kiri_engraver"
  }
  \context { \Score 
    \accepts TimeSig
    \remove "Mark_engraver"
    \remove "Metronome_mark_engraver"
  }
}

\paper {
  line-width = #180
  %systemSeparatorMarkup = \slashSeparator
  ragged-bottom = ##t
  left-margin = #20
}

Prologue={ \AdditionalLayout
<<
\new TimeSig  { \topTimeSig \PrologueMesures }
\new StaffGroup <<
	\new GrandStaff { <<
		\new Staff \PrologueFluteUn
		\new Staff \PrologueFluteDeux 
		>> }

	\new GrandStaff { <<
		\new Staff \PrologueClarinetteUn
		\new Staff \PrologueClarinetteDeux
		>> }

	\new GrandStaff { <<
		\new Staff \PrologueSaxophoneUn
		\new Staff \PrologueSaxophoneDeux
		>> }

	>>


\new StaffGroup { \ProloguePercus }

%\new TimeSig {\middleTimeSig \PrologueMesures}

\new ChoirStaff
	<<
		\new Staff \new Voice = "tenor" \PrologueTenor
    \new Lyrics \lyricsto "tenor" { \PrologueTenorTexte }
		\new Staff \new Voice = "baryton" \PrologueBarytonDeux
    \new Lyrics \lyricsto "baryton" { \PrologueBarytonDeuxTexte }
	>>

\new TimeSig { \middleTimeSig \PrologueMesures}

\new StaffGroup 
	<<
		\new GrandStaff 
		{ <<
			\new Staff \PrologueViolonUn
			\new Staff \PrologueViolonDeux
			\new Staff \PrologueViolonTrois
		>> }
		\new GrandStaff
		{ <<
			\new Staff \PrologueAltoUn
			\new Staff \PrologueAltoDeux
		>> }
		\new GrandStaff 
		{ <<
			\new Staff \PrologueVioloncelleUn
			\new Staff \PrologueVioloncelleDeux
		>> }
		\new Staff \PrologueContrebasse
	>>
%\new TimeSig { \middleTimeSig \PrologueMesures}
         \new PianoStaff \ProloguePiano
     >>
}

ActeUnSceneUn={ \AdditionalLayout
<<
\new TimeSig  { \topTimeSig \ActeUnSceneUnMesures }
\new StaffGroup <<
	\new GrandStaff { <<
		\new Staff \ActeUnSceneUnFluteUn
		\new Staff \ActeUnSceneUnFluteDeux 
		>> }

	\new GrandStaff { <<
		\new Staff \ActeUnSceneUnClarinetteUn
	%	\new Staff \ActeUnSceneUnClarinetteDeux
		>> }

	\new GrandStaff { <<
	%	\new Staff \ActeUnSceneUnSaxophoneUn
	%	\new Staff \ActeUnSceneUnSaxophoneDeux
		>> }

	>>


%\new StaffGroup { \ActeUnSceneUnPercus }

%\new TimeSig {\middleTimeSig \ActeUnSceneUnMesures}

\new ChoirStaff
	<<
%		\new Staff \ActeUnSceneUnSopranoUn
%		\new Staff \ActeUnSceneUnBarytonUn
%		\new Staff \ActeUnSceneUnBarytonDeux
	>>

\new TimeSig { \middleTimeSig \ActeUnSceneUnMesures}

\new StaffGroup 
	<<
		\new GrandStaff 
		{ <<
%			\new Staff \ActeUnSceneUnViolonUn
%			\new Staff \ActeUnSceneUnViolonDeux
%			\new Staff \ActeUnSceneUnViolonTrois
		>> }
		\new GrandStaff
		{ <<
%			\new Staff \ActeUnSceneUnAltoUn
%			\new Staff \ActeUnSceneUnAltoDeux
		>> }
		\new GrandStaff 
		{ <<
%			\new Staff \ActeUnSceneUnVioloncelleUn
%			\new Staff \ActeUnSceneUnVioloncelleDeux
		>> }
%		\new Staff \ActeUnSceneUnContrebasse
	>>
%\new TimeSig { \middleTimeSig \ActeUnSceneUnMesures}
 %        \new PianoStaff \ActeUnSceneUnPiano
     >>
}

ActeUnSceneDeux={ \AdditionalLayout
<<
\new TimeSig  { \topTimeSig \ActeUnSceneDeuxMesures }
\new StaffGroup <<
	\new GrandStaff { <<
		\new Staff \ActeUnSceneDeuxFluteUn
		\new Staff \ActeUnSceneDeuxFluteDeux 
		>> }

	\new GrandStaff { <<
		\new Staff \ActeUnSceneDeuxClarinetteUn
		\new Staff \ActeUnSceneDeuxClarinetteDeux
		>> }

	\new GrandStaff { <<
		\new Staff \ActeUnSceneDeuxSaxophoneUn
		\new Staff \ActeUnSceneDeuxSaxophoneDeux
		>> }

	>>


\new StaffGroup { \ActeUnSceneDeuxPercus }

\new TimeSig { \middleTimeSig \ActeUnSceneDeuxMesures}

\new ChoirStaff
	<<
		\new Staff \new Voice = "soprano" \ActeUnSceneDeuxSopranoDeux
		\new Lyrics \lyricsto "soprano" { \ActeUnSceneDeuxSopranoDeuxTexte }
		\new Staff \new Voice = "baryton" \ActeUnSceneDeuxBarytonDeux
		\new Lyrics \lyricsto "baryton" { \ActeUnSceneDeuxBarytonDeuxTexte }
	>>

\new TimeSig {\middleTimeSig	\ActeUnSceneDeuxMesures }

\new StaffGroup 
	<<
		\new GrandStaff 
		{ <<
			\new Staff \ActeUnSceneDeuxViolonUn
			\new Staff \ActeUnSceneDeuxViolonDeux
			\new Staff \ActeUnSceneDeuxViolonTrois
		>> }
		\new GrandStaff
		{ <<
			\new Staff \ActeUnSceneDeuxAltoUn
			\new Staff \ActeUnSceneDeuxAltoDeux
		>> }
		\new GrandStaff 
		{ <<
			\new Staff \ActeUnSceneDeuxVioloncelleUn
			\new Staff \ActeUnSceneDeuxVioloncelleDeux
		>> }
		\new Staff \ActeUnSceneDeuxContrebasse
	>>
%\new TimeSig { \middleTimeSig \ActeUnSceneDeuxMesures}
         \new PianoStaff \ActeUnSceneDeuxPiano
     >>
}


%{ActeUnSceneTrois={ \AdditionalLayout
<<
\new TimeSig  { \topTimeSig \ActeUnSceneTroisMesures }
\new StaffGroup <<
	\new GrandStaff { <<
		\new Staff \ActeUnSceneTroisFluteUn
		\new Staff \ActeUnSceneTroisFluteDeux 
		>> }

	\new GrandStaff { <<
		\new Staff \ActeUnSceneTroisClarinetteUn
		\new Staff \ActeUnSceneTroisClarinetteDeux
		>> }

	\new GrandStaff { <<
		\new Staff \ActeUnSceneTroisSaxophoneUn
		\new Staff \ActeUnSceneTroisSaxophoneDeux
		>> }

	>>


\new StaffGroup { \ActeUnSceneTroisPercus }

%\new TimeSig { \middleTimeSig \ActeUnSceneTroisMesures}

\new ChoirStaff
	<<
		\new Staff \new Voice = "soprano" \ActeUnSceneTroisSopranoUn
		\new Lyrics \lyricsto "soprano" { \ActeUnSceneTroisSopranoUnTexte }
		\new Staff \new Voice = "baryton" \ActeUnSceneTroisBarytonUn
		\new Lyrics \lyricsto "baryton" { \ActeUnSceneTroisBarytonUnTexte }
	>>

\new TimeSig {\middleTimeSig	\ActeUnSceneTroisMesures }

\new StaffGroup 
	<<
		\new GrandStaff 
		{ <<
			\new Staff \ActeUnSceneTroisViolonUn
			\new Staff \ActeUnSceneTroisViolonDeux
			\new Staff \ActeUnSceneTroisViolonTrois
		>> }
		\new GrandStaff
		{ <<
			\new Staff \ActeUnSceneTroisAltoUn
			\new Staff \ActeUnSceneTroisAltoDeux
		>> }
		\new GrandStaff 
		{ <<
			\new Staff \ActeUnSceneTroisVioloncelleUn
			\new Staff \ActeUnSceneTroisVioloncelleDeux
		>> }
		\new Staff \ActeUnSceneTroisContrebasse
	>>
%\new TimeSig { \middleTimeSig \ActeUnSceneTroisMesures}
         \new PianoStaff \ActeUnSceneTroisPiano
     >>
}%}


ActeDeuxSceneUn={ \AdditionalLayout
<<
\new TimeSig  { \topTimeSig \ActeDeuxSceneUnMesures }
\new StaffGroup <<
	\new GrandStaff { <<
		\new Staff \ActeDeuxSceneUnFluteUn
		\new Staff \ActeDeuxSceneUnFluteDeux >> }

	\new GrandStaff { <<
		\new Staff \ActeDeuxSceneUnClarinetteUn
		\new Staff \ActeDeuxSceneUnClarinetteDeux
		>> }

	\new GrandStaff { <<
		\new Staff \ActeDeuxSceneUnSaxophoneUn
		\new Staff \ActeDeuxSceneUnSaxophoneDeux
		>> }

	>>


\new StaffGroup { \ActeDeuxSceneUnPercus }

%\new TimeSig {\middleTimeSig \mesuresUn

\new ChoirStaff
	<<
		\new Staff \ActeDeuxSceneUnSopranoUn
		\new Staff \ActeDeuxSceneUnSopranoDeux
		\new Staff \ActeDeuxSceneUnContralto
	>>

\new TimeSig {\middleTimeSig \ActeDeuxSceneUnMesures}

\new StaffGroup 
	<<
		\new GrandStaff 
		{ <<
			\new Staff \ActeDeuxSceneUnViolonUn
			\new Staff \ActeDeuxSceneUnViolonDeux
			\new Staff \ActeDeuxSceneUnViolonTrois
		>> }
		\new GrandStaff
		{ <<
			\new Staff \ActeDeuxSceneUnAltoUn
			\new Staff \ActeDeuxSceneUnAltoDeux
		>> }
		\new GrandStaff 
		{ <<
			\new Staff \ActeDeuxSceneUnVioloncelleUn
			\new Staff \ActeDeuxSceneUnVioloncelleDeux
		>> }
		\new Staff \ActeDeuxSceneUnContrebasse
	>>
%\new TimeSig {\middleTimeSig \mesuresUn}
         \new PianoStaff \ActeDeuxSceneUnPiano
     >>
}

\book {
  \header {
	  title = \OperaTitre
	  subtitle = \FullScore
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
\score {
	   \ActeDeuxSceneUn
    \header {
	    piece = \ActeDeuxSceneUnTitre
	    }
	  }
}


