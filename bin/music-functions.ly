%------------------------------------------------------------------%
% Opéra Libre -- music-functions.ly                                %
%                                                                  %
% (c) Valentin Villenave, 2008, 2009                               %
%------------------------------------------------------------------%

%% FIXME: adapt to new framework

% Functions used for music notation.

PianoDeuxMains=
#(define-music-function (parser location droite gauche) (ly:music? ly:music?)
#{
  \new PianoStaff <<
    \new Staff = "md"
    <<
     \new Voice { \clef treble $droite }
     %\new Voice { \makeGhost $gauche }
    >>
    \new Staff = "mg"
    <<
     \new Voice { \clef bass $gauche }
     %\new Voice { \makeGhost $droite }
    >>
  >>
#})

md = { \change Staff = "md" }

mg = { \change Staff = "mg" }

%%% The same, for percussions.

PercuDeuxMains=
#(define-music-function (parser location droite gauche) (ly:music? ly:music?)
#{
  \new PianoStaff <<
    \new Staff = "percuDroite"
    <<
     \new Voice { \clef treble $droite }
     %\new Voice { \makeGhost $gauche }
    >>
    \new Staff = "percuGauche"
    <<
     \new Voice { \clef bass $gauche }
     %\new Voice { \makeGhost $droite }
    >>
  >>
#})

droite = { \change Staff = "percuDroite" }

gauche = { \change Staff = "percuGauche" }

plperc =
#(define-music-function (parser location one two) (ly:music? ly:music?)
#{ <<  { \stemDown $one \stemNeutral } \new DrumVoice { \stemUp $two } >> #})


%% Music formatting -----------------------------------------------%

graceNotes =
#(define-music-function (parser location notes) (ly:music?)
#{ \tiny $notes \normalsize #})

parlato =
#(define-music-function (parser location notes) (ly:music?)
#{ \override NoteHead #'style = #'cross
  $notes
\revert NoteHead #'style #})

longHairpins =
#(define-music-function (parser location music) (ly:music?)
#{ \override Hairpin #'to-barline = ##f
$music \revert Hairpin #'to-barline #})

slap =
#(define-music-function (parser location music) (ly:music?)
#{\override NoteHead #'stencil = #ly:text-interface::print
  \override NoteHead #'text = \markup \musicglyph #"scripts.sforzato"
  \override NoteHead #'extra-offset = #'(0.1 . 0.0 )
  $music
  \revert NoteHead #'stencil
  \revert NoteHead #'text
  \revert NoteHead #'extra-offset #})

hideNote = {
\once \override NoteHead  #'transparent = ##t
\once \override NoteHead  #'no-ledgers = ##t
\once \override Stem  #'transparent = ##t
\once \override Beam  #'transparent = ##t
\once \override Accidental  #'transparent = ##t
}

noTuplet = {
\once \override TupletBracket #'transparent = ##t
\once \override TupletNumber #'transparent = ##t
}

oneStemDown = {
\once \override Stem #'direction = #DOWN
}

oneStemUp = {
\once \override Stem #'direction = #UP
}

%% Music shortcuts ------------------------------------------------%

sk = \set Score.skipTypesetting = ##t

unsk = \set Score.skipTypesetting = ##f




CaV=
#(let ((m (make-music 'ArticulationEvent
        'articulation-type "flageolet")))
       (set! (ly:music-property m 'tweaks)
             (acons 'font-size -3
                    (ly:music-property m 'tweaks)))
                                       m)
harmo =
#(define-music-function (parser location chord result) (ly:music? ly:music?)
 #{ << \oneStemDown $chord \\ { \stemUp %FIXME: ties could look better.
   \override NoteHead #'stencil = #ly:text-interface::print
   \override NoteHead #'text = \markup { \null \musicglyph #"noteheads.s2" }
   \once \override NoteHead #'text = \markup {\null \override #'(direction . 1)
      \dir-column {\musicglyph #"noteheads.s2" \teeny \musicglyph #"eight" }}
    \override Stem #'stencil = ##f $result
    \revert Stem #'stencil \revert NoteHead #'stencil \stemNeutral } >> #})

harmonics =
#(define-music-function (parser location music) (ly:music?)
#{
\override Dots #'transparent = ##t
\override Stem #'transparent = ##t
\override Beam #'transparent = ##t
\override NoteHead #'style = #'harmonic
$music
\revert NoteHead #'style
\revert Beam #'transparent
\revert Stem #'transparent
\revert Dots #'transparent #})

thumbpizz =
#(let* ((m (make-music 'ArticulationEvent
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
   m)

leftpizz =
#(let* ((m (make-music 'ArticulationEvent
                       'articulation-type "stopped"
                       'direction 1)))
   (ly:music-set-property! m 'tweaks
     (acons 'font-size 3
           (ly:music-property m 'tweaks)))
   m)

arpeggUp =
#(let* ((m (make-music 'ArpeggioEvent)))
   (ly:music-set-property! m 'tweaks
    (acons 'arpeggio-direction 1
     (ly:music-property m 'tweaks)))
   m)

arpeggDown =
#(let* ((m (make-music 'ArpeggioEvent)))
   (ly:music-set-property! m 'tweaks
    (acons 'arpeggio-direction -1
     (ly:music-property m 'tweaks)))
   m)

plak =
#(let* ((m (make-music 'ArpeggioEvent)))
   (ly:music-set-property! m 'tweaks
    (acons 'stencil ly:arpeggio::brew-chord-bracket
     (ly:music-property m 'tweaks)))
   m)

%%% TODO: custom scripts priority.
#(define modern-scripts default-script-alist)

%%%%%%%%%%%%%%%%%%%%%%%% Layout Functions %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Music layout ---------------------------------------------------%

#(define modern-auto-beam-settings
  (append default-beam-settings
  `(
    ((end * * 3 4) . ,(ly:make-moment 1 4))
    ((end * * 3 4) . ,(ly:make-moment 1 2))
    ((end * * 4 4) . ,(ly:make-moment 1 4))
    ((end * * 4 4) . ,(ly:make-moment 3 4))
    ((end * * 2 2) . ,(ly:make-moment 1 4))
    ((end * * 2 2) . ,(ly:make-moment 1 2))
    ((end * * 2 2) . ,(ly:make-moment 3 4))
    ((end * * 2 8) . ,(ly:make-moment 1 4))
    ((be  * * 5 8) . ,(ly:make-moment 1 8))
    ((end * * 5 8) . ,(ly:make-moment 5 8))
    )))

#(define modern-accidentals-style
     `(Staff ,(make-accidental-rule 'same-octave 0)
             ,(make-accidental-rule 'any-octave 0)
             ,(make-accidental-rule 'same-octave 1)
                   ,neo-modern-accidental-rule))
#(define modern-cautionaries-style
     `(Staff ,(make-accidental-rule 'same-octave 1)
             ,(make-accidental-rule 'any-octave 1)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Editorial %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Individual parts -----------------------------------------------%

makePart =
#(define-music-function (parser location part ref)
                        (ly:music? ly:music?)
#{\context Staff << $part \new GhostVoice $ref >> #})

makeSection = % two parts
#(define-music-function (parser location part-one part-two ref)
                        (ly:music? ly:music? ly:music?)
#{\new StaffGroup <<
    \new Staff << $part-one \new GhostVoice $ref >>
    \new Staff $part-two
>> #})

makeExtraSection = % three parts, e.g. for violins
#(define-music-function (parser location part-one part-two part-three ref)
                        (ly:music? ly:music? ly:music? ly:music?)
#{\new StaffGroup <<
    \new Staff << $part-one \new GhostVoice $ref >>
    \new Staff $part-two
    \new Staff $part-three
>> #})

makePianoPart =
#(define-music-function (parser location part-one ref)
                        (ly:music? ly:music?)
#{<< $part-one \new GhostVoice $ref >> #})

%%-----------------------------------------------------------------%


#(define  (naturalize-pitch p)
  (let* ((o (ly:pitch-octave p))
         (a (* 4 (ly:pitch-alteration p)))
    ; alteration, a, in quarter tone steps, for historical reasons
         (n (ly:pitch-notename p)))
    (cond
     ((and (> a 1) (or (eq? n 6) (eq? n 2)))
      (set! a (- a 2))
      (set! n (+ n 1)))
     ((and (< a -1) (or (eq? n 0) (eq? n 3)))
      (set! a (+ a 2))
      (set! n (- n 1))))
    (cond
     ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
     ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
    (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
    (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
    (ly:make-pitch o n (/ a 4))))

#(define (naturalize music)
  (let* ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (p (ly:music-property music 'pitch)))
    (if (pair? es)
        (ly:music-set-property!
         music 'elements
         (map (lambda (x) (naturalize x)) es)))
    (if (ly:music? e)
        (ly:music-set-property!
         music 'element
         (naturalize e)))
    (if (ly:pitch? p)
        (begin
          (set! p (naturalize-pitch p))
          (ly:music-set-property! music 'pitch p)))
    music))


smart =
#(define-music-function (parser location m)
          (ly:music?)
      (naturalize m))

