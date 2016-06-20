% Harmoniques -- pastiche.ly --------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"


PasticheIPianoMd =
\relative do' {
  R1*2
  r2 si4... si'32
  si2. do4 si2. do4 si2. do4 si2. do4
  si2. sib4 la2. si8. la16 la2. sold4~
  sold la8 si re do mi, la
  fad2. la4 fad2. \acciaccatura si8 la4
  sol8 fad do si red fad \t {re' do si}
  r4 \grace <si, sol' si>8 q2 r4
  r4 \grace <mi si' mi>8 q2 r4
  r4 \grace <red si' red>8 q4 r4
  <fad la do re> r \grace <la re fad>8 q4
  r \grace <sol re' sol>8 q2 r4
  r4 \grace <si, sol' si>8 q2 r4
  r4 \grace <mi si' mi>8 q2 r4
  r4 \grace <red si' red>8 q4
  \t {r16 la' red} sol8 fad8. mi16
  mi8 red do' red,
  red mi sol si,
  re do \t {mi mi, la}
  fad4. la8
  fad2. \acciaccatura si8 la4
  fad2... mi16
  mi2. fad4 mi2. fad4 mi1~ mi2 fad
  mi2 r
}

PasticheIPianoMg =
\relative do' {
  \clef bass
  R1*3
  <sol si mi>4 q q q
  <fad la mi'> q <fad la red> q
  <fa la mib'> q q q
  <fa la re> q <fa sold re'> <mi sold re'>
  <mi sol re'> q <mi sol dod> q
  <mi sol do> q <mi fad do'> <red fad do'>
  <re fad do'> <re fad do'> <re fa do'> <re fa si>
  <do mi si'> q <do mi la> q
  <si mi la> q <si red la'> q
  <do mi la> q q q
  <si red la'> r r2 |
  mi,4 r r2
  mi4 r r2
  si4 r2
  r4 re r
  <sol, sol'> r r2
  mi'4 r r2
  mi4 r r2
  si4 r r2
  <si si'>8 <la'' do fad la> q q
  <sol si red fad> <sol si mi> q q
  <la do mi>4 la,8 <mi' fad do'>
  <si mi si'>4 <do mi la>
  <si mi si'>4 q <do mi la> q
  <si mi si'>4 q <si red si'> <si red la'>
  <do sol'> q q q
  <do sib'> q <do mi la> q
  <si mi la> q <si mi sold> q
  <si mi sol> q q q
  <sib do sol'>2 r
}

PasticheIMarc =
\relative do' {
  \clef "G_8"
  \key mi \minor
  r4 si si \xNotesOn sol'
  r4. fad,8 fad4 r \xNotesOff
  r4 r8 si \tuplet 3/2 {si4 do si}
  si4 r r8 si \t {si do si}
  si si \t {si do si} la la \t {la si la}
  la4 r r8 la \t {la si la} la la \t {la si la}
  sold sold16 sold \t {sold8 la sol}
  sol4 r r8 sol \t {sol la sol}
  sol sol \t {sol la sol}
  fad fad \t {fad sol fad}
  fad4 r r8 fa \t {fa sol fa}
  mi mi \t {mi fad mi} mi mi \t {mi fad mi}
  mi4 r r8 red \t {red mi red}
  mi mi \t {mi fad mi} mi mi \t {mi fad mi}
  red4 r r8 si \t {si dod red}
  mi2 r8 mi \t {mi mi8. fad16}
  sol2 r8 mi \t {mi mi8. fad16}
  \time 3/4
  fad2 r8 la~
  la re,?8 r do' si8. la16
  \time 4/4
  si2 r8 si, \t {si dod red}
  mi2 r8 mi \t {mi mi8. fad16}
  sol2 r8 mi16 mi \t {mi8 mi8. fad16}
  fad4 r8 fad re'?4 fad,8 sol
  la2 r8 si \t {si sold' sol}
  si, la r4 r8 la \t {la si la}
  fad' sold, r sold \t {sol4 la sol}
  sol8 fad r fad \t {sol4 fad red}
  mi4 mi r8 mi \t {mi do' mi,}
  do'4 r r8 mi, \t {mi si' mi,}
  si'4 r r2 r8 mi, \t {mi fad mi}
  mi mi \t {mi fad mi} mi4 r r2
  \bar "|."
}

PasticheIIIMarc = \relative do' {
  \clef "G_8"
  \time 3/4
  \key sol \minor
  \partial 4
  sol8 sol sib4 re,8 sib'4 do8
  re4 r8 mi re4
  do do8 la r4 fa4. r8 sol la
  sib4. sol8 sol4 sol4. r8 fa sol
  la4 la4. fad8 re4. r8 sol la
  sib4 re,8 sib'4 do8
  re4 r8 mi re4
  do do8 la r4 fa4. r8 sol la
  sib4 r8 la sol fad~
  fad2 mi8 fad sol4 re do si2 r4
  \bar "|."
}