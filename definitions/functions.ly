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

droite = { \change StaffPiano = "droite" }

gauche = { \change StaffPiano = "gauche" }

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
    
#(define modern-style
  '(Staff 
    (same-octave . 0)
    (any-octave  . 0)
    (same-octave . 1)))

%% Music formatting -----------------------------------------------%

graceNotes =
#(define-music-function (parser location notes) (ly:music?)
#{ \tiny $notes \normalsize #})

parlato =
#(define-music-function (parser location notes) (ly:music?)
#{ \override NoteHead #'style = #'cross 
	$notes
\revert NoteHead #'style #})

hideNote = {
\once \override NoteHead  #'transparent = ##t
\once \override NoteHead  #'no-ledgers = ##t
\once \override Stem  #'transparent = ##t
\once \override Beam  #'transparent = ##t
\once \override Accidental  #'transparent = ##t
}
%%%%%%%%%%%%%%%%%%%%%%%%%% In-score Text %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Expressive indications -----------------------------------------%

#(define-markup-command (indic layout props arg) (markup?)
    (interpret-markup layout props
    (markup #:whiteout #:small #:italic arg)))

cmb = 
#(define-music-function (parser location nuance texte ) 
(string? string? )
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
#{ \override TextSpanner #'bound-details #'left #'text = 
  \markup { \bold $texte }
                $(make-text-span music -1)#})

stopTxt =
#(define-music-function (parser location music ) (ly:music?)
     (make-text-span music 1))
              
%% Tempo indications ----------------------------------------------%
#(define-markup-command (mvt layout props arg) (markup?)
    (interpret-markup layout props
    (markup #:huge #:bold arg)))

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

smallcaps = {
\override LyricText  #'font-shape = #'caps }

normal = {
\revert LyricText #'font-shape }


%% Scenography formatting ---------------------------------------%
long = {
\once \override TextScript #'extra-spacing-width = #'(0 . 0)
\once \override TextScript #'infinite-spacing-height = ##t
}

#(define-markup-command (did layout props text) (markup?)
  (interpret-markup layout props
    (markup #:override '(line-width . 40)
    #:override '(box-padding . 1)
    #:override '(corner-radius . 2)
    #:rounded-box #:sans #:italic #:small #:justify-string text)))

#(define-markup-command (init-did layout props text) (markup?)
  (interpret-markup layout props
    (markup 
  ;  #:override (cons 'line-width (* 1 (chain-assoc-get 'line-width props)))
    #:fill-line (
    #:override '(line-width . 50)
    #:override '(box-padding . 1.5)
    #:override '(corner-radius . 2)
    #:rounded-box #:sans #:italic #:small #:justify-string  text))))

#(define-markup-command (vspace layout props amount) (number?)
  (let ((amount (* amount 3.0)))
    (if (> amount 0)
        (ly:make-stencil "" (cons -1 1) (cons 0 amount))
        (ly:make-stencil "" (cons -1 1) (cons amount amount)))))
