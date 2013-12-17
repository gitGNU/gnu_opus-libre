;------------------------------------------------------------------;
; opus_libre -- 50-loadthemes.scm                                  ;
;                                                                  ;
; (c) 2008-2011 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License as published by the Free Software         ;
; Foundation, either version 3 of the License, or (at your option) ;
; any later version.                                               ;
;     This program is distributed WITHOUT ANY WARRANTY; without    ;
; even the implied warranty of MERCHANTABILITY or FITNESS FOR A    ;
; PARTICULAR PURPOSE.  You should have received a copy of the GNU  ;
; General Public License along with this program (typically in the ;
; share/doc/ directory).  If not, see http://www.gnu.org/licenses/ ;
;                                                                  ;
;------------------------------------------------------------------;


(load "liblayout.scm")

(define-public (include-ly dir . hidden?)
  "Include all LilyPond code found in DIR, recursively.
 If HIDDEN is set, also load hidden or temporary files."
  (let* ((regx (if (false-or-null? hidden?)
                   "/[^\\._][^/]*\\.i?ly$"
                   ".i?ly$"))
         (ly-files (find-files dir regx #t)))
    (map (lambda (x)
           (if (string-ci=? conf:local-ly-score
                            (string-take-right x (string-length conf:local-ly-score)))
               (ly:debug-message "Skipping local score file: ~a..." x)
               (ly:parser-include-string parser (format #f "\\include \"~a\"" x))))
         (reverse ly-files))))

(define eval-layout
  (include-ly conf:layout-dir))

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
