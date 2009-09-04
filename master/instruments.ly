%------------------------------------------------------------------%
% Opéra Libre -- master.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008, 2009                               %                                                                 %
%------------------------------------------------------------------%

%%% This is where all instrument parts are gathered.


%%%%%%%%%%%%%%%%%%%%%% Additional Inclusions %%%%%%%%%%%%%%%%%%%%%%%

\include "./instruments/flute1.ly"
\include "./instruments/flute2.ly"
\include "./instruments/clarinette.ly"
\include "./instruments/clarinetteB.ly"
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
%{

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Flutes  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makeSection \PrologueFluteUn \PrologueFluteDeux \PrologueMesures
%Ouverture = \makeSection \%OuvertureFluteUn \%OuvertureFluteDeux \%OuvertureMesures
ActeUnSceneUn = \makeSection \ActeUnSceneUnFluteUn \ActeUnSceneUnFluteDeux \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makeSection \ActeUnSceneUnBisFluteUn  \ActeUnSceneUnBisFluteDeux \ActeUnSceneUnBisMesures
InterludeUn = \makeSection \InterludeUnFluteUn \InterludeUnFluteDeux \InterludeUnMesures
ActeUnSceneDeux = \makeSection \ActeUnSceneDeuxFluteUn \ActeUnSceneDeuxFluteDeux \ActeUnSceneDeuxMesures
InterludeDeux = \makeSection \InterludeDeuxFluteUn \InterludeDeuxFluteDeux \InterludeDeuxMesures
ActeUnSceneTrois = \makeSection \ActeUnSceneTroisFluteUn \ActeUnSceneTroisFluteDeux \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makeSection \ActeUnSceneTroisBisFluteUn \ActeUnSceneTroisBisFluteDeux \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makeSection \ActeUnSceneTroisTerFluteUn \ActeUnSceneTroisTerFluteDeux \ActeUnSceneTroisTerMesures
InterludeTrois = \makeSection \InterludeTroisFluteUn \InterludeTroisFluteDeux \InterludeTroisMesures
ActeUnSceneQuatre = \makeSection \ActeUnSceneQuatreFluteUn \ActeUnSceneQuatreFluteDeux \ActeUnSceneQuatreMesures
Entracte = \makeSection \EntracteFluteUn \EntracteFluteDeux \EntracteMesures
ActeDeuxSceneUn = \makeSection \ActeDeuxSceneUnFluteUn \ActeDeuxSceneUnFluteDeux \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makeSection \ActeDeuxSceneUnBisFluteUn \ActeDeuxSceneUnBisFluteDeux \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makeSection \ActeDeuxSceneDeuxFluteUn \ActeDeuxSceneDeuxFluteDeux \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makeSection \ActeDeuxSceneTroisFluteUn \ActeDeuxSceneTroisFluteDeux \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Clarinettes  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makeSection  { \smart \transpose la do' \PrologueClarinetteUn } { \smart \transpose sib do' \PrologueClarinetteDeux } \PrologueMesures
%Ouverture = \makeSection \%OuvertureClarinetteUn \%OuvertureClarinetteDeux \%OuvertureMesures
ActeUnSceneUn = \makeSection  { \smart \transpose la do' \ActeUnSceneUnClarinetteUn } { \smart \transpose sib do' \ActeUnSceneUnClarinetteDeux } \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makeSection  { \smart \transpose la do' \ActeUnSceneUnBisClarinetteUn } { \smart \transpose sib do'  \ActeUnSceneUnBisClarinetteDeux } \ActeUnSceneUnBisMesures
InterludeUn = \makeSection { \smart \transpose la do' \InterludeUnClarinetteUn } { \smart \transpose sib do' \InterludeUnClarinetteDeux } \InterludeUnMesures
ActeUnSceneDeux = \makeSection  { \smart \transpose la do' \ActeUnSceneDeuxClarinetteUn } { \smart \transpose sib do' \ActeUnSceneDeuxClarinetteDeux } \ActeUnSceneDeuxMesures
InterludeDeux = \makeSection  { \smart \transpose la do' \InterludeDeuxClarinetteUn } { \smart \transpose sib do' \InterludeDeuxClarinetteDeux } \InterludeDeuxMesures
ActeUnSceneTrois = \makeSection  { \smart \transpose la do' \ActeUnSceneTroisClarinetteUn } { \smart \transpose sib do' \ActeUnSceneTroisClarinetteDeux } \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makeSection  { \smart \transpose la do' \ActeUnSceneTroisBisClarinetteUn } { \smart \transpose sib do' \ActeUnSceneTroisBisClarinetteDeux } \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makeSection  { \smart \transpose la do' \ActeUnSceneTroisTerClarinetteUn } { \smart \transpose sib do' \ActeUnSceneTroisTerClarinetteDeux } \ActeUnSceneTroisTerMesures
InterludeTrois = \makeSection  { \smart \transpose la do' \InterludeTroisClarinetteUn } { \smart \transpose sib do' \InterludeTroisClarinetteDeux } \InterludeTroisMesures
ActeUnSceneQuatre = \makeSection  { \smart \transpose la do' \ActeUnSceneQuatreClarinetteUn } { \smart \transpose sib do' \ActeUnSceneQuatreClarinetteDeux } \ActeUnSceneQuatreMesures
Entracte = \makeSection  { \smart \transpose la do' \EntracteClarinetteUn } { \smart \transpose sib do' \EntracteClarinetteDeux } \EntracteMesures
ActeDeuxSceneUn = \makeSection { \smart \transpose la do' \ActeDeuxSceneUnClarinetteUn } { \smart \transpose sib do' \ActeDeuxSceneUnClarinetteDeux } \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makeSection  { \smart \transpose la do' \ActeDeuxSceneUnBisClarinetteUn } { \smart \transpose sib do' \ActeDeuxSceneUnBisClarinetteDeux } \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makeSection  { \smart \transpose la do' \ActeDeuxSceneDeuxClarinetteUn } { \smart \transpose sib do' \ActeDeuxSceneDeuxClarinetteDeux } \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makeSection  { \smart \transpose la do' \ActeDeuxSceneTroisClarinetteUn } { \smart \transpose sib do' \ActeDeuxSceneTroisClarinetteDeux } \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
} %

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Saxophones  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makeSection { \smart \transpose mib do' \PrologueSaxophoneUn } { \smart \transpose mib do' \PrologueSaxophoneDeux } \PrologueMesures
%Ouverture = \makeSection \%OuvertureSaxophoneUn \%OuvertureSaxophoneDeux \%OuvertureMesures
ActeUnSceneUn = \makeSection { \smart \transpose mib do' \ActeUnSceneUnSaxophoneUn } { \smart \transpose mib do' \ActeUnSceneUnSaxophoneDeux } \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makeSection { \smart \transpose mib do' \ActeUnSceneUnBisSaxophoneUn } { \smart \transpose mib do'  \ActeUnSceneUnBisSaxophoneDeux } \ActeUnSceneUnBisMesures
InterludeUn = \makeSection { \smart \transpose mib do' \InterludeUnSaxophoneUn } { \smart \transpose mib do' \InterludeUnSaxophoneDeux } \InterludeUnMesures
ActeUnSceneDeux = \makeSection { \smart \transpose mib do' \ActeUnSceneDeuxSaxophoneUn } { \smart \transpose mib do' \ActeUnSceneDeuxSaxophoneDeux } \ActeUnSceneDeuxMesures
InterludeDeux = \makeSection { \smart \transpose mib do' \InterludeDeuxSaxophoneUn } { \smart \transpose mib do' \InterludeDeuxSaxophoneDeux } \InterludeDeuxMesures
ActeUnSceneTrois = \makeSection { \smart \transpose mib do' \ActeUnSceneTroisSaxophoneUn } { \smart \transpose mib do' \ActeUnSceneTroisSaxophoneDeux } \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makeSection { \smart \transpose mib do' \ActeUnSceneTroisBisSaxophoneUn } { \smart \transpose mib do' \ActeUnSceneTroisBisSaxophoneDeux } \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makeSection { \smart \transpose mib do' \ActeUnSceneTroisTerSaxophoneUn } { \smart \transpose mib do' \ActeUnSceneTroisTerSaxophoneDeux } \ActeUnSceneTroisTerMesures
InterludeTrois = \makeSection { \smart \transpose mib do' \InterludeTroisSaxophoneUn } { \smart \transpose mib do' \InterludeTroisSaxophoneDeux } \InterludeTroisMesures
ActeUnSceneQuatre = \makeSection { \smart \transpose mib do' \ActeUnSceneQuatreSaxophoneUn } { \smart \transpose mib do' \ActeUnSceneQuatreSaxophoneDeux } \ActeUnSceneQuatreMesures
Entracte = \makeSection { \smart \transpose mib do' \EntracteSaxophoneUn } { \smart \transpose mib do' \EntracteSaxophoneDeux } \EntracteMesures
ActeDeuxSceneUn = \makeSection { \smart \transpose mib do' \ActeDeuxSceneUnSaxophoneUn } { \smart \transpose mib do' \ActeDeuxSceneUnSaxophoneDeux } \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makeSection { \smart \transpose mib do' \ActeDeuxSceneUnBisSaxophoneUn } { \smart \transpose mib do' \ActeDeuxSceneUnBisSaxophoneDeux } \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makeSection { \smart \transpose mib do' \ActeDeuxSceneDeuxSaxophoneUn } { \smart \transpose mib do' \ActeDeuxSceneDeuxSaxophoneDeux } \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makeSection { \smart \transpose mib do' \ActeDeuxSceneTroisSaxophoneUn } { \smart \transpose mib do' \ActeDeuxSceneTroisSaxophoneDeux } \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%{

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Violons  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makeExtraSection \PrologueViolonUn \PrologueViolonDeux \PrologueViolonTrois \PrologueMesures
%Ouverture = \makeExtraSection \%OuvertureViolonUn \%OuvertureViolonDeux \%OuvertureViolonTrois \%OuvertureMesures
ActeUnSceneUn = \makeExtraSection \ActeUnSceneUnViolonUn \ActeUnSceneUnViolonDeux \ActeUnSceneUnViolonTrois \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makeExtraSection \ActeUnSceneUnBisViolonUn  \ActeUnSceneUnBisViolonDeux \ActeUnSceneUnBisViolonTrois \ActeUnSceneUnBisMesures
InterludeUn = \makeExtraSection \InterludeUnViolonUn \InterludeUnViolonDeux \InterludeUnViolonTrois \InterludeUnMesures
ActeUnSceneDeux = \makeExtraSection \ActeUnSceneDeuxViolonUn \ActeUnSceneDeuxViolonDeux \ActeUnSceneDeuxViolonTrois \ActeUnSceneDeuxMesures
InterludeDeux = \makeExtraSection \InterludeDeuxViolonUn \InterludeDeuxViolonDeux \InterludeDeuxViolonTrois \InterludeDeuxMesures
ActeUnSceneTrois = \makeExtraSection \ActeUnSceneTroisViolonUn \ActeUnSceneTroisViolonDeux \ActeUnSceneTroisViolonTrois \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makeExtraSection \ActeUnSceneTroisBisViolonUn \ActeUnSceneTroisBisViolonDeux \ActeUnSceneTroisBisViolonTrois \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makeExtraSection \ActeUnSceneTroisTerViolonUn \ActeUnSceneTroisTerViolonDeux \ActeUnSceneTroisTerViolonTrois \ActeUnSceneTroisTerMesures
InterludeTrois = \makeExtraSection \InterludeTroisViolonUn \InterludeTroisViolonDeux \InterludeTroisViolonTrois \InterludeTroisMesures
ActeUnSceneQuatre = \makeExtraSection \ActeUnSceneQuatreViolonUn \ActeUnSceneQuatreViolonDeux \ActeUnSceneQuatreViolonTrois \ActeUnSceneQuatreMesures
Entracte = \makeExtraSection \EntracteViolonUn \EntracteViolonDeux \EntracteViolonTrois \EntracteMesures
ActeDeuxSceneUn = \makeExtraSection \ActeDeuxSceneUnViolonUn \ActeDeuxSceneUnViolonDeux \ActeDeuxSceneUnViolonTrois \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makeExtraSection \ActeDeuxSceneUnBisViolonUn \ActeDeuxSceneUnBisViolonDeux \ActeDeuxSceneUnBisViolonTrois \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makeExtraSection \ActeDeuxSceneDeuxViolonUn \ActeDeuxSceneDeuxViolonDeux \ActeDeuxSceneDeuxViolonTrois \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makeExtraSection \ActeDeuxSceneTroisViolonUn \ActeDeuxSceneTroisViolonDeux \ActeDeuxSceneTroisViolonTrois \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%

%%%%%% Alternative: violins 2+1

Prologue = \makeSection \PrologueViolonUn \PrologueViolonDeux \PrologueMesures
%Ouverture = \makeSection \%OuvertureViolonUn \%OuvertureViolonDeux \%OuvertureMesures
ActeUnSceneUn = \makeSection \ActeUnSceneUnViolonUn \ActeUnSceneUnViolonDeux \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makeSection \ActeUnSceneUnBisViolonUn  \ActeUnSceneUnBisViolonDeux \ActeUnSceneUnBisMesures
InterludeUn = \makeSection \InterludeUnViolonUn \InterludeUnViolonDeux \InterludeUnMesures
ActeUnSceneDeux = \makeSection \ActeUnSceneDeuxViolonUn \ActeUnSceneDeuxViolonDeux \ActeUnSceneDeuxMesures
InterludeDeux = \makeSection \InterludeDeuxViolonUn \InterludeDeuxViolonDeux \InterludeDeuxMesures
ActeUnSceneTrois = \makeSection \ActeUnSceneTroisViolonUn \ActeUnSceneTroisViolonDeux \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makeSection \ActeUnSceneTroisBisViolonUn \ActeUnSceneTroisBisViolonDeux \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makeSection \ActeUnSceneTroisTerViolonUn \ActeUnSceneTroisTerViolonDeux \ActeUnSceneTroisTerMesures
InterludeTrois = \makeSection \InterludeTroisViolonUn \InterludeTroisViolonDeux \InterludeTroisMesures
ActeUnSceneQuatre = \makeSection \ActeUnSceneQuatreViolonUn \ActeUnSceneQuatreViolonDeux \ActeUnSceneQuatreMesures
Entracte = \makeSection \EntracteViolonUn \EntracteViolonDeux \EntracteMesures
ActeDeuxSceneUn = \makeSection \ActeDeuxSceneUnViolonUn \ActeDeuxSceneUnViolonDeux \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makeSection \ActeDeuxSceneUnBisViolonUn \ActeDeuxSceneUnBisViolonDeux \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makeSection \ActeDeuxSceneDeuxViolonUn \ActeDeuxSceneDeuxViolonDeux \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makeSection \ActeDeuxSceneTroisViolonUn \ActeDeuxSceneTroisViolonDeux \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}
%{
Prologue = \makePart \PrologueViolonTrois \PrologueMesures
%Ouverture = \makePart \%OuvertureViolonTrois \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnViolonTrois \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisViolonTrois \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnViolonTrois \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxViolonTrois \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxViolonTrois \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisViolonTrois \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisViolonTrois \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerViolonTrois \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisViolonTrois \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreViolonTrois \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteViolonTrois \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnViolonTrois \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisViolonTrois \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxViolonTrois \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisViolonTrois \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Altos  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makeSection \PrologueAltoUn \PrologueAltoDeux \PrologueMesures
%Ouverture = \makeSection \%OuvertureAltoUn \%OuvertureAltoDeux \%OuvertureMesures
ActeUnSceneUn = \makeSection \ActeUnSceneUnAltoUn \ActeUnSceneUnAltoDeux \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makeSection \ActeUnSceneUnBisAltoUn  \ActeUnSceneUnBisAltoDeux \ActeUnSceneUnBisMesures
InterludeUn = \makeSection \InterludeUnAltoUn \InterludeUnAltoDeux \InterludeUnMesures
ActeUnSceneDeux = \makeSection \ActeUnSceneDeuxAltoUn \ActeUnSceneDeuxAltoDeux \ActeUnSceneDeuxMesures
InterludeDeux = \makeSection \InterludeDeuxAltoUn \InterludeDeuxAltoDeux \InterludeDeuxMesures
ActeUnSceneTrois = \makeSection \ActeUnSceneTroisAltoUn \ActeUnSceneTroisAltoDeux \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makeSection \ActeUnSceneTroisBisAltoUn \ActeUnSceneTroisBisAltoDeux \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makeSection \ActeUnSceneTroisTerAltoUn \ActeUnSceneTroisTerAltoDeux \ActeUnSceneTroisTerMesures
InterludeTrois = \makeSection \InterludeTroisAltoUn \InterludeTroisAltoDeux \InterludeTroisMesures
ActeUnSceneQuatre = \makeSection \ActeUnSceneQuatreAltoUn \ActeUnSceneQuatreAltoDeux \ActeUnSceneQuatreMesures
Entracte = \makeSection \EntracteAltoUn \EntracteAltoDeux \EntracteMesures
ActeDeuxSceneUn = \makeSection \ActeDeuxSceneUnAltoUn \ActeDeuxSceneUnAltoDeux \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makeSection \ActeDeuxSceneUnBisAltoUn \ActeDeuxSceneUnBisAltoDeux \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makeSection \ActeDeuxSceneDeuxAltoUn \ActeDeuxSceneDeuxAltoDeux \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makeSection \ActeDeuxSceneTroisAltoUn \ActeDeuxSceneTroisAltoDeux \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}
%{

%%%%%%%%%%%%%%%%%%%%%%%%%%% Violoncelles  %%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makeSection \PrologueVioloncelleUn \PrologueVioloncelleDeux \PrologueMesures
%Ouverture = \makeSection \%OuvertureVioloncelleUn \%OuvertureVioloncelleDeux \%OuvertureMesures
ActeUnSceneUn = \makeSection \ActeUnSceneUnVioloncelleUn \ActeUnSceneUnVioloncelleDeux \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makeSection \ActeUnSceneUnBisVioloncelleUn  \ActeUnSceneUnBisVioloncelleDeux \ActeUnSceneUnBisMesures
InterludeUn = \makeSection \InterludeUnVioloncelleUn \InterludeUnVioloncelleDeux \InterludeUnMesures
ActeUnSceneDeux = \makeSection \ActeUnSceneDeuxVioloncelleUn \ActeUnSceneDeuxVioloncelleDeux \ActeUnSceneDeuxMesures
InterludeDeux = \makeSection \InterludeDeuxVioloncelleUn \InterludeDeuxVioloncelleDeux \InterludeDeuxMesures
ActeUnSceneTrois = \makeSection \ActeUnSceneTroisVioloncelleUn \ActeUnSceneTroisVioloncelleDeux \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makeSection \ActeUnSceneTroisBisVioloncelleUn \ActeUnSceneTroisBisVioloncelleDeux \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makeSection \ActeUnSceneTroisTerVioloncelleUn \ActeUnSceneTroisTerVioloncelleDeux \ActeUnSceneTroisTerMesures
InterludeTrois = \makeSection \InterludeTroisVioloncelleUn \InterludeTroisVioloncelleDeux \InterludeTroisMesures
ActeUnSceneQuatre = \makeSection \ActeUnSceneQuatreVioloncelleUn \ActeUnSceneQuatreVioloncelleDeux \ActeUnSceneQuatreMesures
Entracte = \makeSection \EntracteVioloncelleUn \EntracteVioloncelleDeux \EntracteMesures
ActeDeuxSceneUn = \makeSection \ActeDeuxSceneUnVioloncelleUn \ActeDeuxSceneUnVioloncelleDeux \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makeSection \ActeDeuxSceneUnBisVioloncelleUn \ActeDeuxSceneUnBisVioloncelleDeux \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makeSection \ActeDeuxSceneDeuxVioloncelleUn \ActeDeuxSceneDeuxVioloncelleDeux \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makeSection \ActeDeuxSceneTroisVioloncelleUn \ActeDeuxSceneTroisVioloncelleDeux \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FluteUn %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueFluteUn \PrologueMesures
%Ouverture = \makePart \%OuvertureFluteUn \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnFluteUn \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisFluteUn \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnFluteUn \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxFluteUn \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxFluteUn \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisFluteUn \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisFluteUn \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerFluteUn \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisFluteUn \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreFluteUn \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteFluteUn \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnFluteUn \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisFluteUn \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxFluteUn \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisFluteUn \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FluteDeux %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueFluteDeux \PrologueMesures
%Ouverture = \makePart \%OuvertureFluteDeux \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnFluteDeux \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisFluteDeux \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnFluteDeux \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxFluteDeux \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxFluteDeux \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisFluteDeux \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisFluteDeux \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerFluteDeux \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisFluteDeux \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreFluteDeux \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteFluteDeux \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnFluteDeux \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisFluteDeux \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxFluteDeux \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisFluteDeux \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ClarinetteUn %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueClarinetteUn \PrologueMesures
%Ouverture = \makePart \%OuvertureClarinetteUn \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnClarinetteUn \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisClarinetteUn \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnClarinetteUn \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxClarinetteUn \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxClarinetteUn \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisClarinetteUn \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisClarinetteUn \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerClarinetteUn \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisClarinetteUn \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreClarinetteUn \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteClarinetteUn \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnClarinetteUn \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisClarinetteUn \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxClarinetteUn \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisClarinetteUn \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ClarinetteDeux %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueClarinetteDeux \PrologueMesures
%Ouverture = \makePart \%OuvertureClarinetteDeux \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnClarinetteDeux \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisClarinetteDeux \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnClarinetteDeux \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxClarinetteDeux \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxClarinetteDeux \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisClarinetteDeux \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisClarinetteDeux \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerClarinetteDeux \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisClarinetteDeux \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreClarinetteDeux \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteClarinetteDeux \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnClarinetteDeux \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisClarinetteDeux \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxClarinetteDeux \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisClarinetteDeux \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SaxophoneUn %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueSaxophoneUn \PrologueMesures
%Ouverture = \makePart \%OuvertureSaxophoneUn \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnSaxophoneUn \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisSaxophoneUn \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnSaxophoneUn \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxSaxophoneUn \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxSaxophoneUn \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisSaxophoneUn \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisSaxophoneUn \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerSaxophoneUn \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisSaxophoneUn \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreSaxophoneUn \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteSaxophoneUn \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnSaxophoneUn \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisSaxophoneUn \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxSaxophoneUn \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisSaxophoneUn \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SaxophoneDeux %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueSaxophoneDeux \PrologueMesures
%Ouverture = \makePart \%OuvertureSaxophoneDeux \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnSaxophoneDeux \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisSaxophoneDeux \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnSaxophoneDeux \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxSaxophoneDeux \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxSaxophoneDeux \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisSaxophoneDeux \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisSaxophoneDeux \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerSaxophoneDeux \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisSaxophoneDeux \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreSaxophoneDeux \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteSaxophoneDeux \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnSaxophoneDeux \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisSaxophoneDeux \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxSaxophoneDeux \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisSaxophoneDeux \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ViolonUn %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueViolonUn \PrologueMesures
%Ouverture = \makePart \%OuvertureViolonUn \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnViolonUn \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisViolonUn \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnViolonUn \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxViolonUn \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxViolonUn \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisViolonUn \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisViolonUn \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerViolonUn \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisViolonUn \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreViolonUn \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteViolonUn \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnViolonUn \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisViolonUn \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxViolonUn \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisViolonUn \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ViolonDeux %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueViolonDeux \PrologueMesures
%Ouverture = \makePart \%OuvertureViolonDeux \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnViolonDeux \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisViolonDeux \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnViolonDeux \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxViolonDeux \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxViolonDeux \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisViolonDeux \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisViolonDeux \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerViolonDeux \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisViolonDeux \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreViolonDeux \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteViolonDeux \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnViolonDeux \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisViolonDeux \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxViolonDeux \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisViolonDeux \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ViolonTrois %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueViolonTrois \PrologueMesures
%Ouverture = \makePart \%OuvertureViolonTrois \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnViolonTrois \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisViolonTrois \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnViolonTrois \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxViolonTrois \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxViolonTrois \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisViolonTrois \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisViolonTrois \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerViolonTrois \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisViolonTrois \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreViolonTrois \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteViolonTrois \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnViolonTrois \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisViolonTrois \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxViolonTrois \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisViolonTrois \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AltoUn %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueAltoUn \PrologueMesures
%Ouverture = \makePart \%OuvertureAltoUn \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnAltoUn \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisAltoUn \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnAltoUn \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxAltoUn \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxAltoUn \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisAltoUn \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisAltoUn \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerAltoUn \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisAltoUn \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreAltoUn \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteAltoUn \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnAltoUn \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisAltoUn \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxAltoUn \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisAltoUn \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AltoDeux %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueAltoDeux \PrologueMesures
%Ouverture = \makePart \%OuvertureAltoDeux \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnAltoDeux \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisAltoDeux \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnAltoDeux \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxAltoDeux \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxAltoDeux \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisAltoDeux \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisAltoDeux \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerAltoDeux \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisAltoDeux \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreAltoDeux \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteAltoDeux \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnAltoDeux \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisAltoDeux \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxAltoDeux \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisAltoDeux \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% VioloncelleUn %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueVioloncelleUn \PrologueMesures
%Ouverture = \makePart \%OuvertureVioloncelleUn \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnVioloncelleUn \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisVioloncelleUn \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnVioloncelleUn \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxVioloncelleUn \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxVioloncelleUn \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisVioloncelleUn \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisVioloncelleUn \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerVioloncelleUn \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisVioloncelleUn \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreVioloncelleUn \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteVioloncelleUn \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnVioloncelleUn \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisVioloncelleUn \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxVioloncelleUn \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisVioloncelleUn \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% VioloncelleDeux %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueVioloncelleDeux \PrologueMesures
%Ouverture = \makePart \%OuvertureVioloncelleDeux \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnVioloncelleDeux \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisVioloncelleDeux \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnVioloncelleDeux \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxVioloncelleDeux \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxVioloncelleDeux \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisVioloncelleDeux \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisVioloncelleDeux \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerVioloncelleDeux \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisVioloncelleDeux \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreVioloncelleDeux \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteVioloncelleDeux \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnVioloncelleDeux \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisVioloncelleDeux \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxVioloncelleDeux \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisVioloncelleDeux \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Contrebasse %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePart \PrologueContrebasse \PrologueMesures
%Ouverture = \makePart \%OuvertureContrebasse \%OuvertureMesures
ActeUnSceneUn = \makePart \ActeUnSceneUnContrebasse \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePart \ActeUnSceneUnBisContrebasse \ActeUnSceneUnBisMesures
InterludeUn = \makePart \InterludeUnContrebasse \InterludeUnMesures
ActeUnSceneDeux = \makePart \ActeUnSceneDeuxContrebasse \ActeUnSceneDeuxMesures
InterludeDeux = \makePart \InterludeDeuxContrebasse \InterludeDeuxMesures
ActeUnSceneTrois = \makePart \ActeUnSceneTroisContrebasse \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePart \ActeUnSceneTroisBisContrebasse \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePart \ActeUnSceneTroisTerContrebasse \ActeUnSceneTroisTerMesures
InterludeTrois = \makePart \InterludeTroisContrebasse \InterludeTroisMesures
ActeUnSceneQuatre = \makePart \ActeUnSceneQuatreContrebasse \ActeUnSceneQuatreMesures
Entracte = \makePart \EntracteContrebasse \EntracteMesures
ActeDeuxSceneUn = \makePart \ActeDeuxSceneUnContrebasse \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePart \ActeDeuxSceneUnBisContrebasse \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePart \ActeDeuxSceneDeuxContrebasse \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePart \ActeDeuxSceneTroisContrebasse \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Piano %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePianoPart \ProloguePiano \PrologueMesures
%Ouverture = \makePianoPart \%OuverturePiano \%OuvertureMesures
ActeUnSceneUn = \makePianoPart \ActeUnSceneUnPiano \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePianoPart \ActeUnSceneUnBisPiano \ActeUnSceneUnBisMesures
InterludeUn = \makePianoPart \InterludeUnPiano \InterludeUnMesures
ActeUnSceneDeux = \makePianoPart \ActeUnSceneDeuxPiano \ActeUnSceneDeuxMesures
InterludeDeux = \makePianoPart \InterludeDeuxPiano \InterludeDeuxMesures
ActeUnSceneTrois = \makePianoPart \ActeUnSceneTroisPiano \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePianoPart \ActeUnSceneTroisBisPiano \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePianoPart \ActeUnSceneTroisTerPiano \ActeUnSceneTroisTerMesures
InterludeTrois = \makePianoPart \InterludeTroisPiano \InterludeTroisMesures
ActeUnSceneQuatre = \makePianoPart \ActeUnSceneQuatrePiano \ActeUnSceneQuatreMesures
Entracte = \makePianoPart \EntractePiano \EntracteMesures
ActeDeuxSceneUn = \makePianoPart \ActeDeuxSceneUnPiano \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePianoPart \ActeDeuxSceneUnBisPiano \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePianoPart \ActeDeuxSceneDeuxPiano \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePianoPart \ActeDeuxSceneTroisPiano \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Percus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Prologue = \makePianoPart \ProloguePercus \PrologueMesures
%Ouverture = \makePianoPart \%OuverturePercus \%OuvertureMesures
ActeUnSceneUn = \makePianoPart \ActeUnSceneUnPercus \ActeUnSceneUnMesures
ActeUnSceneUnBis = \makePianoPart \ActeUnSceneUnBisPercus \ActeUnSceneUnBisMesures
InterludeUn = \makePianoPart \InterludeUnPercus \InterludeUnMesures
ActeUnSceneDeux = \makePianoPart \ActeUnSceneDeuxPercus \ActeUnSceneDeuxMesures
InterludeDeux = \makePianoPart \InterludeDeuxPercus \InterludeDeuxMesures
ActeUnSceneTrois = \makePianoPart \ActeUnSceneTroisPercus \ActeUnSceneTroisMesures
ActeUnSceneTroisBis = \makePianoPart \ActeUnSceneTroisBisPercus \ActeUnSceneTroisBisMesures
ActeUnSceneTroisTer = \makePianoPart \ActeUnSceneTroisTerPercus \ActeUnSceneTroisTerMesures
InterludeTrois = \makePianoPart \InterludeTroisPercus \InterludeTroisMesures
ActeUnSceneQuatre = \makePianoPart \ActeUnSceneQuatrePercus \ActeUnSceneQuatreMesures
Entracte = \makePianoPart \EntractePercus \EntracteMesures
ActeDeuxSceneUn = \makePianoPart \ActeDeuxSceneUnPercus \ActeDeuxSceneUnMesures
ActeDeuxSceneUnBis = \makePianoPart \ActeDeuxSceneUnBisPercus \ActeDeuxSceneUnBisMesures
ActeDeuxSceneDeux = \makePianoPart \ActeDeuxSceneDeuxPercus \ActeDeuxSceneDeuxMesures
ActeDeuxSceneTrois = \makePianoPart \ActeDeuxSceneTroisPercus \ActeDeuxSceneTroisMesures

\bookpart {
  \include "./master/master.ly"
}%}

%%-----------------------------------------------------------------%
