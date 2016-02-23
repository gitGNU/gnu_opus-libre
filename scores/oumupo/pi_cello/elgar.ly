\version "2.19.35"


\include "pilypi.ly"
\include "modify.ly"

\language "italiano"


\header {
  title = "Cello Concerto op.85"
  subtitle = "in E minor"
  composer = "Edward Elgar"
}

\layout {
  \context {
    \Score
    skipBars = ##t
  }
}
PartPOneVoiceOne =  \relative sol, {
  \clef "bass" \key sol \major \numericTimeSignature\time 4/4 | % 1
  <sol mi' si'>2 -\markup{ \bold {Adagio} } \ff <mi si' sol' mi'> | % 2
  <do sol' mi' re'>8 do'' si do <red,, si' fad' la>4 ~ la'' ~ | % 3
  la8 sol fad \acciaccatura { la ( } sol ) do,2 \> ~ | % 4
  do8 \! si la \acciaccatura { re ( } do ) si2 \p \< \glissando | % 5
  mi,2 \! \ff r | % 6
  r2 r4. si'16 \p dod | % 7
  red16 mi fad8 ~ fad \< red16 mi fad sol la8 ~ la fad16 sol
  | % 8
  \clef "tenor" la8 \! si do \> re red mi mid fad ~ | % 9
  \time 9/8  | % 9
  fad8 \! \pp r r4. r r8 | \barNumberCheck #10
  R8*45 | % 15
  fad4 \p ( sol8 ) fad4 la8 si4 la8 | % 16
  sol4 ( mi8 ) re4 mi8 do4 si8 | % 17
  la4 ( si8 ) la4 do8 re4 do8 | % 18
  si4 ( sol8 ) fad4 sol8 mi4 re8 | % 19
  \clef "bass" dod4 ( re8 ) dod4 \< mi8 fad4 mi8 | \barNumberCheck #20
  re4 \! ( si8 ) lad4 si8 sol4 fad8 | % 21
  si2. ~ si4. ~ | % 22
  si2. mi4 \< ( fad8 ) | % 23
  do'4 \! ( la8 ) do4 ( la8 ) la4 ( mi8 ) | % 24
  red4 ( mi8 ) si'4 ( la8 ) sol4 ~ sol16 ( mi' ) ~ | % 25
  mi2. \clef "tenor" la4. | % 26
  si,2. red4 \< ( ~ red16 ) mi | % 27
  mi4 \! \ff ( fad8 ) mi4 ( sol8 ) la4 ( sol8 ) | % 28
  fad4 ( re8 ) do4 ( re8 ) \clef "treble" si'4 ( la8 ) | % 29
  sol4 ( la8 ) sol4 ( si8 ) do4 ( si8 ) | \barNumberCheck #30
  la4 ( fad8 ) mi4 ( fad8 ) red4 \< ( si'8 ) | % 31
  si4. \! la lad | % 32
  si16 ( si, ) dod red mi fad sol la si \< dod red
  mi16 fad sol la si do red | % 33
  mi4 \! r8 r4. r | % 34
  R8*45 | % 39
  \clef "tenor" | % 39
  fad,,4 \mf ( sol8 ) fad4 la8 si4 la8 | \barNumberCheck #40
  sol4 ( mi8 ) re4 mi8 do4 si8 | % 41
  la4 ( si8 ) la4 do8 re4 do8 | % 42
  si4 \> ( sol8 ) fad4 sol8 mi4 re8 | % 43
  \clef "bass" do4 \! ( re8 ) do4 mi8 fad4 mi8 | % 44
  re4 ( si8 ) la4 si8 sol4 fad8 | % 45
  si4 r8 sol4 r8 fad4 r8 | % 46
  mi2. \p ~ mi4 r8 | % 47
  R8*9 | % 48
  \clef "tenor" \time 12/8 mi''4. ( red ) mi \> ( red4 ) la8 | % 49
  sol4 \! r4. r8 r4 r2 | \barNumberCheck #50
  sol'4. \p ( fad ) sol ( fad ) | % 51
  \clef "treble" | % 51
  si8 \pp ( re8. ) dod16 ( fad4 ) mi8 re4 ( si8 ) lad4 ( sol8 ) | % 52
  fad4. ( ~ fad4 ) sol8 fad4 ( si,8 ) \clef "bass" lad4 ( sol8 ) | % 53
  fad4 r8 la4. ( fad ) la ( | % 54
  fad2. ) ~ fad4. ( fadd ) | % 55
  \key mi \major | % 55
  sold8. \mf ( la16 ) sold8 \clef "tenor" dod4 \< ( fad8 ) fad4. \> (
  mi4. ) | % 56
  red4. \! \! dod4 ( red8 ) si4. lad4 ( si8 ) | % 57
  sold4. r r mi' | % 58
  red4. fadd,8. ( sold16 ) fadd8 sold4. lad4 ( si8 ) | % 59
  si8. ( do16 ) si8 mi4 ( la8 ) la4. ( sol ) | \barNumberCheck #60
  fad4. mi8 ( sol8. ) fad16 re4. dod8 ( mi8. ) re16 | % 61
  si4. ( ~ si4 ) la8 fad4 ( sol8 ) sol'4. | % 62
  \clef "treble" | % 62
  fad8. \mf ( sol16 ) fad8 si4 ( mi8 ) mi4. re | % 63
  dod4. \f ( ~ dod4 ) si8 la4 ( mi8 ) red16 mi fad sol la si
  | % 64
  do4. ( ~ do4 ) si8 la4 ( do,8 ) si16 red fad si red fad | % 65
  sol4. ~ sol4 fad8 re re,8. ( fa16 ) mi8 ( sold ) si | % 66
  \time 6/8  do8 do,8. ( mi16 ) si4. ~ | % 67
  \time 12/8  si4. dod4 \p red8 ( ~ red4 ) mi8 lad4. | % 68
  si4. ( fadd ) sold4 ( red8 ) dod ( lad ) si | % 69
  si8. ( do16 ) si8 mi4 ( la8 ) la4 ( re,8 ) sol4. | \barNumberCheck
  #70
  fad8. \f ( sol16 ) fad8 si4 ( mi8 ) mi4. re | % 71
  dod8 \ff mi,8. ( sol16 ) re8 ( fad ) si la do,8. ( mi16 ) red
  mi16 fad sol la si | % 72
  do8 mi,8. ( sol16 ) red8 ( fad ) si la do,8. ( mi16 ) red fad
  la16 si red fad | % 73
  sol4. ~ sol4 fad8 re re,8. ( fa16 ) mi8 ( sold ) si | % 74
  \time 6/8  do8 do,8. ( mi16 ) si4. \> ~ | % 75
  \key sol \major \time 12/8 si2. \! ~ si4 \p r4. r8 | % 76
  sol'4. ( fad ) sol ( fad ) | % 77
  si8 \pp ( re8. ) dod16 ( fad4 ) mi8 re4 ( la8 ) lad4 sol8 | % 78
  \acciaccatura { fad8 ( } si \f \< ) re8. dod16 ( fad4 \ff ) mi8 re4
  ( si8 ) lad4 fad8 ~ | % 79
  fad4. \! la ( fad ) la ( | \barNumberCheck #80
  \time 9/8  fad4 ) sol8 fad4 la8 si4 ( la8 ) | % 81
  sol4 ( mi8 ) re4 mi8 do4 ( si8 ) | % 82
  la4 ( si8 ) la4 do8 re4 ( do8 ) | % 83
  si4 ( sol8 ) fad4 sol8 mi4 ( re8 ) | % 84
  \clef "bass" dod4 ( re8 ) dod4 mi8 fad4 ( mi8 ) | % 85
  re4 ( si8 ) lad4 si8 sol4 ( fad8 ) | % 86
  si2. ~ si4. ~ | % 87
  si2. mi4 ( sol8 ) | % 88
  do8. ( si16 ) la8 do4 ( si8 ) la red ( mi ) | % 89
  \clef "treble" si'4 si8 do4 ( red8 ) mi4 ( re8 ) | \barNumberCheck
  #90
  re8 \f ( do ) sol fad ( mi ) sol si ( la ) la ~ | % 91
  la16 si, dod red mi fad sol la si dod red mi
  fad16 sol la si dod red | % 92
  mi4 \ff r8 r4. r | % 93
  R8*9 | % 94
  r4. r do, \ff | % 95
  do4. la fad | % 96
  mi4. mi' lad, | % 97
  si2. re,4 ( ~ re16 ) fad | % 98
  fad4 \pp ( sol8 ) fad4 la8 si4 ( la8 ) | % 99
  sol4 ( mi8 ) re4 mi8 do4 ( si8 ) | \barNumberCheck #100
  \clef "tenor" la4 ( si8 ) la4 do8 re4 ( do8 ) | % 101
  si4 ( sol8 ) fad4 sol8 mi4 ( re8 ) | % 102
  \clef "bass" do4 ( re8 ) do4 mi8 fad4 ( mi8 ) | % 103
  re4 ( si8 ) la4 si8 sol4 ( fad8 ) | % 104
  si4 r8 sol4 r8 fad4 r8 | % 105
  mi4 r8 r4 r2 | % 106
  R8*9 \bar "|."
}


% The score definition
\score {
  \new Staff <<
    \set Staff.instrumentName = "Violoncello"
    \set Staff.shortInstrumentName = "Vlc."
    \context Staff <<
      \context Voice = "PartPOneVoiceOne" { \piify \PartPOneVoiceOne }
    >>
  >>
  \header {
    piece = \markup \fill-line { \epsfile #Y #40 #myplot }
  }
}
