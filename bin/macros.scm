;------------------------------------------------------------------;
; opus_libre -- macros.scm                                         ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Input macros.

;; Rhythm shortcuts -----------------------------------------------;
(make-simple-function lang:tuplet-letter ; default: \t
  #{ \times 2/3 $x #})

(make-simple-function lang:tuplet-letter-double ; \tt
  #{ \times 4/5 $x #})

(make-simple-function lang:tuplet-letter-triple ; \ttt
  #{ \times 4/6 $x #})

(make-simple-function lang:tuplet-letter-quad ; \tttt
  #{ \times 4/7 $x #})


;; Composite dynamics ---------------------------------------------;
(define dyn
 ;;syntax: -\dyn instead of \dyn (see Issue #1264).
 (define-music-function (parser location arg) (markup?)
  (make-music 'AbsoluteDynamicEvent
              'text (cond
                     ((string? arg)
                      (if (string-every char-set:dynamics arg)
                          arg
                          (markup #:dynamic-string arg)))
                     (else arg)))))


;; Auto octavation ------------------------------------------------;
(define oct
 (define-music-function (parser location mus) (ly:music?)
  (octavize mus)))

;; Articulation shortcuts -----------------------------------------;
;;TODO: how about an alist? (see libmusic.scm)
(make-script '(st . "staccato"))
(make-script '(acc . "accent"))
(make-script '(det . "tenuto")) ; as in "détaché"
(make-script '(stdet . "portato"))
(make-script '(accdet . '("tenuto" "accent")))
(make-script '(accst . '("accent" "staccato")))
(make-script '(dwnb . "downbow"))

(define ten
  (define-music-function (parser location music) (ly:music?)
   (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                  (list (make-music 'TextScriptEvent 'text
                    ;; ugh. Haphazard alignment.
                    (markup #:translate-scaled (cons 4 0)
                    #:indic "(ten.)"))))))
                 music))


;; Polyphony shortcuts --------------------------------------------;
(define pl
  (define-music-function (parser location one two)
                         (ly:music? ly:music?)
#{ << { \voiceTwo $one } \\ { \voiceOne $two } >> #}))

(staff-change-command lang:upper-hand) ;; depending on your input language:
(staff-change-command lang:lower-hand) ;; \rh or \md etc. for switching staves.