;------------------------------------------------------------------;
; opus_libre -- 30-readlang.scm                                    ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Language selection.

(define eval-lang
  (let* ((input-lang
          (if (is-defined? 'input)
              (ly:parser-lookup parser 'input)
              default-language))
        (input-lang-file
          (string-append conf:locale-dir "/" input-lang ".conf"))
        (local-lang-file
          (string-append conf:local-conf-dir "/" input-lang ".conf"))
        (load-lang-file
          (lambda (f)
                  (if (exists? f)
                      (begin
                        (if (ly:get-option 'debug-messages)
                            (ly:message "Loading language file ~a..." f))
                        (parse-def-file f ""))
                      (if (ly:get-option 'debug-messages)
                          (ly:warning "Language file not found: ~a."
                                  f))))))
     (load-lang-file input-lang-file)
     (load-lang-file local-lang-file)))

;; TODO add local score-level language files
