\language "italiano"

$(use-modules (srfi srfi-1))

\header {
  title = "Sextine pour la fin des temps"
  subtitle = "(ou au moins jusqu’au 9 juin 2013)"
  composer = "Oumupo"
}

#(define sextine
   '(
     '(0 1 2 3 4 5)
     '(5 0 4 1 3 2)
     '(2 5 3 0 1 4)
     '(4 2 1 5 0 3)
     '(3 4 0 2 5 1)
     '(1 3 5 4 2 0)))

#(define mynumber 173) % to be randomly chosen by the audience.

#(define first-words '(("foo" "bar" "baz") ("foo" "bar")))
% To be taken from a book.
#(define second-words '(("foo" "bar" "baz") ("foo" "bar")))
#(define third-words '(("foo" "bar" "baz") ("foo" "bar")))

#(define rhythms-one
   '(
     #{ do8 r r do #}
     #{ do8 r do r #}
     #{ do8 do r r #}
     #{ r8 do r do #}
     #{ r8 do do r #}
     #{ r8 r do do #}))

#(define rhythms-two
   '(
     #{ do8 do do r #}
     #{ do8 do r do #}
     #{ do8 r do do #}
     #{ r8 do do do #}
     #{ do8. do16 do8 r #}
     #{ do16 do do8 r r #}))

#(define notes
   '(
     #{ la4. #}
     #{ si4. #}
     #{ do'4. #}
     #{ re'4. #}
     #{ mi'4. #}
     #{ fa'4. #}))

#(define patterns-one
   '(
     '(0 1)
     '(0 2)
     '(1 0)
     '(1 2)
     '(2 0)
     '(2 1)))

#(define patterns-two
   '(
     '(0 1 0)
     '(0 0 1)
     '(1 0 1)
     '(1 1 0)
     '(1 1 1)
     '(0 0 0)))

#(define meters
   '(
     #{ \time 2/4 #}
     #{ \time 3/4 #}
     #{ \time 4/4 #}
     #{ \time 3/8 #}
     #{ \time 6/8 #}
     #{ \time 12/8 #}))
%TODO: intelligently merge consecutive rests.

#(define tempos
   '(
     "Allegro"
     "Andante mesto"
     "Andantino"
     "Largo"
     "Moderato con moto"
     "Adagio doloroso"))

#(define dyns
   '(
     #{ s1.*2\mp #}
     #{ s1.*2\mf #}
     #{ s1.*2\pp #}
     #{ s1.*2\cresc #}
     #{ s1.*2\dim #}
     #{ s2\ff s2\pp s2\ff s2\pp s2\ff s2\pp #}))

#(set! *random-state* (seed->random-state
                       ; comment either one of those lines.
                       ; (current-time) ; Poor man’s RNG.
                       mynumber ; A constant for reproductible results.
                       ))

#(define (randomize-list ls)
   (let* ((working-list ls)
          (new-list '()))
      (while (not (null? working-list))
        (let* ((num (random (length working-list)))
               (item (list-ref working-list num)))
          (set! working-list (delq item working-list))
          (set! new-list (cons item new-list))))
      new-list))

% This could be useful. But I’m not sure yet how.
#(define (reorder ls offset)
   (append (take-right ls offset) (drop-right ls offset)))

#(define (clean-ref ls num) (cadr (list-ref ls num)))

#(define (music-from-line ls-ref ls-items line)
   (let* ((current-line (clean-ref ls-ref line)))
      (make-sequential-music 
         (map (lambda (x)
                (primitive-eval
                 (list-ref ls-items
                   (list-ref current-line x))))
           current-line))))


#(define (lyrics-from-line ls-ref ls-words ls-items line)
   (map (lambda (x)
          (map (lambda (n)
                   (ly:parser-include-string parser
                     (list-ref ls-words n)))
              (cadr (list-ref ls-items x))))
       (clean-ref ls-ref line)))

% Final step: let’s mix things up a bit.
#(set! tempos (randomize-list tempos))
#(set! meters (randomize-list meters))
#(set! dyns (randomize-list dyns))
#(set! rhythms-one (randomize-list rhythms-one))
#(set! rhythms-two (randomize-list rhythms-two))
#(set! patterns-one (randomize-list patterns-one))
#(set! patterns-two (randomize-list patterns-two))


timeline = {
  \dynamicUp
  $(make-sequential-music
    (map (lambda (n)
           (music-from-line sextine dyns n))	
      (clean-ref (randomize-list sextine) 0)))
  \bar "|."
}

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

\new ChoirStaff <<
  \new Staff \new Voice \transpose la do' \shiftDurations #-2 0 {
    % Durations are hardcoded here. For consistency’s sake.
    \key la \minor
    $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine notes n))	
          (clean-ref sextine 0)))
    $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine notes n))	
          (clean-ref sextine 5)))
  }
  \new RhythmicStaff \new Voice = "un" <<
    {
      \tempo $(car tempos)
      $(make-sequential-music
        (list (primitive-eval (car meters))))
      $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine rhythms-one n))	
          (clean-ref sextine 0))) \bar "||" \mark \default
      $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine rhythms-one n))	
          (clean-ref sextine 1))) \bar "||" \mark \default
      \tempo $(cadr tempos)
      $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine rhythms-one n))	
          (clean-ref sextine 2))) \bar "||" \mark \default
      $(make-sequential-music
        (list (primitive-eval (cadr meters))))
      $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine rhythms-one n))	
          (clean-ref sextine 3))) \bar "||" \mark \default
      \tempo $(caddr tempos)
      $(make-sequential-music
        (list (primitive-eval (car meters))))
      $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine rhythms-one n))	
          (clean-ref sextine 4))) \bar "||" \mark \default
      \tempo $(car tempos)
      $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine rhythms-one n))	
          (clean-ref sextine 5)))
    } { \timeline }
   >>
  \new Lyrics \lyricsto "un" \lyricmode {
      $(map (lambda (q)
              (lyrics-from-line sextine (car first-words) patterns-one q))
         (clean-ref sextine 0))
      $(map (lambda (q)
              (lyrics-from-line sextine (car second-words) patterns-one q))
         (clean-ref sextine 1))
      $(map (lambda (q)
              (lyrics-from-line sextine (car second-words) patterns-one q))
         (clean-ref sextine 2))
      $(map (lambda (q)
              (lyrics-from-line sextine (car third-words) patterns-one q))
         (clean-ref sextine 3))
      $(map (lambda (q)
              (lyrics-from-line sextine (car third-words) patterns-one q))
         (clean-ref sextine 4))
      $(map (lambda (q)
              (lyrics-from-line sextine (car first-words) patterns-one q))
         (clean-ref sextine 5))
  }
  \new RhythmicStaff \new Voice = "deux" <<
    {
      $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine rhythms-two n))
          (clean-ref sextine 5)))
      $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine rhythms-two n))
          (clean-ref sextine 4)))
      $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine rhythms-two n))	
          (clean-ref sextine 3)))
      $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine rhythms-two n))	
          (clean-ref sextine 2)))
      $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine rhythms-two n))	
          (clean-ref sextine 1)))
      $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine rhythms-two n))	
          (clean-ref sextine 0)))
    } { \timeline }
   >>
  \new Lyrics \lyricsto "deux" \lyricmode {
    $(map (lambda (q)
              (lyrics-from-line sextine (cadr first-words) patterns-two q))
         (clean-ref sextine 5))
    $(map (lambda (q)
              (lyrics-from-line sextine (cadr first-words) patterns-two q))
         (clean-ref sextine 4))
    $(map (lambda (q)
              (lyrics-from-line sextine (cadr second-words) patterns-two q))
         (clean-ref sextine 3))
    $(map (lambda (q)
              (lyrics-from-line sextine (cadr third-words) patterns-two q))
         (clean-ref sextine 2))
    $(map (lambda (q)
              (lyrics-from-line sextine (cadr first-words) patterns-two q))
         (clean-ref sextine 1))
    $(map (lambda (q)
              (lyrics-from-line sextine (cadr first-words) patterns-two q))
         (clean-ref sextine 0))
  }
  % somewhat ugly:
  \new Staff \new Voice = "bass" \transpose la do
  \shiftDurations $(begin
                    (define bass-factor (* (random 3) -1))
                    bass-factor) #0 
  { \clef bass \key la \minor
    \repeat unfold $(case bass-factor
                      ((0) 8)
                      ((-1) 4)
                      ((-2) 2)
                      ((-3) 1))
    $(make-sequential-music
        (map (lambda (n)
               (music-from-line sextine notes n))	
          (clean-ref sextine (random 5))))
  }
>>