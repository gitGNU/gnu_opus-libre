;------------------------------------------------------------------;
; opus_libre -- markup-commands.scm                                ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
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

(define-markup-command (smallCaps layout props text) (markup?)
  ;; Thanks to Nicolas Sceaux! See libtext.scm.
  #:category font
  "Print @var{arg} as small caps.
This version of the @code{\\smallCaps} command adds basic support
for accented characters."
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

;; Probably stolen from Nicolas' code -- is this really useful here?
(define-markup-command (line-width-ratio layout props width-ratio arg) (number? markup?)
  (interpret-markup layout props
                    (markup #:override (cons 'line-width (* width-ratio (chain-assoc-get 'line-width props)))
                            arg)))

;; TODO: to be theme-ized.
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
