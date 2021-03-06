;------------------------------------------------------------------;
; opus_libre -- text.scm                                           ;
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


;; Macros for entering text elements.

(scm-load "../lib/libtext.scm")
(scm-load "../lib/libgraphics.scm")

;; Composite dynamics ---------------------------------------------;
(define dyn
  (define-event-function (arg) (markup?)
    (let ((d (make-music 'AbsoluteDynamicEvent)))
      (ly:music-set-property! d 'tweaks
        ; not very elegant, but these composite dynamic
        ; indication might get quite lengthy.
        (acons 'X-extent (cons 0 0)
          (ly:music-property d 'tweaks)))
      (ly:music-set-property! d 'tweaks
        ; ugh. hardcoded offset.
        (acons 'X-offset -1.8
          (ly:music-property d 'tweaks)))
      (ly:music-set-property! d 'text
        (cond
          ((string? arg)
           (if (string-every char-set:dynamics arg)
               arg
               (markup #:dynamic-string arg)))
          (else arg)))
      d)))

(define dyncresc
  (define-event-function (arg) (markup?)
    (make-music 'CrescendoEvent 'span-direction START
                'span-type 'text
                'span-text (cond
                            ((string? arg)
                             (if (string-every char-set:dynamics arg)
                                 arg
                                 (markup #:dynamic-string arg)))
                            (else arg)))))

(define dyndim
  (define-event-function (arg) (markup?)
    (make-music 'DecrescendoEvent 'span-direction START
                'span-type 'text
                'span-text (cond
                            ((string? arg)
                             (if (string-every char-set:dynamics arg)
                                 arg
                                 (markup #:dynamic-string arg)))
                            (else arg)))))

;; Adapted from LSR snippet #233 (from Reinhold?)
(define (make-hairpin-text dir text)
  (make-music
     'OverrideProperty 'once #t
     'grob-property-path (list 'stencil)
     'grob-value (lambda (grob)
                   (ly:stencil-aligned-to
                    (ly:stencil-combine-at-edge
                     (ly:stencil-aligned-to (ly:hairpin::print grob) X CENTER)
                     Y dir ;;FIXME:direction should be computer automatically
                     (ly:stencil-aligned-to (grob-interpret-markup grob
                                               (make-indic-markup text)) X CENTER))
                    X LEFT))
     'symbol
     'Hairpin))

;; (define *hairpin-text-direction* (make-parameter #f))
;; (define hairpinText
;;   (define-music-function (text) (markup?)
;;     (make-sequential-music
;;      (list
;;        (make-music
;;         'ApplyContext
;;         'procedure (lambda (ctx)
;;                      (let ((parent-staff (ly:context-id (ly:context-parent ctx)))
;;                            (global-dir (assoc-get 'direction
;;                                                   (ly:context-grob-definition ctx 'DynamicLineSpanner))))
;;                        (*hairpin-text-direction*
;;                         (if (or (string-suffix-ci? lang:upper-hand parent-staff)
;;                                 (eq? global-dir UP))
;;                             UP
;;                             DOWN)))))
;;         (make-hairpin-text (*hairpin-text-direction*) text)))))

(define hairpinText
  ;; beware - this is a _music_ function, not a postfix event!
  (define-music-function (text) (markup?)
    (make-hairpin-text DOWN text)))

(define hairpinTextUp
  (define-music-function (text) (markup?)
    (make-hairpin-text UP text)))

(define hairpinTextDown
  (define-music-function (text) (markup?)
    (make-hairpin-text DOWN text)))

(define startText
  (define-event-function (txt) (markup?)
     (make-text-span txt)))

;; for consistency only.
(define stopText
  stopTextSpan)

(define ten
  (define-music-function (music) (ly:music?)
    (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                   (list (make-music 'TextScriptEvent 'text
                                     ;; ugh. Haphazard alignment.
                                     (markup #:translate-scaled (cons 4 0)
                                             #:indic "(ten.)"))))))
    music))

(define ind
 (define-music-function (text music) (string? ly:music?)
   (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                  (list (make-music 'TextScriptEvent 'direction 1
                  'text (markup #:indic text))))))
   music))

(define bracketUp
  (define-music-function (text music) (markup? ly:music?)
    (let ((current-staff-position 0))
      ; this shouldn't be needed!!!
      (set! current-staff-position -4)
      (make-music 'ApplyOutputEvent
                  'origin (*location*)
                  'context-type 'Voice
                  'procedure
                  (lambda (grob grob-origin context)
                    (let ((staff-pos (ly:grob-property grob 'staff-position)))
                      (if (number? staff-pos)
                          (set! current-staff-position staff-pos)))))
      #{ \once \set fingeringOrientations = #'(left)
         \once \override Fingering #'X-extent = #'(-2.0 . 0.0)
         $(add-bracket current-staff-position #t text music)
         $music #})))

(define bracketDown
  (define-music-function (text music) (markup? ly:music?)
    (let ((current-staff-position 0))
      ; this shouldn't be needed!!!
      (set! current-staff-position -1)
      (make-music 'ApplyOutputEvent
                  'origin (*location*)
                  'context-type 'Voice
                  'procedure
                  (lambda (grob grob-origin context)
                    (let ((staff-pos (ly:grob-property grob 'staff-position)))
                      (if (number? staff-pos)
                          (set! current-staff-position staff-pos)))))
      #{ \once \set fingeringOrientations = #'(left)
         \once \override Fingering #'X-extent = #'(-2.0 . 0.0)
         $(add-bracket current-staff-position #f text music)
         $music #})))

(define untaint
   (define-music-function (expr) (ly:music?)
     #{ $(untaint-this expr) #}))
