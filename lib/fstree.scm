;------------------------------------------------------------------;
; opus_libre -- fstree.scm                                         ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Browse the file tree and look for relevant files.


;; FIXME: relative includes don't work in Scheme -- Issue 1078.
(ly:set-option 'relative-includes #f)

;; Filesystem browsing --------------------------------------------;

;;;; The following function was retrieved from
;;;; a mail posted by Russ McManus in 1998...
;;;; http://sources.redhat.com/ml/guile/1998-07/msg00370.html

(define-public (fs:find-files dir . arg-ls)
 "Return a list of files within directory DIR. Two optional arguements
 are supported, PREDICATE and RECURSE?. PREDICATE should be a procedure
 of one argument that determines whether a particular file should be included
 in the returned list. As a special case, if PREDICATE is a string, it is
 compiled into a regular expression, and a predicate is generated that applies
 this regular expression to the filename. RECURSE? determines whether the
 procedure descends into subdirectories, and it defaults to #t. Symbolic
 links are not followed."
 (let* ((n-args (length arg-ls))
        (pred (cond ((= n-args 0)
                     (lambda (file) #t))
               ((procedure? (list-ref arg-ls 0))
                (list-ref arg-ls 0))
               ((string? (list-ref arg-ls 0))
                (let ((rx (make-regexp (list-ref arg-ls 0)
                           ;; better use case-insensitive flag here
                           regexp/icase)))
                 (lambda (file) (regexp-exec rx file))))
               (#t (error "bad predicate" (list-ref arg-ls 0)))))
        (recurse? (if (>= n-args 2) (list-ref arg-ls 1) #t)))
  (define (do-file file basename ret-ls)
   (let* ((v (lstat file)))
    (cond ((string=? basename ".") ret-ls)
     ((string=? basename "..") ret-ls)
     ((and (eq? (stat:type v) 'directory)
       recurse?)
      (do-dir file ret-ls))
     ((pred file) (cons file ret-ls))
     (#t ret-ls))))
  (define (do-dir dir-name ret-ls)
   (let ((dir (opendir dir-name)))
    (do ((file (readdir dir) (readdir dir)))
     ((eof-object? file) ret-ls)
     (set! ret-ls
      (do-file
       ;; (string) now only accepts chars,
       ;; better use (string-append) instead
       (string-append dir-name "/" file) file ret-ls)))
    (closedir dir)
    ret-ls))
  (do-dir dir '())))

;; Automatic includes ---------------------------------------------;
(define-public (fs:include-scm dir)
 (let ((scm-files (find-files dir ".scm$")))
  (map (lambda (x) (load x))
   scm-files)))

(define-public (fs:include-ly dir)
 (let ((ly-files (find-files dir ".i?ly$" #t)))
  (map (lambda (x)
        (if (string-ci=? conf:local-ly-score
             (string-take-right x (string-length conf:local-ly-score)))
         (ly:message "Skipping local score file: ~a..." x)
         ;; FIXME: Issue 1096 prevents from parsing a string at toplevel
         (ly:parser-include-string parser "\\include \"" x "\"")))
   ly-files)))


;;;;;;;;;;;;;;;;;;;;;;;;;; Load libraries ;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;; Define music-functions ;;;;;;;;;;;;;;;;;;;;;;

;; Required by main.ly --------------------------------------------;
; lang =
; #(define-music-function (parser location lang-code) (string?)
;   (input-language lang-code)
;   (make-sequential-music 'void #t))
;
; edition =
; #(define-music-function (parser location lang-code) (string?)
;   (edition-language lang-code)
;   (make-sequential-music 'void #t))
;
; make =
; #(define-music-function (parser location dir) (string?)
;   (use-score-dir dir))


;------------------------------------------------------------------;
