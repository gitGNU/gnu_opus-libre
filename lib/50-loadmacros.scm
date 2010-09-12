
(defmacro make-simple-function (token expr)
  (let* ((sym (if (is-defined? token)
              (string->symbol (primitive-eval token))
              token)))
    `(define-public ,sym
      (define-music-function (parser location x) (ly:music?)
    ,expr))))

(define eval-macros
  (map (lambda (x)
               ;; ugh.
               (load (string-append "../" x)))
       (find-files conf:macros-dir ".scm$")))