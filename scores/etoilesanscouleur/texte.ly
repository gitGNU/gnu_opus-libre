%-- Étoile sans couleur -- texte.ly -------------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>
% Texte (c) 2011 Jacques Roubaud.



%-- Look-and-feel -------------------------------------------------%

#(set-global-staff-size 18)

\paper {
  system-separator-markup = \slashSeparator
}

\pointAndClickOff


\layout {
  \context {
    \Score
    % Wouldn't normally use this, but in this case
    % I like to see where tied syllables are.
    melismaBusyProperties = #'()
  }
}

% No you didn't, no you didn't!...
%#(ly:set-option 'untainted #t)


%-- Instrument names ----------------------------------------------%

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


%-- Spoken text ----------------------------------------------------%

%%% What if we don't want the original text?
%%% Then we'll replace each syllable with
%%% something pronouncable (and preferably
%%% not too serious).

#(define-public word-list '("pa" "ta" "touille"))

%%% This will retrieve the text from a separate file,
%%% and assign it to the appropriate variable.

%%% ... Or not.

#(let* ((orig-text (ly:gulp-file "scores/etoilesanscouleur/texte.txt")))
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


%-- Letter hints ---------------------------------------------------%

%%% This piece is mostly coded after the poem's words,
%%% so in some cases we might want to give a
%%% hint as to what letter each note stands for.

%%% The letter will be conveyed through the 'tweaks
%%% property, so we need to extract it from the alist.
#(define (set-letter str note)
  (set!
   (ly:music-property note 'tweaks)
   (acons 'letter str
   (ly:music-property note 'tweaks)))
  note)

%%% Let's enclose it in a music function (and use it
%%% scarcely, we don't want to give it all away).

#(define letter
 (define-music-function (parser location str note) (string? ly:music?)
   ;; The good news is: we can call this function either before a
   ;; simple note, or even inside a chord construct.
   (music-map
     (lambda (x)
       (if (eq? (ly:music-property x 'name) 'NoteEvent)
           (set-letter str x)))
     note)
   note))

%%% This is a hack built around the note-head-interface,
%%% with a custom-made Scheme engraver in lieu of the
%%% Easy_notes_ thingy.
#(define Letter_engraver
   (list
    (cons 'acknowledgers
          (list
           (cons 'note-head-interface
                 (lambda (engraver grob source-engraver)
                   (let* ((context (ly:translator-context engraver))
                          (tweaks (ly:event-property (event-cause grob) 'tweaks))
                          (str (ly:assoc-get 'letter tweaks))
                          (letter
                            (if
                              ;; of course, if we're going 'untainted,
                              ;; that point becomes pretty moot.
                              (and (not (ly:get-option 'untainted)) str)
                              ;; only the first letter if there are several.
                              (string-upcase (string-take str 1))
                              ""))
                          (note-names (make-vector 7 letter)))
                         (ly:grob-set-property! grob 'note-names note-names))))))))

\layout {
  \context {
    \Voice
    \consists \Letter_engraver
  }
}

%%% Just for consistency (and fun!), let's hide
%%% the \easyHeads command behind a suitably-named wrapper...
lettersOn = {
  \override NoteHead #'stencil = #note-head::brew-ez-stencil
  %% ... which allows us to tweak the defaults:
  \override NoteHead #'font-size = #-5 %% was 8 originally
  \override NoteHead #'font-family = #'sans
  % \override NoteHead #'font-series = #'bold %% bold is ugly.
}
lettersOff = {
  \easyHeadsOff
}

%-------------------------------------------------------------------%
