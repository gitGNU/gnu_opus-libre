%------------------------------------------------------------------%
% Opéra Libre -- personnages.ly                                    %
%                                                                  %
% (c) Lewis Trondheim & Valentin Villenave, 2008                   %
%                                                                  %
%------------------------------------------------------------------%


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

doct = \markup \column { \hspace #0 \fill-line { \smallCaps \SopranoUnName } \hspace #0 }
reine = \markup \column { \hspace #0 \fill-line { \smallCaps \SopranoDeuxName } \hspace #0 }
dieu = \markup \column { \hspace #0 \fill-line { \smallCaps \ContraltoName } \hspace #0 }
chef = \markup \column { \hspace #0 \fill-line { \smallCaps \TenorName } \hspace #0 }
etr = \markup \column { \hspace #0 \fill-line { \smallCaps \BarytonUnName } \hspace #0 }
roi = \markup \column { \hspace #0 \fill-line { \smallCaps \BarytonDeuxName } \hspace #0 }