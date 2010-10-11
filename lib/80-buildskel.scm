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


(define (assoc-name alist name)
  "If NAME begins with a lower case letter, then
try to find a matching entry in ALIST."
  (let ((res (assoc-ref alist name)))
    (if (not (string=? "" name))
        (if (char-lower-case? (car (string->list name)))
            (if (string? res) res name) name) name)))

(define (include-music name)
  "Turn NAME into a music expression if one exists."
  (let ((mus (ly:parser-lookup parser (string->symbol name))))
    (if (ly:music? mus)
        (begin (ly:debug-message "Loading music from ~a..." name)
               mus)
        (begin (ly:debug-message "Variable ~a doesn't exist." name)
               (make-music 'Music 'void #t)))))

(define (make-this-text name suffix)
  "Associate NAME with SUFFIX, and check if a suitable
markup exists."
  (let ((mark (ly:parser-lookup parser
                                (string->symbol
                                 (string-append name suffix)))))
    (if (markup? mark) mark
        (begin
          (ly:debug-message "No text found in ~a~a" name suffix)
          (if (ly:get-option 'use-variable-names)
              (regexp-substitute/global #f "[A-Z]" name 'pre " "0 'post)
              point-stencil)))))

(define newVoice
  ;;   "If NAME matches a defined music expression, then
  ;; create a Voice for it.  If a matching timeline can be
  ;; found, try and squash it as well."
  (define-music-function (parser location name) (string?)
    (let* ((current-name (string-append current-part name))
           (music (ly:parser-lookup parser (string->symbol current-name)))
           (part-timeline (ly:parser-lookup parser
                                            (string->symbol
                                             (string-append current-part lang:timeline-suffix))))
           (instr-timeline (ly:parser-lookup parser
                                             (string->symbol
                                              (string-append current-name lang:timeline-suffix)))))
      (ly:debug-message "Loading music from ~a..." current-name)
      (if (ly:music? music)
          #{ \new Voice = $name
             <<
               $music
               $(if (ly:music? instr-timeline)
                    instr-timeline
                    (if (ly:music? part-timeline)
                        part-timeline))
             >>
          #}
          (begin (ly:debug-message "Variable ~a doesn't exist." current-name)
                 (make-music 'Music 'void #t))))))

(define newStaff
;;   "If NAME matches a defined music expression, then
;; create a Staff for it.  Then find and include any
;; instrumentName or Lyrics expression that could match
;; this staff (using appropriate suffixes)."
  (define-music-function (parser location name) (string?)
    (let* ((name (assoc-name lang:instruments name))
           (current-name (string-append current-part name))
           (music (ly:parser-lookup parser (string->symbol current-name)))
           (instr (make-this-text name lang:instr-suffix))
           (short-instr (make-this-text name lang:short-instr-suffix))
           (lyrics (ly:parser-lookup parser
                                     (string->symbol
                                      (string-append current-name lang:lyrics-suffix)))))
      (if (ly:music? music)
          #{ <<
             \new Staff \with {
               instrumentName = $instr
               shortInstrumentName = $short-instr
             }
             \newVoice $name
               $(if (ly:music? lyrics)
                  #{ \new Lyrics \lyricsto $name $lyrics #})
          >> #}
          (begin (ly:debug-message "Variable ~a doesn't exist." current-name)
              (make-music 'Music 'void #t))))))

(define newLyrics
;;   "From the given NAME, try and find as many Lyrics
;; expressions as possible, using the lyrics suffix and
;; (unless 'only-suffixed-varnames is set) numbers as
;; suffixes: in case there would be multiple verses, etc.
;; Create Lyrics contexts accordingly."
  (define-music-function (parser location name) (string?)
    (let* ((name (assoc-name lang:instruments name))
           (current-name (string-append current-part name)))
      #{
        $(let* ((musiclist (list #{ {} #}))
                (numlist (if (ly:get-option 'only-suffixed-varnames)
                            lang:numbers
                            (cons "" lang:numbers))))
          (map (lambda (x)
                  (let* ((lyr-name (string-append current-name lang:lyrics-suffix
                                                  (string-capitalize x)))
                        (lyrics (ly:parser-lookup parser (string->symbol lyr-name))))
                    (if (ly:music? lyrics)
                        (append! musiclist (list
                                            #{ \new Lyrics \lyricsto $name $lyrics #})))))
                lang:numbers)
          (make-simultaneous-music musiclist))
      #})))

(define newGrandStaff
;;   "From the given NAME, try and find as many instrument
;; parts as possible, by appending numbers as suffixes.  Then
;; create a GrandStaff containing staves for e.g.
;; \fluteOne, \fluteTwo, \fluteThree etc. as needed."
  (define-music-function (parser location name) (string?)
    #{ \new GrandStaff
       $(let* ((name (assoc-name lang:instruments name))
               (musiclist (list #{ {} #}))
               (numlist (if (ly:get-option 'only-suffixed-varnames)
                            lang:numbers
                            (cons "" lang:numbers))))
          (map (lambda (x)
                  (let ((staff-name (string-append current-part name (string-capitalize x))))
                     (append! musiclist (list
                        #{ \newStaff $staff-name #}))))
            lang:numbers)
          (make-simultaneous-music musiclist))
     #} ))

(define newPianoStaff ;; TODO: include lyrics?
;;   "Create a PianoStaff with two staves named after
;; the appropriate upper-hand/lower-hand localized definitions,
;; that are also used in the variables as suffixes (e.g.
;; \PianoRh, \PianoLh).  This also allows for localized
;; Staff-\changing shorthands.  If a suitable Dynamics expression
;; is found, it will also be included accordingly."
  (define-music-function (parser location name) (string?)
    (let* ((name (assoc-name lang:instruments name))
           (upper (string-append name (string-capitalize lang:upper-hand)))
           (lower (string-append name (string-capitalize lang:lower-hand)))
           (dynamics (string-append current-part name lang:dynamics-suffix))
           (instr (make-this-text name lang:instr-suffix))
           (short-instr (make-this-text name lang:short-instr-suffix)))
    #{ \new PianoStaff \with {
         instrumentName = $instr
         shortInstrumentName = $short-instr
       }
     <<
         \new Staff = $lang:upper-hand \newVoice $upper
         \new Dynamics $(include-music dynamics)
         \new Staff = $lang:lower-hand \newVoice $lower
     >> #})))

