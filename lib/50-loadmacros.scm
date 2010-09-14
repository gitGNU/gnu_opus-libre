
(defmacro make-simple-function (token expr)
  (let* ((sym (if (is-defined? token)
                  (string->symbol (primitive-eval token))
                  token)))
    `(define-public ,sym
      (ly:make-music-function (list ly:music?)
        (lambda (parser location x)
    ,expr)))))

(define eval-macros
  (map (lambda (x)
               ;; ugh.
               (load (string-append "../" x)))
       (find-files conf:macros-dir ".scm$")))