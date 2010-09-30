;------------------------------------------------------------------;
; opus_libre -- init.scm                                           ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Init file: mandatory variables and functions.

(use-modules
 (ice-9 regex)
 (ice-9 optargs)
 (ice-9 rdelim)
 (ice-9 popen))


(define-public (ly:debug-message string . rest)
   (if (ly:get-option 'debug-messages)
       (apply ly:message (cons string rest))))

;; Base variables initialization ----------------------------------;
;; (may be overriden later when parsing conf-file)

(define conf:lib-dir "lib")

;; Filesystem browsing --------------------------------------------;

;;;; The following function was retrieved from
;;;; a mail posted by Russ McManus in 1998...
;;;; http://sources.redhat.com/ml/guile/1998-07/msg00370.html

(define-public (find-files dir . arg-ls)
  "List files in DIR, in alphabetical order.  Two optional arguments
 are supported: a regexp filter, and a boolean that determines whether
 subdirectories should be included (defaults to true)."
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
                 ;; use (string-append) instead
                 (string-append dir-name "/" file) file ret-ls)))
        (closedir dir)
        ret-ls))
    (sort (do-dir dir '()) string<?)))

;; Automatic includes ---------------------------------------------;
(define-public (include-scm dir . numbered)
  "Load all Scheme files in DIR. If NUMBERED is set,
 load only numbered files."
  (let* ((regx (if numbered "[0-9].*.scm$" ".scm$"))
         (scm-files (find-files dir regx)))
    (map (lambda (x)
           (begin (ly:debug-message "Loading ~a..." x)
                  (load x)))
         scm-files)))


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
