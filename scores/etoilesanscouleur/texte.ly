%-- Étoile sans couleur -- texte.ly -------------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>


%-- Look-and-feel -------------------------------------------------%

#(set-global-staff-size 14)

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
#(ly:set-option 'show-letters #t)


%-- Titling -------------------------------------------------------%

\header {
  title = "Étoile sans couleur"
  subtitle = \markup \center-column {
    "pour récitant et quatre instruments,"
    "sur un texte de Jacques Roubaud"
    \vspace #2
  }
  composer = "Valentin Villenave"
  date = "automne 2011"
  piece = "Étoile sans couleur"
}

\paper {
  first-page-number = #-1
%   min-systems-per-page = #4
}

taintedText =
\markup \justify {
  Avant de reproduire cette partition, vous êtes toutefois invité à
  vous assurer de ne pas contrevenir au droit moral de l’auteur du
  texte qu’elle contient. Si ce point vous semble incertain, il vous
  est possible de recompiler la partition avec l’option
  \concat { \typewriter untainted , } ce qui aura pour effet de remplacer
  toutes les syllabes du texte d’origine par d’autres syllabes aléatoires
  (par défaut \concat { «  \bold pa  » ,} \concat { «  \bold ta  » }
  et \concat { «  \bold touille  »). } La partition ainsi produite pourra
  être diffusée librement, sans autres restrictions que celles indiquées
  par sa licence.
}

untaintedText =
\markup \justify {
  Cet exemplaire a été compilé avec l’option \concat { \typewriter untainted  : }
  toutes les syllabes du texte d’origine ont été remplacées par des
  syllabes aléatoires. De ce fait, la présente partition peut être diffusée
  librement, sans autres restrictions que celles indiquées par sa licence.
}

#(define-markup-command (choose-text layout props) ()
  (let ((text (if (ly:get-option 'untainted)
                  untaintedText
                  taintedText)))
  (interpret-markup layout props text)))

\pageBreak
\markup \fill-page {
  " "
  \fill-line {
    ""
    \italic \line {
      Pièce rédigée pour le concours Pierre-Jean Jouve, « Printemps des poètes » 2011.
    }
  }
  " "
  " "
  \fill-line {
    \override #'(line-width . 100)
    \left-column {
      \fill-line {\epsfile #X #30 #"scores/etoilesanscouleur/oumupo.eps" }
      \wordwrap {
        \hspace #4 Cette pièce s’inscrit dans le cadre d’un projet de refondation
        de l’Ouvroir de Musique Potentielle
        \concat { ( \with-url #"http://oumupo.org" \typewriter http://oumupo.org ),}
        dédié à l’écriture musicale sous contraintes formelles.
      }
      \vspace #.5
      \wordwrap {
        \hspace #4 À ce titre, la construction harmonique et mélodique est
        entièrement dictée par une correspondance entre notes et lettres,
        mots et motifs (dont quelques-uns ont ici été explicités littéralement,
        même si ce n’est pas nécessaire à la compréhension de la partition).
        De même, la construction structurelle et rythmique est gouvernée par
        le schéma de longueur des vers ainsi que par leur prosodie.
        L’écriture s’inspire également de contraintes suggérées
        par Jacques Roubaud lui-même dans son \italic \wordwrap { Atlas de
        Littérature Potentielle } (Paris, Gallimard, 1981), et notamment des célèbres
        \italic \wordwrap {« principes de Roubaud »} auxquels elle tente de proposer
        ici quelques réponses musicales.
      }
      \vspace #.5
      \wordwrap {
        \hspace #4 Cette pièce contient également une courte
        citation extraite de la première version du
        \italic \line {Berliner Requiem} de Kurt Weill
        et Bertolt Brecht (commande de Radio Frankfurt, 1929).
      }
    }
  }
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Texte : Jacques Roubaud.
      }
      \line {
        Copyright & copyleft © Valentin Villenave, 2011.
      }
      \line {
        \with-url #"http://valentin.villenave.net"
        \typewriter http://valentin.villenave.net
      }
      \vspace #.5
      \override #'(line-width . 100)
      \justify {
        Cette partition est publiée suivant les termes de la licence
        \with-url #"http://artlibre.org/licence/lal"
        \bold { Art Libre }
        \concat { ( \with-url #"http://artlibre.org" \typewriter http://artlibre.org ).}
        Vous pouvez la copier, la modifier et la jouer \italic librement
        sans contrevenir au droit d’auteur, à condition de respecter les
        termes de la licence (notamment en veillant à mentionner le nom
        de l’auteur et l’adresse web d’origine).
      }
      \vspace #.5
      \override #'(line-width . 100)
      \choose-text
      \vspace #.5
      \line {
        Gravure réalisée au moyen du logiciel libre
        \with-url #"http://www.LilyPond.org"
        \concat {\bold "GNU LilyPond" ,}
        \concat { #(ly:export (string-append "version " (lilypond-version) ".")) }
      }
    }
  }
  " "
}
\pageBreak


%-- Instrument names ----------------------------------------------%

FluteInstr = \markup {
  \override #'(baseline-skip . 0)
  \center-column {
    \vspace #1
    "Flûte hulusi"
    \vspace #.4
    \smaller "(instrument"
    \smaller "traditionnel"
    \smaller "chinois)"
  }
}
FluteShortInstr = "Fl."
GuitareInstr = "Guitare"
GuitareShortInstr = "G."
MarimbaInstr = \markup \center-column {
  "Marimba"
  \smaller "(cinq octaves)"
}
MarimbaShortInstr = "M."
RecitantInstr = \markup \center-column {
  "Récitant"
  \smaller "(sans amplification)"
}
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

#(define word-list '("pa" "ta" "touille"))

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
             ; ugh. Causes a memory leak.
             ;  (if (eq? (ly:music-property x 'name) 'NoteEvent)
           (set-letter str x))
     ; )
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
                            (if str
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

%%% Of course, if we're running in 'untainted mode,
%%% then this whole thingamajig becomes moot.
#(if (ly:get-option 'untainted)
     (ly:set-option 'show-letters #f))

%%% Just for consistency (and fun!), let's hide
%%% the \easyHeads command behind a suitably-named wrapper...
lettersOn =
#(if (ly:get-option 'show-letters)
#{
  \override NoteHead #'stencil = #note-head::brew-ez-stencil
  %% ... which allows us to tweak the defaults:
  \override NoteHead #'font-size = #-7 %% was 8 originally
  \override NoteHead #'font-family = #'sans
  \override NoteHead #'font-series = #'bold %% ugly. But safer.
#}
(make-music 'Music 'void #t))
lettersOff = {
  \easyHeadsOff
}

%-------------------------------------------------------------------%
