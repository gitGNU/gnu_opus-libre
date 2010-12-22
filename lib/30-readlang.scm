;------------------------------------------------------------------;
; opus_libre -- 30-readlang.scm                                    ;
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


; Language selection.

(define eval-lang
;;   "Look for a user-specified language, and load
;; language files accordingly, first globally, then
;; locally.  Note that the default language file,
;; typically in etc/ly.conf.d/lang.conf, is always
;; loaded (which allows for lighter language files
;; that only define what needs to be overriden)."
  (let* ((guess-lang
           (let* ((port (open-input-pipe "locale | grep LANG"))
                  (str (read-line port)))
             (set! str (if (string? str)
                           (string-take
                             (car (reverse (string-split str #\=)))
                             2)
                           #f))
            (close-pipe port)
            str))
         (input-lang
          (if (defined-string? 'input)
              (ly:parser-lookup parser 'input)
              (begin
                (ly:debug-message "Input language not defined.")
                    (if guess-lang
                        (begin
                           (ly:debug-message "Using system's default: ~a"
                                  guess-lang)
                           guess-lang)
                        (begin
                           (ly:debug-message "Using default language: ~a"
                                  conf:default-language)
                           conf:default-language)))))
         (input-lang-file
          (string-append conf:locale-dir "/" input-lang ".conf"))
         (local-lang-file
          (string-append conf:local-conf-dir "/" input-lang ".conf"))
         (load-lang-file
          (lambda (f)
            (if (exists? f)
                (begin
                  (ly:debug-message "Loading language file ~a..." f)
                  (parse-def-file f conf:lang-prefix))
                (ly:debug-message "Language file not found: ~a."
                                f)))))
    (load-lang-file input-lang-file)
    (load-lang-file local-lang-file)))
