#(use-modules
  (ice-9 rdelim)
  (ice-9 popen)
  (ice-9 regex))

#(define (semitones->pitch x)
  (define steps
    (list
     (ly:make-pitch 0 0)
     (ly:make-pitch 0 0 1/2)
     (ly:make-pitch 0 1)
     (ly:make-pitch 0 1 1/2)
     (ly:make-pitch 0 2)
     (ly:make-pitch 0 3)
     (ly:make-pitch 0 3 1/2)
     (ly:make-pitch 0 4)
     (ly:make-pitch 0 4 1/2)
     (ly:make-pitch 0 5)
     (ly:make-pitch 0 6 -1/2)
     (ly:make-pitch 0 6)
     (ly:make-pitch 1 0)))
  (let ((z (1- (length steps))))
    (if (> x z)
        (set! x (remainder x z)))
    (if (eq? x 0)
        (set! x z))
    (list-ref steps x)))

#(define (limit-range-soft pitch)
   (if (> (ly:pitch-steps pitch) 7)
       (ly:pitch-transpose pitch (ly:make-pitch -1 0))
       (if (< (ly:pitch-steps pitch) -10)
           (ly:pitch-transpose pitch (ly:make-pitch 1 0))
           pitch)))

#(define (limit-range-absolute pitch)
   (if (> (ly:pitch-steps pitch) 11)
       (ly:pitch-transpose pitch (ly:make-pitch -1 0))
       (if (< (ly:pitch-steps pitch) -14)
           (ly:pitch-transpose pitch (ly:make-pitch 1 0))
           pitch)))

#(define  (naturalize-pitch p)
  (let* ((o (ly:pitch-octave p))
         (a (* 4 (ly:pitch-alteration p)))
    ; alteration, a, in quarter tone steps, for historical reasons
         (n (ly:pitch-notename p)))
    (cond
     ((and (> a 1) (or (eq? n 6) (eq? n 2)))
      (set! a (- a 2))
      (set! n (+ n 1)))
     ((and (< a -1) (or (eq? n 0) (eq? n 3)))
      (set! a (+ a 2))
      (set! n (- n 1))))
    (cond
     ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
     ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
    (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
    (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
    (ly:make-pitch o n (/ a 4))))

#(define (transpose delta x)
   (naturalize-pitch (ly:pitch-transpose delta x)))

#(define
  (gnuplot-script data)
  (let* ((tmpl (string-append
                   (string-append (or (getenv "TMPDIR") "/tmp") "/")
                   "lilyploteps-XXXXXX"))
         (port-tmp (mkstemp! tmpl))
         (outputter (ly:make-paper-outputter port-tmp 'ps))
         (port (ly:outputter-port outputter))
         (filename (port-filename port)))
   (display
    (format
"#!/bin/bash
gnuplot -e \"
clear;
reset;
intervals=25;
max=12.;
min=-12.;
padding=1;
width=(max-min)/intervals;
hist(x,width)=width*(x/width)+width/2.0;
set terminal postscript eps enhanced color;
set output '~a.eps';
set xrange [(min-padding):(max+padding)];
set yrange [0:];
set xtics min,(max-min)/6,max;
set boxwidth width*0.9;
set style fill solid 0.5;
set tics out nomirror;
set ylabel 'Occurrences';
set xlabel 'Demi-tons';
plot '~a' using (hist(\\$1,width)):(1.0) smooth freq with boxes lc rgb'red' notitle\""
    filename data)
   port)
   (chmod (port-filename port) #o755)
   (close-port port)
   filename))

#(define-public myplot #f)

#(define-markup-command (epsplot layout props axis size sym)
   (number? number? symbol?)
   (let ((str (primitive-eval sym)))
     (if (string? str)
         (eps-file->stencil axis size str)
         point-stencil)))


piify =
#(define-music-function (numbers offset music) ((list? '()) (boolean? '()) ly:music?)
   (let ((i 0)
         (previous-input-pitch '())
         (previous-output-pitch '())
         (delta-list (list "")))
     (music-map
      (lambda (x)
        (let ((current-input-pitch (ly:music-property x 'pitch))
              (current-output-pitch '()))
          (if (not (null? current-input-pitch))
              (if (null? previous-input-pitch)
                  (set! current-output-pitch current-input-pitch)
                  (let ((input-delta
                         (remainder
                          (ly:pitch-semitones
                           (ly:pitch-diff current-input-pitch previous-input-pitch))
                          12))
                        (output-delta (if (null? numbers)
                                          #f
                                          (semitones->pitch
                                           (+ (if (null? offset) 0 1)
                                             (char->number (safe-list-ref numbers i)))))))
                    (set! delta-list (cons input-delta delta-list))
                    (if output-delta
                        (if (> input-delta 0)
                            (begin
                             (set! current-output-pitch
                             (transpose
                              previous-output-pitch
                              output-delta))
                           (set! i (1+ i)))
                          (if (< input-delta 0)
                              (begin
                               (set! current-output-pitch
                                 (transpose
                                  previous-output-pitch
                                  (ly:pitch-negate output-delta)))
                               (set! i (1+ i)))
                              (set! current-output-pitch (limit-range-soft previous-output-pitch))))
                        (set! current-output-pitch current-input-pitch))
                    (ly:music-set-property! x 'pitch (limit-range-absolute current-output-pitch)))))
              (set! previous-output-pitch current-output-pitch)
              (set! previous-input-pitch current-input-pitch))
          x)
      music)
     (let* ((tmpl (string-append
                   (string-append (or (getenv "TMPDIR") "/tmp") "/")
                   "lilyplot-XXXXXX"))
            (port-tmp (mkstemp! tmpl))
            (outputter (ly:make-paper-outputter port-tmp 'ps))
            (port (ly:outputter-port outputter))
            (tmp-filename (port-filename port))
            (plot-script (gnuplot-script tmp-filename)))
       (map (lambda (x)
              (display (format "~a\n" x) port))
         (reverse delta-list))
       (ly:outputter-close outputter)
       (set! myplot
             (let* ((plot-file (string-append plot-script ".eps"))
                    (plot-port (open-input-pipe plot-script)))
               (close-port plot-port)
               plot-file)))
     music))
