%------------------------------------------------------------------%
% Opéra Libre -- livret.ly                                         %
%                                                                  %
% (c) Lewis Trondheim & Valentin Villenave, 2008                   %
%                                                                  %
%------------------------------------------------------------------%


%%% TODO: Make a decent libretto?


doct = \markup \column { \hspace #0 \fill-line { \smallCaps \#(make-name soprano-one) } \hspace #0 }
reine = \markup \column { \hspace #0 \fill-line { \smallCaps \SopranoDeuxName } \hspace #0 }
dieu = \markup \column { \hspace #0 \fill-line { \smallCaps \ContraltoName } \hspace #0 }
chef = \markup \column { \hspace #0 \fill-line { \smallCaps \TenorName } \hspace #0 }
etr = \markup \column { \hspace #0 \fill-line { \smallCaps \BarytonUnName } \hspace #0 }
roi = \markup \column { \hspace #0 \fill-line { \smallCaps \BarytonDeuxName } \hspace #0 }


PremierTableauLivret=  {
\italic \PrologueA
\chef {
Majesté, Majesté, Majesté ! Majesté, Majesté, Majesté !
\italic \PrologueB
Majesté, Majesté,
\italic \PrologueC
MajestéEeh !!! }
\roi {
Quoi, quoi, quoi; qu'y a-t–il, qu'y a-t–il, qu'y a-t–il ? }
\chef {
Un étranger... dans une curieuse machine volante...
\italic \PrologueD
...s'est écrasé...
\italic \PrologueE
sur notre château... }
\italic \PrologueF
\roi {
L'affaire est grave, très grave ; extrêmement grave. }
\italic \PrologueG
\chef {
aah  ! aah  ! }
\roi {
Un étranger, ici ? Il faut agir. Un étranger, dis-tu ? Jamais je n'ai
vu d'étranger par chez nous ; que faire ? Que faire ? }
\italic \PrologueH
\chef {
aah ! aah ! }
\italic \PrologueI
\roi {
Quel conseil subtil me proposes-tu ? }
\italic \PrologueJ
\chef {
Me punir incessament, Majesté ; j'ai dit : «notre» château au lieu de:
«votre» château... }
\roi {
Allons allons, chef de la garde, j'ai trop besoin de toi en ces
moments graves, très graves ; extrêmement graves... }
\italic \PrologueK
\roi {
Parle-moi un peu de cet étranger. }
\chef {
C'est-à-dire, Majesté ? }
\roi {
Je ne sais pas... –Est-il vert ? }
\chef {
Non, Majesté. }
\roi {
A-t–il huit bras ? }
\chef {
Non, Majesté. }
\roi {
Mange-t–il du feu ? }
\chef {
Non, Majesté. }
\roi {
Fait-il... vingt pieds de haut ? }
\chef {
Non, Majesté. }
\roi {
Vingt pieds de large ? }
\chef {
Non, Majesté. }
\italic \PrologueL
\roi {
Vingt pieds de biais ?! }
\chef {
Non Majesté... }
\roi {
\smallCaps{Alors}, à quoi voit-on que cet étranger qui s'est écrasé dans sa
machine volante est un étranger ? }
\chef {
C'est que personne ne le connaît, Majesté... }
\roi {
Est-ce tout ? }
\chef {
Non ! Non non non non non non non non non non non non non non non non
non, pensez-vous ! Il est horrible à voir, horrible à voir ; il a
\smallCaps {plein} de sang sur le visage... }
\italic \PrologueM
\roi {
Raah ! }
\chef {
Aah !... }
\roi {
Raah ! }
\italic \PrologueN
\ensemble {
  \chef {
Aaaaaaaaaaah !... }
  \roi {
Aaaaaaaaaaah !... }}

\roi {
À ton avis, que dois-je faire de cet étranger ? }
\chef {
Vous devez prendre la seule décision qui s'impose. }
\roi {
C'est-à-dire, laquelle ? }
\chef {
Celle que vous choisirez, et qui restera dans les livres d'histoire. }
\roi {
Oui, oui ; mais laquelle ? }
\chef {
Je ne sais pas ; Seule votre Majesté peut avoir une telle idée
sublime. Moi je ne suis qu' un vermisseau. }
\italic \PrologueO
\roi {
Être Roi... Être Roi... Être Roi,...
...c'est être seul. }
\chef {
Sublime, ô Majesté ! \smallCaps { SU-BLIME }. }
\roi {
\smallCaps {Raah} ! C' est énervant, très énervant ; extrêmement énervant. Je m' en
vais de ce pas voir cet étranger.
\italic \PrologueP
Énervant, très énervant ; extrêmement énervant. Énervant, très
énervant ; extrêmement énervant. }
\italic \PrologueQ
\chef {
Hi ! Hi hi ! Hi hi hi !
Quand le Roi s' éloigne, il est tout petit ! }
