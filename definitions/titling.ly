%------------------------------------------------------------------%
% Opéra Libre -- titling.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%%% The following functions were provided by
%%% Nicolas Sceaux <nicolas.sceaux@free.fr>
%%%
%%% Options
%%% =======
%%%   use-rehearsal-numbers
%%%     If #t, add rehearsal numbers to piece titles.
%%%
%%% Scheme functions
%%% ================
%%%   (add-toplevel-markup parser text)
%%%     add a markup at current point.
%%%
%%%   (add-toc-item parser markup-symbol text)
%%%     add an item in the table of content, using markup style
%%%     `markup-symbol' and `text', referencing the page occuring
%%%     at current point.
%%%
%%%   (rehearsal-number)
%%%     return a new x.y rehearsal number.
%%%
%%%   (increase-rehearsal-major-number)
%%%     increase the major part of rehearsal numbers (ie the x in x.y)
%%%     and reset the minor part.
%%%
%%% Markup commands
%%% ===============
%%%
%%%   \act <title>
%%%     Markup command to be used for act titles
%%%
%%%   \scene <title>
%%%     Markup command to be used for scene titles
%%%
%%%   \title <title>
%%%     Markup command to be used for piece titles
%%%
%%%   \scene-desription <markup>
%%%     Markup command to be used for entering a scene description.
%%%
%%% Table of contexts \paper variables
%%% ==================================
%%%
%%%   tocTitle
%%%     a string used as the table of contents title
%%%
%%%   tocPieceMarkup
%%%     markup used for pieces
%%%
%%%   tocSceneMarkup
%%%     markup used for scene titles
%%%
%%%   tocActMarkup
%%%     markup used for act titles
%%%
%%% Music functions
%%% ===============
%%% Piece titling:
%%%
%%%   \pieceToc <title-markup>
%%%     add a piece title in the table of contents.
%%%
%%%   \pieceTocTitle <title-string>
%%%     add the piece title in the table of contents and at current 
%%%     point of the book (upper cased).
%%%
%%%   \pieceTitle <title-string>
%%%     add the upper cased piece title at the current point of the book.
%%%
%%%   \pieceTocAndTitle <toc-markup> <title-markup>
%%%     add a piece title in the table of content, and a different
%%%     title at the current point of the book.
%%%
%%% Sectionning:
%%%
%%%   \opusTitle <title-string>
%%%
%%%   \ouverture <title-string>
%%%   \act <title-string>
%%%   \scene <title-string>
%%%   \sceneDescription <description-markup>
%%%
%%%   \actEnd
%%%     Print an act end text.



%%%%%%%%%%%%%%%%%%%%%%%%%% Fancy Headers %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Scheme functions -----------------------------------------------%

%%%     Set odd and even page header, respectively, to `text'.
%%%     If `display-first' is false, then `text' will not be displayed
%%%     on the first page it has been added, only on the following ones.
%%%     `parser' is the lilypond parser object.

#(define-public add-odd-page-header-text #f)
#(define-public add-even-page-header-text #f)
#(define header-markup-aux #f)
#(let ((odd-label-header-table (list))
       (odd-page-header-table (list))
       (even-label-header-table (list))
       (even-page-header-table (list)))
  (set! header-markup-aux
   (lambda (layout props odd)
     (define (page-text page-number table)
       (if (null? table)
           ""
           (let* ((elment (car table))
                  (p (car elment))
                  (text (cadr elment))
                  (display-1st (caddr elment)))
             (cond ((and (= page-number p) (not display-1st)) #f)
                   ((>= page-number p) text)
                   (else (page-text page-number (cdr table)))))))
     (ly:make-stencil
       `(delay-stencil-evaluation
          ,(delay (ly:stencil-expr
                    (begin
                     (if (or (and odd (null? odd-page-header-table))
                             (and (not odd) (null? even-page-header-table)))
                         (let ((page-header-table (list)))
                          (for-each (lambda (label-header)
                                      (let* ((label (car label-header))
                                             (text-disp (cdr label-header))
                                             (table (ly:output-def-lookup layout 'label-page-table))
                                             (label-page (and (list? table) (assoc label table)))
                                             (page-number (and label-page (cdr label-page)))
                                             (prev-value (and page-number (assoc page-number page-header-table))))
                                        (if (not prev-value)
                                            (set! page-header-table (cons (cons page-number text-disp)
                                                                          page-header-table))
                                            (set! page-header-table
                                                  (assoc-set! page-header-table
                                                              page-number
                                                              (list (car text-disp) (caddr prev-value)))))))
                                    (reverse (if odd odd-label-header-table even-label-header-table)))
                          (if odd
                              (set! odd-page-header-table page-header-table)
                              (set! even-page-header-table page-header-table))))
                     (interpret-markup layout props
                       (let* ((page-number (chain-assoc-get 'page:page-number props -1))
                              (text (page-text page-number (if odd odd-page-header-table even-page-header-table)))
                              (text-markup (markup #:italic (or text "")))
                              (page-number-markup (number->string page-number)))
                         (cond ((or (= 1 page-number) (not text)) (markup #:null))
                               (odd (markup #:fill-line (#:null text-markup page-number-markup)))
                               (else (markup #:fill-line (page-number-markup text-markup #:null))))))))))
       (cons 0 0)
       (ly:stencil-extent (interpret-markup layout props "XXX") Y))))
  (set! add-odd-page-header-text
   (lambda (parser text display-1st)
     (let ((label (gensym "header")))
       (set! odd-label-header-table
             (cons (list label text display-1st)
                   odd-label-header-table))
       (collect-music-for-book parser
         (make-music 'Music
          'page-marker #t
          'page-label label)))))
  (set! add-even-page-header-text
   (lambda (parser text display-1st)
     (let ((label (gensym "header")))
       (set! even-label-header-table
             (cons (list label text display-1st)
                   even-label-header-table))
       (collect-music-for-book parser
         (make-music 'Music
          'page-marker #t
          'page-label label))))))

%% Markup commands ------------------------------------------------%

%%%     Interpret the odd or even page headers, based on header text
%%%     added using `add-odd-page-header-text' or `add-even-page-header-text'.

#(define-markup-command (odd-header layout props) ()
   (header-markup-aux layout props #t))

#(define-markup-command (even-header layout props) ()
   (header-markup-aux layout props #f))

\paper {
  evenHeaderMarkup = \markup \even-header
  oddHeaderMarkup = \markup \odd-header
}

%%%
%%% Toplevel markups
%%%

#(define-public (add-toplevel-markup parser text)
  (collect-scores-for-book parser (list text)))

#(define-public (add-toc-item parser markup-symbol text)
  (collect-music-for-book parser
   (add-toc-item! markup-symbol text)))

%%%
%%% Rehearsal numbers
%%%

#(define-public rehearsal-number #f)
#(define-public increase-rehearsal-major-number #f)
#(let ((major-number 0)
       (minor-number 0))
  (set! increase-rehearsal-major-number
        (lambda ()
          (set! major-number (1+ major-number))
          (set! minor-number 0)))
  (set! rehearsal-number 
        (lambda ()
          (set! minor-number (1+ minor-number))
          (format #f "~a-~a" major-number minor-number))))

%%%
%%% Table of contents
%%%
#(define-markup-command (paper-prop layout props name default)
  (symbol? markup?)
  "Get the value of a \\paper property, or defaults to some value"
  (let ((val (ly:output-def-lookup layout name)))
    (interpret-markup layout props (if (markup? val)
                                      val
                                      default))))
\paper {
  tocTitleMarkup = \markup \column {
    \vspace #2
    \fontsize #6 \fill-line { \paper-prop #'tocTitle "TABLE OF CONTENTS" }
    \vspace #2
  }
  tocPieceMarkup = \markup \fill-line {
    \line-width-ratio #0.7 \fill-line {
      \line { \fromproperty #'toc:text }
      \fromproperty #'toc:page
    }
  }
  tocBoldPieceMarkup = \markup \fill-line {
    \line-width-ratio #0.7 \fill-line {
      \line { \bold \fromproperty #'toc:text }
      \bold \fromproperty #'toc:page
    }
  }
  tocSceneMarkup = \markup \italic \column {
    \fill-line { \fromproperty #'toc:text }
  }
  tocActMarkup = \markup \large \italic \column {
    \vspace #1
    \fontsize #2 \fill-line { \fromproperty #'toc:text }
    \vspace #1
  }
}

%%%
%%% Music functions
%%%

%%% Pieces
pieceToc =
#(define-music-function (parser location title) (markup?)
  (let ((rehearsal (rehearsal-number)))
    (add-toc-item parser 'tocPieceMarkup
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number-toc rehearsal title)
          title))
    (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
        (begin
         (add-toplevel-markup parser
          (markup #:rehearsal-number rehearsal
                  #:hspace 1
                  #:huge title))
         (add-no-page-break parser)))
    (make-music 'Music 'void #t)))

pieceTocTitle =
#(define-music-function (parser location title) (string?)
  (let ((rehearsal (rehearsal-number)))
    (add-toc-item parser 'tocPieceMarkup
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number-toc rehearsal title)
          title))
    (add-toplevel-markup parser 
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number rehearsal
                  #:hspace 1
                  #:huge (string-upper-case title))
          (markup #:title (string-upper-case title))))
    (add-no-page-break parser)
    (make-music 'Music 'void #t)))

pieceTitle =
#(define-music-function (parser location title) (string?)
  (let ((rehearsal (rehearsal-number)))
    (add-toplevel-markup parser 
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number rehearsal
                  #:hspace 1
                  #:huge (string-upper-case title))
          (markup #:title (string-upper-case title))))
    (add-no-page-break parser)
    (make-music 'Music 'void #t)))

pieceSTitle =
#(define-music-function (parser location title) (markup?)
  (let ((rehearsal (rehearsal-number)))
    (add-toplevel-markup parser 
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number rehearsal
                  #:hspace 1
                  #:huge title)
          (markup #:small-title title)))
    (add-no-page-break parser)
    (make-music 'Music 'void #t)))

pieceTocAndTitle =
#(define-music-function (parser location title toc-title) (markup? markup?)
  (let ((rehearsal (rehearsal-number)))
    (add-toc-item parser 'tocPieceMarkup
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number-toc rehearsal toc-title)
          toc-title))
    (add-toplevel-markup parser 
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number rehearsal
                  #:hspace 1
                  #:huge title)
          (markup #:title title)))
    (add-no-page-break parser)
    (make-music 'Music 'void #t)))

pieceNoTitle =
#(define-music-function (parser location) ()
  (let ((rehearsal (rehearsal-number)))
    (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
        (begin
         (add-toplevel-markup parser (markup #:rehearsal-number rehearsal))
         (add-no-page-break parser)))
    (make-music 'Music 'void #t)))

%%% Sections
#(use-modules (srfi srfi-39))
#(define-public *opus-title* (make-parameter ""))
#(define-public *act-title* (make-parameter ""))

opusTitle =
#(define-music-function (parser location title) (string?)
   (*opus-title* (if (*part*)
                             (string-append title ", " (*part-name*))
                             title))
   (make-music 'Music 'void #t))

ouverture =
#(define-music-function (parser location title) (string?)
  (let ((rehearsal (rehearsal-number)))
    (add-page-break parser)
    (add-toc-item parser 'tocPieceMarkup
      (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
          (markup #:rehearsal-number-toc rehearsal title)
          title))
    (add-even-page-header-text parser (string-upper-case (*opus-title*)) #f)
    (add-odd-page-header-text parser (string-upper-case title) #f)
    (add-toplevel-markup parser (markup #:act (string-upper-case title)))
    (add-no-page-break parser)
    (if (eqv? #t (ly:get-option 'use-rehearsal-numbers))
        (begin
         (add-toplevel-markup parser (markup #:rehearsal-number rehearsal))
         (add-no-page-break parser))))
  (make-music 'Music 'void #t))

act =
#(define-music-function (parser location act-title) (string?)
  (increase-rehearsal-major-number)
  (add-page-break parser)
  (add-toc-item parser 'tocActMarkup act-title)
  (add-even-page-header-text parser (string-upper-case (*opus-title*)) #f)
  (*act-title* act-title)
  (add-odd-page-header-text
    parser
    (format #f "~a." (string-upper-case (*act-title*)))
    #f)
  (add-toplevel-markup parser
    (markup #:act (string-upper-case act-title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

actEnd =
#(define-music-function (parser location text) (markup?)
  (add-no-page-break parser)
  (add-toplevel-markup parser (markup #:fontsize 4 #:fill-line (text)))
  (add-no-page-break parser)
  (add-toplevel-markup parser (markup #:null))
  (make-music 'Music 'void #t))

scene =
#(define-music-function (parser location title) (string?)
  (add-toc-item parser 'tocSceneMarkup title)
  (add-odd-page-header-text
    parser
    (format #f "~a, ~a."
           (string-upper-case (*act-title*))
           (string-upper-case title))
    #t)
  (add-toplevel-markup parser
    (markup #:scene (string-upper-case title)))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

sceneDescription =
#(define-music-function (parser location description) (markup?)
  (add-toplevel-markup parser
   (markup #:scene-description description))
  (add-no-page-break parser)
  (make-music 'Music 'void #t))

  


\paper {
  
  line-width = #(- paper-width (* 40 mm))
  %horizontal-shift = 5
  bottom-margin = #20
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  left-margin = #20
  between-system-space = 1\cm
  between-system-padding = #5


  scoreTitleMarkup = #f

  oddFooterMarkup = \markup \column {
    \fill-line {
      %% put copyright only on pagenr. 1 
      \on-the-fly #(lambda (layout props arg)
		     (if (and (= 1 (chain-assoc-get 'page:page-number props -1))
                              (not (chain-assoc-get 'page:last?  props #f)))
		         (interpret-markup layout props arg)
		         empty-stencil))
      \fromproperty #'header:longcopyright
    }
    \fill-line {
      %% put tagline on last page
      \on-the-fly #(lambda (layout props arg)
                     (if (chain-assoc-get 'page:last?  props #f)
                         (interpret-markup layout props arg)
                         empty-stencil))
      \fill-line { \fromproperty #'header:tagline }
    }
  }
  evenFooterMarkup = \markup \column {
    \fill-line {
      %% put notice on second page
      \on-the-fly #(lambda (layout props arg)
		     (if (= 2 (chain-assoc-get 'page:page-number props -1))
                         (interpret-markup layout props arg)
                         empty-stencil))
      \fill-line { \fromproperty #'header:notes }
    }
    \fill-line {
      %% put tagline on last page
      \on-the-fly #(lambda (layout props arg)
                     (if (chain-assoc-get 'page:last?  props #f)
                         (interpret-markup layout props arg)
                         empty-stencil))
      \fill-line { \fromproperty #'header:tagline }
    }
  }

  tocTitle = "TABLE DES MATIÈRES"
}


%%% Title page
%%%
\paper {
  bookTitleMarkup = \markup \when-property #'header:title \column {
    \vspace #9
    \fill-line { \fontsize #11 \italic \fromproperty #'header:composer }
    \vspace #1
    \fill-line { \fontsize #11 \italic \fromproperty #'header:poet }
    \vspace #9
    \fill-line { \fontsize #13 \fromproperty #'header:title }
    \vspace #9
    \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
    \vspace #9
    \fill-line { \fontsize #6 \fromproperty #'header:date }
    \vspace #1 
    \on-the-fly #(lambda (layout props arg)
                   (if (*part*)
                       (interpret-markup layout props
                         (markup #:fill-line (#:column (#:vspace 6
                                                        #:fill-line (#:fontsize 6 (*part-name*))))))
                       empty-stencil))
    \fill-line {
      \when-property #'header:arrangement \column {
        \vspace #6
        \fill-line { \fontsize #3 \fromproperty #'header:arrangement }
      }
    }
  }
}


\layout {


  \context {
    \Score
    \override BarNumber #'padding = #2 
    \override InstrumentName #'space-alist = #'((left-edge extra-space . 2.0))
    \override VerticalAlignment #'max-stretch = #ly:align-interface::calc-max-stretch
    \accepts "StaffGroupNoBar"
    skipBars = ##t
  }
  \context {
    \StaffGroup
    \name StaffGroupNoBar
    \description "Like StaffGroup, but without spanbar"
    \remove "Span_bar_engraver"
    \accepts "StaffGroupNoBracket"
    \accepts "InnerStaffGroup"
    \accepts "InnerChoirStaff"
  }
  \context {
    \StaffGroup
    \name StaffGroupNoBracket
    \description "Like StaffGroup, but without brackets"
    \remove "System_start_delimiter_engraver"
  }
  \context {
    \ChoirStaff
    \consists "Instrument_name_engraver"
  }
  \context {
    \Staff
    \name Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
    %% Figured bass
    figuredBassAlterationDirection = #RIGHT
    \override BassFigureAlignment #'stacking-dir = #UP
    \override BassFigureAlignmentPositioning #'direction = #DOWN
  }
  RemoveEmptyStaffContext = \context {
    \Staff
    \remove "Axis_group_engraver"
    \consists "Hara_kiri_engraver"
    \override Beam #'auto-knee-gap = #'()
    \override VerticalAxisGroup #'remove-empty = ##t
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
  }
  \context {
    \Staff
    \name SmallStaff
    \description "Staff with small notes"
    fontSize = #-2
    \override StaffSymbol #'staff-space = #(magstep -2)
  }
}

\header {
  maintainer = "Valentin Villenave"
  maintainerEmail = "v.villenave@gmail.com"
  maintainerWeb = "http://valentin.villenave.info"
  copyright = \markup \copyright
  longcopyright = \markup \center-column {
    \line { \copyright \hspace #-1 . }
    \line { GNU General Public License v.3 or later.}
  }
  
  tagline = \markup { 
    \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7)
    \box \center-column {
      \small \line { 
        \copyright
        \with-url #"http://valentin.villenave.info" \teeny "<v.villenave@gmail.com>"
        \hspace #-1 .
        Gravure réalisée avec \with-url #"http://www.LilyPond.org" 
        \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org }
        #(ly:export (string-append "version " (lilypond-version))) \hspace #-1 .
      }
      %{ \small \line {
        Sheet music from \with-url #"http://www.MutopiaProject.org"
        \concat { \teeny www. MutopiaProject \teeny .org }
        and \with-url #"http://nicolas.sceaux.free.fr"
        nicolas.sceaux.free.fr
      } %}
      \small \line {
        \italic Free to download, with the \italic freedom
        to distribute, modify and perform.
      }
      \teeny \line { 
        Licensed under the Creative Commons Attributio 3.0 License, 
        for details see: \hspace #-0.5 
        \with-url #"http://creativecommons.org/licenses/by/3.0" 
        http://creativecommons.org/licenses/by/3.0 }
    }
  }
}

