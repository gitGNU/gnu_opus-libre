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

(define newStaff
  (define-music-function (parser location name) (string?)
    (let* ((name (assoc-name lang:instruments name))
           (mus-name (string-append current-part name))
           (music (ly:parser-lookup parser (string->symbol mus-name)))
           (instr (make-this-text name lang:instr-suffix))
           (short-instr (make-this-text name lang:short-instr-suffix))
           (lyrics (ly:parser-lookup parser
                                     (string->symbol
                                      (string-append mus-name lang:lyrics-suffix)))))
      (if (ly:get-option 'debug-messages) (ly:message "Loading music from ~a..." mus-name))
      (if (ly:music? music)
;;  (if (ly:moment<? (ly:music-length music) (ly:make-moment 1 1000))
          #{ <<
             \new Staff \with {
               instrumentName = $instr
               shortInstrumentName = $short-instr
             }
             \new Voice = $name $music
               $(if (ly:music? lyrics)
                  #{ \new Lyrics \lyricsto $name $lyrics #})
          >> #}
          (begin (if (ly:get-option 'debug-messages)
                     (ly:message "Variable ~a doesn't exist." mus-name))
              (make-music 'Music 'void #t))))))

(define newLyrics
  (define-music-function (parser location name) (string?)
    (let* ((name (assoc-name lang:instruments name))
           (mus-name (string-append current-part name)))
      #{
        $(let* ((musiclist (list #{ {} #}))
                (numlist (if (ly:get-option 'only-suffixed-varnames)
                            lang:numbers
                            (cons "" lang:numbers))))
          (map (lambda (x)
                  (let* ((lyr-name (string-append mus-name lang:lyrics-suffix
                                                  (string-capitalize x)))
                        (lyrics (ly:parser-lookup parser (string->symbol lyr-name))))
                    (if (ly:music? lyrics)
                        (append! musiclist (list
                                            #{ \new Lyrics \lyricsto $name $lyrics #})))))
                lang:numbers)
          (make-simultaneous-music musiclist))
      #})))

(define newGrandStaff
  (define-music-function (parser location name) (string?)
    #{ \new GrandStaff
       $(let* ((name (assoc-name lang:instruments name))
               (mus-name (string-append current-part name))
               (musiclist (list #{ {} #}))
               (numlist (if (ly:get-option 'only-suffixed-varnames)
                            lang:numbers
                            (cons "" lang:numbers))))
          (map (lambda (x)
                  (let ((staff-name (string-append mus-name (string-capitalize x))))
                     (append! musiclist (list
                        #{ \newStaff $staff-name #}))))
            lang:numbers)
          (make-simultaneous-music musiclist))
     #} ))

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
