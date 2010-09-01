
unFlute = { c'' }

deuxFlute = { d'' }

FluteInstr = "Flûte"


%unFluteTexte = \lyricmode { toto }
deuxFluteTexte = \lyricmode { toto }
unClarinetteTexte = \lyricmode { toto }
%deuxClarinetteTexte = \lyricmode { toto }


unClarinette = { c' }

deuxClarinette = { d' }

deuxTitre = "toto"

#(define (make-this-music name)
    (let ((music (ly:parser-lookup parser (string->symbol name))))
        (display music)
     (if (ly:music? music)
         music
         (make-music 'Music 'void #t))))

usevariablenames = ##t

#(define text-suffix "Titre")

#(define instr-suffix "Instr")

#(define short-instr-suffix "InstrShort")

#(define lyrics-suffix "Texte")

#(define (make-this-text name suffix)
   (let ((mark (ly:parser-lookup parser
           (string->symbol (string-append name suffix)))))
     (if (markup? mark)
         mark
         (begin
           ;(ly:warning "no text found in markup: ~a ~a" name suffix)
         (if (eq? (ly:parser-lookup parser 'usevariablenames) #t) name
         point-stencil)))))


includeInOrder =
#(define-music-function (parser location str) (string?)
  (map (lambda (num)
         (let* ((id (string-append num str))
                (music (make-this-music (string->symbol id)))
                (score (scorify-music music parser))
                (layout (ly:output-def-clone $defaultlayout))
                (header (make-module))
                (title (make-this-text id text-suffix)))
           (module-define! header 'piece title)

           (ly:score-set-header! score header)
           (ly:score-add-output-def! score layout)
           (add-score parser score)))

       numbers)
   (make-music 'Music 'void #t))

newStaff =
#(define-music-function (parser location id name) (string? string?)
  (let ((music (ly:parser-lookup parser
          (string->symbol (string-append id name))))
         (instr (make-this-text name instr-suffix))
         (short-instr (make-this-text name short-instr-suffix))
         (lyrics (ly:parser-lookup parser
             (string->symbol (string-append id name lyrics-suffix)))))
        (if (ly:music? music)
         #{ <<
             \new Staff \with {
               instrumentName = $instr
               shortInstrumentName = $short-instr
             }
             \new Voice = $name $music
             $(if (ly:music? lyrics)
             #{ \new Lyrics \lyricsto $name $lyrics #})
          >> #}
         (make-music 'Music 'void #t))))

#(define (apply-skel id)
#{<<
    \newStaff $id $"Flute"
    \newStaff $id $"Clarinette"
 >>
#})

includeAll =
#(define-music-function (parser location id-list) (list?)
  (map (lambda (id)
         (let* ((music (apply-skel id))
                (score (scorify-music music parser))
                (layout (ly:output-def-clone $defaultlayout))
                (header (make-module))
                (title (make-this-text id text-suffix)))
           (module-define! header 'piece title)

           (ly:score-set-header! score header)
           (ly:score-add-output-def! score layout)
           (add-score parser score)))

       id-list)
   (make-music 'Music 'void #t))

#(define numbers '("un" "deux"))


%\includeInOrder #"Flute"
\includeAll #numbers
