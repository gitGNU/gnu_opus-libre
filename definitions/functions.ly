%------------------------------------------------------------------%
% Opéra Libre -- functions.ly                                      %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


%%% Thanks to Nicolas Sceaux for the following function
cosmeticBreak =
#(define-music-function (location parser sym) (symbol?)
   (if (or (eqv? sym 'all)
           (and (eqv? sym 'letter) (ly:get-option 'letter))
           (and (eqv? sym 'a4) (not (ly:get-option 'letter))))
       (make-event-chord (list (make-music 'LineBreakEvent
                                'break-permission 'force)))
       (make-event-chord (list))))


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

PianoDeuxMains=
#(define-music-function (parser location droite gauche) (ly:music? ly:music?)
#{ << 
\new Staff = "droite" \with { \override VerticalAxisGroup #'remove-empty = ##f }
   $droite
\new Staff = "gauche" \with { \override VerticalAxisGroup #'remove-empty = ##f }
   $gauche 
>> #})

droite = { \change Staff = "droite" }

gauche = { \change Staff = "gauche" }

parallel=
#(define-music-function (parser location droite gauche) (ly:music? ly:music?)
#{ << 
\context Staff = "droite"   $droite
\context Staff = "gauche"   $gauche 
>> #})

parlato =
#(define-music-function (parser location notes) (ly:music?)
#{ \override NoteHead #'style = #'cross 
	$notes
\revert NoteHead #'style #})

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

startTxt =
#(define-music-function (parser location text note)
                                         (string? ly:music?)
     (#{
     \override TextSpanner #'edge-text = #'($text . "")
     $note 
  %  \startTextSpan
   #}
  )
)

pl = 
#(define-music-function (parser location one two) (ly:music? ly:music?)
#{ << { \voiceTwo $one } \\ { \voiceOne $two } >> #})
