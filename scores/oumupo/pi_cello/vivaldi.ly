
\version "2.19.35"


\include "pilypi.ly"
\include "modify.ly"
\language "italiano"


\header {
  title = "Cello concerto in D minor"
  subtitle = "RV 407"
  composer = "Antonio Vivaldi"
}

\layout {
  \context {
    \Score
    skipBars = ##t
  }
}
PartPOneVoiceOne =  \relative la {
  \clef "bass" \key fa \major \numericTimeSignature\time 4/4 | % 1
  la1 -\markup{ \bold {Allegro} } ~ | % 2
  la1 ~ | % 3
  la2 mi ~ | % 4
  mi1 ~ | % 5
  mi1 ~ | % 6
  mi2 la | % 7
  la,1 ~ | % 8
  la2 ~ la8 si dod si | % 9
  re8 re la dod re re la dod | \barNumberCheck #10
  re8 mi fa re sol,4 la | % 11
  re8 mi fa re re, re' la dod | % 12
  re8 re la dod re mi fa re | % 13
  sol,4 la re16 \clef "tenor" re' dod re la re dod re | % 14
  la16 mi' re mi la, mi' re mi la, fa' mi fa la,
  fa'16 mi fa | % 15
  la,16 sol' fa sol la, sol' fa sol la, la' sol la
  la,16 la' sol la | % 16
  la,4 r \clef "bass" la16 re do ? re la re do re | % 17
  sib16 sol fa sol re sol fa sol mi do' sib do
  sol16 do sib do | % 18
  la16 fa mi fa do fa mi fa re sib' la sib fa
  sib16 la sib | % 19
  sol16 mi re mi si mi re mi dod la' sol la mi
  la16 sol la | \barNumberCheck #20
  fa8 re r \clef "tenor" re' ( do ? ) sib la sol | % 21
  sol4 ( \trill fa8 ) fa' ( mi ) re do sib | % 22
  sib4 ( \trill la8 ) fa' ( mi ) re do sib | % 23
  la8 ( do ) fa ( re ) mi4. fa8 | % 24
  fa4 r \clef "bass" fa,8 sol la sol | % 25
  fa8 sol la sol fa sol la fa | % 26
  do8 re mi re do re mi re | % 27
  do8 re mi re do re mi re | % 28
  do8 re mi do fa sol la fa | % 29
  mi8 do' do do la la sol sol | \barNumberCheck #30
  fa8 fa fa fa sol sol sol sol | % 31
  sol8 sol sol sol la la la la | % 32
  la,8 la la la re re re re | % 33
  dod8 dod si la re re re re | % 34
  re8 re' re re do ? do do sib16 la | % 35
  sol8 sol sol fa mi re do si | % 36
  la16 si do re mi8 mi, la' mi la, la' | % 37
  la8 si16 do si8 la si mi, sold, si' | % 38
  si8 do16 re do8 si do mi, la, do' | % 39
  do8 re16 mi re8 do si sold mi4 | \barNumberCheck #40
  \clef "tenor" mi'8 mi16 ( fa ) sol ( fa ) sol ( mi ) fa8
  \clef "bass" la,8 re, \clef "tenor" fa' | % 41
  re8 re16 ( mi ) fa ( mi ) fa ( re ) mi8 \clef "bass" sol,
  do,8 \clef "tenor" mi' | % 42
  do8 do16 ( re ) mi ( re ) mi ( do ) re8 \clef "bass" re,
  si8 re' | % 43
  si8 si16 ( do ) re ( do ) re ( si ) do8 mi, la, do' | % 44
  si8 mi, sold, si' do mi, la, do' | % 45
  re8 fa, la, re' mi re16 do si8 la | % 46
  mi'8 re16 do si8 la si4 sold | % 47
  la,8 si do si la si do si | % 48
  la8 si do si la si do la | % 49
  mi'8 fad sold fad mi fad sold fad | \barNumberCheck #50
  mi8 fad sold fad mi fad sold mi | % 51
  la,8 si do la mi' mi mi mi | % 52
  mi8 mi mi mi la,4 r8 re | % 53
  re8 re re re re re re re | % 54
  sol,4 r8 do do do do do | % 55
  do8 do do do fa,4 r8 re' | % 56
  do8 do do do do do do do | % 57
  sib4 fad'8 re sol do, re re, | % 58
  \clef "tenor" sol'16 re sol sib sol re sol sib la
  re,16 la' do la re, la' do | % 59
  sib16 re, sib' re sib re, sib' re la re, la' re
  la16 re, la' re | \barNumberCheck #60
  sib16 re, sib' re sib re, sib' re la8 re, r re' | % 61
  mib8 sol16 ( fa ) mib ( re ) do ( sib ) la8 ( fa ) la do
  | % 62
  re8 fa16 ( mib ) re ( do ) sib ( la ) sol8 ( mib ) sol
  sib8 | % 63
  do8 mib16 ( re ) do ( sib ) la ( sol ) fad8 ( re ) fad
  la8 | % 64
  sib16 ( sib ) do re do8 sib do16 ( do ) re mib re8 do
  | % 65
  re16 ( re ) mi fa mi8 re mi16 ( mi ) fad sol fad8 mi | % 66
  fad16 ( re ) fad ( re ) sol ( fa ) mib ( re ) mib do
  mib16 do fa mib re do | % 67
  re16 sib re sib mib re do sib do la do la re
  do16 sib la | % 68
  sib16 sol sib sol do sib la sol fad re fad re
  sol16 re sol re | % 69
  la'16 re, la' re, sib' re, sib' re, do' re, do'
  re,16 sib' re, sib' re, | \barNumberCheck #70
  la'16 re, la' re, sib' re, sib' re, do' re, do'
  re,16 sib' re, sib' re, | % 71
  la'8 re, r fad' sol fa16 mib re8 do | % 72
  sib8 sol' re, fad' sol4 r | % 73
  \clef "bass" sol,,8 la sib la sol la sib sol | % 74
  la8 si dod si la si dod si | % 75
  la8 si dod si la si dod la | % 76
  re8 mi fa mi re mi fa mi | % 77
  re8 mi fa mi re mi fa re | % 78
  \clef "tenor" la'16 mi la mi la mi la mi fa re fa
  re16 fa re fa re | % 79
  sib'16 fa sib fa sib fa sib fa sol mi sol mi
  sol16 mi sol mi | \barNumberCheck #80
  do'16 sol do sol do sol do sol la fa la fa la
  fa16 la fa | % 81
  re'16 la re la re la re la si sol si sol si
  sol16 si sol | % 82
  si16 dod re mi si dod re mi dod8 la r mi' | % 83
  fa8 mi r16 mi fa sol fa8 mi r16 mi fa sol | % 84
  fa8 mi r fa sol16 fa sol mi fa mi fa re | % 85
  dod16 si ? dod la fa' mi fa re dod4. \trill re8 | % 86
  re4 r8 \clef "bass" re, la2 ~ | % 87
  la1 ~ | % 88
  la8 si dod la re re la dod | % 89
  re8 re la dod re mi fa re | \barNumberCheck #90
  sol,4 la re8 mi fa re | % 91
  re,8 re' la dod re re la dod | % 92
  re8 mi fa re sol,4 la | % 93
  re1 \fermata \bar "||"
  \key sib \major \time 3/4 | % 94
  R2.*5 | % 99
  \clef "tenor" re'4 -\markup{ \bold {Largo e siempre piano} } sib
  sol4 | \barNumberCheck #100
  mib'8 ( do ) la la16 ( sib ) do ( sib ) do ( la ) | % 101
  re8 ( sib ) sol sol16 ( la ) sib ( la ) sib ( sol ) | % 102
  do16 ( re ) mib do la ( sib ) do la fad ( la ) sib
  do16 | % 103
  sib8 la16 sol mib'8 do fad, sol16 la | % 104
  sib16 ( sol ) fad sol sib ( re ) do sib mib ( do )
  re16 ( sib ) | % 105
  la16 ( do ) sib la re ( do ) sib la re ( sib ) do
  ( la16 ) | % 106
  sol16 ( sib ) la sol mib'8 fa16 sol mib8 re | % 107
  dod8 sib16 la mi'8 re16 dod sol'8 fa16 mi | % 108
  fa16 re ( mib ) fa mib dod ( re ) mib re si ( dod
  ) re16 | % 109
  la16 dod si la dod mi re dod mi sol fa mi |
  \barNumberCheck #110
  fa8 mi16 re dod4. \trill re8 | % 111
  re4 r8 re fa re | % 112
  mi16 fa mi8 la8. sol16 fa ( mi ) re ( dod ) | % 113
  re8 mi16 re sol8. fa16 ( mi ) re ( dod ) si ( | % 114
  dod8 ) si16 la sib8 mi sol sib, | % 115
  sib4 la r8 do | % 116
  re16 sib la sib mi4 ~ mi16 do ( sib ) do | % 117
  fa4 ~ fa8 mi16 fa sol ( fa ) mi ( re ) | % 118
  do8 mi16 fa sol,4. fa8 | % 119
  fa4 r8 fa la do | \barNumberCheck #120
  mib8 re16 do fad8 mib16 re la'8 la, | % 121
  sib4. la8 sol4 | % 122
  mib'16 sib ( la ) sib mib sib ( la ) sib mib ( do
  ) re16 ( sib ) | % 123
  la16 do ( sib ) la re la ( sol ) la re ( sib ) do
  ( la16 ) | % 124
  sol16 sib ( la ) sol do sol ( fad ) sol do la sib
  sol16 | % 125
  fad8 re ( fad ) la do re | % 126
  sib8 la16 sol fad4. sol8 | % 127
  dod4 ~ dod16 la ( dod ) mi dod la dod mi | % 128
  re16. do ?32 sib16 la32 sol fad4. \trill sol8 | % 129
  sol2. | \barNumberCheck #130
  R2.*5 \bar "||"
  \repeat volta 2 {
    | % 135
    \key fa \major \time 12/8 | % 135
    re4 -\markup{ \bold {Allegro} } r8 sol,4 r8 re'4 r8 sol,4 r8 | % 136
    re'4 r8 sol,4 r8 re'4 fa8 sol4 sol8 | % 137
    la4 r8 la,4 r8 re'4 r8 re4 r8 | % 138
    re4 r8 re4 r8 re4 r8 re4 r8 | % 139
    do4 r8 do4 r8 do4 r8 do4 r8 | \barNumberCheck #140
    sib4 r8 sib4 r8 sib4 r8 sib4 r8 | % 141
    la4 r8 la4 r8 la4 r8 la4 r8 | % 142
    re,4 r8 re4 r8 la'4 r8 la4 r8 | % 143
    la,4 r8 la4 r8 re' ( la ) sol fa mi re | % 144
    la'8 ( si ) dod re ( mi ) fa mi ( re ) mi la,4. | % 145
    re8 ( fa ) mi re ( mi ) fa sol, ( sib ) la sol ( la )
    sib8 | % 146
    do8 ( mi ) re do ( re ) mi fa, ( la ) sol fa ( sol )
    la8 | % 147
    sib8 ( re ) do sib ( do ) re mi, ( sol ) fa mi ( fa )
    sol8 | % 148
    la8 ( do ) sib la ( sol ) fa sib ( re ) do sib ( la )
    sol8 | % 149
    do8 ( mi ) re do ( sib ) la re ( fa ) mi re ( do ) sib
    | \barNumberCheck #150
    mi8 ( sol ) fa mi ( re ) do fa4. ~ fa8 sol ( mi ) | % 151
    fa4. ~ fa8 sol ( mi ) fa ( mi ) re do re si | % 152
    do4. ~ do8 re ( si ) do4. ~ do8 re ( si ) | % 153
    do8 ( sib ? ) la sol ( la ) fa mi4. ~ mi4 fa8 | % 154
    fa8 ( la ) do fa, ( la ) do fa, ( la ) do fa, ( la )
    do8 | % 155
    \clef "bass" fa,8 do' la fa do la fa2.
  }
  \repeat volta 2 {
    | % 156
    fa'4 r8 do4 r8 fa4 r8 do4 r8 | % 157
    fa4 r8 do4 r8 fa4 r8 do4 r8 | % 158
    fa4 r8 do4 r8 fa4 r8 do4 r8 | % 159
    fa4 sol8 la4 sib8 do4 r8 do,4 r8 | \barNumberCheck #160
    \clef "tenor" do'8 ( la ) do la ( fa ) la do4 r8 mib4 r8 | % 161
    re8 sib re sib sol sib re4 r8 fa4 r8 | % 162
    mi ?8 do mi do la do mi4 r8 sol4 r8 | % 163
    fa8 ( mi ) fa mib ( re ) mib re ( dod ) re do ( si )
    do8 | % 164
    sib8 ( la ) sib lab sol lab sol fad sol do re mib ? | % 165
    re,8 ( re' ) dod re ( dod ) re re, do' si do ( si ) do
    | % 166
    re,8 ( sib' ) la sib ( la ) sib re, ( la' ) sol la sol
    la8 | % 167
    re,8 ( re' ) do sib ( la ) sol fad4. ~ fad4 sol8 | % 168
    sol4 r8 \clef "bass" fad4 r8 sol4 r8 fad4 r8 | % 169
    sol4 r8 sol4 r8 do,4 r8 sol4 r8 | \barNumberCheck #170
    do4 r8 sol4 r8 do4 r8 do4 r8 | % 171
    dod4 r8 dod4 r8 re4 r8 dod4 r8 | % 172
    re4 r8 dod4 r8 re re' do ? re la do | % 173
    sib8 sol fa ? sol re fa mi do' sib do sol sib | % 174
    la8 \clef "tenor" re do re la do si mi re mi si re | % 175
    dod8 sib ? la fa' mi re dod sib la fa' mi re | % 176
    dod8 si la sib la sib sol fad sol dod si dod | % 177
    sol8 fad sol mi' re mi fad, la re fad, la re | % 178
    fa, ?8 la re fa, la re mi, la re mi, la re | % 179
    mi,8 la re mi, la re mi, la dod mi, la dod |
    \barNumberCheck #180
    mi,8 la dod mi, la dod re4 r8 \clef "bass" re4 r8 | % 181
    re4 r8 re4 r8 re4 r8 re4 r8 | % 182
    do4 r8 do4 r8 do4 r8 do4 r8 | % 183
    sib4 r8 sib4 r8 sib4 r8 sib4 r8 | % 184
    la4 r8 la4 r8 la4 r8 la4 r8 | % 185
    re,4 r8 re4 r8 la'4 r8 la4 r8 | % 186
    la,4 r8 la4 r8 re2. \fermata
  }
}

PartPOneVoiceTwo =  \relative re {
  \clef "bass" \key fa \major \numericTimeSignature\time 4/4 | % 1
  re8 -\markup{ \bold {Allegro} } mi fa mi re mi fa mi | % 2
  re8 mi fa mi re mi fa mi | % 3
  re8 fa mi re la si dod si | % 4
  la8 si dod si la si dod si | % 5
  la8 si dod si la si dod si | % 6
  la8 dod si la re mi fa re s1*4 s16*41 \clef "tenor" s16*39 s2
  \clef "bass" s8*31 \clef "tenor" s8*5 s2*7 \clef "bass" s2*5 s1*5
  s1*6 s1*2 | \barNumberCheck #40
  \clef "tenor" s8*5 \clef "bass" s4 \clef "tenor" s2. \clef "bass" s4
  \clef "tenor" s16*11 \clef "bass" s16*23 s1*6 s s1*2 | % 58
  \clef "tenor" s1*4 s1*5 s s1 | % 73
  \clef "bass" s1*4 s1 | % 78
  \clef "tenor" s1*4 s8*35 \clef "bass" s8*13 s1*6 \bar "||"
  \key sib \major \time 3/4 | % 94
  s4*15 -\markup{ \bold {Largo e siempre piano} } | % 99
  \clef "tenor" s1*3 s2*9 s4*21 s1*6 s4*27 s1. \bar "||"
  \repeat volta 2 {
    | % 135
    \key fa \major \time 12/8 | % 135
    s1*9 -\markup{ \bold {Allegro} } s s2*21 s1. | % 155
    \clef "bass" s1.
  }
  \repeat volta 2 {
    s1*6 | \barNumberCheck #160
    \clef "tenor" s1. s1*9 s8*15 \clef "bass" s8*57 s8*13 \clef
    "tenor" s8*47 s8*33 \clef "bass" s8*39 s2*9
  }
}

PartPTwoVoiceOne =  \relative re' {
  \clef "treble" \key fa \major \numericTimeSignature\time 4/4 re16 fa
  la16 re re, fa la re re,8 re re re | % 2
  re16 fa la re re, fa la re re,8 re re re | % 3
  re16 fa la re re, fa la re dod8 la la la | % 4
  la16 dod mi la la, dod mi la la,8 la la la | % 5
  la16 dod mi la la, dod mi la la,8 la la la | % 6
  la16 dod mi la la, dod mi la fa8 re r fa | % 7
  mi8 la4 ( sol8 ) la, sol'4 ( fa8 ) | % 8
  la,8 fa'4 ( mi8 ) la,4 r8 dod | % 9
  re16 fa la re, dod mi la mi re fa la re, dod
  mi16 la mi | \barNumberCheck #10
  re16 mi fa sol la8 re, mi4 dod | % 11
  re4 r re,16 fa la re, dod mi la mi | % 12
  re16 fa la re, dod mi la mi re mi fa sol la8
  re,8 | % 13
  mi4 dod re r | % 14
  R1*2 | % 16
  la'16 dod mi la la, dod mi la fa4 r | % 17
  R1*7 | % 24
  fa,16 la do fa fa, la do fa fa,8 fa fa fa | % 25
  fa16 la do fa fa, la do fa fa,8 fa fa fa | % 26
  mi16 sol do mi mi, sol do mi mi,8 mi mi mi | % 27
  mi16 sol do mi mi, sol do mi mi,8 mi mi mi | % 28
  mi16 sol do mi mi, sol do mi la,8 fa r4 | % 29
  do'16 do mi mi sol sol mi mi dod dod mi mi la
  la16 dod, dod | \barNumberCheck #30
  re16 re fa fa la la fa fa mib mib sol sol sib
  sib16 mib, mib | % 31
  re16 re sol sol sib sib re, re dod dod mi mi
  la16 la dod, dod | % 32
  sol16 sol do do mi mi sol, sol fa mi re mi fa
  sol16 la sib | % 33
  la8 si16 dod re8 mi fa16 mi re dod re mi fa sol | % 34
  la8 sib4 sold8 la fad4 sol8 | % 35
  mib8 dod4 re8 sold la4 si8 | % 36
  do, ?8 la' si, sold' la4 r | % 37
  R1*10 | % 47
  la,16 do mi la la, do mi la la,8 la la la | % 48
  la16 do mi la la, do mi la la,8 la la la | % 49
  si16 mi sold si ? si, mi sold si si,8 si si si |
  \barNumberCheck #50
  si16 mi sold si ? si, mi sold si si,8 si si si | % 51
  do4 r8 mi sold la4 si8 | % 52
  re,8 sold4 si8 dod,16 la dod mi la8 re, | % 53
  fad8 sol ?4 la8 do, ? fad4 la8 | % 54
  sib,16 sol sib re sol8 do, mi fa4 sol8 | % 55
  sib,8 mi4 sol8 la,16 fa la do fa8 re | % 56
  mib8 re4 do8 fad mi4 re8 | % 57
  sol8 fa ?16 mib re8 do sib4 la | % 58
  sol4 r r2 | % 59
  R1*13 | % 72
  r2 sol16 sib re sol sol, sib re sol | % 73
  sol,8 sol sol sol sol16 sib re sol sol, sib re sol
  | % 74
  dod,8 dod dod dod mi,16 la dod mi mi, la dod mi | % 75
  la,8 la la la mi16 la dod mi mi, la dod mi | % 76
  fa8 re re re re,16 fa la re re, fa la re | % 77
  re,8 re re re re16 fa la re re, fa la re | % 78
  dod8 la r4 r2 | % 79
  R1*7 | % 86
  r4 r8 fa' mi la4 ( sol8 ) | % 87
  la,8 sol'4 ( fa8 ) la, fa'4 ( mi8 ) | % 88
  la,4 r8 dod re16 fa la re, dod mi la mi | % 89
  re16 fa la re, dod mi la mi re mi fa sol la8
  re,8 | \barNumberCheck #90
  mi4 dod re r | % 91
  re,16 fa la re, dod mi la mi re fa la re, dod
  mi16 la mi | % 92
  re16 mi fa sol la8 re, mi4 dod | % 93
  re1 \fermata \bar "||"
  \key sib \major \time 3/4 sol8 sol sol sol sol sol | % 95
  fad8 fad fa fa fa fa | % 96
  mi8 mi mib mib mib mib | % 97
  re8 re re re re re | % 98
  sol,8 sol do do re re | % 99
  sol,8 sol' sol sol sol sol | \barNumberCheck #100
  fad8 fad fa fa fa fa | % 101
  mi8 mi mib mib mib mib | % 102
  re8 re re re re re | % 103
  sol,8 sol do do re re | % 104
  sol,8 sol' sol sol sol sol | % 105
  fad8 fad fa fa fa fa | % 106
  mi8 mi mib mib mib mib | % 107
  la,8 la la la la la | % 108
  re8 re sol sol sol sol | % 109
  la8 la, la la la la | \barNumberCheck #110
  re8 sol, la la la la | % 111
  re8 re re re re re | % 112
  dod8 dod do do do do | % 113
  si8 si sib sib sib sib | % 114
  la8 la' sol sol mi mi | % 115
  fa8 fa fa fa fa fa | % 116
  sib,8 sib sib sib sib sib | % 117
  la8 la la la sib sib | % 118
  do8 do do do do do | % 119
  fa8 fa fa fa fa fa | \barNumberCheck #120
  fad8 fad fad fad fad fad | % 121
  sol8 sol sol sol sol sol | % 122
  sol8 sol sol sol sol sol | % 123
  fad8 fad fa fa fa fa | % 124
  mi8 mi mib mib mib mib | % 125
  re8 re re re re re | % 126
  sol,8 do re re re re | % 127
  la'8 la la la sol sol | % 128
  fad8 sol re re re re | % 129
  sol,8 sol' sol sol sol sol | \barNumberCheck #130
  fad8 fad fa fa fa fa | % 131
  mi8 mi mib mib mib mib | % 132
  re8 re re re re re | % 133
  sol,8 do re re re re | % 134
  sol,2. \fermata \bar "||"
  \repeat volta 2 {
    | % 135
    \key fa \major \time 12/8 la''8 fa la sib sol sib la fa
    la8 sib sol sib | % 136
    la8 fa la sib sol sib la sol fa mi fa re | % 137
    dod8 si dod la4. la'8 fa la la fa la | % 138
    fa8 re fa sib4 r8 sib fa sib sib fa sib | % 139
    sol8 mi sol sib4 r8 la mi la la mi la | \barNumberCheck
    #140
    fa8 re fa la4 r8 sol re sol sol re sol | % 141
    dod,8 la mi' sol4 r8 dod, la mi' sol4 r8 | % 142
    fa8 re fa fa re fa mi re mi mi re mi | % 143
    mi8 dod mi mi dod mi re4 r8 r4 r8 | % 144
    R1.*12
  }
  \repeat volta 2 {
    | % 156
    fa8 do fa mi do mi fa do fa mi do mi | % 157
    fa4 r8 sol4 r8 la fa la sol mi sol | % 158
    la8 fa la sol mi sol la4 r8 sib4 r8 | % 159
    do8 sib la sol la fa fa4. mi | \barNumberCheck #160
    R1.*8 | % 168
    re8 sib re mib do mib re sib re mib do mib | % 169
    re8 si re fa re fa mib do mib fa re fa |
    \barNumberCheck #170
    mib8 do mib fa re fa mib do mib sol mib sol | % 171
    mi8 dod mi sol mi sol fa re fa sol mi sol | % 172
    fa8 re fa sol mi sol fa4 r8 r4 r8 | % 173
    R1.*7 | \barNumberCheck #180
    r2. la8 fa la la fa la | % 181
    fa8 re fa sib4 r8 sib fa sib sib fa sib | % 182
    sol8 mi sol sib4 r8 la mi la la mi la | % 183
    fa8 re fa la4 r8 sol re sol sol re sol | % 184
    dod,8 la mi' sol4 r8 dod, la mi' sol4 r8 | % 185
    fa8 re fa fa re fa mi re mi mi re mi | % 186
    mi8 dod mi mi dod mi re2. \fermata
  }
}

PartPThreeVoiceOne =  \relative re' {
  \clef "treble" \key fa \major \numericTimeSignature\time 4/4 re8 re
  re8 re re16 fa la re re, fa la re | % 2
  re,8 re re re re16 fa la re re, fa la re | % 3
  re,8 re re re la'16 dod mi la la, dod mi la | % 4
  la,8 la la la la16 dod mi la la, dod mi la | % 5
  la,8 la la la la16 dod mi la la, dod mi la | % 6
  la,8 la dod dod la16 re fa la la, re fa la | % 7
  la,8 fa'4 ( mi8 ) la, mi'4 ( re8 ) | % 8
  la8 re4 ( dod8 ) la16 dod mi la la, dod mi la | % 9
  fa8 fa16 sol la8 mi fa fa16 sol la8 mi | \barNumberCheck #10
  fa4 r8 fa, sol4 mi | % 11
  re16 fa la re re, fa la re fa,8 fa16 sol la8 mi | % 12
  fa8 fa16 sol la8 mi fa4 r8 fa | % 13
  mi4 dod re r | % 14
  R1*2 | % 16
  mi16 la dod mi re, la' dod mi re4 r | % 17
  R1*7 | % 24
  r2 fa,16 la do fa fa, la do fa | % 25
  fa,8 fa fa fa fa16 la do fa fa, la do fa | % 26
  sol,8 mi mi mi mi16 sol do mi mi, sol do mi | % 27
  mi,8 mi mi mi mi16 sol do mi mi, sol do mi | % 28
  mi,8 mi mi mi fa16 la do fa fa, la do fa | % 29
  mi8 do mi sol r dod, mi la | \barNumberCheck #30
  r8 re, fa la r mib sol sib | % 31
  r8 re, sol sib r dod, mi la | % 32
  r8 sol, dod mi fa,16 mi re mi fa sol la sib | % 33
  la8 si16 dod re8 mi fa16 mi re dod re mi fa sol | % 34
  la8 sib4 sold8 la fad4 sol8 | % 35
  mib8 dod4 re8 sold la4 si8 | % 36
  do, ?8 la' si, sold' la4 r | % 37
  R1*10 | % 47
  r2 la,16 do mi la la, do mi la | % 48
  la,8 la la la la16 do mi la la, do mi la | % 49
  sold8 si, si si si16 mi sold si ? si, mi sold si |
  \barNumberCheck #50
  si,8 si si si si16 mi sold si ? si, mi sold si | % 51
  la4 r8 mi sold la4 si8 | % 52
  re,8 sold4 si8 dod,16 la dod mi la8 re, | % 53
  fad8 sol ?4 la8 do, ? fad4 la8 | % 54
  sib,16 sol sib re sol8 do, mi fa4 sol8 | % 55
  sib,8 mi4 sol8 la,16 fa la do fa8 re | % 56
  mib8 re4 do8 fad mi4 re8 | % 57
  sol8 fa ?16 mib re8 do sib4 la | % 58
  sol4 r r2 | % 59
  R1*14 | % 73
  sol16 sib re sol sol, sib re sol sol,8 sol sol sol
  | % 74
  mi16 la dod mi mi, la dod mi la,8 la la la | % 75
  mi16 la dod mi mi, la dod mi la,8 la la la | % 76
  la16 re fa la la, re fa la re,,8 re re re | % 77
  re16 fa la re re, fa la re re,8 re re re | % 78
  mi4 r r2 | % 79
  R1*7 | % 86
  r4 r8 la la fa'4 ( mi8 ) | % 87
  la,8 mi'4 ( re8 ) la re4 ( dod8 ) | % 88
  la16 dod mi la la, dod mi la fa8 fa16 sol la8 mi | % 89
  fa8 fa16 sol la8 mi fa4 r8 fa, | \barNumberCheck #90
  sol4 mi re16 fa la re re, fa la re | % 91
  fa,8 fa16 sol la8 mi fa fa16 sol la8 mi | % 92
  fa4 r8 fa mi4 dod | % 93
  re1 \fermata \bar "||"
  \key sib \major \time 3/4 sol8 sol sol sol sol sol | % 95
  fad8 fad fa fa fa fa | % 96
  mi8 mi mib mib mib mib | % 97
  re8 re re re re re | % 98
  sol,8 sol do do re re | % 99
  sol,8 sol' sol sol sol sol | \barNumberCheck #100
  fad8 fad fa fa fa fa | % 101
  mi8 mi mib mib mib mib | % 102
  re8 re re re re re | % 103
  sol,8 sol do do re re | % 104
  sol,8 sol' sol sol sol sol | % 105
  fad8 fad fa fa fa fa | % 106
  mi8 mi mib mib mib mib | % 107
  la,8 la la la la la | % 108
  re8 re sol sol sol sol | % 109
  la8 la, la la la la | \barNumberCheck #110
  re8 sol, la la la la | % 111
  re8 re re re re re | % 112
  dod8 dod do do do do | % 113
  si8 si sib sib sib sib | % 114
  la8 la' sol sol mi mi | % 115
  fa8 fa fa fa fa fa | % 116
  sib,8 sib sib sib sib sib | % 117
  la8 la la la sib sib | % 118
  do8 do do do do do | % 119
  fa8 fa fa fa fa fa | \barNumberCheck #120
  fad8 fad fad fad fad fad | % 121
  sol8 sol sol sol sol sol | % 122
  sol8 sol sol sol sol sol | % 123
  fad8 fad fa fa fa fa | % 124
  mi8 mi mib mib mib mib | % 125
  re8 re re re re re | % 126
  sol,8 do re re re re | % 127
  la'8 la la la sol sol | % 128
  fad8 sol re re re re | % 129
  sol,8 sol' sol sol sol sol | \barNumberCheck #130
  fad8 fad fa fa fa fa | % 131
  mi8 mi mib mib mib mib | % 132
  re8 re re re re re | % 133
  sol,8 do re re re re | % 134
  sol,2. \fermata \bar "||"
  \repeat volta 2 {
    | % 135
    \key fa \major \time 12/8 fa''8 re fa sol4 r8 fa re fa sol4
    r8 | % 136
    fa8 re fa sol4 r8 fa mi re sol la fa | % 137
    mi8 re mi dod4. fa8 re fa fa re fa | % 138
    sib4 r8 fa re fa fa re fa fa re fa | % 139
    sib4 r8 sol mi sol mi do mi mi do mi | \barNumberCheck
    #140
    la4 r8 fa re fa re sib re re sib re | % 141
    sol4 r8 dod, la mi' sol4 r8 dod, la mi' | % 142
    re8 la re re la re re la re re la re | % 143
    dod8 la dod dod la dod re4 r8 r4 r8 | % 144
    R1.*12
  }
  \repeat volta 2 {
    | % 156
    do8 la do do sol do do la do do sol do | % 157
    do8 la fa' mi do mi fa do fa mi do mi | % 158
    fa8 do fa mi do mi fa do fa sol do, sol' | % 159
    la8 sol fa mi fa re do2. | \barNumberCheck #160
    R1.*8 | % 168
    sib8 sol sib do4 r8 sib sol sib do4 r8 | % 169
    si8 sol si re si re do sol do re4 r8 | \barNumberCheck
    #170
    do8 sol do re4 r8 do sol do mib do mib | % 171
    dod8 la dod mi4 r8 re la re mi4 r8 | % 172
    re8 la re mi4 r8 re4 r8 r4 r8 | % 173
    R1.*7 | \barNumberCheck #180
    r2. fa8 re fa fa re fa | % 181
    sib4 r8 fa re fa fa re fa fa re fa | % 182
    sib4 r8 sol mi sol mi do mi mi do mi | % 183
    la4 r8 fa re fa re sib re re sib re | % 184
    sol4 r8 dod, la mi' sol4 r8 dod, la mi' | % 185
    re8 la re re la re re la re re la re | % 186
    dod8 la dod dod la dod re2. \fermata
  }
}

PartPFourVoiceOne =  \relative fa {
  \clef "alto" \key fa \major \numericTimeSignature\time 4/4 fa8 sol
  la8 sol fa sol la sol | % 2
  fa8 sol la sol fa sol la sol | % 3
  fa8 la sol fa mi' re mi re | % 4
  dod8 re mi re dod re mi re | % 5
  dod8 re mi re dod re mi re | % 6
  dod8 mi re dod re dod re la | % 7
  la1 ~ | % 8
  la2 dod8 re mi dod | % 9
  la8 fa' mi mi la, fa' mi mi | \barNumberCheck #10
  la,4 r8 la sib4 la | % 11
  la8 sol la mi la fa' mi mi | % 12
  la,8 fa' mi mi la,4 r8 la | % 13
  sib4 la fa r | % 14
  R1*2 | % 16
  dod'8 re mi dod la4 r | % 17
  R1*7 | % 24
  la8 sib do sib la sib do sib | % 25
  la8 sib do sib la sib do la | % 26
  sol8 fa sol fa sol fa sol fa | % 27
  sol8 fa sol fa sol fa sol fa | % 28
  sol8 fa sol mi' do sib do la | % 29
  sol8 sol' sol sol mi mi mi mi | \barNumberCheck #30
  la8 la la la sib sib sib sib | % 31
  sib8 sib sib sib mi, mi mi mi | % 32
  dod8 dod dod dod la la la la | % 33
  la8 la la la la la la la | % 34
  la8 fa' fa re fad re re re | % 35
  sib'8 mi, mi la si fa mi re | % 36
  mi16 re mi fa mi8 mi do4 r | % 37
  R1*10 | % 47
  do8 re mi re do re mi re | % 48
  do8 re mi re do re mi do | % 49
  si4 mi8 fad sold fad mi fad | \barNumberCheck #50
  sold8 fad mi fad sold fad mi fad | % 51
  mi8 re mi do si do4 re8 | % 52
  si8 re4 mi8 mi4 r8 fad | % 53
  la8 sib4 do8 la do,4 re8 | % 54
  re4 r8 mi sol la4 sib8 | % 55
  sol8 sib,4 do8 do4 r8 fa | % 56
  sol8 fa4 mib8 la sol4 fad8 | % 57
  re4 r8 fad sol4 fad | % 58
  sol4 r r2 | % 59
  R1*13 | % 72
  r2 sib,8 do re do | % 73
  sib8 do re do sib do re sol, | % 74
  dod8 re mi re dod re mi re | % 75
  dod8 re mi re dod re mi dod | % 76
  la4 la8 sol fa sol la sol | % 77
  fa8 sol la sol fa sol la fa | % 78
  la4 r r2 | % 79
  R1*7 | % 86
  r4 r8 la la2 ~ | % 87
  la1 | % 88
  dod8 re mi dod la fa' mi mi | % 89
  la,8 fa' mi mi la,4 r8 la | \barNumberCheck #90
  sib4 la la8 sol la fa | % 91
  la8 fa' mi mi la, fa' mi mi | % 92
  la,4 r8 la sib4 la | % 93
  la1 \fermata \bar "||"
  \key sib \major \time 3/4 sol'8 sol sol sol sol sol | % 95
  fad8 fad fa fa fa fa | % 96
  mi8 mi mib mib mib mib | % 97
  re8 re re re re re | % 98
  sol,8 sol do do re re | % 99
  sol,8 sol' sol sol sol sol | \barNumberCheck #100
  fad8 fad fa fa fa fa | % 101
  mi8 mi mib mib mib mib | % 102
  re8 re re re re re | % 103
  sol,8 sol do do re re | % 104
  sol,8 sol' sol sol sol sol | % 105
  fad8 fad fa fa fa fa | % 106
  mi8 mi mib mib mib mib | % 107
  la,8 la la la la la | % 108
  re8 re sol sol sol sol | % 109
  la8 la, la la la la | \barNumberCheck #110
  re8 sol, la la la la | % 111
  re8 re re re re re | % 112
  dod8 dod do do do do | % 113
  si8 si sib sib sib sib | % 114
  la8 la' sol sol mi mi | % 115
  fa8 fa fa fa fa fa | % 116
  sib,8 sib sib sib sib sib | % 117
  la8 la la la sib sib | % 118
  do8 do do do do do | % 119
  fa8 fa fa fa fa fa | \barNumberCheck #120
  fad8 fad fad fad fad fad | % 121
  sol8 sol sol sol sol sol | % 122
  sol8 sol sol sol sol sol | % 123
  fad8 fad fa fa fa fa | % 124
  mi8 mi mib mib mib mib | % 125
  re8 re re re re re | % 126
  sol,8 do re re re re | % 127
  la'8 la la la sol sol | % 128
  fad8 sol re re re re | % 129
  sol,8 sol' sol sol sol sol | \barNumberCheck #130
  fad8 fad fa fa fa fa | % 131
  mi8 mi mib mib mib mib | % 132
  re8 re re re re re | % 133
  sol,8 do re re re re | % 134
  sol,2. \fermata \bar "||"
  \repeat volta 2 {
    | % 135
    \key fa \major \time 12/8 re'4 r8 re4 r8 re4 r8 re4 r8 | % 136
    re4 r8 re4 r8 re4 la'8 sib4 sib8 | % 137
    mi,4 r8 mi4 r8 fa4 r8 fa4 r8 | % 138
    fa4 r8 fa4 r8 fa4 r8 fa4 r8 | % 139
    mi4 r8 mi4 r8 mi4 r8 mi4 r8 | \barNumberCheck #140
    re4 r8 re4 r8 re4 r8 re4 r8 | % 141
    dod4 r8 mi4 r8 dod4 r8 la4 r8 | % 142
    la4 r8 la4 r8 la4 r8 la4 r8 | % 143
    la4 r8 la4 r8 fa4 r8 r4 r8 | % 144
    R1.*12
  }
  \repeat volta 2 {
    | % 156
    la'4 r8 sol4 r8 la4 r8 sol4 r8 | % 157
    la4 r8 do,4 r8 do4 r8 do4 r8 | % 158
    do4 r8 do4 r8 do4 r8 mi4 r8 | % 159
    do4. do'4 re8 sol,2. | \barNumberCheck #160
    R1.*8 | % 168
    sib4 r8 la4 r8 sib4 r8 la4 r8 | % 169
    re,4 r8 sol4 r8 sol4 r8 si4 r8 | \barNumberCheck #170
    sol4 r8 si4 r8 sol4 r8 sol4 r8 | % 171
    la4 r8 la4 r8 la4 r8 la4 r8 | % 172
    la4 r8 la4 r8 la4 r8 r4 r8 | % 173
    R1.*7 | \barNumberCheck #180
    r2. fa4 r8 fa4 r8 | % 181
    fa4 r8 fa4 r8 fa4 r8 fa4 r8 | % 182
    mi4 r8 mi4 r8 mi4 r8 mi4 r8 | % 183
    re4 r8 re4 r8 re4 r8 re4 r8 | % 184
    dod4 r8 mi4 r8 dod4 r8 la4 r8 | % 185
    la4 r8 la4 r8 la4 r8 la4 r8 | % 186
    la4 r8 la4 r8 fa2. \fermata
  }
}

PartPFiveVoiceOne =  \relative re {
  \clef "bass" \key fa \major \numericTimeSignature\time 4/4 re8 mi
  fa8 mi re mi fa mi | % 2
  re8 mi fa mi re mi fa mi | % 3
  re8 fa mi re la si dod si | % 4
  la8 si dod si la si dod si | % 5
  la8 si dod si la si dod si | % 6
  la8 dod si la re mi fa re | % 7
  la1 ~ | % 8
  la2 ~ la8 si dod si | % 9
  re8 re la dod re re la dod | \barNumberCheck #10
  re8 mi fa re sol,4 la | % 11
  re8 mi fa re re, re' la dod | % 12
  re8 re la dod re mi fa re | % 13
  sol,4 la re8 mi -"Solo" fa re | % 14
  dod8 si dod la re mi fa re | % 15
  dod8 re dod la fa' mi fa re | % 16
  la8 -"Tutti" si dod la re mi -"Solo" fa re | % 17
  sol,8 la sib sol do re mi do | % 18
  fa,8 sol la fa sib do re sib | % 19
  mi,8 fa sol mi la si dod la | \barNumberCheck #20
  re8 mi fa re mi4 fa8 sol | % 21
  la2 do,4 re8 mi | % 22
  fa2 do4 re8 mi | % 23
  fa8 la, sib sib' do4 do, | % 24
  fa8 -"Tutti" sol la sol fa sol la sol | % 25
  fa8 sol la sol fa sol la fa | % 26
  do8 re mi re do re mi re | % 27
  do8 re mi re do re mi re | % 28
  do8 re mi do fa sol la fa | % 29
  mi8 do' do do la la sol sol | \barNumberCheck #30
  fa8 fa fa fa sol sol sol sol | % 31
  sol8 sol sol sol la la la la | % 32
  la,8 la la la re re re re | % 33
  dod8 dod si la re re re re | % 34
  re8 re' re re do ? do do sib16 la | % 35
  sol8 sol sol fa mi re do si | % 36
  la16 si do re mi8 mi, la4 r | % 37
  la4 -"Solo" r sold r | % 38
  sold4 r la r | % 39
  la4 re mi2 | \barNumberCheck #40
  R1*3 | % 43
  r2 la,4 r | % 44
  sold4 r la r | % 45
  fa'4 r do r | % 46
  do4 r re mi | % 47
  la,8 -"Tutti" si do si la si do si | % 48
  la8 si do si la si do la | % 49
  mi'8 fad sold fad mi fad sold fad | \barNumberCheck #50
  mi8 fad sold fad mi fad sold mi | % 51
  la,8 si do la mi' mi mi mi | % 52
  mi8 mi mi mi la,4 r8 re | % 53
  re8 re re re re re re re | % 54
  sol,4 r8 do do do do do | % 55
  do8 do do do fa,4 r8 re' | % 56
  do8 do do do do do do do | % 57
  sib4 fad'8 re sol do, re re, | % 58
  sol4 sol'2 -"Solo" fad4 | % 59
  sol4 sol,2 fad4 | \barNumberCheck #60
  sol4 sol' re8 do sib sol | % 61
  do2 fa | % 62
  sib,2 mib | % 63
  la,2 re | % 64
  sol2 la | % 65
  sib2 do | % 66
  re4 sib do la | % 67
  sib4 sol la fad | % 68
  sol4 mib re2 ~ | % 69
  re1 ~ | \barNumberCheck #70
  re1 ~ | % 71
  re8 mi fad re sib sol fad'4 | % 72
  sol4 re sol,8 -"Tutti" la sib la | % 73
  sol8 la sib la sol la sib sol | % 74
  la8 si dod si la si dod si | % 75
  la8 si dod si la si dod la | % 76
  re8 mi fa mi re mi fa mi | % 77
  re8 mi fa mi re mi fa re | % 78
  la4 dod -"Solo" re r | % 79
  re4 r mi r | \barNumberCheck #80
  mi4 r fa r | % 81
  fa4 r sol r | % 82
  sold4 r la r8 dod, | % 83
  re8 dod r dod re dod r dod | % 84
  re8 dod r re mi4 re | % 85
  la'4 re, la' la, | % 86
  re4 r8 re -"Tutti" la2 ~ | % 87
  la1 ~ | % 88
  la8 si dod la re re la dod | % 89
  re8 re la dod re mi fa re | \barNumberCheck #90
  sol,4 la re8 mi fa re | % 91
  re,8 re' la dod re re la dod | % 92
  re8 mi fa re sol,4 la | % 93
  re1 \fermata \bar "||"
  \key sib \major \time 3/4 sol8 sol sol sol sol sol | % 95
  fad8 fad fa fa fa fa | % 96
  mi8 mi mib mib mib mib | % 97
  re8 re re re re re | % 98
  sol,8 sol do do re re | % 99
  sol,8 sol' sol sol sol sol | \barNumberCheck #100
  fad8 fad fa fa fa fa | % 101
  mi8 mi mib mib mib mib | % 102
  re8 re re re re re | % 103
  sol,8 sol do do re re | % 104
  sol,8 sol' sol sol sol sol | % 105
  fad8 fad fa fa fa fa | % 106
  mi8 mi mib mib mib mib | % 107
  la,8 la la la la la | % 108
  re8 re sol sol sol sol | % 109
  la8 la, la la la la | \barNumberCheck #110
  re8 sol, la la la la | % 111
  re8 re re re re re | % 112
  dod8 dod do do do do | % 113
  si8 si sib sib sib sib | % 114
  la8 la' sol sol mi mi | % 115
  fa8 fa fa fa fa fa | % 116
  sib,8 sib sib sib sib sib | % 117
  la8 la la la sib sib | % 118
  do8 do do do do do | % 119
  fa8 fa fa fa fa fa | \barNumberCheck #120
  fad8 fad fad fad fad fad | % 121
  sol8 sol sol sol sol sol | % 122
  sol8 sol sol sol sol sol | % 123
  fad8 fad fa fa fa fa | % 124
  mi8 mi mib mib mib mib | % 125
  re8 re re re re re | % 126
  sol,8 do re re re re | % 127
  la'8 la la la sol sol | % 128
  fad8 sol re re re re | % 129
  sol,8 sol' sol sol sol sol | \barNumberCheck #130
  fad8 fad fa fa fa fa | % 131
  mi8 mi mib mib mib mib | % 132
  re8 re re re re re | % 133
  sol,8 do re re re, re | % 134
  sol2. \fermata \bar "||"
  \repeat volta 2 {
    | % 135
    \key fa \major \time 12/8 | % 135
    re'4 -"Tutti" r8 sol,4 r8 re'4 r8 sol,4 r8 | % 136
    re'4 r8 sol,4 r8 re'4 fa8 sol4 sol8 | % 137
    la4 r8 la,4 r8 re'4 r8 re4 r8 | % 138
    re4 r8 re4 r8 re4 r8 re4 r8 | % 139
    do4 r8 do4 r8 do4 r8 do4 r8 | \barNumberCheck #140
    sib4 r8 sib4 r8 sib4 r8 sib4 r8 | % 141
    la4 r8 la4 r8 la4 r8 la4 r8 | % 142
    re,4 r8 re4 r8 la'4 r8 la4 r8 | % 143
    la,4 r8 la4 r8 re4 r8 re4 -"Solo" r8 | % 144
    la'4 r8 re,4 r8 la2. | % 145
    re4. r8 r4 sol4. r8 r4 | % 146
    do,4. r8 r4 fa4. r8 r4 | % 147
    sib4. r8 r4 mi,4. r8 r4 | % 148
    fa4. r8 r4 sol4. r8 r4 | % 149
    la4. r8 r4 sib4. r8 r4 | \barNumberCheck #150
    do4. sib la r8 r4 | % 151
    la4. r8 r4 fa4. r8 r4 | % 152
    mi4. r8 r4 do4. r8 r4 | % 153
    fa4. sib, do do, | % 154
    fa4 r8 fa4 r8 fa4 r8 fa4 r8 | % 155
    fa4. r4 r8 fa2.
  }
  \repeat volta 2 {
    | % 156
    fa'4 -"Tutti" r8 do4 r8 fa4 r8 do4 r8 | % 157
    fa4 r8 do4 r8 fa4 r8 do4 r8 | % 158
    fa4 r8 do4 r8 fa4 r8 do4 r8 | % 159
    fa4 sol8 la4 sib8 do4 r8 do,4 r8 | \barNumberCheck #160
    la4 -"Solo" r8 la4 r8 la4 r8 la4 r8 | % 161
    sib4. r4 r8 si4 r8 si4 r8 | % 162
    do4. r4 r8 dod4 r8 dod4 r8 | % 163
    re4 r8 sol4 r8 fad4 r8 fad4 r8 | % 164
    sol4 r8 re4 r8 mib4 r8 do4 r8 | % 165
    re4. r4 r8 re4. r4 r8 | % 166
    re4. r4 r8 re4. r4 r8 | % 167
    re4. r4 r8 re4. re, | % 168
    sol'4 -"Tutti" r8 fad4 r8 sol4 r8 fad4 r8 | % 169
    sol4 r8 sol4 r8 do,4 r8 sol4 r8 | \barNumberCheck #170
    do4 r8 sol4 r8 do4 r8 do4 r8 | % 171
    dod4 r8 dod4 r8 re4 r8 dod4 r8 | % 172
    re4 r8 dod4 r8 re4 r8 fad4 -"Solo" r8 | % 173
    sol4 r8 si,4 r8 do4 r8 mi4 r8 | % 174
    fa4 r8 fad4 r8 sol4 r8 sold4 r8 | % 175
    la4 r8 re,4 r8 la'4 r8 re,4 r8 | % 176
    la1. ~ | % 177
    la1. ~ | % 178
    la1. ~ | % 179
    la1. ~ | \barNumberCheck #180
    la2. re'4 -"Tutti" r8 re4 r8 | % 181
    re4 r8 re4 r8 re4 r8 re4 r8 | % 182
    do4 r8 do4 r8 do4 r8 do4 r8 | % 183
    sib4 r8 sib4 r8 sib4 r8 sib4 r8 | % 184
    la4 r8 la4 r8 la4 r8 la4 r8 | % 185
    re,4 r8 re4 r8 la'4 r8 la4 r8 | % 186
    la,4 r8 la4 r8 re2. \fermata
  }
}


% The score definition
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "Violoncello Obbligato"
      \set Staff.shortInstrumentName = "c."
      \context Staff \piify <<
        \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
        \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
      >>
    >>
    \new StaffGroup <<
      \new StaffGroup \with {
        systemStartDelimiter =
        #'SystemStartBrace
      } <<
        \new Staff <<
          \set Staff.instrumentName = "Violini Primi"
          \set Staff.shortInstrumentName = "1."
          \context Staff <<
            \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
          >>
        >>
        \new Staff <<
          \set Staff.instrumentName = "Violini Secundi"
          \set Staff.shortInstrumentName = "2."
          \context Staff <<
            \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
          >>
        >>

      >>
      \new Staff <<
        \set Staff.instrumentName = "Viole"
        \set Staff.shortInstrumentName = "a."
        \context Staff <<
          \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Basso Continuo"
        \set Staff.shortInstrumentName = "b.c."
        \context Staff <<
          \context Voice = "PartPFiveVoiceOne" { \PartPFiveVoiceOne }
        >>
      >>

    >>

  >>
  \header {
    piece = \markup \fill-line { \epsfile #Y #40 #myplot }
  }
}

