;------------------------------------------------------------------;
; opus_libre -- markup-commands.scm                                ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
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
        (style-markup (lambda (s)
                        (make-normal-text-markup
                         (make-italic-markup s)))))
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
                                      (make-dynamic-markup word)
                                      (let ((word-lst (string->list word)))
                                        (make-concat-markup
                                         (map (lambda (ch)
                                                (let ((print-ch (string ch)))
                                                  (if (char-punctuation? ch)
                                                      (style-markup print-ch)
                                                      (make-dynamic-markup print-ch))))
                                              word-lst))))
                                  (style-markup word)))
                            str-list)))))

(define-markup-command (whiteout layout props arg)
  (markup?)
  (let* ((def (ly:parser-lookup parser 'conf:rounded-whiteout))
         (radius (if (number? def) def 0)))
    (stencil-whiteout (interpret-markup layout props arg) radius)))

;; Probably stolen from Nicolas' code -- is this really useful here?
(define-markup-command (line-width-ratio layout props width-ratio arg) (number? markup?)
  (interpret-markup layout props
                    (markup #:override (cons 'line-width (* width-ratio (chain-assoc-get 'line-width props)))
                            arg)))

;; TODO: to be theme-ized.
(define-markup-command (indic layout props arg) (markup?)
  (interpret-markup layout props
                    (markup #:whiteout #:small #:italic arg)))
