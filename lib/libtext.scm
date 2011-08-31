;------------------------------------------------------------------;
; opus_libre -- libtext.scm                                        ;
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


; Text functions.


;; Charset definitions (completing standard guile defs)

(define-public (char-punctuation? ch)
  (char-set-contains? char-set:punctuation ch))

(define-public char-set:dynamics
  (char-set #\f #\m #\p #\r #\s #\z))

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
