#(define-public (rounded-whiteout-stencil stencil blot)
  (let*
      ((x-ext (ly:stencil-extent stencil X))
       (y-ext (ly:stencil-extent stencil Y)))
    (ly:stencil-add
     (stencil-with-color (ly:round-filled-box x-ext y-ext blot)
       white)
     stencil)))

#(define-markup-command (whiteout layout props arg)
                        (markup?)
   (let* ((def (ly:parser-lookup parser 'roundedWhiteout))
         (radius (if (number? def) def 0)))
  (rounded-whiteout-stencil (interpret-markup layout props arg) radius)))

roundedWhiteout = #0.5

 \markup {
  \combine
    \filled-box #'(-1 . 10) #'(-3 . 4) #1
    \whiteout whiteout
}