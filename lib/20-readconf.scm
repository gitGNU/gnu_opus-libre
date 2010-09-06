;------------------------------------------------------------------;
; opus_libre -- 20-readconf.scm                                    ;
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
(define conf:local-conf-dir #f)

(define (parse-lines-in port)
  "Read a file line by line and look for defs."
  (let ((line (read-line port)))
    (if (string? line)
        (begin
          ;; remove comments
          (set! line (regexp-substitute/global #f "#" line 'pre))
          ;; Do we have a = sign, and where?
          (let ((eq (string-index line #\=)))
            (if (not (boolean? eq))
                (let* ((var (string-take line (- eq 1)))
                       (val (string-drop line (+ eq 1)))
          ;; LilyPond variables are camelCased instead of hyphen-ated
                       (lyvar (string->symbol
                                (regexp-substitute/global #f "-[a-z]" var 'pre
                                  (lambda (m)
                                    (string-drop (string-upcase
                                      (match:substring m)) 1)) 'post))))
                   (set! var (string-append
                              (if (string? conf:conf-prefix)
                                  (string-append conf:conf-prefix ":")
                                  "") var))
          ;; Native .ly definitions take precedence over .conf defs
                   (if (is-defined? lyvar)
                     (set! val (string-append "\""
                        (ly:parser-lookup parser lyvar) "\"")))
                   (eval-string
                    (format #f "(define-public ~a ~a)" var val)))))
          ;; then move on to the next line, until EOF.
          (parse-lines-in port))
        (close-port port))))

(define (parse-def-file file)
 "Read FILE and turn all definitions into Scheme values."
  (let ((port (open-input-file file)))
    (if (ly:get-option 'debug-messages)
        (ly:message "Parsing configuration file ~a..." file))
    (parse-lines-in port)))

(define (parse-def-dir dir)
  "Parse all .conf files found in DIR."
  (let ((def-files (find-files dir ".conf$" #f)))
    (map (lambda (x)
                 (parse-def-file x))
         def-files)))

(define conf:conf-file "etc/ly.conf")
(define conf:conf-dir "etc/ly.conf.d")

(parse-def-file conf:conf-file)
(parse-def-dir conf:conf-dir)

(if (is-defined? 'conf:local-conf-dir)
  (begin
    (set! conf:local-conf-dir
      (let ((usr-dir (string-append score-dir "/" conf:local-conf-dir)))
        (if (exists? usr-dir)
            (begin
              (if (ly:get-option 'debug-messages)
                  (ly:message "Local configuration dir found in ~a" usr-dir))
              usr-dir)
            (begin
              (if (ly:get-option 'debug-messages)
                  (ly:message "No local overrides found: ~a does not exist." usr-dir))
            #f))))
     (parse-def-dir conf:conf-dir)))
