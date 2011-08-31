\version "2.14"

\header {
  texidoc = "When switching between time signatures, it is
often advisable to explicitly indicate a beat equivalence
between two written durations."

  tagline = ##f
}

\paper {
  #(set-paper-size "a6")
}

#(use-modules (ice-9 regex))

equiv =
#(define-music-function (parser location str) (string?)

   (define (parse-my-duration duration-string)
  "Parse the `duration-string', e.g. ''4..'' or ''breve.'',
and return a (log dots) list.
  Unlike the original `parse-simple-duration',
this function is whitespace-insensitive."
  (let* ((duration-string (string-trim-both duration-string))
         (match (regexp-exec (make-regexp "(breve|longa|maxima|[0-9]+)(\\.*)")
                             duration-string)))
    (if (and match (string=? duration-string (match:substring match 0)))
        (let ((len (match:substring match 1))
              (dots (match:substring match 2)))
          (list (cond ((string=? len "breve") -1)
                      ((string=? len "longa") -2)
                      ((string=? len "maxima") -3)
                      (else (log2 (string->number len))))
                (if dots (string-length dots) 0)))
        (ly:error (_ "not a valid duration string: ~a") duration-string))))

   (let* ((mark-ev (make-music 'MarkEvent))
          (mark-ch (make-event-chord (list mark-ev)))
          (equiv-lst (string-split str #\= ))
          (before (parse-my-duration (car equiv-lst)))
          (after (parse-my-duration (cadr equiv-lst)))
          (before-mark (make-note-by-number-markup (car before) (cadr before) 1))
          (after-mark (make-note-by-number-markup (car after) (cadr after) 1))
          (equiv-mark
            (make-concat-markup
              (list
                (make-general-align-markup Y DOWN
                  (make-smaller-markup before-mark))
                (make-simple-markup " ")
                (make-simple-markup "=")
                (make-simple-markup " ")
                (make-general-align-markup Y DOWN
                  (make-smaller-markup after-mark))
                )))
          (mark-set (context-spec-music
              (make-property-set 'rehearsalMark equiv-mark)
              'Score)))
         (ly:music-set-property! mark-ev 'origin location)
         (ly:music-set-property! mark-ev 'label equiv-mark)
         mark-ch))

\relative c' {
  \time 6/8
  d8 e f e d e |
  \time 3/4
  \equiv "8 = 8"
  g4 g g
}

