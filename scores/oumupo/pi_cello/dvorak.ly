
\version "2.19.35"
\include "pilypi.ly"
\include "modify.ly"

\language "italiano"


\header {
  title = "Concerto in B minor"
  subtitle = "op. 104"
  composer = "Antonín Dvořák"
}


\layout {
  \context {
    \Score
    skipBars = ##t
  }

}

PartPOneVoiceOne =  \relative sol' {
  \clef "bass" \key re \major \numericTimeSignature\time 4/4 | % 1
  \tempo 4=114 R1*56 | % 57
  \tempo 4=60 | % 57
  R1 | % 58
  \tempo 4=114 | % 58
  R1*30 | % 88
  \tempo 4=108 | % 88
  R1*17 | % 105
  sol32 sold sol sold sol sold sol sold sol sold sol
  sold32 sol sold sol sold sol sold sol sold sol
  sold32 sol sold sol sold sol sold sol sold sol
  sold32 | % 106
  sold32 la sold la sold la sold la sold la sold
  la32 sold la sold la sold la sold la sold la
  sold32 la sold la sold la sold la sold la | % 107
  la32 lad la lad la lad la lad la lad la lad la
  lad32 la lad la lad la lad la lad la lad la
  lad32 la lad la lad la lad | % 108
  lad32 si lad si lad si lad si lad si lad si
  lad32 si lad si si dod si dod si dod si dod si
  dod32 si dod si dod si dod | % 109
  re32 mi re mi re mi re mi re mi re mi re mi
  re32 mi re mi re mi re mi re mi dod re dod
  re32 dod re dod re | \barNumberCheck #110
  si32 dod si dod si dod si dod si dod si dod si
  dod32 si dod lad si lad si lad si lad si lad
  si32 lad si lad si lad si | % 111
  \tempo 4=114 | % 111
  si4 si16 -. si -. dod -. re -. si4 si16 -. si -. la -. fad
  -. | % 112
  si16 -. si -. la -. fad -. la -. la -. fad -. re -.
  fad16 -. fad -. re -. si -. r4 | % 113
  mi4 mi16 -. mi -. fad -. sol -. mi4 mi16 -. mi -. re -. si
  -. | % 114
  mi16 -. mi -. re -. si -. r4 r2 | % 115
  mi16 -. mi -. fa -. sol -. mi -. mi -. fa -. sol -. mi
  -. mi16 -. fa -. sol -. mi -. mi -. fa -. sol -. | % 116
  mi8 fa sol do do la sol fa | % 117
  mi16 -. mi -. fa -. sol -. mi -. mi -. fa -. sol -. mi
  -. mi16 -. fa -. sol -. mi -. mi -. fa -. sol -. | % 118
  mi8 fa sol do do la fa mi | % 119
  red16 -. red -. mi -. fad -. red -. red -. mi -. fad
  -. red16 -. red -. mi -. fad -. red -. red -. mi -. fad
  -. | \barNumberCheck #120
  red8 mi fad si si sold fad mi | % 121
  re'8 dod si lad dod si lad si | % 122
  re8 dod si lad dod si lad si | % 123
  do16 si do si la8 sol -. do16 si do si la8 sol -. | % 124
  mi'16 re mi re dod8 si -. mi16 re mi re dod8 si -. | % 125
  fad'16 fa fad fa mi re mi re dod si dod si la
  sold16 la sol | % 126
  fad16 fa fad fa mi re mi re r2 | % 127
  r2 r4 si'16 lad re dod | % 128
  sol'16 fad32 sol fad sol fad sol fad sol fad sol
  fad32 sol fad sol fad sol fad sol fad sol fad
  sol32 fad sol fad sol fa16 fad | % 129
  si,4. dod16 re si2 | \barNumberCheck #130
  lad4. la16 sol lad2 | % 131
  si4. dod16 re si2 | % 132
  lad4. la16 sol lad2 | % 133
  si4 sol'2 mi8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 fad mi
  }

  | % 134
  re8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re16 mi re
  }

  r8 \times 2/3 {
    r16 dod si
  }

  r8 \times 2/3 {
    r16 la sol
  }

  re'8. dod16 | % 135
  sol2 r | % 136
  R1*3 | % 139
  \tempo 4=106 | % 139
  R1*9 | % 148
  r2 r4 la8 lad | % 149
  si2 si8 la sol fad | \barNumberCheck #150
  mi2 si4 si' | % 151
  mi4 re si sol | % 152
  fad4 mi2 si'4 | % 153
  mi4 re si sol | % 154
  fad4 mi2 r4 | % 155
  R1*3 | % 158
  re16 fad la fad la fad la sold la fad la fad
  lad16 fad lad fad | % 159
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 -. sol -. re -.
  }

  re32. -. sol64 ~ sol128 r si32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    lad16 fad32 ~
  }

  fad64 re32. re -. fad64 ~ fad128 r lad32. dod -. sol64 ~
  sol128 r dod,32. dod -. sol'64 ~ sol128 r dod32. lad -.
  fad64 ~ fad128 r re32. re -. fad64 ~ \times 2/3 {
    fad64 r lad16
  }

  | \barNumberCheck #160
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 -. sol -. dod, -.
  }

  dod32. -. sol'64 ~ sol128 r si32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    fad16 red32 ~
  }

  red64 lad32. lad -. red64 ~ red128 r fad32. fad -. red64 ~
  red128 r lad32. lad -. red64 ~ red128 r fad32. sol -. mi64
  ~ mi128 r lad,32. lad -. mi'64 ~ \times 2/3 {
    mi64 r sol16
  }

  | % 161
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 -. sol -. dod, -.
  }

  dod32. -. sol'64 ~ sol128 r si32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    lad16 fad32 ~
  }

  fad64 re32. re -. fad64 ~ fad128 r lad32. si -. sol64 ~ sol128
  r128 dod,32. dod -. sol'64 ~ sol128 r si32. lad -. fad64 ~
  fad128 r re32. re -. fad64 ~ \times 2/3 {
    fad64 r lad16
  }

  | % 162
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 -. sol -. dod, -.
  }

  dod32. -. sol'64 ~ sol128 r si32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    fad16 red32 ~
  }

  red64 lad32. lad -. red64 ~ red128 r fad32. fad -. red64 ~
  red128 r lad32. lad -. red64 ~ red128 r fad32. sol -. mi64
  ~ mi128 r lad,32. lad -. mi'64 ~ \times 2/3 {
    mi64 r sol16
  }

  | % 163
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re'16 -. sol, -. mi -.
  }

  mi32. -. sol64 ~ sol128 r re'32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    dod16 la32 ~
  }

  la64 fad32. fad -. la64 ~ la128 r dod32. re -. sol,64 ~ sol128
  r128 mi32. mi -. sol64 ~ sol128 r re'32. dod -. la64 ~ la128
  r128 fad32. fad -. la64 ~ \times 2/3 {
    la64 r dod16
  }

  | % 164
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 -. sol -. dod, -.
  }

  dod32. -. sol'64 ~ sol128 r si32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    lad16 fad32 ~
  }

  fad64 re32. re -. fad64 ~ fad128 r lad32. si -. sol64 ~ sol128
  r128 dod,32. dod -. sol'64 ~ sol128 r si32. lad -. fad64 ~
  fad128 r re32. re -. fad64 ~ \times 2/3 {
    fad64 r lad16
  }

  | % 165
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la16 -. fa -. si, -.
  }

  si32. -. fa'64 ~ fa128 r la32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    sold16 mi32 ~
  }

  mi64 do32. do -. mi64 ~ mi128 r sold32. la -. fa64 ~ fa128
  r128 si,32. si -. fa'64 ~ fa128 r la32. sold -. mi64 ~ mi128
  r128 do32. do -. mi64 ~ \times 2/3 {
    mi64 r sold16
  }

  | % 166
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la16 -. fa -. si, -.
  }

  si32. -. fa'64 ~ fa128 r la32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    la16 mi32 ~
  }

  mi64 do32. do -. mi64 ~ mi128 r la32. la -. fa64 ~ fa128 r
  do32. do -. fa64 ~ fa128 r la32. la -. fad64 ~ fad128 r
  do32. do -. fad64 ~ \times 2/3 {
    fad64 r la16
  }

  | % 167
  lad8 fad16 lad \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 fa sold
  }

  fad8 red16 fad \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold8 fa sold
  }

  | % 168
  fad8. lad16 dod,2. | % 169
  R1*4 | % 173
  la'16 -. si do si do4 la16 -. si do si do4 | % 174
  lad16 -. dod re dod re4 lad16 -. dod re dod re4 | % 175
  r16 dod re dod re dod re dod re dod re dod re
  dod16 re dod | % 176
  re16 dod re dod re dod re dod mi8 re dod si | % 177
  la2 r | % 178
  R1*3 | % 181
  do8 si la sol do16 si do si la8 sol | % 182
  lad8 la sol fad lad16 la lad la sol8 fad | % 183
  do'16 si do si la8 sol re'16 dod re dod si8 la | % 184
  mi'16 re mi re mi re mi re mi re mi re mi re
  mi16 re | % 185
  fa2 r | % 186
  R1*2 | % 188
  r2 r4 sol,8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol16 la lad
  }

  | % 189
  <mi, dod' sol'>4 r r dod''8 ~ \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    dod16 re mi
  }

  | \barNumberCheck #190
  dod4 dod8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 re mi
  }

  dod4 r8 \times 2/3 {
    r16 re mi
  }

  | % 191
  dod8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 re mi
  }

  r8 \times 2/3 {
    r16 la, lad
  }

  r2 | % 192
  \tempo 4=108 | % 192
  R1*31 | % 223
  \tempo 4=104 | % 223
  R1 | % 224
  r2 r4 red, | % 225
  \tempo 4=98 | % 225
  sold2. lad8 si | % 226
  sold2. sold4 | % 227
  sold2. fad8 red | % 228
  sold2. sold4 | % 229
  sold2 lad4 si | \barNumberCheck #230
  si2 lad4 sold | % 231
  la4 lad si4. lad8 | % 232
  lad4 sol \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 mi8 ~
  }

  mi4 red8 | % 233
  red2. mi8 fad | % 234
  red2. red4 | % 235
  red2 dod4. si8 | % 236
  dod2. dod4 | % 237
  red2 si4 sold | % 238
  si2. lad4 | % 239
  sold1 | \barNumberCheck #240
  si2 red | % 241
  \tempo 4=100 | % 241
  R1*8 | % 249
  re16 red si' red, re red si' red, re red si'
  red,16 re red si' red, | \barNumberCheck #250
  red16 mi dod' mi, red mi dod' mi, red mi dod'
  mi,16 red mi dod' mi, | % 251
  fa16 fad re' fad, fa fad re' fad, fa fad re'
  fad,16 fa fad re' fad, | % 252
  fad16 sol mi' sol, fad sol mi' sol, fad sol mi'
  sol,16 fad sol mi' sol, | % 253
  sold16 la fad' la, sold la fad' la, sold la fad'
  la,16 sold la fad' la, | % 254
  la16 lad sol' lad, la lad sol' lad, la lad sol'
  lad,16 la lad sol' lad, | % 255
  sold16 la fad' la, sold la fad' la, sold la fad'
  la,16 sold la fad' la, | % 256
  la16 lad sol' lad, la lad sol' lad, la lad sol'
  lad,16 la lad sol' lad, | % 257
  la16 lad sold' lad, la lad sold' lad, la lad sold'
  lad,16 la lad sold' lad, | % 258
  la16 lad sold' fad la, lad sold' fad sol, sold
  fad'16 mi fa, fad mi' red | % 259
  red,16 mi red' dod re, red dod' si do, dod si'
  lad16 lad, do lad' sol | \barNumberCheck #260
  R1*3 | % 263
  r2 <si, sol'>16 <si sol'> <lad fad'> <lad fad'> <re si'> <re
  si'>16 <dod lad'> <dod lad'> -. | % 264
  r8 <dod lad'>16 -. <dod lad'> <si' re> <si re> <lad dod>
  <lad dod>16 -. r8 <dod, lad'>16 -. <dod lad'> <si' re> <si re>
  <lad dod>16 <lad dod> -. | % 265
  <sol sol'>16 -. <sol sol'> <fad fad'> <fad fad'> <sol sol'>
  <sol sol'>16 <fad fad'> <fad fad'> <sol sol'> <sol sol'>
  <fad fad'>16 <fad fad'> <sol sol'> <sol sol'> <fad fad'>
  <fad fad'>16 | % 266
  <sol sol'>16 <sol sol'> <fad fad'> <fad fad'> <mi mi'> <mi
  mi'>16 <dod dod'> <dod dod'> <lad lad'> <lad lad'> <fad
  fad'>16 <fad fad'> <mi mi'> <mi mi'> <mi dod'> <mi dod'>
  -. | % 267
  <mi lad>4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <mi mi'>16 <fa fa'> <fad fad'>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <sol sol'>16 <sold sold'> <la la'>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <lad lad'>16 <si si'> <do do'>
  }

  <dod dod'>32 <re re'> <red red'> <mi mi'> ~ ~ <mi mi'> <fa
  fa'>32 <fad fad'> <sol sol'> \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    <sold sold'>16 <la la'> <lad lad'>
  }

  | % 268
  <si si'>2 r | % 269
  R1*12 | % 281
  r2 r4 dod | % 282
  fad4 red dod si | % 283
  red4 si lad sold | % 284
  si4 fad dod'4. si8 | % 285
  \tempo 4=92 | % 285
  si8 si,16 red fad red fad fa fad red fad red
  \tempo 4=60 sol16 red sol red | % 286
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold16 -. mi -. lad, -.
  }

  lad32. -. mi'64 ~ mi128 r sold32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    sol16 red32 ~
  }

  red64 si32. si -. red64 ~ red128 r sol32. sold -. mi64 ~ mi128
  r128 lad,32. lad -. mi'64 ~ mi128 r sold32. sol -. red64 ~
  red128 r si32. si -. red64 ~ \times 2/3 {
    red64 r sol16
  }

  | % 287
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold16 -. mi -. lad, -.
  }

  lad32. -. mi'64 ~ mi128 r sold32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    red16 do32 ~
  }

  do64 sol32. sol -. do64 ~ do128 r red32. red -. do64 ~ do128
  r128 sol32. sol -. do64 ~ do128 r red32. mi -. dod64 ~ dod128
  r128 sol32. sol -. dod64 ~ \times 2/3 {
    dod64 r mi16
  }

  | % 288
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold16 -. mi -. lad, -.
  }

  lad32. -. mi'64 ~ mi128 r sold32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    sol16 red32 ~
  }

  red64 si32. si -. red64 ~ red128 r sol32. sold -. mi64 ~ mi128
  r128 lad,32. lad -. mi'64 ~ mi128 r sold32. sol -. red64 ~
  red128 r si32. si -. red64 ~ \times 2/3 {
    red64 r sol16
  }

  | % 289
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold16 -. mi -. lad, -.
  }

  lad32. -. mi'64 ~ mi128 r sold32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    red16 do32 ~
  }

  do64 sol32. sol -. do64 ~ do128 r red32. red -. do64 ~ do128
  r128 sol32. sol -. do64 ~ do128 r red32. mi -. dod64 ~ dod128
  r128 sol32. sol -. dod64 ~ \times 2/3 {
    dod64 r mi16
  }

  | \barNumberCheck #290
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si'16 -. mi, -. dod -.
  }

  dod32. -. mi64 ~ mi128 r si'32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    lad16 fad32 ~
  }

  fad64 red32. red -. fad64 ~ fad128 r lad32. si -. mi,64 ~
  mi128 r dod32. dod -. mi64 ~ mi128 r si'32. lad -. fad64
  ~ fad128 r red32. red -. fad64 ~ \times 2/3 {
    fad64 r lad16
  }

  | % 291
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold16 -. mi -. lad, -.
  }

  lad32. -. mi'64 ~ mi128 r sold32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    sol16 red32 ~
  }

  red64 si32. si -. red64 ~ red128 r sol32. sold -. mi64 ~ mi128
  r128 lad,32. lad -. mi'64 ~ mi128 r sold32. sol -. red64 ~
  red128 r si32. si -. red64 ~ \times 2/3 {
    red64 r sol16
  }

  | % 292
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. re -. sold, -.
  }

  sold32. -. re'64 ~ re128 r fad32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    fa16 dod32 ~
  }

  dod64 la32. la -. dod64 ~ dod128 r fa32. fad -. re64 ~ re128
  r128 sold,32. sold -. re'64 ~ re128 r fad32. fa -. dod64 ~
  dod128 r la32. la -. dod64 ~ \times 2/3 {
    dod64 r fa16
  }

  | % 293
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad16 -. re -. lad -.
  }

  lad32. -. re64 ~ re128 r fad32. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    fad16 dod32 ~
  }

  dod64 lad32. lad -. dod64 ~ dod128 r fad32. fad -. re64 ~
  re128 r lad32. lad -. re64 ~ re128 r fad32. fad -. red64
  ~ red128 r lad32. lad -. red64 ~ \times 2/3 {
    red64 r fad16
  }

  | % 294
  sol8 red16 sol \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 re fa
  }

  red8 do16 red \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 re fa
  }

  | % 295
  red8. sol16 lad,2. | % 296
  red8 sol,16 red' \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 fa, re'
  }

  do8 red,16 do' \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 fa, re'
  }

  | % 297
  red8. sol,16 lad2. | % 298
  R1*2 | \barNumberCheck #300
  fad'16 -. sold la sold la4 fad16 -. sold la sold la4 | % 301
  sol16 -. lad si lad si4 sol16 -. lad si lad si4 | % 302
  r16 lad si lad si lad si lad si lad si lad si
  lad16 si lad | % 303
  si16 lad si lad si lad si lad dod8 si lad sold | % 304
  fad2 r | % 305
  R1*3 | % 308
  la8 sold fad mi la16 sold la sold fad8 mi | % 309
  sol8 fad mi red sol16 fad sol fad mi8 red |
  \barNumberCheck #310
  la'16 sold la sold fad8 mi si'16 lad si lad sold8 fad
  | % 311
  dod'16 -. si dod si dod si dod si dod si dod si
  dod16 si dod si | % 312
  re2 r | % 313
  R1*3 | % 316
  r2 r4 lad8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lad16 si dod
  }

  | % 317
  lad4 lad8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lad16 si dod
  }

  lad4 r8 \times 2/3 {
    r16 si dod
  }

  | % 318
  lad8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lad16 si dod
  }

  r8 \times 2/3 {
    r16 fad, sol
  }

  r2 | % 319
  \tempo 4=108 | % 319
  R1*5 | % 324
  si4. dod16 red si2 | % 325
  lad4. sold16 fad si2 | % 326
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si,16 si'8 ~
  }

  si8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod,16 dod'8 ~
  }

  dod8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red,16 red'8 ~
  }

  red8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi,16 mi'8 ~
  }

  mi8 | % 327
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad,16 fad'8 ~
  }

  fad8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol,16 sol'8 ~
  }

  sol8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold,16 sold'8 ~
  }

  sold8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la,16 la'8 ~
  }

  la8 | % 328
  r4 si8 <lad, lad'> -. sold' <fad, fad'> -. mi' red | % 329
  re8 dod si lad la4 -. r | \barNumberCheck #330
  \tempo 4=124 | \barNumberCheck #330
  <fad, fad'>32 <sold sold'> <fad fad'> <sold sold'> <fad fad'>
  <sold sold'>32 <fad fad'> <sold sold'> <fad fad'> <sold sold'>
  <fad fad'>32 <sold sold'> <fad fad'> <sold sold'> <fad fad'>
  <sold sold'>32 <fad fad'> <sol sol'> <fad fad'> <sol sol'>
  <fad fad'>32 <sol sol'> <fad fad'> <sol sol'> <fad fad'>
  <sol sol'>32 <fad fad'> <sol sol'> <fad fad'> <sol sol'>
  <fad fad'>32 <sol sol'> | % 331
  fad'32 sold fad sold fad sold fad sold fad sold
  fad32 sold fad sold fad sold fad sol fad sol fad
  sol32 fad sol fad sol fad sol fad sol fad sol | % 332
  si16 -. si -. dod -. red -. si -. si -. dod -. red -.
  si16 -. si -. dod -. red -. si -. si -. dod -. red -.
  | % 333
  si16 -. si -. dod -. red -. si -. si -. la -. fad -.
  la16 -. la -. fad -. red -. sold -. sold -. mi -. dod
  -. | % 334
  fad16 fad red do mi mi dod lad r2 | % 335
  r4 <sold fa'>16 -. <sold fa'> -. <sold re'> -. <sold fa'> -.
  <si sold'>16 -. <si sold'> -. <si fa'> -. <si sold'> -. <re
  si'>16 -. <re si'> -. <re la'> -. <re si'> -. | % 336
  <fa re'>16 -. <fa re'> -. <fa si> -. <fa re'> -. <sold fa'>
  -. <sold fa'>16 -. <sold re'> -. <sold fa'> -. <si sold'> -.
  <si sold'>16 -. <si fa'> -. <si sold'> -. <re si'>4 | % 337
  R1*2 | % 339
  <lad, fad'>16 <lad fad'> <si sol'> <si sol'> <do sold'> <do
  sold'>16 <dod la'> <dod la'> <re lad'> <re lad'> <red
  si'>16 <red si'> <mi do'> <mi do'> <fa dod'> <fa dod'>
  | \barNumberCheck #340
  <fad re'>16 <fad re'> <sol red'> <sol red'> <sold mi'> <sold
  mi'>16 <la fa'> <la fa'> <lad fad'> <lad fad'> <si sol'>
  <si sol'>16 <lad fad'> <lad fad'> <si sol'> <si sol'> | % 341
  <lad fad'>16 <lad fad'> <si sol'> <si sol'> <lad fad'> <lad
  fad'>16 <si sol'> <si sol'> <lad fad'> <lad fad'> <si
  sol'>16 <si sol'> <lad fad'> <lad fad'> <si sol'> <si
  sol'>16 -. | % 342
  \tempo 4=114 | % 342
  fad'32 sol fad sol fad sol fad sol fad sol fad
  sol32 fad sol fad sol fad sol fad sol fad sol
  fad32 sol fad sol fad sol fa16 fad | % 343
  <si, si'>2 r | % 344
  R1*10 | % 354
  \tempo 4=108 | % 354
  R1 | % 355
  \tempo 4=90 | % 355
  R1
}


PartPOneVoiceTwo =  \relative si' {
  \clef "bass" \key re \major \numericTimeSignature\time 4/4 | % 1
  \tempo 4=114 s1*5 s1*3 s1*4 s1*2 s s s s s1*3 s1 s s1*3
  s1*2 s1 s s s s1*2 s s s s1 s s s s s1*5 s1*2 | % 57
  \tempo 4=60 s1 | % 58
  \tempo 4=114 s1*4 s s1*2 s1 s1*2 s1 s s s s1*2 s1*3 s s1*4
  s1 | % 88
  \tempo 4=108 s1 s s s s s s s s1*2 s s s s1 s s s
  s1 s s | % 111
  \tempo 4=114 s1*2 s s s s s s s1 s s s s1*3
  s1*2 | % 134
  r4 si sol r s1*4 | % 139
  \tempo 4=106 s1*2 s1*6 s1*3 s1*2 s1 s s s1*2 s s1 s s s s
  s1 s s s1*2 s s1 s1*2 s1 s1*2 s1*3 s1*2 s s1 s s s1*2 s1 |
  \barNumberCheck #190
  r2 r4 dod | % 191
  r4 sol r2 | % 192
  \tempo 4=108 s1 s s s s s s s s s s s1*2 s1 s s s1*2
  s1*2 s s1 s1*2 s s1 s s1*2 | % 223
  \tempo 4=104 s1*2 | % 225
  \tempo 4=98 s1 s s s s s s s s s s s s s s s | % 241
  \tempo 4=100 s1 s s s1*2 s1 s s s s s s s s s s s s s
  s1 s s1*2 s1 s s s s1*2 s1*3 s1*4 s1*2 s s1 s1*2 s1 | % 285
  \tempo 4=92 s2. \tempo 4=60 s4 s1 s s s s s s s s1*2 s s1
  s1 s1*2 s s s s s s1*3 s1*2 | % 317
  r2 r4 lad | % 318
  r4 mi r2 | % 319
  \tempo 4=108 s1*3 s1 s s s s s | % 328
  <lad lad'>8 <dod dod'> \once \override TupletBracket #'stencil =
  ##f
  \times 2/3  {
    si16 dod si8 -. si16 lad
  }

  \times 8/7  {
    sold32 lad32. sold -. r64
    sold32. fad32
  }

  mi32 fad16 mi32 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red16 mi red
  }

  | % 329
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re16 mi re
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 re dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si16 dod si
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lad16 si lad
  }

  \times 2/3  {
    r32 la si16 la
  }

  r8 r4 | \barNumberCheck #330
  \tempo 4=124 s1 s1 s s s s s1*2 s1 s s s | % 342
  \tempo 4=114 s1 s s s s s1*3 s1*4 | % 354
  \tempo 4=108 s1 | % 355
  \tempo 4=90
}


PartPTwoVoiceOne =  \relative si {
  \clef "bass" \key re \major \numericTimeSignature\time 4/4 R1*87 | % 88
  si4. dod16 red si2 | % 89
  si4. la16 sol si2 | \barNumberCheck #90
  si8. red16 -. fad8. mi16 -. red4 <la, fad' do'> | % 91
  r64 r128 si' ~ si16. ~ si8 r64 r128 la ~ la16. ~ la8 r64 r128
  sol128 ~ sol16. ~ sol8 r64 r128 fad ~ fad16. ~ fad8 | % 92
  <sold, mi' si'>8 mi''4 fad16 sold mi2 | % 93
  mi4. re16 si mi2 | % 94
  <sol,, sold' fa'>8. sol''16 -. sold8. sol16 -. fa4 <sol,, sold' mi'>
  | % 95
  <sol fa' re'>4 <sol fa' do'> <sol re' si'> <sol si' sol'> | % 96
  mi''16 fa sol fa -. mi re do re -. do8. -. sol16 -. mi8.
  -. sol16 -. | % 97
  mi'16 fa sol fa -. mi re do re -. do8. -. sol16 -. mi8.
  -. sol16 -. | % 98
  mi'16 fa sol do, -. re -. mi -. sol, si do mi, -.
  fad16 -. sol -. dod, re mi dod -. | % 99
  re16 -. mi -. do re mi do -. re -. mi -. do re mi
  re16 -. do si la sol | \barNumberCheck #100
  fad1 | % 101
  fad8 la do si la do red sol | % 102
  fad1 | % 103
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 la do
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 do si
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 do mi
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi sol
  }

  | % 104
  fad32 sol fad sol fad sol fad sol fad sol fad
  sol32 fad sol fad sol fad sol fad sol fad sol
  fad32 sol fad sol fad sol fad sol fad sol | % 105
  R1*7 | % 112
  r2 r4 re16 -. re -. si -. fad -. | % 113
  R1 | % 114
  r4 re'16 -. re -. si -. sol -. si -. si -. sol -. mi
  -. sol16 -. sol -. mi -. mi' -. | % 115
  R1*11 | % 126
  r2 dod16 si dod si la sold la sol | % 127
  fad8 fa16 fad sol fad si lad re dod sol' fad r4 | % 128
  R1*9 | % 137
  si,4 sol'2 mi8 fad16 mi | % 138
  re4 si sol re'8. dod16 | % 139
  sol2 r | \barNumberCheck #140
  r2 r4 la | % 141
  fad'2 fad8 mi re si | % 142
  re2 la4 re | % 143
  mi4 fad la fad8 re | % 144
  mi2. fa4 | % 145
  fad2 fad8 mi re si | % 146
  re2 la4 la' ~ | % 147
  la4 dod, fad \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 re si
  }

  | % 148
  la2. r4 | % 149
  R1*5 | % 154
  r2 r4 mi' | % 155
  la4 fad mi re | % 156
  fad4 re dod si | % 157
  re4 la fad'16 mi8. ~ mi8 re | % 158
  R1*11 | % 169
  fad8 lad,16 fad' \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 sold, fa'
  }

  red8 fad,16 red' \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa8 sold, fa'
  }

  | \barNumberCheck #170
  fad8. lad,16 dod2. | % 171
  <dod, lad' mi'>8. dod'16 -. lad la sol mi' <re, si' fad'>8.
  mi'16 -. re dod si fad' | % 172
  <red, la' fad'>8. re'16 -. do si la fad' <dod, la' sol'>8.
  mi'16 -. re dod la la' | % 173
  R1*5 | % 178
  \times 2/3  {
    r8 la, la
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 la' la -.
  }

  la8 sol fad mi | % 179
  sol8 fad fad4 r2 | \barNumberCheck #180
  \times 2/3  {
    r8 la, la
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 la' la -.
  }

  la8 sol fad mi | % 181
  R1*6 | % 187
  r4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la,,8 dod mi
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 dod mi
  }

  mi8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 fad sol
  }

  | % 188
  <dod,, la' mi'>4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 mi sol
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 dod mi
  }

  r4 | % 189
  r4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi,8 sol dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 mi sol
  }

  r4 | \barNumberCheck #190
  R1 | % 191
  r2 mi8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 fad sol
  }

  r8 \times 2/3 {
    r16 re mi
  }

  | % 192
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol,8 la lad
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fad sol
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod,8 re mi
  }

  lad,8 la | % 193
  re,2 r | % 194
  R1*47 | % 241
  re''16 red si' red, re red si' red, re red si'
  red,16 re red si' red, | % 242
  red16 mi dod' mi, red mi dod' mi, red mi dod'
  mi,16 red mi dod' mi, | % 243
  re16 red si' red, re red si' red, re red si'
  red,16 re red si' red, | % 244
  do16 dod lad' dod, do dod lad' dod, do dod lad'
  dod,16 do dod lad' dod, | % 245
  lad16 si sold' si, lad si sold' si, lad si sold'
  si,16 lad si sold' si, | % 246
  la16 lad sol' lad, la lad sol' lad, la lad sol'
  lad,16 la lad sol' lad, | % 247
  lad16 si sold' si, lad si sol' dod, dod red si'
  red,16 dod red si' red, | % 248
  re16 red red fad fad mi mi red red fad fad mi
  mi16 red re red | % 249
  R1*11 | \barNumberCheck #260
  la16 -. lad -. sold' fad la, -. lad -. sold' fad sol,
  -. sold16 -. fad' mi fa, -. fad -. mi' red | % 261
  red,16 -. mi -. red' dod re, -. red -. dod' si do,
  -. dod16 -. si' lad lad, -. do -. lad' sold | % 262
  r8 <lad, fad'>16 -. <lad fad'> <si sol'> <si sol'> <lad fad'>
  <lad fad'>16 <re si'> <re si'> <dod lad'> <dod lad'> <fa
  re'>16 <fa re'> <fad dod'> <fad dod'> -. | % 263
  r8 <fad lad>16 -. <fad lad> <si re> <si re> <lad dod> <lad
  dod>16 r2 | % 264
  R1*7 | % 271
  r2 r4 fad | % 272
  red'2 ~ red8 dod si sold | % 273
  si2 fad4 si | % 274
  dod4 fad sold red8 dod | % 275
  fad2. fad8 sol | % 276
  sold2 ~ sold8 fad mi red | % 277
  dod2 sold4 sold' | % 278
  dod4 si sold mi | % 279
  red4 dod2 fad4 | \barNumberCheck #280
  dod'4 si sold mi | % 281
  red4 dod2 r4 | % 282
  R1*16 | % 298
  <lad, sol' dod>8. lad'16 -. sol fad mi dod' <si, sold' red'>8.
  dod'16 -. si lad sold red' | % 299
  <do, fad red'>8. si'16 -. la sold fad red' <lad, fad' mi'>8.
  dod'16 -. si lad fad fad' | \barNumberCheck #300
  R1*5 | % 305
  \times 2/3  {
    r8 fad, fad
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 fad' fad
  }

  fad8 mi red dod | % 306
  mi8 red red4 r2 | % 307
  \times 2/3  {
    r8 fad, fad
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 fad' fad
  }

  fad8 mi red dod | % 308
  R1*6 | % 314
  r4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad,,8 lad dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 lad dod
  }

  dod8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 red mi
  }

  | % 315
  <lad,, mi' dod'>4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lad8 -. dod -. mi -.
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 -. lad -. dod -.
  }

  mi8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi16 fad sol
  }

  | % 316
  r64 r128 mi ~ mi16. ~ mi8 \once \override TupletBracket #'stencil
  = ##f
  \times 2/3  {
    dod,8 mi lad
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lad8 dod mi
  }

  r4 | % 317
  R1 | % 318
  r2 dod8 ~ \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod16 re mi
  }

  r8 \times 2/3 {
    r16 si dod
  }

  | % 319
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi,8 fad sol
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod,8 red mi
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lad,8 si dod
  }

  sol8 fad | \barNumberCheck #320
  si2 r | % 321
  R1*8 | % 329
  r2 r8 sold'' sol fa | \barNumberCheck #330
  R1*4 | % 334
  r2 re16 re si sold dod dod lad sol | % 335
  <fa re'>16 -. <fa re'> -. <fa si> -. <fa re'> -. r4 r2 | % 336
  R1*2 | % 338
  r8 fa16 fad sol sold la lad si do dod re red mi
  fa16 fad | % 339
  R1*17
}


PartPTwoVoiceThree =  \relative sol, {
  \clef "bass" \key re \major \numericTimeSignature\time 4/4 s1*5 s1*3
  s1*4 s1*2 s s s s s1*3 s1 s s1*3 s1*2 s1 s s s s1*2
  s1*2 s s s1 s s s s s1*5 s1*7 s1*4 s1*2 s1 s1*2 s1 s s
  s1 s1*2 s1*3 s s1*4 s1 s s s | % 91
  sol4 fad red red s1 s s s s1*2 s s s s1 s s s s
  s1 s s1*2 s s s s s s s1 s s s s1*3 s s1*6
  s1*6 s1*3 s1*2 s1 s s s1*2 s s1 s s s s s s s s1*2 s
  s1 s1*2 s1 s1*2 s1*3 s1*2 s s1 s s s1*2 s s s1 s s s
  s1 s s s s s s1*2 s1 s s s1*2 s s s1 s1*2 s s1 s
  s1*2 s s1 s s s s s s s s s s s s s s s s s s
  s1*2 s1 s s s s s s s s s s s s s s s s1*2 s1 s s
  s1 s1*2 s1*3 s1*4 s1*2 s s1 s1*2 s s1 s s s s s s s
  s1*2 s s1 s s1*2 s s s s s s1*3 s1 | % 316
  dod'4 r r2 s1*2 s1*3 s1 s s s s s s s s s s s s s s1*2
  s1 s s s s s s s s s1*3 s1*4 s1
}


PartPTwoVoiceTwo =  \relative red {
  \clef "bass" \key re \major \numericTimeSignature\time 4/4 s1*5 s1*3
  s1*4 s1*2 s s s s s1*3 s1 s s1*3 s1*2 s1 s s s s1*2
  s1*2 s s s1 s s s s s1*5 s1*7 s1*4 s1*2 s1 s1*2 s1 s s
  s1 s1*2 s1*3 s s1*4 s1 s s s | % 91
  r128 red64. ~ red16. ~ red8 r128 red64. ~ red16. ~ red8 r128 do64. ~
  do16. ~ do8 r128 si64. ~ si16. ~ si8 s1 s s s s1*2 s s s
  s1 s s s s s s s1*2 s s s s s s s1 s s s
  s1*3 s s1*6 s s1*3 s1*2 s1 s s s1*2 s s1 s s s s s
  s1 s s1*2 s s1 s1*2 s1 s1*2 s1*3 s1*2 s s1 s s s1*2 s | % 191
  r2 r4 dod' s1 s s s s s s s s s s s1*2 s1 s s s1*2 s
  s1*2 s1 s1*2 s s1 s s1*2 s s1 s s s s s s s s s s
  s1 s s s s s s s s1*2 s1 s s s s s s s s s s s s
  s1 s s s1*2 s1 s s s s1*2 s1*3 s1*4 s1*2 s s1 s1*2 s s1
  s1 s s s s s s s1*2 s s1 s s1*2 s s s s s
  s1*3 s1 | % 316
  r128 lad64. ~ lad16. ~ lad8 r4 r2 s1 | % 318
  r2 r4 lad s1*3 s1 s s s s s s | % 329
  r2 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sold16 la sold
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol16 la sol
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fa16 fad fa
  }

  s1 s s s s s s1*2 s1 s s s s s s s s s1*3 s1*4 s1
}


PartPThreeVoiceOne =  \relative fad'' {
  \clef "treble" \key re \major \numericTimeSignature\time 4/4 R1*7 | % 8
  fad2 la4 sol | % 9
  fad2 r | \barNumberCheck #10
  fad,4. sold16 la fad2 | % 11
  fad4. mi16 dod fad2 | % 12
  fad8. sol16 la8. sol16 fad4 mi | % 13
  fad8. sol16 la8. sol16 fad4 mi | % 14
  fad8. lad16 dod8. si16 lad4 sol | % 15
  fad8. lad16 dod8. si16 lad4 sol | % 16
  fad8. lad16 dod8. si16 lad8. dod16 mi8. re16 | % 17
  dod8. mi16 sol8. fad16 si8. lad16 re8. dod16 | % 18
  <fad, sol'>16 fad' sol fad sol fad <fad, sol'> fad'
  <fad, sol'>16 fad' sol fad sol fad sol fad | % 19
  <fad, sol'>16 fad' sol fad sol fad <fad, sol'> fad'
  <fad, sol'>16 fad' sol fad sol fad sol fad |
  \barNumberCheck #20
  fad,16 fad' sol, sol' la, la' sol, sol' fad, fad'
  mi,16 mi' re, re' dod, dod' | % 21
  si,16 si' lad, lad' mi mi' re, re' dod, dod' lad,
  lad'16 fad, fad' la, la' | % 22
  sol,16 sol' fad, fad' dod dod' lad, lad' sol, sol'
  fad,16 fad' mi, mi' re, re' | % 23
  dod,16 dod' si, si' lad, lad' sol sol' fad, fad'
  mi,16 mi' re, re' dod, dod' | % 24
  si'4. dod16 re si2 | % 25
  si4. la16 -. fad -. si2 | % 26
  si8. re16 fad8. mi16 r4 r8 r16 dod | % 27
  si4 -. la -. sol -. fad -. | % 28
  r2 mi' | % 29
  r2 mi | \barNumberCheck #30
  r8 r16 fad sol8. fad16 mi4 re | % 31
  mi8. r128 fad64. ~ fad32 sol8. fad16 mi4 re | % 32
  mi8. fad16 sol8. fad16 mi8. fad16 sol8. fad16 | % 33
  mi8. fad16 sol8. fad16 mi8. fad16 sol8. fad16 | % 34
  fa16 fad fa fad fa fad fa fad do dod do dod do
  dod16 do dod | % 35
  la16 lad la lad la lad la lad fad sol fad sol
  fad16 sol fad sol | % 36
  fa16 fad fa fad fa fad fa fad do dod do dod do
  dod16 do dod | % 37
  la16 lad la lad la lad la lad fad sol fad sol
  fad16 sol fad sol | % 38
  fad8 fa16 fad fa fad fa fad mi fad mi fad mi fad
  mi16 fad | % 39
  mi16 fad mi fad mi fad mi fad re fad re fad re
  fad16 re fad | \barNumberCheck #40
  re16 mi re mi re mi re mi dod mi dod mi dod
  mi16 dod mi | % 41
  dod16 re dod re dod re dod re si re si re si
  re16 si re | % 42
  dod4 r r8 fad -. sold -. lad -. | % 43
  dod32 si16. -. lad8 -. si -. dod -. mi32 re16. -. dod8 -. re -.
  mi8 -. | % 44
  fad8 sold4. ~ sold8 lad4. ~ | % 45
  lad8 si dod re fa,4. fad8 | % 46
  fad32 sold fad sold fad sold fad sold fad sold fad
  sold32 fad sold fad sold fad sold fad sold fad
  sold32 fad sold fad sold fad sold fad sold fad
  sold32 | % 47
  fad16 -. fad32 sold fad sold fad sold fad sold fad
  sold32 fad sold fad sold fad sold fad sold fad
  sold32 fad sold fad sold fad sold fad sold fad
  sold32 | % 48
  si32 dod si dod si dod si dod si dod si dod si
  dod32 si dod si dod si dod si dod si dod si
  dod32 si dod si dod si dod | % 49
  si32 dod si dod si dod si dod si dod si dod si
  dod32 si dod si dod si dod si dod si dod si
  dod32 si dod si dod si dod | \barNumberCheck #50
  dod4. re16 mi dod4 si | % 51
  la4 si la8 fad4 mi8 | % 52
  dod4. re16 mi dod4 si | % 53
  la4 si la8 fad4 mi8 | % 54
  la4 mi la mi | % 55
  sol4 re sol re | % 56
  fad4 dod fad dod | % 57
  mi4 si mi fa | % 58
  fad2 fad8 mi re si | % 59
  re2 r4 re | \barNumberCheck #60
  mi4 fad la fad8 re | % 61
  mi2. fa4 | % 62
  fad2 fad8 mi re si | % 63
  r2 r4 la' ~ | % 64
  la4 r r2 | % 65
  la,2. la'8 lad | % 66
  si2 ~ si8 la sol fad | % 67
  mi2 si4 si' | % 68
  mi4 re si mi | % 69
  r128 la64. ~ la16. ~ la8 mi4 dod si | \barNumberCheck #70
  mi4 re si mi | % 71
  la4 mi dod la8 la' | % 72
  la2 lad4 si | % 73
  r128 re,64. ~ re16. ~ re8 r64 r128 dod' ~ dod16. ~ dod8 re4. r128
  re64. ~ re16. | % 74
  r4 <la la'>2 ~ la4 | % 75
  la'2 r4 r8 re, | % 76
  re4 la'16 fad re la sol'8 -. fad -. fad4 -. | % 77
  re4 fad16 dod la fad mi'8 -. re -. re4 -. | % 78
  la'16 fad8 -. la,16 sol'8 -. fad -. fad -. mi -. mi4 -. | % 79
  la16 fad8 -. la,16 sol'8 fad fad -. mi -. mi4 -. |
  \barNumberCheck #80
  re16 la fad re si'8 -. la -. la16 fad re la sol'8 -.
  fad8 -. | % 81
  fad16 re la fad mi'8 -. re -. re16 la fad re si'8 -. la
  -. | % 82
  la16 fad re la sol'8 -. fad -. la16 fad re la sol'8 -.
  fad8 -. | % 83
  fad16 re la re mi8 -. re -. fad16 re la re mi8 -. re
  -. | % 84
  re4 -. mi8 -. re -. re4 -. mi8 -. re -. | % 85
  re4 -. mi re mi | % 86
  re4 mi2. | % 87
  R1*4 | % 91
  r2 do'4. si8 | % 92
  re2 r | % 93
  r4 si dod re ~ | % 94
  re4 fad8. mi16 sold2 ~ | % 95
  sold2. sol8 -. sol -. | % 96
  sol4 r r16 sol -. sol -. sol -. sol8 -. sol16 -. sol -. | % 97
  sol4 -. r r16 sol -. sol -. sol -. sol re32 sol r sol16.
  -. | % 98
  sol4 -. r r2 | % 99
  R1 | \barNumberCheck #100
  r4 r8 la,, -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 la do
  }

  do16 do do mi | % 101
  red4 -. r r2 | % 102
  r16 mi -. mi -. red -. mi8 -. la -. \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 la dod
  }

  dod16 dod dod mi | % 103
  red4 -. r r2 | % 104
  la'2 la | % 105
  r4 r8 si re2 | % 106
  si2 si | % 107
  r4 r8 dod mi2 | % 108
  mi8 fad sol fad mi re dod si | % 109
  si4 -. r r <la la'> -. | \barNumberCheck #110
  sol'8 fad mi re re4 ~ \once \override TupletBracket #'stencil =
  ##f
  \times 2/3  {
    re8 dod fad
  }

  | % 111
  si,8 fad, r fad r fad r fad | % 112
  r8 fad r fad r fad r fad | % 113
  r8 mi r mi r mi r mi | % 114
  r8 mi r r128 re64. ~ re16. r8 mi r mi | % 115
  r4 r8 do''16 -. do -. do8 -. do -. do4 | % 116
  do,,8 re mi4 mi2 | % 117
  r4 r8 do''16 -. do -. do8 -. do -. do4 | % 118
  do,,8 re mi4 fa2 | % 119
  r4 r8 si'16 -. si -. si8 -. si -. si4 | \barNumberCheck #120
  si,,8 dod red4 mi2 | % 121
  r8 sol''16 sol sol4 -. r8 fad16 fad fad4 -. | % 122
  r8 sol16 sol sol4 -. r8 fad16 fad fad4 -. | % 123
  r8 do16 do do8 do re16 do8. ~ do r16 | % 124
  r8 si16 si si8 si dod16 si8. ~ si r16 | % 125
  fad8. -. <si re>16 <sol dod sol'>8. -. <fad si>16 <mi la mi'>8. -.
  <re sol>16 <dod fad dod'>8. -. <si mi>16 | % 126
  <si re si'>8. -. re16 sol8. -. si,16 mi8. -. sol,16 dod8. -. mi,16 | % 127
  lad4 -. r8 dod, mi lad mi sol | % 128
  lad8 fad16 sol sold la lad si dod re red mi fa
  fad16 sol fad | % 129
  r4 sol8 fad -. sol fad -. sol fad -. | \barNumberCheck #130
  r4 la8 sol -. la sol -. la sol -. | % 131
  r4 sol8 fad -. sol fad -. sol fad -. | % 132
  r4 la8 sol -. la sol -. la sol -. | % 133
  sol4 -. r r2 | % 134
  R1 | % 135
  sol4. la16 si sol4 fad | % 136
  mi4 re si la | % 137
  sol1 ~ | % 138
  sol4 r r2 | % 139
  sol4. la16 si sol4 fad | \barNumberCheck #140
  mi4 r r2 | % 141
  R1*7 | % 148
  fad'4 la dod fad8 mi | % 149
  dod4 -. r r2 | \barNumberCheck #150
  r8 si, -. re -. mi -. r128 re64. ~ re16. r8 r4 | % 151
  R1 | % 152
  r8 la'32 si la si la si la si la si la si la4
  -. mi4 -. | % 153
  r8 si -. re -. mi -. r128 re64. ~ re16. r8 r4 | % 154
  r8 la'32 si la si la si la si la si la si la4
  -. r4 | % 155
  la,2 dod4 re | % 156
  re2 mi4 fad | % 157
  fad2 <si, sol'>4 -. dod | % 158
  mi4 re re' \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 -. lad fad
  }

  | % 159
  <si, sol'>4 <lad fad'> <si sol'> <lad fad'> | \barNumberCheck
  #160
  <si sol'>4 <fad red'>2 <sol mi'>4 | % 161
  <si sol'>4 <lad fad'> <si sol'> <lad fad'> | % 162
  <si sol'>4 <fad red'>2 <sol mi'>4 | % 163
  <re' si'>4 <dod la'> <re si'> <dod la'> | % 164
  <si sol'>4 <lad fad'> <si sol'> <lad fad'> | % 165
  <la fa'>4 <sold mi'> <la fa'> <sold mi'> | % 166
  <la fa'>4 <la mi'> <la red> <la re> | % 167
  dod2 r | % 168
  <fad, lad>4 <fa sold> <red fad> <fa sold> | % 169
  R1 | \barNumberCheck #170
  r4 dod''2. | % 171
  sol16 -. sol -. fad32 sol16. -. r8 r16 sol si si lad si
  r8 r16 si | % 172
  do16 do si do r8 r16 do dod dod si dod r4 | % 173
  red4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red,,8 mi red
  }

  red4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 mi red
  }

  | % 174
  lad'4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa mi
  }

  mi4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 fa mi
  }

  | % 175
  re'4 -. sold,8 sol sold sol sold sol | % 176
  sold4 -. r r2 | % 177
  la4 -. r r2 | % 178
  r8 la' la' la la4. la8 | % 179
  si8 la la4 \times 2/3 {
    r8 re,,, re
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 fad fad
  }

  | \barNumberCheck #180
  r8 la' la' la la4. la8 | % 181
  la8. sol16 si,4 la'8. sol16 si,4 | % 182
  r128 mi64. ~ mi16. ~ mi8 la,4 sol'8. fad16 la,4 | % 183
  la'8. sol16 si,4 si'8. la16 dod,4 | % 184
  lad'4 -. r r2 | % 185
  r4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si,,,8 re fa
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lad8 re fa
  }

  lad32 dod lad dod lad dod lad dod | % 186
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red,8 fad lad
  }

  red32 fad red fad red fad red fad red fad red
  fad32 red fad red fad red fad red fad red fad
  red32 fad | % 187
  sol4 -. r r2 | % 188
  r8 dod, r4 r2 | % 189
  r8 dod r4 r2 | \barNumberCheck #190
  r8 dod r4 r8 dod r4 | % 191
  mi4 -. r r2 | % 192
  r2 r4 r8 dod | % 193
  re4. mi16 -. fad -. re2 | % 194
  do4 r8 si16 -. la -. do2 | % 195
  si1 | % 196
  dod,16 lad'8 sol16 ~ sol mi8 dod16 ~ dod lad8 sol16 ~ sol mi8
  la16 | % 197
  re4 r8 mi,16 -. fad -. re2 | % 198
  red'4 r8 si,16 -. la -. do2 | % 199
  mi'4. fad16 sold mi2 | \barNumberCheck #200
  lad16 sol8 mi16 ~ mi dod8 lad16 lad sol8 mi16 ~ mi dod8 lad'16
  ~ | % 201
  lad16 sol8 mi16 ~ mi dod8 si'16 si sol8 mi16 ~ mi dod8 la'16 ~
  | % 202
  la16 sol8 mi16 ~ mi dod8 si'16 si sol8 mi16 ~ mi dod8 la'16 | % 203
  r8 sol4. -. r2 | % 204
  R1*7 | % 211
  r8 fa16 fa fa8 -. sold -. sold -. si -. si -. re -. | % 212
  do8 re16 red do8 sold16 sol do8 re16 red do8 sold16 sol | % 213
  red'1 | % 214
  r4 sol -. r r8 sol' -. | % 215
  r4 sol2 r4 | % 216
  r4 sol2 r4 | % 217
  sol4 si2 lad4 | % 218
  sold4 fad8. mi16 mi4 re | % 219
  red4 si2 lad4 | \barNumberCheck #220
  r4 fad r2 | % 221
  red4 fad,8. mi16 mi4 re | % 222
  r2 mi4 re | % 223
  red4 mi red mi | % 224
  red1 | % 225
  R1*7 | % 232
  r2 r8 dod'' \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 si lad
  }

  | % 233
  dod4 si8. dod32 si sold2 | % 234
  r4 sold lad8 si sold4 | % 235
  r4 sold lad si | % 236
  sold4 sold' si, dod | % 237
  si8. lad32 si sold2 fad8. mi16 | % 238
  red4 fad16 mi8. red4. sol,8 | % 239
  sold4. lad16 si sold4. fad16 red | \barNumberCheck #240
  sold2 r | % 241
  r2 \times 2/3 {
    r4 lad' si
  }

  | % 242
  si4 lad2 mi8 red | % 243
  red4 sold sold sold | % 244
  sold2. sold,8 lad | % 245
  si4 red2 red4 | % 246
  red4. fad16 mi red4 sol, | % 247
  sold1 | % 248
  R1 | % 249
  sold'2. lad8 si | \barNumberCheck #250
  <dod, si'>4 <dod lad'>2 <dod lad'>4 | % 251
  <si re si'>2. <dod dod'>8 re' | % 252
  <re, mi re'>4 <dod mi dod'>2 <dod mi dod'>4 | % 253
  <re fad re'>2. <mi mi'>8 fad' | % 254
  <fad, sol fad'>4 <mi sol mi'> <lad, mi' lad> <mi' sol mi'> | % 255
  <la, fad' la>4 -. <re fad re'>2 <mi mi'>8 fad' | % 256
  <fad, lad fad'>4 <mi sol mi'> <lad, mi' lad> <mi' sol mi'> | % 257
  mi'1 ~ | % 258
  mi2 r | % 259
  R1*4 | % 263
  r2 sol,,8 fad si lad | % 264
  r8 dod re dod r r128 dod64. ~ dod16. re8 dod | % 265
  re8 dod -. re dod -. re dod -. re dod -. | % 266
  dod4 -. r r2 | % 267
  r2 r4 fad8. red'16 | % 268
  red2 red8 dod si sold | % 269
  si2 fad4 si | \barNumberCheck #270
  dod4 dod red8 fad red si | % 271
  dod2. r4 | % 272
  R1*5 | % 277
  r4 r16 r32 sold ~ sold16 r r2 | % 278
  r2 r4 dod, | % 279
  fad32 sol fad sol fad sol fad sol fad sol fad
  sol32 fad sol fad sol fad4 -. r | \barNumberCheck #280
  r8 dod -. dod -. mi -. sold4 -. dod, | % 281
  fad32 sol fad sol fad sol fad sol fad sol fad
  sol32 fad sol fad sol fad sol fad sol fad sol
  fad32 sol fad sol fad sol fad sol fad sol | % 282
  lad,2 dod4 si | % 283
  si2 dod4 red | % 284
  red2 mi4 lad, | % 285
  dod4 si si' \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lad8 sol red
  }

  | % 286
  <sold, mi'>4 <sol red'> <sold mi'> <sol red'> | % 287
  mi'4 do2 dod4 | % 288
  <sold mi'>4 <sol red'> <sold mi'> <sol red'> | % 289
  mi'4 do2 dod4 | \barNumberCheck #290
  <si sold'>4 <lad fad'> <si sold'> <lad fad'> | % 291
  <sold mi'>4 <sol red'> <sold mi'> <sol red'> | % 292
  red'4 dod red dod | % 293
  re4 dod do si | % 294
  r4 fa red' lad8. do16 | % 295
  r4 lad2. | % 296
  lad'2 red4 lad8. do16 | % 297
  sol16 red sol lad lad2. | % 298
  mi16 mi red mi r8 r16 mi sold sold sol sold r8 r16
  sold16 | % 299
  la16 la sold la r8 r16 la lad lad la lad r4 |
  \barNumberCheck #300
  do4 -. \clef "bass" \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si,,8 dod si
  }

  si4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 \clef "treble" dod si
  }

  | % 301
  dod'4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod,8 re dod
  }

  dod4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 re dod
  }

  | % 302
  re'4 -. fa,8 -. mi -. fa -. mi -. fa -. mi -. | % 303
  fa4 -. r r2 | % 304
  fad4 -. r \times 2/3 {
    r8 \clef "bass" si, si
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si8 red red
  }

  | % 305
  r4 \clef "treble" fad' fad'4. fad8 | % 306
  sold8 fad fad4 r2 | % 307
  r4 fad, fad'4. fad8 | % 308
  fad8. mi16 sold,4 fad'8. mi16 sold,4 | % 309
  fad'8. red16 fad,4 fad'8. red16 fad,4 | \barNumberCheck #310
  fad'8. mi16 sold,4 sold'8. fad16 lad,4 | % 311
  sol'4 -. r r2 | % 312
  r8 sol,,, \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 si re
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 si re
  }

  sol32 la sol la sol la sol la | % 313
  sol2 sold4 la | % 314
  lad8 -. lad -. r4 r2 | % 315
  r8 lad r4 r2 | % 316
  r8 lad r4 r2 | % 317
  r8 mi' r4 r8 mi r4 | % 318
  mi4 -. r r2 | % 319
  r2 r4 r8 lad, | \barNumberCheck #320
  si4. dod16 red si2 | % 321
  lad4. sold16 fad si2 | % 322
  r4 r32 dod16. ~ dod16 r r4 r8 r32 red16. -. | % 323
  fad4 la -. r2 | % 324
  si,8 fad,16 red \clef "bass" \once \override TupletBracket
  #'stencil = ##f
  \times 4/5  {
    fad,16 red' \clef "treble" fad red fad
  }

  \clef "bass" \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    fad,16 red' \clef "treble" fad red fad
  }

  \clef "bass" \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    fad,16 red' \clef "treble" fad red fad
  }

  | % 325
  \clef "bass" \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    fad,16 re' \clef "treble" fad re fad
  }

  \clef "bass" \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    fad,16 re' \clef "treble" fad re fad
  }

  \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    sold,16 re' sold re sold
  }

  \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    sol,16 re' sold re sold
  }

  | % 326
  \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    sold,16 red' sold red sold
  }

  \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    lad,16 fad' lad fad lad
  }

  \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    si,16 fad' si fad si
  }

  \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    dod,16 sold' dod sold dod
  }

  | % 327
  \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    red,16 la' red la red
  }

  si16 la si' la, si la si' la, si la si' la, | % 328
  sold'4 -. r r2 | % 329
  re4 -. r r sol,8 -. fa -. | \barNumberCheck #330
  si'16 si dod red si4 lad16 -. lad sold fad lad4 | % 331
  si16 -. si dod red si4 lad16 -. lad sold fad lad4 | % 332
  red4 red red red | % 333
  red4 -. si do dod | % 334
  <la red>4 <sol mi'> <si fa'> <lad sol'> | % 335
  sold'32 la sold la sold la sold la sold la sold
  la32 sold la sold la sold la sold la sold la
  sold32 la sold la sold la sold la sold la | % 336
  <si, sold'>4 -. r r r8 fa,32 fad sold lad | % 337
  si8 re16 dod si8 sold'16 fad fa8 si16 lad sold8 \once
  \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re'16 dod si
  }

  | % 338
  lad4 -. r r2 | % 339
  R1*3 | % 342
  r4 r8 <lad, lad'> <si si'> <do do'> <dod dod'> la' | % 343
  fad32 si fad si fad si fad si fad si fad si
  fad32 si fad si fad si fad si fad si fad si
  fad32 si fad si fad si fad si | % 344
  lad32 red lad red lad red lad red lad red lad
  red32 lad red lad red lad red lad red lad red
  lad32 red lad red lad red lad red lad red | % 345
  red32 fad red fad red fad red fad red fad red
  fad32 red fad red fad red fad red fad red fad
  red32 fad red fad red fad red fad red fad | % 346
  sold32 si sold si sold si sold si sold si sold
  si32 sold si sold si sold si sold si sold si
  sold32 si sold si sold si sold si sold si | % 347
  si4. dod,,16 red r4 sol' -. | % 348
  si,,4 fad''8 dod,16 red sold4 -. sol -. | % 349
  fad4 dod8. red16 fad4 dod8. red16 | \barNumberCheck #350
  fad4 dod8. red16 fad4 dod8. red16 | % 351
  fad4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    red8 red red
  }

  red4 red | % 352
  red4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    si'8 si si
  }

  si4 -. si -. | % 353
  si2 red,,4. red8 | % 354
  R1*2
}


PartPThreeVoiceThree =  \relative la'' {
  \clef "treble" \key re \major \numericTimeSignature\time 4/4 s1*5
  s1*3 s1*4 s1*2 s s s s s1*3 s1 s s1*3 s1*2 s1 s s s
  s1*2 s s s s1 s s s s s1*5 s1*7 s1*4 s1*2 s1 s1*2 s1 s
  s1 s | % 75
  la16 ~ <sol, la'> ~ <re la''> ~ <sol la'> r sol re sol
  dod'32 re dod re dod re dod re dod re dod re r16
  sol,,16 s1 s1*3 s s1*4 s1 s s s s s s s s s1*2 s s
  s1*2 | % 104
  r4 mi' r2 s1 | % 106
  r4 fad r2 s1 s | % 109
  r2 r4 r64 dod32. ~ dod8. s1 s1*2 s s s s s s s1 s
  s1 s s1*3 s s1*6 s s1*3 s1*2 s1 s s s1*2 s s1 s s s
  s1 s s s s1*2 s s1 s1*2 s1 s1*2 s1*3 s1*2 s s1 s s s1*2
  s1*2 s s1 s s s s s s s s s s1*2 s1 s s s1*2 s s
  s1 | % 215
  <sol' lad re sol>8 la'16 lad \times 2/3 {
    r8 re, re
  }

  r16 re8. -. \times 2/3 {
    r8 re re
  }

  | % 216
  <sol, lad dod sol'>8 la'16 lad \times 2/3 {
    r8 dod, dod
  }

  r16 dod8. -. \times 2/3 {
    r8 dod dod
  }

  s1*2 s1 | \barNumberCheck #220
  r4 r8 r32 mi,,16. r2 s1*2 s s1 s s s s s s s s s s s
  s1 s s s s s s s1*2 s1 s s s s s s s s s s s s s
  s1 s s1*2 s1 s s s s1*2 s1*3 s1*4 s1*2 s s1 s1*2 s s1 s
  s1 s s s s s s1*2 s s1 s s4 \clef "bass" s1 \clef
  "treble" s1 s1*2 s1 \clef "bass" s1 \clef "treble" s2.
  s1*2 s s s1*3 s1*2 s s1*3 s1 s s4 \clef "bass" s1
  \clef "treble" s1 \clef "bass" s1 \clef "treble" s1
  \clef "bass" s1 \clef "treble" s1 | % 325
  \clef "bass" s1 \clef "treble" s1 \clef "bass" s1
  \clef "treble" s1 s1 s s s s s s s s s s1*2 s1 s s
  s1 s s s s s s1*3 s1*4 s1
}


PartPThreeVoiceTwo =  \relative re''' {
  \clef "treble" \key re \major \numericTimeSignature\time 4/4 s1*5
  s1*3 s1*4 s1*2 s s s s s1*3 | % 26
  r2 re s1 | % 28
  mi4. fad16 sol <mi, sol>4. la16 si | % 29
  mi4. re16 -. si -. <mi, sol>4. la16 si | \barNumberCheck #30
  mi2 r | % 31
  r8 r16 fad, r4 r2 s1 s s s s s1*2 s s s s1 s s s
  s1 | \barNumberCheck #50
  dod1 | % 51
  dod2 r s1*3 s1*4 | % 59
  r2 la, s1*2 s1 | % 63
  re2 la4 r | % 64
  dod4 dod fad mi8 si s1 s1*2 s1 | % 69
  fad'4 r r2 s1 s | % 72
  r4 fad' r8 mi r si | % 73
  si'4 fad r r8 fad | % 74
  <fad re' fad>4 fad'8 mi re4 fad, | % 75
  r4 sol r2 s1 s | % 78
  r8 dod r4 r2 | % 79
  r8 dod r4 r2 s1*3 s1*4 s1 s s s s s s s s s1*2 s s
  s1*2 | % 104
  r4 r8 si16 do r8 si,16 la dod4 | % 105
  re'4 do8. -. re,16 r8 sold sol fa | % 106
  r4 r8 dod'16 re r8 dod, si re | % 107
  dod'4 re8. -. mi,16 r8 lad la sold s1 | % 109
  <si, re sol>2. r32 fad'16. sol'8 | \barNumberCheck #110
  r2 r8 fad,,,4. s1*2 s1 | % 114
  r4 r8 mi' r2 s1*2 s s s s s1 s s s | % 129
  fad1 | \barNumberCheck #130
  mi1 | % 131
  fad1 | % 132
  mi1 s1*2 s1*5 | \barNumberCheck #140
  r8 dod4. si4 la s1*6 s1*3 | \barNumberCheck #150
  r2 si'4 -. r s1 s | % 153
  r2 si4 -. r s1 s1*2 s s1 s s s s s s s | % 167
  <fad lad>4 <fa sold> <fad fad'> <sold dod> s1 s1*2 s1 s1*2 s1
  s1*2 s1*3 s1*2 | % 182
  sol'4 r r2 s1 s | % 185
  r8 lad,,4. -. r2 s1 s1*2 s s s1 s | % 195
  r4 r8 fad''16 sold mi2 s1 s s s s s s | % 203
  \times 2/3  {
    la,4 -. r mi ~
  }

  mi16 dod8. ~ dod16 r r8 s1 s s s s1*2 s s | % 214
  re'8 sol16 -. sol -. r32 re lad16 -. <lad sol' lad> -. lad
  -. <lad sol' lad>16 -. lad32 re <lad' re>16 lad,32 re <lad' re>16
  lad,32 re r re lad re | % 215
  r2 re'8 -. sol4. | % 216
  r2 dod,8 -. sol'4. s1*2 s1 | \barNumberCheck #220
  sold,4 r8 r16 mi mi4 re s1*2 s s1 s s s s s s s s s
  s1 s s s s s | % 241
  sold2. r4 s1 s s1*2 s1 s s s s s s s s s s s s s s s
  s1*2 | % 264
  r2 r8 fad, r4 s1 s s s1*2 s1*3 s1*4 | % 277
  dod'8 -. dod -. mi -. dod -. r2 s1 s1*2 s1 s1*2 s s1 s s s
  s1 s s s | % 294
  lad2 r | % 295
  sol8. red16 r4 red fa s1*2 s1 s s4 \clef "bass" s1 \clef
  "treble" s1 s1*2 s1 \clef "bass" s1 \clef "treble" s2.
  s1*2 s s s1*3 s1*2 s s1*3 | % 322
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol16 si'8. lad16 si
  }

  dod,8 -. r32 do'16 dod32 \once \override TupletBracket #'stencil =
  ##f
  \times 8/7  {
    red,32 red' ~ red16 ~ red64 re32.
    red32
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi,16 mi'8 ~
  }

  mi16 r32 mi | % 323
  r8 \times 2/3 {
    r16 fa fad ~
  }

  fad8 sold fad mi red dod s1 \clef "bass" s1 \clef
  "treble" s1 \clef "bass" s1 \clef "treble" s1 \clef
  "bass" s1 \clef "treble" s1 | % 325
  \clef "bass" s1 \clef "treble" s1 \clef "bass" s1
  \clef "treble" s1 s1 s s s s s | % 332
  r8 mi,16 si' r8 mi,16 si' r8 mi,16 si' r8 mi,16 si' s1 s | % 335
  si1 s1*2 s1 s s s s s s s s | % 347
  r2 si, s1*2 s1*4 s1
}


PartPFourVoiceOne =  \relative si {
  \clef "bass" \key re \major \numericTimeSignature\time 4/4 R1 | % 2
  si4. dod16 re <si, re fad>4 -. r8 <si mi sol> | % 3
  si'2 si | % 4
  <si, si'>8. <dod dod'>16 <re re'>8. <dod dod'>16 <si si'>4 -. <la
  la'>4 -. | % 5
  <sol sol'>4 -. <fad fad'> -. <mi mi'> -. <re re'> -. | % 6
  <dod' fad lad>4 r <dod fad lad> r | % 7
  <fad,, fad' dod' fad lad>2 r | % 8
  R1*2 | \barNumberCheck #10
  <fad'' la dod>4 r <fad la dod> r8 <fad si re> | % 11
  <fad la dod>4 -. <fad sol si> -. r <fad la dod> -. | % 12
  fad,16 ~ <fad dod'> ~ <fad la> ~ <fad dod'> dod' mi dod
  mi16 dod mi dod mi dod mi dod mi | % 13
  lad,16 dod lad dod dod mi dod mi dod mi dod mi
  dod16 mi dod mi | % 14
  dod16 mi dod mi dod mi dod mi dod mi dod mi
  dod16 mi dod mi | % 15
  dod16 mi dod mi dod mi dod mi dod mi dod mi
  dod16 mi dod mi | % 16
  <fad, dod'>4 -. <fad' lad>8. <fad si>16 <fad lad>4 -. <fad lad>8.
  <fad si>16 | % 17
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 fad fad
  }

  fad8. ~ <fad re'>16 \clef "treble" sol'8. fad16 r4 | % 18
  R1*2 | \barNumberCheck #20
  \clef "bass" <fad,, dod' mi>16 sol' <fad, dod' mi> sol' <fad,
  dod' mi>16 sol' <fad, dod' mi> sol' <fad, dod' mi> sol'
  <fad, dod' mi>16 sol' <fad, dod' mi> sol' <fad, dod' mi>
  sol'16 | % 21
  <fad, dod' mi>16 sol' <fad, dod' mi> sol' <fad, dod' mi>
  sol'16 <fad, dod' mi> sol' <fad, dod' mi> sol' <fad, dod'
  mi>16 sol' <fad, dod' mi> sol' <fad, dod' mi> sol' | % 22
  r32 lad16. r8 dod -. lad -. sol -. fad -. mi -. re -. | % 23
  dod8 si lad <sol sol'> -. <fad fad'> -. <mi mi'> -. <re re'>
  -. <dod dod'>8 -. | % 24
  <si' re fad>16 si' <si, re fad> si' <si, re fad> si' <si,
  re fad>16 si' <si, re fad si>4 -. <si mi sol si> -. | % 25
  <si re fad si>4 -. <dod re fad la> -. <si re fad>16 si' <si, re
  fad>16 si' <si, re fad> si' <si, re fad> si' | % 26
  r2 si4 r | % 27
  r64 r128 re ~ re16 r32 r8 r64 r128 dod ~ dod16 r32 r8 r128 mi64.
  ~ mi32 r16 r8 r128 re64. ~ re32 r16 r8 | % 28
  <si, mi sol>16 si' <si, mi sol> si' <si, mi sol> si' <si,
  mi sol>16 si' r2 | % 29
  <si, mi sol>16 si' <si, mi sol> si' <si, mi sol> si' <si,
  mi sol>16 si' r2 | \barNumberCheck #30
  <si, mi sol si>4 -. r <mi, mi'>8. <fad fad'>16 <sol sol'>8. <fad
  fad'>16 | % 31
  <mi si' mi>4 -. r <mi mi'>8. <fad fad'>16 <sol sol'>8. <fad fad'>16
  | % 32
  mi'16 sol mi sol mi sol mi sol <re mi> sol <re mi>
  sol16 <re mi> sol <re mi> sol | % 33
  <do, mi>16 sol' <do, mi> sol' <do, mi> sol' <do, mi>
  sol'16 <si, mi> sol' <si, mi> sol' <si, mi> sol' <si,
  mi>16 sol' | % 34
  r64 r128 lad ~ lad16. r8 r4 r2 | % 35
  R1 | % 36
  r4 <fad lad dod>8 -. <fad lad dod> -. r4 <sol si mi>8 -. <sol si
  mi>8 -. | % 37
  r4 <fad lad dod>8 -. <fad lad dod> -. r4 <dod mi si'>8 -. <dod mi
  si'>8 -. | % 38
  <fad, fad'>2 r8 fad -. sold -. lad -. | % 39
  si8 -. lad -. si -. dod -. re -. dod -. re -. mi -. |
  \barNumberCheck #40
  <fad, fad'>8 <sold sold'>4. ~ ~ <sold sold'>8 <lad lad'>4. ~ ~ | % 41
  <lad lad'>4 <si si'> <fa fa'>2 | % 42
  <fad fad'>8 fa'16 fad fa fad fa fad mi fad mi fad
  mi16 fad8 -. fad16 | % 43
  mi16 fad mi fad mi fad mi fad re fad re fad re
  fad16 re fad | % 44
  re16 mi re mi re mi re mi dod mi dod mi dod
  mi16 dod mi | % 45
  dod16 re dod re si re si re la dod la dod sol
  si16 sol si | % 46
  <fad lad dod>4 -. r r2 | % 47
  R1 | % 48
  r64 r128 re'' ~ re16. ~ re4. ~ re2 ~ | % 49
  re1 | \barNumberCheck #50
  R1*2 | % 52
  <mi, sol>2 <fa sold> | % 53
  fad4 sol2. | % 54
  sol4 fad sol fad | % 55
  mi4 fad mi fad | % 56
  re4 mi re <mi sol> | % 57
  <do fad>4 <dod sol'> <do fad> <dod sol'> | % 58
  <re fad>2 <sol, re'> | % 59
  <fad re'>1 | \barNumberCheck #60
  <la dod>2 <si re> | % 61
  <dod mi>4 sol' ~ <la, sol'>2 | % 62
  <re, fad'>2 <sol re'> | % 63
  <fad re'>2 <fa re'> | % 64
  <mi dod'>2 <mi re'> | % 65
  <la dod>4 ~ ~ <la dod re'> ~ ~ <la dod mi'> ~ ~ <la dod dod'> | % 66
  \clef "treble" <sol' si re>16 mi' <sol, si re> mi' <sol, si
  re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol, si
  re>16 mi' <sol, si re> mi' <sol, si re> mi' | % 67
  <sol, si re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol,
  si re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol,
  si re>16 mi' <sol, si re> mi' | % 68
  <sol, si re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol,
  si re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol,
  si re>16 mi' <sol, si re> mi' | % 69
  \clef "bass" <sol, la>16 dod <sol la> dod <sol la> \clef
  "treble" dod16 <sol la> dod <sol la> dod <sol la> dod
  <sol si re>16 mi' <sol, si re> mi' | \barNumberCheck #70
  <sol, si re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol,
  si re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol,
  si re>16 mi' <sol, si re> mi' | % 71
  \clef "bass" <sol, la>16 dod <sol la> dod <sol la> \clef
  "treble" dod16 <sol la> dod <sol la> dod \clef "bass" <sol
  la>16 dod <sol la> dod <sol la> dod | % 72
  la16 re la re la re la re lad \clef "treble" re
  lad16 re si re si re | % 73
  re16 fad re fad re fad re fad si, fad' si, fad'
  si,16 fad' si, fad' | % 74
  R1*2 | % 76
  \clef "bass" <re,, la' re>4 <re' re'>8 <re re'> <re, re'> <re'
  re'>8 <re re'>4 -. | % 77
  <re, la' re>4 <re' re'>8 <re re'> <re, re'> <re' re'> <re re'>4
  -. | % 78
  <fad, fad'>8 -. <fad' fad'> -. <mi mi'> -. <re re'> -. <re re'>
  -. <la la'>8 -. <la la'>4 -. | % 79
  <fad fad'>8 -. <fad' fad'> -. <mi mi'> -. <re re'> -. <re re'>
  -. <la la'>8 -. <la la'>4 -. | \barNumberCheck #80
  <re, re'>8 -. <re' re'> -. <re re'>4 -. <re, re'>8 <re' re'> <re
  re'>4 -. | % 81
  re,8 <re re'> -. <re re'>4 -. re8 <re re'> -. <re re'>4 -. | % 82
  re8 -. re' -. re4 -. re,8 re' re4 -. | % 83
  re,8 -. re' -. <re sol> -. <fad la> -. re, -. re' -. <re sol
  si>8 -. <fad la> -. | % 84
  <re, fad' la>8 -. re' -. <re sol si> -. <fad la> -. <re, fad' la>
  -. re'8 -. <re sol si> -. <fad la> -. | % 85
  <fad la>4 -. sol fad sol | % 86
  fad4 r r2 | % 87
  <si,, fad' si>32 ~ ~ ~ <si fad' si si'> ~ ~ ~ <si fad' si red fad>
  ~ ~ ~ <si fad' si si'>32 ~ ~ ~ <si fad' si red fad> ~ ~ ~ <si fad'
  si si'>32 ~ ~ ~ <si fad' si red fad> ~ ~ ~ <si fad' si si'>
  ~ ~ ~ <si fad' si red fad>32 ~ ~ ~ <si fad' si si'> ~ ~ ~ <si fad'
  si red fad>32 ~ ~ ~ <si fad' si si'> ~ ~ ~ <si fad' si red
  fad>32 ~ ~ ~ <si fad' si si'> ~ ~ ~ <si fad' si red fad> ~ ~
  ~ <si fad' si si'>32 ~ ~ ~ <si fad' si fad'> ~ ~ ~ <si fad' si
  si'>32 ~ ~ ~ <si fad' si fad'> ~ ~ ~ <si fad' si si'> ~ ~ ~
  <si fad' si fad'>32 ~ ~ ~ <si fad' si si'> ~ ~ ~ <si fad' si fad'>
  ~ ~ ~ <si fad' si si'>32 ~ ~ ~ <si fad' si fad'> ~ ~ ~ <si fad' si
  si'>32 ~ ~ ~ <si fad' si fad'> ~ ~ ~ <si fad' si si'> ~ ~ ~
  <si fad' si fad'>32 ~ ~ ~ <si fad' si si'> ~ ~ ~ <si fad' si fad'>
  ~ ~ ~ <si fad' si si'>32 | % 88
  <red' fad>32 si' <red, fad> si' <red, fad> si' <red, fad>
  si'32 si,, ~ <si si''> ~ <si red' fad> ~ <si si''> <red'
  fad>32 si' <red, fad> si' <red, fad> si' <red, fad>
  si'32 <red, fad> si' <red, fad> si' <red, fad> si' <red,
  fad>32 si' <red, fad> si' <red, fad> si' | % 89
  <red, fad>32 si' <red, fad> si' <red, fad> si' <red, fad>
  si'32 si,, ~ <si si''> ~ <si red' fad> ~ <si si''> <red'
  fad>32 si' <red, fad> si' <red, fad> si' <red, fad>
  si'32 <red, fad> si' <red, fad> si' <red, fad> si' <red,
  fad>32 si' <red, fad> si' <red, fad> si' |
  \barNumberCheck #90
  <la,, la'>32 ~ ~ <la la' si'> ~ ~ <la la' red fad> ~ ~ <la la'
  si'>32 <red' fad> si' <red, fad> si' <red, fad> si'
  <red, fad>32 si' <red, fad> si' <red, fad> si' <red, fad>
  si'32 <red, fad> si' <red, fad> si' <red, fad> si' red,
  fad32 red fad red fad red fad | % 91
  la,32 ~ <la fad'> ~ <la red> ~ <la fad'> ~ <la red> ~ <la
  fad'>32 ~ <la red> ~ <la fad'> ~ <la red> ~ <la fad'> ~
  <la red>32 ~ <la fad'> ~ <la red> ~ <la fad'> ~ <la red> ~
  <la fad'>32 ~ <la red> ~ <la sol'> ~ <la red> ~ <la sol'> ~
  <la red>32 ~ <la sol'> ~ <la red> ~ <la sol'> ~ <la red> ~
  <la fad'>32 ~ <la red> ~ <la fad'> ~ <la red> ~ <la fad'> ~
  <la red>32 ~ <la fad'> | % 92
  sold32 ~ <sold si'> ~ <sold re' mi> ~ <sold si'> ~ <sold re'
  mi>32 ~ <sold si'> ~ <sold re' mi> ~ <sold si'> ~ <sold
  re' mi>32 ~ <sold si'> ~ <sold re' mi> ~ <sold si'> <re'
  mi>32 si' <re, mi> si' <re, mi> si' <re, mi> si'
  <re, mi>32 si' <re, mi> si' <re, mi> si' <re, mi> si'
  <re, mi>32 si' <re, mi> si' | % 93
  <re, mi>32 si' <re, mi> si' <re, mi> si' <re, mi> si'
  sold,8 -. sold -. <re' mi>32 si' <re, mi> si' <re, mi> si'
  <re, mi>32 si' <re, mi> si' <re, mi> si' <re, mi> si'
  <re, mi>32 si' | % 94
  <re, fa sold>32 si' <re, fa sold> si' <re, fa sold> si'
  <re, fa sold>32 si' <re, fa sold> si' <re, fa sold> si'
  <re, fa sold>32 si' <re, fa sold> si' <re, fa sold> si'
  <re, fa sold>32 si' <re, fa sold> si' <re, fa sold> si'
  <mi, sold do>4 | % 95
  <fa sold do>32 re' <fa, sold do> re' <fa, sold do> re'
  <fa, sold do>32 re' <fa, sold do> re' <fa, sold do> re'
  <fa, sold do>32 re' <fa, sold do> re' <fa, sold si> re'
  <fa, sold si>32 re' <fa, sold si> re' <fa, sold si> re'
  <sol,, sol'>8 <fa fa'> | % 96
  <mi mi'>4 r r8 do''16 -. sol -. mi8 -. sol -. | % 97
  mi4 -. r r8 do'16 -. sol -. mi16. -. sol32 ~ sol r r16 | % 98
  <mi, mi'>4 -. r r2 | % 99
  R1 | \barNumberCheck #100
  r16 <do' mi> <do mi> <si red> <do mi>8 -. <do mi> -. \once
  \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <do mi>8 <do mi> mi
  }

  mi16 mi mi la | % 101
  la4 -. r r2 | % 102
  r16 la -. la -. la -. \clef "treble" la8 -. dod -. \once
  \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod mi
  }

  r4 | % 103
  R1*8 | % 111
  \clef "bass" <si,, si'>4 -. <re re'> -. <si si'> -. <re re'> -. | % 112
  <si si'>4 -. <re re'> -. <si si'> -. <re re'> -. | % 113
  <si si'>4 -. <re re'> -. <si si'> -. <re re'> -. | % 114
  <si si'>4 -. <re re'> -. <si si'> -. <re re'> -. | % 115
  do''4 -. r r2 | % 116
  <lad, sol'>2 <la fa' la> | % 117
  do'4 -. r r2 | % 118
  <lad, sol'>2 <la fa' la> | % 119
  si'4 -. r r2 | \barNumberCheck #120
  red,4 r r2 | % 121
  <sol, fad' lad>4 <mi' dod'> dod'8 si fad'4 | % 122
  <sol,, fad' lad>4 <mi' dod'> dod'8 si \clef "treble" fad'4 | % 123
  red,8 <do' fad> mi, <do' sol'> \clef "bass" red, <do' fad> mi,
  <do' sol'>8 | % 124
  fa,8 \clef "treble" <re' sold> sold, <re' fa> fa, <re' sold>
  sold,8 <re' fa> | % 125
  <fad, fad'>4 -. r r2 | % 126
  r8 r16 \clef "bass" <fa fa'> <mi mi'>8. -. <re re'>16 <dod dod'>8.
  -. <si si'>16 <la la'>8. -. <sol sol'>16 | % 127
  r4 <mi' lad> -. r2 | % 128
  <fad, fad'>8 lad'16 si \clef "treble" do dod re red mi
  fa16 fad sol r4 | % 129
  \clef "bass" si,8 si, r4 r2 | \barNumberCheck #130
  sol'8 sol, r4 r2 | % 131
  si'8 si, r4 r2 | % 132
  sol'8 sol, r4 r2 | % 133
  <mi mi'>4 -. r r2 | % 134
  R1*3 | % 137
  <mi' si'>1 ~ ~ | % 138
  <mi si'>4 r r2 | % 139
  la,2. ~ <la la'>4 ~ | \barNumberCheck #140
  <la sol'>4 ~ <la la'> ~ ~ <la re fa la> ~ <la dod mi sol> | % 141
  <re, re' fad la>2 <sol re' si'> | % 142
  <fad mi' la>1 | % 143
  la'1 | % 144
  r4 <si, re'> dod' r | % 145
  la4 lad2 r4 | % 146
  <re, re'>1 | % 147
  <mi la dod>2 r | % 148
  <la,, la'>2. r4 | % 149
  \clef "treble" <sol'' si re>16 mi' <sol, si re> mi' <sol, si
  re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol, si
  re>16 mi' <sol, si re> mi' <sol, si re> mi' |
  \barNumberCheck #150
  <sol, si re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol,
  si re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol,
  si re>16 mi' <sol, si re> mi' | % 151
  <sol, si re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol,
  si re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol,
  si re>16 mi' <sol, si re> mi' | % 152
  \clef "bass" <fad, sol si>16 mi' <fad, sol si> mi' <fad, sol
  si>16 mi' <fad, sol si> mi' <fad, sol si> mi' <fad,
  sol si>16 \clef "treble" mi' <sol, si re> mi' <sol, si re>
  mi'16 | % 153
  <sol, si re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol,
  si re>16 mi' <sol, si re> mi' <sol, si re> mi' <sol,
  si re>16 mi' <sol, si re> mi' | % 154
  <sol, la dod>16 mi' <sol, la dod> mi' <sol, la dod> mi'
  <sol, la dod>16 mi' <sol, la dod> mi' <sol, la dod> mi'
  <sol, la dod>16 mi' <sol, la dod> mi' | % 155
  r8 \clef "bass" fad,, -. la -. dod -. fad,4 r8 fad | % 156
  r8 sold -. si -. re -. sold,4 r8 sold | % 157
  r8 la -. re -. fad -. la,4 r8 la | % 158
  <re la'>4 r r2 | % 159
  R1*10 | % 169
  <lad' dod>4 <sold si> <fad lad> <sold si> | \barNumberCheck #170
  <fad lad>4 <fa sold> <red fad> <fa sold> | % 171
  dod8 <dod' mi> r4 re,8 \clef "treble" <re' fad> r4 | % 172
  \clef "bass" red,8 -. <red' fad> -. r4 mi,8 -. \clef "treble" <mi'
  sol>8 -. r4 | % 173
  \clef "bass" <fad,, fad'>4 -. \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    fad'8 sol fad
  }

  fad4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad8 sol fad
  }

  | % 174
  <sol, sol'>4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol'8 sold sol
  }

  sol4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    sol8 sold sol
  }

  | % 175
  <sold, sold'>4 -. si'8 lad si lad si lad | % 176
  si4 -. r r2 | % 177
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la,8 <la re fad> <la re fad>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <la re fad>8 <re fad la> <re fad la>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re fad la>8 <fad la re> <fad la re>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <fad la re>8 \clef "treble" <la re fad> <la re fad>
  }

  | % 178
  <la dod fad>2 \clef "bass" r | % 179
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <fad la re>8 <la, re fad> <la re fad>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <la re fad>8 <re fad la> <re fad la>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re fad la>8 <fad la> <fad la>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <fad la>8 la la
  }

  | \barNumberCheck #180
  <la dod fad>2 r | % 181
  r8 <red,, red'> r <mi fad'> r <red red'> r <mi mi'> | % 182
  r8 <dod dod'> r <re re'> r <dod dod'> r <re re'> | % 183
  r8 <red red'> r <mi mi'> r <fa fa'> r <fad fad'> | % 184
  <sol lad mi' sol>4 -. r r2 | % 185
  r4 <sold lad re fa>2. | % 186
  <fad lad red fad>4 -. <fad' lad> -. <fad si> -. <fad la do> -. | % 187
  <mi sol dod>4 -. r r2 | % 188
  r8 <mi sol la mi'> r4 r2 | % 189
  r8 <mi sol la mi'> r4 r2 | \barNumberCheck #190
  r8 <mi sol lad mi'> r4 r8 <mi sol lad mi'> r4 | % 191
  <la,, la'>4 -. r r2 | % 192
  r2 r4 r8 <la' la'> | % 193
  re'1 | % 194
  red1 | % 195
  mi1 | % 196
  <re, sol lad>4 re,,32 re' re, re' re, re' re, re' re,
  re'32 re, re' re, re' re, re' re, re' re, re'
  re,32 re' re, re' | % 197
  <re' fad la>4 re,,32 re' re, re' re, re' re, re' re,
  re'32 re, re' re, re' re, re' re, re' re, re'
  re,32 re' re, re' | % 198
  <re' la'>4 re,,32 re' re, re' re, re' re, re' re,
  re'32 re, re' re, re' re, re' re, re' re, re'
  re,32 re' re, re' | % 199
  <re' sold si>4 re,,32 re' re, re' re, re' re, re' re,
  re'32 re, re' re, re' re, re' re, re' re, re'
  re,32 re' re, re' | \barNumberCheck #200
  <re' mi sol lad dod>4 re,,32 re' re, re' re, re' re, re'
  re,32 re' re, re' re, re' re, re' re, re' re,
  re'32 re, re' re, re' | % 201
  re32 la' re, la' re, la' re, la' re, la' re, la'
  re,32 la' re, la' re, la' re, la' re, la' re,
  la'32 re, la' re, la' re, la' re, la' | % 202
  re,32 la' re, la' re, la' re, la' re, la' re,
  la'32 re, la' re, la' re, la' re, la' re, la'
  re,32 la' re, la' re, la' re, la' re, la' | % 203
  r2 r4 r8 la' ~ | % 204
  la8 r r4 r2 | % 205
  re,,32 ~ <re re''> ~ <re re'> ~ <re re''> ~ <re re'> ~ <re
  re''>32 ~ <re re'> ~ <re re''> ~ <re re'> ~ <re re''> ~
  <re re'>32 ~ <re re''> re' re' re, re' re, re' re,
  re'32 re, re' re, re' re, re' re, re' re, re'
  re,32 re' | % 206
  re,32 re' re, re' re, re' re, re' re, re' re,
  re'32 re, re' re, re' re, re' re, re' re, re'
  re,32 re' re, re' re, re' re, re' re, re' | % 207
  re,32 re' re, re' re, re' re, re' re, re' re,
  re'32 re, re' re, re' re, re' re, re' re, re'
  re,32 re' re, re' re, re' re, re' re, re' | % 208
  re,32 re' re, re' re, re' re, re' re, re' re,
  re'32 re, re' re, re' re, re' re, re' re, re'
  re,32 re' re, re' re, re' re, re' re, re' | % 209
  <sold,,, sold' fa' do' re>1 | \barNumberCheck #210
  <fa'' do' re>8 ~ ~ ~ <lad, fa' do' re>16 ~ ~ ~ <do fa do' re> ~ ~
  ~ <sold fa' do' re>8 ~ ~ ~ <sol fa' do' re>16 ~ ~ ~ <fa fa' do' re>
  ~ ~ ~ <sold fa' do' re>8 ~ ~ ~ <lad fa' do' re>16 ~ ~ ~ <do fa do'
  re>16 ~ ~ ~ <sold fa' do' re>8 ~ ~ ~ <sol fa' do' re>16 ~ ~ ~
  <fa fa' do' re>16 | % 211
  <sol fa' si re>8 sold'16 sold sold8 si si -. \clef "treble" re
  -. re8 -. fa -. | % 212
  do16 red do red do red do red do red do red do
  red16 do red | % 213
  \clef "bass" fad,,8 la16 la la8 -. do -. do -. red -. red -.
  fad8 -. | % 214
  sol4 -. r r2 | % 215
  r8 mi, sol lad mi' sol lad4 -. | % 216
  r8 mi, sol lad mi' sol lad4 -. | % 217
  <red,, red'>8 <sol' dod>16 red <sol dod> red <sol dod> red
  <sol dod>16 red <sol dod> red <sol dod> red <sol dod>
  red16 | % 218
  red1 ~ | % 219
  red8 r r4 r2 | \barNumberCheck #220
  red,16 ~ <red si'> ~ <red sold> ~ <red si'> ~ <red sold> ~
  <red si'>16 ~ <red sold> ~ <red si'> ~ <red sold> ~ <red si'>
  ~ <red sold>16 ~ <red si'> ~ <red sold> ~ <red si'> ~ <red
  sold>16 si' | % 221
  <red, sol>16 lad' sol lad red sol red sol red4 ~ <si
  red>4 | % 222
  sol'16 lad sol lad sol lad sol lad red,4 ~ <si red> | % 223
  sol'4 fad sol fad | % 224
  <red sol>1 | % 225
  <sold si>32 \clef "treble" red' <sold, si> red' <sold, si>
  red'32 \clef "bass" <sold, si> red' <sold, si> red' <sold,
  si>32 \clef "treble" red' <sold, si> red' <sold, si>
  red'32 \clef "bass" <sold, si> red' <sold, si> red' <sold,
  si>32 \clef "treble" red' <sold, si> red' <sold, si>
  red'32 \clef "bass" <sold, si> red' <sold, si> red' <sold,
  si>32 \clef "treble" red' | % 226
  <sold, si>32 red' <sold, si> red' \clef "bass" <sold, si>
  red'32 <sold, si> red' <sold, si> \clef "treble" red' <sold,
  si>32 red' <sold, si> red' \clef "bass" <sold, si> red'
  <sold, si>32 red' <sold, si> \clef "treble" red' <sold, si>
  red'32 <sold, si> red' \clef "bass" <sold, si> red' <sold,
  si>32 red' <sold, si> \clef "treble" red' <sold, si>
  red'32 | % 227
  <sold, si>32 red' \clef "bass" <sold, si> red' <sold, si>
  red'32 <sold, si> \clef "treble" red' <sold, si> red' <sold,
  si>32 red' \clef "bass" <sold, si> red' <sold, si> red'
  <sold, si>32 \clef "treble" red' <sold, si> red' <sold, si>
  red'32 \clef "bass" <sold, si> red' <red, si'> red' <red,
  si'>32 red' <red, si'> red' <red, si'> \clef "treble"
  red'32 | % 228
  <sold, si>32 red' <sold, si> red' \clef "bass" <sold, si>
  red'32 <sold, si> red' <sold, si> \clef "treble" red' <sold,
  si>32 red' <sold, si> red' \clef "bass" <sold, si> red'
  <sold, si>32 red' <sold, si> \clef "treble" red' <sold, si>
  red'32 <sold, si> red' \clef "bass" <sold, si> red' <sold,
  si>32 red' <sold, si> red' <sold, si> red' | % 229
  <fa, sold si>32 re' <fa, sold si> re' <fa, sold si> re'
  <fa, sold si>32 re' <fa, sold si> re' <fa, sold si> re'
  <fa, sold si>32 re' <fa, sold si> re' <fa, sold si> re'
  <fa, sold si>32 re' <fa, sold si> re' <fa, sold si> re'
  <fa, sold si>32 re' <fa, sold si> re' <fa, sold si> re'
  <fa, sold si>32 \clef "treble" re' | \barNumberCheck #230
  <sold, do>32 re' <sold, do> re' <sold, do> re' <sold, do>
  re'32 <sold, do> re' <sold, do> re' <sold, do> re'
  <sold, do>32 re' <sold, do> re' <sold, do> re' <sold, do>
  re'32 <sold, do> re' <sold, do> re' <sold, do> re'
  <sold, do>32 re' <sold, do> re' | % 231
  \clef "bass" <red, sol>32 dod' <red, sol> dod' <red, sol>
  dod'32 <red, sol> dod' <red, sol> dod' <red, sol> dod'
  <red, sol>32 dod' <red, sol> dod' <red, sol> dod' <red,
  sol>32 dod' <red, sol> dod' <red, sol> dod' <red, sol>
  dod'32 <red, sol> dod' <red, sol> dod' <red, sol> dod' | % 232
  <red, sol>32 dod' <red, sol> dod' <red, sol> dod' <red,
  sol>32 dod' <red, sol> dod' <red, sol> dod' <red, sol>
  dod'32 <red, sol> \clef "treble" dod' <sol lad> dod <sol
  lad>32 dod \clef "bass" <sol lad> dod <sol lad> dod
  <sol lad>32 \clef "treble" dod <sol lad> dod <sol lad> dod
  \clef "bass" <sol lad>32 dod | % 233
  <sold si>32 red' <sold, si> \clef "treble" red' <sold, si>
  red'32 <sold, si> red' \clef "bass" <sold, si> red' <sold,
  si>32 red' <sold, si> \clef "treble" red' <sold, si>
  red'32 <sold, si> red' \clef "bass" <sold, si> red' <sold,
  si>32 red' <sold, si> \clef "treble" red' <sold, si>
  red'32 <sold, si> red' \clef "bass" <sold, si> red' <sold,
  si>32 red' | % 234
  <sold, si>32 \clef "treble" red' <sold, si> red' <sold, si>
  red'32 \clef "bass" <sold, si> red' <sold, si> red' <sold,
  si>32 \clef "treble" red' <sold, si> red' <sold, si>
  red'32 \clef "bass" <sold, si> red' <sold, si> red' <sold,
  si>32 \clef "treble" red' <sold, si> red' <sold, si>
  red'32 \clef "bass" <sold, si> red' <sold, si> red' <sold,
  si>32 red' | % 235
  <mi, sold>32 red' <mi, sold> red' <mi, sold> red' <mi,
  sold>32 red' <mi, sold> red' <mi, sold> red' <mi,
  sold>32 red' <mi, sold> red' <mi, sold> dod' <mi,
  sold>32 dod' <mi, sold> dod' <mi, sold> dod' <mi,
  sold>32 dod' <mi, sold> dod' <mi, sold> dod' <mi,
  sold>32 dod' | % 236
  <mi, sold>32 dod' <mi, sold> dod' <mi, sold> dod' <mi,
  sold>32 dod' <mi, sold> dod' <mi, sold> dod' <mi,
  sold>32 dod' <mi, sold> dod' <mi, sold> dod' <mi,
  sold>32 dod' <mi, sold> dod' <mi, sold> dod' <mi,
  sold>32 dod' <mi, sold> dod' <mi, sold> dod' <mi,
  sold>32 dod' | % 237
  <red, sold si>32 red' <red, sold si> red' <red, sold si>
  red'32 <red, sold si> red' <red, sold si> red' <red, sold
  si>32 red' <red, sold si> red' <red, sold si> \clef
  "treble" red'32 <sold, si> red' <sold, si> red' \clef "bass"
  <sold, si>32 red' <sold, si> red' <sold, si> \clef "treble"
  red'32 <sold, si> red' <sold, si> red' \clef "bass" <sold,
  si>32 red' | % 238
  sol,32 dod sol \clef "treble" dod sol dod sol dod
  \clef "bass" sol32 dod sol dod sol \clef "treble" dod sol
  dod32 sol dod \clef "bass" sol dod sol dod sol \clef
  "treble" dod32 sol dod sol dod \clef "bass" sol dod sol
  dod32 | % 239
  si32 red si red si red si red si red si red si
  red32 si red si red si red si red si red si
  red32 si red si red si red | \barNumberCheck #240
  si32 \clef "treble" red si red si red \clef "bass" si
  red32 si red si \clef "treble" red si red si red
  \clef "bass" si32 red si red si \clef "treble" red si
  red32 si red \clef "bass" si red si red si red | % 241
  <sold,, sold'>4 -. \clef "treble" <si' sold'> -. <sold si> -. <si
  sold'>4 -. | % 242
  \clef "bass" <sol, sol'>4 -. <lad' dod> -. <sol lad> -. <lad dod>
  -. | % 243
  <sold, sold'>4 -. \clef "treble" <si' sold'> -. <sold si> -. <si
  sold'>4 -. | % 244
  \clef "bass" <mi,, mi'>4 -. <mi' sol> -. mi -. <mi sol> -. | % 245
  <red, red'>4 -. <sold' si> -. <red sold> -. <sold si> -. | % 246
  <red, red'>4 -. <sol' dod> -. <red sol> -. <lad' dod>8 red, | % 247
  sold,4 -. <si' red> -. <sold si> -. <si red> -. | % 248
  <sold si>1 | % 249
  sold8 -. red' -. sold,4 -. sold8 -. red' -. sold,4 -. |
  \barNumberCheck #250
  sol8 -. dod -. sol4 -. sol8 -. dod -. sol4 -. | % 251
  R1*6 | % 257
  <fad dod' mi>4 -. fad,,32 fad' fad, fad' fad, fad' fad,
  fad'32 fad, fad' fad, fad' fad, fad' fad, fad' fad,
  fad'32 fad, fad' fad, fad' fad, fad' | % 258
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' | % 259
  <mi' lad>1 ~ ~ | \barNumberCheck #260
  <mi lad>2 r | % 261
  fad,,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' | % 262
  <fad, fad'>8 <lad' dod> -. <si re> -. <lad dod> -. <re fa si> -.
  <dod fad lad>8 -. <fa sold si> -. <fad,, fad'' lad>16 fad' | % 263
  fad,8 <fad'' lad dod> <fa si re> <fad lad dod> r2 | % 264
  fad,,4 -. fad'''8 fad,,16 fad' fad,4 -. fad''8 fad,,16 fad' | % 265
  fad,4 -. \clef "treble" fa''8 fad -. fa fad -. fa fad -. | % 266
  \clef "bass" <fad,, fad'>4 -. r r2 | % 267
  R1 | % 268
  <si, si'>16 red' fad si si fad red si <mi, mi'> si'
  mi16 sold si sold mi si | % 269
  <si, si'>16 red' fad si si fad red si <si, si'> red'
  fad16 si si fad red si | \barNumberCheck #270
  fad16 lad dod fad fad dod lad fad <si, fad'> si'
  red16 fad fad red si fad | % 271
  fad16 dod' fad lad lad fad dod fad, fad la dod
  fad16 fad,4 -. | % 272
  <si red fad si>2 <mi, mi' sold si> | % 273
  <red si' fad' si>2. <sold si si' red>4 | % 274
  fad''4 dod <dod, fa si dod>2 | % 275
  <fad, lad' dod>4 ~ ~ ~ <fad fad' lad dod> ~ ~ <fad lad' dod>2 | % 276
  <mi' sold si>16 dod' <mi, sold si> dod' <mi, sold si> dod'
  <mi, sold si>16 dod' <mi, sold si> dod' <mi, sold si> dod'
  <mi, sold si>16 dod' <mi, sold si> dod' | % 277
  <mi, sold si>16 dod' <mi, sold si> dod' <mi, sold si> dod'
  <mi, sold si>16 dod' <mi, sold si> dod' <mi, sold si> dod'
  <mi, sold si>16 dod' <mi, sold si> dod' | % 278
  <mi, sold si>16 dod' <mi, sold si> dod' <mi, sold si> dod'
  <mi, sold si>16 dod' <mi, sold si> dod' <mi, sold si> dod'
  <mi, sold si>16 dod' <mi, sold si> dod' | % 279
  <mi, fad lad>16 dod' <mi, fad lad> dod' <mi, fad lad> dod'
  <mi, fad lad>16 dod' <mi, fad lad> dod' <mi, fad lad> dod'
  <mi, fad lad>16 dod' <mi, fad lad> dod' | \barNumberCheck #280
  <mi, sold si>16 dod' <mi, sold si> dod' <mi, sold si> dod'
  <mi, sold si>16 dod' <mi, sold si> dod' <mi, sold si> dod'
  <mi, sold si>16 dod' <mi, sold si> dod' | % 281
  <mi, fad lad>16 dod' <mi, fad lad> dod' <mi, fad lad> dod'
  <mi, fad lad>16 dod' <mi, fad lad> dod' <mi, fad lad> dod'
  <mi, fad lad>16 dod' <mi, fad lad> dod' | % 282
  r8 red,, -. fad -. lad -. red,4 -. r8 red | % 283
  r8 fa sold si fa4 -. fa -. | % 284
  r8 fad si red fad,4 r8 fad | % 285
  <si fad'>2 r | % 286
  R1 | % 287
  lad'8 dod sol lad sol lad sol lad | % 288
  R1 | % 289
  lad8 dod sol lad sol lad sol lad | \barNumberCheck #290
  R1*2 | % 292
  sold8 si la dod sold si la dod | % 293
  sold8 si la \clef "treble" dod la dod la red | % 294
  R1*2 | % 296
  \clef "bass" <red, sol>4 <re fa> <do red> re | % 297
  <red sol>4 <re fa> <do red> <re fad> | % 298
  lad8 -. <lad' dod> -. r4 si,8 -. <si' red> -. r4 | % 299
  do,8 <do' red> r4 dod,8 <dod' mi> r4 | \barNumberCheck #300
  <red,, red'>4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re' fad>8 <mi fad> <re fad>
  }

  <re fad>4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re fad>8 <mi fad> <re fad>
  }

  | % 301
  <mi, mi'>4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <mi' sol>8 <fad sol> <mi sol>
  }

  <mi sol>4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <mi sol>8 <fad sol> <mi sol>
  }

  | % 302
  <fa, fa'>4 -. sold'8 -. sol -. sold -. sol -. sold -. sol -. | % 303
  sold4 -. r r2 | % 304
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fad,8 <si red> <si red>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <si red>8 <si red fad> <si red fad>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <si red fad>8 <red fad> <red fad>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <red fad>8 <fad si> <fad si>
  }

  | % 305
  <fad lad red>2 r | % 306
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <red fad si>8 <fad, si red> <fad si red>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <fad si red>8 <si red fad> <si red fad>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <si red fad>8 <red fad si> <red fad si>
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <red fad si>8 <fad si red> <fad si red>
  }

  | % 307
  <fad lad red>2 <mi fad lad> | % 308
  r8 do, -. dod -. dod' -. r do, -. dod -. dod' -. | % 309
  r8 lad, -. si -. si' -. r lad, -. si -. si' -. |
  \barNumberCheck #310
  r8 do, -. dod -. dod' -. r re, -. red -. red' -. | % 311
  <mi, mi'>4 -. r r2 | % 312
  r4 <fa si re>2 <fa' sol si re>4 | % 313
  <red sol red'>2 <red sold red'>4 <re la' re> | % 314
  <dod mi dod'>8 -. <dod mi dod'> -. r4 r2 | % 315
  r8 <dod fad dod'> r4 r2 | % 316
  r8 <dod fad dod'> r4 r2 | % 317
  r8 <dod sol' dod> r4 r8 <dod sol' dod> r4 | % 318
  <fad, fad'>4 -. r r2 | % 319
  r2 r4 r8 <fad fad'> | \barNumberCheck #320
  <si, fad' si>2 <si si'>4 <dod dod'> | % 321
  <red fad lad red>2 <sold si red sold> | % 322
  <sold si red sold>4 <fad lad dod fad> <red fad si red> <dod mi
  sold dod>4 | % 323
  <do fad la do>4 <do' red fad la> <dod mi sold> <fad, mi' lad> | % 324
  <si si'>4 -. r si -. r | % 325
  red4 -. r sold, -. r | % 326
  sold'4 -. fad -. red -. <dod mi> -. | % 327
  <si fad'>4 -. r r2 | % 328
  <mi, mi'>4 -. r r2 | % 329
  <fa fa'>4 -. r r fa'8 -. sold -. | \barNumberCheck #330
  <fad si red fad>4 -. fad,,32 fad' fad, fad' fad, fad' fad,
  fad'32 fad, fad' fad, fad' fad, fad' fad, fad' fad,
  fad'32 fad, fad' fad, fad' fad, fad' | % 331
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' | % 332
  fad,1 | % 333
  r4 <fad fad'>2. ~ ~ | % 334
  <fad fad'>1 | % 335
  R1*2 | % 337
  <fa' si re fa>4. <fa si re fa>8 <sold re' fa sold>4 <si re fa sold
  si>8 -. <fa fa'> -. | % 338
  <fad fad'>4 -. r r2 | % 339
  <fad dod' mi lad>4 r r <fad dod' mi lad> | \barNumberCheck #340
  R1*2 | % 342
  r2 r4 r8 <fad fad'> | % 343
  <si re fad si>4. <dod dod'>16 <re red'> <si si'>2 | % 344
  <lad red fad lad>4. <sol sol'>16 <fad fad'> <lad lad'>2 | % 345
  <sold si red sold>4. <lad lad'>16 <si si'> <sold sold'>4 <fad
  fad'>4 | % 346
  <mi sold si mi>2 r | % 347
  r4 <si' red fad> si'2 | % 348
  r2 r64 r128 sold ~ sold16. r8 r4 | % 349
  <si,, fad' si>4 r <si fad' si> r | \barNumberCheck #350
  <si fad' si>4 r <si fad' si> r | % 351
  <si si'>4 r r2 | % 352
  r4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <si' red fad si>8 <si red fad si> <si red fad si>
  }

  <si red fad si>4 -. <si red fad si> -. | % 353
  <si red fad si>2 <si, fad' si red fad si>4. <si fad' si red fad si>8
  | % 354
  <si fad' red' fad si>32 <si' red'> <si, fad' red' fad si> <si'
  red'>32 <si, fad' red' fad si> <si' red'> <si, fad' red' fad
  si>32 <si' red'> <si, fad' red' fad si> <si' red'> <si,
  fad' red' fad si>32 <si' red'> <si, fad' red' fad si> <si'
  red'>32 <si, fad' red' fad si> <si' red'> <si, fad' red' fad
  si>32 <si' red'> <si, fad' red' fad si> <si' red'> <si,
  fad' red' fad si>32 <si' red'> <si, fad' red' fad si> <si'
  red'>32 <si, fad' red' fad si> <si' red'> <si, fad' red' fad
  si>32 <si' red'> <si, fad' red' fad si> <si' red'> <si,
  fad' red' fad si>32 <si' red'> | % 355
  <si, si' si'>4 r r2
}


PartPFourVoiceThree =  \relative dod {
  \clef "bass" \key re \major \numericTimeSignature\time 4/4 s1*5 s1*3
  s1*4 s1*2 s s2 \clef "treble" s1. s1 | \barNumberCheck #20
  \clef "bass" s1 s | % 22
  r128 dod64. ~ dod16. r8 r4 r2 s1*3 s1 | % 27
  si4 -. si -. si -. si -. s1*3 s1*2 s1 | % 34
  fad4 -. r r2 s1 s s1*2 s s s s1 s s | % 48
  mi'1 ~ | % 49
  mi1 s1*5 s1*7 s1*4 | % 66
  \clef "treble" s1*2 s1 | % 69
  \clef "bass" s16*5 \clef "treble" s16*27 | % 71
  \clef "bass" s16*5 \clef "treble" s \clef "bass" s4. s16*9 \clef
  "treble" s16*7 s1 s s | % 76
  \clef "bass" s1 s1*3 s s1*4 s1 s s s s s s s s s1*2 s
  s1*2 s4 \clef "treble" s4*7 s1 s s s s s s | % 111
  \clef "bass" s1*2 s s s s s4*7 \clef "treble" s4 s2
  \clef "bass" s8*5 \clef "treble" s8*7 s1 s8. \clef "bass" s16*13 s1
  s4 \clef "treble" s2. | % 129
  \clef "bass" s1*3 s s1*6 s1*4 | % 145
  r2 <sol, re'> s1 s1*2 | % 149
  \clef "treble" s1 s1*2 | % 152
  \clef "bass" s16*11 \clef "treble" s16*5 s1 s s8 \clef "bass" s8*15
  s1*2 s1 s s s s s s s s1*2 s s8*5 \clef "treble" s4. | % 172
  \clef "bass" s8*5 \clef "treble" s4. | % 173
  \clef "bass" s1 s s1*2 s1 \clef "treble" s1 \clef "bass"
  s4*7 s1*2 s s1 s s s1*2 s s s1 s s s s s s s s s
  | % 203
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re la'>8 ~ <re la'> ~ <re la'> ~
  }

  la'2. ~ | % 204
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re, la'>8 ~ <re la'> ~ <re la'> ~
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re la'>8 ~ <re la'> ~ <re la'> ~
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re la'>8 ~ <re la'> ~ <re la'> ~
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <re la'>8 ~ <re la'> re
  }

  s1 s s s1*2 s8*13 \clef "treble" s4. s1 | % 213
  \clef "bass" s1 s s1*2 s s1 s s1*2 s s32 \clef "treble"
  s32*5 \clef "bass" s \clef "treble" s \clef "bass" s
  \clef "treble" s32*5 \clef "bass" s \clef "treble" s32 s8 \clef
  "bass" s32*5 \clef "treble" s \clef "bass" s \clef "treble"
  s32*5 \clef "bass" s \clef "treble" s16. s16 \clef "bass" s32*5
  \clef "treble" s32*5 \clef "bass" s \clef "treble" s \clef
  "bass" s32*9 \clef "treble" s32 s8 \clef "bass" s32*5 \clef "treble"
  s32*5 \clef "bass" s \clef "treble" s \clef "bass" s4 s32*31
  \clef "treble" s32 s1 | % 231
  \clef "bass" s1 s32*15 \clef "treble" s32*5 \clef "bass" s \clef
  "treble" s32*5 \clef "bass" s16 s16. \clef "treble" s32*5 \clef
  "bass" s32*5 \clef "treble" s \clef "bass" s \clef "treble"
  s32*5 \clef "bass" s8 s32 \clef "treble" s32*5 \clef "bass" s
  \clef "treble" s32*5 \clef "bass" s \clef "treble" s \clef
  "bass" s8. s1 s s32*15 \clef "treble" s32*5 \clef "bass" s
  \clef "treble" s32*5 \clef "bass" s16 s16. \clef "treble" s32*5
  \clef "bass" s32*5 \clef "treble" s \clef "bass" s \clef
  "treble" s32*5 \clef "bass" s8 s1 s32 \clef "treble" s32*5 \clef
  "bass" s32*5 \clef "treble" s \clef "bass" s \clef "treble"
  s32*5 \clef "bass" s8. s4 \clef "treble" s2. | % 242
  \clef "bass" s1 s4 \clef "treble" s2. | % 244
  \clef "bass" s1*2 s1 s s s s s s s s s s s s s s s
  s1*2 s1 s4 \clef "treble" s2. | % 266
  \clef "bass" s1 s s1*2 s1*3 s1*4 s1*2 s s1 s1*2 s s1 s s s
  s1 s s s4. \clef "treble" s8*5 s1*2 | % 296
  \clef "bass" s1*2 s1 s s1*2 s s s s s s1*3 s1*2 s
  s1*3 s1 s s s s s s s s s s s s s s1*2 s1 s s s s
  s1 s s s s | % 348
  r2 r128 red'64. ~ red16. r8 r4 s1 s1*4 s1
}


PartPFourVoiceTwo =  \relative si, {
  \clef "bass" \key re \major \numericTimeSignature\time 4/4 s1 | % 2
  <si re fad>4 r si'2 | % 3
  <si, re fad>4 -. <si dod mi>8 la'16 fad <si, re fad>4 -. r s1*2 | % 6
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' s1*2 s1*3 | % 12
  la4 -. fad2. | % 13
  fad4 fad2. ~ | % 14
  fad2. fad4 | % 15
  fad2. fad4 s1 s2 \clef "treble" <mi'' fad,>4 r s1 s |
  \barNumberCheck #20
  \clef "bass" s1 s | % 22
  r64 r128 mi, ~ mi16. r8 r4 r2 s1*3 | % 26
  <si re fad si>4 r <si re fad>8. ~ ~ ~ <si re fad re'>16 <fad' fad'>8.
  <mi mi'>16 | % 27
  r128 fad64. ~ fad32 r16 r8 r128 fad64. ~ fad32 r16 r8 r2 s1*3 s1*2
  s1 | % 34
  r128 dod64. ~ dod16. r8 r4 r2 s1 s s1*2 s s1 | % 42
  r2 r4 r8 r32 mi16. -. s1*2 s1 s s | % 48
  r128 si'64. ~ si16. ~ si4. ~ si2 ~ | % 49
  si1 s1*2 | % 52
  la,1 | % 53
  <la la'>1 | % 54
  la1 ~ | % 55
  la1 | % 56
  la1 ~ | % 57
  la1 s1*3 | % 61
  r4 si r2 s1*3 | % 65
  mi4 r r2 | % 66
  \clef "treble" s1*2 s1 | % 69
  \clef "bass" s16*5 \clef "treble" s16*27 | % 71
  \clef "bass" s16*5 \clef "treble" s \clef "bass" s4. s16*9 \clef
  "treble" re4 fad2 | % 73
  sold2 sold s16*11 s1 | % 76
  \clef "bass" s1 s1*3 s s | % 86
  do,4 ~ <do sol'> ~ <do fad> ~ <do mi> | % 87
  <red fad>4 -. r r2 | % 88
  r4 <red fad> -. r2 | % 89
  r4 <red fad> -. r2 | \barNumberCheck #90
  <red fad>4 -. r r2 | % 91
  red4 -. r r2 | % 92
  <re mi>4 -. r r2 s1 s | % 95
  r4 sol, -. r2 s1*2 s s s4 \clef "treble" s4*7 s1 s s s s
  s1 s | % 111
  \clef "bass" s1*2 s | % 115
  <lad mi' sol>8 ~ ~ ~ <lad mi' sol re'> ~ ~ ~ <lad mi' sol do> ~ ~
  ~ <lad mi' sol re'>8 ~ ~ ~ <lad mi' sol do> ~ ~ ~ <lad mi' sol re'>
  ~ ~ ~ <lad mi' sol do>8 ~ ~ ~ <lad mi' sol re'> s1 | % 117
  <lad mi' sol>8 ~ ~ ~ <lad mi' sol re'> ~ ~ ~ <lad mi' sol do> ~ ~
  ~ <lad mi' sol re'>8 ~ ~ ~ <lad mi' sol do> ~ ~ ~ <lad mi' sol re'>
  ~ ~ ~ <lad mi' sol do>8 ~ ~ ~ <lad mi' sol re'> s1 | % 119
  <la red fad>8 ~ ~ ~ <la red fad dod'> ~ ~ ~ <la red fad si> ~ ~ ~
  <la red fad dod'>8 ~ ~ ~ <la red fad si> ~ ~ ~ <la red fad dod'> ~
  ~ ~ <la red fad si>8 ~ ~ ~ <la red fad dod'> | \barNumberCheck #120
  la4 ~ <la fad'> <sold mi' sold>2 | % 121
  r2 <re' fad> s2. \clef "treble" re2 fad \clef "bass" s4. \clef
  "treble" s8*7 s1 s8. \clef "bass" s16*13 | % 127
  <fad, fad'>4 -. <fad, fad'>8 ~ ~ <fad fad' sol'> ~ ~ <fad fad'
  lad'>4 ~ ~ <fad fad'> s \clef "treble" s2. | % 129
  \clef "bass" s1*3 s s1*4 | % 139
  mi''2. r4 | \barNumberCheck #140
  r4 <mi sol> r2 s1*2 | % 143
  <la, dod>2 <si re> | % 144
  <dod mi la>4 sol' ~ <la, sol'> ~ ~ <la sol' si> | % 145
  <re, re' fad>2 r4 si'' | % 146
  <fad, la'>2 <fa si'> | % 147
  mi2 ~ <mi re' sold si> s1 | % 149
  \clef "treble" s1 s1*2 | % 152
  \clef "bass" s16*11 \clef "treble" s16*5 s1 s s8 \clef "bass" s8*15
  s1*2 s1 s s s s s s s s1*2 | % 169
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod'8 dod dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  | \barNumberCheck #170
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  s8*5 \clef "treble" s4. | % 172
  \clef "bass" s8*5 \clef "treble" s4. | % 173
  \clef "bass" s1 s s1*2 s1 \clef "treble" s1 \clef "bass" r4
  -. <sol' la dod>2 s1 | \barNumberCheck #180
  r4 la, -. <sol' la dod>2 s1 s1*2 s1 s s s1*2 s s | % 193
  <re fad la>4 re,,32 re' re, re' re, re' re, re' re,
  re'32 re, re' re, re' re, re' re, re' re, re'
  re,32 re' re, re' | % 194
  <re' la' do>4 re,,32 re' re, re' re, re' re, re' re,
  re'32 re, re' re, re' re, re' re, re' re, re'
  re,32 re' re, re' | % 195
  <re' sold si>4 re,,32 re' re, re' re, re' re, re' re,
  re'32 re, re' re, re' re, re' re, re' re, re'
  re,32 re' re, re' s1 s s s s s s | % 203
  r4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 re re
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 re re
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    re8 re re
  }

  | % 204
  r8 sol'4 mi8 ~ mi dod4 la8 | % 205
  re4 -. r8 mi,16 fad re2 | % 206
  do4. lad16 la do2 | % 207
  <lad lad'>4. do'8 -. lad2 | % 208
  <sold, sold'>4. sol'16 fa sold2 s1 | \barNumberCheck #210
  sold4 -. r r2 s8*5 \clef "treble" s4. s1 | % 213
  \clef "bass" s1 s s1*2 s1 | % 218
  si'16 sold si sold si sold si sold si sold si
  sold16 si sold si sold | % 219
  <sol lad>8 <red, sol>16 dod' <red, sol> dod' <red, sol> dod'
  <red, sol>16 dod' <red, sol> dod' <red, sol> dod' <red,
  sol>16 dod' | \barNumberCheck #220
  sold4 -. r r2 | % 221
  r2 sold4 r | % 222
  <red red'>2 sold4 r | % 223
  red'1 s s32 \clef "treble" s32*5 \clef "bass" s \clef "treble"
  s32*5 \clef "bass" s \clef "treble" s \clef "bass" s
  \clef "treble" s32 s8 \clef "bass" s32*5 \clef "treble" s \clef
  "bass" s32*5 \clef "treble" s \clef "bass" s \clef "treble"
  s16. s16 \clef "bass" s32*5 \clef "treble" s \clef "bass" s
  \clef "treble" s32*5 \clef "bass" s32*9 \clef "treble" s32 s8 \clef
  "bass" s32*5 \clef "treble" s \clef "bass" s \clef "treble"
  s32*5 \clef "bass" s4 s32*31 \clef "treble" s32 s1 | % 231
  \clef "bass" s1 s32*15 \clef "treble" s32*5 \clef "bass" s \clef
  "treble" s32*5 \clef "bass" s16 s16. \clef "treble" s32*5 \clef
  "bass" s32*5 \clef "treble" s \clef "bass" s \clef "treble"
  s32*5 \clef "bass" s8 s32 \clef "treble" s32*5 \clef "bass" s
  \clef "treble" s32*5 \clef "bass" s \clef "treble" s \clef
  "bass" s8. s1 s s32*15 \clef "treble" s32*5 \clef "bass" s
  \clef "treble" s32*5 \clef "bass" s16 s16. \clef "treble" s32*5
  \clef "bass" s32*5 \clef "treble" s \clef "bass" s \clef
  "treble" s32*5 \clef "bass" red1 | % 239
  sold1 ~ \clef "treble" \clef "bass" \clef "treble" \clef "bass"
  \clef "treble" \clef "bass" sold1 \clef "treble" s8 | % 242
  \clef "bass" s1 s4 \clef "treble" s2. | % 244
  \clef "bass" s1*2 s1 s s s s s s s s s s s s | % 259
  fad,,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' | \barNumberCheck #260
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' fad, fad' fad, fad' fad, fad' fad, fad'
  fad,32 fad' s1 s1*2 s1 s4 \clef "treble" s2. | % 266
  \clef "bass" s1 s s1*2 s1*3 s1 | % 274
  <fad dod' lad'>2 r | % 275
  dod'4 -. r r2 s1 s1*2 s s1 s1*2 s s1 s s s s s s s4.
  \clef "treble" s8*5 s1*2 | % 296
  \clef "bass" lad2. lad4 ~ | % 297
  lad1 s s s1*2 s s1 | % 305
  r4 fad -. <mi' fad lad>2 s1 | % 307
  r4 fad, -. r fad8 -. fad -. s1*2 s s1*3 s1*2 s s1*3 s1 s
  s1 s s s s s s s s s s s s1*2 s1 s s s s s s s | % 346
  r4 <red red'> <dod dod'> <si si'> | % 347
  <si red fad si>4 si''8 dod16 red r4 <mi,, sol si mi> -. | % 348
  si''2 sold,4 -. r s1 s1*4 s1
}


PartPFourVoiceFour =  \relative fad, {
  \clef "bass" \key re \major \numericTimeSignature\time 4/4 s1*5 s1*3
  s1*4 s1*2 s s2 \clef "treble" s1. s1 | \barNumberCheck #20
  \clef "bass" s1 s | % 22
  fad4 -. r r2 s1*3 s1 s s1*3 s1*2 s1 s s s s1*2 s s s
  s1 s s s s s1*5 s1*7 s1*4 | % 66
  \clef "treble" s1*2 s1 | % 69
  \clef "bass" s16*5 \clef "treble" s16*27 | % 71
  \clef "bass" s16*5 \clef "treble" s \clef "bass" s4. s16*9 \clef
  "treble" s16*7 s1 s s | % 76
  \clef "bass" s1 s1*3 s s1*4 s1 s s s s s s s s s1*2 s
  s1*2 s4 \clef "treble" s4*7 s1 s s s s s s | % 111
  \clef "bass" s1*2 s s s s s4*7 \clef "treble" s4 s2
  \clef "bass" s8*5 \clef "treble" s8*7 s1 s8. \clef "bass" s16*13 s1
  s4 \clef "treble" s2. | % 129
  \clef "bass" s1*3 s s1*6 s s1*2 | % 149
  \clef "treble" s1 s1*2 | % 152
  \clef "bass" s16*11 \clef "treble" s16*5 s1 s s8 \clef "bass" s8*15
  s1*2 s1 s s s s s s s s1*2 s s8*5 \clef "treble" s4. | % 172
  \clef "bass" s8*5 \clef "treble" s4. | % 173
  \clef "bass" s1 s s1*2 s1 \clef "treble" s1 \clef "bass"
  s4*7 s1*2 s s1 s s s1*2 s s s1 s s s s s s s s s
  s1*2 s1 s s s1*2 s8*13 \clef "treble" s4. s1 | % 213
  \clef "bass" s1 s s1*2 s s1 s s1*2 s s32 \clef "treble"
  s32*5 \clef "bass" s \clef "treble" s \clef "bass" s
  \clef "treble" s32*5 \clef "bass" s \clef "treble" s32 s8 \clef
  "bass" s32*5 \clef "treble" s \clef "bass" s \clef "treble"
  s32*5 \clef "bass" s \clef "treble" s16. s16 \clef "bass" s32*5
  \clef "treble" s32*5 \clef "bass" s \clef "treble" s \clef
  "bass" s32*9 \clef "treble" s32 s8 \clef "bass" s32*5 \clef "treble"
  s32*5 \clef "bass" s \clef "treble" s \clef "bass" s4 s32*31
  \clef "treble" s32 s1 | % 231
  \clef "bass" s1 s32*15 \clef "treble" s32*5 \clef "bass" s \clef
  "treble" s32*5 \clef "bass" s16 s16. \clef "treble" s32*5 \clef
  "bass" s32*5 \clef "treble" s \clef "bass" s \clef "treble"
  s32*5 \clef "bass" s8 s32 \clef "treble" s32*5 \clef "bass" s
  \clef "treble" s32*5 \clef "bass" s \clef "treble" s \clef
  "bass" s8. s1 s s32*15 \clef "treble" s32*5 \clef "bass" s
  \clef "treble" s32*5 \clef "bass" s16 s16. \clef "treble" s32*5
  \clef "bass" s32*5 \clef "treble" s \clef "bass" s \clef
  "treble" s32*5 \clef "bass" s8 s1 s32 \clef "treble" s32*5 \clef
  "bass" s32*5 \clef "treble" s \clef "bass" s \clef "treble"
  s32*5 \clef "bass" s8. s4 \clef "treble" s2. | % 242
  \clef "bass" s1 s4 \clef "treble" s2. | % 244
  \clef "bass" s1*2 s1 s s s s s s s s s s s s s s s
  s1*2 s1 s4 \clef "treble" s2. | % 266
  \clef "bass" s1 s s1*2 s1*3 s1*4 s1*2 s s1 s1*2 s s1 s s s
  s1 s s s4. \clef "treble" s8*5 s1*2 | % 296
  \clef "bass" s1*2 s1 s s1*2 s s s s s s1*3 s1*2 s
  s1*3 s1 s s s s s s s s s s s s s s1*2 s1 s s s s
  s1 s s s s | % 348
  r4 <si, re fad si>8 dod''16 red r32 si16. r8 <mi,, sol si mi>4 -.
  s1 s1*4 s1
}


PartPFiveVoiceOne =  \relative lad' {
  \clef "treble" \key re \major \numericTimeSignature\time 4/4 R1*7 | % 8
  <lad dod>2 r | % 9
  R1*3 | % 12
  r4 dod,8. mi16 lad,8. dod16 sol8. \clef "bass" si16 | % 13
  lad4 -. dod8. mi16 lad,8. dod16 sol8. si16 | % 14
  lad4 -. \clef "treble" mi'8. sol16 dod,8. mi16 si8. mi16 | % 15
  lad,4 -. mi'8. sol16 dod,8. mi16 si8. mi16 | % 16
  lad,8. dod16 mi8. re16 mi8. mi16 sol8. fad16 | % 17
  <mi sol>4 -. lad8. si16 <dod mi>8. dod16 <fad, mi' sol>8. ~ ~ ~ <fad
  lad mi' sol>16 | % 18
  fad,8 -. fad'' -. fad -. <si,, si'>16 <dod dod'> r8 fad' -. fad
  -. fad8 -. | % 19
  r8 fad -. fad -. <sol,, sol'>16 <fad fad'> r8 fad'' -. fad -.
  fad8 -. | \barNumberCheck #20
  R1*4 | % 24
  si,4. dod16 re si2 | % 25
  si4. la16 -. fad -. si2 | % 26
  si8. re16 fad8. mi16 r4 r8 r16 dod | % 27
  si4 -. la -. <sol si> -. <fad si> -. | % 28
  mi'4. fad16 sol si,4. ~ <fad la si fad'>16 <sol si sol'> | % 29
  mi'4. re16 -. si -. si4. ~ <fad la si fad'>16 <sol si sol'> |
  \barNumberCheck #30
  <mi' si'>2 r | % 31
  <mi sol si>4 sol8. fad16 <mi sol>4 <mi sol> | % 32
  mi8. fad16 sol8. fad16 mi8. fad16 sol8. fad16 | % 33
  mi8. fad16 sol8. fad16 mi8. fad16 sol8. fad16 | % 34
  fad4 -. <fad, lad dod>8 -. <fad lad dod> -. r4 <sol si mi>8 -. <sol
  si mi>8 -. | % 35
  r4 <fad lad dod>8 -. <fad lad dod> -. r4 <dod mi si'>8 -. <dod mi
  si'>8 -. | % 36
  R1*6 | % 42
  lad4 r r2 | % 43
  R1 | % 44
  fad'8 sold4. ~ sold8 lad4. ~ | % 45
  lad8 si dod re fa,4. fad8 | % 46
  r8 fad4 sol16 lad fad2 | % 47
  \clef "bass" r32 \clef "treble" sold'16. -. r8 r4 r2 | % 48
  fad,4. la16 si sol2 | % 49
  sol4. mi16 re sol2 | \barNumberCheck #50
  <la, mi' sol>2 <fa' sold> | % 51
  fad4 sol2. | % 52
  dod,1 | % 53
  dod1 | % 54
  dod4 do dod do | % 55
  \clef "bass" lad4 si lad si | % 56
  sold4 sol sold r | % 57
  r2 r4 si | % 58
  la2 si | % 59
  la2 r | \barNumberCheck #60
  la1 | % 61
  la4 re dod si | % 62
  la4 la2 si4 -. | % 63
  la2 r4 si | % 64
  la4 r sold2 | % 65
  R1*3 | % 68
  r2 r4 \clef "treble" sol' | % 69
  r4 mi2 r4 | \barNumberCheck #70
  r2 r4 sol | % 71
  fad4 mi2 r4 | % 72
  re'4 r <lad fad'> -. <si re> -. | % 73
  si4 dod r128 fad64. ~ fad16. ~ fad4 fad'8 | % 74
  la,,,16 ~ <la la'> ~ <la fad'> ~ <la la'> ~ <la fad'> ~ <la
  la'>16 ~ <la fad'> ~ <la la'> ~ <la fad'> ~ <la la'> ~
  <la fad'>16 ~ <la la'> ~ <la fad'> ~ <la la'> ~ <la fad'> ~
  <la la'>16 | % 75
  <si re>4 -. r mi'2 | % 76
  <re fad la>4 la' -. <sol si re>8 -. <fad la re> -. <fad la re>4 -.
  | % 77
  <re fad la>4 fad -. <sol lad>8 -. <fad la> -. <fad la>4 -. | % 78
  <la dod fad>4 -. <la dod>8 -. <la re> -. <la re> -. <la dod> -.
  <la dod>4 -. | % 79
  <la dod fad>4 -. <la dod>8 <la re> <la re> -. <la dod> -. <la
  dod>4 -. | \barNumberCheck #80
  <re, la'>4 -. <re sol>8 -. <re fad> -. <la re fad>4 -. <si re>8 -.
  <la re>8 -. | % 81
  <fad la re>4 -. <sol si>8 -. <fad la> -. <re fad la>4 -. <re sol>8
  -. <re fad>8 -. | % 82
  r4 <si re>8 -. <la re> -. r4 <si re>8 -. <la re> -. | % 83
  r4 si -. r2 | % 84
  R1 | % 85
  r4 \clef "bass" si la si | % 86
  la4 si la lad | % 87
  \clef "treble" red1 | % 88
  R1*3 | % 91
  si'2 do,4. si8 | % 92
  re2 r | % 93
  r4 si dod re ~ | % 94
  re4 fad8. mi16 sold2 ~ | % 95
  sold2. <sol si re>8 -. <sol si re> -. | % 96
  <sol do>4 r r16 <do mi> -. <do mi> -. <si re> -. <do mi>8 -.
  <si re>16 -. <si re> -. | % 97
  <do mi>4 -. r r16 <do mi> -. <do mi> -. <si re> -. <do mi>16.
  -. si32 r <si re>16. -. | % 98
  <sol do mi>4 -. r r2 | % 99
  R1 | \barNumberCheck #100
  r2 \times 2/3 {
    r4 \clef "bass" la,8
  }

  la16 la la do | % 101
  do4 -. r r2 | % 102
  r16 \clef "treble" dod -. dod -. si -. dod8 -. mi -. \once
  \override TupletBracket #'stencil = ##f
  \times 2/3  {
    mi8 mi la
  }

  <mi la>16 <mi la> <mi la> <la dod> | % 103
  <la do>4 -. r r2 | % 104
  red4 r r2 | % 105
  <sol, fa'>4. ~ ~ <sol do fa>8 ~ ~ <sol si fa'>4 ~ ~ <sol si> | % 106
  fa'4 r fa2 | % 107
  <la, sol'>4. ~ ~ <la re sol>8 ~ ~ <la dod sol'>4 ~ ~ <la dod> | % 108
  <lad dod mi sol>2 <si re fad> | % 109
  r8 dod' re lad si re r <mi, sol> | \barNumberCheck #110
  <mi, si' re>4 r <mi lad mi'>2 | % 111
  <si' re fad>8 <si, re> r <si re> r <si re> r <si re> | % 112
  r8 \clef "bass" <si re> r <si re> r <si re> r <si re> | % 113
  r8 <sol si re> r <sol si re> r <sol si re> r <sol si re> | % 114
  r8 <sol si re> r <sol si> r <sol si re> r <sol si re> | % 115
  r4 r8 \clef "treble" do'16 -. do -. do8 -. do -. do4 | % 116
  r2 do, | % 117
  r4 r8 do'16 -. do -. do8 -. do -. do4 | % 118
  r2 do, | % 119
  r4 r8 si'16 -. si -. si8 -. si -. si4 | \barNumberCheck #120
  R1 | % 121
  r8 sol'16 sol sol4 -. r8 fad16 fad fad4 -. | % 122
  r8 sol16 sol sol4 -. r8 fad16 fad fad4 -. | % 123
  r8 do16 do do8 do r16 do8. ~ do r16 | % 124
  r8 si16 si si8 si r16 si8. ~ si r16 | % 125
  <si re>8. -. <fa fa'>16 <mi mi'>8. -. <re re'>16 <dod dod'>8. -. <si
  si'>16 <la la'>8. -. <sol sol'>16 | % 126
  <fad fad'>8. -. si'16 <sol dod>8. -. fad16 <mi la>8. -. re16 <dod
  fad>8. -. si16 | % 127
  <lad mi'>4 -. r r8 re dod mi | % 128
  <dod mi>4 -. r r sold'16 la lad8 -. | % 129
  re,1 | \barNumberCheck #130
  <lad re>1 | % 131
  <si re>1 | % 132
  <lad re>1 | % 133
  <sol' si re>4 -. r r2 | % 134
  R1 | % 135
  <mi si' re>2 <mi si' re>4 r | % 136
  R1 | % 137
  re1 ~ | % 138
  re4 r r2 | % 139
  <si re>2. dod4 | \barNumberCheck #140
  si4 r r2 | % 141
  R1*7 | % 148
  <la' dod>2. r4 | % 149
  R1 | \barNumberCheck #150
  r2 mi'4 -. r | % 151
  r2 r4 mi | % 152
  la32 si la si la,8 dod mi la,4 -. r | % 153
  r2 mi'4 -. r | % 154
  la32 si la si la,8 dod mi la,4 -. r | % 155
  la,16 fad' la, fad' la, fad' la, fad' dod la' dod,
  la'16 re, la' re, la' | % 156
  re,16 fad re fad re fad re fad mi dod' mi, dod'
  fad,16 re' fad, re' | % 157
  fad,16 re' fad, re' fad, re' fad, re' r re si re
  mi,16 sol mi sol | % 158
  r4 la2 r4 | % 159
  mi8 -. fad -. re -. fad -. dod -. mi -. re -. fad -. |
  \barNumberCheck #160
  dod8 -. mi -. \clef "bass" lad, dod lad dod lad \clef "treble"
  dod8 | % 161
  dod8 mi re fad dod mi re mi | % 162
  dod8 mi \clef "bass" lad, dod lad dod lad \clef "treble" dod
  | % 163
  mi8 sol fad sol mi sol fad la | % 164
  re,8 mi re fad dod mi re fad | % 165
  si,8 re do mi si re do mi | % 166
  si8 re do mi do fa do fad | % 167
  r2 r4 r8 r16 red' | % 168
  r8 r16 fad, r4 r2 | % 169
  dod''2 fad4 dod8. red16 | \barNumberCheck #170
  lad16 fad lad dod dod,2. | % 171
  <lad mi'>16 -. <lad mi'> -. <lad mi'>32 <lad mi'>16. -. r8 r16
  <lad mi'>16 <si fad'> <si fad'> <si fad'>8 -. r r16 <si fad'>
  | % 172
  <do fad>16 <do fad> <do fad> <do fad> r8 r16 <do fad> <dod
  sol'>16 <dod sol'> <dod sol'> <dod sol'> r4 | % 173
  <red la' do>4 -. \clef "bass" \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    la,8 la la
  }

  la4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    la8 la la
  }

  | % 174
  <lad mi'>4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lad8 lad lad
  }

  lad4 -. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    lad8 lad lad
  }

  | % 175
  \clef "treble" <re fa si>4 -. fa8 mi fa mi fa mi | % 176
  fa4 -. r r2 | % 177
  <la, re fad>4 -. r r2 | % 178
  r4 la''8 la la4. la8 | % 179
  si8 la la4 r \times 2/3 {
    r8 re,, re
  }

  | \barNumberCheck #180
  r4 la''8 la la4. la8 | % 181
  <la fad'>4 r <la fad'> r | % 182
  sol'8. fad16 r4 <sol, mi'> r | % 183
  <la fad'>4 r <si sold'> r | % 184
  <lad re>4 -. r r2 | % 185
  R1 | % 186
  r4 red,2. | % 187
  <sol dod>4 -. r r2 | % 188
  r8 <dod, mi sol> r4 r2 | % 189
  r8 <dod mi sol> r4 r2 | \barNumberCheck #190
  r8 <dod mi sol> r4 r8 <dod mi sol> r4 | % 191
  <sol' lad dod>4 -. r r2 | % 192
  r2 r4 r8 <mi sol> | % 193
  <re fad la>4. mi16 -. fad -. <re fad la>2 | % 194
  <do fad la>4 r8 si16 -. la -. <do fad>2 | % 195
  mi2 r | % 196
  <mi, sol>4 -. r r2 | % 197
  <fad la>4 r r2 | % 198
  <fad la>4 r r2 | % 199
  <mi sold si>2 <sold si> | \barNumberCheck #200
  <dod mi sol>4 -. r r2 | % 201
  R1*10 | % 211
  r8 <si, re>16 <si re> <si re>8 -. <re fa> -. <re fa> -. <fa
  sold>8 -. <fa sold> -. <sold si> -. | % 212
  R1 | % 213
  <la do>1 | % 214
  <sol lad>8 <sol lad>16 <lad re> <sol lad> -. sol32 re' sol,
  re'32 sol, re' sol, re' sol,16 -. <sol lad>32 re' sol,16
  -. <sol lad>32 re' sol,16 -. <sol lad> -. sol -. | % 215
  r2 lad'8 -. sol4. | % 216
  r2 lad8 -. sol4. | % 217
  <sol dod>4 si2 lad4 | % 218
  sold4 <fad sold>8. <mi sold>16 <mi sold>4 <re sold> | % 219
  <red sol>4 si2 lad4 | \barNumberCheck #220
  sold4 <fad sold>8. sold16 <mi sold>4 <re sold> | % 221
  <red sol>4 r \clef "bass" sold,16 si sold si sold si sold
  si16 | % 222
  \clef "treble" red4 fad8. mi16 sold, si \clef "bass" sold si
  sold16 si sold si | % 223
  lad4 la lad la | % 224
  lad4 dod do si | % 225
  R1*5 | \barNumberCheck #230
  \clef "treble" sold''2 lad4 si | % 231
  red2 ~ red8 fad mi -. red -. | % 232
  dod4 mi16 red8. ~ red r16 r4 | % 233
  R1*16 | % 249
  <sold,, si>2. lad8 si | \barNumberCheck #250
  si4 lad2 lad4 | % 251
  si,8 -. fad' -. si,4 -. si8 -. fad' -. si, -. re' | % 252
  \clef "bass" lad,8 mi' lad,4 -. lad8 mi' lad,4 -. | % 253
  \clef "treble" re8 la' re,4 -. re8 la' re, fad' | % 254
  dod,8 -. sol' -. dod,4 -. dod8 -. sol' -. dod,4 -. | % 255
  re8 -. la' re,4 -. re8 -. la' -. re, -. fad' | % 256
  dod,8 -. sol' -. dod,4 -. dod8 -. sol' -. dod,4 -. | % 257
  <mi' lad>1 ~ ~ | % 258
  <mi lad>2 r | % 259
  R1*4 | % 263
  r2 <si, re fa>8 <lad dod> <re fa sold> <dod fad> | % 264
  r8 <fad lad> <fa sold si> <fad lad> r lad <fa sold si> <fad
  lad>8 | % 265
  <fa sol si>8 <fad lad> -. <sol si> lad -. <sol si> lad -. <sol
  si>8 lad -. | % 266
  <mi sol lad>4 -. r r2 | % 267
  r2 r4 fad8. red'16 | % 268
  <red fad>2 <red sold>8 dod si <sold si mi> | % 269
  <si red fad>2 <fad si red>4 <si red fad> | \barNumberCheck #270
  <dod fad lad>4 <dod fad lad> <red si'>8 fad red si | % 271
  <dod fad lad>2. r4 | % 272
  R1*5 | % 277
  <sold si>8 -. <sold si> -. <si dod> -. si -. r2 | % 278
  R1 | % 279
  r8 lad -. lad -. dod -. fad,4 -. r | \barNumberCheck #280
  r8 si -. si -. <si dod> -. <si dod>4 -. r | % 281
  r8 lad -. lad dod -. fad,4 -. r | % 282
  lad,16 fad' lad, fad' lad, fad' lad, fad' dod fad
  dod16 fad dod fad dod fad | % 283
  si,16 sold' si, sold' si, sold' si, sold' dod, sold'
  dod,16 sold' red sold red sold | % 284
  red16 fad red fad red fad red fad sold si sold
  si16 mi, fad mi fad | % 285
  r2 <fad si>4 r | % 286
  lad,8 -. dod -. si -. red -. lad -. dod -. si -. red -. | % 287
  sold4 red2 mi4 | % 288
  \clef "bass" lad,8 dod si red lad \clef "treble" dod si red | % 289
  sold4 red2 mi4 | \barNumberCheck #290
  dod8 mi red fad dod mi red fad | % 291
  \clef "bass" lad,8 dod si red lad \clef "treble" dod si red | % 292
  fad4 fa fad fa | % 293
  fad1 | % 294
  <red sol>4 r r2 | % 295
  R1*3 | % 298
  <sol dod>16 <sol dod> <sol dod> <sol dod> r8 r16 <sol dod>
  <sold red'>16 <sold red'> <sold red'> <sold red'> r8 r16 <sold
  red'>16 | % 299
  <la red>16 <la red> <la red> <la red> r8 r16 <la red> <lad
  mi'>16 <lad mi'> <lad mi'> <lad mi'> r4 | \barNumberCheck
  #300
  <do fad la>4 -. r r2 | % 301
  <dod, sol'>4 -. r r2 | % 302
  <re sold si>4 -. re8 -. dod -. re -. dod -. re -. dod -. | % 303
  re4 -. r r2 | % 304
  <si red>4 -. r r2 | % 305
  r2 fad''4. fad8 | % 306
  sold8 fad r4 r2 | % 307
  r2 fad4. fad8 | % 308
  <fad red'>8. mi16 r4 <fad red'>8. mi16 r4 | % 309
  <mi dod'>8. red16 r4 <mi dod'>8. red16 r4 | \barNumberCheck #310
  <fad red'>8. mi16 r4 <sold mi'>8. fad16 r4 | % 311
  <sol si dod>4 -. r r2 | % 312
  R1 | % 313
  <sol, do>2 <sold dod fad>4 <la dod fad> | % 314
  <lad dod mi>8 -. <lad dod mi> -. r4 r2 | % 315
  r8 <lad dod mi> r4 r2 | % 316
  r8 <lad dod mi> r4 r2 | % 317
  r8 <mi' lad> r4 r8 <mi lad> r4 | % 318
  <mi sol lad>4 -. r r2 | % 319
  r2 r4 r8 <dod mi> | \barNumberCheck #320
  <si red fad>4. dod16 red <si red fad>2 | % 321
  <lad red fad>4. sold16 fad <si red sold>2 | % 322
  R1 | % 323
  fad'2 r | % 324
  <si, red fad>4 -. r r2 | % 325
  R1 | % 326
  r2 r4 \times 2/3 {
    r16 mi,8
  }

  r8 | % 327
  r4 si8 -. red' -. si, -. red' -. si, -. red' -. | % 328
  <sold, mi'>4 -. r r2 | % 329
  <re sold si>4 -. r r <si re>8 -. <si re> -. | \barNumberCheck
  #330
  r2 <re' fad>4 -. r | % 331
  <red fad>4 -. r <red fad> -. r | % 332
  red4 -. red -. red -. red -. | % 333
  <fad, si red>4 -. <si red fad> <la red fad> <sold mi' sold> | % 334
  <fad do'>4 <dod lad'> <sold' re'> <mi dod'> | % 335
  <fad si re>32 fa' <fad, si re> fa' <fad, si re> fa' <fad,
  si re>32 fa' <fad, si re> fa' <fad, si re> fa' <fad,
  si re>32 fa' <fad, si re> fa' <fad, si re> fa' <fad,
  si re>32 fa' <fad, si re> fa' <fad, si re> fa' <fad,
  si re>32 fa' <fad, si re> fa' <fad, si re> fa' <fad,
  si re>32 fa' | % 336
  <fad, si re fa>4 -. r r2 | % 337
  R1 | % 338
  <dod' mi>4 -. r r2 | % 339
  R1*3 | % 342
  r4 r8 <dod, mi> <re fa> -. <red fad> -. <mi sol> -. <dod' mi> | % 343
  <si red>16 -. <si red> -. <si red> -. <si red> -. <si red>
  -. <si red>16 -. <si red> -. <si red> -. <si red> -. <si red>
  -. <si red>16 -. <si red> -. <si red> -. <si red> -. <si red>
  -. <si red>16 -. | % 344
  <red fad>16 -. <red fad> -. <red fad> -. <red fad> -. <red
  fad>16 -. <red fad> -. <red fad> -. <red fad> -. <red fad>
  -. <red fad>16 -. <red fad> -. <red fad> -. <red fad> -. <red
  fad>16 -. <red fad> -. <red fad> -. | % 345
  <fad si>16 -. <fad si> -. <fad si> -. <fad si> -. <fad si>
  -. <fad si>16 -. <fad si> -. <fad si> -. <fad si> -. <fad si>
  -. <fad si>16 -. <fad si> -. <fad si> -. <fad si> -. <fad si>
  -. <fad si>16 -. | % 346
  <si mi>16 -. <si mi> -. <si mi> -. <si mi> -. <si mi> -. <si
  mi>16 -. <si mi> -. <si mi> -. <si mi> -. <si mi> -. <si
  mi>16 -. <si mi> -. <si mi> -. <si mi> -. <si mi> -. <si
  mi>16 -. | % 347
  <si red fad>2 r4 <sol si mi> -. | % 348
  r4 <fad si red> -. <sold, si red> -. <sol si mi> -. | % 349
  <red si' red>4 fad8. si16 <red, si' red>4 fad8. si16 |
  \barNumberCheck #350
  <red, si' red>4 fad8. si16 <red, si' red>4 fad8. si16 | % 351
  <red, si' red>4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <si fad' si>8 <si fad' si> <si fad' si>
  }

  <si fad' si>4 <si fad' si> | % 352
  <si fad' si>4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <si' red fad>8 <si red fad> <si red fad>
  }

  <si red fad>4 -. <si red fad> -. | % 353
  <si red fad>2 r | % 354
  R1*2
}


PartPFiveVoiceThree =  \relative fad {
  \clef "treble" \key re \major \numericTimeSignature\time 4/4 s1*5
  s1*3 s16*63 \clef "bass" s16 s4*5 \clef "treble" s2. s1*2 s s
  s1*2 s1*3 s1 s s1*3 s1*2 s1 s s s s1*2 s s s s1 s | % 47
  \clef "bass" \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    s32 \clef "treble" lad dod
  }

  r16 r8 r mi16 dod fad2 s1 s1 s1*5 | % 55
  \clef "bass" s1*7 s1*4 s1*2 s2. \clef "treble" s4 s1*2 s1 s s s
  s1*2 s1*3 s s4*9 \clef "bass" s4*7 | % 87
  \clef "treble" s1 s s s s s s s s s1*2 s s1 \clef
  "bass" s1 s16 \clef "treble" s16*31 s1 s s s s | % 109
  mi2. mi4 s1 s8*9 \clef "bass" s8*7 s1*2 s4. \clef "treble" s8*13
  s1*2 s s s s1 s s s s1*3 s s1*6 s s1*3 s1*2 s1 s
  s1 s1*2 s s1 s4 \clef "bass" s8*5 \clef "treble" s8 s1 s4 \clef
  "bass" s8*5 \clef "treble" s8 s1 s s s s1*2 s s1 s4*5 \clef
  "bass" s2. s1 | % 175
  \clef "treble" s1*2 s1*3 s1*2 s s1 s s s1*2 s s s1 s s
  s1 s s s s s s s1*2 s1 s s s1*2 s s s1 | % 215
  <mi sol lad re>8 la'16 lad \times 2/3 {
    r8 lad lad
  }

  r16 lad8. -. \times 2/3 {
    r8 lad lad
  }

  | % 216
  <mi, sol lad dod>8 la'16 lad \times 2/3 {
    r8 lad lad
  }

  r16 lad8. -. \times 2/3 {
    r8 lad lad
  }

  s1*2 s1 s s2 \clef "bass" s | % 222
  \clef "treble" s8*5 \clef "bass" s4. s1*2 s1 s s s s |
  \barNumberCheck #230
  \clef "treble" s1 s s s s s s s s s s s s s s1*2 s1 s
  s1 s s s | % 252
  \clef "bass" s1 | % 253
  \clef "treble" s1 s s s s s s s s s1*2 s1 s s s s1*2 s1*3
  s1*4 s1*2 s s1 s1*2 s s1 s | % 288
  \clef "bass" s8*5 \clef "treble" s4. s1 s | % 291
  \clef "bass" s8*5 \clef "treble" s4. s1 s s1*2 s s1 s s1*2 s
  s1*2 s s s s1*3 s1*2 s s1*3 s1 s s s s s s s s
  s1 s s s s s1*2 s1 s s s s s s s s s1*3 s1*4 s1
}


PartPFiveVoiceTwo =  \relative fad' {
  \clef "treble" \key re \major \numericTimeSignature\time 4/4 s1*5
  s1*2 | % 8
  fad2 ~ <fad si re> ~ | % 9
  <fad lad dod>2 r s16*47 \clef "bass" s16 s4*5 \clef "treble" s2.
  s1*2 | % 17
  r2 r4 si | % 18
  r16 <lad, lad'>8. ~ ~ <lad lad'>8 r <lad lad'>2 | % 19
  <lad lad'>2 <lad lad'> s1 s1*2 s1*3 | % 26
  r2 re' s1 | % 28
  r2 <mi, sol> | % 29
  r2 <mi sol> | \barNumberCheck #30
  sol'8. ~ <fad sol>16 sol8. fad16 <mi sol>4 <mi sol> s1*2 s1 s s
  s1 s1*2 s s s s1 s | % 47
  \clef "bass" s32 \clef "treble" s fad,8. ~ fad r16 r2 s1 s s | % 51
  <la, la'>2 ~ ~ <la la' dod> s1*3 | % 55
  \clef "bass" s1*7 s1*4 s1*2 s2. \clef "treble" s4 s1*2 s1 | % 72
  la'2 r | % 73
  r2 re | % 74
  fad,4 -. r r2 | % 75
  la,8 ~ <la si> ~ <la si re> ~ <la si> ~ <la mi'>16 ~ <la sol'>
  ~ <la mi'>16 ~ <la sol'> ~ <la mi'> ~ <la sol'> ~ <la mi' re'>8
  s1 s1*3 s s4*9 \clef "bass" s4*7 | % 87
  \clef "treble" s1 s s s s s s s s s1*2 s s1 \clef
  "bass" s1 s16 \clef "treble" s16*31 | % 104
  <fad' do'>2 ~ ~ <fad do' red>4 ~ ~ <fad red'> | % 105
  si2 r | % 106
  <sold re'>2. ~ sold4 | % 107
  dod2 r s1 | % 109
  r2 r4 r128 sol64. ~ sol16. ~ sol8 | \barNumberCheck #110
  fad'4 ~ <si,, fad''>8 ~ <re fad'> sol,4 -. r s8*9 \clef "bass"
  s8*7 s1*2 s4. \clef "treble" s8*13 s1*2 s s s s1 s s s
  s1*3 s s1*6 s s1*3 | \barNumberCheck #150
  r4 si'8 -. <si re> -. r32 si'16. r8 r4 s1 s | % 153
  r4 si,8 -. <si re> -. r32 si'16. r8 mi,4 s1 s1*2 | % 157
  r2 sol,4 r | % 158
  <mi fad>4 <re fad>2 ~ ~ <re fad lad dod>4 s1 s4 \clef "bass" s8*5
  \clef "treble" s8 s1 s4 \clef "bass" s8*5 \clef "treble" s8 s1 s s
  s1 | % 167
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  | % 168
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    dod8 dod dod
  }

  s1*2 s1 s4*5 \clef "bass" s2. s1 | % 175
  \clef "treble" s1*2 s1*3 s1*2 s s1 s s s1*2 s s s1 s | % 195
  si'1 s | % 197
  re,2 r | % 198
  do2 r s1 s s s s1*2 s1 s s s1*2 s s s1 | % 215
  r4 sol''2 r4 | % 216
  r4 sol2 r4 s1*2 s1 s s2 \clef "bass" s | % 222
  \clef "treble" s8*5 \clef "bass" s4. s1*2 s1 s s s s |
  \barNumberCheck #230
  \clef "treble" s1 s s s s s s s s s s s s s s1*2 s1 s
  s1 s s s | % 252
  \clef "bass" s1 | % 253
  \clef "treble" s1 s s s s s s s s s1*2 s1 s s s s1*2 s1*3
  s1*4 s1*2 s s1 s1*2 s1 | % 285
  r2 <si,, red>4 ~ ~ <si red fad lad> s1 s | % 288
  \clef "bass" s8*5 \clef "treble" s4. s1 s | % 291
  \clef "bass" s8*5 \clef "treble" s4. s1 s | % 294
  lad4 ~ <lad re> ~ <lad do red> ~ <lad re fa> ~ | % 295
  <lad red>4 ~ <lad re fa> ~ <lad do> ~ <lad re> s1*2 s1 s s1*2
  s1*2 s s s s s1*3 s1*2 s s1*3 s1 | % 323
  r4 la''8 sold fad mi red dod s1 s s s s s s s | % 332
  fad,8. ~ <fad fad'>16 fad8. ~ <fad fad'>16 fad8. ~ <fad fad'>16 fad8.
  ~ <fad fad'>16 s1 s s s1*2 s1 s s s s s s s s s1*3 s1*4 s1
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

        \context Voice = "PartPTwoVoiceOne" { \voiceOne \PartPTwoVoiceOne }

        \context Voice = "PartPTwoVoiceThree" { \voiceTwo \PartPTwoVoiceThree }

        \context Voice = "PartPTwoVoiceTwo" { \voiceThree \PartPTwoVoiceTwo }

      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \set PianoStaff.instrumentName = "Piano"
        \set PianoStaff.shortInstrumentName = "Pno."
        \context Staff <<
          \context Voice = "PartPThreeVoiceOne" { \voiceOne \PartPThreeVoiceOne }

          \context Voice = "PartPThreeVoiceThree" { \voiceTwo \PartPThreeVoiceThree }

          \context Voice = "PartPThreeVoiceTwo" { \voiceThree \PartPThreeVoiceTwo }

        >>
      >>
      \new Staff <<
        \context Staff <<
          \context Voice = "PartPFourVoiceOne" { \voiceOne \PartPFourVoiceOne }

          \context Voice = "PartPFourVoiceThree" { \voiceTwo \PartPFourVoiceThree }

          \context Voice = "PartPFourVoiceTwo" { \voiceThree \PartPFourVoiceTwo }

          \context Voice = "PartPFourVoiceFour" { \voiceFour \PartPFourVoiceFour }

        >>
      >>
      \new Staff <<
        \context Staff <<
          \context Voice = "PartPFiveVoiceOne" { \voiceOne \PartPFiveVoiceOne }

          \context Voice = "PartPFiveVoiceThree" { \voiceTwo \PartPFiveVoiceThree }

          \context Voice = "PartPFiveVoiceTwo" { \voiceThree \PartPFiveVoiceTwo }

        >>
      >>
    >>

  >>
  \header {
    piece = \markup \fill-line { \epsfile #Y #40 #myplot }

  }

}


