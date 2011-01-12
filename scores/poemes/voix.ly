%-- Trois poèmes -- voix.ly ---------------------------------------%
% (c) 2004-2010 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

UnSoprano = \relative {
  \dynamicUp %%FIXME: this should be done by the skeleton
  \tempo "Adagio non troppo" 4 = 52
  \time 2/4
  \partial 4 mi16\mp mi4*3/4 |
  \t {si'4--( si si} |
  \time 3/4
  si) r8 si--~ si16. si32 si8 |
  \time 2/4
  re8.--( re16--~ re\> re do8 |
  \time 3/4
  si2)\! r4 |
  \time 2/4
  r8 si--~ si si |
  \time 4/4
  re8.(\< -\dyn "poco" re16 do8 do fa fa
  \longHairpin mib\> mib |
  lab2)\! r8 mib4--\pp fad8
  \bar "||"
  \ten re2. r4 |
  \time 6/4 R1.*2
  \time 4/4 R1
  r4 si8 -\dyn "p_semplice" si sib4 re8 re16( fa |
  dod4) si!8 si \t {sib4( -\dyn "senza cresc" mib sib')} |
  re,2. r4 |
  \time 3/4 R2.
  \t {r4 fa,8~( -\dyn "p_sempre" } \t {fa4 fa do'} |
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
  lab4) \t {r8 \longHairpin fad(\> si!)~} si4~\! |
  si \t {lab--( mib-- fa!--} |
  \time 5/8
  do2) r8 | r4 \grace fa16 re4.\pp
  \time 2/4
  la!2\ten |
  \time 5/8 R1*5/8
  \time 2/4 R2
  \time 5/8 R1*5/8
  \time 4/4
  r4 \t {r4 mi8~} \t {mi4 mi si'} |
  fad2 r4 mi--( | mi-- mi-- do-- do-- |
  si'2.--)\fermata r4 \bar "|."
}

DeuxSoprano = \relative {
  \dynamicUp
  \tempo "Presto agitato" 4 = 116~132
  \time 2/2
  \grace sol'16\ff( sol'2.)-> sol4-- |
  sol-- sol-- sol8-- sol-- sol-- sol-- |
  \time 3/2
  sol2.->-- r4 r fa--\< |
  \time 2/2
  r8 \grace sib,16( sib'8->)\!~ sib2. |
  \time 3/2
  r4 re,~ -\dyn "ff_sempre" re16 mi->( sold,4.)~
  sold8 dod4--(\< sib8) | \break
  \time 2/2
  sol'2.->\! r4 |
  r2\startText "poco a poco rit." si,!--(\p si-- si--\stopText |
  \time 3/2
  si2.--\> si--
  \bar "||"
  \time 5/4
  si--)\! r2 | R1*5/4
  \time 2/2
  R1*6
  r2 r8 sol4.-> -\dyn "mf_intense" |
  \grace lab16->( sol4.) sol
  \grace la16->( sol4)~ |
  \time 2/4
  sol sol |
  \time 3/4
  sib2--( solb4) | r fa(\< lab | mi'2--)\! r4 |
  r2 mib4 |
  \startText "poco a poco più agitato"
  sol2--( re4) | r dod( mi) | sol2--( re4) |
  r si(\< fa' | sib2.--)\f | r2 \longHairpin mi,4(\< |
  lab4.)\! re,8(\< sol4) \stopText |
  \time 2/2
  \grace sol16( dod1~->--\ff) |
  \t {dod4( sib do} \t {sol\> sib fa} |
  \time 3/2
  mi2.)\! r4 r2 |
  \time 2/2
  R1 r4 reb~\mf \dim reb16 sol mib4. |
  \t {do2 reb( sol)} |
  do,4.( sib8~ \t {sib4\> reb lab} |
  sib2)\! r r r8 sib4. -\dyn "p_semplice" | fa4-- r r2 |
  r r8 sol4. | re4-- r r2 | R1*2
  r2 reb\pp \grace do16( \ten do'1--)~ do~ do4 r r2\fermata
  \bar "|."
}

TroisSoprano = \relative {
  \dynamicUp
  \tempo "Andantino" 4 = 60~66
  r4 mi\<(^"semplice" mi8 mi fa fa |
  sol4\mp) r r8 sol( sib sib |
  solb4) fa8\> fa la4( mib8)\! r |
  R1
  r2 r4 lab8\p lab |
  sol4 si8 si sib4 \longHairpin \hairpinText "poco" lab8\< lab |
  \time 3/4
  \t { sol4\!( mib' << \voiceOne sib')
  \new CueVoice \with { \override Stem #'direction = #DOWN }
  \parenthesize fad >> } \oneVoice re~ |
  re r r8 re(\> |
  mi!^"senza allarg." mi\! sol, sol la! la) |
  r4 r8 la4-- lab8--~ |
  lab do( do si mi fa,) |
  r si( sib4) r8 re( |
  reb\< solb lab\! do,) r4 |
  \time 3/8 R4.
  \bar "||"
  \time 2/4
  \tempo "Stesso tempo"
  R2
  r8 mi,16\mp mi red8-. sol16 sol |
  fad( fad) mi-. red-. fad4-- |
  r4 r8 fa!16\< mi |
  lab8-- sol16 sol si8( sib)\! |
  \time 3/4
  r4 r8 fa(^"più" reb' fa) |
  \time 2/4
  do( sol sol4) |
  \time 3/4
  r r8 lab(\mf mib' sib') |
  re,!4 r \longHairpin mi!--\> |
  \time 4/4
  si!--\! r \longHairpin si(\> do) |
  sol2--\! r |
  mi4\p( mi8 mi fa fa sol4)
  R1-\fermataMarkup
  \bar "|."
}
