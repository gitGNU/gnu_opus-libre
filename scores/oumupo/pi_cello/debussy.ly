
\version "2.19.35"
\include "pilypi.ly"
\include "modify.ly"

\language "italiano"


\header {
  title = "Sonate"
  subtitle = "pour violoncelle et piano"
  composer = "Claude Debussy"
}


\layout {
  \context {
    \Score
    skipBars = ##t
  }

}

PartPOneVoiceOne =  \relative re, {
  \clef "bass" \key fa \major \numericTimeSignature\time 4/4 | % 1
   R1*4 | % 5
  r8 re32 sol re' sol re'4 ~ re8 mi fa mi16 re | % 6
  mi32 sol fa mi r8 r32 mi re do la do la sol
   mi32 sol fa mi r8  r32 sol, re' fa
  la32 re, sol si | % 7
   | % 7
  r8 r16 sol' -.  r4  r2 | % 8
   | % 8
  sib2 ~  sib16 fad sib, do mib fa fad lab | % 9
   | % 9
  r8 la fa mi r la16 fa mi4 ~ | \barNumberCheck #10
  mi8 re16 do la4 ~ la8 fa mi re | % 11
  r8 sib do re mi re16 do sib4 ~ | % 12
  sib8 la sol2 -. r4 | % 13
  r8 la'' fa mi r la16 fa mi4 ~ | % 14
  mi8 re16 do lab4 ~ lab8 sib do re | % 15
  r2 r8 la16 fa mi4 ~ | % 16
   | % 16
  mi8 re16 do  re8 fa16 sol  re2 -. | % 17
   | % 17
  si'16 do re mi si dod re mi si do re mi si
  dod16 re mi ~ | % 18
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 fa sol
  }

  fa8 ~ fa16 mi re32 fa mi re la16 sol fa re mi fa
  sol16 la | % 19
  si16 do re mi si dod re mi si do re mi si
  dod16 re mi | \barNumberCheck #20
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol16 la sib
  }

  la8 ~ la16 do sib la sol fa re8 ~ re16 do la sol | % 21
  sol16 fa re8 ~ re16 do la sol ~ sol do la sol ~ sol
  do16 la sol ~ | % 22
  sol16 do -. la -. sol ~ sol do -. la -. sol ~ sol do
  -. la16 -. sol ~ sol do -. la -. sol ~ | % 23
   | % 23
  sol16 do -. la -. sol ~ sol do -. la -. sol ~ sol do
  -. la16 -. sol ~ sol do -. la -. sol ~ | % 24
   | % 24
  sol16 do -. la -. sol ~ sol do -. la -. sol ~ sol do
  -. la16 -. sol ~ sol do -. la -. sol ~ | % 25
   | % 25
  sol16 do -. la -. sol ~ sol do -. la -. sol ~ sol do
  -. la16 -. sol ~ sol do -. la -. sol ~ | % 26
   | % 26
  sol16 do -. la -. sol ~ sol do -. la -. sol ~ sol do
  -. la16 -. sol ~ sol do -. la -. sol ~ | % 27
   | % 27
  sol16 do -. la -. sol ~ sol do -. la -. sol ~ sol do
  -. la16 -. sol ~ sol do -. la -. sol ~ | % 28
  sol16 do -. la -. sol ~ sol do -. la -. sol ~ sol do
  -. la16 -. sol ~ sol do -. la -. sol ~ | % 29
   | % 29
  sol16 do la re  do fa re sol
  la,16 re do fa  re sol fa la |
  \barNumberCheck #30
   | \barNumberCheck #30
  r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol'16 la si
  }

  la4 ~ la8 do si la16 sol | % 31
  sol8 fa16 mi re2 la4 | % 32
  sol'4 sol r2 | % 33
  re8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do16 sib la
  }

  sib4 ~ sib8 la16 sol32 la sol8 \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    fa16 mi re
  }

  | % 34
  r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do16 re mi
  }

  re4 ~ re8 fa mi re16 do | % 35
   | % 35
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 la si
  }

   la4 ~  la16 r do4 sol8 ~ | % 36
   | % 36
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 do, sol'
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re'8 sol, mi'
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 do,, sol'
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re'8 sol, mi'
  }

  | % 37
  r2 la' ~ | % 38
  la4 r r r8 r16 mi -. | % 39
   | % 39
  R1
    | \barNumberCheck #40
  r8 la fa mi r la16 fa mi4 ~ | % 41
  mi8 re16 do la4 ~ la8 fa mi re | % 42
  r8 sib do re mi re16 do sib4 ~ | % 43
  sib8 la sol2 -. r4 | % 44
  r4 fa''8 mi r la16 fa mi4 ~ | % 45
  mi8 re16 do la4 ~ la8 fa mi re | % 46
  r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do16 re mi
  }

  re4 ~ re8 fa mi re16 do | % 47
  do8 sib16 la sib4 ~ sib8 sol fa sol | % 48
  r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do,16 re mi
  }

  re4 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do16 re mi
  }

  re4 | % 49
  r8 la'16 do mi re la' do mi8 re la' do |
  \barNumberCheck #50
  mi2 la, | % 51
  <re,, la'>1 | % 52
  <re la'>2 r | % 53
   | % 53
  R1*2 | % 55
   | % 55
  r8 lab la sib dod re mib4 | % 56
  r8 lab, la16 la sib sib -. dod8 -. re -. mib -. do, ~ | % 57
  do8 mib -. fa -. do -. re -. mi16 -. fa -. sol8 -. dod, -. | % 58
  r4 lab'8 -. re, -. r4 la'8 -. mib -. | % 59
  r8 <re' sib' mi>16 fa' mi4 ~ mi16 r re8 -. dod16 -. dod -. dod
  -. re16 -. | \barNumberCheck #60
  r8 <re, sib' mi>16 fa' fad4 ~ fad8. sol16 -. lab -. lab -. lab
  -. sol16 -. | % 61
  r16 la -. sol -. fa -. re -. la -. sol -. fa -. do8 -.
  fa,8 -. sol <re' sib' mi> | % 62
  <mi la>2. ~ ~ <mi la>16 re -. do -. fa, -. | % 63
  <mi' la>2. ~ ~ <mi la>16 re -. la -. re, -. | % 64
  r16 mib -. mi -. lab -. sib -. lab -. fa -. mi -. r
  mib16 -. mi -. lab -. sib -. lab -. fa -. mi -. | % 65
  re4 -. r r2 | % 66
  r4 r8 lab'' r4 r8 lab ~ | % 67
  lab8 la sib16 sib -. sib -. si -. do si sib4 si8 | % 68
  dod8 -. la16 -. si -. lab8. -. sol16 dod8 -. la16 -. si -. lab8.
  la16 | % 69
  re4. do16 sib dod4 lab8 -. si -. | \barNumberCheck #70
   | \barNumberCheck #70
  mi8. re16  mi8. fad16  lab4  fad,
  ~ | % 71
   | % 71
  fad8 do re mi fad -. lab la16 -. la -. la -. lab -. | % 72
  fad8 mi16 -. re -. do4 ~ do16 r sol8 -. do,4 ~ | % 73
  do8 mib -. fa -. do -. re -. mi16 -. fa -. sol8 -. dod, -. | % 74
  r4 lab'8 -. re, -. r4 la'8 -. mib -. | % 75
  r8 <re' sib' mi>16 fa' mi4 ~ mi16 r re8 -. dod16 -. dod -. dod
  -. re16 -. | % 76
  r8 <re, sib' mi>16 fa' fad4 ~ fad16 r sol8 -. lab16 -. lab -.
  lab16 -. sol -. | % 77
  r16 lab -. lab -. sol -. r fad -. fad -. sol -. \tempo
  4=70 r16 lab -. fad -. lab -.  \times 2/3 {
    r8 sib fa
  }

  | % 78
   | % 78
  r16 la -. la -. lab -. r sol -. sol -. lab -. \tempo
  4=70 r16 la -. la -. sib -.  \times 2/3 {
    r8 si fad
  }

  | % 79
   | % 79
  r16 mi' -. la, -. si -.  re, -. mi -. la, -.
  si16 -.  re,4  \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    mi8 -.  la, -.  si -.
  }

  | \barNumberCheck #80
   | \barNumberCheck #80
  r16 mib, -. mi -. lab -. sib -. lab -. fa -. mi -. r
  mib16 -. mi -. lab -. sib -. lab -. fa -. mi -. | % 81
  r16 mib -. mi -. lab -.  sib -. mib -. mi -.
  lab16 -.  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 -. do -. do -.
  }

   \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 -. do -. si -.
  }

  | % 82
   | % 82
  r8 \once \override TupletBracket #'stencil = ##f
  \times 8/7  {
    do64 ~ do64. s1 si256 ~ si64.
    mib64. -. s1 mib64
  }

  do8. si16 r8 \once \override TupletBracket #'stencil = ##f
  \times 8/7  {
    do64 ~ do64. s1 si256 ~ si64.
    mib64. -. s1 mib64
  }

  do8. si16 | % 83
   | % 83
  \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    do16 sib32 re16 do si32 mib16
  }

   \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do16 sib re do si mib
  }

   \once \override TupletBracket #'stencil = ##f
  \times 8/7  {
    do32 sib32. re64 ~ re do
    ~ do64 s1 si32. mib32
  }

   do32 sib16 re32 \once \override TupletBracket #'stencil
  = ##f
  \times 2/3  {
    do16 si mib
  }

  | % 84
   | % 84
  do32 si re do si re do si  re do si
  re32 do si re do  si re do si re do
  si32 re  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do16  si  re
  }

   \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do16  si  re
  }

  | % 85
  \time 3/8  | % 85
   si32 re do si re16 do -. si -. re -. | % 86
  \once \override TupletBracket #'stencil = ##f
  \times 8/9  {
    do32. si re do si re do si re
  }

  | % 87
  fa8 lab8. fa16 | % 88
  lab8. fa16 lab8 ~ | % 89
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lab16 fad la
  }

  lab8 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lab,16 fad la
  }

  | \barNumberCheck #90
   | \barNumberCheck #90
  \once \override TupletBracket #'stencil = ##f
  \times 8/9  {
    lab32. fad la  re, dod mi
    re32. mi fad
  }

  | % 91
   | % 91
  \once \override TupletBracket #'stencil = ##f
  \times 8/9  {
    sol32. -. sol -. sol -. lab -. lab -. lab -. sol
    -. sol32. -. sol -.
  }

  | % 92
  \once \override TupletBracket #'stencil = ##f
  \times 8/9  {
    lab32. -. lab -. lab -. la -. la -. la -. lab
    si32. lab
  }

  | % 93
  \once \override TupletBracket #'stencil = ##f
  \times 8/9  {
    sol32. -. sol -. sol lab lab -. lab do do
    -. do32. -.
  }

  | % 94
  \once \override TupletBracket #'stencil = ##f
  \times 8/9  {
    sib32. -. sib -. sib si -. si -. si mib -. mib
    -. mib32. -.
  }

  | % 95
  dod16 mib r8 r | % 96
  r32 la lab fad la16 lab fad la | % 97
   | % 97
  \once \override TupletBracket #'stencil = ##f
  \times 8/9  {
    lab,32. fad la  lab fad la
    lab32. fad la
  }

  | % 98
   | % 98
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod,16 si re
  }

  dod8. si16 | % 99
  fa8. sol16 lab sib | \barNumberCheck #100
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 si re
  }

  dod8. si16 | % 101
   | % 101
  fa'8. sol16  lab sib | % 102
   | % 102
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa''16 mi re
  }

  dod8. si16 | % 103
  dod8. si16  r \once \override TupletBracket #'stencil =
  ##f
  \times 2/3  {
    la,64 re, sol,
  }

  do,32 | % 104
   | % 104
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa'''16 mi re
  }

  dod8. si16 | % 105
  dod8. si16  r \once \override TupletBracket #'stencil =
  ##f
  \times 2/3  {
    la,64 re, sol,
  }

  do,32 | % 106
   | % 106
  r8 do4 | % 107
  r8 do4 | % 108
  \numericTimeSignature\time 4/4  | % 108
   r8 mib -. fa -. do -. re -. mi16 -. fa -. sol8 -.
  dod,8 -. | % 109
  r4 lab'8 -. re, -. r4 la'8 -. mib -. | \barNumberCheck #110
  r8 mi''16 -. fa -. mi4 ~ mi16 r re8 dod,16 -. dod -. dod -.
  re16 -. | % 111
  r8 mi16 -. fa -. mi4 ~ mi16 r re8 dod,16 -. dod -. dod -. re
  -. | % 112
  dod16 dod -. dod -. re -. dod dod -. dod -. re -. fa
  fa16 -. fa -. fad -. la la -. la -. sib -. | % 113
  la''1 | % 114
  r2 r4 r8 r32 sib si sib | % 115
  R1 | % 116
  r2 r4 r8 r32 sib si sib | % 117
   | % 117
  la1 | % 118
   | % 118
  la,1 | % 119
  \time 2/4  | % 119
   r4 re, -. | \barNumberCheck #120
  do4 -. sib -. | % 121
  la16. mi32 la4. ~ | % 122
  la2 ~ | % 123
  la16 r32 mi la4. ~ | % 124
  la16 mi -. la -. mi' -. mi -. la, -. mi' -. la -. | % 125
  la16 -. mi -. la -. mi' -. la4 | % 126
  do4 re | % 127
  mi2 ~ | % 128
  mi16 r32 re mi8 mi4 ~ | % 129
  mi2 ~ | \barNumberCheck #130
  mi16 r32 re mi8 mi4 ~ | % 131
  mi2 | % 132
   | % 132
  mi4 ~  mi16 sol  fad mi ~ | % 133
   | % 133
  mi16 re32 si la16 -. fad -. mi -. sol -. fad -. mi -. | % 134
  re16 r32 mi fad16 la -. si -. re -. mi8 ~ | % 135
  mi16 fad32 mi re si la fad mi16 -. sol -. fad -. mi
  ~ | % 136
  mi16 fad32 mi re si la fad mi4 -. | % 137
  fad,8 re' la' si sol, re' si' dod | % 138
  la,8 re dod' re sol,, re' si' dod | % 139
  re,,8 la' fad' re' do,, sol' mi' do' | \barNumberCheck #140
  re,,8 la' fad' re'  do,, sol' mi' do' | % 141
   | % 141
  dod,,8 lab' fa' si | % 142
   | % 142
  r4 r16 fa8. si | % 143
   | % 143
  dod,,8 lab' fa' si | % 144
  r4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re,,32 ~ re16. fa' ~ si ~ fa16 ~
  }

  si16 ~ fa8 si | % 145
   | % 145
  r4  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re,,32 ~ re16. fa' ~ si ~ fa16 ~
  }

  si16 ~ fa8 si | % 146
   | % 146
  r4  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re,,32 ~ re16. fa' ~ si ~ fa16 ~
  }

  si16 ~  fa8 si | % 147
   | % 147
  fad,8 dod' sib' mi | % 148
  r4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol,,32 ~ sol16. sib' ~ mi ~ sib16 ~
  }

  mi16 ~ sib8 mi | % 149
  fad,,8 dod' sib' mi | \barNumberCheck #150
   | \barNumberCheck #150
  r4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol,,32 ~ sol16. sib' ~ mi ~ sib16 ~
  }

  mi16 ~ sib8 mi | % 151
   | % 151
  r16 la, -. lab -. sol -.  r32 sib16. mi r8 | % 152
   | % 152
  r16 la, -. lab -. sol -.  r32 sib16. mi r8 | % 153
   | % 153
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 re mi
  }

  fa4 ~ | % 154
   | % 154
  fa8 mi  re16 fa mi re | % 155
   | % 155
  do4 do | % 156
  do2 | % 157
  sol,16. re32 sol8 sol4 ~ | % 158
  sol16 re -. sol -. re' -. re -. sol, -. re' -. sol -.
  | % 159
  sol16 -. re -. sol -. re' -. sol4 | \barNumberCheck #160
  sib4 do | % 161
  re2 ~ | % 162
   | % 162
  re4 ~  re16  fa -.  mi -.
   re16 -. | % 163
   | % 163
  do,2 ~ | % 164
  do4 mib8 fa | % 165
  sol4. lab16 sol | % 166
  fad4. fa8 | % 167
  mib4 mib | % 168
  mib4 fad | % 169
  fa4 fa | \barNumberCheck #170
  fa4 lab | % 171
  sol2 ~ | % 172
  \times 2/3  {
    sol4 sib do
  }

  | % 173
  dod4. mib16 dod | % 174
   | % 174
  do4.  sib8 | % 175
   | % 175
  sib,8. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la32 lab la
  }

  sib8. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la32 lab la
  }

  | % 176
  sib4 re | % 177
  sib2 ~ | % 178
  sib4 fa' | % 179
  lab,2 ~ | \barNumberCheck #180
  lab4. r64 sol lab sol fad fa fad fa | % 181
  mi2 ~ | % 182
  mi4 sol | % 183
  sib2 | % 184
  re2 ~ | % 185
  re4 fa ~ | % 186
   | % 186
  fa4  r | % 187
   | % 187
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad,16 fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si,16 si -. si -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 -. si -. si -.
  }

  | % 188
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi,16 mi -. mi -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si'16 -. si -. si -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad'16 fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod'16 -. dod -. dod -.
  }

  | % 189
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 mi -. mi -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 dod -. dod -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 -. dod -. si -.
  }

  | \barNumberCheck #190
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 dod -. dod -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 si -. si -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 mi -. mi -.
  }

  | % 191
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si,16 -. si -. si -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 -. si -. si -.
  }

  | % 192
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi,16 mi -. mi -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si'16 si -. si -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad'16 fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod'16 dod -. dod -.
  }

  | % 193
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 -. mi -. mi -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 -. dod -. dod -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 dod si
  }

  | % 194
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 -. dod -. dod -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 -. si -. si -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 -. mi -. mi -.
  }

  | % 195
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re16 -. re -. re -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re16 -. re -. re -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re16 -. re -. re -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re16 -. re -. re -.
  }

  | % 196
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re16 -. re -. re -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re16 -. re -. re -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re16 -. re -. re -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 -. mi -. mi -.
  }

  | % 197
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad'16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 -. mi -. mi -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 -. dod -. dod -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 dod si
  }

  | % 198
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 -. dod -. dod -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 -. si -. si -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 -. mi -. mi -.
  }

  | % 199
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad'16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  | \barNumberCheck #200
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad'16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad,16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  | % 201
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad,16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad'16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  | % 202
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad'16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad,16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  | % 203
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad,16 fad fad
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa16 fa sol
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re16 re32 ~
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re32 re16
  }

  re8 | % 204
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do16 -. do -. do -.
  }

  do8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sib16 -. sib -. sib -.
  }

  sib8 | % 205
  la16. mi32 la4. ~ | % 206
  la16 r32 mi la4. ~ | % 207
  la16 mi -. la -. mi' -. mi -. la, -. mi' -. la -. | % 208
  la16 -. mi -. la -. mi' -. la4 | % 209
  do4 re | \barNumberCheck #210
  mi2 ~ | % 211
  mi16 r32 re mi4. ~ | % 212
  mi16 r32 re mi4. ~ | % 213
   | % 213
  mi4 ~  mi16 sol  fad mi ~ | % 214
   | % 214
  mi16 re32 si la16 -. fad -. mi -. sol -. fad -. mi -. | % 215
  re16 r32 mi fad16 la -. si -. re -. mi8 ~ | % 216
  mi16 fad32 mi re si la fad mi16 -. sol -. fad -. mi
  ~ | % 217
  mi16 fad32 mi re si la fad mi16 -. sol -. fad -. mi
  -. | % 218
  sib'32 do sib do sib do sib do sib do sib do
  sib32 do sib do | % 219
  sib32 do sib do sib do sib do sib do sib do
  sib32 do sib do | \barNumberCheck #220
  sib32 do sib do sib do sib do sib do sib do
  sib32 do sib do | % 221
  sib32 do sib do sib do sib do sib16 mib,32 fa sol
  sib32 do mib | % 222
   | % 222
  sol4 sol | % 223
  sol4 sib | % 224
  sol2 ~ | % 225
  sol4 sib | % 226
  dod4. mib16 dod | % 227
  do4. sib8 | % 228
  re4. mi16 re | % 229
  do4 sib | \barNumberCheck #230
  r4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol,,32 ~ sol16. si' ~ fa' ~ si,16 ~
  }

  fa'16 ~ si,8 fa' | % 231
  r4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol,,32 ~ sol16. si' ~ fa' ~ si,16 ~
  }

  fa'16 ~ si,8 fa' | % 232
  r8 r32 si,16. fa' r4 | % 233
   | % 233
  r8 r32 si do si r8 r32 sol fad sol | % 234
  la4 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 sol fa
  }

  | % 235
  mib8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re16 do sib
  }

  do4 ~ | % 236
   | % 236
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do8 sib -. la -.
  }

   \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 -. mib -. fa -.
  }

  | % 237
   | % 237
  r8 dod do sib | % 238
  r8 r32 la'16. r4 | % 239
  r4 r32 la16. r8 | \barNumberCheck #240
  R2 | % 241
  re,,4 -. r | % 242
  R2*2
}


PartPOneVoiceTwo =  \relative re' {
  \clef "bass" \key fa \major \numericTimeSignature\time 4/4 | % 1
   s1*4 s1 | % 6
  r8 re4. -. r8 re,4. -. | % 7
     | % 7
  mi'32 sol, re' fa \once \override TupletBracket #'stencil =
  ##f
  \times 2/3  {
    la32 re,16. -. sib'16 ~
  }

  sib4 ~ sib16 fad sib, do mib, lab, mib' do' | % 8
    s4 | % 9
   s1*4 s1*3 | % 16
   s4  s  s2 | % 17
   s1 s1*2 s s1 | % 23
   s1 | % 24
   s1 | % 25
   s1 | % 26
   s1 | % 27
   s1*2 | % 29
   s4  s  s  s |
  \barNumberCheck #30
   s1*2 | % 32
  r8 r32 la' sib la r8 r32 fa mi fa sol4. fa16 mi s1*2 | % 35
   s4  s  s2 | % 36
   s1 | % 37
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la,8 do, sol'
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re'8 sol, mi'
  }

  r2 | % 38
  r32 sib' do sib la sol mib sol la sib do sib
  la32 sol mi sol la sib do sib la sol mib sol
  la32 sib do sib \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la32 sol16. -. sol16 ~
  }

  | % 39
   | % 39
  sol32 ~ <fa sol> mib sol  fa mi sol fa
   mib32 sol fa mib  la sol fa mi
   sol32 fa mib sol  fa mi sol fa
   mib32 sol fa mi  la sol fa mib
  s1*4 s s1*5 | % 53
   s1*2 | % 55
   s1*3 s s s s | \barNumberCheck #70
   s4  s  s  s | % 71
   s1*2 s1*3 s1.  s4  s | % 78
   s2  s4  s | % 79
   s4  s  s  s1
   s1  s | \barNumberCheck #80
   s4*5  s4  s  s | % 82
   s1 | % 83
   s4  s  s  s | % 84
   s4  s  s  s1
   s1  s  s \tempo
  4=80 s1  s | % 85
  \time 3/8  | % 85
   s4. s1. | \barNumberCheck #90
   s8  s  s | % 91
   s4. s2. s4. | % 95
  r8 fad4 ~ | % 96
  fad8 r r | % 97
   s8  s  s | % 98
   s8*9 | % 101
   s4  s8 | % 102
   s8*5  s8 | % 104
   s8*5  s8 | % 106
   s2. | % 108
  \numericTimeSignature\time 4/4  | % 108
   s1*2 s s | % 114
  la1 | % 115
  la1 ~ | % 116
  la1 | % 117
   s1 | % 118
   s1 | % 119
  \time 2/4  | % 119
   s1 s1. s1 s s1. s2 | % 132
   s4  s8  s | % 133
   s2 s1 s s s4  s | % 141
   s2 | % 142
   | % 142
  r4 <re,,, la'> -. | % 143
   s2 | % 144
  r4 la' -. | % 145
   s4  | % 145
  r4 -. | % 146
   s4  s8  | % 146
  r4 la -. | % 147
   s8 | % 148
  r4 re -. s2 | \barNumberCheck #150
   | \barNumberCheck #150
  r4 re -. | % 151
   s4  | % 151
  r4 -. | % 152
   s4  | % 152
  r4 -. | % 153
   s2 | % 154
   s4  s | % 155
   s2 s1. s1 s2 | % 162
   s4  s16  s  s
   s16 | % 163
   s1 s | % 167
  r8 r32 re' dod re r8 r32 re dod re s2 | % 169
  r8 r32 mi mib mi r8 r32 mi mib mi s2 s1 s2 | % 174
   s4.  s8 | % 175
   s1. s s s1 | % 186
   s4  s | % 187
   s2 s1 s s s s s s s s s s s1. | % 213
   s4  s8  s | % 214
   s1 s s s | % 222
   | % 222
  r8 r32 fad fa fad r8 r32 fad fa fad s2 s1 s s |
  \barNumberCheck #230
  r4 re, -. | % 231
  r4 re -. | % 232
  r8 <sol, re'> -. la''4 ~ | % 233
   | % 233
  la4 la s1 | % 236
   s4  s | % 237
   s2 | % 238
  r8 <la,, re> -. r4 | % 239
  r4 <la re> -. s1.
}


PartPTwoVoiceOne =  \relative do' {
  \clef "treble" \key fa \major \numericTimeSignature\time 4/4 R1 | % 2
  r8 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do32 re mi
  }

  re4 ~ re8 fa mi re16 do ~ | % 3
  do8 sib16 la sib2 sol'8 mi | % 4
  r8 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do32 re mi
  }

  re4 ~ re8 fa la si16 do | % 5
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do16 si la
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol16 si, la
  }

  sol4 -. r2 | % 6
  do8 -. re -. r4 r2 | % 7
  r4 fad \clef "bass" mib,2 -. | % 8
  r4 \clef "treble" fad' mib,2 -. | % 9
  fa'4 dod do lab' | \barNumberCheck #10
  fa4 dod do sib | % 11
  fa'4 mi re mi | % 12
  fa4 sol la sib | % 13
  do4 lab do lab | % 14
  do4 lab re mi | % 15
  la4 sib la sib | % 16
  mi,,4 re re2 -. | % 17
  mi4 dod mi dod | % 18
  do8 fa sol la la4 -. r | % 19
  mi4 dod mi dod | \barNumberCheck #20
  sol'8 fa sib do re4 mi | % 21
  re,4 mi2 r4 | % 22
  r32 \clef "bass" sol,, mi' sol, r mi dod' mi, r sol
  mi'32 sol, r la fad' la, r sol mi' sol, r la
  fad'32 la, r dod la' dod, r la fad' la, | % 23
  r32 sol mi' sol, r mi dod' mi, r sol mi' sol,
  r32 la fad' la, r sol mi' sol, r la fad' la, r
  dod32 la' dod, r mi do' mi, | % 24
  r32 sol mi' sol, r mi do' mi, r dod la' dod, r
  la'32 \clef "treble" fa' la, r sol mi' sol, r \clef
  "bass" mi32 do' mi, r dod la' dod, r mi do' mi,
  | % 25
  \clef "treble" fa''8 mi sol re fa4 do | % 26
  sol'8 la fa sol sib do dod mib | % 27
  fa8 mi sol re fa4 do | % 28
  mi8 sol re fa lab mi fa lab | % 29
  la4 fa la fa | \barNumberCheck #30
  do'4 re,,,2 fa4 | % 31
  sol4 la do re | % 32
  do''4 re,,,2 fa4 | % 33
  do'''4 re,,,2 mi4 | % 34
  \clef "bass" do4 si sib la | % 35
  sol1 | % 36
  r4 \clef "treble" re'8 la' r4 re,8 la' | % 37
  r2 r4 r8 la'' ~ | % 38
  la4 la -. la -. la -. | % 39
  R1 | \barNumberCheck #40
  fa,,4 dod do lab' | % 41
  fa4 dod do sib | % 42
  fa'4 mi re mi | % 43
  fa4 sol la sib | % 44
  re,4 dod do dod | % 45
  re4 mi fa sol | % 46
  do,2 \clef "bass" la,4 mi' | % 47
  mi'8 re16 do re2 r4 | % 48
  la4 fa la fa | % 49
  la4 fa la fa | \barNumberCheck #50
  la2 mi | % 51
  la1 ~ | % 52
  la2 r | % 53
  R1*6 | % 59
  re,4 -. r r2 | \barNumberCheck #60
  re4 -. r r2 | % 61
  \clef "treble" re'4 -. fa -. sol -. la -. | % 62
  r4 dod' -. r la,, -. | % 63
  r4 dod'' -. r la,, -. | % 64
  re4 r re -. r | % 65
  re4 -. r r8 \clef "bass" mi, -. fad -. lab ~ | % 66
  lab8 re, -. mi -. fad -. lab -. re, -. mi -. fad -. | % 67
  lab8 -. re, -. mi -. fad -. lab -. re, -. mi -. fad -. | % 68
  lab8 -. re, -. mi -. fad -. lab -. re, -. mi -. fad -. | % 69
  \clef "treble" lab'8 re, mi fad lab re, mi fad |
  \barNumberCheck #70
  lab8 re, mi fad lab re, mi fad | % 71
  lab4 -. r r2 | % 72
  r4 mi'' r2 | % 73
  R1*2 | % 75
  \clef "bass" re,,,4 -. r r2 | % 76
  re4 -. r r2 | % 77
  \clef "treble" re'2 ~ re8. mib32 re mib8 sol,16 fa'32 mib | % 78
  re2 ~ re8. mi32 re \clef "bass" mi8 fad,16 \clef "treble" fad'32
  mi32 | % 79
  re4 -. r r2 | \barNumberCheck #80
  re4 -. r re -. r | % 81
  re4 -. r r2 | % 82
  r8 r16 mib ~ mib r r8 r r16 mib ~ mib r r8 | % 83
  re8 -. mib -. r mib -. re -. mib -. r mib -. | % 84
  R1 | % 85
  \time 3/8  r8 fa -. r | % 86
  fa8 -. r fa -. | % 87
  r8 fa -. r | % 88
  fa8 -. r fa -. | % 89
  r8 fad r | \barNumberCheck #90
  fad8 r fad | % 91
  mi8 fa mi | % 92
  fa8 fad fa | % 93
  mi8 fa fad | % 94
  sol8 lab la | % 95
  sib8 -. dod4 | % 96
  dod16. si32 dod16. si32 dod16. si32 | % 97
  dod,16. si32 dod16. si32 dod16. si32 | % 98
  mib8 -. r fad -. | % 99
  r8 re -. r | \barNumberCheck #100
  mib8 -. r fad -. | % 101
  r8 re -. r | % 102
  dod4 re8 | % 103
  mib8 mi la | % 104
  dod,4 re8 | % 105
  mib8 mi la | % 106
  R4.*2 | % 108
  \numericTimeSignature\time 4/4  R1*2 | \barNumberCheck #110
  r4 r8 sol ~ sol lab -. r4 | % 111
  r4 r8 sol ~ sol r r4 | % 112
  r4 sib8 -. do -. re -. mi -. fad -. lab -. | % 113
  r2 mib''8 -. mi -. dod -. mib -. | % 114
  si8 -. dod -. r4 r2 | % 115
  r2 mi8 -. fa -. re -. mi -. | % 116
  do8 -. re -. r4 r2 | % 117
  r4 mib, -. mi -. r | % 118
  r2 dod,,4 -. mib -. | % 119
  \time 2/4  r4 \times 8/7 {
    r32 la32. re,64 ~ re32. la'
    re,32
  }

  | \barNumberCheck #120
  \times 8/7  {
    r32 sol32. do,64 ~ do32. sol'
    do,32
  }

  \times 8/7  {
    r32 fa32. sib,64 ~ sib32. fa'
    \clef "bass" sib,32
  }

  | % 121
  \times 8/9  {
    r32 mi16 la,16. mi'32 la,16. \clef
    "treble" mi'16 la,16. mi'32 la,16
  }

  | % 122
  \times 8/9  {
    r32 mi'16 \clef "bass" la,16. mi'32 la,16.
    mi'16 la,16. \clef "treble" mi'32 la,16
  }

  | % 123
  \times 8/9  {
    r32 mi'16 la,16. mi'32 \clef "bass" la,16.
    mi'16 la,16. mi'32 la,16
  }

  | % 124
  \times 8/9  {
    r32 \clef "treble" mi'16 la,16. mi'32
    la,16. mi'16 \clef "bass" la,16. mi'32 la,16
  }

  | % 125
  \times 8/7  {
    r32 mi'32. la,64 ~ la32. \clef
    "treble" mi'32. la,32
  }

  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    re,32
  }

  | % 126
  \times 8/7  {
    r32 sol32. do,64 ~ do32. sol'
    do,32
  }

  \times 8/7  {
    r32 fa32. sib,64 ~ sib32. fa'
    \clef "bass" sib,32
  }

  | % 127
  \times 8/9  {
    r32 mi16 la,16. mi'32 la,16. \clef
    "treble" mi'16 la,16. mi'32 la,16
  }

  | % 128
  \times 8/9  {
    r32 mi'16 \clef "bass" la,16. mi'32 la,16.
    mi'16 la,16. \clef "treble" mi'32 la,16
  }

  | % 129
  \times 8/9  {
    r32 mi'16 la,16. mi'32 \clef "bass" la,16.
    mi'16 la,16. mi'32 la,16
  }

  | \barNumberCheck #130
  \times 8/9  {
    r32 \clef "treble" mi'16 la,16. mi'32
    la,16. mi'16 \clef "bass" la,16. mi'32 la,16
  }

  | % 131
  \times 8/9  {
    r32 mi'16 la,16. \clef "treble" mi'32
    la,16. mi'16 la,16. mi'32 \clef "bass" la,16
  }

  | % 132
  \times 8/9  {
    r32 mi'16 la,16. mi'32 la,16. \clef
    "treble" mi'16 la,16. mi'32 la,16
  }

  | % 133
  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  | % 134
  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  | % 135
  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  | % 136
  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  | % 137
  mi'''16 -. re32 si la16 -. fad -. mi -. sol -. fad -. mi
  -. | % 138
  re16 r32 mi fad16 -. la -. si -. re -. mi8 ~ | % 139
  mi16 fad32 mi re16 si mi, fad -. fad8 -. | \barNumberCheck
  #140
  r8 r32 re mi fad r8 r32 la si do | % 141
  dod4 -. r | % 142
  r8 r32 re dod do r8 r32 fa, sol si | % 143
  r4 dod ~ | % 144
  dod4 la | % 145
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa16 mi re
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do16 si la
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 la si
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do16 re mi
  }

  | % 146
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re16 do si
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la16 sol fa
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 re mi
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa16 sol mi
  }

  | % 147
  dod4 -. dod ~ | % 148
  dod8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib16 re dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sib16 dod re
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 fa la
  }

  | % 149
  sol32 fad fa mi dod4 dod8 ~ | \barNumberCheck #150
  dod8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib16 re dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sib16 dod re
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 fa la
  }

  | % 151
  dod32 la lab sol fad fa mi dod r8 fa32 fad sol sib
  | % 152
  dod32 la lab sol fad fa mi dod r8 fa32 fad sol sib
  | % 153
  r4 r8 la ~ | % 154
  la4 si -. | % 155
  \times 8/7  {
    r32 do'32. do,64 ~ do32. sol'
    do,32
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re,16 \clef "bass" sol, do,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi'16 sol, do,
  }

  | % 156
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do'16 fa, sib,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re'16 fa, sib,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sib'16 mib, lab,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do'16 mib, lab,
  }

  | % 157
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la'16 re, sol,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi'16 re sol,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la'16 re, sol,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi'16 re sol,
  }

  | % 158
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la'16 re, sol,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi'16 re sol,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la'16 re, sol,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi'16 re sol,
  }

  | % 159
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la'16 re, sol,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi'16 re sol
  }

  \times 8/7  {
    r32 \clef "treble" sol'32. do,64 ~ do32.
    sol'32. do,32
  }

  | \barNumberCheck #160
  \times 8/7  {
    r32 fa32. sib,64 ~ sib32. fa'
    \clef "bass" sib,32
  }

  \times 8/7  {
    r32 mib32. lab,64 ~ lab32. mib'
    lab,32
  }

  | % 161
  \times 8/9  {
    r32 \clef "treble" re16 sol,16. re'32
    sol,16. re'16 \clef "bass" sol,16. re'32 sol,16
  }

  | % 162
  \times 8/7  {
    r32 re'32. sol,64 ~ sol32. \clef
    "treble" re'32. sol,32
  }

  \times 8/7  {
    r32 re''32. sol,64 ~ sol32. re'
    sol,32
  }

  | % 163
  \times 8/7  {
    r32 do'32. do,64 ~ do32. do'
    do,32
  }

  \times 8/7  {
    r32 do32. do,64 ~ do32. do'
    do,32
  }

  | % 164
  \times 8/9  {
    r32 lab'16 lab,16. lab'32 lab,16. lab'16
    lab,16. sib'32 sib,16
  }

  | % 165
  \times 8/7  {
    r32 do''32. do,64 ~ do32. do'
    do,32
  }

  \times 8/7  {
    r32 do32. do,64 ~ do32. do'
    do,32
  }

  | % 166
  \times 8/9  {
    r32 lab'16 lab,16. lab'32 lab,16. lab'16
    lab,16. lab'32 lab,16
  }

  | % 167
  \times 8/7  {
    r32 lab'32. lab,64 ~ lab32. lab'
    lab,32
  }

  \times 8/7  {
    r32 lab'32. lab,64 ~ lab32. lab'
    lab,32
  }

  | % 168
  \times 8/7  {
    r32 lab'32. lab,64 ~ lab32. lab'
    lab,32
  }

  \times 8/7  {
    r32 lab'32. lab,64 ~ lab32. lab'
    lab,32
  }

  | % 169
  \times 8/7  {
    r32 sib'32. sib,64 ~ sib32. sib'
    sib,32
  }

  \times 8/7  {
    r32 sib'32. sib,64 ~ sib32. sib'
    sib,32
  }

  | \barNumberCheck #170
  \times 8/7  {
    r32 sib'32. sib,64 ~ sib32. sib'
    sib,32
  }

  \times 8/7  {
    r32 sib'32. sib,64 ~ sib32. sib'
    sib,32
  }

  | % 171
  \times 8/7  {
    r32 sol'''32. sol,64 ~ sol32.
    sol'32. sol,32
  }

  \times 8/7  {
    r32 sol32. <sol, sol>64 ~ s1 sol'32.
    sol,32
  }

  | % 172
  \times 8/9  {
    r32 mib'16 mib,16. mib'32 mib,16. mib'16
    mib,16. fa'32 fa,16
  }

  | % 173
  \times 8/7  {
    r32 sol''32. sol,64 ~ sol32.
    sol'32. sol,32
  }

  \times 8/7  {
    r32 sol32. sol,64 ~ sol32. sol'
    sol,32
  }

  | % 174
  \times 8/9  {
    r32 mib'16 mib,16. mib'32 mib,16. mib'16
    mib,16. fa'32 fa,16
  }

  | % 175
  fad4 fa | % 176
  re4 sol | % 177
  fad4 fa | % 178
  re4 sib' | % 179
  lab4 sib | \barNumberCheck #180
  la4 sib | % 181
  dod8. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do32 si do
  }

  dod8. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    do32 si do
  }

  | % 182
  dod4 mi | % 183
  do2 | % 184
  sol2 | % 185
  sib4 fa ~ | % 186
  fa2 | % 187
  lab4 -. r | % 188
  r4 r8 dod, -. | % 189
  fad4 -. r | \barNumberCheck #190
  dod8 -. si -. r4 | % 191
  r8 \clef "bass" mi, -. r mi -. | % 192
  r8 mi -. r mi -. | % 193
  \clef "treble" fad'8 -. mi -. re -. mi -. | % 194
  fad8 -. mi -. fad -. mi -. | % 195
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 -. mi -. mi -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 -. dod -. dod -.
  }

  \clef "bass" \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 -. si -. si -.
  }

  | % 196
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 -. dod -. dod -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 -. si -. si -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. fad -. fad -.
  }

  mi8 -. | % 197
  \clef "treble" lab'4 -. dod,8 -. mib -. | % 198
  lab'4 -. dod,8 -. mib -. | % 199
  sib'8 -. sib -. r4 | \barNumberCheck #200
  R2*3 | % 203
  r4 \times 8/7 {
    r32 la,32. re,64 ~ re32. la'
    re,32
  }

  | % 204
  \times 8/7  {
    r32 sol32. do,64 ~ do32. sol'
    do,32
  }

  \times 8/7  {
    r32 fa32. sib,64 ~ sib32. fa'
    \clef "bass" sib,32
  }

  | % 205
  \times 8/9  {
    r32 mi16 la,16. mi'32 la,16. \clef
    "treble" mi'16 la,16. mi'32 la,16
  }

  | % 206
  \times 8/9  {
    r32 mi'16 \clef "bass" la,16. mi'32 la,16.
    mi'16 la,16. \clef "treble" mi'32 la,16
  }

  | % 207
  \times 8/9  {
    r32 mi'16 la,16. mi'32 \clef "bass" la,16.
    mi'16 la,16. mi'32 la,16
  }

  | % 208
  \times 8/7  {
    r32 mi'32. la,64 ~ la32. \clef
    "treble" mi'32. la,32
  }

  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    re,32
  }

  | % 209
  \times 8/7  {
    r32 sol32. do,64 ~ do32. sol'
    do,32
  }

  \times 8/7  {
    r32 fa32. sib,64 ~ sib32. fa'
    \clef "bass" sib,32
  }

  | \barNumberCheck #210
  \times 8/9  {
    r32 mi16 la,16. mi'32 la,16. \clef
    "treble" mi'16 la,16. mi'32 la,16
  }

  | % 211
  \times 8/9  {
    r32 mi'16 \clef "bass" la,16. mi'32 la,16.
    mi'16 la,16. \clef "treble" mi'32 la,16
  }

  | % 212
  \times 8/9  {
    r32 mi'16 la,16. mi'32 \clef "bass" la,16.
    mi'16 la,16. mi'32 la,16
  }

  | % 213
  \times 8/9  {
    r32 \clef "treble" mi'16 la,16. mi'32
    la,16. mi'16 la,16. mi'32 la,16
  }

  | % 214
  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  | % 215
  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  | % 216
  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  | % 217
  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  \times 8/7  {
    r32 la'32. re,64 ~ re32. la'
    la,32
  }

  | % 218
  fa'16 -. mib32 do \clef "bass" sib16 -. sol -. fa -. lab -.
  sol16 -. fa -. | % 219
  mib16 r32 fa sol16 -. sib -. \clef "treble" do -. mib -. fa8
  ~ | \barNumberCheck #220
  fa16 sol32 fa mib do \clef "bass" sib sol fa16 -. lab -.
  sol16 -. fa ~ | % 221
  fa16 mib32 fa sol sib \clef "treble" do mib fa16 -. mib32
  fa32 sol sib do mib | % 222
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la16 sol la,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la16 sol' la
  }

  \once \override TupletBracket #'stencil = ##f
  \times 8/7  {
    sib32 sol32. sib,64 ~ sib32.
    sol'32. sib32
  }

  | % 223
  \once \override TupletBracket #'stencil = ##f
  \times 8/7  {
    la32 sol32. la,64 ~ la32. sol'
    la32
  }

  \once \override TupletBracket #'stencil = ##f
  \times 8/7  {
    fad32 mib32. fad,64 ~ fad32.
    dod'32. fad32
  }

  | % 224
  \once \override TupletBracket #'stencil = ##f
  \times 8/7  {
    la32 sol32. la,64 ~ la32. sol'
    la32
  }

  \once \override TupletBracket #'stencil = ##f
  \times 8/7  {
    sib32 sol32. sib,64 ~ sib32.
    sol'32. sib32
  }

  | % 225
  \once \override TupletBracket #'stencil = ##f
  \times 8/7  {
    la32 sol32. la,64 ~ la32. sol'
    la32
  }

  \once \override TupletBracket #'stencil = ##f
  \times 8/7  {
    fad32 mib32. fad,64 ~ fad32.
    dod'32. fad32
  }

  | % 226
  \times 8/7  {
    r32 sol'32. sol,64 ~ sol32. sol'
    sol,32
  }

  \times 8/7  {
    r32 sol32. sol,64 ~ sol32. sol'
    sol,32
  }

  | % 227
  \times 8/9  {
    r32 mib'16 mib,16. mib'32 mib,16. mib'16
    mib,16. fa'32 fa,16
  }

  | % 228
  \times 8/9  {
    r32 sol''16 sol,16. sol'32 sol,16. sol'16
    sol,16. sol'32 sol,16
  }

  | % 229
  \times 8/9  {
    r32 mi'16 mi,16. mi'32 mi,16. mi'16
    mi,16. mi'32 mi,16
  }

  | \barNumberCheck #230
  la'4 r | % 231
  la4 r | % 232
  la4 -. r | % 233
  R2*4 | % 237
  r8 \times 2/3 {
    r16 \clef "bass" mib,, dod,
  }

  \times 2/3  {
    r16 dod' do,
  }

  \times 2/3  {
    r16 do' sib,
  }

  | % 238
  r4 \clef "treble" re'''' -. | % 239
  r4 re -. | \barNumberCheck #240
  re,,2 | % 241
  \clef "bass" re,,4 -. r | % 242
  R2*2
}


PartPTwoVoiceTwo =  \relative re' {
  \clef "treble" \key fa \major \numericTimeSignature\time 4/4 s1*4 s1
  s1 s2 \clef "bass" s2. \clef "treble" s s1*4 s s1 s1*2 s s32
  \clef "bass" s32*31 s1 s16*7 \clef "treble" s32*7 \clef "bass"
  s32*11 | % 25
  \clef "treble" s1*2 s s1*3 s1*2 | % 34
  \clef "bass" s1 s4*5 \clef "treble" s4*7 s1 s s1*4 s2*5 \clef
  "bass" s1. s1*7 s1*3 s | % 61
  \clef "treble" s1*3 s8*13 \clef "bass" s8*11 s1*2 | % 69
  \clef "treble" s1 s1*3 s1*2 | % 75
  \clef "bass" s1 s | % 77
  \clef "treble" s1 s2. \clef "bass" s8. \clef "treble" s16*17 s1*2 | % 82
  re4 do -. mib do -. s1 s | % 85
  \time 3/8  s4. s1. s2. s s8*9 s1. s8*15 s2. | % 108
  \numericTimeSignature\time 4/4  s1*2 s s s1*4 s1 | % 119
  \time 2/4  s1 \clef "bass" s1 s1 \clef
  "treble" s1 \clef "bass" s1 \clef "treble" s1
  \clef "bass" s1 s1 \clef "treble" s1 \clef
  "bass" s1 \clef "treble" s1 s1 \clef "bass"
  s1 \clef "treble" s1 s1 \clef "bass" s1
  \clef "treble" s1 \clef "bass" s1 \clef "treble"
  s1 \clef "bass" s1 s \clef "treble" s1
  \clef "bass" s1 \clef "treble" s1 s1 s s2 | % 139
  r4 r8 r16 mi' ~ | \barNumberCheck #140
  mi4 sol | % 141
  r4 dod ~ | % 142
  dod4 la | % 143
  dod4 -. r | % 144
  r8 r32 re dod do r8 r32 fa, sol la s2 s1. s1 s s1
  \clef "bass" s1 s1. s1 \clef "treble" s1 \clef
  "bass" s1 s1 \clef "treble" s1 \clef "bass"
  s1 \clef "treble" s1 s1 s s s s s s1. s s
  s1*2 s1 s8*5 \clef "bass" s4. s2 | % 193
  \clef "treble" s2 s8*7 \clef "bass" s8 s2 | % 197
  \clef "treble" s2 s1 s s s1 \clef "bass" s1 \clef
  "treble" s1 s1 \clef "bass" s1 \clef "treble"
  s1 \clef "bass" s1 s1 \clef "treble"
  s1 \clef "bass" s1 s1 \clef "treble"
  s1 \clef "bass" s1 \clef "treble" s1 \clef
  "bass" s1 s1 \clef "treble" s1 s1 s8
  \clef "bass" s8*5 \clef "treble" s4 s8. \clef "bass" s2 \clef
  "treble" s16*5 s1 s s s1*2 s2*5 s1 \clef "bass" s1 \clef
  "treble" s4*5 | % 241
  \clef "bass" s1
}


PartPThreeVoiceOne =  \relative re {
  \clef "bass" \key fa \major \numericTimeSignature\time 4/4 R1 | % 2
  <re la' fa' la>1 | % 3
  <sol, re' fa' la>2. <la mi'>4 | % 4
  <re, la' fa' fa' la>2 do4 la | % 5
  <sol sol'>2 -. r | % 6
  <do sol' mi'>8 -. <sol re' sol re'> -. r4 r2 | % 7
  r2 r4 <lab lab'> -. | % 8
  r2 r4 <lab lab'> -. | % 9
  R1*2 | % 11
  r2 fa''4 sol | % 12
  la4 r r2 | % 13
  fa,4 sib, fa' sib, | % 14
  fa'4 sib, fa' sib, | % 15
  <sol dod sol'>4 <fad fad'> <sol dod sol'> <fad fad'> | % 16
  <la' mi'>4 <sol re'> <re la' re> re, -. | % 17
  <la'' mi'>2 <la mi'> | % 18
  <re, re'>4 <sol, sol'>2 -. r4 | % 19
  <la' mi'>2 <la mi'> | \barNumberCheck #20
  <mib mib'>4 <re re'> <sol, sol'> do | % 21
  <sol sol'>4 do2 r4 | % 22
  dod8 -. sib -. dod -. mi -. dod -. mi -. sol -. mi -. | % 23
  dod8 -. sib -. dod -. mi -. dod -. mi -. sol -. sib -. | % 24
  dod,8 -. sib -. sol -. mib' -. dod -. sib -. sol -. sib -. | % 25
  <dod fa dod'>8 <do mi do'> <mib sol mib'> <sib re sib'> <si fa'
  dod'>4 <la si la'> | % 26
  <mib' sol mib'>8 <fa la fa'> <dod fa dod'> <mib sol mib'> <sol
  sib sol'>8 <la do la'> <sib dod sib'> <do mib do'> | % 27
  <dod fa dod'>8 <do mi do'> <mib sol mib'> <sib re sib'> <dod fa
  dod'>4 <la do la'> | % 28
  <dod mi dod'>8 <mib sol mib'> <sib re sib'> <dod fa dod'> <fa lab
  fa'>8 <dod mi dod'> <re fa re'> <mi lab mi'> | % 29
  <fa la fa'>8 sol,, \clef "treble" <re''' sol re'>4 <fa, la fa'>8
  \clef "bass" sol,,8 <re''' sol re'>4 | \barNumberCheck #30
  <do,,, sol' do>4 <do' re do' re>2 <fa fa'>4 | % 31
  <sol do>4 la do re | % 32
  <do,, sol' do do'>4 <re' re'>2 <fa fa'>4 | % 33
  <do, sol' do do'>4 <re' re'>2 <mi mi'>4 | % 34
  fa4 mi mib re | % 35
  dod4 mi re sol, | % 36
  do,8 do' sol' do, do, do' sol' do, | % 37
  r2 r4 \clef "treble" r8 <mib'' sol la mib'> ~ ~ ~ ~ | % 38
  <mib sol la mib'>4 r r2 | % 39
  dod8 dod4 dod8 ~ dod r r4 | \barNumberCheck #40
  R1*4 | % 44
  \clef "bass" <sib,, fa'>4 la lab la | % 45
  <sib fa'>4 do re mi | % 46
  fa1 | % 47
  <sol, sol'>2. r4 | % 48
  la'4 re, la' re, | % 49
  la'4 re, la' re, | \barNumberCheck #50
  R1 | % 51
  r4 fad''2. | % 52
  re,,,4 r r2 | % 53
  R1*2 | % 55
  r2 r4 r8 <fad fad'> -. | % 56
  <lab lab'>4 -. r r2 | % 57
  sib4 -. la -. sib -. si -. | % 58
  sib4 -. si -. sib -. si -. | % 59
  sol4 -. r r16 sol -. la -. sib -. dod -. dod -. dod -.
  re16 -. | \barNumberCheck #60
  sol,4 -. r r16 sib -. do -. re -. fa -. fa -. fa -. sol
  -. | % 61
  r2 r4 <sol re' sib'> -. | % 62
  r4 \clef "treble" <dod' lab'> -. r \clef "bass" <fa,, do'> -. | % 63
  r4 \clef "treble" <dod'' lab'> -. r \clef "bass" mi,8 -. re -. | % 64
  <re, lab'>4 sol8 fad16 -. sol -. <re lab'>4 sol8 fad16 -. sol -.
  | % 65
  <re lab'>8 sib'16 -. do -. re2 -. r4 | % 66
  R1*3 | % 69
  <sib, sib'>2 <mi, mi'>4 r | \barNumberCheck #70
  <sib' sib'>2 <mi, mi'>4 r | % 71
  re'4 -. r r2 | % 72
  r4 <do sol'>2 -. r4 | % 73
  sib4 -. la -. sib -. si -. | % 74
  sib4 -. si -. sib -. si -. | % 75
  sol4 -. r r16 sol -. la -. sib -. dod -. dod -. dod -.
  re16 -. | % 76
  sol,4 -. r r16 sib -. dod -. re -. fad -. fad -. fad -.
  sol16 -. | % 77
  lab4 -. re, -. lab' -. dod, -. | % 78
  lab'4 -. re, -. la' -. re, -. | % 79
  <sol, sol'>4 -. r r2 | \barNumberCheck #80
  <re' lab'>4 sol8 fad16 -. sol -. <re lab'>4 sol8 fad16 -. sol -.
  | % 81
  <re lab'>8 sib'16 -. do -. re4 ~ re8 mi -. fad -. lab -. | % 82
  <fa la>4 -. <fad la> -. <fa la> -. <fad la> -. | % 83
  <fa lab>8 -. <fad lab> -. si,, -. <fad'' lab> -. <fa lab> -.
  <fad la>8 -. si,, -. <fad'' la> -. | % 84
  r8 si,, -. r4 r2 | % 85
  \time 3/8  si8 -. r fa' -. | % 86
  r8 si, -. r | % 87
  si8 -. r fa' -. | % 88
  r8 si, -. r | % 89
  mi8 r si' | \barNumberCheck #90
  r8 mi, r | % 91
  <do sol'>8 si do | % 92
  si8 sol si | % 93
  do8 si sib | % 94
  mib8 re dod | % 95
  fad8 -. <mi si' lab'>4 | % 96
  <re la' la'>8 -. r r | % 97
  R4. | % 98
  r8 mi -. r | % 99
  sib8 -. r do -. | \barNumberCheck #100
  r8 mi -. r | % 101
  sib8 -. r r | % 102
  r8 mi la, -. | % 103
  r8 r <sol'' re'> -. | % 104
  r8 mi, la, -. | % 105
  r8 r <sol'' re'> | % 106
  R4.*2 | % 108
  \numericTimeSignature\time 4/4  sib,,4 -. la -. sib -. do -. | % 109
  sib4 -. si -. sib -. si -. | \barNumberCheck #110
  fad4 -. r8 <fad' mi'> ~ ~ <fad mi'> <sol fa'> -. r4 | % 111
  r4 r8 <la mi'> ~ ~ <la mi'> r r4 | % 112
  r4 <lab dod lab'>8 <la re lab'> <do fa do'> <dod fad dod'> <mi
  lab mi'>8 \clef "treble" <fa sib fa'> | % 113
  la'2 mib'4 -. dod -. | % 114
  si4 -. r r2 | % 115
  la2 mi'4 -. re -. | % 116
  do4 -. r r2 | % 117
  la1 ~ | % 118
  la1 | % 119
  \time 2/4  r4 \clef "bass" <re,, la' mi'>8 -. fa' -. |
  \barNumberCheck #120
  <do, sol' re'>8 -. mi' -. <sib, fa' do'> -. re' -. | % 121
  <la, mi' si'>8 -. dod' -. <la, mi' si'> -. dod' -. | % 122
  <la, mi' si'>8 -. dod' -. <la, mi' si'> -. dod' -. | % 123
  <la, mi' si'>8 -. dod' -. <la, mi' si'> -. dod' -. | % 124
  <la, mi' si'>8 -. dod' -. <la, mi' si'> -. dod' -. | % 125
  <la, mi' si'>8 -. dod' -. <re, la' mi'> -. fa' -. | % 126
  <do, sol' re'>8 -. mi' -. <sib, fa' do'> -. re' -. | % 127
  <la, mi' si'>8 -. dod' -. <la, mi' si'> -. dod' -. | % 128
  <la, mi' si'>8 -. dod' -. <la, fad' si> -. do' -. | % 129
  <la, mi' si'>8 -. dod' -. <la, mi' si'> -. dod' -. |
  \barNumberCheck #130
  <la, mi' si'>8 -. dod' -. <la, fad' si> -. do' -. | % 131
  <la, mi' si'>8 -. dod' -. <la, mi' si'> -. dod' -. | % 132
  <la, mi' si'>8 -. dod' -. <la, sol' si> -. dod' -. | % 133
  <fad,, re' la'>8 -. si' -. <sol, re' si'> -. dod' -. | % 134
  <la, re dod'>8 -. re' -. <sol,, re' si'> -. dod' -. | % 135
  <fad,, re' la'>8 -. si' -. <sol, re' si'> -. dod' -. | % 136
  <la, re dod'>8 -. re' -. <sol,, re' si'> -. \clef "treble" dod'
  -. | % 137
  mi16 -. re32 si la16 -. \clef "bass" fad -. mi -. sol -. fad
  -. mi16 -. | % 138
  re16 r32 mi fad16 -. la -. si -. \clef "treble" re -. mi8 ~
  | % 139
  mi16 fad32 mi re \clef "bass" si la fad mi16 sol -. fad8
  -. | \barNumberCheck #140
  r8 r32 re mi fad r8 r32 la si do | % 141
  dod4 -. lab, | % 142
  dod,4 -. r | % 143
  dod''4 -. lab, | % 144
  dod,4 -. r | % 145
  \clef "treble" <fa'' la>8 -. <mi sol> -. <re fa> -. <mi sol> -. | % 146
  fa8 -. re -. do -. \clef "bass" si -. | % 147
  r16 la -. lab -. sol -. fad8 -. dod -. | % 148
  fad,4 sol -. | % 149
  r16 la' -. lab -. sol -. fad8 -. dod -. | \barNumberCheck
  #150
  fad,4 sol -. | % 151
  r4 \clef "treble" sib'32 dod re mi r8 | % 152
  r4 sib32 dod re mi r8 | % 153
  r4 r8 \clef "bass" <re,, fa'> | % 154
  R2 | % 155
  \clef "treble" sol''8 do, \clef "bass" <do,, re'> -. mi' -. | % 156
  <sib, do'>8 -. re' -. <lab, sib'> -. do' -. | % 157
  <sol, la'>8 -. <re' si'> -. <sol, la'> -. <re' si'> -. | % 158
  <sol, la'>8 -. <re' si'> -. <sol, la'> -. <re' si'> -. | % 159
  <sol, la'>8 -. <re' si'> -. <do' sol' re'> -. mi' -. |
  \barNumberCheck #160
  <sib, fa' do'>8 -. re' -. <lab, mib' sib'> -. do' -. | % 161
  <sol, re' la'>8 -. si' -. <sol, re' la'> -. si' -. | % 162
  <sol, re' la'>8 -. si' -. \clef "treble" <fa' la> -. si -. | % 163
  <sib, sib'>8 \clef "bass" <re, re'> <mi mi'> <sib sib'> | % 164
  <do do'>8 <mib, mib'> <fa fa'> <lab, lab'> | % 165
  \clef "treble" <sib'' sib'>8 \clef "bass" <re, re'> <mi mi'> <sib
  sib'>8 | % 166
  <do do'>8 <mib, mib'> <fa fa'> <lab, lab'> | % 167
  \clef "treble" <si'' dod>8 re <si dod> re | % 168
  <si dod>4 <re mi> | % 169
  <dod mib>8 mi <dod mib> mi | \barNumberCheck #170
  <dod mib>4 <mi fad> | % 171
  <fa fa'>8 <la, la'> <si si'> <fa fa'> | % 172
  <sol sol'>8 \clef "bass" <sib, sib'> <do do'> <mib, mib'> | % 173
  \clef "treble" <fa'' fa'>8 <la, la'> <si si'> <fa fa'> | % 174
  <sol sol'>8 \clef "bass" <sib, sib'> <do do'> <mib, mib'> | % 175
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib'8 lab, mib
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lab,8 mib' lab
  }

  | % 176
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib'8 lab, mib
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lab,8 mib' lab
  }

  | % 177
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib'8 lab, mib
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lab,8 mib' lab
  }

  | % 178
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib'8 lab, mib
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod'8 mib, lab
  }

  | % 179
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib'8 lab, mib
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lab,8 mib' lab
  }

  | \barNumberCheck #180
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib'8 lab, mib
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lab,8 mib' lab
  }

  | % 181
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <mi' lab>8 si mi,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lab,8 mi' si'
  }

  | % 182
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 si mi,
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol,8 sol' re'
  }

  | % 183
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib8 lab, mib
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lab,8 mib' lab
  }

  | % 184
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib'8 lab, mib
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lab,8 mib' lab
  }

  | % 185
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mib'8 lab, mib
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lab,8 re lab
  }

  | % 186
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 lab re
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa,8 sib fa
  }

  | % 187
  <mi mi' fad' si>4 -. r | % 188
  r8 si'' -. fad'4 -. | % 189
  R2 | \barNumberCheck #190
  r4 fad -. | % 191
  <re, la'>4 -. <dod lab'> -. | % 192
  <si fad'>4 -. <dod lab'> -. | % 193
  mi4 -. fad -. | % 194
  lab4 -. si -. | % 195
  <re, fad>8 -. <mib sol> -. <mi lab> -. <fa la> -. | % 196
  <fad sib>8 -. <sol si> -. <lab do> -. <la dod> -. | % 197
  <dod, dod'>4 -. <mib mib'>8 -. <lab, lab'> -. | % 198
  <dod' dod'>4 -. <mib mib'>8 -. <dod dod'> -. | % 199
  \clef "treble" <sib' re fad lab>8 -. <sib' re fad lab> -. r4 |
  \barNumberCheck #200
  r4 \clef "bass" \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re,,, re'>8 -. <do do'> -. <sib sib'> -.
  }

  | % 201
  <lab lab'>4 -. r | % 202
  r4 r8 re'' -. | % 203
  do8 -. sib -. <re, la' mi'> -. fa' -. | % 204
  <do, sol' re'>8 -. mi' -. <sib, fa' do'> -. re' -. | % 205
  <la, mi' si'>8 -. dod' -. <la, mi' si'> -. dod' -. | % 206
  <la, mi' si'>8 -. dod' -. <la, mi' si'> -. dod' -. | % 207
  <la, mi' si'>8 -. dod' -. <la, mi' si'> -. dod' -. | % 208
  <la, mi' si'>8 -. dod' -. <re, la' mi'> -. fa' -. | % 209
  <do, sol' re'>8 -. mi' -. <sib, fa' do'> -. re' -. |
  \barNumberCheck #210
  <la, mi' si'>8 -. dod' -. <la, mi' si'> -. dod' -. | % 211
  <la, mi' si'>8 -. dod' -. <la, fad' si> -. do' -. | % 212
  <la, mi' si'>8 -. dod' -. <la, mi' si'> -. dod' -. | % 213
  <la, mi' si'>8 -. dod' -. <la, sol' si> dod' | % 214
  <fad,, re' la'>8 -. si' -. <sol, re' si'> -. dod' -. | % 215
  <la, re dod'>8 -. re' -. <sol,, re' si'> -. dod' -. | % 216
  <fad,, re' la'>8 -. si' -. <sol, re' si'> -. dod' -. | % 217
  <la, re dod'>8 -. re' -. <sol,, re' si'> -. dod' -. | % 218
  fa,16 -. mib32 do sib16 -. sol -. fa -. lab -. sol -. fa
  -. | % 219
  mib16 r32 fa sol16 -. sib -. do -. mib -. fa8 ~ |
  \barNumberCheck #220
  fa16 sol32 fa mib do sib sol fa16 -. lab -. sol -. fa
  ~ | % 221
  fa16 mib32 fa sol sib do mib fa16 -. mib32 fa sol sib
  \clef "treble" do32 mib | % 222
  <re fa>8 sol <dod, mi> sol' | % 223
  <re fa>8 sol <do, mib> sib' | % 224
  <re, fa>8 sol <dod, mi> sol' | % 225
  <re fa>8 sol <do, mib> sib' | % 226
  <fa fa'>8 <sib, sib'> <do do'> <fa, fa'> | % 227
  <sol sol'>8 \clef "bass" <sib, sib'> <do do'> <mib, mib'> | % 228
  \clef "treble" <fa'' fa'>8 <sib, sib'> <do do'> <sol sol'> | % 229
  <la la'>8 <sib sib'> <do do'> <re re'> | \barNumberCheck #230
  <fa la re mi>4 r | % 231
  <fa la re mi>4 r | % 232
  <fa la re mi>4 -. r | % 233
  R2*4 | % 237
  r8 \clef "bass" dod, do sib | % 238
  r4 \clef "treble" <re' sol la do> -. | % 239
  r4 <re sol la do> -. | \barNumberCheck #240
  \clef "bass" <re, la'>2 | % 241
  <re,, re'>4 -. r | % 242
  R2*2
}


PartPThreeVoiceTwo =  \relative do,, {
  \clef "bass" \key fa \major \numericTimeSignature\time 4/4 s1*4 s1
  s1 s1*2 s1*4 s s1 s1*2 s s1 s s s1*2 s s4 \clef "treble"
  s4. \clef "bass" s8*19 s1*3 s4*11 \clef "treble" do4 -. r r dod'''
  -. | % 38
  dod4 mi8 sol la mi' dod, mib sol la mib' dod, mi sol la
  mi'8 dod, s8*25 | % 44
  \clef "bass" s1*4 s1*7 s1*3 s s4*5 \clef "treble" s2 \clef "bass"
  s2 \clef "treble" s \clef "bass" s4 s1*3 s s s s1*2 s
  s1*2 s1 s s | % 85
  \time 3/8  s4. s1. s2. s s8*9 s1. s8*15 s2. | % 108
  \numericTimeSignature\time 4/4  s1*2 s s8*7 \clef "treble" s8*9
  s1*4 s1 | % 119
  \time 2/4  s4 \clef "bass" s2. s1. s1 s s1. s s1 s4. \clef
  "treble" s16*5 \clef "bass" s s \clef "treble" s32*11 \clef
  "bass" r4 r8 r16 mi, ~ | \barNumberCheck #140
  mi4 sol s32*43 s2 | % 145
  \clef "treble" s2 s4. \clef "bass" s8*9 s1 s4 \clef "treble" s2. s4.
  \clef "bass" r8 ~ | % 154
  <sol,, la'>4 <sol' re' sol> -. | % 155
  \clef "treble" s4 \clef "bass" s s1. s1 s2. \clef "treble" s4 s8
  \clef "bass" s8*7 | % 165
  \clef "treble" s8 \clef "bass" s8*7 | % 167
  \clef "treble" s1 s s8*5 \clef "bass" s4. | % 173
  \clef "treble" s8*5 \clef "bass" s4. s1. s s s1*2 s1 s s s s
  s2 | % 199
  \clef "treble" s2 s4 \clef "bass" s2. s1 s s s s1. s s1 s
  s16*15 \clef "treble" s16 s1 s s8*5 \clef "bass" s4. | % 228
  \clef "treble" s1*2 s2*5 s8 \clef "bass" s8*5 \clef "treble" s2. |
  \barNumberCheck #240
  \clef "bass" s1.
}


PartPFourVoiceOne =  \relative re, {
  \clef "bass" \key fa \major \numericTimeSignature\time 4/4 R1*84 | % 85
  \time 3/8  R4.*23 | % 108
  \numericTimeSignature\time 4/4  R1*11 | % 119
  \time 2/4  R2*124 | % 243
  r4 re
}


PartPFiveVoiceOne =  \relative sol {
  \clef "treble" \key fa \major \numericTimeSignature\time 4/4 R1*2 | % 3
  r2 r4 <sol do> -. | % 4
  R1 | % 5
  <re' sol>8 -. <do re> -. r4 r2 | % 6
  <sol la>8 -. <sol si> -. r4 r2 | % 7
  r4 mib' r2 | % 8
  r4 mib r2 | % 9
  re4 r r <sib re> | \barNumberCheck #10
  re4 r r2 | % 11
  <la re>4 <sol do> sib do | % 12
  re4 <sib mib> <do fa> <re sol> | % 13
  la'4 r <fa la> r | % 14
  <fa la>4 mi lab re, | % 15
  <la' dod fa>4 <sib mi> <la dod fa> <sib mi> | % 16
  \clef "bass" <la, do>4 <sol si> <fa la>2 -. | % 17
  <la si>4 r <la si> r | % 18
  <fa la>4 -. <fa sib re> -. r2 | % 19
  <la si>4 r <la si> r | \barNumberCheck #20
  <sol sib mib>8 <fa la do> \clef "treble" <sib mib sol> <do fa la>
  <re sol si>4 <mi la do> | % 21
  <sol, si>4 <la do>2 r4 | % 22
  R1*3 | % 25
  <fa' dod'>8 <mi do'> <sol mib'> <re sib'> <fa dod'>4 <do la'> | % 26
  <sol' mib'>8 <la fa'> <fa dod'> <sol mib'> <sib sol'> <do la'>
  <dod sib'>8 <mib do'> | % 27
  <fa dod'>8 <mi do'> <sol mib'> <re sib'> <fa dod'>4 <do la'> | % 28
  <mi dod'>8 <sol mib'> <re sib'> <fa dod'> <lab fa'> <mi dod'>
  <fa re'>8 <lab mi'> | % 29
  <la fa'>4 <fa do'> <la fa'> <fa do'> | \barNumberCheck #30
  <do' sol'>4 do,,2 r4 | % 31
  <sol do>4 la do re | % 32
  <do'' sol'>4 do,,2 r4 | % 33
  <do'' sol'>4 do,,2 r4 | % 34
  \clef "bass" <do, la'>4 <si lab'> <sib sol'> <la fad'> | % 35
  <sol fa'>1 | % 36
  r4 sol'8 <do mi> r4 sol8 <do mi> | % 37
  r2 r4 r8 \clef "treble" <la'' mib'> ~ ~ | % 38
  <la mib'>4 <la mi'> -. <la mib'> -. <la mi'> -. | % 39
  R1 | \barNumberCheck #40
  re,,4 r r <sib re> | % 41
  re4 r r2 | % 42
  \clef "bass" <la re>4 <sol do> <fa sib> <sol do> | % 43
  <la re>4 \clef "treble" <sib mib> <do fa> <mib sol> | % 44
  \clef "bass" fa,4 r r2 | % 45
  fa4 r r2 | % 46
  <do la'>2 r | % 47
  do'8 <re, sib'>16 <do la'> <re sib'>2 r4 | % 48
  sol4 r sol r | % 49
  sol4 r sol r | \barNumberCheck #50
  sol2 r | % 51
  re1 ~ | % 52
  re2 r | % 53
  R1*6 | % 59
  sol,4 -. r r2 | \barNumberCheck #60
  sol4 -. r r2 | % 61
  \clef "treble" <sol' do>4 -. <sib do> -. <do fa> -. <re sol> -. | % 62
  r4 <dod' mi> -. r \clef "bass" fa,, -. | % 63
  r4 \clef "treble" <dod'' mi> -. r \clef "bass" fa,, -. | % 64
  <lab do>4 r <lab do> -. r | % 65
  <lab do>4 -. r r2 | % 66
  R1*3 | % 69
  <lab do>4 -. r <lab dod> -. r | \barNumberCheck #70
  <lab do>4 -. r <lab dod> -. r | % 71
  <fad do'>4 -. r r2 | % 72
  r4 \clef "treble" do'''2 r4 | % 73
  R1*2 | % 75
  \clef "bass" sol,,,4 -. r r2 | % 76
  sol4 -. r r2 | % 77
  <fad' do'>2 r4 <lab si> -. | % 78
  <fad do'>2 r4 <sol do> -. | % 79
  <fa si>4 -. r r2 | \barNumberCheck #80
  <lab do>4 -. r <lab do> -. r | % 81
  <lab do>4 -. r r2 | % 82
  <si do>4 si -. <si do> si -. | % 83
  <sib do>8 -. <si do> -. r si -. <sib do> -. si -. r si -. | % 84
  R1 | % 85
  \time 3/8  r8 <la si re> -. r | % 86
  <la si re>8 -. r <la si re> -. | % 87
  r8 <la si re> -. r | % 88
  <la si re>8 -. r <la si re> -. | % 89
  r8 <lab re> r | \barNumberCheck #90
  <la re>8 r \clef "treble" <lab re> | % 91
  do8 dod do | % 92
  dod8 re dod | % 93
  <sol do>8 <lab dod> <la re> | % 94
  <sib mib>8 <si mi> <do fa> | % 95
  <dod fad>8 -. <re fad>4 | % 96
  <re fad>8 r r | % 97
  R4. | % 98
  <lab re>8 -. r <lab re> -. | % 99
  r8 <lab do> -. r | \barNumberCheck #100
  <lab re>8 -. r <lab re> -. | % 101
  r8 <lab do> -. r | % 102
  R4. | % 103
  r8 r <do fa> | % 104
  R4. | % 105
  r8 r <do fa> | % 106
  R4.*2 | % 108
  \numericTimeSignature\time 4/4  R1*2 | \barNumberCheck #110
  r4 r8 <sib dod> ~ ~ <sib dod> <sib re> -. r4 | % 111
  r4 r8 <sol dod> ~ ~ <sol dod> r r4 | % 112
  r4 <si fa'>8 -. <do mi> -. <mib la> -. <mi lab> -. <lab dod> -.
  <lab do>8 -. | % 113
  r2 mib''8 -. mi -. dod -. mib -. | % 114
  si8 -. dod -. r4 r2 | % 115
  r2 mi8 -. fa -. re -. mi -. | % 116
  do8 -. re -. r4 r2 | % 117
  r4 mib, -. mi -. r | % 118
  R1 | % 119
  \time 2/4  R2*22 | % 141
  r4 dod ~ | % 142
  dod4 la | % 143
  dod4 -. r | % 144
  r8 r32 re dod do r8 r32 si la sol | % 145
  R2*8 | % 153
  r4 r8 re ~ | % 154
  re4 <si fa' sol> -. | % 155
  \times 2/3  {
    r16 sol'' r
  }

  r8 r4 | % 156
  R2*7 | % 163
  \times 2/3  {
    r16 sib r
  }

  \times 2/3  {
    r16 sib r
  }

  \times 2/3  {
    r16 sib, r
  }

  \times 2/3  {
    r16 sib r
  }

  | % 164
  \times 2/3  {
    r16 fad r
  }

  \times 2/3  {
    r16 fad r
  }

  \times 2/3  {
    r16 fad r
  }

  \times 2/3  {
    r16 lab r
  }

  | % 165
  \times 2/3  {
    r16 sib' r
  }

  \times 2/3  {
    r16 sib r
  }

  \times 2/3  {
    r16 sib, r
  }

  \times 2/3  {
    r16 sib r
  }

  | % 166
  \times 2/3  {
    r16 fad r
  }

  \times 2/3  {
    r16 fad r
  }

  \times 2/3  {
    r16 fad r
  }

  \times 2/3  {
    r16 fad r
  }

  | % 167
  \times 2/3  {
    r16 fa r
  }

  \times 2/3  {
    r16 mi r
  }

  \times 2/3  {
    r16 fa r
  }

  \times 2/3  {
    r16 mi r
  }

  | % 168
  \times 2/3  {
    r16 fa r
  }

  \times 2/3  {
    r16 fa r
  }

  \times 2/3  {
    r16 fad r
  }

  \times 2/3  {
    r16 fad r
  }

  | % 169
  \times 2/3  {
    r16 sol r
  }

  \times 2/3  {
    r16 fad r
  }

  \times 2/3  {
    r16 sol r
  }

  \times 2/3  {
    r16 fad r
  }

  | \barNumberCheck #170
  \times 2/3  {
    r16 sol r
  }

  \times 2/3  {
    r16 sol r
  }

  \times 2/3  {
    r16 lab r
  }

  \times 2/3  {
    r16 lab r
  }

  | % 171
  \times 2/3  {
    r16 fa'' r
  }

  \times 2/3  {
    r16 fa r
  }

  \times 2/3  {
    r16 fa, r
  }

  \times 2/3  {
    r16 fa r
  }

  | % 172
  \times 2/3  {
    r16 dod r
  }

  \times 2/3  {
    r16 dod r
  }

  \times 2/3  {
    r16 dod r
  }

  \times 2/3  {
    r16 mib r
  }

  | % 173
  \times 2/3  {
    r16 fa' r
  }

  \times 2/3  {
    r16 fa r
  }

  \times 2/3  {
    r16 fa, r
  }

  \times 2/3  {
    r16 fa r
  }

  | % 174
  \times 2/3  {
    r16 dod r
  }

  \times 2/3  {
    r16 dod r
  }

  \times 2/3  {
    r16 dod r
  }

  \times 2/3  {
    r16 mib r
  }

  | % 175
  \clef "bass" <sib, dod>4 <la do> | % 176
  <fad la>4 <si re> | % 177
  <sib dod>4 <la do> | % 178
  <fad la>4 \clef "treble" <re' fad> | % 179
  <dod fad>4 <do fad> | \barNumberCheck #180
  <dod fad>4 <do fad> | % 181
  <si re fad>4 -. r | % 182
  r4 <si fa' la> | % 183
  <sib mib fad>2 | % 184
  \clef "bass" <fa si re>2 | % 185
  <lab re fad>4 <re, lab' do> ~ ~ ~ | % 186
  <re lab' do>2 | % 187
  re'4 -. r | % 188
  R2*5 | % 193
  <lab re>4 -. la -. | % 194
  <si re>4 -. <la re> -. | % 195
  R2*2 | % 197
  <lab si mi>4 -. <fad sib>8 -. <lab si> -. | % 198
  \clef "treble" <lab' si mi>4 -. <fad sib>8 -. <mi lab si> -. | % 199
  <sib' re>8 -. <sib re> -. r4 | \barNumberCheck #200
  R2*26 | % 226
  \times 2/3  {
    r16 fa'' r
  }

  \times 2/3  {
    r16 fa r
  }

  \times 2/3  {
    r16 fa, r
  }

  \times 2/3  {
    r16 fa r
  }

  | % 227
  \times 2/3  {
    r16 dod r
  }

  \times 2/3  {
    r16 dod r
  }

  \times 2/3  {
    r16 dod r
  }

  \times 2/3  {
    r16 mib r
  }

  | % 228
  \times 2/3  {
    r16 fa' r
  }

  \times 2/3  {
    r16 fa r
  }

  \times 2/3  {
    r16 fa r
  }

  \times 2/3  {
    r16 fa r
  }

  | % 229
  \times 2/3  {
    r16 re r
  }

  \times 2/3  {
    r16 re r
  }

  \times 2/3  {
    r16 re r
  }

  \times 2/3  {
    r16 re r
  }

  | \barNumberCheck #230
  <la re>4 r | % 231
  <la re>4 r | % 232
  <la re>4 -. r | % 233
  R2*4 | % 237
  r8 \times 2/3 {
    r16 dod,, r
  }

  \times 2/3  {
    r16 do r
  }

  \times 2/3  {
    r16 sib r
  }

  | % 238
  r4 <re'' la'> -. | % 239
  r4 <re la'> -. | \barNumberCheck #240
  <re,, fa la>2 | % 241
  R2*3
}


PartPFiveVoiceTwo =  \relative mi'' {
  \clef "treble" \key fa \major \numericTimeSignature\time 4/4 s1*4 s1
  s1 s1*2 s1*4 s1*3 | % 16
  \clef "bass" s1 s s1*2 s4 \clef "treble" s4*7 s1 s s s1*2 s
  s1*3 s1*2 | % 34
  \clef "bass" s1 s8*23 \clef "treble" s8 s1 s s1*2 | % 42
  \clef "bass" s4*5 \clef "treble" s2. | % 44
  \clef "bass" s1*4 s1*7 s1*3 s | % 61
  \clef "treble" s4*7 \clef "bass" s2 \clef "treble" s \clef "bass"
  s4 s1*3 s s4*9 \clef "treble" r4 r2 s1*2 | % 75
  \clef "bass" s1 s1*2 s s s1 s s | % 85
  \time 3/8  s4. s1. s4 \clef "treble" s2 s2. s8*9 s1. s8*15 s2. | % 108
  \numericTimeSignature\time 4/4  s1*2 s s s1*4 s1 | % 119
  \time 2/4  s1 s1. s1 s s1. s s1 s s s | % 142
  r8 r32 re dod do r8 r32 sol fa re | % 143
  r4 dod' ~ | % 144
  dod4 la s2 s1. s1 s | % 153
  r4 r8 <la, fa'> s1 s1. s1 s s s s s s s | % 175
  \clef "bass" s1. s4 \clef "treble" s4*5 s1. | % 184
  \clef "bass" s1*2 s1 s s s s | % 198
  \clef "treble" s1 s s s s s s1. s s1 s s s s s s1*2 s2*5
  s1*3
}



% The score definition
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "Violoncello"
      \set Staff.shortInstrumentName = "Vlc."
      \context Staff \piify <<
        \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
        \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }

      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \set PianoStaff.instrumentName = "Piano"
        \set PianoStaff.shortInstrumentName = "Pno."
        \context Staff <<
          \context Voice = "PartPTwoVoiceOne" { \voiceOne \PartPTwoVoiceOne }

          \context Voice = "PartPTwoVoiceTwo" { \voiceTwo \PartPTwoVoiceTwo }

          \context Voice = "PartPFiveVoiceOne" { \voiceThree \PartPFiveVoiceOne }

          \context Voice = "PartPFiveVoiceTwo" { \voiceFour \PartPFiveVoiceTwo }

        >>
      >>
      \new Staff <<
        \context Staff <<
          \context Voice = "PartPThreeVoiceOne" { \voiceOne \PartPThreeVoiceOne }

          \context Voice = "PartPThreeVoiceTwo" { \voiceTwo \PartPThreeVoiceTwo }

          \context Voice = "PartPFourVoiceOne" { \voiceFour\PartPFourVoiceOne }

        >>
      >>
    >>
  >>
  \header {
    piece = \markup \fill-line { \epsfile #Y #40 #myplot }

  }

}


