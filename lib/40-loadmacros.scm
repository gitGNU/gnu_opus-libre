;------------------------------------------------------------------;
; opus_libre -- 40-loadmacros.scm                                  ;
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



(defmacro make-function (token funct)
  (let* ((sym (if (defined-string? token)
		  (string->symbol (primitive-eval token))
		  token)))
    `(define-public ,sym ,funct)))


(defmacro staff-change-command (token)
  (let* ((str (primitive-eval token))
         (sym (if (defined-string? token)
                  (string->symbol str)
                  token)))
    `(define-public ,sym
       (define-music-function (parser location) ()
         (make-music 'ContextChange 'change-to-type 'Staff
                                    'change-to-id ,str)))))

(defmacro make-script (str)
  (let* ((sym (car (primitive-eval str)))
         (script (cdr (primitive-eval str))))
    `(define-public ,sym
       (define-music-function (parser location mus) (ly:music?)
         (add-script mus ,script)))))


;; Not used. See make-script above.
(define (make-scripts lst)
  (let ((rest '()))
    (if (list? lst)
        (begin
          (set! rest (cdr lst))
          (set! lst (car lst))))
    (let ((sym (car lst))
          (script (cdr lst)))
      (eval-string (format #f
                           ;; hackish, but oh sooo convenient
                           "(define-public ~a
          (define-music-function (parser location mus) (ly:music?)
          (add-script mus \"~a\")))" sym script)))
    (if (not-null? rest) (make-scripts rest))))

(define (load-macros-in dir)
   (map (lambda (x)
          (begin
            (ly:debug-message "Loading macros file ~a..." x)
            ;; ugh.
            (scm-load (string-append "../" x))))
       (find-files dir ".scm$")))

(define eval-macros
;;   "Load macros, first at a global level
;; (typically in bin/), then locally (which
;; allows the score to override some definitions
;; if needed)."
  (begin
    (load-macros-in conf:macros-dir)
    (load-macros-in conf:local-conf-dir)))
