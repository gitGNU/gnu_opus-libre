%------------------------------------------------------------------%
% Opéra Libre -- functions.ly                                      %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

% Various additional functions.

%%%%%%%%%%%%%%%%%%%%%%%%% Music Shortcuts %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Rhythm shortcuts -----------------------------------------------%

t =
#(define-music-function (parser location music) (ly:music?)
#{ \times 2/3 $music #})

tt =
#(define-music-function (parser location music) (ly:music?)
#{ \times 4/5 $music #})

ttt =
#(define-music-function (parser location music) (ly:music?)
#{ \times 4/6 $music #})

tttt =
#(define-music-function (parser location music) (ly:music?)
#{ \times 4/7 $music #})


%% Polyphony shortcuts --------------------------------------------%

pl =
#(define-music-function (parser location one two) (ly:music? ly:music?)
#{ << { \voiceTwo $one } \\ { \voiceOne $two } >> #})

plperc =
#(define-music-function (parser location one two) (ly:music? ly:music?)
#{ <<  { \stemDown $one \stemNeutral } \new DrumVoice { \stemUp $two } >> #})

parallel=
#(define-music-function (parser location droite gauche) (ly:music? ly:music?)
#{ <<
\context Staff = "md"   $droite
\context Staff = "mg"   $gauche
>> #})

%%% Piano stuff (Issue #442 workaround)

#(define (event-filter event)
    (let ((n (ly:music-property event 'name)))
    (not
      (or     ;; add here event name you do NOT want
       (eq? n 'ContextSpeccedMusic)
       (eq? n 'ContextChange)
       (eq? n 'SimultaneousMusic))
  )))

makeGhost =
#(define-music-function (parser location music) (ly:music?)
  (context-spec-music (music-filter event-filter music) 'PseudoVoice))

showAnyway =
#(define-music-function (parser location music) (ly:music?)
#{
  \unset Score.keepAliveInterfaces
  $music
  \set Score.keepAliveInterfaces = #'(rhythmic-grob-interface
  lyric-interface percent-repeat-item-interface
  percent-repeat-interface stanza-number-interface)
#})

md = { \change Staff = "md" }

mg = { \change Staff = "mg" }

PianoDeuxMains=
#(define-music-function (parser location droite gauche) (ly:music? ly:music?)
#{
  \new PianoStaff <<
    \new Staff = "md" \with { \remove Accidental_engraver }
    <<
     \new Voice \with { \consists Accidental_engraver } { \clef treble $droite }
     %\new Voice { \makeGhost $gauche }
    >>
    \new Staff = "mg" \with { \remove Accidental_engraver }
    <<
     \new Voice \with { \consists Accidental_engraver } { \clef bass $gauche }
     %\new Voice { \makeGhost $droite }
    >>
  >>
#})

droite = { \change Staff = "percuDroite" }

gauche = { \change Staff = "percuGauche" }

PercuDeuxMains=
#(define-music-function (parser location droite gauche) (ly:music? ly:music?)
#{ << %%%FIXME: I /definitely/ should get rid of this option.
\new Staff = "percuDroite"
{ \clef treble $droite }
\new Staff = "percuGauche" \with { \override VerticalAxisGroup #'remove-empty = ##f }
{ \clef bass $gauche }
>> #})


%% Music formatting -----------------------------------------------%

graceNotes =
#(define-music-function (parser location notes) (ly:music?)
#{ \tiny $notes \normalsize #})

parlato =
#(define-music-function (parser location notes) (ly:music?)
#{ \override NoteHead #'style = #'cross
  $notes
\revert NoteHead #'style #})

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

% This might not be needed
#(define (octave-up noteevent)
 (let* ((pitch (ly:music-property noteevent 'pitch))
        (octave (ly:pitch-octave pitch))
        (note (ly:pitch-notename pitch))
        (alteration (ly:pitch-alteration pitch))
        (duration (ly:music-property noteevent 'duration))
        (newnoteevent
          (make-music 'NoteEvent
            'duration duration
            'pitch (ly:make-pitch (1- octave) note alteration))))
   newnoteevent))

#(define (octavize-chord elements)
 (cond ((null? elements) elements)
       ((eq? (ly:music-property (car elements) 'name) 'NoteEvent)
         (cons (car elements)
               (cons (octave-up (car elements))
                     (octavize-chord (cdr elements)))))
       (else (cons (car elements) (octavize-chord (cdr elements))))))

#(define (octavize music)
 (let* ((es (ly:music-property music 'elements))
        (e (ly:music-property music 'element))
        (name (ly:music-property music 'name)))
   (cond ((eq? name 'EventChord)
          (ly:music-set-property! music 'elements (octavize-chord es)))
         ((pair? es)
          (for-each (lambda(x) (octavize x)) es))
         ((ly:music? e)
          (octavize e))))
 music)

oct = #(define-music-function (parser location mus) (ly:music?)
 (octavize mus))


%%%%%%%%%%%%%%%%%%%%%%%%% Music Decoration %%%%%%%%%%%%%%%%%%%%%%%%%

%% Articulation marks ---------------------------------------------%

#(define (make-script x)
   (make-music 'ArticulationEvent
               'articulation-type x))

#(define (add-script m x)
 (let ( (eventname (ly:music-property m 'name)))
  (if (equal? eventname 'EventChord)
    (let ( (elements (ly:music-property m 'elements)) )
      (if (not (equal? (ly:music-property (car elements)
                'name) 'RestEvent))
        (set! (ly:music-property m 'elements)
          (append elements (list
          (make-script x)))))))
          m))

#(define (double-script m t tt)
       (add-script (add-script m t) tt))

st =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (add-script m "staccato"))
    (music-map make-script-music music))

acc =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (add-script m "accent"))
    (music-map make-script-music music))

det =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (add-script m "tenuto"))
    (music-map make-script-music music))

marc =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (add-script m "marcato"))
    (music-map make-script-music music))

stdet =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (add-script m "portato"))
    (music-map make-script-music music))

accdet =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (double-script m "tenuto" "accent"))
    (music-map make-script-music music))

marcdet =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (double-script m "tenuto" "marcato"))
    (music-map make-script-music music))

accst =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (double-script m "accent" "staccato"))
    (music-map make-script-music music))

marcst =
#(define-music-function (parser location music)
          (ly:music?)
          (define (make-script-music m)
   (double-script m "marcato" "staccato"))
    (music-map make-script-music music))


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
   \override NoteHead #'text = \markup { \null \musicglyph #"noteheads.s2"}
   \once \override NoteHead #'text = \markup {\null \override #'(direction . 1)
      \dir-column {\musicglyph #"noteheads.s2" \teeny \musicglyph #"eight"}}
    \override Stem #'stencil = ##f $result
    \revert Stem #'stencil \revert NoteHead #'stencil \stemNeutral } >> #})

thumbpizz =
#(make-music 'TextScriptEvent
             'direction 1
             'text (markup #:hspace .4 #:rotate 45
                #:musicglyph "scripts.stopped"))

leftpizz =
#(make-articulation "stopped")

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

%%%%%%%%%%%%%%%%%%%%%%%% Layout Functions %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Music layout ---------------------------------------------------%

#(define modern-auto-beam-settings
  (append default-auto-beam-settings
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

makeSection =
#(define-music-function (parser location part-one part-two ref)
                        (ly:music? ly:music? ly:music?)
#{\new StaffGroup <<
    \new Staff << $part-one \new GhostVoice $ref >>
    \new Staff $part-two
>> #})

makeExtraSection = % for violins
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
