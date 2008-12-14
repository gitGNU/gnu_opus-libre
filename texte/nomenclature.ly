%------------------------------------------------------------------%
% Opéra Libre -- nomenclature.ly                                   %
%                                                                  %
% (c) Lewis Trondheim & Valentin Villenave, 2008                   %
%                                                                  %
%------------------------------------------------------------------%

%% Depends on: text-functions.ly

%%%%%%%%%%%%%%%%%%%%%%%%% Instrument Names %%%%%%%%%%%%%%%%%%%%%%%%%

%% Instruments ----------------------------------------------------%

%TODO: add percussions and piano.

#(set! instruments `(
                        (cello-one         ("Violoncelle 1" . "Vlc. 1"))
                        (cello-two         ("Violoncelle 2" . "Vlc. 2"))
                        (clarinet-one      ("Clarinette 1" . "Cl. 1"))
                        (clarinet-a        ("Clarinette en La" . "Cl. 2"))
                        (clarinet-bass     ("Clarinette Basse" . "Cl. B"))
                        (double-bass       ("Contrebasse" . "Cb."))
                        (flute-one         ("Flute 1" . "Fl. 1"))
                        (flute-two         ("Flute 2" . "Fl. 2"))
                        (piccolo           ("Piccolo" . "Pic."))
                        (saxophone-one     ("Saxophone Alto 1" . "Sax. A 1"))
                        (saxophone-two     ("Saxophone Alto 2" . "Sax. A 2"))
                        (saxophone-baritone("Saxophone Baryton" . "Sax. B"))
                        (viola-one         ("Alto 1" . "Alt. 1"))
                        (viola-two         ("Alto 2" . "Alt. 2"))
                        (violin-one        ("Violon 1" . "Vl. 1"))
                        (violin-two        ("Violon 2" . "Vl. 2"))
                        (violin-three      ("Violon 3" . "Vl. 3"))
                        ))

%% Voices ---------------------------------------------------------%

SopranoType = "Soprano lyrique"
ContraltoType = "Alto"
TenorType = "Ténor"
BarytonType = "Baryton"

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Characters %%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Names ----------------------------------------------------------%


#(set! characters `(
                      (soprano-one  ("Le Docteur" . "Doct."))
                      (soprano-two  ("La Reine" . "Reine."))
                      (contralto    ("Dieu" . "Dieu."))
                      (tenor        ("Le Chef" . "Chef."))
                      (baritone-one ("L'Étranger" . "Étr."))
                      (baritone-two ("Le Roi" . "Roi."))
                      ))

%% List -----------------------------------------------------------%
%{
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
              #(markup (char-name 'soprano-one))
              #(markup (char-name 'soprano-two))
              #(markup (char-name 'contralto))
              #(markup (char-name 'tenor))
              #(markup (char-name 'barytone-one))
              #(markup (char-name 'barytone-two))
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
} % %}

%%-----------------------------------------------------------------%
