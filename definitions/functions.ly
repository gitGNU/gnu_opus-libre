%------------------------------------------------------------------%
% Opéra Libre -- functions.ly                                      %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


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

parallel=
#(define-music-function (parser location droite gauche) (ly:music? ly:music?)
#{ << 
\context Staff = "droite"   $droite
\context Staff = "gauche"   $gauche 
>> #})

PianoDeuxMains=
#(define-music-function (parser location droite gauche) (ly:music? ly:music?)
#{ << 
\new Staff = "droite" \with { \override VerticalAxisGroup #'remove-empty = ##f }
   $droite
\new Staff = "gauche" \with { \override VerticalAxisGroup #'remove-empty = ##f }
   $gauche 
>> #})

PianoDeuxMainsBroken=
#(define-music-function (parser location droite gauche) (ly:music? ly:music?)
#{ <<
  \new Staff \with {
  \remove "Ottava_spanner_engraver"
  \remove "Collision_engraver"
  \remove "Rest_collision_engraver"
  \remove "Accidental_engraver"
  \remove "Key_engraver"
  \remove "Clef_engraver"	} { <<
    \new Voice \with {
      \override VerticalAxisGroup #'minimum-Y-extent = ##f
      localKeySignature = #'()
      createSpacing = ##t
      squashedPosition = #0 
      \consists "Pitch_squash_engraver"
      \remove "Rest_engraver"
      \remove "Text_engraver"
      \remove "Dynamic_engraver"
      \remove "Fingering_engraver"
      \remove "Slur_engraver"
      \remove "Tie_engraver"
      \remove "Script_engraver"
      \remove "Script_column_engraver"
      \remove "Stem_engraver"
      \remove "Beam_engraver"
      \remove "Dots_engraver" } {
        \sequential {
          \override NoteHead  #'transparent = ##t
          \override NoteHead  #'no-ledgers = ##t
          \override Arpeggio #'transparent = ##t
          \override Clef #'transparent = ##t
          \override MultiMeasureRest #'transparent = ##t
          \override Rest #'transparent = ##t
          \override TupletBracket #'transparent = ##t
          \override TupletNumber #'transparent = ##t
          \override Script #'transparent = ##t }
      { \voiceFour $gauche }}
    \new Voice \with{
      \consists "Ottava_spanner_engraver"
      \consists "Accidental_engraver"
      \consists "Collision_engraver"
      \consists "Rest_collision_engraver"
      \consists "Key_engraver"
      \consists "Clef_engraver" }
      $droite >> }
  \new Staff \with {
  \remove "Ottava_spanner_engraver"
  \remove "Collision_engraver"
  \remove "Rest_collision_engraver"
  \remove "Accidental_engraver"
  \remove "Key_engraver"
  \remove "Clef_engraver"	} { <<
    \new Voice \with {
      \override VerticalAxisGroup #'minimum-Y-extent = ##f
      localKeySignature = #'()
      createSpacing = ##t
      squashedPosition = #0 
      \consists "Pitch_squash_engraver"
      \remove "Rest_engraver"
      \remove "Text_engraver"
      \remove "Dynamic_engraver"
      \remove "Fingering_engraver"
      \remove "Slur_engraver"
      \remove "Tie_engraver"
      \remove "Script_engraver"
      \remove "Script_column_engraver"
      \remove "Stem_engraver"
      \remove "Beam_engraver"
      \remove "Dots_engraver" } {
        \sequential {
          \override NoteHead  #'transparent = ##t
          \override NoteHead  #'no-ledgers = ##t
          \override Arpeggio #'transparent = ##t
          \override Clef #'transparent = ##t
          \override MultiMeasureRest #'transparent = ##t
          \override Rest #'transparent = ##t
          \override TupletBracket #'transparent = ##t
          \override TupletNumber #'transparent = ##t
          \override Script #'transparent = ##t }
      {\voiceFour $droite }}
    \new Voice \with{
      \consists "Ottava_spanner_engraver"
      \consists "Accidental_engraver"
      \consists "Collision_engraver"
      \consists "Rest_collision_engraver"
      \consists "Key_engraver"
      \consists "Clef_engraver" }
      $gauche >> }
    >>
#})

%% Articulation shortcuts -----------------------------------------%

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
    
marc = 
#(define-music-function (parser location music) 
					(ly:music?)
          (define (make-script-music m)
   (add-script m "marcato"))
		(music-map make-script-music music))

det = 
#(define-music-function (parser location music) 
					(ly:music?)
          (define (make-script-music m)
   (add-script m "tenuto"))
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


%% Music shortcuts ------------------------------------------------%

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

%%%%%%%%%%%%%%%%%%%%%%%% Layout Functions %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Music layout ---------------------------------------------------%

droite = { \change Staff = "droite" }

gauche = { \change Staff = "gauche" }

%% Music formatting -----------------------------------------------%

graceNotes =
#(define-music-function (parser location notes) (ly:music?)
#{ \tiny $notes \normalsize #})

parlato =
#(define-music-function (parser location notes) (ly:music?)
#{ \override NoteHead #'style = #'cross 
	$notes
\revert NoteHead #'style #})

#(define-public (format-moveYment-markup dur count context)
  (let* ((note-mark (make-smaller-markup
		     (make-note-by-number-markup (ly:duration-log dur)
						 (ly:duration-dot-count dur)
						 1))))  
    (make-line-markup
     (list
      (make-simple-markup  "(")
      (make-general-align-markup Y DOWN note-mark)
      (make-simple-markup  "=")
      (make-simple-markup (number->string count))
      (make-simple-markup  ")")))))

%%%%%%%%%%%%%%%%%%%%%%%%%% In-score Text %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Expressive indications -----------------------------------------%

#(define-markup-command (indic layout props arg) (markup?)
    (interpret-markup layout props
    (markup #:whiteout #:small #:italic arg)))

cmb =
#(define-music-function (parser location nuance texte) (string? string?)
              (make-dynamic-script 
              (markup #:dynamic nuance 
              #:hspace .6
              #:text #:medium #:upright texte )))


ten = 
#(define-music-function (parser location music) (ly:music?)
   (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                  (list (make-music 'TextScriptEvent 'text
                    (markup #:translate (cons 4 0) 
                    #:indic "(ten.)"))))))
                 music)
   
ind = 
#(define-music-function (parser location text music) (string? ly:music?)
   (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                  (list (make-music 'TextScriptEvent 'direction 1
                  'text (markup #:indic text))))))
   music)

#(define (make-text-span music t)
 (set! (ly:music-property music 'elements)
                       (append (ly:music-property music 'elements)
                       (list (make-music 'TextSpanEvent
                         'span-direction t))))
                         music)
startTxt =
#(define-music-function (parser location texte music ) (string? ly:music?)
#{ \override TextSpanner #'bound-details #'left #'text = $texte
                $(make-text-span music -1)#})

stopTxt =
#(define-music-function (parser location music ) (ly:music?)
     (make-text-span music 1))
              
%% Tempo indications ----------------------------------------------%
              
#(define (string->duration strElt)
  ( let*((ptindex (string-index strElt #\. )) (ptnumber 0)
     (val (string->number (if ptindex (substring strElt 0 ptindex) strElt)))
     (dur (ly:intlog2 val)))
(while ptindex (begin
             (set! ptnumber (1+ ptnumber))
             (set! ptindex (string-index strElt #\.  (1+ ptindex)))))
     (ly:make-duration dur ptnumber 1 1)))

#(define-markup-command (mvt layout props arg) (markup?)
    (interpret-markup layout props
    (markup #:huge #:bold arg)))

mouv =
#(define-music-function (parser location texte duration count music)
(string? string? integer? ly:music?)
(define (format-movement-markup dur count context) 
    (make-line-markup
     (list
      (markup #:mvt texte #:hspace 1)
      (make-simple-markup  "(")
      (make-general-align-markup Y DOWN (make-smaller-markup
		     (make-note-by-number-markup (ly:duration-log dur)
						 (ly:duration-dot-count dur) 1)))
      (make-simple-markup  "=")
      (make-simple-markup (number->string count))
      (make-simple-markup  ")"))))
(make-music 'SequentialMusic 'elements 
      (list (make-music 'ContextSpeccedMusic
              'context-type 'Score 'element 
              (make-music 'PropertySet
                'value format-movement-markup
                'symbol 'metronomeMarkFormatter))
            (make-music 'ContextSpeccedMusic
              'context-type 'Score 'element
              (make-music 'SequentialMusic 'elements
              (list (make-music 'PropertySet
                     'value (ly:duration-length (string->duration duration))
                     'symbol 'tempoWholesPerMinute)
                    (make-music 'PropertySet
                     'value (string->duration duration)
                     'symbol 'tempoUnitDuration)
                    (make-music 'PropertySet
                     'value count
                     'symbol 'tempoUnitCount))))
                     music
                     (make-music 'ContextSpeccedMusic
              'context-type 'Score 'element 
              (make-music 'PropertySet
                'value format-metronome-markup
                'symbol 'metronomeMarkFormatter)))))
                     
%%%%%%%%%%%%%%%%%%%%%%%%%% Text Functions %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Lyrics formatting ----------------------------------------------%

freestyleOn = {
\override Lyrics . LyricExtender #'stencil = ##f }

freestyleOff = {
\revert Lyrics . LyricExtender #'stencil }

leftSyl = {
\once \override LyricText #'self-alignment-X = #0.9 }

dash = {
  \once \override LyricHyphen #'minimum-distance = #4
  \once \override LyricHyphen #'length = #2
  \once \override LyricHyphen #'thickness = #1.2
}

ital = {
\once \override LyricText #'font-shape = #'italic }

%% Scenography formatting ---------------------------------------%

#(define-public (rounded-box-stencil stencil thickness padding blot)
  (let* ((xext (interval-widen (ly:stencil-extent stencil 0) padding))
	 (yext (interval-widen (ly:stencil-extent stencil 1) padding))
   (min-ext (min (-(cdr xext) (car xext)) (-(cdr yext) (car yext))))
   (ideal-blot (min blot (/ min-ext 2)))
   (ideal-thickness (min thickness (/ min-ext 2)))
	 (outer (ly:round-filled-box
		   (interval-widen xext ideal-thickness) 
       (interval-widen yext ideal-thickness) 
            ideal-blot))
	 (inner (ly:make-stencil (list 'color (x11-color 'white) (ly:stencil-expr (ly:round-filled-box 
       (cons (+ (car xext) ideal-thickness) (- (cdr xext) ideal-thickness)) 
       (cons (+ (car yext) ideal-thickness) (- (cdr yext) ideal-thickness)) 
            (- ideal-blot (* ideal-thickness 2))))))))
    (set! stencil (ly:stencil-add outer inner))
    stencil))


#(define-markup-command (rounded-box layout props arg) (markup?)
  (let* ((th (*
	      (ly:output-def-lookup layout 'line-thickness)
	      (chain-assoc-get 'thickness props 1)))
         (rad (chain-assoc-get 'corner-radius props 1))
	 (size (chain-assoc-get 'font-size props 0))
	 (pad (* (magstep size)
		 (chain-assoc-get 'box-padding props 0.5)))
	 (m (interpret-markup layout props arg)))
    (ly:stencil-add (rounded-box-stencil m th pad rad)
    m)))

#(define-markup-command (did layout props text) (markup?)
  (interpret-markup layout props
    (markup #:override '(line-width . 40)
    #:override '(box-padding . 2)
    #:override '(corner-radius . 3)
    #:rounded-box #:sans #:italic #:tiny #:justify-string text)))

#(define-markup-command (init-did layout props text) (markup?)
  (interpret-markup layout props
    (markup #:fill-line ( #:did text))))


