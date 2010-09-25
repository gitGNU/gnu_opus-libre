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
  (if (defined-string? 'scores)
      (let* ((score-subdir (ly:parser-lookup parser 'scores))
             (full-dir
              (string-append conf:scores-dir "/" score-subdir)))
        (if (exists? full-dir)
            full-dir
            (begin (ly:warning "Score directory not found: ~a.
A blank score will be created instead." full-dir)
                   conf:default-score)))
      (begin (ly:warning "Score directory not defined!
A blank score will be created instead.")
             conf:default-score)))
