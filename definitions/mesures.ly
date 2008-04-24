%------------------------------------------------------------------%
% Opéra Libre -- mesures.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


PrologueMesures = {
  %%% Introduction %%%
  
  \time 3/4
  \partial 4 s4 R2.*3
  \mark \markup \init-did \PrologueA
  \time 4/4 R1 \bar "||"
  \time 2/4
  \mark \markup{ \mvt Largo } 
  \tempo 4 = 50
  R2*2
  \time 3/4
  R2.
  \mark \markup \did \PrologueAA
  \time 2/4
  R2*2 |
  \time 3/4
  R2. |
  \time 2/4
  R2*2 |
  \time 3/4
  R2. |
  \time 2/4
  R2*2 |
  \time 3/4
  R2.
  \mark \markup \did \PrologueB
  \time 2/4
  R2*2 |
  \time 3/4
  \mark \markup{ \mvt "Vivo subito" } R2. |
  \time 2/4
  \mark \markup \did \PrologueC
  R2*2 |
  \time 3/4
  R2. |
  \time 2/4
  R2
  \mark \markup \did \PrologueD
  \time 3/4
  R2. |
  \time 2/4
  R2 |
  \time 3/4
  R2. |
  \time 2/4
  R2 |
  \time 3/4
  R2. |
  \time 2/4
  \mark \markup \did \PrologueE
  R2 | 
  \startTxt #"rit."
  R2 |
  \time 3/4
  R2.\stopTxt \bar "||"
  \time 2/4
  \mark \markup{ \mvt "Tempo giusto" }
  R2 
  \mark \markup \did \PrologueF
  R2*7 |
  \time 3/4
  R2.*10 |
  \time 4/4
  R1 |
  \time 2/4
  R2*2 | R2\fermata \bar "||"
  \time 4/4
  \mark \markup{ \mvt {Piu lento} } R1*2 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 2/4
  \mark \markup{ \mvt Adagio } | R2*4 |
  \time 3/4
  R2.*11 |
  \time 3/8
  R4. \bar"||"
  \mark \markup { \mvt Andantino }
  R4.*25
  \mark \markup { \mvt "Poco a poco allargando..." }
  R4.*13 \bar "||"
  \mark \markup { \mvt "A tempo, un poco piu vivo" }
  R4.*34
  \time 5/8
  R2*5/4
  \time 6/8
  R2.*3 \bar "||"
  \time 4/4
  \mark \markup { \mvt "Adagio, ad libitum" }
  R1*4
  \time 6/4
  R1.*2
  \time 4/4
  R1*3
  \time 6/4
  R1.*2
  \time 4/4
  R1*2
  \time 3/4
  R2. \bar "||"
  \mark \markup { \mvt "Mouvement de valse modérée" }
  R2.*6
  \time 2/4
  R2*2
  \time 3/4
  R2.
  \time 2/4
  R2
  \time 3/4
  R2.*2
  \time 4/4
  R1*2
  \time 3/4
  R2.*5
  \time 2/4
  R2*2
  \time 4/4
  R1
  \time 3/4
  R2. \bar "||"
  \time 2/4
  \mark \markup { \mvt "Vivo al fine" }
  R2*23 \bar "||"
  \mark \markup { \mvt "Recitativo" }
  R2*8 \bar "|."
}

ActeUnSceneUnMesures= {
  \time 2/4
  \mark \markup { \mvt "Largo non troppo"}
  R2*2 |
  \time 3/4
  R2. |
  \time 2/4
  R2*2 |
  \time 3/4
  R2. |
  \time 2/4
  R2*2 |
  \time 3/4
  R2. |
  \time 2/4
  R2*2 |
  \time 3/4
  R2. |
  \time 2/4
  R2*2 |
  \time 3/4
  R2. |
  \time 2/4
  R2*2 |
  \time 3/4
  R2. |
  \time 4/4
  \mark \markup { \mvt "Poco a poco animando..."}
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \mark \markup { \mvt "Piu vivo"}
  R2.*7|
  \time 4/4
  R1|
  \time 3/4
  R2. \bar "||"
  \time 4/4
  \mark \markup { \mvt "Ad libitum (stesso tempo)"}
  R1|
  \time 3/4
  R2.*2
  \time 4/4
  R1
  \time 3/4
  R2.*2 \bar "||"
  \time 2/2
  \mark \markup { \mvt "Agitato"}
  R1*6|
  \time 3/2
  R1.
  \time 2/2
  R1*2
  \time 3/2
  R1.
  \time 2/2
  R1*3
  \time 3/2
  R1.
  \time 2/2
  R1*2
  \time 3/2
  R1.*3
  \time 2/2
  R1
  \time 3/2
  R1.*4 \bar "||"
  
  \time 4/4
  \mark \markup { \mvt "Allegro non troppo"}
  R1
  \time 3/4
  R2.
  \time 4/4
  R1*5
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  \mark \markup { \mvt "poco allargando..."}
  R2.
  \time 4/4
  R1*5
  \time 3/4
  R2.*3
  \time 4/4
  R1*6 \bar "||"
  \time 4/4
  \mark \markup { \mvt "Moderato"}
  R1*2
  \time 3/4
  R2.*2
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 2/4
  R2
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 2/4
  R2*4
  \time 2/2
  R1*23 \bar "||"
  R1*11
  \time 3/2
  R1.
  \time 2/2
  R1*2 \bar "||"
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 2/4
  R2*5\bar "||"
  \time 4/4
  R1*4  \bar "|."
}

ActeUnSceneUnBisMesures= {
  \time 3/4
  \mark \markup { \mvt "Agitato"}
  R2.*7 |
  \time 4/4
  \mark \markup { \mvt "Piu vivo"}
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.*6
 \override TextSpanner #'edge-text = #'("molto rit." . "")
  R2. \startTextSpan R2.\stopTextSpan
  \mark \markup { \mvt "Tempo" }
  R2.
  R2.\startTextSpan
  \time 4/4
  R1\stopTextSpan R1
  \time 2/4
  R2 \bar "||"
  \mark \markup { \mvt "Largo" }
  R2*3
  \time 3/4
  R2.
  \time 2/4
  R2
  \time 3/4
  R2.
  \time 2/4
  R2
  \time 3/4
  R2.*2
  \time 4/4
  \mark \markup { \mvt "Risoluto" }
  R1*2
  \time 3/4
  R2.
  \time 2/4
  R2
  \time 4/4
  R1
  \time 3/4
  R2.*2
  \time 2/4
  R2*2
  \time 3/4
  R2.
  \time 2/4
  R2*3
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 2/4
  \mark \markup { \mvt "Recitativo" }
  R2*3
  \time 3/4
  R2.*3 \bar "||"
  \time 4/4
  \mark \markup { \mvt "Adagio" }
  R1*33 \bar "||"
  \time 2/4
  \mark \markup { \mvt "Risoluto" }
  R2*4 \bar "|."
}

ActeUnSceneDeuxMesures= {
  \time 3/4
  \mark \markup { \mvt "Cavatine" }
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  \mark \markup { \mvt {\normalsize "Ritenuto al fine..."}}
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 2/2
  R1*2  \bar "||"
  \time 3/4
  \mark \markup { \mvt "Recitativo"}
  R2.*2 |
  \time 4/4
  R1 |
  \time 3/4
  R2.*3 |
  \time 4/4
  R1 |
  \time 3/4
  R2.*6 |
  \time 2/4
  R2 |
  \time 3/4
  R2. |
  \time 4/4
  R1*2 |
  \time 3/4
  R2.*5 |
  \time 4/4
  R1 \bar "||"
  \time 3/4
  \mark \markup { \mvt "Tempo giusto"}
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \time 2/4
  R2*2 |
  \time 3/4
  R2. |
  \time 4/4
  R1*2 |
  \time 3/4
  R2.*2 |
  \time 4/4
  R1*2 |
  \time 3/4
  R2.*3 |
  \time 4/4
  R1 \bar "||"
  \time 3/4
  \mark \markup { \mvt "Piu vivo"}
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2.*2
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2.*14
  \time 4/4
  \mark \markup { \mvt { \normalsize "Poco allargando..."}}
  R1*3 \bar "||"
  \mark \markup { \mvt "Tempo giusto subito"}
  R1*5 |
  \time 3/4
  R2. |
  \time 4/4
  R1*2 |
  \time 3/4
  R2. |
  \time 2/4
  R2*3 |
  \time 3/4
  R2.*2 |
  \time 2/4
  R2*6 |
  \time 3/4
  R2.*2 \bar "||"
  \time 4/4
  \mark \markup { \mvt "Largo assai al fine"}
  R1 |
  \time 3/4
  R2.*3 |
  \time 2/4
  R2 |
  \time 3/4
  R2. |
  \time 4/4
  R1*4 \bar "|."
}

ActeUnSceneTroisMesures= {
  \time 3/4 
  \mark \markup { \mvt "Risoluto" }
  R2.*24 \bar "||"
  \time 6/4
  \mark \markup { \mvt "Lamento" }
  R1.*6
  \time 5/4
  R1*5/4*5
  \time 4/4
  R1*4
  \time 3/4
  R2.*3
  \time 2/4
  R2*2 \bar "||"
  \time 3/4
  \mark \markup { \mvt "Tempo I" }
  R2.*14 \bar "||"
  \time 6/4
  \mark \markup { \mvt "Tempo II" }
  R1.*6
  \time 5/4
  R1*5/4
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 2/4
  R2 \bar "|."
}

ActeUnSceneTroisBisMesures = {
  \time 4/4
  \mark \markup { \mvt "Andantino" }
  R1*35
  \time 3/4
  R2.
  \time 4/4
  R1*35 \bar "|."
}

ActeUnSceneTroisTerMesures= {

  \time 2/4 R2*3 |
  \time 3/4 R2.  |
  \time 2/4 R2*2 |
  \time 3/4 R2. \bar "||"
  \mark \markup { \mvt "Allegro non troppo" } R2.*6 |
  \time 4/4 R1*6 |
  \time 3/4 R2. \bar "||"
  \mark \markup { \mvt "Poco meno" } R2.*39 |
  \time 4/4 R1 \bar "||"
  \time 3/4 R2.*37  \bar "|."
}

ActeUnSceneQuatreMesures = {
  \time 2/4
  \mark \markup { \mvt "Allegretto" }
  \partial 4 s4
  \time 5/8
  R2*5/4
  \time 2/4
  R2*3
  \time 5/8
  R2*5/4
  \time 2/4
  R2*2
  \time 3/4
  R2.
  \time 2/4
  \mark \markup { \mvt "Adagio" }
  R2*3 \bar "||"
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 2/2
  R1*2
  \time 3/2
  R1.
  \time 2/2
  R1*2
  \time 3/2
  R1.
  \time 2/2
  R1*2 \bar "||"
  \time 3/4
  \mark \markup { \mvt "Agitato" }
  R2.*27
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 2/4
  R2
  \time 3/4
  R2.
  \time 2/4
  R2
  \time 3/4
  R2.
  \time 2/4
  R2
  \time 3/4
  R2.
  \time 4/4
  \mark \markup { \mvt"Placando assai" }
  R1*5
  \time 2/4
  R2
  \time 3/4
  R2.
  \time 4/4
  R1
  \mark \markup { \mvt "Andante a piacere" }
  R1*9
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1*7
  \time 2/4
  R2*3
  \time 3/4
  R2.*2
  \mark \markup { \mvt "Poco a poco pîù mosso..." }
  R2.*4
  \time 4/4
  \mark \markup { \mvt "Agitato assai" }
  R1*4
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.
  \time 4/4
  R1*2
  \time 3/4
  R2.*3
  \time 4/4
  R1*2
  \time 3/4
  R2.
  \time 3/8
  R4*3/2
  \time 3/4
  R2.
  \time 3/8
  R4*3/2
  \time 2/4
  R2
  \time 3/8
  R4*3/2
  \time 2/4
  R2*3
  \time 3/8
  R4*3/2
  \time 2/4
  R2*3
  \time 3/8
  R4*3/2
  \time 2/4
  R2*3
  \time 3/8
  R4*3/2
  \time 3/4
  R2. \bar "||"
  \time 4/4
  \mark \markup { \mvt "Risoluto" }
  R1*11 \bar "||"
  R1
  \time 2/4
  R2
  \time 3/4
  R2.*2
  \time 2/4
  R2
  \time 4/4
  R1 \bar "||"
  \time 3/4
  \mark \markup { \mvt "Plus lent" }
  R2.*21 \bar "||"
  \repeat unfold 5 {\time 3/2
  R1.
  \time 2/2
  R1 }
  \time 3/2
  R1.*5
  \time 2/2
  R1
  \time 3/2
  R1.
  \time 2/2
  R1
  \time 3/2
  R1.
  \time 2/2
  R1
  \time 3/2
  R1.*5
  \time 2/2
  R1
  \time 3/2
  R1.
  \time 2/2
  R1 \bar "|."
}

EntracteMesures= {
  \time 2/4
  \mark \markup{ \mvt Adagio }
  s2*9 \bar "||"
  \time 4/4
  s1*24
}

ActeDeuxSceneUnMesures= { 
  \time 3/4
  \mark \markup{ \mvt Animato }
  s2.*4 |
  \time 2/4 s2 |
  \time 3/4 s2.*2 |
  \time 2/4 s2 |
  \time 3/4 s2.*3 |
  \time 2/4 s2 |
  \time 3/4 s2. |
  \time 2/4 s2 |
  \time 3/4 s2.*2 |
  \time 2/4 s2 |
  \time 3/4 s2.*3 |
  \time 2/4 s2 |
  \time 3/4 s2. |
  \time 2/4 s2 |
  \time 3/4 s2.*2 |
  \time 2/4 s2 |
  \time 3/4 
  \mark \markup { \mvt {\normalsize "Poco stringendo..."}}
    s2.*3 |
  \time 2/4 s2 |
  \time 3/4 s2.*2 |
  \time 4/4 s1 |
  \time 3/4 s2. |
  \time 4/4 s1 |
  \time 3/4 s2. |
  \time 2/4 s2 |
  \time 3/4 s2. |
  \time 4/4 s1 |
    \mark \markup { \mvt Andantino }
    s1*2
  \time 3/4 s2.*4 |
  \time 2/4 s2 |
  \time 3/4 s2.*5 |
  \time 4/4 s1 |
  \time 3/4 s2.|
  \time 2/4 s2 |
  \time 3/4 s2.|
  \repeat unfold 21 {
    \time 4/4 s1
    \time 3/4 s2.
  }
  \time 3/4 s2.*9 |
  \repeat unfold 7 {
    \time 4/4 s1
    \time 3/4 s2.
  }
  \time 2/4 s2
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1 \bar "|."
}

ActeDeuxSceneUnBisMesures = {
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4 R2
  \time 5/4 R1*5/4*45
  R1*5/4*29
  \override TextSpanner #'edge-text = #'("molto rit." . "")
  R1*5/4\startTextSpan R1*5/4*2  \bar "||"
  \time 7/4 R1*7/4*7 \stopTextSpan 
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.*9
  \time 7/4 R1*7/4*3
  \time 3/4 R2.*7
  \time 7/4 R1*7/4*9 \bar "||"
  
  \time 3/2 R1.*5
  \time 3/4 R2.*7
  \time 2/4 R2*2
  \time 3/4 R2.*4
  \time 2/4 R2
  \time 3/8 R4.
  \time 2/4 R2*3
  \time 3/8 R4.
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/8 R4.
  \time 3/4 R2.
  \time 5/8 R1*5/8
  \time 2/4 R2
  \time 3/8 R4.
  \time 3/4 R2.*15
  \time 2/4 R2
  \time 3/8 R4.
  \time 2/4 R2
  \time 5/8 R1*5/8
  \time 3/4 R2.
  \time 4/4 R1
  \time 5/4 %%
}

ActeDeuxSceneDeuxMesures = {
  \time 3/2
  \mark \markup { \mvt "Andante tranquillo" }  
  R1.*6
  \time 2/2 R1*2
  \time 3/4 R2.*5
  \time 3/2 R1.*3
  \time 2/2 R1*2
  \time 3/4 R2. |
  \time 4/4 R1
  \time 3/8 R4. |
  \time 4/4 R1*6 |
  \time 3/4 R2. |
  \time 3/2 R1.
  \time 2/2 R1*2 \bar "||"
  \time 3/4 R2.*3
  \time 2/4 R2
  \time 3/4 R2.*3
  \time 2/4 R2
  \time 3/8 R4. \bar "||"
  \time 4/4 R1*5
  \time 2/4 R2*6
  \time 4/4 R1
  \time 3/4 R2.
  \time 3/2 R1.
  \time 2/2 R1
  \time 3/2 R1.*2
  \time 3/4 R2.
  \time 2/2 R1 \bar "||"
}

ActeDeuxSceneTroisMesures = {
  \time 3/8
  \mark \markup { \mvt "Larghetto" }
  R4.*51 \bar "||"
  \time 2/8 R4*27
  \time 3/8 R4.
  \time 2/8 R4*7
  \time 3/8 R4.*14
  \time 2/8 R4*28
}
