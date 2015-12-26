%-- 7 Tangos -- tangola.ly ----------------------------------------%
% 2015 Valentin Villenave <valentin@villenave.net>

\language "italiano"

LaCb =
% \transpose re do
\relative do' {
  \tempo "Andante con moto" 4 = 96
  \key la \minor
  la''8(->\mp do,) fa-. mib4-- re8-. mi16 red mi fad
  sol8(-> sib,) mib-. dod4-- sold8( la mi'-.)
  fa->( la,) re-. do4-- si8-. sol16 si do re
  mi8->(\< sib) fa re'->( la) mib fa do\!
  \clef bass
  r8 <mi, si'>4.--\mf r8 <mi do'>4.--
  r8 <mi re'>4-- <mi red'>8--
  <lad, si>-. q-. <mi' red'>16-> q q q
  r8 <mi si'>4-- <lad, si>16 q
  r8 <mi' do'>4-- <mi re'>8-.
  <mi red'>16-> q q q q4-. r8
  \clef treble
  fa'(\upbow \glissando do'-. si-.)
  r <la mi'>4.--\f \< <la fa'>-- <la fad'>8--~
  q <la sol'>4--\! fad'8 fa( mi) red mi
  r <la, red>4.--\< <la mi'>-- <lad mi'>8--~
  q <si fa'>4--\! mi8 mib( re) dod re
  r <la re>4.--\< <la red>-- <sol mi'>8--~
  q <sold fa'>4--\sfz mi'16( fa) mi8( re) do si
  r <la do>-- mi( la) <si re>-- la mi <si' red>-.
  <do mi>2.-- r4
  \clef bass
  re,,4--\mp fa-- sold-- si,--
  do-- mi-- fad-- lad,--
  si-- red-- mi-- sold,--
  la'8-.\< la,-. si'( la) si,4(-- dod--)
  re8-.\p re-. la'-. re,-. sold,-.
  re''16[(\upbow\< red] mi fad sold8)\!
  do,,8-. do-. sol'-. do,-. fad,-.
  si'16[( do] dod red mi8)
  si,-.\> si'-. la-. fad-. mi-. re-. do-. si-.
  la4-.\! r8 \clef treble la'''->(\mf do,) fa-. mib4--
  r8 <si mi>4.-- r8 <do fa>4.--
  r8 <re sol>4--\< <red sold>8--~\f
  q <re sol>(\> <do fa> <si mi>)\!
  r <sold re'>4.-- r8 <la red>4.--
  r8 <lad mi'>4--\< <si fa'>8~\>
  q <sib mi>( <la mib'> <sold re'>)
  \clef tenor
  r <fa do'>4.--\mp <sol re'>-- <sold red'>8--~
  red' \glissando
  <red, mi,>-.\f <lad, si>-. q-. <mi' red'>16-> q q q r4
  <fa' do'>8.--\mp\< <sol re'>16~--
  q8 <sold red'>4.--\!
  <lad,, si>8-.\f q-. <mi' red'>16-> q q q r4 r8
  \clef bass sol,(-.\p\< \t {lab sib si)}
  do4--\! re-- mib-- do-- fad,-- r8
  \clef treble
  la'''(\mf do,) sol'-. fad4-- \clef bass
  \grace s8
  sib,,,4--\p do-- reb-- sib-- sol-- r8
  \clef treble
  mi'''(\mp sol,) do-. sib4
  \clef bass
  <sold, la>16->\fp q q q q8-. q16 q
  q8-. sib16( do dod red mi8)
  fa( fa,) do'-. si4-- sol8-. la16\< si do re
  mi8\! <red, mi>16 q q q q8-.
  r red'(\< mi,) do'-.
  \clef treble
  sib-. sold'( mi) si'~(^"espr." \t {si4 do re)\!}
  r8 <la mi'>4.----\f\< r8 <la fa'>4.--
  r8 <la fad'>4-- <la sol'>8--\sf~ q fad' fa( mi)
  r <la, red>4.--\< r8 <la mi'>4.--
  r8 <la fa'>4-- <la fad'>8--\sf fa'( mi) fa( red)
  r8 <re re>4.--\f\< <red red>4.-- <mi mi>8~--
  q <fa fa>4.--~\! q2
  r4 la8(\ff do,) fa-. mib4.--
  r2 r4 <la red>8\sfz r \bar "|."
}

LaPianoMd = \relative do' {
  \key la \minor
  R1*4
  \clef bass
  <mi, fa si>2 <fa sol do>
  <sold la re>4 <lad si red>2.
  <mi fa si>2 <fa sol do>4 <sold la re>
  <lad si red>2. r4
  \clef treble
  r8 <la do mi>4. <la do fa> <la do fad>8~
  q <si do sol'>4.~ q4 r
  r8 <la si red>4. << <si mi>4. \\ {la8 sold4}>>
  <sol sib mi>8~ q <fa re' fa>4.~ q4 r
  r8 <fa la re>4. <fa la mib'>4. <fa la mi'>8~
  q <sold si fa'>4.~ q4 r
  <la do la'>4. <si re la'>8~ q4 <si red la'>8( si')
  <mi do' mi> <fa, fa'> <si? si'?> <la la'>~ q
  sold16 la si do re mi
  <la, fa'>8 do16 re do8 si16 lad si8
  \t {red16 mi la} sold fad mi re
  <si mi>8. lad16 si re do si
  \t {lad4 dod8} fadd16 sold mi dod
  red8 la red <sold, re'>~->--
  q <fad do'>~->-- q16 <fa si> <mi sib'> <re sold>
  <mi si'>8 la mi do~
  do \t {la'16 si la} \ttt {sold la si do re mi}
  \tt {fa sol fa mi re} \tt {dod re fa la do}
  <si, fad' si>2
  mi16 fa mi red mi fad sol si
  <lad, mid' lad>2
  \t {lad8 si red} \t {mid fad la}
  \t {<re, sold>4 <do fad la> <si sold' si>}
  re'8 <do, mi> si' la~ la4 r
  \clef bass
  <mi,, fa si>2 <fa sol do>
  <fadd sold re'>1
  <mi fa si>2 <fa sol do>
  <fadd sold re'>1
  <mi fa si>
  <mi fa si do>
  <sold re'> R1
  \clef treble
  mib'16 re mib4 mib8~ mib re re4
  re4. r8 r2
  \acciaccatura {reb16[ mib]}
  reb4 do8 reb~ reb do reb re
  mib16 reb do8~ do r r2
  <fa, do'>8 lab sib <fa do'>
  lab sib si fa~
  <fa do'> lab sib <fa si>~ q4 r
  <sold re'>8 red' re <sold, red'>~
  q re' sold dod,
  <sold re'>4 q2 r4
  r8 <mi' do' mi>4. r8 <fa do' fa>4.
  r8 <fad do' fad>4 <sol si do sol'>8~ q2
  r8 <red la' si red>4. r8 <mi sold mi'>4.
  r8 <fa sol do fa>4 <sold do re fad>8~ q2
  r8 <re fa re'>4.
  <red la' si red>4. <mi la do mi>8~
  q <fa la do fa>4.~ q2
  r4 \ottava #1 la''8 do, fa mib4.
  r2 r4 <red la' red>8 r
}

LaPianoMg = \relative do' {
  \key la \minor
  \clef bass
  R1*4
  r4 mi,, r mi
  r sold sol fa
  r mi r si
  mi fa sol sold
  la,8 la' si, si' do, do' si, si'
  la, la' sol, sol' fa, fa' mi, mi'
  la, la' si, si' do, do' si, si'
  la, la' sol, sol' fa, fa' mi, mi'
  la, la' si, si' do, do' si, si'
  la, la' sol, sol' fa, fa' mi, mi'
  la, la' si, si' do, do' si, si'
  la, la' sib, sib' do, do' dod, dod'
  re, la' fa' <sold, si red sold>~ q4 sol
  do,8 sol' mi' <fad, lad dod fad>~ q4 fa
  <si, si'>8 fad' si <mi, mi'>~
  q fad' sold4
  la,8 mi' si' la~ la4 r
  <<
    {
      <fa do'>2 <red si'>
      <mi si'> <dod lad'>
      <red la'> mi
    } \\ {
      re4 re sold, sol
      do do fad, fa
      si si mi, sold
    }
  >>
  <la la'>2 r4 lad8 si,
  mi4 sol mi si
  mi sold sol fa
  mi sol mi re
  mi sold sol fa
  mi sol fad fa
  r2 r4 lad,16 si do re
  mi4 sold sol fa R1
  do'8 sol' lab do, sol' lab sib do
  do, fad la r r2
  sib,8 fa' solb lab sib, reb solb sib
  <sib, mi?> sol' r4 r2
  <reb, reb'>4. q8~ q4 <sol re'>
  reb8 reb' reb, <sol, sol'>~ q4 re'8 red
  <mi si'>4. <mi mi'>8~ q4 <sib' fa'>
  mi,8 si' <fa sib>2 dob8 sib
  <la la'>2 <do do'>
  <la la'> <mi mi'>
  <la la'> <si si'>
  <la la'> <mi mi'>
  <la la'> <sol sol'>
  <fa fa'>4 <mi mi'> <mib mib'>2
  r4 \clef treble la''''8 do, fa mib4.
  r2 r4 \clef bass
  <la,,,, mi' la>8 r
}

