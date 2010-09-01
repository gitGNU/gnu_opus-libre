;------------------------------------------------------------------;
; opus_libre -- lang.scm                                           ;
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
        (string-append locale-dir "/" input-language ".ly")))
 (if (string? (ly:find-file input-language-file))
  (set! include-ly-string
   (string-append "\\include \"" input-language-file "\""
    include-ly-string))
  (ly:warning "Language file not found: ~a."
   input-language-file)))


