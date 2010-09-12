

(define-public (include-ly dir)
  "Include all LilyPond code found in DIR, recursively."
  (let ((ly-files (find-files dir ".i?ly$" #t)))
    (map (lambda (x)
           (if (string-ci=? conf:local-ly-score
                            (string-take-right x (string-length conf:local-ly-score)))
               (if (ly:get-option 'debug-messages)
                   (ly:message "Skipping local score file: ~a..." x))
               (ly:parser-include-string parser (format #f "\\include \"~a\"" x))))
         ly-files)))
