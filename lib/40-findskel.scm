;------------------------------------------------------------------;
; opus_libre -- 40-findskel.scm                                    ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Look for skeleton file.

(define default-skel (string-append
                      conf:skel-dir "/"
                      conf:default-skel ".lyskel"))

(define (make-this-text name suffix)
  (let ((mark (ly:parser-lookup parser
                                (string->symbol
                                 (string-append name suffix)))))
    (if (markup? mark) mark
        (begin
          (if (ly:get-option 'debug-messages)
              (ly:warning "No text found in ~a~a" name suffix))
          (if (ly:get-option 'use-variable-names)
              (regexp-substitute/global #f "[A-Z]" name 'pre " "0 'post)
              point-stencil)))))

(define (read-file x)
  "Read a skeleton file and return it as a single string."
  (let ((ret-str ""))
    (do ((line (read-line x)))
        ((eof-object? line))
      (begin
        (set! line (regexp-substitute/global #f "%" line 'pre))
        (set! ret-str (string-append ret-str line))
        (set! line (read-line x))))
    ret-str))

(define (find-skel skelname)
  (let ((local-skel (find-files conf:local-conf-dir
                                (string-append "/"
                                skelname ".lyskel")))
        (global-skel (find-files conf:skel-dir
                                 (string-append "/"
                                 skelname ".lyskel"))))
     (if (not (null? local-skel)) (car local-skel)
         (if (not (null? global-skel)) (car global-skel)
         #f))))

(define skel-file
  (if (defined-string? 'skel)
      (let* ((requested-skel (ly:parser-lookup parser 'skel))
             (file (find-skel requested-skel)))
        (if (not file)
            (begin (ly:warning "Skeleton not found: ~a.
Defaulting to \"universal\" skeleton." requested-skel)
                       default-skel)
             file))
      (begin (ly:warning "No skeleton defined;
defaulting to \"universal\" skeleton.") default-skel)))
