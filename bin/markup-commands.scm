;------------------------------------------------------------------;
; opus_libre -- markup-commands.scm                                ;
;                                                                  ;
; (c) 2008-2011 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License as published by the Free Software         ;
; Foundation, either version 3 of the License, or (at your option) ;
; any later version.                                               ;
;     This program is distributed WITHOUT ANY WARRANTY; without    ;
; even the implied warranty of MERCHANTABILITY or FITNESS FOR A    ;
; PARTICULAR PURPOSE.  You should have received a copy of the GNU  ;
; General Public License along with this program (typically in the ;
; share/doc/ directory).  If not, see http://www.gnu.org/licenses/ ;
;                                                                  ;
;------------------------------------------------------------------;


; Markup commands.

;; This code was provided by Nicolas Sceaux.
(define-markup-command (smallCaps layout props text) (markup?)
  "Turn @code{text}, which should be a string, to small caps.
@example
\\markup \\small-caps \"Text between double quotes\"
@end example"
  (define string-upper-case #f)
  (define accented-char-upper-case? #f)
  (define accented-char-lower-case? #f)

  (define (string-list->markup strings lower)
    (let ((final-string (string-upper-case
                         (apply string-append (reverse strings)))))
      (if lower
          (markup #:fontsize -2 final-string)
          final-string)))
  (define (make-small-caps rest-chars currents current-is-lower prev-result)
    (if (null? rest-chars)
        (make-concat-markup (reverse! (cons (string-list->markup
                                              currents current-is-lower)
                                            prev-result)))
        (let* ((ch1 (car rest-chars))
               (ch2 (and (not (null? (cdr rest-chars))) (cadr rest-chars)))
               (this-char-string (string ch1))
               (is-lower (char-lower-case? ch1))
               (next-rest-chars (cdr rest-chars)))
          (cond ((and ch2 (accented-char-lower-case? ch1 ch2))
                 (set! this-char-string (string ch1 ch2))
                 (set! is-lower #t)
                 (set! next-rest-chars (cddr rest-chars)))
                ((and ch2 (accented-char-upper-case? ch1 ch2))
                 (set! this-char-string (string ch1 ch2))
                 (set! is-lower #f)
                 (set! next-rest-chars (cddr rest-chars))))
          (if (or (and current-is-lower is-lower)
                  (and (not current-is-lower) (not is-lower)))
              (make-small-caps next-rest-chars
                               (cons this-char-string currents)
                               is-lower
                               prev-result)
              (make-small-caps next-rest-chars
                               (list this-char-string)
                               is-lower
                               (if (null? currents)
                                   prev-result
                                   (cons (string-list->markup
                                            currents current-is-lower)
                                         prev-result)))))))

  (let ((lower-case-accented-string "éèêëáàâäíìîïóòôöúùûüçœæ")
        (upper-case-accented-string "ÉÈÊËÁÀÂÄÍÌÎÏÓÒÔÖÚÙÛÜÇŒÆ"))
    (define (group-by-2 chars result)
        (if (or (null? chars) (null? (cdr chars)))
            (reverse! result)
            (group-by-2 (cddr chars)
                        (cons (string (car chars) (cadr chars))
                              result))))
    (let ((lower-case-accented-chars
            (group-by-2 (string->list lower-case-accented-string) (list)))
          (upper-case-accented-chars
            (group-by-2 (string->list upper-case-accented-string) (list))))
      (set! string-upper-case
            (lambda (str)
              (define (replace-chars str froms tos)
                (if (null? froms)
                    str
                    (replace-chars (regexp-substitute/global #f (car froms) str
                                                              'pre (car tos) 'post)
                                    (cdr froms)
                                    (cdr tos))))
              (string-upcase (replace-chars str
                                            lower-case-accented-chars
                                            upper-case-accented-chars))))
      (set! accented-char-upper-case?
            (lambda (char1 char2)
              (member (string char1 char2) upper-case-accented-chars string=?)))
      (set! accented-char-lower-case?
            (lambda (char1 char2)
              (member (string char1 char2) lower-case-accented-chars string=?)))))

  (interpret-markup layout props
    (if (string? text)
        (make-small-caps (string->list text) (list) #f (list))
        text)))

(define-markup-command (dynamic-string layout props str) (string?)
  #:category font
  "
@cindex dynamics, composite
@cindex dynamics, mixed with text

Print a string using the dynamic font only when appropriate.
Words may be separated with @code{_}; dynamic-style characters
will only be used in words that contain no other letter than
@b{f}, @b{m}, @b{p}, @b{r}, @b{s} and @b{z}, and punctuation
marks.  Regular spaces are allowed inside words.

@lilypond[verbatim,quote]
\\markup {
  \\dynamic-string #\"mp,_quasi_mf_ma più dolce.\"
}
@end lilypond"
  (let ((composite-chars (char-set-union
                          char-set:dynamics
                          char-set:whitespace
                          char-set:punctuation))
        (split (lambda (s) (string-index s #\_ )))
        (str-list '())
        (dyn-markup (lambda (s)
                      (make-whiteout-markup
                        (make-dynamic-markup s))))
        (text-markup (lambda (s)
                       (make-whiteout-markup
                         (make-normal-text-markup
                           (make-italic-markup s))))))
    (do ((current-str (string-append str "_")))
        ((not (split current-str)))
      (begin
        (set! str-list
              (append str-list (list
                                (string-take current-str (split current-str)))))
        (set! current-str
              (string-drop current-str (+ (split current-str) 1)))))
    (interpret-markup layout props
                      (make-line-markup
                       (map (lambda (word)
                              (if (string-every composite-chars word)
                                  (if (string-every char-set:dynamics word)
                                      (dyn-markup word)
                                      (let ((word-lst (string->list word)))
                                        (make-concat-markup
                                         (map (lambda (ch)
                                                (let ((print-ch (string ch)))
                                                  (if (char-punctuation? ch)
                                                      (text-markup print-ch)
                                                      (dyn-markup print-ch))))
                                              word-lst))))
                                  (text-markup word)))
                            str-list)))))

(define-markup-command (fill-page layout props args)
  (markup-list?)
  #:properties ((text-direction UP)
                (line-space 0.6)
                (page-height #f))

  (define (get-fill-space line-count page-height line-space text-heights)
    (cond
    ((null? text-heights) '())

    ;; special case first padding
    ((= (length text-heights) line-count)
      (cons
      (- (- (/ page-height (1- line-count)) (car text-heights))
	  (/ (car (cdr text-heights)) 2))
      (get-fill-space line-count page-height line-space (cdr text-heights))))
    ;; special case last padding
    ((= (length text-heights) 2)
      (list (- (/ page-height (1- line-count))
             (+ (/ (car text-heights) 2) (car (cdr text-heights)))) 0))
   (else
    (let ((default-padding
            (- (/ page-height (1- line-count))
               (/ (+ (car text-heights) (car (cdr text-heights))) 2))))
      (cons
       (if (> line-space default-padding)
           line-space
           default-padding)
       (get-fill-space line-count page-height line-space (cdr text-heights)))))))

  (let* ((orig-stencils (interpret-markup-list layout props args))
         (stencils
          (map (lambda (stc)
                 (if (ly:stencil-empty? stc)
                     point-stencil
                     stc)) orig-stencils))
         (text-heights
          (map (lambda (stc)
                 (if (ly:stencil-empty? stc)
                     0.0
                     (interval-length (ly:stencil-extent stc Y))))
               stencils))
         (text-height (apply + text-heights))
         (line-count (length stencils))
         (page-height (- (ly:output-def-lookup layout 'paper-height)
                         (+ (ly:output-def-lookup layout 'top-margin)
                            (ly:output-def-lookup layout 'bottom-margin))))
         (fill-space
          (cond
           ((= line-count 1)
            (list
             (/ (- page-height text-height) 2)
             (/ (- page-height text-height) 2)))
           ((= line-count 2)
            (list
             (- page-height text-height)))
           (else
            (get-fill-space line-count page-height line-space text-heights))))

         (page-contents (if (= line-count 1)
                            (list
                             point-stencil
                             (car stencils)
                             point-stencil)
                            stencils)))

    (if (null? (remove ly:stencil-empty? orig-stencils))
        empty-stencil
        (begin
          (if (= text-direction UP)
              (set! page-contents (reverse page-contents)))
          (set! page-contents
                (stack-stencils-padding-list
                 Y UP fill-space page-contents))
          (if (> line-count 1)
              (set! page-contents
                    (ly:stencil-translate-axis
                     page-contents
                     (- (car (ly:stencil-extent (car stencils) Y)))
                     Y)))
          page-contents))))


;; This markup-command may be overriden later by a theme-specific file.
(define-markup-command (indic layout props arg) (markup?)
  (interpret-markup layout props
                    (markup #:whiteout #:medium #:small #:italic arg)))

(define-markup-command (bracketText layout props num up? arg) (number? boolean? markup?)
  (let* ((pos (max 3 (- 10 (- num))))
         (text (markup #:with-dimensions '(0 . 0)'(0 . 0) arg))
         (stack (lambda (x)
                   (markup #:normal-text #:fontsize 3
                           #:center-column
                           ((if up? text "")
                           #:with-dimensions
                           '(0 . .5)
                           (if up?
                               (cons 0 (+ x .2))
                               (cons (- x .2) 0))
                           #:postscript (format #f "
                             .12 setlinewidth
                             .5 0 -.5 0 lineto
                             -.5 0 -.5 ~a lineto
                             stroke" x)
                           (if up? "" text))))))
    (if (not up?) (set! pos (- pos)))
    (interpret-markup layout props (stack pos))))

(define-markup-command (copyright layout props) ()
  (let* ((maintainer (chain-assoc-get 'header:maintainer props))
         (this-year (+ 1900 (tm:year (gmtime (current-time)))))
         (year (string->number (or (chain-assoc-get 'header:copyrightYear props)
                                   (number->string this-year)))))
    (interpret-markup layout props
     (markup "Copyright ©" 
             (if (= year this-year)
                 (format #f "~a" this-year)
                 (format #f "~a-~a" year this-year))
             maintainer))))

(define-markup-command (today layout props) ()
  (let ((today (gmtime (current-time))))
   (interpret-markup layout props
     (format #f "~a-~a-~a"
             (+ 1900 (tm:year today))
             (1+ (tm:mon today))
             (tm:mday today)))))


