%------------------------------------------------------------------%
% Opéra Libre -- titling.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%%depends on: text-functions.ly, decoupage.ly, nomenclature.ly, graphics.ly

%%needs to be included directly at the top of the master \book block.

%%%%%%%%%%%%%%%%%%%%%%%%%% General titling %%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
  scoreTitleMarkup = \markup {
    \column {
      \on-the-fly #print-all-headers { \bookTitleMarkup \hspace #1 }
      \fill-line {
        \center-column {
          \fontsize #10 \fromproperty #'header:acte
          \vspace #1
          \fontsize #6 \fromproperty #'header:piece
          \vspace #1
          \fromproperty #'header:dessin
        }
      }
    }
  }
  % TODO headers and footers
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Preamble %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Special block --------------------------------------------------%

\bookpart {

%% Internal \paper definitions ------------------------------------%

  \paper {
    indent = #0
    left-margin = #9 % ???
    right-margin = #10
    line-width = #(- paper-width (+ left-margin right-margin))
    bookTitleMarkup = \markup {
      \vspace #20
      \override #'(baseline-skip . 5)
      \column {
        \combine
        \column {
          \fill-line {
            \fontsize #5 \sans \fromproperty #'header:libretto
            \null
          }
          \vspace #4
          \line { \fontsize #15  \transparent "A" }
          \vspace #4
          \fill-line {
            \null
            \fontsize #5 \sans \fromproperty #'header:composer
          }
        }
        \column {
          \line { \fontsize #5 " " }
          \vspace #4
          \fill-line {
            \fontsize #15 \sans \fromproperty #'header:title
          }
          \fill-line {
            \fontsize #2 \sans \fromproperty #'header:subtitle
          }
        }
        \vspace #4
        \fill-line {
          \fromproperty #'header:illustration
        }
      }
    }

    tocTitleMarkup = \markup \column {
      \fill-line {
        \fontsize #2 \underline \smallCaps \TableTitre
      }
      \vspace #2
    }

    tocActMarkup = \markup \large \column {
      \hspace #1
      \fill-line { \null \bold \fromproperty #'toc:text \null }
      \hspace #1
    }
    tocItemMarkup = \markup \large \fill-line {
      \fromproperty #'toc:text \fromproperty #'toc:page
    }
    tocQuoteMarkup = \markup {
      \hspace #4 \italic \fromproperty #'toc:text
    }

    oddFooterMarkup = \markup {
      \column {
        \fill-line {
          %% Copyright header field only on first page.
          \on-the-fly #first-page
          \fontsize #2 \sans \rounded-box\fromproperty #'header:scoretype
        }
        \vspace #1
        \fill-line {
          \on-the-fly #first-page
          \fontsize #1 \sans \fromproperty #'header:copyright
        }

        \fill-line {
          %% Tagline header field only on last page.
          \on-the-fly #last-page \fromproperty #'header:tagline
        }
      }
    }
    scoreTitleMarkup = \markup \null
  }

%% The actual pages -----------------------------------------------%
  \pageBreak
  \markup {
    \override #'(box-padding . 1.0)
    \translate #'(0 . -190)
    \fill-line {
      \box \BigNotice
    }
  }
  \pageBreak
  \markup {
    \vspace #5
    \override #'(baseline-skip . 5)
    \fill-line {
      \center-column {
        \fill-line {
          \fontsize #3 \OperaLivret
          \fontsize #3 \OperaPartition
        }
        \fontsize #10 \bold \OperaTitre
        \fontsize #2 \OperaSousTitre
        \vspace #10
        \fill-line { \line {\hspace #2 \Skyline }}
        \vspace #10
        \CharacterList
      }
    }
  }
  \pageBreak
  \markup \vspace #5
  \markuplines \table-of-contents
  \markup \fill-line { \Bilboquet }
  \pageBreak
}


%% Markup commands ------------------------------------------------%
%{
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

\paper {

  line-width = #(- paper-width (* 40 mm))
  %horizontal-shift = 5
  bottom-margin = #20
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  left-margin = #20
  between-system-space = 1\cm
  between-system-padding = #5


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
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Table of contents
%%%
#(define-markup-command (paper-prop layout props name default)
  (symbol? markup?)
  "Get the value of a \\paper property, or defaults to some value"
  (let ((val (ly:output-def-lookup layout name)))
    (interpret-markup layout props (if (markup? val)
                                      val
                                      default))))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Markup commands for page headers
%%%
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

#(define-markup-command (odd-header layout props) ()
   (header-markup-aux layout props #t))

#(define-markup-command (even-header layout props) ()
   (header-markup-aux layout props #f))

\paper {
  evenHeaderMarkup = \markup \even-header
  oddHeaderMarkup = \markup \odd-header
}

 %}
