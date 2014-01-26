;------------------------------------------------------------------;
; opus_libre -- 60-findskel.scm                                    ;
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


; Look for skeleton file.

(define default-skel (string-append
                      conf:skel-dir "/"
                      conf:default-skel ".lyskel"))

(define (read-file x)
  "Read a skeleton file and return it as a single string."
  (let ((ret-str ""))
    (do ((line (read-line x)))
        ((eof-object? line))
      (begin
        (set! line (regexp-substitute/global #f "%" line 'pre))
        (set! ret-str (string-append ret-str line))
        (set! line (read-line x))))
    ret-str))

(define (find-skel skelname)
  "Try to find a skeleton of the given name, either
in the local conf dir or in the global skeleton repository."
  (let ((local-skel (find-files conf:local-conf-dir
                                (string-append "/"
                                               skelname ".lyskel$")))
        (global-skel (find-files conf:skel-dir
                                 (string-append "/"
                                                skelname ".lyskel$"))))
    (if (not-null? local-skel) (car local-skel)
        (if (not-null? global-skel) (car global-skel)
            #f))))

(define (skel-file arg)
  "The skeleton that will be used to compile the current part.
If no skeleton has been specified or if the requested skeleton
wasn't found, a default, versatile skeleton will be tried."
  (if (string? (find-skel arg)) arg
      (if (defined-string? 'skel)
          (let* ((requested-skel (ly:parser-lookup parser 'skel))
                 (file (find-skel requested-skel)))
             (if (or (not file)
                     (eq? file ""))
                 (begin (ly:warning "Skeleton not found: ~a.
Defaulting to \"universal\" skeleton." requested-skel)
                        default-skel)
                 requested-skel))
          (begin (ly:warning "No skeleton defined;
defaulting to \"universal\" skeleton.") default-skel))))
