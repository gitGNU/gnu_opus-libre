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

(define colpugno ;;TODO: add to scripts alist.
 (let* ((m (make-music 'ArticulationEvent
                       'articulation-type "staccatissimo"
                       'direction 1)))
   (ly:music-set-property! m 'tweaks
     (acons 'text (markup #:scale (cons 2 1.6)
                  #:musicglyph "scripts.ustaccatissimo")
         (acons 'stencil ly:text-interface::print
           (ly:music-property m 'tweaks))))
   m))