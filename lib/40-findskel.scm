;------------------------------------------------------------------;
; opus_libre -- 40-findskel.scm                                    ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Look for skeleton file.

(define default-skel (string-append
                      conf:skel-dir "/"
                      conf:default-skel ".lyskel"))

(define (make-this-text name suffix)
  (let ((mark (ly:parser-lookup parser
                (string->symbol
                  (string-append name suffix)))))
    (if (markup? mark) mark
        (begin
          (if (ly:get-option 'debug-messages)
              (ly:warning "No text found in ~a~a" name suffix))
          (if (ly:get-option 'use-variable-names)
              (regexp-substitute/global #f "[A-Z]" name 'pre " "0 'post)
              point-stencil)))))

(define newStaff
  (define-music-function (parser location id name)
    (string? string?)
    (let* ((mus-name (string-append id name))
           (music (ly:parser-lookup parser (string->symbol mus-name)))
           (instr (make-this-text name conf:instr-suffix))
           (short-instr (make-this-text name conf:short-instr-suffix))
           (lyrics (ly:parser-lookup parser
                     (string->symbol
                        (string-append mus-name conf:lyrics-suffix)))))
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
          (make-music 'Music 'void #t)))))

(define numbers '("one" "two" "three"))

(define newLyrics
  (define-music-function (parser location id name numlist)
    (string? string? list?)
    #{
    $(let* ((musiclist (list #{ {} #}))
            (numlist (if (ly:get-option 'only-suffixed-varnames)
                         numlist
                         (cons "" numlist))))
      (map (lambda (x)
             (let* ((lyr-name (string-append id name conf:lyrics-suffix
                                (string-capitalize x)))
                    (lyrics (ly:parser-lookup parser (string->symbol lyr-name))))
              (if (ly:music? lyrics)
                  (append! musiclist (list
                      #{ \new Lyrics \lyricsto $name $lyrics #})))))
       numlist)
      (make-simultaneous-music musiclist))
    #}))

(define newGrandStaff
  (define-music-function (parser location id name numlist)
    (string? string? list?)
    #{ \new GrandStaff
       $(let ((musiclist (list #{ {} #}))
              (numlist (if (ly:get-option 'only-suffixed-varnames)
                           numlist
                           (cons "" numlist))))
          (map (lambda (x)
                 (append! musiclist (list
                   #{ \newStaff 
                      $id $(string-append name (string-capitalize x))
                   #}))) numlist)
          (make-simultaneous-music musiclist))
     #} ))

(define (read-file x)
  "Read a skeleton file and return it as a single string."
  (let ((ret-str ""))
    (do ((line (read-line x)))
        ((eof-object? line))
        (begin
          (set! ret-str (string-append ret-str line))
          (set! line (read-line x))))
    ret-str))

(define skel
(if (is-defined? 'skel)
    (let* ((requested-skel (ly:parser-lookup parser 'skel))
           (local-skel (string-append
                        conf:scores-dir "/"
                        conf:local-skel-dir "/"
                        requested-skel ".lyskel"))
           (global-skel (string-append
                         conf:skel-dir "/"
                         requested-skel ".lyskel")))
            (if (exists? local-skel) local-skel
                (if (exists? global-skel) global-skel
                    (begin (ly:warning "Skeleton not found: ~a.
Defaulting to \"universal\" skeleton." requested-skel)
                           default-skel))))
    (begin (ly:warning "No skeleton defined;
defaulting to \"universal\" skeleton.") default-skel)))

(eval-string (format #f "(define-public (apply-skel id)
 #{ ~a #})" (read-file (open-input-file skel))))

(define make
(define-music-function (parser location id-list) (list?)
  (map (lambda (id)
          (let* ((music (apply-skel id))
                  (score (scorify-music music parser))
                  (layout (ly:output-def-clone $defaultlayout))
                  (header (make-module))
                  (title (make-this-text id conf:title-suffix)))
            (module-define! header 'piece title)

            (ly:score-set-header! score header)
            (ly:score-add-output-def! score layout)
            (add-score parser score)))

        id-list)
    (make-music 'Music 'void #t)))