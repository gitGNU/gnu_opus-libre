;------------------------------------------------------------------;
; opus_libre -- deprec.scm                                         ;
;                                                                  ;
; (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        ;
;                                                                  ;
;     opus_libre is a free framework for GNU LilyPond: you may     ;
; redistribute it and/or modify it under the terms of the GNU      ;
; General Public License, version 3 or later: gnu.org/licenses     ;
;                                                                  ;
;------------------------------------------------------------------;

;; deprecated (however cool) functions.
;; This file is not loaded by default.


; http://sourceware.org/ml/guile/2000-06/msg00069.html
(define (grep rx strings)
 (let ((r (make-regexp rx)))
  (filter (lambda (x) (regexp-exec r x)) strings)))

(define (directory->list dir)
  (let ((dport (opendir dir)))
   (let loop ((entry (readdir dport))
        (files '()))
     (if (not (eof-object? entry))
   (loop (readdir dport) (cons entry files))
   (begin
     (closedir dport)
     (reverse! files))))))


;; issue #442 workaround, no longer needed

(define (remove music) ; throw everything into the Big Void...
 (context-spec-music music 'Devnull))

(define (unpitch music)
  ; in addition to the PitchSquash thing, we need to make
  ; accidentals disappear (since these are engraved at a
  ; Staff level, and since we don't want to affect the
  ; real Voice).
  (let* ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (p (ly:music-property music 'pitch)))
    (if (pair? es)
        (ly:music-set-property!
         music 'elements
         (map (lambda (x) (unpitch x)) es)))
    (if (ly:music? e)
        (ly:music-set-property!
         music 'element
         (unpitch e)))
    (if (ly:pitch? p)
          (ly:music-set-property! music 'pitch 0)))
   music)

(define (event-filter event)
 (let ((n (ly:music-property event 'name)))
  (if (or
    (eq? n 'ContextSpeccedMusic) ; to avoid clefs and ottavas
    (eq? n 'ContextChange) ; cross-staff voices are supported
    (eq? n 'ArpeggioEvent)) ; arpeggios need to go too
    (music-map remove event))
  (if (eq? n 'SimultaneousMusic) ; we don't want a new Voice to be created
    (ly:music-set-property! event 'name 'NoteEvent))))

(define makeGhost
(define-music-function (parser location music) (ly:music?)
 (context-spec-music (music-filter event-filter (unpitch music)) 'PseudoVoice)))

(define showAnyWay
(define-music-function (parser location music) (ly:music?)
#{
  \unset Score.keepAliveInterfaces
  $music
  \set Score.keepAliveInterfaces = #'(rhythmic-grob-interface
  lyric-interface percent-repeat-item-interface
  percent-repeat-interface stanza-number-interface)
#}))
