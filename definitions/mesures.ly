%------------------------------------------------------------------%
% Opéra Libre -- mesures.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


PrologueMesures = {
  %%% Introduction %%%
  
  \time 3/4
      \mark \markup \init-did \PrologueAAA
  \partial 4 s4 R2.*3
  \time 4/4 R1 \bar "||"
  \time 2/4
      \mouv #"Largo" #"4" #48
  R2*2
  \time 3/4
  r2.      ^\markup \did \PrologueA
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4
  r2.      ^\markup \did \PrologueB
  \time 2/4 R2*2
  
  %%% Entrée du Baryton 1 %%%
  
  \time 3/4
      \mouv #"Vivo subito" #"4" #120 
  r2.      ^\markup \did \PrologueC
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4
  r2       ^\markup \did \PrologueD
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4
  r2       ^\markup \did \PrologueE
      \startTxt #"rit."
  R2
  \time 3/4
  R2. \stopTxt \bar "||"
  \time 2/4
      \mark \markup{ \mvt "Tempo giusto" }
  r2       ^\markup \did \PrologueF
  r4
  r4       ^\markup \did \PrologueG
  R2*6
  \time 3/4 R2.*6
  r2
  r4       ^\markup \did \PrologueH
  R2.
  r2.      ^\markup\did \PrologueI
  R2.
  \time 4/4 R1
  \time 2/4 R2*2 R2\fermata \bar "||"
  \time 4/4
      \mouv #"Più lento" #"4" #60
  r1       ^\markup \did \PrologueJ
  R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 2/4
      \mouv #"Adagio" #"4" #52 
  R2*4
  \time 3/4 R2.*11
  \time 3/8
  r4.      ^\markup \did \PrologueK
  \bar"||"
      \mouv #"Andantino" #"4." #56
  R4.*25
      \startTxt #"Poco a poco allargando..."
  R4.*9
  r8
  r4       ^\markup \did \PrologueL
  R4.*3 \bar "||"
      \stopTxt
      \mouv #"A tempo, un poco più vivo" #"4." #63
  R4.*28
  r4.      ^\markup\did \PrologueM
  R4.*3
  r4.      ^\markup\did \PrologueN
  R4.
  \time 5/8 R2*5/4
  \time 6/8
  r2.      ^\markup\did \PrologueO
  R2.*2 \bar "||"
  \time 4/4
      \mouv #"Adagio ad lib." #"4" #66
  R1*4
  \time 6/4 R1.*2
  \time 4/4 R1*3
  \time 6/4 R1.*2
  \time 4/4 R1*2
  \time 3/4 R2. \bar "||"
      \mouv #"Mouvement de valse modérée" #"4" #88
  R2.*6
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.*2
  \time 4/4 R1*2
  \time 3/4 R2.*5
  \time 2/4 R2*2
  \time 4/4
      \mark \markup { \mvt "Scherzando" }
  R1
  \time 3/4 R2. \bar "||"
  
  %%% Sortie du Baryton 2 %%%
  
  \time 2/4
      \mouv #"Vivo al fine" #"4" #120
  R2*23 \bar "||"
      \mark \markup { \mvt "Recitativo" }
  R2*8  \bar "|."
}

ActeUnSceneUnMesures= {
  \time 2/4
      \mark \markup { \mvt "Largo non troppo"}
  R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  
  %%% Air du Baryton 1 %%%
  
  \time 4/4
      \mark \markup { \mvt "Poco a poco animando..."}
  R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
      \mark \markup { \mvt "Piu vivo"}
  R2.*7
  \time 4/4 R1
  \time 3/4 R2.   \bar "||"
  \time 4/4
      \mark \markup { \mvt "Ad libitum (stesso tempo)"}
  R1
  \time 3/4 R2.*2
  \time 4/4 R1
  \time 3/4 R2.*2 \bar "||"
  \time 2/2
      \mark \markup { \mvt "Agitato"}
  R1*6
  \time 3/2 R1.
  \time 2/2 R1*2
  \time 3/2 R1.
  \time 2/2 R1*3
  \time 3/2 R1.
  \time 2/2 R1*2
  \time 3/2 R1.*3
  \time 2/2 R1
  \time 3/2 R1.*4 \bar "||"
  
  %%% Entrée Baryton 2 et Soprano 1 %%%
  
  \time 4/4
      \mark \markup { \mvt "Allegro non troppo"}
  R1
  \time 3/4 R2.
  \time 4/4 R1*5
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4
      \mark \markup { \mvt "poco allargando..."}
  R2.
  \time 4/4 R1*5
  \time 3/4 R2.*3
  \time 4/4 R1*6   \bar "||"
  \time 4/4
      \mark \markup { \mvt "Moderato"}
  R1*2
  \time 3/4 R2.*2
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 4/4 R1
  \time 2/4 R2*4
  \time 2/2 R1*23 \bar "||" R1*11
  \time 3/2 R1.
  \time 2/2 R1*2  \bar "||"
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4 R2*5  \bar "||"
  \time 4/4 R1*4  \bar "|."
}

ActeUnSceneUnBisMesures= {
  \time 3/4
      \mark \markup { \mvt "Agitato"}
  R2.*7
  \time 4/4
      \mark \markup { \mvt "Piu vivo"}
  R1
  \time 3/4
  R2.
  \time 4/4
  R1
  \time 3/4
  R2.*6
      \startTxt #"molto rit."
  R2. R2.
      \stopTxt
      \mark \markup { \mvt "Tempo" }
  R2. \startTxt #"molto rit."
  R2.
  \time 4/4
      \stopTxt
  R1 
  R1
  \time 2/4 R2 \bar "||"
      \mark \markup { \mvt "Largo" }
  R2*3
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.*2
  \time 4/4
    \mark \markup { \mvt "Risoluto" }
  R1*2
  \time 3/4 R2.
  \time 2/4 R2
  \time 4/4 R1
  \time 3/4 R2.*2
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*3
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4
      \mark \markup { \mvt "Recitativo" }
  R2*3
  \time 3/4 R2.*3 \bar "||"
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
  R2.*2
  \time 2/2 R1*2
  \time 3/4 R2.*2
  \time 2/2 R1*2
  \time 3/4 R2.*2
  \time 2/2 R1*2
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2
      \mark \markup { \mvt {\normalsize "Ritenuto al fine..."}}
  R1*2
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2  \bar "||"
  \time 3/4
      \mark \markup { \mvt "Recitativo"}
  R2.*2
  \time 4/4 R1
  \time 3/4 R2.*3
  \time 4/4 R1
  \time 3/4 R2.*6
  \time 2/4 R2
  \time 3/4 R2.
  \time 4/4 R1*2
  \time 3/4 R2.*5
  \time 4/4 R1 \bar "||"
  \time 3/4
      \mark \markup { \mvt "Tempo giusto"}
  R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1 
  \time 3/4 R2.
  \time 4/4 R1 
  \time 3/4 R2.
  \time 4/4 R1 
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2. 
  \time 4/4 R1*2
  \time 3/4 R2.*2
  \time 4/4 R1*2 
  \time 3/4 R2.*3
  \time 4/4 R1 \bar "||"
  \time 3/4
      \mark \markup { \mvt "Piu vivo"}
  R2.
  \time 4/4 R1
  \time 3/4 R2.*2
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1 
  \time 3/4 R2.
  \time 4/4 R1 
  \time 3/4 R2.*14
  \time 4/4
      \mark \markup { \mvt { \normalsize "Poco allargando..."}}
  R1*3 \bar "||"
      \mark \markup { \mvt "Tempo giusto subito"}
  R1*5
  \time 3/4 R2.
  \time 4/4 R1*2
  \time 3/4 R2. 
  \time 2/4 R2*3
  \time 3/4 R2.*2
  \time 2/4 R2*6 
  \time 3/4 R2.*2 \bar "||"
  \time 4/4
  \mark \markup { \mvt "Largo assai al fine"}
  R1
  \time 3/4 R2.*3
  \time 2/4 R2
  \time 3/4 R2.
  \time 4/4 R1*4 \bar "|."
}

ActeUnSceneTroisMesures= {
  \time 3/4 
      \mark \markup { \mvt "Risoluto" }
  R2.*24 \bar "||"
  \time 6/4
      \mark \markup { \mvt "Lamento" }
  R1.*6
  \time 5/4 R1*5/4*5
  \time 4/4 R1*4
  \time 3/4 R2.*3
  \time 2/4 R2*2 \bar "||"
  \time 3/4
      \mark \markup { \mvt "Tempo I" }
  R2.*14 \bar "||"
  \time 6/4
      \mark \markup { \mvt "Tempo II" }
  R1.*6
  \time 5/4 R1*5/4
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4 R2 \bar "|."
}

ActeUnSceneTroisBisMesures = {
  \time 4/4
      \mark \markup { \mvt "Andantino" }
  R1*35
  \time 3/4 R2.
  \time 4/4 R1*35 \bar "|."
}

ActeUnSceneTroisTerMesures= {

  \time 2/4 R2*3
  \time 3/4 R2. 
  \time 2/4 R2*2
  \time 3/4 R2. \bar "||"
      \mark \markup { \mvt "Allegro non troppo" }
  R2.*6
  \time 4/4 R1*6
  \time 3/4 R2. \bar "||"
      \mark \markup { \mvt "Poco meno" }
  R2.*39
  \time 4/4 R1  \bar "||"
  \time 3/4 R2.*37  \bar "|."
}

ActeUnSceneQuatreMesures = {
  \time 2/4
      \mark \markup { \mvt "Allegretto" }
  \partial 4 s4
  \time 5/8 R2*5/4
  \time 2/4 R2*3
  \time 5/8 R2*5/4
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4
      \mark \markup { \mvt "Adagio" }
  R2*3 \bar "||"
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/2 R1*2
  \time 3/2 R1.
  \time 2/2 R1*2
  \time 3/2 R1.
  \time 2/2 R1*2 \bar "||"
  \time 3/4
      \mark \markup { \mvt "Agitato" }
  R2.*27
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 4/4
      \mark \markup { \mvt"Placando assai" }
  R1*5
  \time 2/4 R2
  \time 3/4 R2.
  \time 4/4 R1
      \mark \markup { \mvt "Andante a piacere" }
  R1*9
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1*7
  \time 2/4 R2*3
  \time 3/4 R2.*2
      \mark \markup { \mvt "Poco a poco pîù mosso..." }
  R2.*4
  \time 4/4
      \mark \markup { \mvt "Agitato assai" }
  R1*4
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1*2
  \time 3/4 R2.*3
  \time 4/4 R1*2
  \time 3/4 R2.
  \time 3/8 R4*3/2
  \time 3/4 R2.
  \time 3/8 R4*3/2
  \time 2/4 R2
  \time 3/8 R4*3/2
  \time 2/4 R2*3
  \time 3/8 R4*3/2
  \time 2/4 R2*3
  \time 3/8 R4*3/2
  \time 2/4 R2*3
  \time 3/8 R4*3/2
  \time 3/4 R2. \bar "||"
  \time 4/4
      \mark \markup { \mvt "Risoluto" }
  R1*11 \bar "||"
  R1
  \time 2/4 R2
  \time 3/4 R2.*2
  \time 2/4 R2
  \time 4/4 R1 \bar "||"
  \time 3/4
      \mark \markup { \mvt "Plus lent" }
  R2.*21 \bar "||"
  \time 3/2 R1.
  \time 2/2 R1 
  \time 3/2 R1.
  \time 2/2 R1 
  \time 3/2 R1.
  \time 2/2 R1 
  \time 3/2 R1.
  \time 2/2 R1 
  \time 3/2 R1.
  \time 2/2 R1 
  \time 3/2 R1.*5
  \time 2/2 R1
  \time 3/2 R1.
  \time 2/2 R1
  \time 3/2 R1.
  \time 2/2 R1
  \time 3/2 R1.*5
  \time 2/2 R1
  \time 3/2 R1.
  \time 2/2 R1 \bar "|."
}

EntracteMesures= {
  \time 2/4
      \mark \markup{ \mvt Adagio }
  R2*9 \bar "||"
  \time 4/4 R1*24
}

ActeDeuxSceneUnMesures= { 
  \time 3/4
  \mark \markup{ \mvt Animato }
  s2.*4
  \time 2/4 s2
  \time 3/4 s2.*2
  \time 2/4 s2
  \time 3/4 s2.*3
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2 
  \time 3/4 s2.*2
  \time 2/4 s2
  \time 3/4 s2.*3
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2 
  \time 3/4 s2.*2
  \time 2/4 s2
  \time 3/4 
      \mark \markup { \mvt {\normalsize "Poco stringendo..."}}
  s2.*3
  \time 2/4 s2
  \time 3/4 s2.*2
  \time 4/4 s1
  \time 3/4 s2.
  \time 4/4 s1 
  \time 3/4 s2.
  \time 2/4 s2 
  \time 3/4 s2.
  \time 4/4 s1 
      \mark \markup { \mvt Andantino }
  s1*2
  \time 3/4 s2.*4
  \time 2/4 s2
  \time 3/4 s2.*5
  \time 4/4 s1
  \time 3/4 s2.
  \time 2/4 s2 
  \time 3/4 s2.
  \repeat unfold 21 {
    \time 4/4 s1
    \time 3/4 s2.
  }
  \time 3/4 s2.*9
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
      \startTxt #"molto rit."
  R1*5/4 R1*5/4*2  \bar "||"
  \time 7/4 
      \stopTxt
  R1*7/4*7
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
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/8 R4.
  \time 4/4 R1*6
  \time 3/4 R2.
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
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2. \bar "||"
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
  \time 3/4 R2.*7 \bar "||"
  
  %%% Séquence instrumentale %%%
  
  \time 2/4 R2*9
  \time 3/4 R2.
  \time 2/4 R2*6
  \time 5/8 R1*5/8
  \time 2/4 R2*16
  \time 5/8 R1*5/8
  \time 2/4 R2
  \time 3/8 R4.
  \time 2/4 R2
  \time 3/8 R4.
  \time 2/4 R2
  \time 3/8 R4.*2 \bar "||"
  
  %%% Solo du Baryton 1 %%%
  
  \time 3/4 R2.*7
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/8 R4.
  \time 2/4 R2
  \time 3/8 R4.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4 R2 \bar "||"
  
  \time 2/4 
      \mouv #"Doppio Tempo" #"4" #120 
  R2*7
  \time 3/4 R2.*7
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2
  
  %%% Climax %%%
  
  \time 2/4 R2
  \time 3/8 R4.
  \time 2/4 R2*3
  \time 3/8 R4.
  \time 2/4 R2*4
  \time 3/8 R4.*2
  \time 3/4 R2.
  
}
