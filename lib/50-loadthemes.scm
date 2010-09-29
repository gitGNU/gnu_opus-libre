;------------------------------------------------------------------;
; opus_libre -- 50-loadthemes.scm                                  ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

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

(define eval-theme
;;    "Load the default "theme" (that provides basic layout)
;;  then overload user-specified themes (if any) on top of
;;  it."
  (let* ((default-theme (string-append conf:themes-dir "/" conf:default-theme))
         (user-theme (if (defined-string? 'theme)
                         (ly:parser-lookup parser 'theme)
                         #f))
         (include-theme-dir
          (lambda (f)
            (if (exists? f)
                (begin
                  (if (ly:get-option 'debug-messages)
                      (ly:message "Loading theme files in ~a..." f))
                  (include-ly f))
                (if (ly:get-option 'debug-messages)
                    (ly:warning "Theme directory not found: ~a."
                                f))))))
    (include-theme-dir default-theme)
    (if user-theme (include-theme-dir
                     (string-append conf:themes-dir "/" user-theme)))))
