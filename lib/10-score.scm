;------------------------------------------------------------------;
; opus_libre -- 10-score.scm                                       ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Score assembly.

;; Browsing scores sub-directory
(define conf:scores-dir "scores")
(define conf:default-score "etc/blank")

(define-public (defined-string? sym)
  "Does SYM refer to a string?"
   (string? (ly:parser-lookup parser sym)))

;; This one isn't actually used.
(define-public (defined-music? sym)
  "Does SYM refer to a music expression?"
  (ly:music? (ly:parser-lookup parser sym)))

(define-public (exists? loc)
  "Is LOC an accessible file/directory?"
  (access? loc F_OK))

(define score-dir
;;   "The directory that contains all music variables
;; and local settings, typically located in scores/.
;; Think of it as the usr/ directory in a standard
;; *nix file-tree."
  (let* ((defined-score (ly:parser-lookup parser 'scores))
         (branch (if (ly:get-option 'git-branch-as-score-name)
                     (let* ((port (open-input-pipe "git branch | grep \\*"))
                            (str (read-line port)))
                       (if (string? str)
                           (set! str (string-drop str 2))
                           #f)
                       (close-pipe port)
                       str)
                     #f))
         (make-path (lambda (f) (string-append conf:scores-dir "/" f))))
  (if (and branch (not (equal? branch "master")))
      (if (exists? (make-path branch))
          (make-path branch))
      (if defined-score
          (if (exists? (make-path defined-score))
              (make-path defined-score)
              (begin (ly:warning "Score directory ~a not found in ~a.
A blank score will be created instead." defined-score conf:scores-dir)
                  conf:default-score))
          (begin (ly:warning "Score directory not defined!
A blank score will be created instead.")
                  conf:default-score)))))
