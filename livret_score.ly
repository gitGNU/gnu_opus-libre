%------------------------------------------------------------------%
% Opéra Libre -- livret_score.ly                                   %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


%\include "./definitions/text_layout.ly"
%\include "./definitions/layout.ly"
%\include "./definitions/functions.ly"


%\include "./texte/personnages.ly"
%\include "./texte/decoupage.ly"
\include "./texte/didascalies.ly"


%\include "./definitions/structure.ly"

%\include "./texte/livret.ly"



#(define-markup-list-command (roi layout props args) (markup-list?)
   (let ((didascalie (chain-assoc-get 'did props)))
     (interpret-markup-list layout props
       (make-justified-lines-markup-list (cons 
          (markup #:column ( #:hspace 0 #:fill-line 
            ( #:smallCaps "Le Roi" ) 
                               #:hspace 0 )) args)))))
         
#(define-markup-list-command (chef layout props args) (markup-list?)
   (let ((didascalie (chain-assoc-get 'did props)))
     (interpret-markup-list layout props
       (make-justified-lines-markup-list (cons 
          (markup #:column ( #:hspace 0 #:fill-line 
            ( #:smallCaps "Le Chef de la Garde" ) 
                               #:hspace 0 )) args)))))

#(define-markup-command (did layout props args) (markup?)
   (interpret-markup layout props
     (make-justified-lines-markup-list
       args)))

\markuplines  {
\did \PrologueA
\chef {
Majesté, Majesté, Majesté ! Majesté, Majesté, Majesté !
\did \PrologueB
Majesté, Majesté,
\did \PrologueC
MajestéEeh !!! }
\roi {
Quoi, quoi, quoi; qu'y a-t–il, qu'y a-t–il, qu'y a-t–il ? }
\chef {
Un étranger... dans une curieuse machine volante...
\did \PrologueD
...s'est écrasé...
\did \PrologueE
sur notre château... }
\did \PrologueF
\roi {
L'affaire est grave, très grave ; extrêmement grave. }
\did \PrologueG
\chef {
aah  ! aah  ! }
\roi {
Un étranger, ici ? Il faut agir. Un étranger, dis-tu ? Jamais je n'ai
vu d'étranger par chez nous ; que faire ? Que faire ? }
\did \PrologueH
\chef {
aah ! aah ! }
\did \PrologueI
\roi {
Quel conseil subtil me proposes-tu ? }
\did \PrologueJ
\chef {
Me punir incessament, Majesté ; j'ai dit : «notre» château au lieu de:
«votre» château... }
\roi {
Allons allons, chef de la garde, j'ai trop besoin de toi en ces
moments graves, très graves ; extrêmement graves... }
\did \PrologueK
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
\did \PrologueL
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
\did \PrologueM
\roi {
Raah ! }
\chef {
Aah !... }
\roi {
Raah ! }
\did \PrologueN
%\ensemble {
  \chef {
Aaaaaaaaaaah !... }
  \roi {
Aaaaaaaaaaah !... }
%  }

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
\did \PrologueO
\roi {
Être Roi... Être Roi... Être Roi,...
...c'est être seul. }
\chef {
Sublime, ô Majesté ! \smallCaps { SU-BLIME }. }
\roi {
\smallCaps {Raah} ! C' est énervant, très énervant ; extrêmement énervant. Je m' en
vais de ce pas voir cet étranger.
\did \PrologueP
Énervant, très énervant ; extrêmement énervant. Énervant, très
énervant ; extrêmement énervant. }
\did \PrologueQ
\chef {
Hi ! Hi hi ! Hi hi hi !
Quand le Roi s' éloigne, il est tout petit ! }
}

