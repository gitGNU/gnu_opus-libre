;------------------------------------------------------------------;
; opus_libre -- 70-loadmacros.scm                                  ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;



(defmacro make-simple-function (token expr)
  (let* ((sym (if (is-defined? token)
                  (string->symbol (primitive-eval token))
                  token)))
    `(define-public ,sym
      (ly:make-music-function (list ly:music?)
        (lambda (parser location x)
    ,expr)))))

(define eval-macros
  (map (lambda (x)
               ;; ugh.
               (load (string-append "../" x)))
       (find-files conf:macros-dir ".scm$")))