#(use-modules
(ice-9 regex)
(ice-9 rdelim))
unFlute = { c'' }

deuxFlute = { d'' }

unFlutrUn = { b b b b b b b }

unFluterDeux = { c c c }

FluteInstr = "Flûte"


%unFluteTexte = \lyricmode { toto }
deuxFluteTexte = \lyricmode { toto }
unClarinetteTexte = \lyricmode { toto }
%deuxClarinetteTexte = \lyricmode { toto }


unClarinette = { c' }

deuxClarinette = { d' }

deuxTitre = "toto"

#(ly:set-option 'allow-suffixless-varnames #t)

#(define conf:text-suffix "")
#(define conf:lyrics-suffix "Texte")
#(define conf:instr-suffix "Instr")
#(define conf:short-instr-suffix "")

#(define (make-this-music name)
    (let ((music (ly:parser-lookup parser (string->symbol name))))
        (display music)
     (if (ly:music? music)
         music
         (make-music 'Music 'void #t))))

#(define (make-this-text name suffix)
   (let ((mark (ly:parser-lookup parser
           (string->symbol (string-append name suffix)))))
     (if (markup? mark)
         mark
         (begin
           (if (ly:get-option 'debug-messages)
               (ly:warning "No text found in ~a~a" name suffix))
         (if (ly:get-option 'use-variable-names)
             (regexp-substitute/global #f "[A-Z]" name 'pre " "0 'post)
         point-stencil)))))
#(ly:set-option 'use-variable-names #t)

newStaff =
#(define-music-function (parser location id name) (string? string?)
  (let* ((mus-name (string-append id name))
         (music (ly:parser-lookup parser (string->symbol mus-name)))
         (instr (make-this-text name conf:instr-suffix))
         (short-instr (make-this-text name conf:short-instr-suffix))
         (lyrics (ly:parser-lookup parser (string->symbol (string-append mus-name conf:lyrics-suffix)))))
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

newGrandStaff =
#(define-music-function (parser location id name numlist)
                        (string? string? list?)
  #{ \new GrandStaff $(let ((musiclist (list #{ {} #}))
                            (numlist (if (ly:get-option 'allow-suffixless-varnames)
                            (cons "" numlist)
                            numlist)))
    (map (lambda (x)
      (append! musiclist (list #{
        \newStaff $id $(string-append name (string-capitalize x))
      #}))) numlist)
    (make-simultaneous-music musiclist)) #} )
                   
#(define (apply-skel id)
#{<<
    \newGrandStaff $id $"Flute" #numbers
    \newStaff $id $"Clarinette"
 >>
#})                   

#(define conf:output-dir "out")
#(define conf:default-output-filename "score")
#(define-public (is-defined? sym)
                (string? (ly:parser-lookup parser sym)))
make =
#(define-music-function (parser location id-list) (list?)
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
    (make-music 'Music 'void #t))

#(define numbers '("un" "deux"))

%{
(if (is-defined? conf:output-dir?)
(let* ((filename (if (is-defined? 'book-filename)
(ly:parser-lookup parser 'book-filename)
(if (is-defined? 'scores)
(ly:parser-lookup parser 'scores)
conf:default-output-filename)))
(filepath
(string-append conf:output-dir "/" filename)))
(set! book-filename filepath)%}

\book {
  \score {
%\includeInOrder #"Flute"
\make #numbers
}
}