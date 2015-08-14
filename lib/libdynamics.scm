;------------------------------------------------------------------;
; opus_libre -- libdynamics.scm                                    ;
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


; Dynamic functions.

;; automatic dynamics
(define (dynamic? x)
  (let ((name (ly:music-property x 'name)))
    (or
     (eq? name 'DynamicEvent)
     (eq? name 'AbsoluteDynamicEvent)
     (eq? name 'CrescendoEvent)
     (eq? name 'DecrescendoEvent)
     (eq? name 'SpanDynamicEvent))))

(define keepDyn
;; Tag all dynamics in MUSIC.
  (define-music-function (music) (ly:music?)
    (music-filter
     (lambda (x)
       (if (dynamic? x)
           (set! (ly:music-property x 'tags)
                 (cons 'staff-dynamics
                       (ly:music-property x 'tags))))
       x) music)))

(define removeDynamics
;; Remove untagged dynamics.
  (define-music-function (music) (ly:music?)
    (if (ly:get-option 'no-auto-piano-dynamics)
        music
        (music-filter
         (lambda (x)
           (let ((tags (ly:music-property x 'tags))
                 (dir (ly:music-property x 'direction)))
             (not (and
                   (dynamic? x)
                   (not (memq 'staff-dynamics tags))
                   (null? dir)))))
         music))))

(define filterDynamics
;; Like \removeWithTag, but will not affect other contexts
;; (i.e. no \change, no \bar or \time etc.)
  (define-music-function (music) (ly:music?)
    (if (ly:get-option 'no-auto-piano-dynamics)
        (make-music 'Music 'void #t)
        (music-filter
          (lambda (x)
            (let ((name (ly:music-property x 'name))
                  (tags (ly:music-property x 'tags))
                  (dir (ly:music-property x 'direction)))
              (not (or
                    (eq? name 'ContextChange)
                    (eq? name 'VoiceSeparator)
                    ;(eq? name 'ContextSpeccedMusic)
                    (memq 'staff-dynamics tags)
                    (ly:dir? dir)))))
          music))))
