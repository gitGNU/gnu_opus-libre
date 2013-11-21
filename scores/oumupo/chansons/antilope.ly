%-- Chansons Oulipiennes -- antilope.ly ---------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

AntilopeVoix =
\relative do' {
  \time 4/4
  R1 r2 r4 r8
  \tempo "Andantino"
  dod'8-. |
  mib,4--\fermata r8 dod' mib,-. sib'-. dod,-. la'-. |
  re,4-. r \times 2/3 { r mib( sib' } |
  la4.) re,8 \times 2/3 { do?4( mib sib' } |
  la2) r8 re,-. mib-. sib'-. |
  la4.-- re,8 \times 2/3 { mib4( sib dod } |
  la2) r8 do( mib sib' |
  la2) \times 2/3 { dod,4( mib sib' } |
  \time 3/4
  la2) r8 dod-. |
  \time 4/4
  mib,4--\fermata r8 dod' mib, sib' dod, la' |
  re,4 r r\fermata r8 red'
  \bar "||"
  fa,4\fermata r8 red' fa, do' red, si' |
  mi,4 r \times 2/3 { r fa?( do' } |
  si4. mi,8 \times 2/3 { red4 fa? do' } |
  si2) r8 mi,-. fa-. do'-. |
  si-. si-. sib-. mi,-. fa( fa-.) do-. red-. |
  si2-- r8 mi( fa do') |
  si-. si-. sib-. mi,-. \times 2/3 { fa4( re? do' } |
  \time 3/4
  si2) r8 red-. |
  \time 4/4
  fa,4--\fermata r8 re'! fa, sib dod, la' |
  \bar "||"
  \tempo "Allegro furioso"
  re,2 r\longfermata ^ "(BREAK)"
  R1*15
  \tempo "Tempo I"
  r2 r4 r8 dod' |
  mib,4\fermata r8 dod' mib, sib' dod, la' |
  re,4 r \times 2/3 { r mib sib' } |
  la4. re,8 \times 2/3 { do?4 mib sib' } |
  la2 r8 re, mib sib' |
  la la re, re mib mib sib dod |
  la2 r4 mib'8 sib' |
  la4. re,8 \times 2/3 { dod4 mib sib' } |
  \time 3/4
  la2 r8 dod |
  \time 4/4
  mib,4\fermata r8 dod' mib, sib' dod, la' |
  re,4 r r r8
  \bar "|."
}

AntilopePianoMd =
\relative do' {
  \makeClusters { sold32 la si re
  mi re si la sold la si re}
  \makeClusters {fa sol sib do reb fa, sol sib}
  \makeClusters {mib fa sol lab fa solb lab sib } dod4 r
  r8 dod-. mib,4--\fermata <sib, reb mib>-. <sol dod fa>-. |
  s1*6
  r8 <sib mib sol>-. r <si mi sol>-. r4
  r8 dod'' mib,4\fermata <sib, reb mib>-. <sol dod fa>-. |
  s2 s4 red'''-.
  r8 red fa,4\fermata <la,, do fa>-. <si red sold>-. |
  s1*6
  r8 <si mi la>-. r <do? fa? sib>-. r4 |
  r8 lab''' sib,4\fermata <fa,, lab re>-. <mi sol dod>-. |
  <fa re'> r r2
  %
  %
  %
  %
  %
  %
  %
  %
  %
  %
  %
  %
  %
  %
  %
  R1
  r8 dod''' mib,4 \fermata <sib, reb mib>-. <sol dod fa>-. |
  s1*6
  r8 <sib mib sol>-. r <si mi sol>-. r4
  r8 dod'' mib,4\fermata <sib, reb mib>-. <sol dod fa>-. |
  r \acciaccatura dod8 re4-.
  \acciaccatura mib''8 <re re'>4-. r8
}

AntilopePianoMg =
\relative do' {
  \clef bass
  \makeClusters {
  r8 r2 r8 sol,-. la,4-. |
  re8(\mp la' \md <la' re fad>-.) \mg
  mib,( sib') \md <sib' mib solb>4.--
  \mg re,,8( la' \md <la' re fa>-.) \mg
  mib,( sib') \md <sib' mib sol>4.--
  \mg re,,8( la' \md <la' re fad>-.) \mg
  mib,( sib') \md <sib' mib solb>4.--
  \mg re,,8( la' \md <la' re fa>-.) \mg
  mib,( sib') \md <sib' mib sol>4.--
  \mg re,,8( la' \md <la' re fad>-.) \mg
  mib,( sib') \md <sib' mib solb>4.--
  \mg re,,8( la' \md <la' re fa>-.) \mg
  mib,( sib') \md <sib' mib sol>4.--
  \mg mib,,8(\< sib') mi,( si')\! r4 |
  r2 r8 sol la,4 |
  re'8-. la'-. re-. \md sold-.
  re'-.\p la'-. \mg <si,, la'>4-. |
  r2 r8 do, si,4 |
  mi8( si' \md <si' mi sol>-.) \mg
  fa,( do') \md <do' fa la>4.-- \mg
  mi,,8( si' \md <si' mi sold>-.) \mg
  fa,( do') \md <do' fa lab>4.-- \mg
  mi,,8( si' \md <si' mi sol>-.) \mg
  fa,( do') \md <do' fa la>4.-- \mg
  mi,,8( si' \md <si' mi sold>-.) \mg
  fa,( do') \md <do' fa lab>4.-- \mg
  mi,,8( si' \md <si' mi sol>-.) \mg
  fa,( do') \md <do' fa la>4.-- \mg
  mi,,8( si' \md <si' mi sold>-.) \mg
  fa,( do') \md <do' fa lab>4.-- \mg
  fa,,8( do') fad,( dod') r4 |
  r2 r8 sol la,4 |
  
  % BREAK
  re8.->\dyn "ff_subito" re16 la8-. la,-.
  r16 mib'8 mib16( sib'8-.) mib,-. |
  re8.-> re16 la8-. la,-. r do( sol'-.) sol,-. |
  re8.-> re16 la8-. la,-.
  r16 mib'8 mib16( sib'8-.) mib,-. |
  %
  %
  %
  %
  %
  %
  %
  %
  %
  %
  %
  %
  r r2
  R1
  r2 r8 sol-. la,4-. |
  re8( la' \md <la' re fad>-.) \mg
  mib,( sib') \md <sib' mib solb>4.--
  \mg re,,8( la' \md <la' re fa>-.) \mg
  mib,( sib') \md <sib' mib sol>4.--
  \mg re,,8( la' \md <la' re fad>-.) \mg
  mib,( sib') \md <sib' mib solb>4.--
  \mg re,,8( la' \md <la' re fa>-.) \mg
  mib,( sib') \md <sib' mib sol>4.--
  \mg re,,8( la' \md <la' re fad>-.) \mg
  mib,( sib') \md <sib' mib solb>4.--
  \mg re,,8( la' \md <la' re fa>-.) \mg
  mib,( sib') \md <sib' mib sol>4.--
  \mg mib,,8( sib') mi,( si') r4 |
  r2 sol4-. la-. | r re,-. r4 r8
}
