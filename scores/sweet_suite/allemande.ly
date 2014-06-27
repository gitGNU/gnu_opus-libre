%-- Sweet suite -- allemande.ly ------------------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

AllemandeClavecinMd =
\relative do' {
  \time 2/2
  \partial 4 si'4
  si' la sol fad8 sol
  la4 sol fa mi8 fa
  sol4 fa mib re8 do
  si4 si' r2
  mi,,2 fa fad sol4 fa
  red2 mi red4 do si \voiceOne si
  \oneVoice si' la sol fa8 sol
  lab4 sol fa mib8 fa
  \voiceOne sol4 fa mib mib8 reb
  \oneVoice do4 si' r red,
  \voiceOne mi re' do si
  la8 si do4 si la
  sol8 fad sol la lad4 sold
  <la, fad'>2. \oneVoice mi''4
  mi' re do si8 dod
  re4 do sib la8 si
  do sib lab solb fa mib reb dob
  sib lab solb fa la sold fad mi
  red4 si si' \voiceOne si
  si' la sold fad8 sold
  la4 sol fad mi8 fad
  sol4 fa mi8 fad mi red
  \oneVoice mi re' do sib la si sol lab
  fa mi' re do si dod la sib
  sol fa' mib reb do re lad si
  sol fa mib reb do4 si
  \voiceOne si' la sol fad8 sol
  la4 sol fa mi8 fa
  sol4 fa mib re8 do
  si4 r \oneVoice si' \bar "|."
}

AllemandeClavecinMg =
\pl
  \relative do' {
    \clef bass
    \oneVoice
    r4 mi,2 fad sold la4 sold
    fad2 sold lad si4 si,
    si' la sol fad8 sol
    la4 sol fa mi8 fa
    sol4 fa mib re8 do
    si4 la sol fad
    \voiceTwo mi2 fad sol la4 sol
    fad2 sold la4 lad si r
    \oneVoice
    fa sol la si8 la
    lab4 sib do re8 do
    si4 dod red8 mid red dod
    do4 re mi mi,
    sib8 lab sib do re mib re do
    dob reb mib fa solb labb solb fa
    solb lab sib do reb mib fa sol
    lab sib do re la sib do re
    si4 la sol fad8 sol
    \voiceTwo la4 sol fa mi8 fa
    sol4 fa mib re8 do si4 si' r \oneVoice fa
    si, si' lad la, sol sol' fad fa,
    mi mi' red fad mi si si' la
    sol \voiceTwo fad8 sol \oneVoice la4 sol
    fa mi8 fa sol4 fa mib re8 do si4 si' r2 si,,4
  }
  \relative do' {
    \md \voiceTwo \set followVoice = ##t
    s4 s1*7 s2 s4 la
    \mg \voiceOne
    sol2 sold la sol4 la
    \md \voiceTwo lad2 si
    \mg \voiceOne fad r4 fa
    \md \voiceTwo mi'2 mib reb mib4 reb
    do2 si mi( red4) s4
    s1*4 s2 s4 la'
    \mg \voiceOne sol fad8 sol
    \md \voiceTwo la4 sol
    \mg \voiceOne fad4 re8 mi
    \md \voiceTwo fa4 mib
    \mg \voiceOne reb8 do reb mib
    \set followVoice = ##f
    \md \voiceTwo fa4 s
    s1*4 s4
    \mg \voiceOne si,
    \set followVoice = ##t
    \md \voiceTwo si' la sol8 la sib4 la sol
    solb8 lab sib4 lab solb fa4 si, r
  }
