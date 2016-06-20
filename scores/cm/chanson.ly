% Harmoniques -- chanson.ly ---------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"


ChansonBrice =
\relative do' {
  \time 4/4
  \key sib \major
  \tempo "Oratorio (Adagio)" 4 = 48 % Puis Chanson française (traditionnel) et Milonga
  \clef bass
  r4 r fa,8 sib, fa'4 r8 sib,
  fa'2. r4
  R1
  \time 2/4
  r8 sib, si do
  \time 4/4
  sol'2. r4
  R1*2
  \bar "||"
  \tempo "Chanson française" 2. = 48
  \time 3/4
  R2.*3
  r2 do,8 re la'4 re,4. do8
  sol'2 do,8 re la'4 re, do
  sol'2 r4
  R2.*3
  r2 reb8 mib sib'4 mib, re8 la'
  re,4 r mib sib' mib, fa do'2 r4
  R2.*3
}

ChansonFlo =
\relative do' {
  \key sib \major
  r4 R1
  r4 do8 do fa4. do8
  fa2. r4
  R2
  r4 sol re4. do8 fa2. r4
  R1
  %% Chanson
  R2.*7
  r2 do8 re sol4 re r
  r8 mib lab la mib4
  mi8 fa sib fa fad sol do2 r4
  R2.*3
  r2 sol8 do sol4 fa8 sib do4
  r sol do re4. lab do2 r4
}

ChansonMarc =
\relative do' {
  \clef bass
  \key sib \major
  r4
  R1*2
  r4 sib8 sib re,4 re sib'4 r
  R1
  r4 re,8 mib do'4. mi,8 do'2. r4
  %% Chanson
  R2.*8
  r2 mib,8 fa re'4 fa, mib8 do'
  mib, re dod re sib' re, reb do la'2
  R2.*4
  r4 do,8 sold' la do, re mib do'4 r8 mi,
  mib do' mib,4 fa re'2.
}

ChansonPianoMd =
\relative do' {
  \key sib \major
  <do fa la>4 <sib fa' sib>1 <do fa do'>
  <re fa sib re> r4 <do mib sol> <sol re' sol>2. <do mi sol>4
  <fa, do' fa>2 r4 <mi' sib' do> <fa la do>2
  <mib' la do fa>\arpeggio
  \repeat unfold 3 {
    r4 <do re fa>2 r4 q2 r4 <sib re fa>2 r4 <sol re' mib> <sib do sol'>
  }
  \repeat unfold 2 {
    r4 <do mib sol>2 r4 <do mib fa>2 r4 <re mib sol>2
    r4 <do mib solb sib> <do mib fa la>
  }
}

ChansonPianoMg =
\relative do' {
  \clef bass
  \key sib \major
  \partial 4
  fa,,8 mib re1 la' sib
  r4 do si2. sib4 la2 la'4 sol fa2 fa,
  \repeat unfold 5 {sib'2. la sol la}
}
