;; Simple define-music-function shortcuts
(defmacro make-simple-function (sym expr)
 `(define-public ,sym
   (define-music-function (parser location x) (ly:music?)
    ,expr)))





(defmacro make-scm-id (id)
 (let* ((str-id (symbol->string 'tupletLetter))
        (scm-id (string->symbol (scmize str-id))))
  `(define-public ,scm-id (primitive-eval ,id))))

(defmacro make-simple-function (token expr)
 (let* ((sym (if (string? (ly:parser-lookup parser token))
              (string->symbol (primitive-eval token))
              token)))
  `(define-public ,sym
    (define-music-function (parser location x) (ly:music?)
     ,expr))))

