;------------------------------------------------------------------;
; opus_libre -- conf.scm                                           ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Load configuration files and set variables.

(use-modules
 (ice-9 regex)
 (ice-9 rdelim))

;;FIXME: should be defined in ly.conf
(define confPrefix "conf")

(define confFile "etc/ly.conf")

(define (scmize str)
 (let ((prefix
        (if (string? confPrefix)
         (string-append confPrefix ":")
         ""))
       (hyphenated
        (regexp-substitute/global #f "[A-Z]+" str 'pre "-" 0 'post)))
  (string-append prefix (string-downcase hyphenated))))

(defmacro make-scm-id (id)
 (let* ((sym (string->symbol id))
        (scm-id (string->symbol (scmize id))))
  `(define-public ,scm-id (primitive-eval ,sym))))

(define (parse-conf-file x)
 (if (string? (read-line x))
  (begin
    (display (string-match "[ |%]" (read-line x)))
    (display (string-append (read-line x) "\n"))
   (parse-conf-file x))
  (close-port x)))


(parse-conf-file (open-input-file "etc/ly.conf"))

;(make-scm-id "tupletLetter")
;(display conf:tuplet-letter)
