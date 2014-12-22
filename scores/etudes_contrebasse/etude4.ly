%-- Études pour contrebasse -- etude4.ly ---------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Quatre =
\relative do' {
  \tocItem \QuatreTitre
  \clef bass
  \tempo "Alla argentina"
  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(1 1 1 1)
  \time 4/4
  la,8(\mp red) mi-. si'4( mi,8) si'( mi,)
  \time 3/4
  la,( red) mi-. si'( mi,) fa,~(\downbow
  \time 4/4
  fa red') mi-. si'4( mi,8) si'( mi,)
  \time 3/4
  fa,-- mi'-. si'( mi,,)\< fa-. sold~(\mf \downbow
  \time 4/4
  sold mi') red-. si'4( mi,8) si'( mi,)
  \time 3/4
  sold,( mi') red-.\dim sib'( mi,) sol,~(\downbow
  \time 4/4
  sol mi') sib'( si) red,--\p si'( sib) dod,--
  \time 3/4
  sib' do,\> si( sib)\pp r4
  \time 4/4
  la8(\mp red) mi-. si'4( sib8)\< si( do)\!
  \time 3/4
  la,-- fa'-. si( do) fa,( fad)
  \time 4/4
  la,(\cresc mi') fa-. do'4( fad,8) do'( fad,)
  \time 3/4
  re(\< sold) do-. dod-.\! r4
  \time 4/4
  re,8(\< sold) la-. dod4(\f la8) sold( la)
  \time 3/4
  mib( la) re( dod sold) re~(\downbow
  \time 4/4
  re sold) la-. dod4( re,8) do'( mib,)
  \time 3/4
  dod(\> sol') do-. si-.\! r4
  \time 4/4
  la,8--\p si'-. mi,-. si'4-- mi,8 fa( red)
  \time 3/4
  la(\< red mi fa) si-. sold,~(\mf \downbow
  \time 4/4
  sold red') fa( mi) si'( red,) mi-. sold,~--\downbow
  \time 3/4
  sold si'4-- mi,8\> sib'( mib,)
  \time 4/4
  fad,(\p do') fad,-. fa4( do'8) reb( do)
  \time 3/4
  fa,--\f \< si-- do-- dod--\! r fad,~(\mp\downbow
  \time 4/4
  fad si-.) dod-. re-. r mib( re4)
  \time 3/4
  fad,8(\f\< dod') re( la')\! r4
  \time 4/4
  fa,4-.--\p la'4.-- red,8-. la'( red,)
  \time 3/4
  mi,4-.--\> sold'2--
  \time 4/4
  fa,8\! la'4( re,?8) la'( re,) red-. mi,~\downbow
  \time 3/4
  mi\> \t {sold'16(\upbow la lad} si4-.)\! r
  \time 4/4
  fa,8(\mf mi) fa mi4( fa8) red'( mi)
  \time 3/4
  fa,( mi fa) red'( mi) fa,~(\downbow
  \time 4/4
  fa\> mi) fa-- mi-- red'( mi red)\! r
  \time 3/4
  la(\f red) mi-.^"(secco)" si'-. r4
  \bar "|."
}
