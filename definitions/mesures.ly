%------------------------------------------------------------------%
% Opéra Libre -- mesures.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


PrologueMesures = {
  %%% Introduction %%%
  
  \time 3/4
  \partial 4 s4 s2.*3
  \time 4/4 s1
  \time 2/4
  \mark \markup{ \large \bold Largo } R2*2
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
  \mark \markup{ \large \bold {Vivo subito} } R2. |
  \time 2/4
  R2*2 |
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
  R2 |
  \time 3/4
  R2. |
  \override TextSpanner #'edge-text = #'("rit." . "")
  \time 2/4
  R2 | R2\startTextSpan |
  \time 3/4
  R2.\stopTextSpan \bar "||"
  \time 2/4
  \mark \markup{ \large \bold {Tempo giusto} }R2*8 |
  \time 3/4
  R2.*10 |
  \time 4/4
  R1 |
  \time 2/4
  R2*2 | R2\fermata \bar "||"
  \time 4/4
  \mark \markup{ \large \bold {Piu lento} } R1*2 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  R1 |
  \time 2/4
  \mark \markup{ \large \bold Adagio } | R2*4 |
  \time 3/4
  R2.*11 |
  \time 3/8
  R4. \bar"||"
  \mark \markup { \large \bold Andantino }
  R4.*25
  \mark \markup { \large \bold "Poco a poco allargando..." }
  R4.*13 \bar "||"
  \mark \markup { \large \bold "A tempo, un poco piu vivo" }
  R4.*34
  \time 5/8
  R2*5/4
  \time 6/8
  R2.*3 \bar "||"
  \time 4/4
  \mark \markup { \large \bold "Adagio, ad libitum" }
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
  \mark \markup { \large \bold "Mouvement de valse modérée" }
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
  \mark \markup { \large \bold "Vivo al fine" }
  R2*23 \bar "||"
  \mark \markup { \large \bold "Recitativo" }
  R2*8 \bar "|."
}

ActeUnSceneUnMesures= {
  \time 2/4
  \mark \markup { \large \bold "Largo non troppo"}
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
  \mark \markup { \large \bold "Poco a poco animando..."}
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
  \mark \markup {\large \bold "Piu vivo"}
  R2.*7|
  \time 4/4
  R1|
  \time 3/4
  R2. \bar "||"
  \time 4/4
  \mark \markup {\large \bold "Ad libitum (stesso tempo)"}
  R1|
  \time 3/4
  R2.*2
  \time 4/4
  R1
  \time 3/4
  R2.*2 \bar "||"
  \time 2/2
  \mark \markup {\large \bold "Agitato"}
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
  \mark \markup {\large \bold "Allegro non troppo"}
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
  \mark \markup {\large \bold "poco allargando..."}
  R2.
  \time 4/4
  R1*5
  \time 3/4
  R2.*3
  \time 4/4
  R1*6 \bar "||"
  \time 4/4
  \mark \markup {\large \bold "Moderato"}
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
  \mark \markup { \large \bold "Agitato"}
  R2.*7 |
  \time 4/4
  \mark \markup { \large \bold "Piu vivo"}
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.*6
 \override TextSpanner #'edge-text = #'("molto rit." . "")
  R2. \startTextSpan R2.\stopTextSpan
  \mark \markup { \large \bold "Tempo" }
  R2.
  R2.\startTextSpan
  \time 4/4
  R1\stopTextSpan R1
  \time 2/4
  R2 \bar "||"
  \mark \markup { \large \bold "Largo" }
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
  \mark \markup { \large \bold "Risoluto" }
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
  \mark \markup { \large \bold "Recitativo" }
  R2*3
  \time 3/4
  R2.*3 \bar "||"
  \time 4/4
  \mark \markup { \large \bold "Adagio" }
  R1*33 \bar "||"
  \time 2/4
  \mark \markup { \large \bold "Risoluto" }
  R2*4 \bar "|."
}

ActeUnSceneDeuxMesures= {
  \time 3/4
  \mark \markup { \large \bold "Cavatine" }
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
  \mark \markup {\normalsize \bold "Ritenuto al fine..."}
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
  \mark \markup { \large \bold "Recitativo"}
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
  \mark \markup { \large \bold "Tempo giusto"}
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
  \mark \markup {\large \bold "Piu vivo"}
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
  \mark \markup {\normalsize \bold "Poco allargando..."}
  R1*3 \bar "||"
  \mark \markup {\large \bold "Tempo giusto subito"}
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
  \mark \markup {\large \bold "Largo assai al fine"}
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
  \mark \markup { \large \bold "Risoluto" }
  R2.*24 \bar "||"
  \time 6/4
  \mark \markup { \large \bold "Lamento" }
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
  \mark \markup { \large \bold "Tempo I" }
  R2.*14 \bar "||"
  \time 6/4
  \mark \markup { \large \bold "Tempo II" }
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
  \mark \markup { \large \bold "Andantino" }
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
  \mark \markup { \huge \bold "Allegro non troppo" } R2.*6 |
  \time 4/4 R1*6 |
  \time 3/4 R2. \bar "||"
  \mark \markup { \huge \bold "Poco meno" } R2.*39 |
  \time 4/4 R1 \bar "||"
  \time 3/4 R2.*37  \bar "|."
}

ActeUnSceneQuatreMesures = {
  \time 2/4
  \mark \markup { \huge \bold "Allegretto" }
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
  \mark \markup { \huge \bold "Adagio" }
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
  \mark \markup { \huge \bold "Agitato" }
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
  \mark \markup { \huge \bold "Placando assai" }
  R1*5
  \time 2/4
  R2
  \time 3/4
  R2.
  \time 4/4
  R1
  \mark \markup { \huge \bold "Andante a piacere" }
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
  \mark \markup { \huge \bold "Poco a poco pîù mosso..." }
  R2.*4
  \time 4/4
  \mark \markup { \huge \bold "Agitato assai" }
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
  \mark \markup { \huge \bold "Risoluto" }
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
  \mark \markup { \huge \bold "Plus lent" }
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
  \mark \markup{ \huge \bold Adagio }
  s2*9 \bar "||"
  \time 4/4
  s1*24
}

ActeDeuxSceneUnMesures= { 
  \time 3/4
  \mark \markup{ \huge \bold Animato }
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
    \mark \markup { \normalsize \bold "Poco stringendo..."}
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
    \mark \markup { \huge \bold Andantino }
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
  \mark \markup {\huge \bold "Andante tranquillo" }  
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
