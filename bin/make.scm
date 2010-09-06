 
(define make
  (define-music-function (parser location id-list) (list?)
    (map (lambda (id)
            (let* ((music (apply-skel id))
                    (score (scorify-music music parser))
                    (layout (ly:output-def-clone $defaultlayout))
                    (header (make-module))
                    (title (make-this-text id conf:text-suffix)))
              (module-define! header 'piece title)

              (ly:score-set-header! score header)
              (ly:score-add-output-def! score layout)
              (add-score parser score)))

          id-list)
      (make-music 'Music 'void #t)))