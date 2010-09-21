%------------------------------------------------------------------%
% Opéra Libre -- functions.ly                                      %
%                                                                  %
% (c) Valentin Villenave, 2008, 2009                               %
%------------------------------------------------------------------%

% Core structure functions (with great help from Nicolas Sceaux and
% Reinhold Kainhofer).

%%%%%%%%%%%%%%%%%%%%%%%%% Scores inclusion %%%%%%%%%%%%%%%%%%%%%%%%%

%% Prefix/postfix defs --------------------------------------------%
#(define text-id "Texte")

%% Variables handling ---------------------------------------------%
#(define (make-sym prefix-or-name name-or-postfix)
  (if (symbol? prefix-or-name)
    (string->symbol (string-append
      (symbol->string prefix-or-name)
      name-or-postfix))
    (string->symbol (string-append
      prefix-or-name
      (symbol->string name-or-postfix)))))

#(define (make-this-music name)
   (let ((music (ly:parser-lookup parser name)))
     (if (ly:music? music)
         music
         (make-music 'Music 'void #t))))

#(define (make-this-text name)
   (let ((mark (ly:parser-lookup parser name)))
     (if (markup? mark)
         mark
         (begin
         (ly:warning "no text found in markup")
         point-stencil))))


%% LilyPond commands ----------------------------------------------%
includeAll =
#(define-music-function (parser location variable-names) (list?)
  (map (lambda (variable-name)
         (let* ((music (make-this-music variable-name))
                (score (scorify-music music parser))
                (layout (ly:output-def-clone $defaultlayout))
                (header (make-module))
                (title (make-this-text (make-sym text-id variable-name))))
           (module-define! header 'piece title)

           (ly:score-set-header! score header)
           (ly:score-add-output-def! score layout)
           (add-score parser score)))

       variable-names)
   (make-music 'Music 'void #t))
