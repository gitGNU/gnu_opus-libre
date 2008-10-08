%------------------------------------------------------------------%
% Opéra Libre -- mesures.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

% FIXME : find this file a relevant place.

PrologueMesures = {
  %%% Introduction %%%
  
  \time 3/4
      \mark \markup \init-did \PrologueAAA
  \partial 4 s4 R2.*3
  \time 4/4 R1    \bar "||"
  \time 2/4
      \tempo "Largo" 4 = 48
            R2*2
  \time 3/4
      \mark \markup \did \PrologueA
            R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4
      \mark \markup \did \PrologueB
            R2.
  \time 2/4 R2*2
  
  %%% Entrée du Baryton 1 %%%
  
  \time 3/4
      \mark \markup \did \PrologueC
      \tempo "Vivo subito" 4 = 120 
            R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4
      \mark \markup \did \PrologueD
            R2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4
      \mark \markup \did \PrologueE
            r2 %FIXME: replace with MmRest?
      \startTxt #"rit."
            R2
  \time 3/4 R2.
      \stopTxt    \bar "||"
  \time 2/4
      \mark \markup \did \PrologueF
      \once \set Score.tempoHideNote = ##t
      \tempo "Tempo giusto"
            r2
            r4
      \mark \markup \did \PrologueG
            r4
            R2*6
  \time 3/4 R2.*6
            r2
      \mark \markup \did \PrologueH
            r4
            R2.
      \mark \markup \did \PrologueI
            R2.*2
  \time 4/4 R1
  \time 2/4 R2*2 R2\fermata \bar "||"
  \time 4/4
      \mark \markup \did \PrologueJ
      \tempo "Più lento" 4 = 60
            R1*2
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 2/4
      \tempo "Adagio" 4 = 52 
            R2*4
  \time 3/4 R2.*11
  \time 3/8
      \mark \markup \did \PrologueK
            R4.   \bar"||"
      \tempo "Andantino" 4. = 56
            R4.*25
            %FIXME: doesn't work.
      \startTxt #"Poco a poco allargando..."
            R4.*9
            r8
      \mark \markup \did \PrologueL
            r4
            R4.*3 \bar "||"
      \stopTxt
      \tempo "A tempo, un poco più vivo" 4. = 63
            R4.*28
      \mark \markup \did \PrologueM
            R4.*4
      \mark \markup \did \PrologueN
            R4.*2
  \time 5/8 R2*5/4
  \time 6/8
      \mark \markup \did \PrologueO
            R2.*3 \bar "||"
  \time 4/4
      \tempo "Adagio ad lib." 4 = 66
            R1*4
  \time 6/4 R1.*2
  \time 4/4 R1*3
  \time 6/4 R1.*2
  \time 4/4 R1*2
  \time 3/4 R2.   \bar "||"
      \tempo "Mouvement de valse modérée" 4 = 88
            R2.*6
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.*2
  \time 4/4 R1*2
      \mark \markup \did \PrologueP
  \time 3/4 R2.*5
  \time 2/4 R2*2
  \time 4/4
      \once \set Score.tempoHideNote = ##t
      \tempo "Scherzando"
            R1
  \time 3/4 R2.   \bar "||"
  
  %%% Sortie du Baryton 2 %%%
  
  \time 2/4
      \tempo "Vivo al fine" 4 = 120
            R2*8
      \mark \markup \did \PrologueQ
            R2*14
            r4 
      \mark \markup \did \PrologueR
            r4
                  \bar "||"
      \tempo "Recitativo"
            R2*7
            r4
      \mark \markup \Noir
            r4    \bar "|."
}

ActeUnSceneUnMesures = {
  \time 2/4
      \mark \markup \init-did \ActeUnSceneUnAAA
      \tempo "Largo non troppo" 4 = 69
            R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4
      \mark \markup \did \ActeUnSceneUnA
            R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4
      \mark \markup \did \ActeUnSceneUnB
            R2*2
  \time 3/4 R2.
  \time 2/4
      \mark \markup \did \ActeUnSceneUnC
            R2*2
  \time 3/4 R2.
  
  %%% Air du Baryton 1 %%%
  
  \time 4/4
      \mark \markup \did \ActeUnSceneUnD
      \once \set Score.tempoHideNote = ##t
      \tempo "Poco a poco animando..."
            R1
  \time 3/4 R2.
  \time 4/4
      \mark \markup \did \ActeUnSceneUnE
            R1
  \time 3/4 R2.
  \time 4/4
      \mark \markup \did \ActeUnSceneUnF
            R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
      \mark \markup \did \ActeUnSceneUnFF
      \tempo "Piu vivo" 4 = 80
            R2.*6
      \mark \markup \did \ActeUnSceneUnFFF
            R2.
  \time 4/4 R1
  \time 3/4 R2.   \bar "||"
  \time 4/4
      \once \set Score.tempoHideNote = ##t
      \tempo "Ad libitum (stesso tempo)"
            R1
  \time 3/4 R2.*2
  \time 4/4
      \mark \markup \did \ActeUnSceneUnG
            R1
  \time 3/4 R2.*2 \bar "||"
  
  %%% Entrée Baryton 2 et Soprano 1 %%%
  
  \time 2/2
      \mark \markup \did \ActeUnSceneUnH
      \tempo "Agitato" 2 = 92
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
  
  %%% Duo Soprano 1 et Baryton 1 %%%
  
  \time 4/4
      \tempo "Allegro non troppo" 4 = 92
            R1
  \time 3/4 R2.
  \time 4/4
      \mark \markup \did \ActeUnSceneUnHH
            R1*5
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4
      \once \set Score.tempoHideNote = ##t
      \tempo "poco allargando..."
            R2.
  \time 4/4 R1
      \mark \markup \did \ActeUnSceneUnI
            R1
      \mark \markup \did \ActeUnSceneUnJ
            R1*3
  \time 3/4 R2.*2
      \mark \markup \did \ActeUnSceneUnK
            R2.
  \time 4/4 R1
      \mark \markup \did \ActeUnSceneUnL
            R1*5  \bar "||"
  \time 4/4
      \mark \markup \did \ActeUnSceneUnM
      \tempo "Moderato" 4 = 76
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
  
  %%% Trio %%%
  
  \time 2/2 
      \tempo "Allegro marcato" 4 = 132
            R1*18
      \mark \markup \did \ActeUnSceneUnN
            R1*2
      \mark \markup \did \ActeUnSceneUnO
            R1
      \mark \markup \did \ActeUnSceneUnP
            R1*2  \bar "||"
      \mark \markup \did \ActeUnSceneUnQ
      \tempo "Agitato" 2 = 80
            R1*11
  \time 3/2 R1.
  \time 2/2 R1*2  \bar "||"
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4 R2*2
      \mark \markup \did \ActeUnSceneUnR
            R2*2
      \mark \markup \did \ActeUnSceneUnS
            r4
      \mark \markup \Noir
            r4    \bar "||"
  \time 4/4 
      \mark \markup \did \ActeUnSceneUnT
      \tempo "Ad libitum" 4 = 80
            R1*4  \bar "|."
}

ActeUnSceneUnBisMesures = {
  \time 3/4
      \mark \markup \init-did \ActeUnSceneUnBisAAA
      \tempo "Agitato" 4 = 96
            R2.*7
  \time 4/4
      \mark \markup \did \ActeUnSceneUnBisA
      \tempo "Piu vivo" 4 = 112
            R1
  \time 3/4
            R2.
  \time 4/4
            R1
  \time 3/4
            R2.*5
      \mark \markup \did \ActeUnSceneUnBisB
            R2.
      \startTxt #"molto rit."
            R2. 
            R2.
      \stopTxt
      \mark \markup \did \ActeUnSceneUnBisC
      \once \set Score.tempoHideNote = ##t
      \tempo "A Tempo"
            R2.
      \startTxt #"molto rit."
            R2.
  \time 4/4
      \stopTxt
      \mark \markup \did \ActeUnSceneUnBisD
            R1*2
  \time 2/4
            R2    \bar "||" %%FIXME: too close
      \mark \markup \did \ActeUnSceneUnBisE
      \tempo "Largo" 4 = 66
            R2*3
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4 R2.*2
  \time 4/4
      \tempo "Risoluto" 4 = 96
            R1*2
  \time 3/4 R2.
  \time 2/4 R2
  \time 4/4 R1
  \time 3/4
      \tempo "Largo" 4 = 66
            R2.*2
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4
      \tempo "Risoluto" 4 = 96
            R2*3
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4
      \tempo "Recitativo" 4 = 72
            R2*3
  \time 3/4 R2.*3 \bar "||"
  \time 4/4
      \tempo "Adagio" 4 = 66
            R1*33 \bar "||"
  \time 2/4
      \tempo  "Risoluto" 4 = 92
            R2*3
            r4
      \mark \markup \Noir
            r4    \bar "|."
}

InterludeUnMesures = {
  \time 3/2
      \mark \markup \init-did \InterludeUnA
      \tempo "Andante con moto" 4 = 63
            R1.*4
      \mark \markup \did \InterludeUnB
  \time 4/2 R1*2/1
      \mark \markup \did \InterludeUnC
  \time 3/2 R1.
      \mark \markup \did \InterludeUnD
  \time 2/2 R1*5
      \mark \markup \did \InterludeUnE
  \time 3/2 R1.
  \time 2/2 R1*2
  \time 3/2 R1.
      \mark \markup \did \InterludeUnF
  \time 2/2 R1
  \time 3/4 R2.   \bar "||"
      \mark \markup \did \InterludeUnG
      \tempo "Piu vivo" 4 = 92
            R2.*16\bar"|."
}

ActeUnSceneDeuxMesures = {
  \time 3/4
      \tempo "Cavatine" 2 = 84
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
      \tempo "Ritenuto al fine..."
            R1*2
  \time 3/4 R2.*2
  \time 2/2 R1*2
      \mark \markup \did \ActeUnSceneDeuxA
  \time 3/4 R2.*2
  \time 2/2 R1*2 
  \time 3/4 R2.*2
  \time 2/2 R1*2  \bar "||"
  \time 3/4
      \mark \markup \did \ActeUnSceneDeuxAA
      \tempo "Recitativo" 4 = 84
            R2.*2
  \time 4/4 R1
  \time 3/4 R2.*3
  \time 4/4 R1
  \time 3/4 R2.*6
  \time 2/4 R2
  \time 3/4
      \mark \markup \did \ActeUnSceneDeuxB
            R2.
  \time 4/4 R1*2
  \time 3/4 R2.*5
  \time 4/4 R1    \bar "||"
  \time 3/4
      \tempo "Tempo giusto" 4 = 92
            R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1 
  \time 3/4 r2
      \mark \markup \did \ActeUnSceneDeuxC
            r4
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2. 
  \time 4/4
      \mark \markup \did \ActeUnSceneDeuxCC
            R1*2
  \time 3/4 R2.*2
  \time 4/4 R1*2 
  \time 3/4 R2.*2
      \mark \markup \did \ActeUnSceneDeuxD
            R2.
  \time 4/4
      \mark \markup \did \ActeUnSceneDeuxE
            R1    \bar "||"
  \time 3/4
      \tempo "Piu vivo" 4 = 132
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
      \tempo "Poco allargando..."
            R1*3  \bar "||"
      \tempo "Tempo giusto subito" 4 = 92
            R1*5
  \time 3/4 R2.
  \time 4/4 R1*2
  \time 3/4 R2. 
  \time 2/4 R2*3
  \time 3/4 R2.*2
  \time 2/4 R2*6 
  \time 3/4 R2.
      \mark \markup \did \ActeUnSceneDeuxF
            R2.   \bar "||"
  \time 4/4
      \tempo "Largo assai al fine" 4 = 52
            R1
  \time 3/4 R2.*3
  \time 2/4 R2
  \time 3/4
      \mark \markup \did \ActeUnSceneDeuxG
            R2.
  \time 4/4 R1*3
            r2
      \mark \markup \Noir
            r2    \bar "|."
}

ActeUnSceneTroisMesures = {
  \time 3/4
      \mark \markup \init-did \ActeUnSceneTroisA
      \tempo "Risoluto" 4 = 116
            R2.*7
            r2
      \mark \markup \did \ActeUnSceneTroisB
            r4
            R2.*10
      \mark \markup \did \ActeUnSceneTroisC
            R2.*4
      \mark \markup \did \ActeUnSceneTroisD
            R2.*2 \bar "||"
  \time 6/4
      \tempo "Lamento" 4 = 72
            R1.*6
  \time 5/4
      \mark \markup \did \ActeUnSceneTroisE
            R1*5/4*5
  \time 4/4 R1*4
  \time 3/4 R2.*3
  \time 2/4
      \mark \markup \did \ActeUnSceneTroisF
            R2*2  \bar "||"
  \time 3/4
      \mark \markup \did \ActeUnSceneTroisG
      \tempo "Tempo I" 4 = 116
            R2.*10
      \mark \markup \did \ActeUnSceneTroisH
            R2.*4 \bar "||"
  \time 6/4
      \mark \markup \did \ActeUnSceneTroisI
      \tempo "Tempo II" 4 = 72
            R1.*6
  \time 5/4 R1*5/4
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4
      \mark \markup \did \ActeUnSceneTroisJ
            r4
      \mark \markup \Noir
            r4    \bar "|."
}

ActeUnSceneTroisBisMesures = {
  \time 4/4
      \mark \markup \init-did \ActeUnSceneTroisBisA
      \tempo "Andantino" 4 = 66
            R1*9
      \mark \markup \did \ActeUnSceneTroisBisB
            R1*8
      \mark \markup \did \ActeUnSceneTroisBisC
            R1*10
      \mark \markup \did \ActeUnSceneTroisBisD
            R1*7
      \mark \markup \did \ActeUnSceneTroisBisE
            R1
  \time 3/4 R2.
  \time 4/4 R1*23
      \mark \markup \did \ActeUnSceneTroisBisF
            R1*4
      \mark \markup \did \ActeUnSceneTroisBisG
            R1*7
            r2
       \mark \markup \Noir
            r2    \bar "|."
}

ActeUnSceneTroisTerMesures = {
  \time 2/4
      \mark \markup \init-did \ActeUnSceneTroisTerA
      \once \set Score.tempoHideNote = ##t
      \tempo "Ad lib."
            R2*3
  \time 3/4 R2. 
  \time 2/4 R2*2
  \time 3/4 R2.   \bar "||"
      \mark \markup \did \ActeUnSceneTroisTerB
      \tempo "Allegro non troppo" 4 = 92
            R2.*6
  \time 4/4 R1*3
      \mark \markup \did \ActeUnSceneTroisTerC
            R1*3
  \time 3/4 R2.   \bar "||"
      \tempo "Poco meno" 4 = 84
            R2.*39
  \time 4/4 R1    \bar "||"
  \time 3/4
      \mark \markup \did \ActeUnSceneTroisTerD
            R2.*9
      \mark \markup \did \ActeUnSceneTroisTerE
            R2.*7
      \mark \markup \did \ActeUnSceneTroisTerF
            R2.*10
      \mark \markup \did \ActeUnSceneTroisTerG
            R2.*10
            r2
      \mark \markup \Noir
            r4    \bar "|."
}

InterludeTroisMesures = {
  \time 4/4
      \tempo "Andantino" 4 = 52
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
            R2.*2
  \time 2/4
            R2
  \time 3/4
            R2.
  \time 2/4
            R2*7
}

ActeUnSceneQuatreMesures = {
  \time 2/4
      \mark \markup \init-did \ActeUnSceneQuatreA
      \tempo "Allegretto" 4 = 92
  \partial 4 s4
  \time 5/8 R2*5/4
  \time 2/4 R2*3
  \time 5/8 R2*5/4
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4
      \tempo "Adagio" 4 = 60
            R2
      \mark \markup \did \ActeUnSceneQuatreB
            R2
      \mark \markup \did \ActeUnSceneQuatreC
            R2    \bar "||"
  \time 4/4
      \tempo "Allegro comodo" 4 = 92
            R1
  \time 3/4 R2.
  \time 2/2 R1*2
  \time 3/2 R1.
  \time 2/2 R1*2
  \time 3/2 R1.
  \time 2/2 R1
      \mark \markup \did \ActeUnSceneQuatreD
            R1    \bar "||"
  \time 3/4
      \tempo "Agitato" 4 = 126
            R2.*19
      \mark \markup \did \ActeUnSceneQuatreE
            R2.*8
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
      \mark \markup \did \ActeUnSceneQuatreF
      \once \set Score.tempoHideNote = ##t
      \tempo "Placando assai"
            R1*5
  \time 2/4 R2
  \time 3/4 R2.
  \time 4/4 R1
      \mark \markup \did \ActeUnSceneQuatreG
      \tempo "Andante a piacere" 4 = 92
            R1*7
      \mark \markup \did \ActeUnSceneQuatreH
            R1
      \mark \markup \did \ActeUnSceneQuatreI
            R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4
      \mark \markup \did \ActeUnSceneQuatreJ
            R1*7
  \time 2/4
      \mark \markup \did \ActeUnSceneQuatreK
            R2*3
  \time 3/4 R2.*2
      \once \set Score.tempoHideNote = ##t
      \tempo "Poco a poco più mosso..."
            R2.*4
  \time 4/4
      \tempo "Agitato assai" 4 = 104
            R1*2
      \mark \markup \did \ActeUnSceneQuatreL
            R1*2
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4
      \mark \markup \did \ActeUnSceneQuatreM
            R2.
  \time 4/4 R1*2
  \time 3/4
      \mark \markup \did \ActeUnSceneQuatreMM
            R2.*3
  \time 4/4
      \mark \markup \did \ActeUnSceneQuatreN
            R1*2
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
  \time 3/4 R2.   \bar "||"
  \time 4/4
      \tempo "Risoluto (l'istesso tempo)" 4 = 104
            R1*11 \bar "||"
      \mark \markup \did \ActeUnSceneQuatreO
            R1
  \time 2/4 R2
  \time 3/4 R2.*2
  \time 2/4 R2
  \time 4/4
      \mark \markup \did \ActeUnSceneQuatreP
            R1    \bar "||"
  \time 3/4
      \tempo "Più lento" 4 = 69
            R2.*20
      \mark \markup \did \ActeUnSceneQuatreQ
            r2
      \mark \markup \Noir
            r4    \bar "||"
  \time 3/2
      \mark \markup \did \ActeUnSceneQuatreR
      \tempo "Andantino" 4 = 108
            R1.
  \time 2/2 R1
  \time 3/2 R1.
  \time 2/2 R1
  \time 3/2 R1.
  \time 2/2
      \mark \markup \did \ActeUnSceneQuatreS
            R1
  \time 3/2
      \mark \markup \did \ActeUnSceneQuatreT
            R1.
  \time 2/2 R1
  \time 3/2 R1.
  \time 2/2 R1
  \time 3/2
      \mark \markup \did \ActeUnSceneQuatreU
            R1.*5
  \time 2/2 R1
  \time 3/2 R1.
  \time 2/2 R1
  \time 3/2 R1.
  \time 2/2 R1
  \time 3/2 R1.*5
  \time 2/2 R1
  \time 3/2 R1.
  \time 2/2 r2
      \mark \markup \Noir
            r2    \bar "|."
}

EntracteMesures = {
  \time 2/4
      \mark \markup \init-did \EntracteA
      \tempo "Adagio" 4 = 52
            R2*9  \bar "||"
  \time 4/4
      \tempo "Vivo subito" 4 = 120
            R1*24
}

ActeDeuxSceneUnMesures = { 
  \time 3/4
      \mark \markup \init-did \ActeDeuxSceneUnA
      \tempo "Animato" 4 = 92
            R2.*4
  \time 2/4 R2
  \time 3/4 R2.*2
  \time 2/4 R2
  \time 3/4 R2.*3
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2 
  \time 3/4 R2.*2
  \time 2/4 R2
  \time 3/4 R2.*3
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4 R2 
  \time 3/4 R2.*2
  \time 2/4 R2
  \time 3/4 
      \once \set Score.tempoHideNote = ##t
      \tempo "Poco stringendo..."
            R2.*2
      \mark \markup \did \ActeDeuxSceneUnB
            R2.
  \time 2/4 R2
  \time 3/4 R2.*2
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1 
  \time 3/4 R2.
  \time 2/4 R2 
  \time 3/4 R2.
  \time 4/4 R1 
      \tempo "Andantino" 4 = 108
            R1*2
  \time 3/4 R2.*4
  \time 2/4 R2
  \time 3/4 R2.*5
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4 R2 
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
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4
      \mark \markup \did \ActeDeuxSceneUnC
            R2.
  \time 4/4
      \mark \markup \did \ActeDeuxSceneUnD
            R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4
      \mark \markup \did \ActeDeuxSceneUnE
            R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4
      \mark \markup \did \ActeDeuxSceneUnF
            R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
      \mark \markup \did \ActeDeuxSceneUnG
            R2.*7
      \mark \markup \did \ActeDeuxSceneUnH
            R2.*2
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4
      \mark \markup \did \ActeDeuxSceneUnI
            R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4
      \once \set Score.tempoHideNote = ##t
      \tempo "Molto rallentando..."
            R2.
  \time 4/4 r2
      \mark \markup \did \ActeDeuxSceneUnJ
            r2
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4 R2
  \time 4/4 r2
            r4
      \mark \markup \Noir
            r4
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1    \bar "|."
}

ActeDeuxSceneUnBisMesures = {
  \time 4/4
      \mark \markup \init-did \ActeDeuxSceneUnBisA
      \tempo "Andante ad libitum" 4 = 76
            R1
  \time 3/4 R2.
  \time 2/4 R2
  \time 5/4
      \tempo "Presto Agitato" 4 = 192
            R1*5/4*7
      \mark \markup \did \ActeDeuxSceneUnBisB
            R1*5/4*17
      \mark \markup \did \ActeDeuxSceneUnBisC
            R1*5/4*17
      \mark \markup \did \ActeDeuxSceneUnBisCC
            R1*5/4*2
      \mark \markup \did \ActeDeuxSceneUnBisD
            R1*5/4*2
      \mark \markup \did \ActeDeuxSceneUnBisE
            R1*5/4*13
      \mark \markup \did \ActeDeuxSceneUnBisF
            R1*5/4*16
      \mark \markup \did \ActeDeuxSceneUnBisG
      \startTxt #"molto rit."
            r1*5/4 %FIXME
            R1*5/4
            r1
      \stopTxt
            r4    \bar "||"
  \time 7/4 
      \tempo "Moderato assai" 4 = 104
            R1*7/4*7
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 2/4 R2
  \time 3/4
      \mark \markup \did \ActeDeuxSceneUnBisH
            R2.*9
  \time 7/4 R1*7/4
            r1
      \mark \markup \did \ActeDeuxSceneUnBisI
            r2
            r4
            R1*7/4
  \time 3/4 R2.*7
  \time 7/4 R1*7/4
            r2
            r4
      \mark \markup \did \ActeDeuxSceneUnBisJ
            r1
            R1*7/4*2
      \mark \markup \did \ActeDeuxSceneUnBisK
            R1*7/4*5
                  \bar "||"
  \time 3/2
      \mark \markup \did \ActeDeuxSceneUnBisL
      \tempo "Presto subito" 2 = 52
            R1.*5
  \time 3/4
      \mark \markup \did \ActeDeuxSceneUnBisM
      \tempo "Tempo giusto" 4 = 104
            R2.*6
            r2
      \mark \markup \did \ActeDeuxSceneUnBisN
            r4
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
  \time 3/4 R2.*14
      \mark \markup \did \ActeDeuxSceneUnBisO
            R2.
  \time 2/4 R2
  \time 3/8 R4.
  \time 2/4 R2
  \time 5/8 R1*5/8
  \time 3/4 R2.
  \time 4/4
      \tempo "Tempo primo" 4 = 192
            R1
  \time 5/4 R1*5/4*3
      \mark \markup \did \ActeDeuxSceneUnBisP
            R1*5/4*5
      \mark \markup \did \ActeDeuxSceneUnBisQ
            R1*5/4*8
      \mark \markup \did \ActeDeuxSceneUnBisR
            R1*5/4*6
            r2
            r4
      \mark \markup \Noir
            r2
            R1*5/4*2
                  \bar "|."
}

ActeDeuxSceneDeuxMesures = {
  \time 3/2
      \mark \markup \init-did \ActeDeuxSceneDeuxB
      \tempo "Largo tranquillo" 2 = 46
            r2
      \mark \markup \did \ActeDeuxSceneDeuxA
            r1
            R1.*3
      \mark \markup \did \ActeDeuxSceneDeuxC
            R1.
      \mark \markup \did \ActeDeuxSceneDeuxD
            R1.
  \time 2/2 R1*2
  \time 3/4
      \mark \markup \did \ActeDeuxSceneDeuxE
            R2.*3
      \mark \markup \did \ActeDeuxSceneDeuxF
            R2.*2
  \time 3/2
      \mark \markup \did \ActeDeuxSceneDeuxG
            R1.*2
      \mark \markup \did \ActeDeuxSceneDeuxH
            R1.
  \time 2/2 R1*2
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/8 R4.
  \time 4/4
      \mark \markup \did \ActeDeuxSceneDeuxI
            R1*3
      \mark \markup \did \ActeDeuxSceneDeuxJ
            R1*2
      \mark \markup \did \ActeDeuxSceneDeuxK
            R1
  \time 3/4 R2.
  \time 3/2 R1.
  \time 2/2 R1*2  \bar "||"
  
  %%% Air kitsch du Baryton 1 %%%
  
  \time 3/4 R2.*3
  \time 2/4 R2
  \time 3/4 R2.*3
  \time 2/4 R2
  \time 3/8 R4.   \bar "||"
  
  %%% Duo Sopranos 1 et 2 %%%
  
  \time 4/4
      \mark \markup \did \ActeDeuxSceneDeuxL
            R1*5
  \time 2/4
      \mark \markup \did \ActeDeuxSceneDeuxM
            R2*6
  \time 4/4 R1
  \time 3/4 R2.
  \time 3/2 R1.
  \time 2/2 R1
  \time 3/2 R1.*2
  \time 3/4 R2.
  \time 2/2
      \mark \markup \did \ActeDeuxSceneDeuxN
            R1    \bar "||"
  
  %%% Ensemble 1 %%%
  
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
  \time 3/4
      \mark \markup \did \ActeDeuxSceneDeuxO
            R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.   \bar "||"
  
  %%% Course-poursuite %%%
  
  \time 2/4
      \mark \markup \did \ActeDeuxSceneDeuxP
      \tempo "Presto (doppio tempo)" 4 = 176
            R2*2
      \mark \markup \did \ActeDeuxSceneDeuxQ
            R2
  \time 3/4 R2.
  \time 4/4
      \mark \markup \did \ActeDeuxSceneDeuxR
            R1*3
  \time 5/8 R1*5/8*5
      \mark \markup \did \ActeDeuxSceneDeuxS
            R1*5/8*6
      \mark \markup \did \ActeDeuxSceneDeuxT
            R1*5/8
      \mark \markup \did \ActeDeuxSceneDeuxU
            R1*5/8*2
  \time 4/4
      \mark \markup \did \ActeDeuxSceneDeuxV
      \tempo "Andante ad lib." 4 = 80
            R1
      \mark \markup \did \ActeDeuxSceneDeuxW
            R1
      \mark \markup \did \ActeDeuxSceneDeuxX
            R1
      \mark \markup \did \ActeDeuxSceneDeuxY
            R1*3
      \mark \markup \did \ActeDeuxSceneDeuxZ
            R1*2
      \mark \markup \did \ActeDeuxSceneDeuxZA
            R1
  \time 3/4
      \mark \markup \did \ActeDeuxSceneDeuxZAA
            R2.
  \time 2/4 R2
  \time 4/4 R1*2
  \time 3/4 R2.*2
      \mark \markup \did \ActeDeuxSceneDeuxZB
            R2.*5
  \time 2/4
      \mark \markup \did \ActeDeuxSceneDeuxZBB
      \tempo "Andantino" 4 = 66
            R2*2
  \time 3/4 R2.*2
  \time 2/4 R2*19
      \mark \markup \did \ActeDeuxSceneDeuxZC
            R2*4
      \mark \markup \did \ActeDeuxSceneDeuxZD
            R2*2  \bar "||"
  \time 3/4
      \mark \markup \did \ActeDeuxSceneDeuxZDD
      \once \set Score.tempoHideNote = ##t
      \tempo "Stesso Tempo"
            R2.*16 \bar "|."
}

ActeDeuxSceneTroisMesures = {
  \time 3/8
      \mark \markup \init-did \ActeDeuxSceneTroisA
      \tempo "Larghetto" 8 = 120
            R4.*15
      \mark \markup \did \ActeDeuxSceneTroisB
            R4.*15
      \mark \markup \did \ActeDeuxSceneTroisC
            R4.*16
      \mark \markup \did \ActeDeuxSceneTroisD
            R4.*5 \bar "||"
  \time 2/8
      \mark \markup \did \ActeDeuxSceneTroisE
            R4*2
      \mark \markup \did \ActeDeuxSceneTroisF
            R4*13
      \mark \markup \did \ActeDeuxSceneTroisG
            R4*12
  \time 3/8 R4.
  \time 2/8 R4
      \mark \markup \did \ActeDeuxSceneTroisH
            R4*3
      \mark \markup \did \ActeDeuxSceneTroisI
            R4
      \mark \markup \did \ActeDeuxSceneTroisJ
            R4*2
  \time 3/8 R4.*14
  \time 2/8 R4*13
      \mark \markup \did \ActeDeuxSceneTroisK
            R4*15
  \time 3/4
      \mark \markup \did \ActeDeuxSceneTroisL
            R2.*4
      \mark \markup \did \ActeDeuxSceneTroisM
            R2.*3 \bar "||"
  
  %%% Séquence instrumentale %%%
  
  \time 2/4 R2*2
      \mark \markup \init-did \ActeDeuxSceneTroisN
            R2*7
  \time 3/4 R2.
  \time 2/4 R2*6
  \time 5/8 R1*5/8
  \time 2/4 R2*16
  \time 5/8 R1*5/8
  \time 2/4
      \mark \markup \did \ActeDeuxSceneTroisO
            R2
  \time 3/8 R4.
  \time 2/4 R2
  \time 3/8 R4.
  \time 2/4
      \mark \markup \did \ActeDeuxSceneTroisP
            R2
  \time 3/8 R4.*2 \bar "||"
  
  %%% Solo du Baryton 1 %%%
  
  \time 3/4
      \mark \markup \did \ActeDeuxSceneTroisQ
            R2.*7
  \time 2/4 R2*2
  \time 3/4
      \mark \markup \did \ActeDeuxSceneTroisR
            R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4
      \mark \markup \did \ActeDeuxSceneTroisS
            R2
  \time 3/8 R4.
  \time 2/4 R2
  \time 3/8 R4.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 2/4 R2*2
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4
      \mark \markup \did \ActeDeuxSceneTroisT
            R2.
  \time 2/4 R2    \bar "||"
  
      \tempo "Doppio Tempo" 4 = 120 
            R2*4
      \mark \markup \did \ActeDeuxSceneTroisU
            R2*3
  \time 3/4
      \mark \markup \did \ActeDeuxSceneTroisV
            R2.*7
  \time 2/4 R2
  \time 3/4 R2.
  \time 2/4
      \mark \markup \did \ActeDeuxSceneTroisW
            R2
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
  \time 3/4
      \mark \markup \did \ActeDeuxSceneTroisX
            R2.
  
  %%% Climax %%%
  
  \time 2/4 R2
  \time 3/8 R4.
  \time 2/4 R2*3
  \time 3/8 R4.
  \time 2/4 R2*4
  \time 3/8 R4.*2
  \time 3/4 R2.
  \time 4/4 R1
  \time 3/4 R2.
  \time 4/4
      \mark \markup \did \ActeDeuxSceneTroisY
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
  \time 4/4
      \mark \markup \did \ActeDeuxSceneTroisZ
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
  \time 4/4
      \mark \markup \did \ActeDeuxSceneTroisZA
            R1*6
  \time 2/4 R2*3  \bar "||"
  \time 3/4
      \mark \markup \did \ActeDeuxSceneTroisZB
      \tempo "Tempo giusto" 4 = 120
            R2.*3
      \mark \markup \did \ActeDeuxSceneTroisZC
            R2.*3
            r2
      \mark \markup \did \ActeDeuxSceneTroisZCC
            r4
            R2.*4
  \time 3/8 
      \mark \markup \did \ActeDeuxSceneTroisZD
            R4.
  \time 3/4 R2.*8
      \mark \markup \did \ActeDeuxSceneTroisZDD
            R2.*3
      \mark \markup \did \ActeDeuxSceneTroisZE
            R2.*2
      \mark \markup \did \ActeDeuxSceneTroisZF
            R2.*13
  \time 2/4
      \mark \markup \did \ActeDeuxSceneTroisZG
            R2*12
  \time 3/4 R2.
  \time 2/4 R2*6
  \time 3/4 R2.*4
  \time 2/2
      \tempo "Allegro" 4 = 132
            R1*2
      \mark \markup \did \ActeDeuxSceneTroisZH
            R1*6
      \mark \markup \did \ActeDeuxSceneTroisZI
            R1*6
      \mark \markup \did \ActeDeuxSceneTroisZJ
            R1
      \mark \markup \did \ActeDeuxSceneTroisZK
            R1*4
      \mark \markup \did \ActeDeuxSceneTroisZL
            R1
            r2
      \mark \markup \did \ActeDeuxSceneTroisZM
            r2
            R1*2
      \mark \markup \did \ActeDeuxSceneTroisZN
            R1
  \time 3/4 R2.   \bar "||"
      \mark \markup \did \ActeDeuxSceneTroisZO
            R2.*5
  \time 2/4 R2*3  \bar "||"
  
  %%% Épilogue %%%
  
  \time 3/4
      \mark \markup \did \ActeDeuxSceneTroisZP
      \tempo "Andante al fine" 8 = 104
            R2.*10
      \mark \markup \did \ActeDeuxSceneTroisZQ
            R2.*10
      \mark \markup \did \ActeDeuxSceneTroisZR
            R2.*5
      \mark \markup \did \ActeDeuxSceneTroisZS
            R2.*8
      \mark \markup \Noir
            R2.*7 \bar "|."
}
