;------------------------------------------------------------------;
; opus_libre -- 90-makescore.scm                                   ;
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


(define numbers #f)
(define conf:structure numbers)
(define *pagebreak-after* (make-parameter #f))
(define *pagebreak-before* (make-parameter #f))

; This is admittedly ugly.
(define pagebreak
  (make-music 'EventChord 'elements
    '((make-music 'LineBreakEvent 'break-permission 'force)
      (make-music 'PageBreakEvent 'break-permission 'force))
    'page-break-permission 'force
    'line-break-permission 'force
    'page-marker #t))

(define (alist-reverse alist)
  "Browse ALIST by looking for props, not by keys."
  (if (null? alist) '()
      (cons (cons (cdar alist) (caar alist))
            (alist-reverse (cdr alist)))))


(define (ls-index str lst)
  "Where is STR in LST?"
  (- (length lst) (length (member str lst))))

(define (eval-skel file)
  "Load skeleton in FILE, and apply it to the
current-part music."
  (eval-string (format #f
                       "(define-public (apply-skel arg instr-list)
      (*current-part* (car arg))
      (let* ((str (cdr arg))
             (key (assoc-ref (alist-reverse instr-list) str)))
        (if (string? key) #{ \\newStaff $key #}
            (begin
              (if (not (or (string=? \"\" str) (string=? lang:all)))
                  (ly:debug-message \"Unknown instrument variable;
  ---> please check your `make' argument.\"))
                 #{ ~a #}))))"
                       (read-file (open-input-file file)))))

(define output-redirect
;;   "Make sure that the PDF output will be placed in
;; the output-dir directory.  If book-filename has already
;; been defined by the user, just keep it, otherwise it
;; will be named after the score directory's name in scores/."
  (let* ((orig-filename (if (defined-string? 'output-filename)
                            output-filename
                            (ly:parser-output-name)))
         (prefix (if (defined-string? 'conf:output-dir)
                     (string-append conf:output-dir "/")
                     #f))
         (suffix (if (eq? (ly:get-option 'backend) 'ps)
                     ".pdf"
                     #f))
         (new-filename (car (reverse (string-split (*current-score*) #\/))))
         (new-filepath (string-append prefix new-filename))
         (main-filepath (string-append conf:main-file suffix))
         (long-filepath (string-append new-filepath suffix))
         (main-symlink (if (access? main-filepath 0)
                           (readlink main-filepath)
                           #f)))
    (if suffix
        (if (and main-symlink (string=? main-symlink long-filepath))
            (ly:debug
             "Output file ~a already points to ~a, not making a new symlink."
             main-filepath
             long-filepath)
            (begin
             (if main-symlink (delete-file main-filepath))
             (symlink long-filepath main-filepath))))
    (set! output-filename
          (if (not prefix)
              orig-filename
              new-filepath))))

(define make
;;   "This is where the score is put together and all functions
;; are evaluated.  \make takes a string argument, that can be either:
;;   - the name of an instrument (to compile just a separate part)
;;   - the name of a section, or a separate piece
;;   - the name of a specific skeleton.
;; If ARG is an empty string or #"all" (or a localized equivalent),
;; then the whole score will be built.
;; Unrecognized string arguments are tolerated for now, but not recommended."
  (define-music-function (arg) (string?)
    eval-conf
    eval-lang
    eval-macros
    eval-layout
    eval-theme
    (let* ((defined-structure (ly:parser-lookup 'structure))
           (struct (cond ((not defined-structure) conf:default-structure)
                         ((string? defined-structure) (list defined-structure))
                         ((list? defined-structure) defined-structure))))
      (if (string? (member arg struct))
          (set! struct arg))

      (map (lambda (part)
         (if (string-suffix? "|" part)
             (let* ((num (ls-index part struct))
                    (trimmed (string-drop-right part 1)))
               (*pagebreak-after* #t)
               (set! part trimmed)
               (list-set! struct num trimmed)))
         (if (string-prefix? "|" part)
             (let* ((num (ls-index part struct))
                    (trimmed (string-drop part 1)))
               (*pagebreak-before* #t)
               (set! part trimmed)
               (list-set! struct num trimmed)))
         (if (string-suffix? (or ".ly" ".ily") part)
             (let* ((regx (string-append "/" part "$"))
                    (file (car (find-files (*current-score*) regx))))
                (ly:parser-include-string (format #f "\\include \"~a\"" file)))
             (let* ((skel-name (skel-file arg))
                    (skel-part (find-skel (string-append skel-name "-" part)))
                    (skel-num (find-skel (string-append skel-name "-" (number->string (ls-index part struct))))))
               (if (string? skel-part) (eval-skel skel-part)
                   (if (string? skel-num) (eval-skel skel-num)
                       (eval-skel (find-skel (skel-file skel-name)))))

               (let* ((music (apply-skel (cons part arg) lang:instruments))
                      (score (scorify-music music))
                      (local-layout (make-this-layout part lang:layout))
                      (layout $defaultlayout)
                      (header (make-module))
                      (title (make-this-text part lang:title-suffix))
                      (subtitle (make-this-text part lang:subtitle-suffix))
                      (author (make-this-text part lang:author-suffix lang:untaint-disclaimer)))

                 (module-define! header 'piece title)
                 (module-define! header 'piece-subtitle subtitle)
                 (module-define! header 'author author)
                 (ly:score-set-header! score header)
                 (ly:score-add-output-def! score (if local-layout local-layout layout))
                 (if (*pagebreak-before*) (add-music pagebreak))
                 (add-score score)
                 (if (*pagebreak-after*) (add-music pagebreak))
                 (*has-timeline* #f)
                 (*pagebreak-before* #f)
                 (*pagebreak-after* #f)
                 (*untainted* #f)
                 output-redirect))))

           struct)
      (make-music 'Music 'void #t))))

(include-ly (*current-score*))
