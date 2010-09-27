;-- Ouverture -- macros.scm ---------------------------------------;
; (c) 2002-2010 Valentin Villenave <valentin@villenave.net>

;TODO: These should be merged into master
; (when ready, which obviously isn't so right now).

(define bracketDown
  (define-music-function (parser location text music) (markup? ly:music?)
    (let ((current-staff-position 0))
      ; this shouldn't be needed!!!
      (set! current-staff-position 1)
      (make-music 'ApplyOutputEvent
                  'origin location
                  'context-type 'Voice
                  'procedure
                  (lambda (grob grob-origin context)
                    (let ((staff-pos (ly:grob-property grob 'staff-position)))
                      (if (number? staff-pos)
                          (set! current-staff-position staff-pos)))))
      #{ \once \set fingeringOrientations = #'(left)
         $(add-bracket current-staff-position music text)
         $music #})))

(define bracketUp
  (define-music-function (parser location text music) (markup? ly:music?)
    (let ((current-staff-position 0))
      ; this shouldn't be needed!!!
      (set! current-staff-position 1)
      (make-music 'ApplyOutputEvent
                  'origin location
                  'context-type 'Voice
                  'procedure
                  (lambda (grob grob-origin context)
                    (let ((staff-pos (ly:grob-property grob 'staff-position)))
                      (if (number? staff-pos)
                          (set! current-staff-position staff-pos)))))
      #{ \once \set fingeringOrientations = #'(left)
         $(add-bracket-up current-staff-position music text)
         $music #})))

(define (add-bracket pos music text)
  (if
   (equal? (ly:music-property music 'name) 'EventChord)
   (let ((note (car (ly:music-property music 'elements))))
     (set! (ly:music-property note 'articulations)
           (append (ly:music-property note 'articulations)
                   (list
                    (let ((obj (make-music 'FingeringEvent))
                          (bracket-length (- (* pos -0.5) 7))
                          (v-space (/ (+ 7 pos) 7.0)))
                      (set! (ly:music-property obj 'tweaks)
                            (acons 'self-alignment-Y 1
                                   (acons 'text
                                          (markup #:normal-text #:fontsize 3
                                                  #:center-column 
                                                  (#:postscript (format #f "
                                                     .5 0 -.5 0 lineto
                                                     -.5 0 -.5 ~a lineto
                                                     stroke" bracket-length)
                                                   #:vspace v-space
                                                   #:with-dimensions '(0 . 0) '(0 . 0)
                                                   #:center-align text
                                                   ))
                                          (ly:music-property obj 'tweaks))))
                      obj)))))
   music))

; ugh. ugly, ugly, ugly.
(define (add-bracket-up pos music text)
  (if
   (equal? (ly:music-property music 'name) 'EventChord)
   (let ((note (car (ly:music-property music 'elements))))
     (set! (ly:music-property note 'articulations)
           (append (ly:music-property note 'articulations)
                   (list
                    (let ((obj (make-music 'FingeringEvent))
                          (bracket-length (- (* pos -0.5) 7))
                          (v-space (/ (+ 7 pos) 7.0)))
                      (set! (ly:music-property obj 'tweaks)
                            (acons 'self-alignment-Y -1
                                   (acons 'text
                                          (markup #:normal-text #:fontsize 3
                                                  #:center-column 
                                                  (
                                                   #:with-dimensions '(0 . 0) '(0 . 0)
                                                   #:center-align text
                                                   #:vspace v-space
                                                   #:postscript (format #f "
                                                     .5 0 -.5 0 lineto
                                                     -.5 0 -.5 ~a lineto
                                                     stroke" (* -1 bracket-length))
                                                   ))
                                          (ly:music-property obj 'tweaks))))
                      obj)))))
   music))
