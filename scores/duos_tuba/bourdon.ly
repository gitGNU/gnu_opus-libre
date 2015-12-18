%-- Tuos Duba -- bourdon.ly ---------------------------------------%
% 2015, Valentin Villenave <valentin@villenave.net>

\language "italiano"

BourdonTitre = "Le bourdon bourré"

BourdonTubaUn =
\relative do' {
  \clef bass
  \time 7/8
  \tempo "Moderato inebriando"
  r4 fa,(\p\< sol la8->)
  si->\! r do4(\< si re8->)
  sib->\! r reb4(\< do si8->)
  la->\! r sib4(\< lab solb8->)
  fa->\! r r4 r lab8-.\f
  sib r r4 r fa'8-.
  si,-. r r4 r mi8-.
  do-. r r4 r sol8-.
  fa-. r sol4(\mf\< la si8->)
  dod->\! r re4(\p do sib8
  la mi) si4(\< dod mib8->)
  fa-> sol-> la-> si2->\!
  r8 sold-.\p si-. r mi,-. sol-. r
  r do,-.\dim r red-. r sold,-. si-.
  r4 do(\pp re) r8
  r4 sol?( fa?) r8
  r4 re?( mi?) r8
  r4 la( sol8) r si(
  fa) r sol8->\sfz la->\sfz r4 sib8->\sfz
  sol(\mp \cresc la) r8 si-. do(\f reb mib)
  r4 fa->\ff fa,-> fa8->
  fa-> r si?4-> la-> sol8->
  fa4-> fa r r8
  \bar "|."
}

BourdonTubaDeux =
\relative do' {
  \clef bass
  r2 r4 la8-.\f
  si-. r r4 r re8-.
  sib-. r r4 r si8-.
  la-. r r4 r solb8-.
  fa-. r fa4(\p\< sol lab8->)
  sib->\! r mib4(\< reb fa8->)
  si,->\! r re4(\< solb, mi'8->)
  do->\! r si4( la sol8->)
  fa->\! r do4(\mf\< re mi8->)
  fad-> sold2->\! dod,4(\p
  re8) r fad4(\< sold sib8->)
  do?->\! r mi4(\p re reb8)
  r do-. sol-. r sold-. red-. r
  r mi-. r si-. r do-. sol-.
  r2 r4 mi'8->\sfz
  fad->\sfz r r4 r mib8->\sfz
  reb->\sfz r r4 r fad8->\sfz
  sold->\sfz r r4 r8 fa4
  reb8(\mp \cresc mib) r4 mi8( fad) r
  do'->\sfz r dod->\sfz red->\sfz r re(\f mi?)
  r4 fa,->\ff sol-> la8->
  sib-> r fa4-> fa-> r8
  fa,2-> r4 r8
}
