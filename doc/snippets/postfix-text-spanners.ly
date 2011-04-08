\version "2.14"

\header {
  texidoc "The traditional way of printing text spanners in
  LilyPond, is to first specify the text to print, and then
  start the actual spanner.  Here is a way to do it all at
  once (beware: in order for the spanner to be attached
  to the previous note or chord, the command has to be
  preceded with a dash)."
}

#(define (make-text-span str)
"Make a TextSpanner that begins with the given STR."
  (let* ((m (make-music 'TextSpanEvent
             'span-direction -1))
         (details (assoc-get 'bound-details
                   (assoc-get 'TextSpanner
                    all-grob-descriptions)))
         (left-details (assoc-get 'left
                        details)))
   (ly:music-set-property! m 'tweaks
    (acons 'bound-details
     (acons 'left
      (acons 'text str
       left-details)
      details)
     (ly:music-property m 'tweaks)))
   m))

%% Wrapper for the make-text-span function
#(define startText
  (define-music-function (location parser txt) (markup?)
     (make-text-span txt)))

%% for consistency only.
#(define stopText
  stopTextSpan)

\relative c' {
  c1 d e-\startText "(hum along)" f g a-\stopText b c
}
