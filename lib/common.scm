;------------------------------------------------------------------;
; opus_libre -- common.scm                                         ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Common functions (this file has to be loaded first).

(use-modules (ice-9 regex))

;; Scheme shortcuts
(define (is-defined? sym) (string? (ly:parser-lookup parser sym)))
(define (exists? loc) (access? loc F_OK))
(define (not-null? x) (not (null? x)))


