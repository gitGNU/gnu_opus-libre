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
  (string? (ly:parser-lookup parser sym)))

(define-public (exists? loc) (access? loc F_OK))

(define score-dir
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
