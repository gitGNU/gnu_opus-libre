%------------------------------------------------------------------%
% Opéra Libre -- full_score.ly                                     %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%%% This is the main file for the full (orchestral) score.

\version "2.12"

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Inclusions %%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "italiano.ly"

\include "./definitions/common.ly"
\include "./definitions/functions.ly"
\include "./definitions/paper.ly"
\include "./definitions/layout.ly"
\include "./definitions/markup.ly"
\include "./definitions/graphics.ly"

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

Ouverture = {
  <<
    \new TopLine \OuvertureMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \OuvertureFluteUn
            \new Staff \OuvertureFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \OuvertureClarinetteUn
            \new Staff \OuvertureClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \OuvertureSaxophoneUn
            \new Staff \OuvertureSaxophoneDeux
          >>
      >>
  >>
}

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

InterludeUn = {
  <<
    \new TopLine \InterludeUnMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \InterludeUnFluteUn
            \new Staff \InterludeUnFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \InterludeUnClarinetteUn
            \new Staff \InterludeUnClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \InterludeUnSaxophoneUn
            \new Staff \InterludeUnSaxophoneDeux
          >>
      >>

    \new StaffGroup \InterludeUnPercus

    \new TopLine \InterludeUnMesures
    
    \new ChoirStaff
      <<
        \new Staff \new Voice = "contralto" \InterludeUnContralto
        \new Lyrics \lyricsto "contralto" { \InterludeUnContraltoTexte }
      >>

    \new TopLine \InterludeUnMesures

    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \InterludeUnViolonUn
            \new Staff \InterludeUnViolonDeux
            \new Staff \InterludeUnViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \InterludeUnAltoUn
            \new Staff \InterludeUnAltoDeux
          >>
        \new GrandStaff
          <<
            \new Staff \InterludeUnVioloncelleUn
            \new Staff \InterludeUnVioloncelleDeux
          >>
        \new Staff \InterludeUnContrebasse
      >>
    \new PianoStaff \InterludeUnPiano
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

InterludeDeux = {
  <<
    \new TopLine \InterludeDeuxMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \InterludeDeuxFluteUn
            \new Staff \InterludeDeuxFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \InterludeDeuxClarinetteUn
            \new Staff \InterludeDeuxClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \InterludeDeuxSaxophoneUn
            \new Staff \InterludeDeuxSaxophoneDeux
          >>
      >>

    \new StaffGroup \InterludeDeuxPercus

    \new TopLine \InterludeDeuxMesures
    
    \new ChoirStaff
      <<
        \new Staff \new Voice = "contralto" \InterludeDeuxContralto
        \new Lyrics \lyricsto "contralto" { \InterludeDeuxContraltoTexte }
      >>

    \new TopLine \InterludeDeuxMesures

    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \InterludeDeuxViolonUn
            \new Staff \InterludeDeuxViolonDeux
            \new Staff \InterludeDeuxViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \InterludeDeuxAltoUn
            \new Staff \InterludeDeuxAltoDeux
          >>
        \new GrandStaff
          <<
            \new Staff \InterludeDeuxVioloncelleUn
            \new Staff \InterludeDeuxVioloncelleDeux
          >>
        \new Staff \InterludeDeuxContrebasse
      >>
    \new PianoStaff \InterludeDeuxPiano
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

ActeDeuxSceneUn = {
  <<
    \new TopLine \ActeDeuxSceneUnMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneUnFluteUn
            \new Staff \ActeDeuxSceneUnFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneUnClarinetteUn
            \new Staff \ActeDeuxSceneUnClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneUnSaxophoneUn
            \new Staff \ActeDeuxSceneUnSaxophoneDeux
          >>
      >>

    \new StaffGroup \ActeDeuxSceneUnPercus

    \new TopLine \ActeDeuxSceneUnMesures

    \new ChoirStaff
      <<
        \new Staff \new Voice = "sopranoUn" \ActeDeuxSceneUnSopranoUn
        \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneUnSopranoUnTexte }
        \new Staff \new Voice = "sopranoDeux" \ActeDeuxSceneUnSopranoDeux
        \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneUnSopranoDeuxTexte }
        \new Staff \new Voice = "contralto" \ActeDeuxSceneUnContralto
        \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneUnContraltoTexte }
      >>

    \new TopLine \ActeDeuxSceneUnMesures

    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneUnViolonUn
            \new Staff \ActeDeuxSceneUnViolonDeux
            \new Staff \ActeDeuxSceneUnViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneUnAltoUn
            \new Staff \ActeDeuxSceneUnAltoDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneUnVioloncelleUn
            \new Staff \ActeDeuxSceneUnVioloncelleDeux
          >>
        \new Staff \ActeDeuxSceneUnContrebasse
      >>
    \new PianoStaff \ActeDeuxSceneUnPiano
  >>
}

ActeDeuxSceneUnBis = {
  <<
    \new TopLine \ActeDeuxSceneUnBisMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneUnBisFluteUn
            \new Staff \ActeDeuxSceneUnBisFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneUnBisClarinetteUn
            \new Staff \ActeDeuxSceneUnBisClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneUnBisSaxophoneUn
            \new Staff \ActeDeuxSceneUnBisSaxophoneDeux
          >>
      >>

    \new StaffGroup \ActeDeuxSceneUnBisPercus

    \new TopLine \ActeDeuxSceneUnBisMesures

    \new ChoirStaff
      <<
        \new Staff \new Voice = "tenor" \ActeDeuxSceneUnBisTenor
        \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneUnBisTenorTexte }
        \new Staff \new Voice = "barytonUn" \ActeDeuxSceneUnBisBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneUnBisBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \ActeDeuxSceneUnBisBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneUnBisBarytonDeuxTexte }
      >>

    \new TopLine \ActeDeuxSceneUnBisMesures

    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneUnBisViolonUn
            \new Staff \ActeDeuxSceneUnBisViolonDeux
            \new Staff \ActeDeuxSceneUnBisViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneUnBisAltoUn
            \new Staff \ActeDeuxSceneUnBisAltoDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneUnBisVioloncelleUn
            \new Staff \ActeDeuxSceneUnBisVioloncelleDeux
          >>
        \new Staff \ActeDeuxSceneUnBisContrebasse
      >>
    \new PianoStaff \ActeDeuxSceneUnBisPiano
  >>
}

ActeDeuxSceneDeux = {
  <<
    \new TopLine \ActeDeuxSceneDeuxMesures
    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneDeuxFluteUn
            \new Staff \ActeDeuxSceneDeuxFluteDeux 
          >>
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneDeuxClarinetteUn
            \new Staff \ActeDeuxSceneDeuxClarinetteDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneDeuxSaxophoneUn
            \new Staff \ActeDeuxSceneDeuxSaxophoneDeux
          >>
      >>

    \new StaffGroup \ActeDeuxSceneDeuxPercus

    \new TopLine \ActeDeuxSceneDeuxMesures

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

    \new TopLine \ActeDeuxSceneDeuxMesures

    \new StaffGroup
      <<
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneDeuxViolonUn
            \new Staff \ActeDeuxSceneDeuxViolonDeux
            \new Staff \ActeDeuxSceneDeuxViolonTrois
          >>
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneDeuxAltoUn
            \new Staff \ActeDeuxSceneDeuxAltoDeux
          >>
        \new GrandStaff
          <<
            \new Staff \ActeDeuxSceneDeuxVioloncelleUn
            \new Staff \ActeDeuxSceneDeuxVioloncelleDeux
          >>
        \new Staff \ActeDeuxSceneDeuxContrebasse
      >>
    \new PianoStaff \ActeDeuxSceneDeuxPiano
  >>
}

%%%%%%%%%%%%%%%%%%%%%%%%% The actual score %%%%%%%%%%%%%%%%%%%%%%%%%
%showFirstLength = s1*40
\book {
  \header {
    title = \OperaTitre
    subtitle = \FullScore
    poet = \OperaLivret
    composer = \OperaPartition
    tagline = \OperaNotice
  } %{
  \score {
    \Prologue
    \header {
      piece = \PrologueTitre
    }
  } %
  \score {
    \Ouverture
    \header {
      piece = \OuvertureTitre
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
    \InterludeUn
    \header {
      piece = \Interlude
    }
  } %
  \score {
    \ActeUnSceneDeux
    \header {
      piece = \ActeUnSceneDeuxTitre
    }
  } %
  \score {
    \InterludeDeux
    \header {
      piece = \Interlude
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
      piece = \Interlude
    }
  } %
  \score {
    \ActeUnSceneQuatre
    \header {
      piece = \ActeUnSceneQuatreTitre
    }
  } %
  \score {
    \Entracte
    \header {
      piece = \EntracteTitre
    }
  } %
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
