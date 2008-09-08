%------------------------------------------------------------------%
% Opéra Libre -- text_layout.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%{

#(define-markup-command (perso layout props name) (string?)
   (interpret-markup layout props
   (markup #:column ( #:hspace 0 #:fill-line ( #:smallCaps name ) #:hspace 0 ))))

#(define (wordwrap-stencils stencils
			   justify base-space line-width text-dir)
    (define space (if justify
		    (* 0.7 base-space)
		    base-space))
(define (take-list width space stencils
		     accumulator accumulated-width)
    (if (null? stencils)
	(cons accumulator stencils)
	(let*
	    ((first (car stencils))
	     (first-wid (cdr (ly:stencil-extent (car stencils) X)))
	     (newwid (+ space first-wid accumulated-width))
	     )

	  (if
	   (or (null? accumulator)
	       (< newwid width))

	   (take-list width space
		      (cdr stencils)
		      (cons first accumulator)
		      newwid)
	     (cons accumulator stencils))
	   )))

    (let loop
	((lines '())
	 (todo stencils))

      (let*
	  ((line-break (take-list line-width space todo
				 '() 0.0))
	   (line-stencils (car line-break))
	   (space-left (- line-width (apply + (map (lambda (x) (cdr (ly:stencil-extent x X)))
					      line-stencils))))

	   (line-word-space (cond
			     ((not justify) space)
			     ((null? (cdr line-break))
			      base-space)
			     ((null? line-stencils) 0.0)
			     ((null? (cdr line-stencils)) 0.0)
			     (else (/ space-left (1- (length line-stencils))))))

	   (line (stack-stencil-line
		  line-word-space
		  (if (= text-dir RIGHT)
		      (reverse line-stencils)
		      line-stencils))))

	(if (pair? (cdr line-break))
	    (loop (cons line lines)
		  (cdr line-break))

	    (begin
	      (if (= text-dir LEFT)
		  (set! line
			(ly:stencil-translate-axis line
						   (- line-width (interval-end (ly:stencil-extent line X)))
						   X)))
	      (reverse (cons line lines))
	      
	    )))

      ))


#(define (wordwrap-markups layout props args justify)
  (let*
      ((prop-line-width (chain-assoc-get 'line-width props #f))
       (line-width (if prop-line-width prop-line-width
		       (ly:output-def-lookup layout 'line-width)))
       (word-space (chain-assoc-get 'word-space props))
       (text-dir (chain-assoc-get 'text-direction props RIGHT)))
    (wordwrap-stencils (remove ly:stencil-empty?
                               (interpret-markup-list layout props args))
                       justify word-space line-width
                       text-dir)))


#(define-markup-command (roi layout props args) (markup-list?)
  (space-lines (chain-assoc-get 'baseline-skip props)
	       (markup (wordwrap-markups layout props (cons 
               (markup #:perso "Le Roi") args) #t))))

#(define-markup-list-command (roit layout props args) (markup-list?)
  (space-lines (chain-assoc-get 'baseline-skip props)
	       (wordwrap-markups layout props (cons 
               (markup #:perso "Le Roi") args) #t)))

#(define-markup-list-command (chef layout props args) (markup-list?)
  (space-lines (chain-assoc-get 'baseline-skip props)
	       (wordwrap-markups layout props (cons 
               (markup #:perso "Le Chef de la Garde") args) #t)))
               
%}

#(define-markup-list-command (roi layout props args) (markup-list?)
   (let ((didascalie (chain-assoc-get 'did props)))
     (interpret-markup-list layout props
       (make-justified-lines-markup-list (cons 
          (markup #:column ( #:hspace 0 #:fill-line 
            ( #:smallCaps "Le Roi" ) 
                               #:hspace 0 )) args)))))
         
#(define-markup-list-command (chef layout props args) (markup-list?)
   (let ((didascalie (chain-assoc-get 'did props)))
     (interpret-markup-list layout props
       (make-justified-lines-markup-list (cons 
          (markup #:column ( #:hspace 0 #:fill-line 
            ( #:smallCaps "Le Chef de la Garde" ) 
                               #:hspace 0 )) args)))))