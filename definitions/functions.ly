%------------------------------------------------------------------%
% Opéra Libre -- functions.ly                                      %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


%%%%%%%%%%%%%%%%%%%%%%%%% Music Functions %%%%%%%%%%%%%%%%%%%%%%%%%%

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



%%%%%%%%%%%%%%%%%%%%%%%% Layout Functions %%%%%%%%%%%%%%%%%%%%%%%%%%

%% Music layout ---------------------------------------------------%

droite = { \change Staff = "droite" }

gauche = { \change Staff = "gauche" }

%% Music formatting -----------------------------------------------%

graceNotes =
#(define-music-function (parser location notes) (ly:music?)
#{ \tiny $notes \normalsize #})

CaV=
#(let ((m (make-music 'ArticulationEvent
                          'articulation-type "flageolet")))
       (set! (ly:music-property m 'tweaks)
             (acons 'font-size -3
                    (ly:music-property m 'tweaks)))
m)

%%%%%%%%%%%%%%%%%%%%%%%%%% Text Functions %%%%%%%%%%%%%%%%%%%%%%%%%%

%% In-score text formatting ---------------------------------------%

parlato =
#(define-music-function (parser location notes) (ly:music?)
#{ \override NoteHead #'style = #'cross 
	$notes
\revert NoteHead #'style #})


startTxt =
#(define-music-function (parser location text note)
                     (string? ly:music?)
 (#{ \override TextSpanner #'edge-text = #'($text . "")
     $note 
  %  \startTextSpan
   #}))

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
   "Add a rounded box around STENCIL, producing a new stencil."  

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
  "@cindex enclosing text in a bow with rounded corners
   @cindex drawing boxes with rounded corners around text
Draw a box with rounded corners around @var{arg}.  Looks at @code{thickness},
@code{box-padding} and @code{font-size} properties to determine line
thickness and padding around the markup; the @code{corner-radius} property
makes possible to define another shape for the corners (default is 1).

@lilypond[quote,verbatim,fragment,relative=2]
c^\\markup{ \\rounded-box Overtura }
c,8. c16 c4 r
@end lilypond" 
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
    #:rounded-box #:wordwrap-string text)))
   
