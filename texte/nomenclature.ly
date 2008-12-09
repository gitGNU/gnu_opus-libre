%------------------------------------------------------------------%
% Opéra Libre -- nomenclature.ly                                   %
%                                                                  %
% (c) Lewis Trondheim & Valentin Villenave, 2008                   %
%                                                                  %
%------------------------------------------------------------------%

%% Depends on: text-functions.ly

%%%%%%%%%%%%%%%%%%%%%%%%% Instrument Names %%%%%%%%%%%%%%%%%%%%%%%%%

%TODO: use alists

%% Instruments ----------------------------------------------------%

%TODO

%% Voices ---------------------------------------------------------%

SopranoType = "Soprano lyrique"
ContraltoType = "Alto"
TenorType = "Ténor"
BarytonType = "Baryton"

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Characters %%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Names ----------------------------------------------------------%

SopranoUnName=  "Le Docteur"
SopranoUnShortName= "Doct."

SopranoDeuxName=  "La Reine"
SopranoDeuxShortName=  "Reine."

ContraltoName= "Dieu"
ContraltoShortName= "Dieu."

TenorName= "Le Chef"
TenorShortName= "Chef."

BarytonUnName= "L'Étranger"
BarytonUnShortName= "Étr."

BarytonDeuxName= "Le Roi"
BarytonDeuxShortName= "Roi."

%% List -----------------------------------------------------------%

CharacterList = \markup {
  \fill-line {
    \center-column {
      \override #'(line-width . 60)
      \override #'(box-padding . 5.0)
      \rounded-box
      \fill-line {
        \center-column {
          \fill-line { Personnages }
          \override #'(baseline-skip . 6)
          \fill-line {
            \left-column {
              \SopranoUnName
              \SopranoDeuxName
              \ContraltoName
              \TenorName
              \BarytonUnName
              \BarytonDeuxName
            }
            \right-column {
              \SopranoType
              \SopranoType
              \ContraltoType
              \TenorType
              \BarytonType
              \BarytonType
            }
          }
        }
      }
    }
  }
}

%%-----------------------------------------------------------------%
