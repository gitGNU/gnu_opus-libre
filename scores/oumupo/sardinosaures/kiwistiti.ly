%-- Sardinosaures -- kiwistiti.ly ---------------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

KiwistitiVoix = \relative do' {
  \key mib \minor
  \time 3/4
  R2.
  \dynamicUp
  mib16\dyn "mp_très articulé" mib solb lab
  sib8-- lab16 solb lab8-. mib-. |
  sib'4-. r16 reb8->-- sib16 reb->\( lab dob8-.\) |
  r mib,-.\mf r16 mib'8->-- reb16 mib\( do\) reb-. lab-. |
  r8 solb16\< lab sib dob8.--\! reb16->\( sib\) fab'->-. mib,-. |
  R2.
  \key si \major
  red8-.\mp sold16 red dod8-. red-. sold-. red-. |
  dod4 r8 dod16 red fad\( red\) fad red |
  si'4->-- r8 red16\( dod lad sold\) r8 |
  dod8->\( si4\) dod8->\( la4\) |
  r8 fad16-.\cresc sold-. lad8-- sold16-. lad-.
  si8-- sold16-. fad'-. |
  si8->--\! r16 la,\dyn "p_sub."
  dod-. fad,-. red-. sold-. si,4-. |
  r dod8\(\< red dod red~ |
  red sold4-- dod8~\> dod4 |
  si2\)\! r4 |
  \key mib \minor
  mib,16\dyn "mf_staccato" mib solb lab
  dob8-- lab16 solb lab8-. reb-. |
  sib8--\< mib,16\( la \times 2/3 {solb'8\> sib, mib} reb,4--\!\) |
  sib'8\(\dyn "mp_dolce" lab sib lab mib'4--~\) |
  mib8 solb,\( dob4\) r8 reb,16-.\< mib-. |
  solb8-> lab16-. dob~->\! dob4 reb16\(\f\< sib\) mib\( lab,\) |
  dob'4->-.\! r2 |
  \key si \major
  r2 r8 fad,,-.\mp |
  red-. dod-. la4-- dod8-. red-. |
  si4-- r16 red\(^"scherzando" lad'8-.\)
  red,16\( lad'8-.\) red,16-.\( |
  lad'4--\) r16 dod,\< red fad lad8-- sold16-. dod~-- |
  dod8. lad16-. red4.--\! r8 |
  r8 fad,16\p si~-- si4 r |
  \key mib \minor
  mib,16\dyn "mf_staccato" mib solb lab
  sib8-- lab16 solb lab8-. reb-. |
  dob4.\(^"espr." reb8\> lab solb\!\) |
  mib16\dyn "f_staccato" solb lab sib
  dob8-- lab16-.\< sib-. reb-. mib-.\! r8 |
  r4 sib8\(\p lab sib solb~ |
  solb^"dolce" lab dob,4-- reb8\< mib |
  lab2\mp\) r4 |
  mib8\( mib solb lab sib4\) |
  r lab\( sib8 lab~ |
  \times 2/3 {lab4\> sibb mib,} solb\)\! |
  r4 mib'\(\mp reb\) |
  mib\(--\> solb,-- sib-- |
  reb,2--\)\! r4 |
  \key si \major
  R2.
  r8 si'16\(\mp lad-.\) r8 si-. r16 sold8.-- |
  r16 lad-.\< red,-. fad-. dod4-.\! r \bar "|."
}

KiwistitiPianoMd = \relative do' {
  \ottava #1
  r16 si''' \dyn "pp_staccato molto"
  si, si, \mg si, si, si, \md si''''''
  \ottava #0 r4 R2.*11
  si,,,2.--
  si,16 si si si si( do) si si si si si si |
  si'4-- <si, si'>16 <si si'> <si si'> <si si'>
  <si si'> <si si'> <si si'> <si si'> |
  <si' si'>8->-. r r16 <la si la' si>->-. r8
  <la si la' si>16-. <la si la' si>-.
  <la si la' si>-. <la si la' si>-. |
  r2 r16 <si si'> <si si'> <si si'> |
  s2.*3 s4 la,2--^\pp |
  si16 si'-> si, si si si si si <la si>-- si si si |
  si si'-> si, si si si si si si( si') si( si') |
  \ottava #1 si( si') si( si') si,( si') si,,( si'
  si') \ottava #0 \mg si,,,,( \md si'^"loco" si') |
  r si si si si,( si' \ottava #1 si' si') \ottava #0
  r16 \mg \stemUp si,,,,,( \md \stemDown si'' si') |
  \mg \stemUp si,,( \md \stemDown si'' si'8) \stemNeutral
  r16 si,,( si' si') \ottava #1 si,( si' si'8) |
  \mg \stemUp si,,,,8 \md \stemDown si''''16-> si, \stemNeutral
  si si,-> si si \ottava #0 si,->^"loco" si si si |
  r4 \ottava #1 r16 <si'' si'>->-. \ottava #0 r8
  r16 si( si,8*1/2-.) s16 |
  r8 si( \stemUp si,4) s |
  \stemNeutral r4 r8 si16( si' \ottava #1 si' si') \ottava #0 r8 |
  \clef "G^15" \mg si,,,16(
  \md si''' si,) \mg si,(
  \md si'' si,) \mg si,( \md si')
  \mg si,,(_"(sempre loco)" \md si'' si') \mg si,,( |
  \md si' si') \mg si,,( \md si')
  \mg si,,( \md si''' si,) \mg si,(
  \md si'' si,)^"simile" \mg si, \md si' |
  \mg si,, \md si'' si' \mg si,,, \md si'' \mg si, si, \md si'' si' \mg si,,, \md si''' si, |
  \mg si, \md si' si' \mg si,, \md si' si' \mg si,, \md si' \mg si, \md si' si' \mg si,, |
  \md si''-.\pp si-. si-. si-. \mg la,,--( \md si' si') \mg
  la,,--( \md si' si') \mg la,,( \md si') |
  \mg si,--( \md si' si') \mg si,,(
  \md si' si') si,( si') \mg si,,_"simile" \md si' si' \mg si,, |
  \md si' si' si, si' si si, si' si, si' si si, si' |
  si,( si') si si, si' si, si' si si, si' si si |
  si,( si') si si si( si,) si si si si si si |
  si'8\dyn "ppp_quasi niente" si16 si
  r si si si r si si si |
  si si r8 si16 si r8 si r | si4 r si-. |
}

KiwistitiPianoMg = \relative do' {
  \clef bass
  r4 s \ottava #-1
  si,,,16 si si si |
  si^"très égal" si si si si si si si si si si si |
  r si si si si8-. si-. si16^\< si si do |
  si'(^\p do) si si si si, si' si <si do>-- si si si |
  si,( si') si si si,( si') <si mi>-.-- si si,( mi) si' si |
  si^\cresc si si si si si si,->( si') si si,->( si' si) |
  \ottava #0
  si'(^\fp^"loco" si,) si si
  si'^\dyn "pp_staccato molto" si si si si si si si |
  si \ottava #-1 si,,-> si-> si-> \ottava #0
  si''^\pp^"loco" si,( si') si si,( si') si si |
  si,\< si si si' \ottava #-1 si,,^\sfp
  \ottava #0 si''^"loco" si si si si si si |
  <la' si>--\p si, si si <la' si>-. <la si>-. si, si
  \ottava #-1 la,,(^\< si \ottava #0 la'^"loco" si |
  si''-.)^\fp si-. si-. si, si'-. si-. si, si si'-. si, si si |
  <la' si>^\f \ottava #-1 <la,,, si>
  \ottava #0 <la' si>->^"loco" <la' si>->
  si'^\sfp ^\dim si si si r si si si |
  si^\pp si si si si si si si si si si si |
  <si,, si'>4--( \ottava #-1 si,-- \ottava #0 <si'' si'>--) |
  si'16 si si si r2\dyn "(senza cresc)" |
  \ottava #-1 si,,,16\dyn "f_sub." si si si si si si si'-. r4 |
  <la, si>16->\< \ottava #0 <la' si>->^"loco"
  <la' si>-> <la' si>->
  si\dyn "p_sub." si si si r4 |
  \stemUp si,16( si' \md \stemDown <si' si'>) \mg \stemUp si,,(
  si' \md \stemDown <si' si'>) \mg \stemUp si,,( si')
  si( \md \stemDown si' si si' |
  si'-.) \mg \stemUp si,,,,,( si' si'
  \md \stemNeutral si') si'( si, si \mg si, si si, si |
  si,)\p si si si \ottava #-1
  \md \stemDown <si'' re>-- \mg \stemUp si,,,-> \md \stemDown <si''' re> <si re>
  \mg \stemNeutral \ottava #0 <si re> re si si |
  \stemUp si \md \stemDown si'''\sfz \mg \stemNeutral si,,, si
  si( si si si si si si si) |
  <la,, si'>8.--\dyn "f_sub." <si la'>16-.
  r la( <si si'> la) <la si'>8-- <si la'>-- |
  <la si'>8.--\mf\dim <si la'>16-. r si( si' si,) si8-- si''-- |
  si,,8.-- si16-. r2 |
  si'4.--\p si8-. r16 \stemDown si \stemNeutral r8 |
  \stemDown si'4--\laissezVibrer s2 |
  si4--\laissezVibrer  s2 | \stemNeutral
  si16\mf ^"secco" si si si si si si si
  \stemDown si si si \md si' \mg \stemNeutral
  si,\dim si si si \stemDown \md si' \mg
  \stemNeutral si, si si si si si si |
  si si si si si4--\! r |
  \clef treble s2.*12_\dyn "pp_al fine"
}
