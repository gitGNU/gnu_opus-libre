#(define-markup-command (dynamic-string layout props lst) (list?)
    (map (lambda (word)  (interpret-markup layout props
      word)) lst))

dynamic =
#(define-music-function (parser location str) (string?)
  (let ((dyn-charset (char-set #\f #\m #\p #\r #\s #\z))
        (split (lambda (s) (string-index s #\_)))
        (str-list '()))
    (do ((current-str str))
        ((not (split current-str)))
        (begin
          (set! str-list (append str-list
            (list (string-take current-str (split current-str)))))
          (set! current-str
            (string-drop current-str (+ (split current-str) 1)))))
  (make-music 'AbsoluteDynamicEvent
     'text (markup #:line ( "toto" #:dynamic-string str-list)))
(make-music 'Music 'void #t)
     ))


\score {
  %\displayMusic
 \new Staff \relative c' {
    c1 \dynamic #"toto_caca_prooooo_pp_oout_qosijdqodijqoij_zffp_odijoij_pppp" c d\p
  }
  %  \layout { \context { \Staff \consists #mixed-engraver } }
}
