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

(define (alist-reverse alist)
  "Browse ALIST by looking for props, not by keys."
  (if (null? alist) '()
      (cons (cons (cdr (car alist)) (car (car alist)))
            (alist-reverse (cdr alist)))))

(define (ls-index str lst)
  "Where is STR in LST?"
  (number->string (- (length lst) (length (member str lst)))))

(define (eval-skel file)
  "Load skeleton in FILE, and apply it to the
current-part music."
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
;;   "Make sure that the PDF output will be placed in
;; the output-dir directory.  If book-filename has already
;; been defined by the user, just keep it, otherwise it
;; will be named after the score directory's name in scores/."
  (set! book-filename
        (let* ((orig-filename (if (defined-string? 'book-filename)
                                  book-filename
                                  (ly:parser-output-name parser)))
               (prefix (if (defined-string? 'conf:output-dir)
                           (string-append conf:output-dir "/")
                           #f))
               (new-filename (if (defined-string? 'scores)
                                 (ly:parser-lookup parser 'scores)
                                 orig-filename)))
          (if (not prefix)
              orig-filename
              (string-append prefix new-filename)))))

(define make
;;   "This is where the score is put together and all functions
;; are evaluated.  \make takes a string argument, that can be either:
;;   - the name of an instrument (to compile just a separate part)
;;   - the name of a section, or a separate piece
;;   - the name of a specific skeleton.
;; If ARG is an empty string or #"all" (or a localized equivalent),
;; then the whole score will be built.
;; Unrecognized string arguments are tolerated for now, but not recommended."
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
