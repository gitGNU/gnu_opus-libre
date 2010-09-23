;------------------------------------------------------------------;
; opus_libre -- 80-buildskel.scm                                   ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;


(define (include-music name)
  (let ((mus (ly:parser-lookup parser (string->symbol name))))
    (if (ly:music? mus)
        (begin (if (ly:get-option 'debug-messages)
                  (ly:message "Loading music from ~a..." name))
               mus)
        (begin (if (ly:get-option 'debug-messages)
                  (ly:message "Variable ~a doesn't exist." name))
               (make-music 'Music 'void #t)))))

(define newStaff
  (define-music-function (parser location name) (string?)
    (let* ((name (assoc-name lang:instruments name))
           (mus-name (string-append current-part name))
           (music (ly:parser-lookup parser (string->symbol mus-name)))
           (instr (make-this-text name lang:instr-suffix))
           (short-instr (make-this-text name lang:short-instr-suffix))
           (lyrics (ly:parser-lookup parser
                                     (string->symbol
                                      (string-append mus-name lang:lyrics-suffix)))))
      (if (ly:get-option 'debug-messages) (ly:message "Loading music from ~a..." mus-name))
      (if (ly:music? music)
;;  (if (ly:moment<? (ly:music-length music) (ly:make-moment 1 1000))
          #{ <<
             \new Staff \with {
               instrumentName = $instr
               shortInstrumentName = $short-instr
             }
             \new Voice = $name $music
               $(if (ly:music? lyrics)
                  #{ \new Lyrics \lyricsto $name $lyrics #})
          >> #}
          (begin (if (ly:get-option 'debug-messages)
                     (ly:message "Variable ~a doesn't exist." mus-name))
              (make-music 'Music 'void #t))))))

(define newLyrics
  (define-music-function (parser location name) (string?)
    (let* ((name (assoc-name lang:instruments name))
           (mus-name (string-append current-part name)))
      #{
        $(let* ((musiclist (list #{ {} #}))
                (numlist (if (ly:get-option 'only-suffixed-varnames)
                            lang:numbers
                            (cons "" lang:numbers))))
          (map (lambda (x)
                  (let* ((lyr-name (string-append mus-name lang:lyrics-suffix
                                                  (string-capitalize x)))
                        (lyrics (ly:parser-lookup parser (string->symbol lyr-name))))
                    (if (ly:music? lyrics)
                        (append! musiclist (list
                                            #{ \new Lyrics \lyricsto $name $lyrics #})))))
                lang:numbers)
          (make-simultaneous-music musiclist))
      #})))

(define newGrandStaff
  (define-music-function (parser location name) (string?)
    #{ \new GrandStaff
       $(let* ((name (assoc-name lang:instruments name))
               (mus-name (string-append current-part name))
               (musiclist (list #{ {} #}))
               (numlist (if (ly:get-option 'only-suffixed-varnames)
                            lang:numbers
                            (cons "" lang:numbers))))
          (map (lambda (x)
                  (let ((staff-name (string-append mus-name (string-capitalize x))))
                     (append! musiclist (list
                        #{ \newStaff $staff-name #}))))
            lang:numbers)
          (make-simultaneous-music musiclist))
     #} ))

(define newPianoStaff ;; TODO: include lyrics?
  (define-music-function (parser location name) (string?)
    (let* ((current-name (string-append current-part (assoc-name lang:instruments name)))
           (upper (string-append current-name (string-capitalize lang:upper-hand)))
           (lower (string-append current-name (string-capitalize lang:lower-hand)))
           (dynamics (string-append current-name lang:dynamics-suffix))
           (instr (make-this-text name lang:instr-suffix))
           (short-instr (make-this-text name lang:short-instr-suffix)))
    #{ \new PianoStaff \with {
         instrumentName = $instr
         shortInstrumentName = $short-instr
       }
     <<
         \new Staff = $lang:upper-hand $(include-music upper)
         \new Dynamics $(include-music dynamics)
         \new Staff = $lang:lower-hand $(include-music lower)
     >> #})))
