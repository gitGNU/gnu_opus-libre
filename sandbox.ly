\version "2.13.33"
#(define tieEvent? #f)

#(define (add-script music x)
  (let ((eventname (ly:music-property  music 'name))
        (elts (ly:music-property music 'elements))
        (elt  (ly:music-property music 'element))
        (rest '()))
    (if (list? x)
        (begin
          (set! rest (cdr x))
          (set! x (car x))))
    (cond
     ((pair? elts)
      (begin
        (if (and
             (eq? eventname 'EventChord)
             (eq? (ly:music-property (car elts) 'name) 'NoteEvent)
             (not tieEvent?))
            (set! (ly:music-property music 'elements)
                  (append elts (list
                                (make-music
                                 'ArticulationEvent
                                 'articulation-type x))))
            (set! tieEvent? #f))
        (map (lambda (m) (add-script m x)) elts)))
     ((ly:music? elt) (add-script elt x))
     ((eq? eventname 'TieEvent) (set! tieEvent? #t)))
    (if (not (null? rest)) (add-script music rest))
    music))

#(defmacro make-simple-function (token expr)
  (let* ((sym (if (is-defined? token)
                  (string->symbol (primitive-eval token))
                  token)))
    `(define-public ,sym
      (ly:make-music-function (list ly:music?)
        (lambda (parser location x)
    ,expr)))))

#(defmacro make-script (str)
  (let* ((sym (car (primitive-eval str)))
         (script (cdr (primitive-eval str))))
        `(define-public ,sym
          (ly:make-music-function (list ly:music?)
            (lambda (parser location mus)
                    (add-script mus ,script))))))

#(define (make-scripts lst)
   (let ((rest '()))
    (if (list? lst)
        (begin
          (set! rest (cdr lst))
          (set! lst (car lst))))
    (let ((sym (car lst))
          (script (cdr lst)))
      (eval-string (format #f
          "(define-public ~a
          (ly:make-music-function (list ly:music?)
          (lambda (parser location mus)
          (add-script mus ~a))))" sym script)))
    (if (not (null? rest)) (make-scripts rest))))

#(define (make-scripts lst)
   (let ((rest '()))
    (if (list? lst) (set! rest (cdr lst)))
    (display (car lst))
    (if (not (null? rest)) (make-scripts rest))))

#(make-script '(stdet . '("staccato" "tenuto")))

{ b r \stdet { c d~ d  e } }
