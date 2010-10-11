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

(load "liblayout.scm")

(define-public (include-ly dir)
  "Include all LilyPond code found in DIR, recursively."
  (let ((ly-files (find-files dir ".i?ly$" #t)))
    (map (lambda (x)
           (if (string-ci=? conf:local-ly-score
                            (string-take-right x (string-length conf:local-ly-score)))
               (ly:debug-message "Skipping local score file: ~a..." x)
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
          (lambda (dir)
            (if (exists? dir)
                (begin
                  (ly:debug-message "Loading theme in ~a..." dir)
                  (load-macros-in dir)
                  (include-ly dir))
                (ly:debug-message "Theme directory not found: ~a."
                                f)))))
    (include-theme-dir default-theme)
    (if user-theme
        (if (not (equal? user-theme conf:default-theme))
            (include-theme-dir
                     (string-append conf:themes-dir "/" user-theme))))))

