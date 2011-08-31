;------------------------------------------------------------------;
; opus_libre -- scripts.scm                                        ;
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


; Articulations, etc.

;; Articulation shortcuts -----------------------------------------;
(make-script '(st . "staccato"))
(make-script '(acc . "accent"))
(make-script '(det . "tenuto")) ; as in "détaché"
(make-script '(stdet . "portato"))
(make-script '(accdet . '("tenuto" "accent")))
(make-script '(accst . '("accent" "staccato")))
(make-script '(dwnb . "downbow"))

;; Customized articulations ---------------------------------------;
 ;;TODO: add to scripts alist.
(define colpugno
 (let* ((m (make-music 'ArticulationEvent
                       'articulation-type "staccatissimo"
                       'direction 1)))
   (ly:music-set-property! m 'tweaks
     (acons 'text (markup #:scale (cons 2 1.6)
                  #:musicglyph "scripts.ustaccatissimo")
         (acons 'stencil ly:text-interface::print
           (ly:music-property m 'tweaks))))
   m))

(define CaV
 (let ((m (make-music 'ArticulationEvent
        'articulation-type "flageolet")))
       (set! (ly:music-property m 'tweaks)
             (acons 'font-size -3
                    (ly:music-property m 'tweaks)))
   m))

(define thumbpizz
 (let* ((m (make-music 'ArticulationEvent
                       'articulation-type "stopped"
                       'direction 1)))
   (ly:music-set-property! m 'tweaks
     (acons 'font-size 3
       (acons 'text (markup
                   #:hspace 0
                   #:rotate 45
                   #:musicglyph "scripts.stopped")
         (acons 'stencil ly:text-interface::print
           (ly:music-property m 'tweaks)))))
   m))

(define leftpizz
 (let* ((m (make-music 'ArticulationEvent
                       'articulation-type "stopped"
                       'direction 1)))
   (ly:music-set-property! m 'tweaks
     (acons 'font-size 3
           (ly:music-property m 'tweaks)))
   m))

(define accentedNote
 (define-music-function (parser location x) (ly:music?)
   #{ \once \set fingeringOrientations = #'(left)
      \once \override Fingering #'X-extent = #'(0 . 1)
      \once \override Fingering #'font-size = #1 %% default is -5
      $(add-script "scripts.sforzato" x) $x #}))

(define slashStem #{
 \once \override Stem #'stencil =
 #(lambda (grob)
    (let* ((x-parent (ly:grob-parent grob X))
            (is-rest? (ly:grob? (ly:grob-object x-parent 'rest))))
      (if is-rest?
          empty-stencil
          (let* ((dir (ly:grob-property grob 'direction))
                 (stem (ly:stem::print grob))
                 (stem-y (ly:grob-extent grob grob Y))
                 (stem-length (- (cdr stem-y) (car stem-y))))
            (ly:stencil-combine-at-edge
              stem Y dir
              (grob-interpret-markup grob
                (markup
                  #:translate (cons -1 -1)
                  #:draw-line (cons 2 (* dir 2)))) (* stem-length -0.5))))))
#})

(define unflatGliss
 (define-music-function (parser location pair) (pair?)
#{
 \once \override Glissando $'left-bound-info =
   $(lambda (grob)
      (let ((anchor-Y (assoc-get 'Y (ly:line-spanner::calc-left-bound-info grob))))
        (acons 'Y (+ (car pair) anchor-Y) (ly:line-spanner::calc-left-bound-info grob))))
 \once \override Glissando $'right-bound-info =
   $(lambda (grob)
      (let ((anchor-Y (assoc-get 'Y (ly:line-spanner::calc-right-bound-info grob))))
        (acons 'Y (+ (cdr pair) anchor-Y) (ly:line-spanner::calc-right-bound-info grob))))
#}))

(define downGliss #{
\unflatGliss #'(0.5 . -0.5)
#})

(define upGliss #{
\unflatGliss #'(-0.5 . 0.5)
#})

;; Arpeggios ------------------------------------------------------;

(define arpeggUp
 (let* ((m (make-music 'ArpeggioEvent)))
   (ly:music-set-property! m 'tweaks
    (acons 'arpeggio-direction 1
     (ly:music-property m 'tweaks)))
   m))

(define arpeggDown
 (let* ((m (make-music 'ArpeggioEvent)))
   (ly:music-set-property! m 'tweaks
    (acons 'arpeggio-direction -1
     (ly:music-property m 'tweaks)))
   m))

(define plak ;;FIXME: find a better name? OTOH this is kinda fun :)
 (let* ((m (make-music 'ArpeggioEvent)))
   (ly:music-set-property! m 'tweaks
    (acons 'stencil ly:arpeggio::brew-chord-bracket
     (ly:music-property m 'tweaks)))
   m))
