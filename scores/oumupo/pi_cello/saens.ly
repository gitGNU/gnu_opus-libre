
\version "2.19.35"

\include "pilypi.ly"
\include "modify.ly"

\language "italiano"


\header {
  composer = "Saint-Saens"
  title = "Concerto No. 1"
}

\layout {
  \context {
    \Score
    skipBars = ##t
  }
}

#(define saens-numbers
   (list
#\2 #\2 #\1 #\2 #\1 #\2 #\1 #\2 #\2 #\0 #\7 #\6 #\8 #\3 #\3 #\6 #\0 #\2 #\4 #\9 #\6 #\5 #\8 #\5 #\0 #\8 #\9 #\5 #\3 #\8 #\4 #\9 #\4 #\2 #\3 #\0 #\5 #\6 #\5 #\7 #\0 #\7 #\6 #\1 #\2 #\3 #\0 #\7 #\8 #\8 #\3 #\8 #\4 #\8 #\6 #\1 #\8 #\6 #\7 #\1 #\9 #\9 #\3 #\9 #\7 #\3 #\0 #\3 #\1 #\9 #\8 #\1 #\5 #\1 #\0 #\2 #\5 #\9 #\5 #\2 #\7 #\5 #\2 #\2 #\4 #\1 #\9 #\9 #\4 #\2 #\2 #\0 #\4 #\4 #\4 #\9 #\4 #\3 #\8 #\8 #\1 #\9 #\2 #\4 #\0 #\1 #\4 #\2 #\4 #\3 #\7 #\7 #\3 #\2 #\0 #\0 #\7 #\0 #\6 #\4 #\8 #\7 #\8 #\8 #\8 #\8 #\6 #\0
))

sfpp = #(make-dynamic-script "sfpp")

PartPOneVoiceOne =  \relative mi' {
  \clef "bass" \key do \major \numericTimeSignature\time 2/2 | % 1
  r4 -"Allegro non troppo" mi ~ \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    mi8 re do
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 do re
  }
  | % 2
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 la si
  }
  la8 mi fa4 ~ | % 3
  fa4 mi r8 mi, fa4 ~ | % 4
  fa4 mi r mi'' ~ | % 5
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 re do
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 do re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 la si
  }
  | % 6
  la8 mi fa2 mi4 | % 7
  r8 mi, fa2 mi4 | % 8
  \clef "tenor" r4 la'' ~ \once \override TupletBracket #'stencil =
  ##f
  \times 2/3  {
    la8 sol fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa sol
  }
  | % 9
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 mi re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 re mi
  }
  re8 la do si | \barNumberCheck #10
  r4 la' ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sol fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa sol
  }
  | % 11
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 mi re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 re mi
  }
  re8 la do si | % 12
  r4 do' ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 la si
  }
  | % 13
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sold fad
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fad sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 mi red
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 red mi
  }
  | % 14
  red8 do la fad \clef "bass" red do la fad | % 15
  red2. red4 | % 16
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 -"Poco animato" ( sold ) sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 ( si ) si
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 ( mi ) mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 ( fa ) fa
  }
  | % 17
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 ( mi red )
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 red red
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 ( mi red )
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 red red
  }
  | % 18
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 ( sold ) sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 ( si ) si
  }
  \clef "tenor" \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 ( mi ) mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 ( fa ) fa
  }
  | % 19
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 ( mi red )
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 red red
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 ( mi red )
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 red red
  }
  | \barNumberCheck #20
  mi8 r mi, fa fa ( mi ) mi la | % 21
  la8 ( sold ) sold do do ( si ) si fa' | % 22
  fa8 ( mi ) mi la la ( sold ) sold do | % 23
  do8 -"Rall." ( si ) si mi mi4. ( mi,8 ) | % 24
  mi1 -"A" -"Tempo 1°" ~ | % 25
  mi2. red4 ~ | % 26
  red4 mi mi fa ~ | % 27
  fa4 mi mi2 ~ | % 28
  mi1 ~ | % 29
  mi4 red2 mi4 | \barNumberCheck #30
  mi4 ( fa2 mi4 ) | % 31
  la1 ~ | % 32
  la4 r r2 | % 33
  do1 ~ | % 34
  do4 r r2 | % 35
  R1*8 | % 43
  r4 -"B" si ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 la sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sold la
  }
  | % 44
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 fad mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi fad
  }
  mi8 si sold mi | % 45
  \clef "bass" red8 do la si do la mi fad | % 46
  sold8 la si do mi fad la do | % 47
  si4 \clef "tenor" si' ~ \once \override TupletBracket #'stencil =
  ##f
  \times 2/3  {
    si8 la sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sold la
  }
  | % 48
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 fad mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi fad
  }
  mi8 si sold mi | % 49
  fa8 do la sib do la fa do | \barNumberCheck #50
  fa8 la do fa la sib si do | % 51
  do4 \clef "tenor" do' ~ \once \override TupletBracket #'stencil =
  ##f
  \times 2/3  {
    do8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 la sib
  }
  | % 52
  la8 fad do la \clef "bass" fad do la re, | % 53
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sol sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 lad si
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 dod re
  }
  | % 54
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sol sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 lad si
  }
  do4 ~ | % 55
  do4 la ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sib si
  }
  do4 ~ | % 56
  do4 la ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sib si
  }
  do4 ~ | % 57
  do8 la sib si do la sib si | % 58
  do8 la sib si do si do dod | % 59
  re2 \p sol, | \barNumberCheck #60
  la2 sib | % 61
  la4 sib do re | % 62
  do4 re mi fa | % 63
  solb2 do, | % 64
  re2 mib | % 65
  \clef "tenor" re4 mib fa sol | % 66
  fa4 sol la sib | % 67
  sib2 mi, | % 68
  fa2 sol | % 69
  sib2 mi, | \barNumberCheck #70
  fa2 sol | % 71
  la1 \pp | % 72
  \clef "treble" la'1 | % 73
  la1 | % 74
  la,1 | % 75
  la2. do,4 | % 76
  red4 mi la do | % 77
  do1 | % 78
  fad,,,1 \sf | % 79
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 \p ( sib ) sib
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sib8 ( re ) re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 ( sol ) sol
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 ( sib ) sib
  }
  | \barNumberCheck #80
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 \mp ( sib la )
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 la la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 la la
  }
  | % 81
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 \mf ( sib ) sib
  }
  \clef "tenor" \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sib8 ( re ) re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 ( sol ) sol
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 sib sib
  }
  | % 82
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 la la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 la la
  }
  | % 83
  sol8 r re, sol \f sol fad fad la | % 84
  la8 -"Accel." ( sol ) sol do do ( sib ) sib re | % 85
  re8 ( dod ) dod mi mi ( re ) re sol | % 86
  sol8 ( fad ) fad la la4 ( sol ) | % 87
  r4 re,8 sol sol fad fad la | % 88
  la8 ( sol ) sol mi' mi re re sol | % 89
  sol8 fad fad la la ( sol ) sol do | \barNumberCheck #90
  do8 ( si ) si mi mi4 re | % 91
  R1 | % 92
  \clef "bass" <re,, si'>8 -"C" -. <si' fa'> -. <si fa'> -. <re,
  si'>8 -. <re si'> -. <si' fa'> -. <si fa'> -. <re, si'> -. | % 93
  R1 | % 94
  <re si'>8 -. <si' fa'> -. <si fa'> -. <re, si'> -. <re si'> -.
  <si' fa'>8 -. <si fa'> -. <re, si'> -. | % 95
  <re si'>8 -. <si' fad'> -. <si fad'> -. <re, si'> -. <re si'> -.
  <si' sol'>8 -. <si sol'> -. <re, si'> -. | % 96
  <re si'>8 -. <si' lab'> -. <si lab'> -. <re, si'> -. <re si'> -.
  <si' sol'>8 -. <si sol'> -. <re, si'> -. | % 97
  <re si'>8 <si' fad'> <si fad'> <re, si'> <re si'> <si' sol'>
  <si sol'>8 <re, si'> | % 98
  <re si'>8 <si' la'> <si la'> <re, si'> <re si'> <si' sol'> <si
  sol'>8 <re, si'> | % 99
  \clef "tenor" <mi do'>8 <do' sol'> <do sol'> <mi, do'> <fa do'>
  <do' la'>8 <do la'> <fa, do'> | \barNumberCheck #100
  <fad re'>8 <re' la'> <re la'> <fad, re'> <sol re'> <re' sib'>
  <re sib'>8 <sol, re'> | % 101
  <sold mi'>8 <mi' si'> <mi si'> <sold, mi'> <la mi'> <mi' do'>
  <mi do'>8 <la, mi'> | % 102
  <la fa'>8 <fa' do'> <fa do'> <la, fa'> <sib fa'> <fa' re'> <fa
  re'>8 <sib, fa'> | % 103
  <sib fa'>8 \f <fa' re'> <fa re'> <mi dod'> <mi dod'> <fa re'>
  <fa re'>8 <mi do'> | % 104
  <mi do'>8 <re sib'> <re sib'> <dod la'> <dod la'> <re sib'> <re
  sib'>8 <do la'> | % 105
  <do la'>8 <sib sol'> <sib sol'> <la fad'> <la fad'> <sib sol'>
  <sib sol'>8 <la fa'> | % 106
  <la fa'>8 <sol mi'> <sol mi'> <sol mi'> <sol mi'> <fa re'> <fa
  re'>8 <fa re'> | % 107
  <mi do'>4 \clef "bass" sol,8 do red ( mi ) do mi | % 108
  fad8 ( sol ) mi sol la ( sib ) sol sib | % 109
  \clef "tenor" red8 mi do mi fad sol mi sol | \barNumberCheck
  #110
  la8 sib sol la sib do re mi \bar "||"
  \key fa \major | % 111
  \tempo 2=70 fa4 -"Allegro molto" r r2 | % 112
  R1*27 \bar "||"
  \clef "bass" \key do \major | % 139
  \tempo 2=55 r4 -"D" -"Tempo 1°" la, \p ~ \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sol fad
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fad sol
  }
  | \barNumberCheck #140
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 mi re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 re mi
  }
  re8 fad, si4 ~ | % 141
  si4 la r8 fad, si4 ~ | % 142
  si4 la r la'' ~ | % 143
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sol fad
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fad sol
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 mi re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 re mi
  }
  | % 144
  re8 fad, si2 la4 | % 145
  r8 la, mi'2 re4 | % 146
  r4 r8 sol, -. la -. si -. do -. dod -. | % 147
  re4 -. r8 sol -. la -. si -. do -. dod -. | % 148
  re4 -. r8 \clef "tenor" sol -. la -. si -. do -. dod -. | % 149
  re4 -. \clef "bass" r8 <si,, sol'> -. <si sol'> -. <sol' re'> -.
  <sol re'>8 -. <si, sol'> -. | \barNumberCheck #150
  <si sol'>4 -. r8 sol -. la -. si -. do -. dod -. | % 151
  re4 -. r8 sol -. la -. si -. do -. dod -. | % 152
  re4 -. r8 \clef "tenor" sol -. la -. si -. do -. dod -. | % 153
  re4 -. \clef "bass" r8 <si,, sol'> -. <si sol'> -. <sol' re'> -.
  <sol re'>8 -. <si, sol'> -. | % 154
  <do sol'>4 -. r8 do re mi fa fad | % 155
  sol4 r8 do re mi fa fad | % 156
  \clef "tenor" sol4 r8 sol la si do re | % 157
  mi4 r8 <mi,, do'> <mi do'> <do' sol'> <do sol'> <mi, do'> | % 158
  <mi si' sold'>4 r8 \clef "bass" mi, fad sold la lad | % 159
  si4 r8 mi fad sold la lad | \barNumberCheck #160
  si4 r8 \clef "tenor" mi fad sold la lad | % 161
  si4 r8 \clef "bass" <si,, sold'> <si sold'> <sold' mi'> <sold
  mi'>8 <si, sold'> | % 162
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 la' mi'
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 la, do,
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 la' mi'
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 la, do,
  }
  | % 163
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 la' mi'
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 la, do,
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 la' mi'
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 la, do,
  }
  | % 164
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 sol' mi'
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 sol, si,
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 sol' mi'
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 sol, si,
  }
  | % 165
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 sol' mi'
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 sol, si,
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 sol' mi'
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 sol, si,
  }
  | % 166
  <la fa' do'>4 r r2 | % 167
  R1*7 | % 174
  r8 -"E" la' sib si do2 ~ | % 175
  do8 la sib si do2 ~ | % 176
  do8 la sib si do la sib si | % 177
  do8 la sib si do si do dod | % 178
  re2 sol, | % 179
  la2 sib | \barNumberCheck #180
  la4 sib do re | % 181
  do4 re mi fa | % 182
  \clef "tenor" solb2 do, | % 183
  re2 mib | % 184
  re4 mib fa sol | % 185
  fa4 sol la sib | % 186
  sib2 reb, | % 187
  do2 sib | % 188
  \clef "bass" reb,2. mib8 reb | % 189
  do2 sib | \barNumberCheck #190
  fa1 ~ | % 191
  fa4 sib re mib | % 192
  mi4 fa sib re | % 193
  sol2 fa | % 194
  sol,,1 ~ | % 195
  sol4 lab la sib | % 196
  mi4 sol sib mi | % 197
  \clef "tenor" do'2 sib | % 198
  la1 ~ | % 199
  la2 sib | \barNumberCheck #200
  si2 do | % 201
  sol2 fa4 mi | % 202
  mib1 ~ | % 203
  mib4 fa fad sol | % 204
  do,4 \mf reb re mib | % 205
  la,4 \mp sib si \p do | % 206
  do1 \pp | % 207
  fa,2 r \bar "||"
  \key sib \major \time 3/4 R2.*33 | % 241
  fa'2. \pp ( | % 242
  sib2. ) | % 243
  la2. ( \upbow | % 244
  re,2. ) | % 245
  mib4 ( \downbow fa sol ) | % 246
  fa2. ~ \upbow | % 247
  fa2. ~ | % 248
  fa2 sib,4 ( \downbow | % 249
  sib'2. ) ~ | \barNumberCheck #250
  sib4 la8 ( sol fa re ) | % 251
  fa2. ~ | % 252
  fa8 sol ( \upbow la sib fa re ) | % 253
  do2 ( \downbow fa,4 ) | % 254
  sib2 \upbow sib4 ( | % 255
  mib2 ) sib4 ( | % 256
  mib2 ) sib4 ( | % 257
  sol'2 fa8 mib ) | % 258
  re4 ( sib ) sib ( | % 259
  mib4 sol ) sib, ( | \barNumberCheck #260
  mib4 sol sib ) | % 261
  sib4 ( do, fa ) | % 262
  fa4 ( sib, ) fad' | % 263
  sol8 ( mib sib sol' fad4 ) | % 264
  sol8 ( mib sib sol' fad4 ) | % 265
  sol2 ( la4 ) | % 266
  sib4 ( fa ) fad | % 267
  sol8 ( sib sol mib sib sib' ) | % 268
  sol8 ( sib sol mib sib sib' ) | % 269
  sol2 la4 \trill | \barNumberCheck #270
  sib4 r sib, \upbow | % 271
  la8 ( sib do la do4 ) | % 272
  do4 ( sib sib ) -- | % 273
  la8 ( sib do la do4 ) | % 274
  do4 ( sib re ) | % 275
  do8 ( re mib do sol'4 ) | % 276
  sol4 ( re fa ) | % 277
  mib2 ~ \trill mib8 re16 ( mib ) | % 278
  re2 ( re4 ) -- | % 279
  la'2 ( \downbow fad4 ) | \barNumberCheck #280
  sol2 ( re4 ) | % 281
  fa4. ( mib8 re4 ) | % 282
  mib2 ( re4 ) | % 283
  dod4 ( la' dod, ) | % 284
  do4. ( sib8 la4 ) | % 285
  sib8 ( la do sib la sol ) | % 286
  fa'2 ( mib4 ) | % 287
  re2. ~ | % 288
  re2. ~ | % 289
  re2 \clef "bass" sol,,8 ( \upbow la | \barNumberCheck #290
  sib8 re mi sol sib re ) | % 291
  re2. ~ | % 292
  re2. ~ | % 293
  re2 \clef "tenor" sol,8 ( la | % 294
  sib8 re mi ) sol ( sib re ) | % 295
  \clef "treble" re4 ( ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 la fad )
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 ( la re )
  }
  | % 296
  re4 ( ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 la fad )
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 ( la re )
  }
  | % 297
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 -\markup{ \italic {accelerando} } -. la -. fad -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 -. la -. re -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 -. sold -. mid -.
  }
  | % 298
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mid8 -. sold -. dod -.
  }
  \tempo 4=115 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 -. sol -. mi -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 -. sol -. do -.
  }
  | % 299
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 -. fad -. red -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 -. fad -. si -.
  }
  \tempo 4=120 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sib8 -. fa -. re -.
  }
  | \barNumberCheck #300
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 -. fa -. sib -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 -. mi -. dod -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 -. mi -. la -.
  }
  | % 301
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 -. red -. sid -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sid8 -. red -. sold -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 -. re -. si -.
  }
  | % 302
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 -. re -. sol -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 -. dod -. lad -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lad8 -. dod -. fad -.
  }
  | % 303
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 -. do -. la -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 -. do -. fa -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 -. si -. sold -.
  }
  | % 304
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 -. si -. mi -.
  }
  \tempo 4=110 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib8 -. sib -. sol -.
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 -. sib -. mib -.
  }
  | % 305
  \clef "tenor" re2. \trill | % 306
  mib2. \trill | % 307
  mi2. \trill | % 308
  fa2. -"G" ~ \trill \prall | % 309
  fa2. ~ | \barNumberCheck #310
  fa2. ~ | % 311
  fa2. ~ | % 312
  fa2. ~ | % 313
  fa2. ~ | % 314
  fa2. ~ | % 315
  fa2. | % 316
  sib2. ~ \trill | % 317
  sib2. ~ | % 318
  sib2. ~ | % 319
  sib2 la4 | \barNumberCheck #320
  sib2. ~ | % 321
  sib2. ~ | % 322
  sib2 la16 sib do sib | % 323
  \tempo 4=100 | % 323
  fad16 sol la sol \tempo 4=95 re mib fa mib \tempo 4=85
  si16 do \tempo 4=80 re do | % 324
  \tempo 4=110 | % 324
  fa2 sol8 mi | % 325
  sol8 fa fa4 sib | % 326
  mib,2 fa8 re | % 327
  fa8 mib mib4 do | % 328
  fa2 sol8 mi | % 329
  sol8 fa fa sol la sib | \barNumberCheck #330
  mib,2 fa8 re | % 331
  fa8 mib mib do re mib | % 332
  fa4 fad sol ~ | % 333
  sol4 fa8 mib \acciaccatura { re } re do | % 334
  fa4 fad sol ~ | % 335
  sol4 fa8 mib \acciaccatura { re } re do | % 336
  fa4 ( lab2 ) | % 337
  sol4 ( sib2 ) | % 338
  la4 ( do2 ) ~ | % 339
  do4 sib sol | \barNumberCheck #340
  sol8 ( fa sib la sol fa ) | % 341
  mib8 ( re sol fa mib re ) | % 342
  do8 ( sib mib re do sib ) | % 343
  la8 ( sol fad sol sib sol' ) | % 344
  sol2. | % 345
  re2. ~ | % 346
  re2 do4 | % 347
  mib4 re do | % 348
  sib2. ~ | % 349
  sib2. ~ | \barNumberCheck #350
  sib2. ~ | % 351
  sib2. ~ | % 352
  sib2 sib'4 | % 353
  mib,8 fa solb mib solb4 | % 354
  solb4 fa fa | % 355
  mib4 \acciaccatura { fa8 } mib re mib4 | % 356
  re4 sib2 | % 357
  fa'4 re2 | % 358
  reb4 solb2 | % 359
  fa4 re2 | \barNumberCheck #360
  reb4 solb reb | % 361
  re8 mib fa re fa4 | % 362
  mib4 sib sib | % 363
  la4 \acciaccatura { sib8 } la sol la4 | % 364
  sib4 r2 | % 365
  R2.*8 | % 373
  \clef "bass" fa,2. | % 374
  sib2. | % 375
  la2. | % 376
  re,2. | % 377
  mib4 fa sol | % 378
  fa2. ~ | % 379
  fa2. ~ | \barNumberCheck #380
  fa2. ~ | % 381
  fa2. \bar "||"
  \numericTimeSignature\time 4/4  | % 382
  sib4 -"H" r2 r4 | % 383
  R1*6 \bar "||"
  \key do \major R1*10 | % 399
  \clef "tenor" r4 si'' \f ~ \once \override TupletBracket #'stencil
  = ##f
  \times 2/3  {
    si8 la sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sold la
  }
  | \barNumberCheck #400
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 fad mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi fad
  }
  mi8 si sold mi | % 401
  \clef "bass" red8 do la si do la mi fad | % 402
  sold8 la si do mi fad la do | % 403
  si4 \clef "tenor" si' ~ \once \override TupletBracket #'stencil =
  ##f
  \times 2/3  {
    si8 la sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sold la
  }
  | % 404
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 fad mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi fad
  }
  mi8 si sold mi | % 405
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 fa fad
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sold la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si do
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 re red
  }
  | % 406
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 fa fad
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sold la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si do
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 re red
  }
  | % 407
  mi4 r r2 | % 408
  R1*7 | % 415
  r8 mi, \f fa2 mi4 | % 416
  \clef "bass" r8 mi, fa2 mi4 | % 417
  r8 mi, fa2 mi4 | % 418
  r4 mi'' fa2 \mf ~ | % 419
  fa2 \mp \tempo 4=40 mi \p \fermata \bar "||"
  \mark \markup { \box { K } } \tempo 4=90 | \barNumberCheck #420
  r2 -"un peu moins vite" \clef "tenor" mi8 \p la4 sol8 | % 421
  do,8 fa4 mi8 la, re4 do8 | % 422
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si la
  }
  si4 ~ si8 si do re | % 423
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 mi red
  }
  mi4 ~ mi8 fad sold la | % 424
  si4 mi, mi8 la4 sol8 | % 425
  do,8 fa4 mi8 la, re4 do8 | % 426
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si la
  }
  si4 ~ si8 si dod red | % 427
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 mi red
  }
  mi4 ~ mi8 fad sol la \bar "||"
  si2 ~ si8 la mi fad | % 429
  sol8 fad mi2 red4 | \barNumberCheck #430
  mi1 ~ | % 431
  mi1 ~ | % 432
  mi2 mi8 \pp la4 sol8 | % 433
  do,8 fa4 mi8 sol, re'4 do8 | % 434
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 sib la
  }
  sib4 ~ sib8 re do sib | % 435
  sib8 la sold la dod mi4 sol8 | % 436
  sol4 fa fa8 \mf do re red | % 437
  mi8 si do dod re mi16 re do8 si | % 438
  do4 fa ~ fa8 do re red | % 439
  mi8 si do dod re mi16 re do8 si | \barNumberCheck #440
  \tempo 4=95 | \barNumberCheck #440
  do4 mi re fa | % 441
  mi4 sol fa \f la | % 442
  \times 2/3  {
    la4 la, do
  }
  \times 2/3  {
    mi4 la si
  }
  | % 443
  do2. \tempo 4=100 si4 | % 444
  la4 r r2 | % 445
  R1*3 | % 448
  r4 si,16 lad si dod red dod red mi fad fa fad
  sol16 | % 449
  la16 fad fa mi red fad la si do si do si re
  do16 si la | \barNumberCheck #450
  sol16 si la sol fad la sol fad mi sol fad mi
  mi16 sol fad mi | % 451
  re16 fad mi re dod mi re dod si mi re dod lad
  dod16 si lad | % 452
  si4 r r2 | % 453
  R1*3 | % 456
  r4 dod16 do dod red fa mi fa fad sold sol sold
  la16 | % 457
  si16 sold sol fad fa sold si dod re dod re dod
  mi16 re dod si | % 458
  la16 dod si la sold si la sold fad la sold fad
  mi16 sold fad mi | % 459
  fad16 la sol fad mi sol fad mi re fad mi re
  dod16 mi re dod | \barNumberCheck #460
  fad16 la, si dod re dod re mi fad la, si dod
  re16 dod re mi | % 461
  fad16 la, si dod re dod re mi fad r dod re mi
  fad16 sol la | % 462
  sib16 dod, dod sib' dod mi, mi dod' mi sol, sol
  mi'16 red fad, fad red' | % 463
  re16 fa, fa re' dod mi, mi dod' sib dod, dod
  sib'16 sol sib, sib sol' | % 464
  fad16 la, si dod re dod re mi fad la, si dod
  re16 dod re mi | % 465
  fad16 la, si dod re dod re mi fad r dod re mi
  fad16 sol la | % 466
  si16 red, red si' red fad, fad red' fad la, la
  fad'16 fa sold, sold fa' | % 467
  mi16 sol, sol mi' red fad, fad red' si red, red
  si'16 la si, si la' | % 468
  sol4 r r2 | % 469
  R1 | \barNumberCheck #470
  lab16 si, si lab' si re, re si' re fa, fa re'
  fa16 lab, lab fa' | % 471
  re16 fa, fa re' si re, re si' lab si, si lab'
  fa16 lab, lab fa' | % 472
  \clef "tenor" mi16 sol, la si do si do re mi sol,
  la16 si do si do re | % 473
  mi16 sol, la si do si do re mi r do re mi fa
  sol16 la | % 474
  \clef "treble" sib16 dod, dod sib' dod mi, mi dod' mi
  sol,16 sol mi' sol sib, sib sol' | % 475
  mi16 sol, sol mi' dod mi, mi dod' sib re, re
  sib'16 la dod, dod la' | % 476
  fa8 r la4 ~ la8. mi16 mi8. fa16 | % 477
  \clef "tenor" fa8. dod16 dod8. re16 re8. sold,16 sold8. la16 | % 478
  la8. mi16 mi8. fa16 fa8 r \clef "bass" re,4 | % 479
  re16 mi fa sol la si dod re mi fa sol la si
  si32 dod re mi fa sol | \barNumberCheck #480
  la8 r la4 ~ la8. red,16 red8. mi16 | % 481
  mi8. si16 si8. do16 do8. sold16 sold8. la16 | % 482
  la8. red,16 red8. mi16 mi8 r do,4 ~ | % 483
  do16 re mi fad32 sold la16 si do re mi fad sold32 la16
  si16 do re mi32 fad sold | % 484
  la8 r \clef "treble" <la, la'>4 ~ ~ <la la'>8. <lad lad'>16 <lad
  lad'>8. <si si'>16 | % 485
  <si si'>8. <do do'>16 <do do'>8. <si si'>16 <si si'>8. <lad lad'>16
  <lad lad'>8. <la la'>16 | % 486
  <la la'>4. <fad' fad'>8 <fad fad'>2 | % 487
  <fad fad'>16 <fad fad'> <fa fa'> <fa fa'> <mi mi'> <mi mi'>
  <red red'>16 <red red'> <re re'> <re re'> <do do'> <do do'>
  <si si'>16 <si si'> <la la'> <la la'> | % 488
  <sold sold'>8 -"N" r r4 r2 | % 489
  R1*9 | % 498
  r8 do,,16 \p re mi fa sol8 r do,16 re mi fa sol8 | % 499
  r8 do,16 re mi fa sol8 r do,16 re mi fa sol8 |
  \barNumberCheck #500
  R1*4 | % 504
  do,4 -"O" \mf fa la do | % 505
  reb4 sol fa mi | % 506
  fa4 la, do reb | % 507
  do2 ~ do8 r r4 | % 508
  do,4 fa la do | % 509
  reb4 sol fa mi | \barNumberCheck #510
  fa4 la, do \acciaccatura { mib8 } reb4 | % 511
  do2 do8 r r4 | % 512
  mib,2 re | % 513
  \times 2/3  {
    re4 fad la
  }
  \times 2/3  {
    re4 fad la
  }
  | % 514
  do2 sib ~ | % 515
  sib4 r r2 | % 516
  fa,2 mi ~ | % 517
  \times 2/3  {
    mi4 sold si
  }
  mi8 sold si re | % 518
  re2 do | % 519
  r2 la, | \barNumberCheck #520
  sol2 fad ~ | % 521
  fad4 sol re sol | % 522
  fa2 mi ~ | % 523
  mi4 fa do fa | % 524
  mi2 re ~ | % 525
  re2 reb | % 526
  do2 ~ \times 2/3 {
    do4 re mi
  }
  | % 527
  \times 2/3  {
    fa4 sol la
  }
  \times 2/3  {
    sib4 si do
  }
  | % 528
  reb2 ~ \times 2/3 {
    reb4 mib mi
  }
  | % 529
  \times 2/3  {
    fa4 solb lab
  }
  \times 2/3  {
    sib4 do reb
  }
  | \barNumberCheck #530
  \clef "tenor" | \barNumberCheck #530
  \times 2/3  {
    re4 -"Rit. poco a poco ad lib." mi fad
  }
  \times 2/3  {
    sol4 la si
  }
  | % 531
  \clef "treble" | % 531
  \times 2/3  {
    dod4 \mf re mi
  }
  \times 2/3  {
    fad4 sol la
  }
  | % 532
  \times 2/3  {
    sib4 do re
  }
  \times 2/3  {
    mib4 \mp fa fad
  }
  | % 533
  \times 2/3  {
    sol4 la sib
  }
  \times 2/3  {
    do4 re mi
  }
  | % 534
  fa4 r r2 | % 535
  R1*7 | % 542
  \clef "tenor" | % 542
  sold,,,16 \f si, dod red mi red mi fad sold si,
  dod16 red mi red mi fad | % 543
  sold16 si, dod red mi red mi fad sold r red mi
  fad16 sold la si | % 544
  \clef "treble" do16 red, red do' red fad, fad red' fad
  la,16 la fad' fa sold, sold fa' | % 545
  mi16 sol, sol mi' red fad, fad red' do red, red
  do'16 la do, do la' | % 546
  \clef "tenor" sold16 si, dod red mi red mi fad sold
  si,16 dod red mi red mi fad | % 547
  sold16 si, dod red mi red mi fad sold r red mi
  fad16 sold la si | % 548
  \clef "treble" do16 red, red do' red fad, fad red' fad
  la,16 la fad' la do, do la' | % 549
  fad16 la, la fad' red fad, fad red' do red, red
  do'16 la do, do la' | \barNumberCheck #550
  sold8 r mi16 fad sold la si la sold fad sold la
  si16 sold | % 551
  la16 si la sold fad sold la si do si la sold
  la16 si do la | % 552
  si16 do si la sold la si do re do si la si
  do16 re si | % 553
  do16 re do si la si do re mi re do si do re
  mi16 do | % 554
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 mi fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si,8 do re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 re mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la,8 si do
  }
  | % 555
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 do re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold,8 la si
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 si do
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad,8 sold la
  }
  | % 556
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 la si
  }
  si4 ~ si8 fa mi re | % 557
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 la si
  }
  si4 ~ si8 fa mi re | % 558
  \times 2/3  {
    re'4 dod do
  }
  \times 2/3  {
    si4 lad la
  }
  | % 559
  \times 2/3  {
    sold4 sol fad
  }
  fa4 \fermata mi | \barNumberCheck #560
  r2 \clef "tenor" mi8 \p la4 sol8 | % 561
  do,8 fa4 mi8 la, re4 do8 | % 562
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si la
  }
  si4 ~ si8 si do re | % 563
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 mi red
  }
  mi4 ~ mi8 fad sold la | % 564
  si4 mi, mi8 la4 sol8 | % 565
  do,8 fa4 mi8 la, re4 do8 | % 566
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si la
  }
  si4 ~ si8 si dod red | % 567
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 mi red
  }
  mi4 ~ mi8 fad sol la | % 568
  si2 ~ si8 la mi fad | % 569
  sol8 fad mi2 red4 | \barNumberCheck #570
  mi1 ~ | % 571
  mi1 ~ | % 572
  mi2 mi8 \pp la4 sol8 | % 573
  do,8 fa4 mi8 sol, re'4 do8 | % 574
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 sib la
  }
  sib4 ~ sib8 re do sib | % 575
  sib8 la sold la dod mi4 sol8 | % 576
  sol4 fa fa8 \mf do re red | % 577
  mi8 si do dod re mi16 re do8 si | % 578
  do4 fa ~ fa8 do re red | % 579
  mi8 si do dod re mi16 re do8 si | \barNumberCheck #580
  do4 mi re fa | % 581
  mi4 sol fa \f la | % 582
  \times 2/3  {
    la4 la, do
  }
  \times 2/3  {
    mi4 la si
  }
  | % 583
  do2. si4 | % 584
  la8 r r4 r2 | % 585
  R1*7 | % 592
  r2 -"R" dod,4 re | % 593
  red4 mi la sold | % 594
  sol4 re si dod | % 595
  re4 mi8 re dod4 si | % 596
  fad'2 mi4 red | % 597
  fad4 mi re dod | % 598
  mi4 re la si | % 599
  dod2 mi4. re8 | \barNumberCheck #600
  dod4 r dod re | % 601
  red4 mi la sold | % 602
  sol4 re si dod | % 603
  re4 mi8 re dod4 si | % 604
  fad'2 mi4 red | % 605
  fad4 mi re dod | % 606
  mi4 re la si | % 607
  dod2 mi4. re8 | % 608
  dod4 re2 red4 ~ | % 609
  red4 mi2 mid4 ~ | \barNumberCheck #610
  mid4 fad2 la4 ~ | % 611
  la4 si, mi re | % 612
  dod4 re2 red4 ~ | % 613
  red4 mi2 mid4 ~ | % 614
  mid4 fad2 la4 ~ | % 615
  la4 si, mi re | % 616
  dod4 re2 red4 ~ | % 617
  red4 mi2 mid4 ~ | % 618
  mid4 fad2 la4 ~ | % 619
  la4 dod2 dod4 | \barNumberCheck #620
  \times 2/3  {
    dod4 si la
  }
  \times 2/3  {
    sold4 fad mi
  }
  | % 621
  \times 2/3  {
    la4 sold fad
  }
  \times 2/3  {
    mi4 re dod
  }
  | % 622
  \times 2/3  {
    fad4 mi re
  }
  \times 2/3  {
    dod4 si la
  }
  | % 623
  \times 2/3  {
    re4 dod si
  }
  \times 2/3  {
    la4 sold fad
  }
  | % 624
  si8 si dod dod re re mi mi | % 625
  fad8 fad sold sold la la si si | % 626
  sold8 sold la la si si dod dod | % 627
  re8 re mi mi fad fad sold sold | % 628
  la4 r r2 | % 629
  R1*6
}

PartPTwoVoiceOne =  \relative la' {
  \clef "treble" \key do \major \numericTimeSignature\time 2/2 <la do
  mi la>8 r <la, do>16 \p mi' <la, do> mi' <la, do> mi'
  <la, do>16 mi' <la, do> mi' <la, do> mi' | % 2
  <la, do>16 mi' <la, do> mi' <la, do> mi' <la, do> mi'
  <la, do>16 mi' <la, do> mi' <la, do> red <la do> red | % 3
  <la do>16 red <la do> red <la do> mi' <la, do> mi'
  <la, do>16 mi' <la, do> mi' <la, do> red <la do> red | % 4
  <la do>16 red <la do> red <la do> mi' <la, do> mi' <la
  do mi la>8 r <la, do>16 \p mi' <la, do> mi' | % 5
  <la, do>16 mi' <la, do> mi' <la, do> mi' <la, do> mi'
  <la, do>16 mi' <la, do> mi' <la, do> mi' <la, do> mi'
  | % 6
  <la, do>16 mi' <la, do> mi' <la, do> red <la do> red
  <la do>16 red <la do> red <la do> mi' <la, do> mi' | % 7
  <la, do>16 mi' <la, do> mi' <la, do> red <la do> red
  <la do>16 red <la do> red <la do> mi' <la, do> mi' | % 8
  <la, re>16 fa' <la, re> fa' <la, re> fa' <la, re> fa'
  <la, re>16 fa' <la, re> fa' <la, re> fa' <la, re> fa'
  | % 9
  re16 fa re fa re fa re fa re fa re fa re fa
  re16 fa | \barNumberCheck #10
  <la, re>16 fa' <la, re> fa' <la, re> fa' <la, re> fa'
  <la, re>16 fa' <la, re> fa' <la, re> fa' <la, re> fa'
  | % 11
  re16 fa re fa re fa re fa re fa re fa re fa
  re16 fa | % 12
  <la, do>16 <fad' la> <la, do> <fad' la> <la, do> <fad' la>
  <la, do>16 <fad' la> <la, do> <fad' la> <la, do> <fad' la>
  <la, do>16 <fad' la> <la, do> <fad' la> | % 13
  <la, do>8 r r4 r2 | % 14
  R1 | % 15
  r4 <fad'' la do fad>2 <do, fa>16 la <do fa> la | % 16
  <sold si mi>8 r r4 r2 | % 17
  r4 <la' si>2 <la si>4 | % 18
  <sold si>8 r r4 r2 | % 19
  r4 <la si la' si>2 <la si la' si>4 | \barNumberCheck #20
  <sold si sold' si>8 r r4 r2 | % 21
  R1*3 | % 24
  <do, mi>4 \p \arpeggio \arpeggio mi'' ~ \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 re do
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 do re
  }
  | % 25
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 la si
  }
  la8 mi fa4 ~ | % 26
  fa4 mi r2 | % 27
  r2. mi'4 ~ | % 28
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 re do
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 do re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 la si
  }
  | % 29
  la8 mi fa2 mi4 | \barNumberCheck #30
  R1 | % 31
  r4 <do fa do'> ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do'8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 la sib
  }
  | % 32
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sol fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa sol
  }
  fa8 do fa \sf mi | % 33
  r4 <do fa do'> ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do'8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 la sib
  }
  | % 34
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 \mf sol fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa sol
  }
  fa8 do fa \sf mi | % 35
  r4 <la,, do fa la do fa do'> ~ ~ ~ ~ ~ ~ ~ \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    <la do fa la do fa do'>8 <sib' sib'> <la la'>
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <sol sol'>8 <la la'> <sib sib'>
  }
  | % 36
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <la la'>8 <sol sol'> <fa fa'>
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <mi mi'>8 <fa fa'> <sol sol'>
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <fa fa'>8 <re re'> <do do'>
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <si si'>8 <do do'> <re re'>
  }
  | % 37
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do'8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 la sib
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sol fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa sol
  }
  | % 38
  fa8 do la sib si do fa mi | % 39
  red4 <red do' fad la> <mi si' mi sold> mi | \barNumberCheck #40
  dod4 <dod sib' mi sol> <re la' re fad> re | % 41
  si4 <si lab' re fa> r <do sol' do mi> | % 42
  r4 <re' mi si' re> r <do mi la do> | % 43
  <si mi sold si>4 <sold, si>16 mi' <sold, si> mi' <sold, si>
  mi'16 <sold, si> mi' <sold, si> mi' <sold, si> mi' | % 44
  <sold, si>16 mi' <la, si> mi' <sold, si> mi' <la, si>
  mi'16 <sold, si> mi' <la, si> mi' <sold, si> mi' <la,
  si>16 mi' | % 45
  <la, do mi>4 r <fad' red'>2 | % 46
  <fad red'>1 | % 47
  <sold, si>16 mi' <sold, si> mi' <sold, si> mi' <sold, si>
  mi'16 <sold, si> mi' <sold, si> mi' <sold, si> mi'
  <sold, si>16 mi' | % 48
  <sold, si>16 mi' <sold, si> mi' <sold, si> mi' <sold, si>
  mi'16 <sold, si> mi' <sold, si> mi' <sold, si> mi'
  <sold, si>16 mi' | % 49
  <la, do fa>4 r <fa' fa'>2 | \barNumberCheck #50
  <la fa'>1 | % 51
  <la, do>16 fad' <la, do> fad' <la, do> fad' <la, do>
  fad'16 <la, do> fad' <la, do> fad' <la, do> fad' <la,
  do>16 fad' | % 52
  <la, do>16 fad' <la, do> fad' <la, do> fad' <la, do>
  fad'16 <la, do> fad' <la, do> fad' <la, do> fad' <la,
  do>16 fad' | % 53
  <la, do fad>4 do'' \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 la si
  }
  | % 54
  la8 fad do la fad do si la | % 55
  <la do mi>4 r red mi | % 56
  <do' la' do>4 r red, mi | % 57
  <do' la' do>4 \pp r r2 | % 58
  R1 | % 59
  mi,1 | \barNumberCheck #60
  mi1 | % 61
  fa1 | % 62
  fa1 | % 63
  <do mib>2 <mib solb> | % 64
  <re fa>2 <do mib> | % 65
  <re fa>1 | % 66
  <re fa>1 | % 67
  mi1 | % 68
  mi1 | % 69
  mi1 | \barNumberCheck #70
  mi1 | % 71
  <mi sol>1 | % 72
  <mi sol>1 | % 73
  <re fad>1 | % 74
  <do fa>1 | % 75
  <la do mi>1 | % 76
  <la do mi>1 | % 77
  r4 mib'' \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib8 re do
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 do re
  }
  | % 78
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 la sib
  }
  la8 mib re do | % 79
  sib4 r r2 | \barNumberCheck #80
  r4 <do mib>2 <do mib>4 | % 81
  <sib re>4 r r2 | % 82
  r4 <fad' do' mib>2 <fad do' mib>4 | % 83
  <sol sib re>4 r r2 | % 84
  R1*3 | % 87
  <sol re' fa sol>4 r r2 | % 88
  R1*3 | % 91
  <fa la do>16 fa' <fa, la do> fa' <fa, la do> fa' <fa, la
  do>16 fa' <fa, la do> fa' <fa, la do> fa' <fa, la do>
  fa'16 <fa, la do> fa' | % 92
  <fa, sol si fa'>4 \p r r2 | % 93
  <fa la do>16 \f fa' <fa, la do> fa' <fa, la do> fa' <fa,
  la do>16 fa' <fa, la do> fa' <fa, la do> fa' <fa, la
  do>16 fa' <fa, la do> fa' | % 94
  <fa, sol si fa'>4 \p r r2 | % 95
  <fa si fad'>4 r <fa si sol'> r | % 96
  <fa si lab'>4 r <fa si sol'> r | % 97
  <fa si fad'>4 r <fa si sol'> r | % 98
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do'8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 la sib
  }
  la4 r | % 99
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 do sib
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sib do
  }
  sib4 r | \barNumberCheck #100
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 do sib
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sib do
  }
  sib4 r | % 101
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 re do
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 do re
  }
  do4 r | % 102
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 mib re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 re mib
  }
  re4 r | % 103
  <sol, re' fa>4 r r2 | % 104
  R1*3 | % 107
  <sol sib mi>4 r r2 | % 108
  R1 | % 109
  <do mi do'>4 \f \arpeggio \arpeggio \arpeggio r r2 |
  \barNumberCheck #110
  R1 \bar "||"
  \key fa \major <la do fa>2. <do sol' do>4 | % 112
  <do fa la>4 sib' sold la | % 113
  fad4 sol mi fa | % 114
  <re, fa sol>4. <fa sol>8 <mi sol do>4. <mi sol do>8 | % 115
  <fa la>4 <fa la do fa>2 <sol' do>8 do, | % 116
  <fa la>8 do <fa sib> sib, <mi sold> si <mi la> la, | % 117
  <re fad>8 la <re sol> sol, <do mi> sol <do fa> fa, | % 118
  <re fa sol>4. <fa sol>8 <mi sol do>4. <mi sol do>8 | % 119
  la8 sib do re do re mi sol | \barNumberCheck #120
  fa8 sol la sib sib sol mi sib | % 121
  la8 sib do re do re mi sol | % 122
  fa8 sol la sib sib sol mi sib | % 123
  la4 <la la'> <do do'> <dod dod'> | % 124
  <re fa re'>4 <fa, fa'> <sold sold'> <la la'> | % 125
  <sib re sib'>4 <re, re'> <fa fa'> <sold fad'> | % 126
  <sol sib sol'>4 sol sib re | % 127
  re4 reb2 do4 | % 128
  do4 sib2 la4 | % 129
  la4 re,2 fa4 | \barNumberCheck #130
  fa4 fa2 mi4 | % 131
  <la, do fa>1 | % 132
  <sol do sol'>1 | % 133
  <do fa la>1 | % 134
  <sib fa' sib>1 | % 135
  <si fa' lab si>1 ~ ~ ~ ~ | % 136
  <si fa' lab si>1 <fa'' si> ~ ~ | % 138
  <fa si>1 \bar "||"
  \key do \major | % 139
  <la, re fad la>4 \p <la, re>16 \pp fad' <la, re> fad' <la, re>
  fad'16 <la, re> fad' <la, re> fad' <la, re> fad' |
  \barNumberCheck #140
  <la, re>16 fad' <la, re> fad' <la, re> fad' <la, re>
  fad'16 <la, re> fad' <la, re> fad' <la, re> fad' <la,
  re>16 fad' | % 141
  <la, re>16 fad' <la, re> fad' <la, re> fad' <la, re>
  fad'16 <la, re> fad' <la, re> fad' <la, re> fad' <la,
  re>16 fad' | % 142
  <la, re>16 fad' <la, re> fad' <la, re> sol' <la, re>
  fad'16 <la, re> fad' <la, re> fad' <la, re> fad' <la,
  re>16 fad' | % 143
  <re' fad re'>4 <la, re>16 fad' <la, re> fad' <la, re> fad'
  <la, re>16 fad' <la, re> fad' <la, re> fad' | % 144
  <la, re>16 fad' <la, re> fad' <la, re> fad' <la, re>
  fad'16 <la, re> fad' <la, re> fad' r8 fad' | % 145
  la4 r8 la re4 r | % 146
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re, sol re'>8 \pp do' si
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 si do
  }
  si4 r | % 147
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re,, sol re'>8 do' si
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 si do
  }
  si4 r | % 148
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re, sol re'>8 do' si
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 si do
  }
  si4 r | % 149
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <sol, si re>8 do si
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 si do
  }
  si4 r | \barNumberCheck #150
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re' sol re'>8 do' si
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 si do
  }
  si4 r | % 151
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 la sol
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sol la
  }
  sol4 r | % 152
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re, sol re'>8 do' si
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 si do
  }
  si4 r | % 153
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re, si'>8 la' sol
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sol la
  }
  sol4 r | % 154
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <sol' do sol'>8 fa' mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 mi fa
  }
  mi4 r | % 155
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <sol,, do sol'>8 fa' mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 mi fa
  }
  mi4 r | % 156
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <mi, sol mi'>8 re' do
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 do re
  }
  do4 r | % 157
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi,8 re do
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 do re
  }
  do4 r | % 158
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <si' mi si'>8 la' sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sold la
  }
  sold4 r | % 159
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si,8 la sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sold la
  }
  sold4 r | \barNumberCheck #160
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <si mi sold>8 fad' mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi fad
  }
  mi4 r | % 161
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold,8 fad mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi fad
  }
  mi4 r | % 162
  r4 mi'8 la la sold sold si | % 163
  si8 la la fad' <fad, fad'>4 <mi mi'> | % 164
  r4 mi8 la la sol sol do | % 165
  do8 si si fad' fad4 mi | % 166
  r4 <do, fa do'> ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do'8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 la sib
  }
  | % 167
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sol fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa sol
  }
  fa8 do <sol reb' fa> mi' | % 168
  r4 <do fa do'> ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do'8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 la sib
  }
  | % 169
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sol fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa sol
  }
  fa8 do <sol reb' fa> mi' | \barNumberCheck #170
  r4 <la,, do fa la do fa do'> ~ ~ ~ ~ ~ ~ ~ \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    <la do fa la do fa do'>8 <sib' sib'> <la la'>
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <sol sol'>8 <la la'> <sib sib'>
  }
  | % 171
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <la la'>8 <sol sol'> <fa fa'>
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <mi mi'>8 <fa fa'> <sol sol'>
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <fa fa'>8 <re re'> <do do'>
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <si si'>8 <do do'> <re re'>
  }
  | % 172
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do'8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 la sib
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sol fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa sol
  }
  | % 173
  fa8 do la sib si do fa mi | % 174
  red4 r r2 | % 175
  <fad la do fad>8 r r4 r2 | % 176
  <mi la do mi>8 r r4 r2 | % 177
  R1 | % 178
  <sib mi>1 | % 179
  mi1 | \barNumberCheck #180
  <la, do fa>1 | % 181
  <la do fa>1 | % 182
  la1 | % 183
  la1 | % 184
  <sib re>1 ~ ~ | % 185
  <sib re>1 | % 186
  <reb mi>1 \pp ~ ~ | % 187
  <reb mi>1 | % 188
  <reb mi>1 ~ ~ | % 189
  <reb mi>1 | \barNumberCheck #190
  r4 <re fa> <re fa> <re fa> | % 191
  <re fa>4 r r2 | % 192
  <sib' re>1 ~ ~ | % 193
  <sib re>1 | % 194
  r4 <do, mi> <do mi> <do mi> | % 195
  <do mi>4 r r2 | % 196
  <sib' sol'>1 | % 197
  <sib sol'>1 | % 198
  <do, mib>1 | % 199
  <do mib>1 | \barNumberCheck #200
  <do mib>1 | % 201
  <do mib>1 | % 202
  R1*6 \bar "||"
  \key sib \major \time 3/4 r4 r <re fa sib fa'> -. | % 209
  <do fa sib mib>8 -. <re fa sib fa'> -. <mib sib' sol'> -. <do sib'
  mib>8 -. <mib fa sib sol'>4 -. | \barNumberCheck #210
  <mib fa sib sol'>4 -. <re fa sib fa'> -. <sib fa' sib re> -. | % 211
  <do fa sib mib>4 -. \acciaccatura { fa'8 } <do, fa sib mib> -. <sib
  fa' sib re>8 -. <do fa sib mib>4 -. | % 212
  <do fa sib mib>2 -. <re fa sib fa'>4 -. | % 213
  <do fa sib mib>8 -. <re fa sib fa'> -. <mib fa sib sol'> -. <do fa
  sib mib>8 -. <mib fa sib sol'>4 -. | % 214
  <mib fa sib sol'>4 -. <re fa sib fa'> -. <sib fa' sib re> -. | % 215
  <do fa sib mib>4 -. \acciaccatura { fa'8 } <sol, mib'> -. re' -.
  <fa,, fa' la mib'>4 -. | % 216
  <sib fa' sib re>2 -. <re fa sib fa'>4 -. | % 217
  <do fa sib mib>8 -. <re fa sib fa'> -. <mib sib' sol'> -. <do sib'
  mib>8 -. <mib fa sib sol'>4 -. | % 218
  <mib fa sib sol'>4 -. <re fa sib fa'> -. <sib fa' sib re> -. | % 219
  <do fa sib mib>4 -. \acciaccatura { fa'8 } <do, fa sib mib> -. <sib
  fa' sib re>8 -. <do fa sib mib>4 -. | \barNumberCheck #220
  <do fa sib mib>2 -. <re fa sib fa'>4 -. | % 221
  <do fa sib mib>8 -. <re fa sib fa'> -. <mib fa sib sol'> -. <do fa
  sib mib>8 -. <mib fa sib sol'>4 -. | % 222
  <mib fa sib sol'>4 -. <re fa sib fa'> -. <sib fa' sib re> -. | % 223
  <do fa sib mib>4 -. \acciaccatura { fa'8 } <sol, mib'> -. re' -.
  <fa,, fa' la mib'>4 -. | % 224
  <sib fa' sib re>2 -. <sib fa' sib re>4 ~ | % 225
  <mib sol re'>4 do' <sib, fa' sib re> ~ | % 226
  <mib sol re'>4 do' <sib, fa' re'> | % 227
  <mib sol sib do>8 -. <re sol sib re> -. <do sol' sib mib>4 -. <fa
  la do>4 -. | % 228
  <sib, fa' sib re>4 -. <re' fa> -. <sib, fad' sib re> ~ | % 229
  <mib sol re'>4 do' <sib, fad' sib re> ~ | \barNumberCheck #230
  <mib sol re'>4 do' <sib re> | % 231
  <mib, sol sib do>8 -. <re sol sib re> -. <do sol' sib mib>4 -. <fa,
  mib' la do>4 -. | % 232
  <sib re sib'>4 -. s <sib fa' sib> -. | % 233
  <mib sol sib>4 -. r <sib fa' sib> -. | % 234
  <mib sol sib>4 -. r <sib fa' sib> -. | % 235
  <mib sol sib>4 -. <mib sol>8 re <fa, do'> fa' | % 236
  <sib, fa'>8 re re4 <sib fad' sib> -. | % 237
  <mib sol sib>4 -. r <sib fad' sib> -. | % 238
  <mib sol sib>4 -. r <sib fad' sib> -. | % 239
  <mib sol sib>4 -. mib8 re <fa, do'> mib' | \barNumberCheck #240
  <sib re>4 s2 | % 241
  R2.*5 | % 246
  r4 r <re fa sib fa'> -. | % 247
  <do fa sib mib>8 -. <re fa sib fa'> -. <mib sib' sol'> -. <do sib'
  mib>8 -. <mib fa sib sol'>4 -. | % 248
  <mib fa sib sol'>4 -. <re fa sib fa'> -. <sib fa' sib re> -. | % 249
  <do fa sib mib>4 -. \acciaccatura { fa'8 } <do, fa sib mib> -. <sib
  fa' sib re>8 -. <do fa sib mib>4 -. | \barNumberCheck #250
  <do fa sib mib>2 -. <re fa sib fa'>4 -. | % 251
  <do fa sib mib>8 -. <re fa sib fa'> -. <mib fa sib sol'> -. <do fa
  sib mib>8 -. <mib fa sib sol'>4 -. | % 252
  <mib fa sib sol'>4 -. <re fa sib fa'> -. <sib fa' sib re> -. | % 253
  <do fa sib mib>4 -. \acciaccatura { fa'8 } <sol, mib'> -. re' -.
  <fa,, fa' la mib'>4 -. | % 254
  <sib fa' sib re>2 -. <sib fa' sib re>4 ~ | % 255
  <mib sol re'>4 do' <sib, fa' sib re> ~ | % 256
  <mib sol re'>4 do' <sib, fa' re'> | % 257
  <mib sol sib do>8 -. <re sol sib re> -. <do sol' sib mib>4 -. <fa
  la do>4 -. | % 258
  <sib, fa' sib re>4 -. <re' fa> -. <sib, fad' sib re> ~ | % 259
  <mib sol re'>4 do' <sib, fad' sib re> ~ | \barNumberCheck #260
  <mib sol re'>4 do' <sib re> | % 261
  <mib, sol sib do>8 -. <re sol sib re> -. <do sol' sib mib>4 -. <fa,
  mib' la do>4 -. | % 262
  <sib re sib'>4 -. s <sib fa' sib> -. | % 263
  <mib sol sib>4 -. r <sib fa' sib> -. | % 264
  <mib sol sib>4 -. r <sib fa' sib> -. | % 265
  <mib sol sib>4 -. <mib sol>8 re <fa, do'> fa' | % 266
  <sib, fa'>8 re re4 <sib fad' sib> -. | % 267
  <mib sol sib>4 -. r <sib fad' sib> -. | % 268
  <mib sol sib>4 -. r <sib fad' sib> -. | % 269
  <mib sol sib>4 -. mib8 re <fa, do'> mib' | \barNumberCheck #270
  <sib re>4 r2 | % 271
  r4 <re fad re'> <la re fad> | % 272
  r4 <re sol re'> <sib re sol> | % 273
  r4 <re fad re'> <la re fad> | % 274
  r4 <re sol re'> <sib re sol> | % 275
  r4 <sol' do mib> <do, mib sol> | % 276
  r4 <fa sol re'> <re fa sol> | % 277
  r4 <mib sol do> <do mib sol> | % 278
  r4 <re la' re> <la re la'> | % 279
  r4 <fad' la re> r | \barNumberCheck #280
  r4 <sol re'> r | % 281
  r4 <sol re' sol> r | % 282
  r4 sol2 | % 283
  <dod, sol'>2. | % 284
  <do re la'>2. | % 285
  <sib re>4 <do fad> <re sol> | % 286
  <sol, sol'>2. | % 287
  <la re fad>4 r <re la' re fad> | % 288
  <sol sib re mi>2 <re la' re fad>4 | % 289
  <sol sib re mi>2. | \barNumberCheck #290
  R2. | % 291
  r4 r <re la' re fad> | % 292
  <sol sib re mi>2 <re la' re fad>4 | % 293
  <sol sib re mi>2. | % 294
  R2. | % 295
  \acciaccatura { re,8 } <re' la' re fad>2. ~ ~ ~ ~ | % 296
  <re la' re fad>2. ~ ~ ~ ~ | % 297
  <re la' re fad>4 r2 | % 298
  R2.*10 | % 308
  r4 r <sib' fa'> | % 309
  <sib mib>8 <sib fa'> <sib sol'> <sib mib> <sib sol'>4 |
  \barNumberCheck #310
  <sib sol'>4 <sib fa'> <sib re> | % 311
  <sib mib>4 <sib mib>8 <sib re> <sib mib>4 | % 312
  <sib mib>2 <sib fa'>4 | % 313
  <sib mib>8 <sib fa'> <sib sol'> <sib mib> <sib sol'>4 | % 314
  <sib sol'>4 <sib fa'> <sib re> | % 315
  <sib mib>4 <sol mib'>8 re' <la mib'>4 | % 316
  re2 <sib re>4 | % 317
  <sib do>2 <sib re>4 | % 318
  <sib do>2 <sib re>4 | % 319
  <sib do>8 <sib re> <sib mib>4 <la do> | \barNumberCheck #320
  <sib re>4 <re fa> <re re'>8 <sib sib'> | % 321
  <re sol sib re>8 <do do'> <do do'>4 <re re'>8 <sib sib'> | % 322
  <re sol sib re>8 <do do'> <do do'>4 r | % 323
  R2. <sib, re>8 <do mib> <re fa>4 <sib re> | % 325
  r4 <sib' re>8 <do mib> <re fa>4 | % 326
  <la, do>8 <sib re> <do mib>4 <la do> | % 327
  r4 <la' do>8 <sib re> <do mib>4 | % 328
  <sib, re>8 <do mib> <re fa>4 <sib re> | % 329
  r4 <sib' re>8 <do mib> <re fa>4 | \barNumberCheck #330
  <la, do>8 <sib re> <do mib>4 <la do> | % 331
  r4 <do' mib do'>8 <sib re sib'> <la do la'>4 | % 332
  sib2. | % 333
  sib4 la2 | % 334
  sib2. | % 335
  sib4 la2 | % 336
  r8 fa do' si mib re | % 337
  r8 sol, re' dod fa mi | % 338
  r8 la, mi' re sol fad | % 339
  <la, la'>8 <sol sol'> <fad fad'> <sol sol'> <la la'> <sib sib'>
  | \barNumberCheck #340
  sib'4 r2 | % 341
  <sib, re>2. | % 342
  <sol sib re>2. ~ ~ ~ | % 343
  <sol sib re>2. | % 344
  <mib' sol do>2. ~ ~ ~ | % 345
  <mib sol do>2. | % 346
  <re fa dob'>2. ~ ~ ~ | % 347
  <re fa dob'>4 r r | % 348
  r4 r <re sib'> | % 349
  <re lab'>8 <re sib'> <re dob'> <re lab'> <re dob'>4 |
  \barNumberCheck #350
  <reb dob'>4 <reb sib'> <reb sib'> | % 351
  <re lab'>8 <re sib'> <re dob'> <re lab'> <re dob'>4 | % 352
  <reb dob'>4 <reb sib'> r | % 353
  <la do>4 r2 | % 354
  <sib re>4 r2 | % 355
  <la do solb'>4 r2 | % 356
  <sib re fa>4 r2 | % 357
  <fa re' fa>4 r2 | % 358
  <solb reb' solb>4 r2 | % 359
  <fa re' fa>4 r2 | \barNumberCheck #360
  <solb reb' solb>4 r2 | % 361
  <dob, re fa>4 r2 | % 362
  <sib mib solb>4 r2 | % 363
  <do mib solb>4 r2 | % 364
  <re fa>4 r2 | % 365
  \clef "bass" <fad, do' mib>2. | % 366
  <sol dod mi>2. | % 367
  <do mib>2. | % 368
  <fa, sib re>2 r4 | % 369
  r4 <fad do' mib>2 | \barNumberCheck #370
  r4 <sol dod mib>2 | % 371
  r4 <do mib>2 | % 372
  <fa, sib re>4 r2 | % 373
  R2.*7 | \barNumberCheck #380
  <la do>2 r4 | % 381
  R2. \bar "||"
  \numericTimeSignature\time 4/4  r4 fa'' \p ~ \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 mib re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 re mib
  }
  | % 383
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 do sib
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sib do
  }
  sib8 fa sol4 | % 384
  sol4 fa8 r r <fa re' fa> <sol re' sol>4 ~ ~ ~ | % 385
  <sol re' sol>4 <fa re' fa>8 r r r la'4 | % 386
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sol fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa sol
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 mi re
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 re mi
  }
  | % 387
  re8 <re, fa> <re sol>2 <re fa>4 | % 388
  r8 fa <sol re' sol>2 <fa re' fa>4 \bar "||"
  \key do \major r4 <si mi si'> \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    si'8 la sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sold la
  }
  | \barNumberCheck #390
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 fad mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi fad
  }
  mi8 si <fad do' mi> red' | % 391
  r4 <si mi si'> \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si'8 <la, la'> <sold sold'>
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <fad fad'>8 <sold sold'> <la la'>
  }
  | % 392
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <sold sold'>8 <fad fad'> <mi mi'>
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <red red'>8 <mi mi'> <fad fad'>
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <mi mi'>8 <do do'> <si si'>
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <la la'>8 <si si'> <do do'>
  }
  | % 393
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si'8 la sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sold la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 fad mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi fad
  }
  | % 394
  mi8 si sold la lad si mi red | % 395
  re4 <re sold si fa' sold fa'> <do la' do mi la mi'> do | % 396
  si4 <si mi sold re' mi re'> <la mi' la do mi do'> la | % 397
  fa'4 <re la' si re la' si> fa <red la' do red la' do> | % 398
  fa4 <re la' si re la' si> fa <red la' si red la' si> | % 399
  <si' mi sold si>4 -"J" <sold, si>16 mi' <sold, si> mi' <sold,
  si>16 mi' <sold, si> mi' <sold, si> mi' <sold, si>
  mi'16 | \barNumberCheck #400
  <sold, si>16 mi' <la, si> mi' <sold, si> mi' <la, si>
  mi'16 <sold, si> mi' <la, si> mi' <sold, si> mi' <la,
  si>16 mi' | % 401
  r4 <mi fad red'>2. ~ ~ ~ | % 402
  <mi fad red'>1 | % 403
  <sold, si>16 mi' <sold, si> mi' <sold, si> mi' <sold, si>
  mi'16 <sold, si> mi' <sold, si> mi' <sold, si> mi'
  <sold, si>16 mi' | % 404
  <sold, si>16 mi' <sold, si> mi' <sold, si> mi' <sold, si>
  mi'16 <sold, si> mi' <sold, si> mi' <sold, si> mi'
  <sold, si>16 mi' | % 405
  <la, do>4 r <red' fad red'>2 ~ ~ ~ | % 406
  <red fad red'>1 | % 407
  mi,8 fad sold si la si do mi | % 408
  re8 mi fad si la mi do la | % 409
  sold8 la si mi do re mi la | \barNumberCheck #410
  sold8 la si re do la fad red | % 411
  mi8 \ff <mi sold do> <fa la fa'>2 <mi sold mi'>4 | % 412
  r8 \f <mi sold mi'> <fa la fa'>2 <mi sold mi'>4 | % 413
  r8 \mf <sold, si mi> <la do fa>2 <sold si mi>4 | % 414
  r8 \mp <sold si mi> <la do fa>2 <sold si mi>4 | % 415
  R1 | % 416
  <fa la re>4 \p r r2 | % 417
  <mi sol do>4 r r2 | % 418
  <re mi sold si>4 r r2 | % 419
  R1 \bar "||"
  r4 \clef "bass" <mi, la do>2 <mi la do>4 | % 421
  r4 <mi la do>2 <mi la do>4 | % 422
  r4 <fa la re>2 <fa sold re'>4 | % 423
  r4 <mi la do>2 <fad do' red>4 | % 424
  <mi' sold mi'>8 si' do re do4 \clef "bass" <la, do mi> | % 425
  r4 <mi la do>2 <mi la do>4 | % 426
  r4 <fad si red>2 <fad si red>4 | % 427
  r4 <sol si mi> r <la si red> \bar "||"
  <sold si>2 <mi la>4 r | % 429
  r4 si' do si | \barNumberCheck #430
  <sold si>4 \clef "treble" r <mi' mi'>8 \mf <la la'>4 <sold sold'>8
  | % 431
  <mi mi'>4 r <mi mi'>8 \p <la la'>4 <sol sol'>8 | % 432
  <mi mi'>4 r r2 | % 433
  r4 <sol, do mi>2 <sol do sol'>4 | % 434
  r4 <fa sib fa'>2 <sib fa' sib>4 | % 435
  <sib sib'>4 <la la'>2 <dod mi sol>4 | % 436
  <mi sol>4 <re fa> fa2 | % 437
  mi1 | % 438
  <la, do mi>8 r <do fa>2 <do fa>4 | % 439
  <sold si mi>1 | \barNumberCheck #440
  <la do>16 mi <la do> mi <la mi'> mi <la mi'> mi re'
  sold,16 re' sold, <si fa'> sold <si fa'> sold | % 441
  mi'16 la, mi' la, <mi' sol> la, <mi' sol> la, <re fa>
  la16 <re fa> la <si re> la <si re> la | % 442
  <la do mi>4 r r2 | % 443
  r2 <mi' sold re' mi>8 \f r r4 | % 444
  <la do mi la>2.. <la do mi la>8 | % 445
  <sol do mi sol>2.. <sol do mi sol>8 | % 446
  <fad do' mi fad>4. <fad do' mi fad>8 <fad do' mi fad>4. <fad do' mi
  fad>8 | % 447
  <fad do' mi fad>4. <fad do' mi fad>8 <fad do' mi fad>4. <fad do' mi
  fad>8 | % 448
  <si fad' si>8 \sf -! r fad r si r r4 | % 449
  r4 <si, si'>8 -. r <fad' fad'> -. r <si fad'> -. r |
  \barNumberCheck #450
  <si sol'>8 -. <si sol'> -. r <si fad'> r <lad mi'> r <sol dod
  mi>8 | % 451
  r8 <fad si re> r <mi sol dod> r <re fad si> r <dod fad lad> | % 452
  <si' re fad si>2.. <si re fad si>8 | % 453
  <la re fad la>2.. <la re fad la>8 | % 454
  <sold re' fad sold>4. <sold re' fad sold>8 <sold re' fad sold>4.
  <sold re' fad sold>8 | % 455
  <sold re' fad sold>4. <sold re' fad sold>8 <sold re' fad sold>4.
  <sold re' fad sold>8 | % 456
  <dod sold' dod>8 r <sold, sold'> r <dod dod'> r r4 | % 457
  r4 <dod dod'>8 r <sold' sold'> r <sold dod sold'> r | % 458
  <la dod la'>8 r <si re sold> r <la dod fad> r <sold si fa'> r
  | % 459
  <fad la fad'>8 r <sib mi sib'> r <re fad re'> r <dod mi dod'>
  r8 | \barNumberCheck #460
  fad,8 <si, si'>4 <la la'>8 fa' <si, si'>4 <la la'>8 | % 461
  fad'8 <si, si'>4 <la la'>8 fad' <mi mi'>4 <re re'>8 | % 462
  <dod dod'>4 <mi dod'> <sol mi'> <fad red'> | % 463
  <fa re'>4 <mi dod'> <dod sib'> <sib sol'> | % 464
  fad'8 <si, si'>4 <la la'>8 fad' <si, si'>4 <la la'>8 | % 465
  fad'8 <si, si'>4 <la la'>8 fad' <re re'>4 <do do'>8 | % 466
  <si si'>4 <fad' la red> <la do fad> <sold si fa'> | % 467
  <sol lad mi'>4 <fad lad red> <red fad si> <red la'> | % 468
  mi'16 sol, la si do si do re mi sol, la si do
  si16 do re | % 469
  mi16 sol, la si do si do re mi do si do re
  mi16 fa sol | \barNumberCheck #470
  lab8 r <re,, fa si>4 <fa lab re> <lab si fa'> | % 471
  <fa lab re>4 <re fa si> <si re lab'> <lab si fa'> | % 472
  mi''16 sol, la si do si do re mi sol, la si do
  si16 do re | % 473
  mi16 sol, la si do si do re mi re do re mi
  fa16 sol la | % 474
  sib4 <mi,, sol dod> <sol sib mi> <sib dod sol'> | % 475
  R1 | % 476
  <re, fa>16 \pp la <re fa> la <re fa> la <re fa> la <re
  fa>16 la <re fa> la <re fa> la <re fa> la | % 477
  <re fa>16 la <re fa> la <re fa> la <re fa> la <re fa>
  la16 <re fa> la <re fa> la <re fa> la | % 478
  <re fa>16 la <re fa> la <re fa> la <re fa> la <re fa>
  la16 <re fa> la <re fa> la <re fa> la | % 479
  <la' re fa la>8 \f r <re, fa>16 \pp la <re fa> la <re fa>
  la16 <re fa> la <re fa> la <re fa> la | \barNumberCheck
  #480
  <la' mi' la>8 \f r mi16 \pp la, mi' la, mi' la, mi' la,
  mi'16 la, mi' la, | % 481
  mi'16 la, mi' la, mi' la, mi' la, mi' la, mi'
  la,16 mi' la, mi' la, | % 482
  mi'16 la, mi' la, mi' la, mi' la, mi' la, mi'
  la,16 mi' la, mi' la, | % 483
  <la' mi' la>8 \f r mi16 la, mi' la, mi' la, mi' la,
  mi'16 la, mi' la, | % 484
  <la' red fad la>8 r fad16 red fad red fad red fad red
  fad16 red fad red | % 485
  fad16 red fad red fad red fad red fad red fad
  red16 fad red fad red | % 486
  fad16 red fad red fad red fad red fad red fad
  red16 fad red fad red | % 487
  <si' red fad si>8 r fad16 red fad red fad red fad red
  fad16 red fad red | % 488
  <mi' sold si mi>2.. \ff <mi sold si mi>8 | % 489
  <re sold si re>2.. <re sold si re>8 | \barNumberCheck #490
  <do sol' sib do>4. <do sol' sib do>8 <do sol' sib do>4. <do sol' sib
  do>8 | % 491
  <do sol' sib do>4. <do sol' sib do>8 <do sol' sib do>4. <do sol' sib
  do>8 | % 492
  <mi sold si mi>2.. <mi, sold si mi>8 | % 493
  <re mi sold si re>2.. \mf <re mi sold si re>8 | % 494
  <do sol' sib do>4. \mp <do sol' sib do>8 <do sol' sib do>4. <do sol'
  sib do>8 | % 495
  <do sol' sib do>4. <do sol' sib do>8 \p <do sol' sib do>4. <do sol'
  sib do>8 | % 496
  r8 do'16 re mi fa sol8 r do,16 re mi fa sol8 | % 497
  r8 do,16 re mi fa sol8 r do,16 re mi fa sol8 | % 498
  R1*2 | \barNumberCheck #500
  r8 do,, re mi fa sol la sib | % 501
  fad8 sol la sib si do re mi | % 502
  si8 do mi sol sib sol mi do | % 503
  \times 2/3  {
    sib4 sol mi
  }
  \times 2/3  {
    do4 si sib
  }
  | % 504
  la8 <la do>4 <la do> <la do> <la do>8 | % 505
  r8 <sib reb>4 <sib reb> <sib reb> <sib reb>8 | % 506
  r8 <la do>4 <la do> <la do> <sold si>8 | % 507
  <do la' do>4. <do la' do>8 <do la' do>4. <do la' do>8 | % 508
  <do la' do>8 <la do>4 <la do> <la do> <la do>8 | % 509
  r8 <sib reb>4 <sib reb> <sib reb> <sib reb>8 | \barNumberCheck
  #510
  r8 <la do>4 <la do> <la do> <sold si>8 | % 511
  <do la' do>4. <do la' do>8 <do la' do>4. <do la' do>8 | % 512
  <do la' do>8 <la do>4 <la do> <la do> <la do>8 | % 513
  <mib' mib'>2 <re re'> | % 514
  r8 <sib re>4 <sib re>8 <re sib' re>4. <re sib' re>8 | % 515
  <re sib' re>4. <re sib' re>8 <re sib' re>4. <re sib' re>8 | % 516
  r8 <si re>4 <si re> <si re> <si re>8 | % 517
  <fa' fa'>2 <mi mi'> | % 518
  r8 <do mi>4 <do mi>8 <mi do' mi>4. <mi do' mi>8 | % 519
  <mi do' mi>4. <mi do' mi>8 <do' mi>2 | \barNumberCheck #520
  <do mib>2 <do mib> | % 521
  <do re>2 <si re> | % 522
  <sib reb>2 <sib reb> | % 523
  <sib do>2 <la do> | % 524
  <lab si>1 ~ ~ | % 525
  <fa lab si>1 | % 526
  <fa la do>4 r r2 | % 527
  R1 | % 528
  r4 reb reb r | % 529
  R1 | \barNumberCheck #530
  <re fad la re>1 \pp | % 531
  <re fad la re>1 | % 532
  <mib sol sib mib>1 \ppp | % 533
  <mi sol sib mi>1 | % 534
  <fa' la>16 -"a Tempo" \p fa' <fa, la> fa' <fa, la> fa'
  <fa, la>16 fa' <fa, la> fa' <fa, la> fa' <fa, la> fa'
  <fa, la>16 fa' | % 535
  <reb, sib'>16 reb' <reb, sib'> reb' <reb, sib'> reb' <reb,
  sib'>16 reb' <reb, sib'> reb' <reb, sib'> reb' <reb,
  sib'>16 reb' <reb, sib'> reb' | % 536
  <do, la'>16 do' <do, la'> do' <do, la'> do' <do, la'>
  do'16 <do, la'> do' <do, la'> do' <do, la'> do' <do,
  la'>16 do' | % 537
  <sib, sol'>16 sib' <sib, sol'> sib' <sib, sol'> sib' <sib,
  sol'>16 sib' <sib, sol'> sib' <sib, sol'> sib' <sib,
  sol'>16 sib' <sib, sol'> sib' | % 538
  <do,, fa la do>4 -"cresc." <fa fa'> <la la'> \mp <do do'> | % 539
  <dod, fa la dod>4 <fa fa'> <la la'> <dod dod'> \mf |
  \barNumberCheck #540
  r16 \f re, fa la re fa la re r re,, fa la re
  fa16 la re | % 541
  r16 re,, fa la re fa la re r re,, fa la re
  fa16 la re | % 542
  <mi, sold si mi>8 r <si, mi sold>4 r <si mi sold> | % 543
  r4 <si mi sold> r <si mi sold> | % 544
  <red fad do'>4 <fad la red> <la do fad> <sold si fa'> | % 545
  <sol sib mi>4 <fad la red> <red fad do'> <do red la'> | % 546
  <si mi sold>8 si r4 r8 mi si sol | % 547
  r8 sold' mi si r si' sold mi | % 548
  <red fad do'>4 <fad la red> <la do fad> <do red la'> | % 549
  <la do fad>4 <fad la red> <red fad do'> <do red la'> |
  \barNumberCheck #550
  <si mi sold>4 <mi sold> <mi' sold> <mi, sold> | % 551
  r4 <red fad la> <red' fad la> <red, fad la> | % 552
  r4 <re sold si> <re' sold si> <re, sold si> | % 553
  r4 <do la' do> <do' la' do> <do, la' do> | % 554
  r4 <re fa re' fa> r <do mi do' mi> | % 555
  r4 <si re si' re> r <la' do> | % 556
  r2 <sold, si re fa> | % 557
  r2 <sold si re fa> | % 558
  R1*2 | \barNumberCheck #560
  r4 \clef "bass" <mi la do>2 <mi la do>4 | % 561
  r4 <mi la do>2 <mi la do>4 | % 562
  r4 <fa la re>2 <fa sold re'>4 | % 563
  r4 <mi la do>2 <fad do' red>4 | % 564
  \clef "treble" <mi' sold mi'>8 si' do re do4 \clef "bass" <la, do
  mi>4 | % 565
  r4 <mi la do>2 <mi la do>4 | % 566
  r4 <fad si red>2 <fad si red>4 | % 567
  r4 <sol si mi> r <la si red> | % 568
  <sold si>2 <mi la>4 r | % 569
  r4 \p si' do si | \barNumberCheck #570
  <sold si>4 \clef "treble" r <mi' mi'>8 \mf <la la'>4 <sold sold'>8
  | % 571
  <mi mi'>4 r <mi mi'>8 \p <la la'>4 <sol sol'>8 | % 572
  <mi mi'>4 r r2 | % 573
  r4 <sol, do mi>2 <sol do sol'>4 | % 574
  r4 <fa sib fa'>2 <sib fa' sib>4 | % 575
  <sib sib'>4 <la la'>2 <dod mi sol>4 | % 576
  <mi sol>4 <re fa> fa2 | % 577
  mi1 | % 578
  <la, do mi>8 r <do fa>2 <do fa>4 | % 579
  <sold si mi>1 | \barNumberCheck #580
  <la do>16 mi <la do> mi <la mi'> mi <la mi'> mi re'
  sold,16 re' sold, <si fa'> sold <si fa'> sold | % 581
  mi'16 la, mi' la, <mi' sol> la, <mi' sol> la, <re fa>
  la16 <re fa> la <si re> la <si re> la | % 582
  <la do mi>4 r r2 | % 583
  r2 <mi' sold re' mi>8 \f r r4 | % 584
  <do mi la>1 | % 585
  <si mi si'>1 | % 586
  <mi la dod>1 | % 587
  <re la' re>1 | % 588
  <red la' do red>1 | % 589
  <red la' do red>1 | \barNumberCheck #590
  <mi la do mi>1 | % 591
  <mi sold si mi>1 | % 592
  <la, la'>8 <dod mi> la <dod mi> la <dod mi> la <dod mi> | % 593
  la8 <mi' la> la, <mi' la> la, <mi' la> la, <mi' la> | % 594
  si8 <re sol> si <re sol> si <re sol> si <re sol> | % 595
  r8 <re sol> si <re sol> si <re sol> si <re sol> | % 596
  r8 <dod fad> lad <dod fad> r <do fad> la <do fad> | % 597
  r8 \clef "bass" si sold si r <sib mi> sol <sib mi> | % 598
  r8 la fad la r <la re> fa <la re> | % 599
  r8 <la dod> mi <la dod> r <sold si> mi <sold si> |
  \barNumberCheck #600
  r2 \clef "treble" dod'4 re | % 601
  red4 mi la sold | % 602
  sol4 re si dod | % 603
  <sol re'>4 mi'8 re dod4 si | % 604
  fad'2 mi4 red | % 605
  fad4 mi re dod | % 606
  mi4 re la si | % 607
  dod2 mi4. re8 | % 608
  dod4 r r2 | % 609
  R1*3 | % 612
  dod4 re2 red4 ~ | % 613
  red4 mi2 mid4 ~ | % 614
  mid4 fad2 la4 ~ | % 615
  la4 si, mi re | % 616
  <dod, dod'>4 <re re'>2 <red red'>4 ~ ~ | % 617
  <red red'>4 <mi mi'>2 <mid mid'>4 ~ ~ | % 618
  <mid mid'>4 <fad fad'>2 <la fad' la>4 ~ ~ | % 619
  <la fad' la>4 <dod fad la dod>2 <dod fad la dod>4 | \barNumberCheck
  #620
  <dod fad la dod>4 r r2 | % 621
  R1 | % 622
  <la dod fad la>4 r r2 | % 623
  R1 | % 624
  <si re fad si>4 r r2 | % 625
  R1 | % 626
  <mi sold si mi>4 r r2 | % 627
  R1 | % 628
  <dod, mi la>4 r <mi la dod> r | % 629
  <re la' re>4 r <mi sold si re mi> r | \barNumberCheck #630
  <mi la dod mi>4 r <la dod mi la> r | % 631
  <la re la'>4 r <si mi sold si> r | % 632
  <dod mi la dod>4 r r2 | % 633
  <la' dod mi la>4 r r2 | % 634
  <la,, dod mi la>4 r r2
}

PartPTwoVoiceTwo =  \relative la {
  \clef "treble" \key do \major \numericTimeSignature\time 2/2 s4
  s4*11 s2. s4*9 s1*2 | % 9
  <la la'>2. s4 s1 | % 11
  <la la'>2. s4*5 s1*3 s s1*5 | % 24
  s1*2 \p s s s4*11 <sol' reb'>4 \sf s1 | % 34
  s2. \mf <sol reb'>4 \sf s1*2 s1*6 s1*3 s s s s2 <la, do>
  s2 <la do> | % 57
  s1*4 \pp s1*9 s1*5 | % 75
  r4 mi''' \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 re do
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 do re
  }
  | % 76
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 si la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 la si
  }
  la8 mi fa mi s1 s1*3 s s1*5 s1*3 | % 92
  s1 \p | % 93
  s1 \f | % 94
  s1*3 \p s1*4 s s | % 109
  s1 \f s \bar "||"
  \key fa \major s1*5 s s s1 | % 127
  sol,4 r <mib la> r | % 128
  re4 r <do fad> r | % 129
  sol4 r lab r | \barNumberCheck #130
  <sol do>4 r <sol do> r s1*5 s1*3 \bar "||"
  \key do \major | % 139
  s4 \p s4*7 \pp s8*7 re''8 | % 142
  fad4 r8 fad la4 r s1 | % 144
  r4 r8 re, fad4 <la,, re>16 fad' <la, re> fad' | % 145
  <la, re>16 fad' <la, re> fad' <la, re> fad' <la, re>
  fad'16 <la, re> fad' <la, re> fad' <la, re> fad' <la,
  re>16 fad' | % 146
  s1*2 \pp s1*3 s1*4 s1*3 s s s s1*4 s1*5 s1*3 | % 179
  do2 reb s1*2 | % 182
  <do mib>2 <mib solb> | % 183
  <re fa>2 <do mib> s1*2 | % 186
  s1*6 \pp s1*10 s1*6 \bar "||"
  \key sib \major \time 3/4 s4*9 s4*27 s4*15 | % 225
  sib'2 r4 | % 226
  sib2 r4 s1. | % 229
  sib2 r4 | \barNumberCheck #230
  sib2 <sib, fad'>4 s2. | % 232
  sib'4 -. r re8 sib | % 233
  re8 do do4 re8 sib | % 234
  re8 do do4 re8 sib | % 235
  re8 do do re mib do | % 236
  re8 fa fa4 re8 sib | % 237
  re8 do do4 re8 sib | % 238
  re8 do do4 re8 sib | % 239
  re8 do do re mib do | \barNumberCheck #240
  <fa, sib>4 r2 s1*6 s2*9 | % 255
  sib2 r4 | % 256
  sib2 r4 s1. | % 259
  sib2 r4 | \barNumberCheck #260
  sib2 <sib, fad'>4 s2. | % 262
  sib'4 -. r re8 sib | % 263
  re8 do do4 re8 sib | % 264
  re8 do do4 re8 sib | % 265
  re8 do do re mib do | % 266
  re8 fa fa4 re8 sib | % 267
  re8 do do4 re8 sib | % 268
  re8 do do4 re8 sib | % 269
  re8 do do re mib do | \barNumberCheck #270
  <fa, sib>4 r2 s4*27 s2*9 | % 286
  <re fa>2 <do mib>4 s1. s4*21 s1*3 s4*9 s4*21 s2*15 s4*15 s4*21 | % 332
  fa2 mi4 | % 333
  mib4 ~ mib8 do re mib | % 334
  fa2 mi4 | % 335
  mib4 ~ mib8 do re mib s1. s | \barNumberCheck #340
  <sib' re>2. ~ ~ s4*9 s4*27 s4*21 s4*15 | % 365
  \clef "bass" s1. | % 367
  solb,2 fa4 s2. s1. | % 371
  r4 solb fa | % 372
  r4 r2 s4*27 \bar "||"
  \numericTimeSignature\time 4/4  s4 s4*15 \p s1*3 \bar "||"
  \key do \major s1*3 s1*4 s1*3 | % 399
  s1 -"J" s1*3 s1*2 s1*3 s | % 411
  r2 \ff mi'4 r8 mi | % 412
  mi4 \f r mi r8 mi | % 413
  mi4 \mf r mi r8 mi | % 414
  mi4 \mp r mi r8 mi | % 415
  mi4 \p r r2 s1*2 s \bar "||"
  s4 \clef "bass" s4*15 s2. \clef "bass" s4*13 \bar "||"
  re8 fa mi re do4 r | % 429
  r4 sol <fad la>2 s4 \clef "treble" s s1 \mf s2*7 \p | % 435
  mi'2. r4 | % 436
  la,2 <la do> | % 437
  <sold si>1 s1*2 s1*3 s2 s2*7 \f s1 | % 448
  s1 \sf s1*2 s1*3 s1*2 s s s s s s | % 468
  mi''8 la4 sol8 mi la4 sol8 | % 469
  mi8 la4 sol8 mi re'4 do8 | \barNumberCheck #470
  si8 r r4 r2 s1 | % 472
  mi,8 la4 sol8 mi la4 sol8 | % 473
  mi8 la4 sol8 mi mi'4 re8 | % 474
  dod4 r r2 s1 | % 476
  s1*2 \pp s1 | % 479
  s4 \f s2. \pp | \barNumberCheck #480
  s4 \f s4*11 \pp | % 483
  s1*2 \f s s1 | % 488
  s1*2 \ff s1*3 | % 493
  s1 \mf | % 494
  s8*11 \mp s8*5 \p s1*3 s1*4 s1*5 s s1*4 s1*5 s1*6 s1*2 |
  \barNumberCheck #530
  s1*2 \pp | % 532
  s1 \ppp s | % 534
  s1 -"a Tempo" \p s1*2 s1 | % 538
  s2 -"cresc." s4*5 \mp s4 \mf | \barNumberCheck #540
  s1*3 \f s1*2 s s s s1*3 s1*4 s4*9 \clef "bass" s4*11 s1 | % 564
  \clef "treble" s2. \clef "bass" s4*13 | % 568
  re,,8 fa mi re do4 r | % 569
  r4 \p sol <fad la>2 s4 \clef "treble" s s1 \mf s2*5 \p s1 | % 575
  mi'2. r4 | % 576
  la,2 <la do> | % 577
  <sold si>1 s s1*3 s1. s2*13 \f s1*2 s1*4 s8*9 \clef "bass" s8*23 s2
  \clef "treble" s2*7 s1*3 | % 607
  la'2 <sold si> | % 608
  la4 r r2 s1*3 s1*5 s1*4 s1*5 s1*7
}

PartPTwoVoiceFive =  \relative la,, {
  \clef "bass" \key do \major \numericTimeSignature\time 2/2 <la la'>8
  \f r8 r4 r2 | % 2
  R1*2 | % 4
  r2 <la la'>8 \f r r4 | % 5
  r2 r | % 6
  R1*2 | % 8
  <re re'>4 \fp r r2 | % 9
  r2. <la la'>4 | \barNumberCheck #10
  <re re'>4 r r2 | % 11
  r2. <re re'>4 | % 12
  red16 re' red, re' red, re' red, re' red, re' red,
  re'16 red, re' red, re' | % 13
  red,8 r r4 r2 | % 14
  R1 | % 15
  r4 <red' la' do>2 red,16 red' red, red' | % 16
  <mi, mi'>8 r r4 r2 | % 17
  r4 <la' si>2 <la si>4 | % 18
  <sold si>8 r r4 r2 | % 19
  r4 r r2 | \barNumberCheck #20
  R1*4 | % 24
  <la,, la' mi' la>4 \arpeggio \arpeggio \arpeggio \arpeggio <mi'' la
  do>16 mi' <mi, la do> mi' <mi, la do> mi' <mi, la do>
  mi'16 <mi, la do> mi' <mi, la do> mi' | % 25
  <mi, la do>16 mi' <mi, la do> mi' <mi, la do> mi' <mi, la
  do>16 mi' la, do la do la do la do | % 26
  la16 do la do la do la do la do la do la do
  la16 do | % 27
  la16 do la do la do la do <la,, la'>4 <mi'' la do>16
  mi'16 <mi, la do> mi' | % 28
  <mi, la do>16 mi' <mi, la do> mi' <mi, la do> mi' <mi, la
  do>16 mi' <mi, la do> mi' <mi, la do> mi' <mi, la do>
  mi'16 <mi, la do> mi' | % 29
  la,16 do la do la do la do la do la do la do
  la16 do | \barNumberCheck #30
  la16 do la do la do la do la do la do la do
  la16 do | % 31
  la,,16 la' la, la' la, la' la, la' la,4 <do do'> | % 32
  <fa fa'>4 <la la'>2 <sib sib'>4 | % 33
  la,16 la' la, la' la, la' la, la' la,4 <do do'> | % 34
  <fa fa'>4 <la la'>2 <sib sib'>4 | % 35
  <la, la'>4 \f r r2 | % 36
  R1 | % 37
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do''8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 la sib
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sol fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa sol
  }
  | % 38
  fa8 do la sib si do <fa, fa'> <mi mi'> | % 39
  <red red'>4 r r <mi mi'> | \barNumberCheck #40
  <dod dod'>4 r r <re re'> | % 41
  <si si'>4 r <do do'> r | % 42
  <sold' sold'>4 r <la la'> r | % 43
  <mi, mi'>4 -. r8 <mi mi'> <sold sold'>4 r8 <sold sold'> | % 44
  <si si'>4 r8 <si si'> <mi mi'>4 r8 <mi mi'> | % 45
  <la, la'>4 r <la'' do>2 | % 46
  <la do>1 | % 47
  <mi,, mi'>4 r8 <mi mi'> <sold sold'>4 r8 <sold sold'> | % 48
  <si si'>4 r8 <si si'> <mi mi'>4 r8 mi' | % 49
  mib4 r <mib do'>2 | \barNumberCheck #50
  <mib do'>1 | % 51
  re,4 r8 re fad4 r8 fad | % 52
  la4 r8 la do4 r | % 53
  red,4 r8 red fad4 r8 fad | % 54
  la4 r8 la do4 red, | % 55
  r8 mi fa2 mi4 | % 56
  r8 mi fa2 mi4 | % 57
  <la' do>4 r r2 | % 58
  R1 | % 59
  <do,, do' sib'>1 | \barNumberCheck #60
  <do do'>1 | % 61
  <do do' la' do>1 | % 62
  <do do' la' do>1 | % 63
  <do do' la'>1 | % 64
  <do do' la'>1 | % 65
  <do do' fa sib>1 | % 66
  <do do' fa sib>1 | % 67
  <do do'>1 | % 68
  <do do'>1 | % 69
  <do do'>1 | \barNumberCheck #70
  <do do'>1 | % 71
  <dod dod' la'>1 | % 72
  <dod dod' la'>1 | % 73
  <re re' la'>1 | % 74
  <red red' la'>1 | % 75
  <mi mi'>1 | % 76
  <mi mi'>1 | % 77
  <fa' la do mib>1 | % 78
  <fad la do mib>2 r | % 79
  <sol, re' sol>4 r r2 | \barNumberCheck #80
  r4 fad'2 fad4 | % 81
  sol4 r r2 | % 82
  R1*5 | % 87
  <si,, si'>4 r r2 | % 88
  R1*3 | % 91
  do16 do' \f do, do' do, do' do, do' do, do' do,
  do'16 do, do' do, do' | % 92
  <re, re'>4 r r2 | % 93
  do16 do' do, do' do, do' do, do' do, do' do, do'
  do,16 do' do, do' | % 94
  <re, re'>4 r r2 | % 95
  r4 <re' fa si> r <re fa si> | % 96
  r4 <re fa si> r <re fa si> | % 97
  r4 <re fa si> r <re fa si> | % 98
  r4 <re fa si> r <re fa si> | % 99
  r4 <mi sol do> r <fa la do> | \barNumberCheck #100
  r4 <fad la re> r <sol sib re> | % 101
  r4 <sold si mi> r <la do mi> | % 102
  r4 <la do fa> r <sib re fa> | % 103
  <sib re fa>4 r r2 | % 104
  R1*2 | % 106
  r4 <sol,, sol'> <la la'> <sib sib'> | % 107
  <do do'>4 r r2 | % 108
  R1 | % 109
  <do' sol' sib mi>4 \arpeggio \arpeggio \arpeggio \arpeggio r r2 |
  \barNumberCheck #110
  R1 \bar "||"
  \key fa \major <fa fa'>2. <mi mi'>4 | % 112
  <mib mib'>4 <re re'> <re re'> <dod dod'> | % 113
  <do do'>4 <si si'> <sib sib'> <la la'> | % 114
  <sib sib'>4. <sib sib'>8 <do do'>4. <do do'>8 | % 115
  <fa, fa'>4 <fa fa'>2 <mi mi'>4 | % 116
  <mib mib'>4 <re re'> <re' re'> <dod dod'> | % 117
  <do do'>4 <si si'> <sib sib'> <la la'> | % 118
  <sib sib'>4. <sib, sib'>8 <do do'>4. <do do'>8 | % 119
  <fa fa'>4 r <mi' sol do> r | \barNumberCheck #120
  <re fa sib re>4 r <do sol' sib mi> \arpeggio \arpeggio \arpeggio
  \arpeggio r4 | % 121
  <fa la do>4 r <mi sol do> r | % 122
  <re fa sib re>4 r <do sol' sib mi> r | % 123
  fa8 sol la sib la sol fa mi | % 124
  re8 mi fa sol fa mi re do | % 125
  sib8 do re mib re do sib la | % 126
  sol8 la sib do sib la sol fa | % 127
  mi4 r <fad, fad'> r | % 128
  <sol sol'>4 r <la la'> r | % 129
  <sib sib'>4 r <si si'> r | \barNumberCheck #130
  <do do'>4 r <do do'> r | % 131
  <fa fa'>1 | % 132
  <mi mi'>1 | % 133
  <mib mib'>1 | % 134
  <re re'>1 | % 135
  <reb reb'>1 ~ ~ | % 136
  <reb reb'>1 | % 137
  \clef "treble" <dod'' sold' si>1 ~ ~ ~ | % 138
  <dod sold' si>1 \bar "||"
  \clef "bass" \key do \major <re,, re'>4 r r2 | \barNumberCheck #140
  re4 r8 re fad4 r8 fad | % 141
  la4 r8 la re4 r | % 142
  R1 | % 143
  do,4 r8 do la'4 r8 la | % 144
  do4 r r2 | % 145
  r2.. <do, do'>8 | % 146
  <si si'>4 r r <sol' sol'> | % 147
  <re re'>4 r r <re re'> | % 148
  <si si'>4 r r <si si'> | % 149
  <sol sol'>4 r r <sol sol'> | \barNumberCheck #150
  <fa fa'>4 r r <fa' fa'> | % 151
  <re re'>4 r r <re re'> | % 152
  <si si'>4 r r <si si'> | % 153
  <fa fa'>4 r r <fa fa'> | % 154
  <mi mi'>4 r r <sol' sol'> | % 155
  <mi mi'>4 r r <mi mi'> | % 156
  <do do'>4 r r <do do'> | % 157
  <sol sol'>4 r r <mi mi'> | % 158
  <re re'>4 r r <si'' si'> | % 159
  <sold sold'>4 r r <sold sold'> | \barNumberCheck #160
  <re re'>4 r r <si si'> | % 161
  <sold sold'>4 r r <re' re'> | % 162
  <do do'>4 <do' do'> r <la la'> | % 163
  r4 <mi mi'> r <do do'> | % 164
  <si si'>4 <si' si'> r <sol sol'> | % 165
  r4 <mi mi'> r <si si'> | % 166
  la16 la' la, la' la, la' la, la' <la, la'>4 <do do'>
  | % 167
  <fa fa'>4 <la la'>2 <sib sib'>4 | % 168
  la,16 la' la, la' la, la' la, la' <la, la'>4 <do do'>
  | % 169
  <fa fa'>4 <la la'>2 <sib sib'>4 | \barNumberCheck #170
  <la, la'>4 r r2 | % 171
  R1 | % 172
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do''8 sib la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 la sib
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sol fa
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa sol
  }
  | % 173
  fa8 do la sib si do fa mi | % 174
  <red, red'>4 r r2 | % 175
  <red red'>8 r r4 r2 | % 176
  <mi mi'>8 r r4 r2 | % 177
  R1 | % 178
  <do do'>1 | % 179
  <do do'>1 | \barNumberCheck #180
  <do do'>1 | % 181
  <do do'>1 | % 182
  <fa, fa'>1 | % 183
  <fa fa'>1 | % 184
  <fa fa' fa'>1 ~ ~ ~ | % 185
  <fa fa' fa'>1 | % 186
  <fa fa' sol' sib>1 ~ ~ ~ ~ | % 187
  <fa fa' sol' sib>1 | % 188
  <fa fa' sol' sib>1 ~ ~ ~ ~ | % 189
  <fa fa' sol' sib>1 | \barNumberCheck #190
  r4 <fa fa' fa' sib> <fa fa' fa' sib> <fa fa' fa' sib> | % 191
  <fa fa' fa' sib>4 r r2 | % 192
  <fa'' sib re>1 ~ ~ ~ | % 193
  <fa sib re>1 | % 194
  r4 <fa,, fa' sol' sib> <fa fa' sol' sib> <fa fa' sol' sib> | % 195
  <fa fa' sol' sib>4 r r2 | % 196
  <fa'' do' mi>1 | % 197
  <fa do' mi>1 | % 198
  <fa,, fa' fa' la>1 | % 199
  <fa fa' fa' la>1 | \barNumberCheck #200
  <fa fa' fa' la>1 | % 201
  <fa fa' fa' la>1 | % 202
  R1*6 \bar "||"
  \key sib \major \time 3/4 R2.*63 | % 271
  <re' re'>4 r2 | % 272
  <sol sol'>4 r2 | % 273
  <re re'>4 r2 | % 274
  <sol sol'>4 r2 | % 275
  <la la'>4 r2 | % 276
  <si si'>4 r2 | % 277
  <do do'>4 r2 | % 278
  <fad, fad'>4 r2 | % 279
  <re re'>4 r2 | \barNumberCheck #280
  <sol sol' do>4 si' si | % 281
  <sol,, sol'>4 r2 | % 282
  <do do'>2 <re re'>4 | % 283
  <mi mi' sol>2. | % 284
  <fad fad' la>2. | % 285
  <sol sol'>4 <la la'> <sib sib'> | % 286
  <do, do'>2. | % 287
  <re re'>4 r2 | % 288
  R2.*3 | % 291
  <re re'>4 -. r2 | % 292
  R2.*16 | % 308
  r4 \clef "treble" r <re'' fa> | % 309
  <do fa>8 <re fa> <mib fa> <do fa> <mib fa>4 | \barNumberCheck
  #310
  <mib fa>4 <re fa> <sib fa'> | % 311
  <do fa>4 <do fa>8 <sib fa'> <do fa>4 | % 312
  <do fa>2 <re fa>4 | % 313
  <do fa>8 <re fa> <mib fa> <do fa> <mib fa>4 | % 314
  <mib fa>4 <re fa> <sib fa'> | % 315
  <do fa>4 r <fa, do' fa> | % 316
  <sib re fa>4 r <sib fa'> | % 317
  <mib sol>2 <sib fa'>4 | % 318
  <mib sol>2 <sib fa'>4 | % 319
  <mib sol>8 <re sol> <do sol'>4 fa | \barNumberCheck #320
  <sib, fa'>4 r <sib fad'> | % 321
  <mib sol sib>2 <sib fad'>4 | % 322
  <mib sol sib>2 r4 | % 323
  R2. | % 324
  \clef "bass" <fa,, fa'>4 r2 | % 325
  <fa' re' fa>4 r2 | % 326
  <fa, fa'>4 r2 | % 327
  <fa' do' mib>4 r2 | % 328
  <fa, fa'>4 r2 | % 329
  <fa' re' fa>4 r2 | \barNumberCheck #330
  <fa, fa'>4 r2 | % 331
  <fa' do' mib>4 r2 | % 332
  re2 reb4 | % 333
  do4 fa,2 | % 334
  re'2 reb4 | % 335
  do4 fa,2 | % 336
  re'4 <fa re'>2 | % 337
  mi4 <sol mi'>2 | % 338
  fad4 <re la'>2 | % 339
  mib2 mi4 | \barNumberCheck #340
  <fa sib re>2. ~ ~ ~ | % 341
  <fa sib re>2. | % 342
  <fa sib re>2. ~ ~ ~ | % 343
  <fa sib re>2. | % 344
  <fa,, fa'>2. ~ ~ | % 345
  <fa fa'>2. | % 346
  <fa fa'>2. ~ ~ | % 347
  <fa fa'>4 r r | % 348
  r4 \clef "treble" r <sib'' fa' sib> | % 349
  <sib fa' sib>8 <sib fa' sib> <sib fa' sib> <sib fa' sib> <sib fa'
  sib>4 | \barNumberCheck #350
  <sib solb' sib>4 <sib solb' sib> <sib solb' sib> | % 351
  <sib fa' sib>8 <sib fa' sib> <sib fa' sib> <sib fa' sib> <sib fa'
  sib>4 | % 352
  <sib solb' sib>4 <sib solb' sib> r | % 353
  <sib solb'>4 r2 | % 354
  <sib fa'>4 r2 | % 355
  <sib mib solb>4 r2 | % 356
  <sib re fa>4 r \clef "bass" <sib,, sib'> | % 357
  <lab lab'>8 <sib sib'> <dob dob'> <lab lab'> <dob dob'>4 | % 358
  <dob dob'>4 <sib sib'> <sib sib'> | % 359
  <lab lab'>8 <sib sib'> <dob dob'> <lab lab'> <dob dob'>4 |
  \barNumberCheck #360
  <dob dob'>4 <sib sib'> r | % 361
  <sib' lab'>4 r2 | % 362
  <sib solb'>4 r2 | % 363
  <sib solb'>4 r2 | % 364
  <sib fa'>4 r <sib, sib'> \pp <la la'>2 <sib sib'>4 | % 366
  <la la'>2 <sib sib'>4 | % 367
  <la la'>8 <sib sib'> <do do'>4 <la la'> | % 368
  <sib sib'>4 <re re'> <sib sib'> | % 369
  <la la'>4 r <sib sib'> | \barNumberCheck #370
  <la la'>4 r sib' | % 371
  la8 sib do4 la | % 372
  sib4 r2 | % 373
  R2.*7 | \barNumberCheck #380
  <fa mib'>2 r4 | % 381
  R2. \bar "||"
  \numericTimeSignature\time 4/4  <sib, sib'>4 <fa'' sib>16 re' <fa,
  sib>16 re' <fa, sib> re' <fa, sib> re' <fa, sib> re'
  <fa, sib>16 re' | % 383
  <fa, sib>16 re' <fa, sib> re' <fa, sib> re' <fa, sib>
  re'16 <sib,, sib'>4 r8 <sib sib'> | % 384
  <re re'>4 r8 <re re'> <fa fa'>4 r8 <fa fa'> | % 385
  <sib sib'>4 r8 <sib sib'> <la, la'>4 <fa'' la>16 re' <fa, la>
  re'16 | % 386
  <fa, la>16 re' <fa, la> re' <fa, la> re' <fa, la> re'
  <fa, la>16 re' <fa, la> re' <fa, la> re' <fa, la> re'
  | % 387
  <la,, la'>4 r8 <la la'> <re re'>4 r8 <re re'> | % 388
  <fa fa'>4 r8 fa' <la, la'>4 r8 <la, la'> \bar "||"
  \key do \major sold16 sold' sold, sold' sold, sold' sold,
  sold'16 <sold, sold'>4 <si si'> | \barNumberCheck #390
  <mi mi'>4 <sold sold'>2 <la la'>4 | % 391
  <sold, sold'>4 <sold' mi' sold> r2 | % 392
  R1 | % 393
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si'8 la sold
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sold la
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 fad mi
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi fad
  }
  | % 394
  mi8 si sold la lad si <mi, mi'> <red red'> | % 395
  <re re'>4 r r <do do'> | % 396
  <si si'>4 r r <la la'> | % 397
  <fa' fa'>4 r <fa fa'> r | % 398
  <fa fa'>4 r <fa fa'> r | % 399
  <mi, mi'>4 -. r8 <mi mi'> <sold sold'>4 r8 <sold sold'> |
  \barNumberCheck #400
  <si si'>4 r8 <si si'> <mi mi'>4 r8 <mi mi'> | % 401
  la4 <la' do>2. ~ ~ | % 402
  <la do>1 | % 403
  mi,4 r8 mi sold4 r8 sold | % 404
  si4 r8 si mi4 r8 mi | % 405
  la,4 r <la' do fad>2 ~ ~ ~ | % 406
  <la do fad>1 | % 407
  <mi, sold si mi>4 r <mi la do mi> r | % 408
  <mi si' re mi>4 r <mi la do mi> r | % 409
  <mi' sold si mi>4 r <mi la do mi> r | \barNumberCheck #410
  <mi si' re mi>4 r <mi la do mi> r | % 411
  <mi sold si mi>4 <do, do'> ~ \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    do'8 re red
  }
  <mi, mi'>4 | % 412
  r4 <do do'> ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do'8 re red
  }
  <mi, mi'>4 | % 413
  r4 <do do'> ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do'8 re red
  }
  <mi, mi'>4 | % 414
  r4 <do do'> ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do'8 re red
  }
  <mi, mi'>4 | % 415
  <mi mi'>4 r r2 | % 416
  <mi mi'>4 r r2 | % 417
  <mi mi'>4 r r2 | % 418
  <mi mi'>4 r r2 | % 419
  R1 \bar "||"
  <la, la'>2 \p r | % 421
  <la la'>2 r | % 422
  <la la'>2 r | % 423
  <la la'>2 r <la la'>4 <sold'' si mi> ~ <la do mi> r | % 425
  <la,, la'>2 r | % 426
  <la la'>2 r | % 427
  <sol sol'>2 <fad fad'> \bar "||"
  <mi mi'>2 ( <la la'>4 ) r | % 429
  <si si'>1 <mi mi'>4 r r2 | % 431
  R1*2 | % 433
  <do do'>2. <mi mi'>4 | % 434
  <re re'>2. re4 | % 435
  <dod dod'>2 <la la'> | % 436
  <re re'>2 r | % 437
  r2 <mi, mi'> | % 438
  <la la'>8 la' do fa la2 | % 439
  r2 <mi,, mi'> | \barNumberCheck #440
  <la la'>8 r <do do'> r <si si'> r <re re'> r | % 441
  <do do'>8 r <dod dod'> r <re re'> r <fa fa'> r | % 442
  <mi mi'>4 r r2 | % 443
  r2 <mi mi'>8 r r4 | % 444
  <la, la'>8 r la'16 si do re mi re do si la8 r | % 445
  r4 la16 si do re mi re do si la8 r | % 446
  r8 la16 si do re mi8 r la,16 si do re mi8 | % 447
  r8 la,16 si do re mi8 r la,16 si do re mi8 | % 448
  <red, red'>8 -! r fad'4 si <fad, fad'>8 r | % 449
  <red red'>8 -. r r4 r <red' red'>8 -. r | \barNumberCheck #450
  <mi mi'>8 r <re re'> r <dod dod'> r <lad lad'> r | % 451
  <si si'>8 r mi r fad r fad, r | % 452
  <si re fad si>8 r si16 dod re mi fad mi re dod si8 r
  | % 453
  r4 si16 dod re mi fad mi re dod si8 r | % 454
  r8 si16 dod re mi fad8 r si,16 dod re mi fad8 | % 455
  r8 si,16 dod re mi fad8 r si,16 dod re mi fad8 | % 456
  <fa, fa'>8 r r4 r <dod' dod'>8 r | % 457
  <fa, fa'>8 r r4 r <mi mi'>8 r | % 458
  <fad fad'>8 r <si si'> r <dod dod'> r <dod, dod'> r | % 459
  <re re'>8 r <sol sol'> r <la la'> r <la, la'> r |
  \barNumberCheck #460
  re4 <la' re fad> re, <la' re fad> | % 461
  re,4 <la' re fad> re, <la' re fad> | % 462
  re,4 <sol' sib> <sib dod> <la do> | % 463
  <sold si>4 <sol sib> <mi sol> <dod mi> | % 464
  re,4 <la' re fad> re, <la' re fad> | % 465
  re,4 <la' re fad> re, <la' re fad> | % 466
  <red, red'>4 <si' si'>2. ~ ~ | % 467
  <si si'>1 | % 468
  <do, do'>4 <sol'' do mi> <do,, do'> <sol'' do mi> | % 469
  <do,, do'>4 <sol'' do mi> <do,, do'> <sol'' do mi> |
  \barNumberCheck #470
  <do,, do'>1 ~ ~ | % 471
  <do do'>1 | % 472
  <do do'>4 <sol'' do mi> <do,, do'> <sol'' do mi> | % 473
  <do,, do'>4 <sol'' do mi> <sib,, sib'> <sol'' do re> | % 474
  <la,, la'>4 <la' la'>2. ~ ~ | % 475
  <la la'>1 | % 476
  <re, re'>8 \sfpp r r4 r2 | % 477
  R1*2 | % 479
  <re fa la re>8 r r4 r2 | \barNumberCheck #480
  <do mi la do>8 r r4 r2 | % 481
  R1*2 | % 483
  <do mi la do>8 r r4 r2 | % 484
  <si red fad si>8 r r4 r2 | % 485
  R1*2 | % 487
  <si red fad si>8 r r4 r2 | % 488
  <mi' sold si mi>4 mi,16 fad sold la si la sold fad mi8
  <mi' sold si mi>8 | % 489
  <mi sold si mi>4 mi,16 fad sold la si la sold fad mi8
  <mi' sold si mi>8 | \barNumberCheck #490
  <mi sol sib mi>8 mi,16 fa sol la sib8 r mi,16 fa sol la
  sib8 | % 491
  r8 mi,16 fa sol la sib8 r mi,16 fa sol la sib8 | % 492
  <mi sold si mi>4 mi,16 fad sold la si la sold fad mi8
  r8 | % 493
  <mi' sold si mi>4 mi,16 fad sold la si la sold fad mi8
  r8 | % 494
  r8 mi16 fa sol la sib8 r mi,16 fa sol la sib8 | % 495
  r8 mi,16 fa sol la sib8 r mi,16 fa sol la sib8 | % 496
  <sol' sib do mi>4. <sol sib do mi>8 <sol sib do mi>4. <sol sib do
  mi>8 | % 497
  <sol sib do mi>4. <sol sib do mi>8 <sol sib do mi>4. <sol sib do mi>8
  | % 498
  <mi sol sib do>4. <mi sol sib do>8 <mi sol sib do>4. <mi sol sib do>8
  | % 499
  <mi sol sib do>4. <mi sol sib do>8 <mi sol sib do>4. <mi sol sib do>8
  | \barNumberCheck #500
  <do, do' mi sol sib do>8 r r4 r2 | % 501
  R1*3 | % 504
  <fa, fa'>1 | % 505
  R1*2 | % 507
  r8 fa16 sol la sib do8 r fa,16 sol la sib do8 | % 508
  <fa, fa'>1 | % 509
  R1*2 | % 511
  r8 fa16 sol la sib do8 r fa,16 sol la sib do8 | % 512
  <fad, fad'>1 | % 513
  r8 <la'' do>4 <la do> <la do> <la do>8 | % 514
  r8 r r4 r8 sol,,16 la sib do re8 | % 515
  r8 sol,16 la sib do re8 r sol,16 la sib do re8 | % 516
  <sold, sold'>1 | % 517
  r8 <si'' re>4 <si re> <si re> <si re>8 | % 518
  r2 r8 la,,16 si do re mi8 | % 519
  r8 la,16 si do re mi8 r <do'' mi>4 <do mi>8 | \barNumberCheck
  #520
  r8 <do mib>4 <do mib> <do mib> <do mib>8 | % 521
  r8 <do re>4 <do re> <si re> <si re>8 | % 522
  r8 <sib reb>4 <sib reb> <sib reb> <sib reb>8 | % 523
  r8 <sib do>4 <sib do> <la do> <la do>8 | % 524
  r8 <lab si>4 <lab si> <lab si> <lab si>8 | % 525
  fa1 | % 526
  <fa la do>4 <do, do' fa la do> <do do' fa la do> r | % 527
  R1 | % 528
  r4 <do do' fa lab> <do do' fa lab> r | % 529
  R1 | \barNumberCheck #530
  <do do' fad la>1 | % 531
  <do do' fad la>1 | % 532
  <do do' sol' sib>1 | % 533
  <do do' sol' sib do>1 | % 534
  <fa, do'>4 fa' la do | % 535
  reb4 sol fa mi | % 536
  do4 fa la do | % 537
  reb4 sol fa mi | % 538
  <fa,,, fa'>8 <fa' fa'> <fa fa'> <do do'> <do do'> <la la'> <la
  la'>8 <fa fa'> | % 539
  <fa fa'>8 <fa' fa'> <fa fa'> <dod dod'> <dod dod'> <la la'> <la
  la'>8 <fa fa'> | \barNumberCheck #540
  <fa fa'>4 r <fa' la re fa> r | % 541
  <fa la re fa>4 r <fa la re fa> r | % 542
  <mi mi'>8 r r4 <mi mi'> r | % 543
  <mi mi'>4 r <mi mi'> r | % 544
  <mi, mi'>4 <mi mi'> r <mi mi'> | % 545
  r4 <mi mi'> r <mi mi'> | % 546
  <mi' mi'>4 sold'8 mi mi,4 mi' | % 547
  mi,4 <mi' sold> mi, <mi' sold si> | % 548
  <mi,, mi'>4 <mi mi'> r <mi mi'> | % 549
  r4 <mi mi'> r <mi mi'> | \barNumberCheck #550
  <mi mi'>4 r r mi'' | % 551
  mi,4 mi' r mi | % 552
  mi,4 mi' r mi | % 553
  mi,4 mi' r mi | % 554
  mi,4 mi' r mi | % 555
  mi4 r mi <la do> | % 556
  r2 <mi, mi'> | % 557
  r2 <mi mi'> | % 558
  R1*2 | \barNumberCheck #560
  <la, la'>2 \p r | % 561
  <la la'>2 r | % 562
  <la la'>2 r | % 563
  <la la'>2 r <la la'>4 <sold'' si mi> ~ <la do mi> r | % 565
  <la,, la'>2 r | % 566
  <la la'>2 r | % 567
  <sol sol'>2 <fad fad'> | % 568
  <mi mi'>2 ( <la la'>4 ) r | % 569
  <si si'>1 <mi mi'>4 r r2 | % 571
  R1*2 | % 573
  <do do'>2. <mi mi'>4 | % 574
  <re re'>2. re4 | % 575
  <dod dod'>2 <la la'> | % 576
  <re re'>2 r | % 577
  r2 <mi, mi'> | % 578
  <la la'>8 la' do fa la2 | % 579
  r2 <mi,, mi'> | \barNumberCheck #580
  <la la'>8 r <do do'> r <si si'> r <re re'> r | % 581
  <do do'>8 r <dod dod'> r <re re'> r <fa fa'> r | % 582
  <mi mi'>4 r r2 | % 583
  r2 <mi mi'>8 r r4 | % 584
  <la la'>1 | % 585
  <sold sold'>1 | % 586
  <sol sol'>1 | % 587
  <fad fad'>1 | % 588
  <fa fa'>1 | % 589
  <fa fa'>1 | \barNumberCheck #590
  mi,16 mi' mi, mi' mi, mi' mi, mi' mi, mi' mi,
  mi'16 mi, mi' mi, mi' | % 591
  mi,16 mi' mi, mi' mi, mi' mi, mi' mi, mi' mi,
  mi'16 mi, mi' mi, mi' | % 592
  <la, la'>4 r r2 | % 593
  <dod dod'>4 r r2 | % 594
  <si si'>4 r r2 | % 595
  <si' si'>4 r r2 | % 596
  <lad lad'>4 r <la la'> r <sold sold'> r <sol sol'> r | % 598
  <fad fad'>4 r <fa fa'> r | % 599
  <mi mi'>4 r <mi mi'> r la8 dod' la dod la dod la dod | % 601
  dod,8 mi' <la, dod> mi' <la, dod> mi' <la, dod> mi' | % 602
  si,8 re' si re si re si re | % 603
  si,8 re' si re si re si re | % 604
  lad8 fad' dod fad la, fad' do fad | % 605
  sold,8 mi' si mi sol, mi' sib mi | % 606
  fad,8 re' la re fa, re' la re | % 607
  mi,8 dod' la dod mi, si' sold si | % 608
  la4 la8 dod la dod la dod | % 609
  r8 dod si dod si dod si dod | \barNumberCheck #610
  r8 dod la dod r do la do | % 611
  r8 si la si r si sold si | % 612
  la8 dod la dod la dod la dod | % 613
  <sold si>8 dod <sold si> dod <sold si> dod <sold si> dod | % 614
  <fad, la>8 dod' <fad, la> dod' <red, la'> do' <red, la'> do'
  | % 615
  <mi, la>8 si' <mi, la> si' <mi, sold> si' <mi, sold> si' | % 616
  <la, dod>8 la' <la, dod> la' <la, dod> la' <la, dod> la' | % 617
  <sold, si dod>8 sold' <sold, si dod> sold' <sold, si dod> sold'
  <sold, si dod>8 sold' | % 618
  <fad, la dod>8 fad' <fad, la dod> fad' <mi, la dod> mi' <mi, la
  dod>8 mi' | % 619
  re,8 re' re, re' red, red' red, red' | \barNumberCheck #620
  <mi, mi'>4 r r2 | % 621
  R1 | % 622
  <mi la dod mi>4 r r2 | % 623
  R1 | % 624
  <mi si' re mi>4 r r2 | % 625
  R1 | % 626
  <mi sold si mi>4 r r2 | % 627
  R1 | % 628
  <la la'>4 r <sol sol'> r | % 629
  <fa fa'>4 r <mi mi'> r | \barNumberCheck #630
  <la, la'>4 r <sol sol'> r | % 631
  <fa fa'>4 r <mi mi'> r | % 632
  <la la'>4 r r2 | % 633
  <la dod mi la>4 r r2 | % 634
  <la dod mi la>4 r r2
}

PartPTwoVoiceSix =  \relative mi {
  \clef "bass" \key do \major \numericTimeSignature\time 2/2 s1*3
  s2 s2*5  s1 | % 8
  s1*2 s1*3 s s s1*5 s1*2 | % 26
  r2 r8 mi red4 ~ | % 27
  red4 mi r2 s1*2 | \barNumberCheck #30
  r8 mi red2 mi4 s1*2 s | % 35
  s1*2 \f s1*6 s1*3 s s s s1*5 | \barNumberCheck #60
  do'2 reb s1*6 | % 67
  <sol, sib>2 <sib reb> | % 68
  <la do>2 <sol sib> | % 69
  <sol sib>2 <sib reb> | \barNumberCheck #70
  <la do>2 <sol sib> s1*7 s1*3 s s1*5 s16*33 s16*31 \f s1*4 s
  s1*4 s1*5 s1 \bar "||"
  \key fa \major s1*5 s s s1*10 s1 | % 137
  \clef "treble" s1*2 \bar "||"
  \clef "bass" \key do \major s1*2 s s s1*3 s s1*4 s1*3 s
  s1*3 s s1*4 s1*5 s1*7 s1*9 s1*10 s1*6 \bar "||"
  \key sib \major \time 3/4 s4*9 s4*27 s2*15 s1*6 s4*33 s1*6 s4*21
  s4*21 s1*6 | % 279
  la8 sib do la do4 s2. | % 281
  si8 do re si re4 | % 282
  re4 do sib s2*9 s4*21 s1*3 s4*9 s1*4 \clef "treble" s4*5 s2*15
  s1*3 | % 324
  \clef "bass" s2. s4*21 | % 332
  fa2. ~ | % 333
  fa2. | % 334
  fa2. ~ | % 335
  fa2. s1. s2. | % 339
  fad4 sol do8 dod s1*3 s4*13 \clef "treble" s2*7 s4*11 \clef "bass"
  s2*5 s2*7 s4*13 \pp s4*39 \bar "||"
  \numericTimeSignature\time 4/4  s1*4 s1*3 \bar "||"
  \key do \major s1*3 s1*4 s s1*3 s1*2 s1*3 s1*4 s1*6 s1*2 \bar
  "||"
  s1*4 \p s \bar "||"
  s1 s1*6 s1*5 s1*3 s1*4 s1*2 s s1*3 s1*2 s s s | % 462
  re,,4 re'2. ~ | % 463
  re2 s s1*2 s s1*3 s1*2 s s1 s1*2 \sfpp s s1*3 s1*2 s
  s1*3 s s s s1*4 s1*5 s s1*4 s1*5 s1*3 | % 525
  r8 <lab' si>4 <lab si> <lab si> <lab si>8 s1*2 s1*5 s1*2 s s1*3
  s1*3 s1*2 s s s s1*3 s1*4 s1*2 | \barNumberCheck #560
  s1*3 \p s1*5 s1*6 s1*5 s1*3 s1*8 s1*2 s1*4 s s s s1 | % 609
  sold4 r r2 | \barNumberCheck #610
  fad4 r red r | % 611
  mi4 r mi r s1*5 s1*4 s1*5 s1*7
}


% The score definition
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "Violoncello"
      \set Staff.shortInstrumentName = "Vlc."
      \context Staff <<
        \accidentalStyle modern
        \context Voice = "PartPOneVoiceOne" {
          % \piify #pi-combined ##t
          \PartPOneVoiceOne
        }
      >>
    >>
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Piano"
      \set PianoStaff.shortInstrumentName = "Pno."
      \context Staff = "1" <<
        \context Voice = "PartPTwoVoiceOne" { \voiceOne \PartPTwoVoiceOne }
        \context Voice = "PartPTwoVoiceTwo" { \voiceTwo \PartPTwoVoiceTwo }
      >> \context Staff = "2" <<
        \context Voice = "PartPTwoVoiceFive" { \voiceOne \PartPTwoVoiceFive }
        \context Voice = "PartPTwoVoiceSix" { \voiceTwo \PartPTwoVoiceSix }
      >>
    >>

  >>
  \header {
    piece = \markup \fill-line { \epsfile #Y #40 #myplot }
  }
}

