% Harmoniques -- java.ly ------------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"

JavaGrille =
\chordmode {
  la2.:m mi:m la2:m/fad si4
  mi2.:m la:m mi:m/si si:7 mi2 mi4:7
  la2.:m mi:m la2:m/fad si4
  mi2.:m la:m mi:m/si si:7 mi si mi si
  mi si:7 si:7 mi
  la2:m mi4 fad2.:7 fad4:7 mi:/sold fad:7/lad si2.
  dod2.:m si:/fad do2:/fad sol4 fad2.:7
  do:/si fad:/si do:/si si:7
  la2.:m mi:m la2:m/fad si4
  mi2:m sol4:7 do2. mi:m/si si:7 s
}

JavaMarc =
\relative do' {
  \tempo "Valse lente"
  \time 3/4
  \key mi \minor
  fa8.. mi32 red8.. mi32 do'8.. do32
  si4 re, r
  dod8.. do32 si'8.. la32 do,8.. la'32
  sol4 si, r
  fad'8.. la,32 si8.. do32 la'8.. lad32
  si4 r8.. do32 si8.. re,32
  red8.. dod32 la'4 si, sold'4
  r8 red mi fad
  re'4. mi,8 r do' si4 re,
  4. dod8
  do si' re, red mi fad sol4 mi r
  red8.. mi32 fad8.. sol32 la8.. fad32
  sol4 r8.. sol32 mi'4\fermata fad,8.. red32 do4 si
  \tempo "Java"
  \bar "||"
  \key mi \major
  sold'2 r4 R2.*3
  fad8. mi16 red8. mi16 dod'8. red16
  dod4 red, si'8. si16
  red,4 r8. red16 dod'8. red,16
  si'4 mi, r8 dod
  la'4 do,8. sold'16 si,8 dod
  lad'4 r r
  re,8. red16 si'8. mi,16 dod'8. fad,16
  red'4 r mi
  sold, r8 sol \tuplet 3/2 {mi' sol, red'}
  fad,4 mid r8 dod'
  mi,4 do'~ do16 red, si' re,
  re4 dod \tuplet 3/2 {r8 la' dod,}
  do4. si8 sol' la
  fad4 r8 lad,4 sol'8
  mi4 r8 fad re' do si2 r4
  \bar "||"
  \tempo "Valse lente"
  \key mi \minor
  \tuplet 3/2 {do8 re do} re4 fa,8.. do'32
  si4 re, r
  dod8 la' do,8.. si32 fad'8.. la32
  sol4 si, r
  la8 si do la' lad red,
  si'2 red,8.. mi32
  dod'8.. mid,32 fad4 red'
  \xNotesOn mi4 r2 \xNotesOff
  \bar "|."
}
