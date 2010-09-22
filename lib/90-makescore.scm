;------------------------------------------------------------------;
; opus_libre -- 90-makescore.scm                                   ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

(define numbers #f)
(define current-part #f)
(define conf:structure numbers)

(define (assoc-name alist name)
  (let ((res (assoc-ref alist name)))
    (if (not (string=? "" name))
        (if (char-lower-case? (car (string->list name)))
            (if (string? res) res name) name) name)))

(define (in-list? str lst)
  (let ((m (member str lst))
        (ret (if (list? m) (car m) m)))
        ret))

(define (alist-reverse alist)
  (if (null? alist) '()
      (cons (cons (cdr (car alist)) (car (car alist)))
            (alist-reverse (cdr alist)))))

(define (ls-index str lst)
  (number->string (- (length lst) (length (member str lst)))))

(define-public (include-ly dir)
  "Include all LilyPond code found in DIR, recursively."
  (let ((ly-files (find-files dir ".i?ly$" #t)))
    (map (lambda (x)
           (if (string-ci=? conf:local-ly-score
                            (string-take-right x (string-length conf:local-ly-score)))
               (if (ly:get-option 'debug-messages)
                   (ly:message "Skipping local score file: ~a..." x))
               (ly:parser-include-string parser (format #f "\\include \"~a\"" x))))
         ly-files)))

(define (eval-skel file)
  (eval-string (format #f
   "(define-public (apply-skel arg instr-list)
      (set! current-part (car arg))
      (let* ((str (cdr arg))
             (key (assoc-ref (alist-reverse instr-list) str)))
        (if (string? key) #{ \\newStaff $key #}
            (begin
              (if (not (or (string=? \"\" str) (string=? lang:all)))
                  (if (ly:get-option 'debug-messages)
                      (ly:warning \"Unknown instrument variable;
  ---> please check your `make' argument.\")))
                 #{ ~a #}))))"
        (read-file (open-input-file file)))))

(define output-redirect
  (set! book-filename
    (let* ((orig-filename (if (is-defined? 'book-filename)
                              book-filename
                              (ly:parser-output-name parser)))
           (prefix (if (is-defined? 'conf:output-dir)
                       (string-append conf:output-dir "/")
                       #f))
           (new-filename (if (is-defined? 'scores)
                             (ly:parser-lookup parser 'scores)
                             orig-filename)))
      (if (not prefix)
          orig-filename
          (string-append prefix new-filename)))))

(define make
  (define-music-function (parser location arg) (string?)
    eval-conf
    eval-lang
    eval-macros
    (include-ly score-dir)
    (let* ((defined-structure (ly:parser-lookup parser 'structure))
           (struct (cond ((not defined-structure) conf:default-structure)
                         ((string? defined-structure) (list defined-structure))
                         ((list? defined-structure) defined-structure))))
      (if (string? (member arg struct))
          (set! struct arg))
    (map (lambda (part)
          (let* ((skel-name (if (string? (find-skel arg)) arg (ly:parser-lookup parser 'skel)))
                 (skel-part (find-skel (string-append skel-name "-" part)))
                 (skel-num (find-skel (string-append skel-name "-" (ls-index part struct)))))
            (if (string? skel-part) (eval-skel skel-part)
                  (if (string? skel-num) (eval-skel skel-num)
                      (eval-skel (find-skel skel-name))))

            (let* ((music (apply-skel (cons part arg) lang:instruments))
                   (score (scorify-music music parser))
                   (layout (ly:output-def-clone $defaultlayout))
                   (header (make-module))
                   (title (make-this-text part lang:title-suffix)))
              (module-define! header 'piece title)

              (ly:score-set-header! score header)
              (ly:score-add-output-def! score layout)
              (add-score parser score)
              output-redirect)))

        struct)
    (make-music 'Music 'void #t))))
