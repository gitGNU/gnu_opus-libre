tupletLetter = "f"

#(use-modules (ice-9 regex))

#(define rc:rc-prefix "perso")

#(define (scmize str)
 (let ((prefix
        (if (string? rc:rc-prefix)
         (string-append rc:rc-prefix ":")
         ""))
       (hyphenated
        (regexp-substitute/global #f "[A-Z]+" str 'pre "-" 0 'post)))
  (string-append prefix (string-downcase hyphenated))))

#(defmacro make-scm-id (id)
(let* ((str-id (symbol->string 'tupletLetter))
       (scm-id (string->symbol (scmize str-id))))
 `(define-public ,scm-id (primitive-eval ,id))))

#(make-scm-id 'tupletLetter)

#(defmacro make-simple-function (token expr)
        (let* ((sym (if (string? (ly:parser-lookup parser token))
                        (string->symbol (primitive-eval token))
                        token)))
    `(define-public ,sym
   (define-music-function (parser location x) (ly:music?)
    ,expr))))

#(make-simple-function
  perso:tuplet-letter
  #{ \times 2/3 { $x } #})

\relative c' {
  c d \f { e f g }
}
