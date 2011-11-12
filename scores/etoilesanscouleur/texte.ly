%-- Étoile sans couleur -- texte.ly -------------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>
% Texte (c) 2011 Jacques Roubaud.


FluteInstr = "Flûte hulusi"
FluteShortInstr = "Fl."
GuitareInstr = "Guitare"
GuitareShortInstr = "G."
MarimbaInstr = "Marimba"
MarimbaShortInstr = "M."
RecitantInstr = "Récitant"
RecitantShortInstr = "R."
PianoInstr = "Piano"
PianoShortInstr = "P."

#(set-global-staff-size 18)

\layout {
  \context {
    \Score
    % Wouldn't normally use this, but in this case
    % I like to see where tied syllables are.
    melismaBusyProperties = #'()
  }
}

\paper {
  system-separator-markup = \slashSeparator
}

% No you didn't, no you didn't!...
%#(ly:set-option 'untainted #t)

\pointAndClickOff

%%% Century SchoolBook doesn't have capital Œ!
oeil =
\markup {
  \concat {
    \combine
    \line {
       \combine O {
         \with-color #white \filled-box #'(1 . 2) #'(0 . 2) #0
       }
    }
    \line {
      \hspace #0.6
      E
    }
    il
  }
}

#(let* ((orig-text (ly:gulp-file "scores/etoilesanscouleur/texte.txt"))
        (word-list (list "pa" "ta" "touille")))
  (ly:parser-include-string parser
    (format #f "RecitantTexte = \\lyricmode { ~a }"
    (if (ly:get-option 'untainted)
        (regexp-substitute/global #f "[\\a-zA-Z’]+" orig-text
          'pre
          (lambda (x)
                  (let* ((word (match:substring x))
                         (rand (list-ref word-list (random (length word-list))))
                         (result (if (string-prefix? "\\" word) word rand)))
                        (if (string-any char-set:upper-case word)
                            (string-capitalize result)
                            result)))
          'post)
        orig-text)))
  (if (ly:get-option 'untainted)
      (set! oeil
        (make-simple-markup
          (string-capitalize
            (list-ref word-list (random (length word-list))))))))
