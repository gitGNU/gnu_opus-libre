\version "2.14"

\header {
  texidoc = "Title pages may require to vertically center, stretch or spread markups
throughout the full vertical extent of the paper. Here is a function that achieves
just that, much like the commonly-used `fill-line' markup command."

  tagline = ##f
}

\paper {
  #(set-paper-size "a6")
}

#(define-markup-command (fill-page layout props args)
  (markup-list?)
  ;; This code was shamelessly copied from the fill-line function.
  #:properties ((text-direction UP)
                (line-space 0.6)
                (page-height #f))

  (define (get-fill-space line-count page-height line-space text-heights)
    (cond
    ((null? text-heights) '())

    ;; special case first padding
    ((= (length text-heights) line-count)
      (cons
      (- (- (/ page-height (1- line-count)) (car text-heights))
    (/ (car (cdr text-heights)) 2))
      (get-fill-space line-count page-height line-space (cdr text-heights))))
    ;; special case last padding
    ((= (length text-heights) 2)
      (list (- (/ page-height (1- line-count))
             (+ (/ (car text-heights) 2) (car (cdr text-heights)))) 0))
   (else
    (let ((default-padding
            (- (/ page-height (1- line-count))
               (/ (+ (car text-heights) (car (cdr text-heights))) 2))))
      (cons
       (if (> line-space default-padding)
           line-space
           default-padding)
       (get-fill-space line-count page-height line-space (cdr text-heights)))))))

  (let* ((orig-stencils (interpret-markup-list layout props args))
         (stencils
          (map (lambda (stc)
                 (if (ly:stencil-empty? stc)
                     point-stencil
                     stc)) orig-stencils))
         (text-heights
          (map (lambda (stc)
                 (if (ly:stencil-empty? stc)
                     0.0
                     (interval-length (ly:stencil-extent stc Y))))
               stencils))
         (text-height (apply + text-heights))
         (line-count (length stencils))
         (page-height (- (ly:output-def-lookup layout 'paper-height)
                         (+ (ly:output-def-lookup layout 'top-margin)
                            (ly:output-def-lookup layout 'bottom-margin))))
         (fill-space
          (cond
           ((= line-count 1)
            (list
             (/ (- page-height text-height) 2)
             (/ (- page-height text-height) 2)))
           ((= line-count 2)
            (list
             (- page-height text-height)))
           (else
            (get-fill-space line-count page-height line-space text-heights))))

         (page-contents (if (= line-count 1)
                            (list
                             point-stencil
                             (car stencils)
                             point-stencil)
                            stencils)))

    (if (null? (remove ly:stencil-empty? orig-stencils))
        empty-stencil
        (begin
          (if (= text-direction UP)
              (set! page-contents (reverse page-contents)))
          (set! page-contents
                (stack-stencils-padding-list
                 Y UP fill-space page-contents))
          (if (> line-count 1)
              (set! page-contents
                    (ly:stencil-translate-axis
                     page-contents
                     (- (car (ly:stencil-extent (car stencils) Y)))
                     Y)))
          page-contents))))

\markup \fill-page {
  \line { This markup }
  \line { is spread }
  \line { equally }
  \line { on the page. }
}