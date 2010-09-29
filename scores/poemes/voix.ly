%-- Trois poèmes -- voix.ly ---------------------------------------%
% (c) 2004-2010 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

UnSoprano = \relative {
  \tempo "Adagio non troppo" 4 = 52
  \time 2/4
  \partial 4 mi16\mp mi4*3/4 |
  \t {si'4--( si si} |
  \time 3/4
  si) r8 si--~ si16. si32 si8 |
  \time 2/4
  re8.--( re16~ re--\> re do8 |
  \time 3/4
  si2)\! r4 |
  \time 2/4
  r8 si--~ si si |
  \time 4/4
  re8.(\< \poco re16 do8 do fa\! fa mib\> mib |
  lab2)\! r8 mib4--\pp fad8
  \bar "||"
  re2.\ten r4 |
  \time 6/4 R1.*2
  \time 4/4 R1
  r4 si8\psemplice si sib4 re8 re16( fa |
  dod4) si!8 si \t {sib4(\senzacresc mib sib'} |
  re,2. r4 |
  \time 3/4 R2.
  \t {r4 fa,8~(\psempre} \t {fa4 fa do'} |
  \time 4/4
  sol2) r4 fa | fa4.-- fa8--~ fa fa4-- do'8(~|
  \time 3/4
  \t {do8\> sol4)~} sol2\!\ten |
  \time 2/4 R2
  \time 3/4
  r2 \t {do,8\mp do4} |
  \time 6/4
  \t {si'4--( si si} si8) r \t {si8 si4}
  \t {re--( re do} |
  \time 3/4
  si) r r8 sold--~\cresc |
  \time 4/4
  sold4 si8 si la4\! re--( |
  sold, ) si8\< la \t {re4--( do-- fa--)} |
  \time 3/4
  si,2.\f | R2.
  \time 2/4
  r4 \t {sib8\pp sib4} |
  \t {fa'4--( fa lab} |
  \time 4/4
  solb4 r8 solb fa fa mib mib |
  \time 3/4
  lab4) \t {r8 fad(\> si!)~} si4~\! |
  si \t {lab--( mib-- fa!--} |
  \time 5/8
  do2) r8 | r4 \grace fa16\pp re4. |
  \time 2/4
  la!2\ten |
  \time 5/8 R1*5/8
  \time 2/4 R2
  \time 5/8 R1*5/8
  \time 4/4
  r4 \t {r4 mi8~} \t {mi4 mi si'} |
  fad2 r4 mi | mi mi do do |
  si'2.\fermata r4 \bar "|."
}

DeuxSoprano = \relative {
  \tempo "Presto agitato" 4 = 132
  \time 2/2
  \grace sol'16\ff( sol'2.)-> sol4-- |
  sol-- sol-- sol8-- sol-- sol-- sol-- |
  \time 3/2
  sol2.->-- r4 r fa--\< |
  \time 2/2
  r8 \grace sib,16( sib'8->)\!~ sib2. |
  \time 3/2
  r4 re,~\ffsempre re16 mi->( sold,4.)~
  sold8 dod4--(\< sib8) | \break
  \time 2/2
  sol'2.->\! r4 |
  \strtTxtSpan #"poco a poco rit."
  r2 si,!--(\p si-- si--) |
  \time 3/2
  \stopTxtSpan
  si2.--(\> si--)
  \bar "||"
  \time 5/4
  si--\! r2 | R1*5/4
  \time 2/2
  R1*6
  r2 r8 sol4.->\mfintense |
  \grace lab16->( sol4.) sol
  \grace la16->( sol4)~ |
  \time 2/4
  sol sol |
  \time 3/4
  sib2--( solb4) | r fa(\< lab | mi'2--)\! r4 |
  \strtTxtSpan #"poco a poco più agitato"
  r2 mib4 | sol2--( re4) | r dod( mi) | sol2--( re4) |
  r si(\< fa' | sib2.--)\f | r2 mi,4(\< |
  lab4.)\! re,8(\< sol4) |
  \time 2/2
  \grace sol16 dod1~->--\ff) |
  \t {dod4( sib do} \t {sol\> sib fa} |
  \time 3/2
  mi2.)\! r4 r2 |
  \time 2/2
  R1 r4 reb~\mf \dim reb16 sol mib4. |
  \t {do2 reb( sol)} |
  do,4.(~ sib8~ \t {sib4\> reb lab} |
  sib2)\! r r r8 sib4.\psemplice | fa4 r r2 |
  r r8 sol4. | re4 r r2 | R1*2
  r2 reb\pp \grace do16( do'1--)~\ten do~ do4 r r2\fermata
  \bar "|."
}

TroisSoprano = \relative {
  \tempo "Andantino" 4 = 66
  r4 mi mi8 mi fa fa |
  sol4 r r8 sol sib sib |
  solb4 fa8 fa la4 mib8 r |
  R1
  r2 r4 lab8 lab |
  sol4 si8 si sib4 lab8 lab |
  \time 3/4
  \t { sol4 mib' << \voiceOne sib'
  \new CueVoice \with { \override Stem #'direction = #DOWN }
  \parenthesize fad >> } \oneVoice re~ |
  re r r8 re |
  mi! mi sol, sol la! la |
  r4 r8 la4 lab8~ |
  lab do do si mi fa, |
  r si sib4 r8 re |
  reb solb lab do, r4 |
  \time 3/8 R4.
  \bar "||"
  \time 2/4
  R2
  r8 mi,16 mi red8 sol16 sol |
  fad fad mi red fad4 |
  r4 r8 fa!16 mi |
  lab8 sol16 sol si8 sib |
  \time 3/4
  r4 r8 fa reb' fa |
  \time 2/4
  do sol sol4 |
  \time 3/4
  r r8 lab mib' sib' |
  re,!4 r mi! |
  \time 4/4
  si! r si do |
  sol2 r |
  mi4 mi8 mi fa fa sol4
  R1-\fermataMarkup
  \bar "|."
}
