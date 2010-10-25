;------------------------------------------------------------------;
; opus_libre -- libtext.scm                                        ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
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


; Text functions.


;; Charset definitions (completing standard guile defs)

(define-public (char-punctuation? ch)
  (char-set-contains? char-set:punctuation ch))

(define-public char-set:dynamics
  (char-set #\f #\m #\p #\r #\s #\z))


;; smallCaps helper -- This code was provided by Nicolas Sceaux.
;; an accented character is seen as two characters by guile

(define-public string-upper-case #f)
(define accented-char-upper-case? #f)
(define accented-char-lower-case? #f)

(let ((lower-case-accented-string "éèêëáàâäíìîïóòôöúùûüçœæ")
      (upper-case-accented-string "ÉÈÊËÁÀÂÄÍÌÎÏÓÒÔÖÚÙÛÜÇŒÆ"))
  (define (group-by-2 chars result)
    (if (or (null? chars) (null? (cdr chars)))
        (reverse! result)
        (group-by-2 (cddr chars)
                    (cons (string (car chars) (cadr chars))
                          result))))
  (let ((lower-case-accented-chars
         (group-by-2 (string->list lower-case-accented-string) (list)))
        (upper-case-accented-chars
         (group-by-2 (string->list upper-case-accented-string) (list))))
    (set! string-upper-case
          (lambda (str)
            (define (replace-chars str froms tos)
              (if (null? froms)
                  str
                  (replace-chars (regexp-substitute/global #f (car froms) str
                                                           'pre (car tos) 'post)
                                 (cdr froms)
                                 (cdr tos))))
            (string-upcase (replace-chars str
                                          lower-case-accented-chars
                                          upper-case-accented-chars))))
    (set! accented-char-upper-case?
          (lambda (char1 char2)
            (member (string char1 char2) upper-case-accented-chars string=?)))
    (set! accented-char-lower-case?
          (lambda (char1 char2)
            (member (string char1 char2) lower-case-accented-chars string=?)))))

(define (string-list->markup strings lower)
  (let ((final-string (string-upper-case
                       (apply string-append (reverse strings)))))
    (if lower
        (markup #:fontsize -2 final-string)
        final-string)))

(define (make-small-caps rest-chars currents current-is-lower prev-result)
  (if (null? rest-chars)
      (make-concat-markup (reverse! (cons (string-list->markup
                                           currents current-is-lower)
                                          prev-result)))
      (let* ((ch1 (car rest-chars))
             (ch2 (and (not (null? (cdr rest-chars))) (cadr rest-chars)))
             (this-char-string (string ch1))
             (is-lower (char-lower-case? ch1))
             (next-rest-chars (cdr rest-chars)))
        (cond ((and ch2 (accented-char-lower-case? ch1 ch2))
               (set! this-char-string (string ch1 ch2))
               (set! is-lower #t)
               (set! next-rest-chars (cddr rest-chars)))
              ((and ch2 (accented-char-upper-case? ch1 ch2))
               (set! this-char-string (string ch1 ch2))
               (set! is-lower #f)
               (set! next-rest-chars (cddr rest-chars))))
        (if (or (and current-is-lower is-lower)
                (and (not current-is-lower) (not is-lower)))
            (make-small-caps next-rest-chars
                             (cons this-char-string currents)
                             is-lower
                             prev-result)
            (make-small-caps next-rest-chars
                             (list this-char-string)
                             is-lower
                             (if (null? currents)
                                 prev-result
                                 (cons (string-list->markup
                                        currents current-is-lower)
                                       prev-result)))))))



;; overriding the standard whiteout markup definition
;; allows us to add an optional radius argument.

(define-public (stencil-whiteout stencil . rad)
  (let*
      ((x-ext (ly:stencil-extent stencil X))
       (y-ext (ly:stencil-extent stencil Y))
       (def (ly:parser-lookup parser 'conf:rounded-whiteout))
       (radius (if (number? def) def 0))
       (blot (if (list? rad) (car rad) radius)))
    (ly:stencil-add
     (stencil-with-color (ly:round-filled-box x-ext y-ext blot)
                         white)
     stencil)))


(define (make-text-span str)
"Make a TextSpanner that begins with the given STR."
  (let* ((m (make-music 'TextSpanEvent
             'span-direction -1))
         (details (assoc-get 'bound-details
                   (assoc-get 'TextSpanner
                    all-grob-descriptions)))
         (left-details (assoc-get 'left
                        details)))
   (ly:music-set-property! m 'tweaks
    (acons 'bound-details
     (acons 'left
      (acons 'text str
       left-details)
      details)
     (ly:music-property m 'tweaks)))
   m))

