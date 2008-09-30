%------------------------------------------------------------------%
% Opéra Libre -- full_score.ly                                     %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%%% This is the main file for the full (orchestral) score.  This version
%%% is (obviously) not ready yet; please compile vocal_score.ly instead...
\version "2.11.58"
%% This opéra has been coded on over several years, from version 2.9 
%% to 2.12 -- some inconsistencies may remain through the code.

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Inclusions %%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "italiano.ly"

\include "./definitions/common.ly"
\include "./definitions/functions.ly"
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

%%%%%%%%%%%%%%%%%% Paper and layout declarations %%%%%%%%%%%%%%%%%%%

\paper {
  \includePaper
}

\layout {
  \includeLayout
}

%%FIXME: how can I throw this into either paper or layout.ly?
#(set-global-staff-size 12)
#(ly:set-option 'point-and-click #f)
#(ly:set-option 'delete-intermediate-files #t)

%%%%%%%%%%%%%%%%%% Scene-by-scene music inclusion %%%%%%%%%%%%%%%%%%

Prologue = {
  <<
    \new TopLine \PrologueMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \PrologueFluteUn
            \new Staff \PrologueFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \PrologueClarinetteUn
            \new Staff \PrologueClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \PrologueSaxophoneUn
            \new Staff \PrologueSaxophoneDeux
          >>
      >>

    \new StaffGroup \ProloguePercus

    \new TopLine \PrologueMesures

    \new ChoirStaff
      <<
        \new Staff \new Voice = "tenor" \PrologueTenor
        \new Lyrics \lyricsto "tenor" { \PrologueTenorTexte }
        \new Staff \new Voice = "baryton" \PrologueBarytonDeux
        \new Lyrics \lyricsto "baryton" { \PrologueBarytonDeuxTexte }
      >>

    \new TopLine \PrologueMesures

    \new StaffGroup 
      <<
        \new GrandStaff 
          <<
            \new Staff \PrologueViolonUn
            \new Staff \PrologueViolonDeux
            \new Staff \PrologueViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \PrologueAltoUn
            \new Staff \PrologueAltoDeux
          >>
        \new GrandStaff 
          <<
            \new Staff \PrologueVioloncelleUn
            \new Staff \PrologueVioloncelleDeux
          >>
        \new Staff \PrologueContrebasse
      >>
    \new PianoStaff \ProloguePiano
  >>
}
%{
ActeUnSceneUn = {
  <<
    \new TopLine \ActeUnSceneUnMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneUnFluteUn
            \new Staff \ActeUnSceneUnFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneUnClarinetteUn
            \new Staff \ActeUnSceneUnClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneUnSaxophoneUn
            \new Staff \ActeUnSceneUnSaxophoneDeux
          >>
      >>

    \new StaffGroup \ActeUnSceneUnPercus

    \new TopLine \ActeUnSceneUnMesures

    \new ChoirStaff
      <<
        \new Staff \new Voice = "soprano" \ActeUnSceneUnSopranoUn
        \new Lyrics \lyricsto "soprano" { \ActeUnSceneUnSopranoUnTexte }
        \new Staff \new Voice = "barytonUn" \ActeUnSceneUnBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneUnBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \ActeUnSceneUnBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneUnBarytonDeuxTexte }
      >>

    \new TopLine \ActeUnSceneUnMesures

    \new StaffGroup 
      <<
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneUnViolonUn
            \new Staff \ActeUnSceneUnViolonDeux
            \new Staff \ActeUnSceneUnViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneUnAltoUn
            \new Staff \ActeUnSceneUnAltoDeux
          >>
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneUnVioloncelleUn
            \new Staff \ActeUnSceneUnVioloncelleDeux
          >>
        \new Staff \ActeUnSceneUnContrebasse
      >>
    \new PianoStaff \ActeUnSceneUnPiano
  >>
}
%}
ActeUnSceneUnBis = {
  <<
    \new TopLine \ActeUnSceneUnBisMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneUnBisFluteUn
            \new Staff \ActeUnSceneUnBisFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneUnBisClarinetteUn
            \new Staff \ActeUnSceneUnBisClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneUnBisSaxophoneUn
            \new Staff \ActeUnSceneUnBisSaxophoneDeux
          >>
      >>

    \new StaffGroup \ActeUnSceneUnBisPercus

    \new TopLine \ActeUnSceneUnBisMesures

    \new ChoirStaff
      <<
        \new Staff \new Voice = "barytonUn" \ActeUnSceneUnBisBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneUnBisBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \ActeUnSceneUnBisBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneUnBisBarytonDeuxTexte }
      >>

    \new TopLine \ActeUnSceneUnBisMesures

    \new StaffGroup 
      <<
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneUnBisViolonUn
            \new Staff \ActeUnSceneUnBisViolonDeux
            \new Staff \ActeUnSceneUnBisViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneUnBisAltoUn
            \new Staff \ActeUnSceneUnBisAltoDeux
          >>
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneUnBisVioloncelleUn
            \new Staff \ActeUnSceneUnBisVioloncelleDeux
          >>
        \new Staff \ActeUnSceneUnBisContrebasse
      >>
    \new PianoStaff \ActeUnSceneUnBisPiano
  >>
}

ActeUnSceneDeux = {
  <<
    \new TopLine \ActeUnSceneDeuxMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneDeuxFluteUn
            \new Staff \ActeUnSceneDeuxFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneDeuxClarinetteUn
            \new Staff \ActeUnSceneDeuxClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneDeuxSaxophoneUn
            \new Staff \ActeUnSceneDeuxSaxophoneDeux
          >>
      >>

    \new StaffGroup \ActeUnSceneDeuxPercus

    \new TopLine \ActeUnSceneDeuxMesures

    \new ChoirStaff
      <<
        \new Staff \new Voice = "soprano" \ActeUnSceneDeuxSopranoDeux
        \new Lyrics \lyricsto "soprano" { \ActeUnSceneDeuxSopranoDeuxTexte }
        \new Staff \new Voice = "baryton" \ActeUnSceneDeuxBarytonDeux
        \new Lyrics \lyricsto "baryton" { \ActeUnSceneDeuxBarytonDeuxTexte }
      >>

    \new TopLine \ActeUnSceneDeuxMesures

    \new StaffGroup 
      <<
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneDeuxViolonUn
            \new Staff \ActeUnSceneDeuxViolonDeux
            \new Staff \ActeUnSceneDeuxViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneDeuxAltoUn
            \new Staff \ActeUnSceneDeuxAltoDeux
          >>
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneDeuxVioloncelleUn
            \new Staff \ActeUnSceneDeuxVioloncelleDeux
          >>
        \new Staff \ActeUnSceneDeuxContrebasse
      >>
    \new PianoStaff \ActeUnSceneDeuxPiano
  >>
}

ActeUnSceneTrois = {
  <<
    \new TopLine \ActeUnSceneTroisMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneTroisFluteUn
            \new Staff \ActeUnSceneTroisFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneTroisClarinetteUn
            \new Staff \ActeUnSceneTroisClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneTroisSaxophoneUn
            \new Staff \ActeUnSceneTroisSaxophoneDeux
          >>
      >>

    \new StaffGroup \ActeUnSceneTroisPercus

    \new TopLine \ActeUnSceneTroisMesures

    \new ChoirStaff
      <<
        \new Staff \new Voice = "tenor" \ActeUnSceneTroisTenor
        \new Lyrics \lyricsto "tenor" { \ActeUnSceneTroisTenorTexte }
        \new Staff \new Voice = "baryton" \ActeUnSceneTroisBarytonUn
        \new Lyrics \lyricsto "baryton" { \ActeUnSceneTroisBarytonUnTexte }
      >>

    \new TopLine \ActeUnSceneTroisMesures

    \new StaffGroup 
      <<
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneTroisViolonUn
            \new Staff \ActeUnSceneTroisViolonDeux
            \new Staff \ActeUnSceneTroisViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneTroisAltoUn
            \new Staff \ActeUnSceneTroisAltoDeux
          >>
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneTroisVioloncelleUn
            \new Staff \ActeUnSceneTroisVioloncelleDeux
          >>
        \new Staff \ActeUnSceneTroisContrebasse
      >>
    \new PianoStaff \ActeUnSceneTroisPiano
  >>
}

ActeUnSceneTroisBis = {
  <<
    \new TopLine \ActeUnSceneTroisBisMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneTroisBisFluteUn
            \new Staff \ActeUnSceneTroisBisFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneTroisBisClarinetteUn
            \new Staff \ActeUnSceneTroisBisClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneTroisBisSaxophoneUn
            \new Staff \ActeUnSceneTroisBisSaxophoneDeux
          >>
      >>

    \new StaffGroup \ActeUnSceneTroisBisPercus

    \new TopLine \ActeUnSceneTroisBisMesures

    \new ChoirStaff
      <<
        \new Staff \new Voice = "contralto" \ActeUnSceneTroisBisContralto
        \new Lyrics \lyricsto "contralto" { \ActeUnSceneTroisBisContraltoTexte }
        \new Staff \new Voice = "baryton" \ActeUnSceneTroisBisBarytonDeux
        \new Lyrics \lyricsto "baryton" { \ActeUnSceneTroisBisBarytonDeuxTexte }
      >>

    \new TopLine \ActeUnSceneTroisBisMesures

    \new StaffGroup 
      <<
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneTroisBisViolonUn
            \new Staff \ActeUnSceneTroisBisViolonDeux
            \new Staff \ActeUnSceneTroisBisViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneTroisBisAltoUn
            \new Staff \ActeUnSceneTroisBisAltoDeux
          >>
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneTroisBisVioloncelleUn
            \new Staff \ActeUnSceneTroisBisVioloncelleDeux
          >>
        \new Staff \ActeUnSceneTroisBisContrebasse
      >>
    \new PianoStaff \ActeUnSceneTroisBisPiano
  >>
}

ActeUnSceneTroisTer = {
  <<
    \new TopLine \ActeUnSceneTroisTerMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneTroisTerFluteUn
            \new Staff \ActeUnSceneTroisTerFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneTroisTerClarinetteUn
            \new Staff \ActeUnSceneTroisTerClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneTroisTerSaxophoneUn
            \new Staff \ActeUnSceneTroisTerSaxophoneDeux
          >>
      >>

    \new StaffGroup \ActeUnSceneTroisTerPercus

    \new TopLine \ActeUnSceneTroisTerMesures

    \new ChoirStaff
      <<
        \new Staff \new Voice = "soprano" \ActeUnSceneTroisTerSopranoUn
        \new Lyrics \lyricsto "soprano" { \ActeUnSceneTroisTerSopranoUnTexte }
        \new Staff \new Voice = "baryton" \ActeUnSceneTroisTerBarytonUn
        \new Lyrics \lyricsto "baryton" { \ActeUnSceneTroisTerBarytonUnTexte }
      >>

    \new TopLine \ActeUnSceneTroisTerMesures

    \new StaffGroup 
      <<
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneTroisTerViolonUn
            \new Staff \ActeUnSceneTroisTerViolonDeux
            \new Staff \ActeUnSceneTroisTerViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneTroisTerAltoUn
            \new Staff \ActeUnSceneTroisTerAltoDeux
          >>
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneTroisTerVioloncelleUn
            \new Staff \ActeUnSceneTroisTerVioloncelleDeux
          >>
        \new Staff \ActeUnSceneTroisTerContrebasse
      >>
    \new PianoStaff \ActeUnSceneTroisTerPiano
  >>
}


InterludeTrois = {
  <<
    \new TopLine \InterludeTroisMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \InterludeTroisFluteUn
            \new Staff \InterludeTroisFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \InterludeTroisClarinetteUn
            \new Staff \InterludeTroisClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \InterludeTroisSaxophoneUn
            \new Staff \InterludeTroisSaxophoneDeux
          >>
      >>

    \new StaffGroup \InterludeTroisPercus

    \new TopLine \InterludeTroisMesures

    \new StaffGroup 
      <<
        \new GrandStaff 
          <<
            \new Staff \InterludeTroisViolonUn
            \new Staff \InterludeTroisViolonDeux
            \new Staff \InterludeTroisViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \InterludeTroisAltoUn
            \new Staff \InterludeTroisAltoDeux
          >>
        \new GrandStaff 
          <<
            \new Staff \InterludeTroisVioloncelleUn
            \new Staff \InterludeTroisVioloncelleDeux
          >>
        \new Staff \InterludeTroisContrebasse
      >>
    \new PianoStaff \InterludeTroisPiano
  >>
}

ActeUnSceneQuatre = {
  <<
    \new TopLine \ActeUnSceneQuatreMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneQuatreFluteUn
            \new Staff \ActeUnSceneQuatreFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneQuatreClarinetteUn
            \new Staff \ActeUnSceneQuatreClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneQuatreSaxophoneUn
            \new Staff \ActeUnSceneQuatreSaxophoneDeux
          >>
      >>

    \new StaffGroup \ActeUnSceneQuatrePercus

    \new TopLine \ActeUnSceneQuatreMesures
 
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

    \new TopLine \ActeUnSceneQuatreMesures

    \new StaffGroup 
      <<
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneQuatreViolonUn
            \new Staff \ActeUnSceneQuatreViolonDeux
            \new Staff \ActeUnSceneQuatreViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \ActeUnSceneQuatreAltoUn
            \new Staff \ActeUnSceneQuatreAltoDeux
          >>
        \new GrandStaff 
          <<
            \new Staff \ActeUnSceneQuatreVioloncelleUn
            \new Staff \ActeUnSceneQuatreVioloncelleDeux
          >>
        \new Staff \ActeUnSceneQuatreContrebasse
      >>
    \new PianoStaff \ActeUnSceneQuatrePiano
  >>
}


Entracte = {
  <<
    \new TopLine \EntracteMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \EntracteFluteUn
            \new Staff \EntracteFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \EntracteClarinetteUn
            \new Staff \EntracteClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \EntracteSaxophoneUn
            \new Staff \EntracteSaxophoneDeux
          >>
      >>

    \new StaffGroup \EntractePercus

    \new TopLine \EntracteMesures
 
    \new ChoirStaff
       <<
         \new Staff \new Voice = "soprano" \EntracteSopranoDeux
         \new Lyrics \lyricsto "soprano" { \EntracteSopranoDeuxTexte }
         \new Staff \new Voice = "alto" \EntracteContralto
         \new Lyrics \lyricsto "alto" { \EntracteContraltoTexte }
         \new Staff \new Voice = "tenor" \EntracteTenor
         \new Lyrics \lyricsto "tenor" { \EntracteTenorTexte }
         \new Staff \new Voice = "barytonUn" \EntracteBarytonUn
         \new Lyrics \lyricsto "barytonUn" { \EntracteBarytonUnTexte }
         \new Staff \new Voice = "barytonDeux" \EntracteBarytonDeux
         \new Lyrics \lyricsto "barytonDeux" { \EntracteBarytonDeuxTexte }
       >>

    \new TopLine \EntracteMesures

    \new StaffGroup 
      <<
        \new GrandStaff 
          <<
            \new Staff \EntracteViolonUn
            \new Staff \EntracteViolonDeux
            \new Staff \EntracteViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \EntracteAltoUn
            \new Staff \EntracteAltoDeux
          >>
        \new GrandStaff 
          <<
            \new Staff \EntracteVioloncelleUn
            \new Staff \EntracteVioloncelleDeux
          >>
        \new Staff \EntracteContrebasse
      >>
    \new PianoStaff \EntractePiano
  >>
}


%%%%%%%%%%%%%%%%%%%%%%%%% The actual score %%%%%%%%%%%%%%%%%%%%%%%%%
%showLastLength = s4*325
\book {
  \header {
    title = \OperaTitre
    subtitle = \FullScore
    poet = \OperaLivret
    composer =  \OperaPartition
    tagline = \OperaNotice
  }
%{
  \score {
    \Prologue
    \header {
      piece = \PrologueTitre
    }
  } %
  \score {
    \ActeUnSceneUn
    \header {
      piece = \ActeUnSceneUnTitre
    }
  } %
  \score {
    \ActeUnSceneUnBis
    \header {
      piece = \Separateur
    }
  } %
  \score {
    \ActeUnSceneDeux
    \header {
      piece = \ActeUnSceneDeuxTitre
    }
  } %
  \score {
    \ActeUnSceneTrois
    \header {
      piece = \ActeUnSceneTroisTitre
    }
  } %
  \score {
    \ActeUnSceneTroisBis
    \header {
      piece = \Separateur
    }
  } %
  \score {
    \ActeUnSceneTroisTer
    \header {
      piece = \Separateur
    }
  } %
  \score {
    \InterludeTrois
    \header {
      piece = \Separateur
    }
  } %
  \score {
    \ActeUnSceneQuatre
    \header {
      piece = \ActeUnSceneQuatreTitre
    }
  } %}
  \score {
    \Entracte
    \header {
      piece = \EntracteTitre
    }
  } %{
  \score {
    \ActeDeuxSceneUn
    \header {
      piece = \ActeDeuxSceneUnTitre
    }
  } %
  \score {
    \ActeDeuxSceneUnBis
    \header {
      piece = \Separateur
    }
  } %
  \score {
    \ActeDeuxSceneDeux
    \header {
      piece = \ActeDeuxSceneDeuxTitre
    }
  } %
  \score {
    \ActeDeuxSceneTrois
    \header {
      piece = \ActeDeuxSceneTroisTitre
    }
  } %
%}
}
