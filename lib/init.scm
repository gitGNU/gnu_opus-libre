;------------------------------------------------------------------;
; opus_libre -- init.scm                                           ;
;                                                                  ;
; (c) 2008-2011 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License as published by the Free Software         ;
; Foundation, either version 3 of the License, or (at your option) ;
; any later version.                                               ;
;     This program is distributed WITHOUT ANY WARRANTY; without    ;
; even the implied warranty of MERCHANTABILITY or FITNESS FOR A    ;
; PARTICULAR PURPOSE.  You should have received a copy of the GNU  ;
; General Public License along with this program (typically in the ;
; share/doc/ directory).  If not, see http://www.gnu.org/licenses/ ;
;                                                                  ;
;------------------------------------------------------------------;


; Init file: mandatory variables and functions.

(use-modules
 ; regular expressions
 (ice-9 regex)
 ; optional arguments
 (ice-9 optargs)
 ; delimited i/o
 (ice-9 rdelim)
 ; command pipe
 (ice-9 popen)
 ; parameters
 (srfi srfi-39)
 ; *->lily-string
 (scm display-lily))

(define-public (not-null? x) (not (null? x)))
(define-public (false-or-null? x) (or (not x) (null? x)))

(define-public (ly:debug-message string . rest)
   (if (ly:get-option 'verbose)
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

;; Loading files (similar to ly:load) -----------------------------;

(define-public (scm-load file-name)
  (ly:debug "[~A" file-name)
  (load file-name)
  (if (ly:get-option 'verbose)
      (ly:progress "]\n")))

;; Automatic includes ---------------------------------------------;

(define-public (include-scm dir . numbered?)
  "Load all Scheme files in DIR. If NUMBERED is set,
 load only numbered files."
  (let* ((regx (if (not (false-or-null? numbered?)) "/[0-9].*\\.scm$" ".scm$"))
         (scm-files (find-files dir regx)))
    (map (lambda (x)
           (scm-load x))
         scm-files)))

;------------------------------------------------------------------;
