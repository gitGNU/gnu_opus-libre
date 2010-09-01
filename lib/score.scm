;------------------------------------------------------------------;
; opus_libre -- score.scm                                          ;
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
(if (is-defined? 'scores)
 (let* ((score-subdir (ly:parser-lookup parser 'scores))
        (full-dir
         (string-append scores-dir "/" score-subdir)))
  (if (exists? full-dir) (include-ly full-dir)
   (begin (ly:warning "Score directory not found: ~a.
A blank score will be created instead."
     full-dir)
    (include-ly default-score))))
 (begin (ly:warning "Score directory not defined!
A blank score will be created instead.")
  (include-ly default-score)))
