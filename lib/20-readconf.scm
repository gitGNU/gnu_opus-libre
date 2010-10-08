;------------------------------------------------------------------;
; opus_libre -- 30-readconf.scm                                    ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

; Load configuration files and set variables.

(define conf:conf-prefix "conf")
(define conf:ly-prefix "ly")
(define conf:conf-file "etc/ly.conf")

(define (parse-lines-in port prefix)
  "Read a file line by line and look for defs."
  (let ((line (read-line port)))
    (if (string? line)
        (begin
          ;; remove comments
          (set! line (regexp-substitute/global #f
                        (if prefix "#" "%") line 'pre))
          ;; Do we have a = sign, and where?
          (let ((eqchar-index (string-index line #\=)))
            (if eqchar-index
                (let* ((var (string-take line eqchar-index))
                       (val (string-drop line (+ eqchar-index 1)))
                       ;; LilyPond variables are camelCased instead of hyphen-ated
                       (lyvar (string->symbol
                               (regexp-substitute/global #f "-[a-z]" var 'pre
                                  (lambda (m)
                                    (string-drop (string-upcase
                                                  (match:substring m)) 1)) 'post))))
                  (if (not prefix)
                      (if (or (string-any (char-set #\{ #\# #\< #\\) var)
                              (string-any (char-set #\{ #\# #\< #\\) val)
                              (string-every char-set:whitespace val))
                          (set! val #f))
                      ;; Native .ly definitions take precedence over .conf defs
                      (begin
                        (if (defined-string? lyvar)
                            (set! val (string-append
                                       "\"" (ly:parser-lookup parser lyvar) "\"")))
                        (if (not (string=? prefix ""))
                            (set! var (string-append prefix ":" var)))))
                  (let ((str (format #f "(define-public ~a ~a)" var val)))
                    (eval-string str)))))
          ;; then move on to the next line, until EOF.
          (parse-lines-in port prefix))
        (close-port port))))

(define (parse-def-file file prefix)
  "Read FILE and turn all definitions into Scheme values."
  (let ((port (open-input-file file))
        ;; we don't want ly:prefixed variables, use conf: instead.
        (prefix (if (equal? conf:ly-prefix prefix) conf:conf-prefix prefix)))
    (ly:debug-message "Parsing configuration file ~a..." file)
    (parse-lines-in port prefix)))

(define (parse-def-dir dir . prefix)
  "Parse all .conf files found in DIR."
  (let ((def-files (find-files dir ".conf$" #f)))
    (map (lambda (x)
           (parse-def-file x
                           (if (string? prefix) prefix
                               (string-drop-right
                                (regexp-substitute/global #f "/+" x 'post)
                                5))))
         def-files)))

(define eval-conf
;;   "Read all conf files: first in the global conf dir, then in a
;;   dedicated subdir of the score dir, or if none can be found, in
;;   the score dir itself.  This allows for local overrides to be
;;   loaded early in the compilation process."
  (let ((local-score (string-append score-dir "/score.ly"))
        (usr-conf (if (defined-string? 'conf:local-conf-dir)
                      (let ((usr-dir (string-append score-dir "/" conf:local-conf-dir)))
                        (if (exists? usr-dir)
                            (begin
                              (ly:debug-message "Local configuration dir found in ~a" usr-dir)
                              usr-dir)
                            (begin
                              (ly:debug-message "~a does not exist; looking for overrides in parent directory."
                                usr-dir)
                              score-dir)))
                      score-dir)))
    (parse-def-file conf:conf-file conf:conf-prefix)
    (parse-def-dir conf:conf-dir)
    (if (exists? local-score)
        (if (not (ly:get-option 'skip-local-score-file))
            (begin (ly:debug-message "Parsing local definitions in ~a" local-score)
                       (parse-def-file local-score #f))))
    ;; Set the conf:local-conf-dir variable, that will
    ;; be used later for macros, themes, local overrides etc.
    (set! conf:local-conf-dir usr-conf)
    (parse-def-dir conf:local-conf-dir)))
