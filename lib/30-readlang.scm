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


(let* ((input-language
        (if (is-defined? 'input)
            (ly:parser-lookup parser 'input)
            default-language))
       (input-language-file
        (string-append conf:locale-dir "/" input-language ".conf")))
  (if (exists? input-language-file)
      (begin
        (if (ly:get-option 'debug-messages)
            (ly:message "Loading language file ~a..." input-language-file))
        (parse-def-file input-language-file))
      (ly:warning "Language file not found: ~a."
                  input-language-file)))

;; TODO add local score-level language files