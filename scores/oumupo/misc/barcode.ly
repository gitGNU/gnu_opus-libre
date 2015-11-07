%{
/usr/local/bin/barcam:

#!/bin/bash

tmp="/tmp/zbartmp"

/usr/bin/zbarcam > $tmp &
pid=$!
disown
while [[ ! -s $tmp ]]
  do
    sleep 1
    trap "rm -f $tmp; kill -s 9 $pid; exit" SIGHUP SIGINT SIGTERM
done

kill -s 9 $pid
decoded=$(grep -m 1 -w -Po "(?<=EAN-13:).*" $tmp)
lines=$(barcode -b $decoded | grep -Po "(?<=% 9).*\N")

echo $decoded
echo $lines

rm -f $tmp

%}

#(use-modules
  (ice-9 rdelim)
  (ice-9 popen)
  (ice-9 regex))

majScale = $'(0 1 2 3 4 5 6 7 8 9)
minScale = $'(0 1 (2 . -1/2) 3 4 (5 . 1/2) 6 7 8 (9 . -1/2))
bluScale = $'(0 (2 . -1/2) 3 (3 . 1/2) 4 (6 . -1/2) 7 (9 . -1/2) 10 (10 . 1/2))
dimScale = $'(0 1 (2 . -1/2) 3 (3 . 1/2) (4 . 1/2) 5 6 7 (8 . -1/2))

#(define (make-numlist str)
   (map (lambda (x)
          (string->number (string x)))
     (string->list str)))

#(define double-list
   (let* ((port (open-input-pipe "/usr/local/bin/barcam"))
          (biglist (string-split
                    (read-delimited "EOF" port)
                    (integer->char 10))))
     (close-pipe port)
     biglist))

#(define numlist (make-numlist (car double-list)))
#(define rtmlist (make-numlist (cadr double-list)))
#(define neglist (cons 9 rtmlist))

#(define (make-barcode str)
   (let* ((port (open-input-pipe
                 (format #f "barcode -Eb \"~a\"" str)))
          (result (read-delimited "" port)))
     (close-pipe port)
     result))

barCodeMusic =
#(define-music-function (scale numlist rtmlist is-black? pitch-ref)
   (list? list? list? boolean? integer?)
   (let ((scale-list (if is-black? (reverse scale) scale)))
     (make-sequential-music
      (map (lambda (x)
            (let* ((rhythm (ly:make-duration (+ (- x) 5)))
                   (pitchnum (list-ref numlist pitch-ref))
                   (pitch-pair (let ((t (list-ref scale-list pitchnum)))
                                 (if (integer? t) (cons t 0) t)))
                   (pitch (car pitch-pair))
                   (alter (cdr pitch-pair)))
              (set! is-black? (not is-black?))
              (if is-black?
                (begin
                 (set! pitch-ref (1+ pitch-ref))
                 (if (> pitch-ref (1- (length numlist)))
                     (set! pitch-ref 0))
                 (make-music 'NoteEvent
                             'duration rhythm
                             'pitch (ly:make-pitch 0 pitch alter)))
                (make-music 'RestEvent
                            'duration rhythm))))
          rtmlist))))

#(define* (string-replace-substring s substr replacement
                                   #:optional
                                   (start 0)
                                   (end (string-length s)))
  (let ((substr-length (string-length substr)))
    (if (zero? substr-length)
        (error "string-replace-substring: empty substr")
        (let loop ((start start)
                   (pieces (list (substring s 0 start))))
          (let ((idx (string-contains s substr start end)))
            (if idx
                (loop (+ idx substr-length)
                      (cons* replacement
                             (substring s start idx)
                             pieces))
                (string-concatenate-reverse (cons (substring s start)
                                                  pieces))))))))

#(define bbox-regexp
   (make-regexp "%%BoundingBox:[ \t]+([0-9-]+)[ \t]+([0-9-]+)[ \t]+([0-9-]+)[ \t]+([0-9-]+)"))

#(define (get-postscript-bbox string)
   "Extract the bbox from STRING, or return #f if not present."
   (let*
       ((match (regexp-exec bbox-regexp string)))

     (if match
         (map (lambda (x)
                (string->number (match:substring match x)))
              (cdr (iota 5)))

        #f)))

#(define-public (eps-lines->stencil axis size str)
  (let*
      ((contents (string-replace-substring str "\"" "\\\""))
       (bbox (get-postscript-bbox (car (string-split contents #\nul))))
       (bbox-size (if (= axis X)
                      (- (list-ref bbox 2) (list-ref bbox 0))
                      (- (list-ref bbox 3) (list-ref bbox 1))
                      ))
       (factor (if (< 0 bbox-size)
                   (exact->inexact (/ size bbox-size))
                   0))
       (scaled-bbox
        (map (lambda (x) (* factor x)) bbox))
       ;; We need to shift the whole eps to (0,0), otherwise it will appear
       ;; displaced in lilypond (displacement will depend on the scaling!)
       (translate-string (ly:format "~a ~a translate" (- (list-ref bbox 0)) (- (list-ref bbox 1))))
       (clip-rect-string (ly:format
                          "~a ~a ~a ~a rectclip"
                          (list-ref bbox 0)
                          (list-ref bbox 1)
                          (- (list-ref bbox 2) (list-ref bbox 0))
                          (- (list-ref bbox 3) (list-ref bbox 1)))))


    (if bbox
        (ly:make-stencil
         (list
          'embedded-ps
          (string-append
           (ly:format
            "
gsave
currentpoint translate
BeginEPSF
~a dup scale
~a
~a
%%BeginDocument: embedded
"         factor translate-string  clip-rect-string
)
           contents
           "%%EndDocument
EndEPSF
grestore
"))
         ;; Stencil starts at (0,0), since we have shifted the eps, and its
         ;; size is exactly the size of the scaled bounding box
         (cons 0 (- (list-ref scaled-bbox 2) (list-ref scaled-bbox 0)))
         (cons 0 (- (list-ref scaled-bbox 3) (list-ref scaled-bbox 1))))

        (ly:make-stencil "" '(0 . 0) '(0 . 0)))
    ))

#(define-markup-command (epslines layout props axis size str)
   (number? number? string?)
       (eps-lines->stencil axis size str))

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_heads_engraver"
    \consists "Completion_rest_engraver"
    completionUnit = #(ly:make-moment 1 4)
  }
  \context {
    \Score
    autoAccidentals = #`(Staff ,(make-accidental-rule 'same-octave 0)
              ,(make-accidental-rule 'any-octave 0)
              ,(make-accidental-rule 'same-octave 1)
              ,neo-modern-accidental-rule)
    autoCautionaries = #`(Staff ,(make-accidental-rule 'same-octave 1)
              ,(make-accidental-rule 'any-octave 1))
    extraNatural = ##f
  }
}

\header {
  title="[produit]"
  subtitle=\markup { \epslines #Y #40 $(make-barcode (car double-list)) }
}

<<
  \new Staff {
  \clef bass
  \time 2/4
  \transpose c d, \barCodeMusic #bluScale #numlist #rtmlist ##f #0
  %\transpose c d, \barCodeMusic #bluScale #numlist #neglist ##f #0
  %R1*16
  %r8
  \bar "|."
  }
  % \new Staff \transpose c d' \barCodeMusic #bluScale #(reverse numlist) #neglist ##f #0
>>