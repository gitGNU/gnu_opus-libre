\version "2.13.33"
#(define ten
  (define-music-function (parser location music) (ly:music?)
   (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                  (list (make-music 'TextScriptEvent 'text
                    (markup #:translate-scaled (cons 4 0)
                    #:italic "(ten.)"))))))
                 music))

{ \ten c1 }
