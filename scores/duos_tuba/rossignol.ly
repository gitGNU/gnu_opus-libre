%-- Tuos Duba -- rossignol.ly -------------------------------------%
% 2014, Valentin Villenave <valentin@villenave.net>

\language "italiano"

\header {
  title = "Tuos Duba"
  date = "juin 2014"
  composer = "Valentin Villenave"
}

Titre = "Tuos Duba"

RossignolTitre = "Le gros rossignol"
TubaUnInstr = "Tuba 1"
TubaDeuxInstr = "Tuba 2"

RossignolTubaUn =
\relative do {
  \clef bass
  \time 3/4
  re4-.\mp r8 la' re( mi)
  re,4-. r8 la' re( mi)
  re,4-. sol8( la) re( mi)
  re,4-. r re'8( mi)
  re,4-. r r8 re(
  mi) sol la( do) re( mi)
  re,(\cresc mi) sol( la) re( mi)
  re,4-. sol8( la do sol')
  r4 re,8( mi) la( si)
  re( mi) sol4-. re8( mi)
  sol4-. re8( la) mi'( sol) |
  \time 6/4
  \tempo "Largo (ad lib.)"
  la1~\fp la4 r |
  la1*1/2\< \hideNotes la2\f\>\glissando \unHideNotes
  sold4\p r |
  la8-- fa32\p fa fa fa
  \tuplet 3/2 {dod dod dod dod si si si si mi mi mi mi}
  \acciaccatura dod,16
  \tuplet 5/4 {fa,8*1/2[-. s la,-.->\sfz s la16]-.->\sfz}
  \tuplet 3/2 {r16 si'( sol')} dod32( lad si red la'4) r
  \time 4/4
  r8 mi~\> mi2 r4\! |
  \time 3/2
  \tempo "Adagietto"
  \tuplet 3/2 2 {
    la,4\pp^"legato assai" fad la fad la fad la fad la
    fad la fad la fad la
  } fad4 r |
  dod'2.(\mp\> re sol,1) \tuplet 3/2 2 {
    r4\! la\pp fad
    la fad la fad la fad la fad la
    fad sib fad la fad la fad la fad
  } r4 dod'2\mf fa4(\> mi) do(
  \tuplet 3/2 {dod) sib( la~)} la4 r\! \tuplet 3/2 2 {
    fad\pp la fad
    la fad la fad la fad la fad la
    fad la fad la fad dod-- fad la fad
    la fad la mi-- fad la
  } r2 |
  \time 3/4
  \tempo "Poco a poco tempo I"
  re,8(\pp mi) sol4-. r
  mi8( sol)^"leggiero" la-. do-. re-. mi-.
  re,4-. r2 |
  la'8( si) do( re) mi-. la,-.
  re,( mi) sol-. la-. r4 |
  do8(\mp re) mi si( do) re
  mi,( sol) la si do re
  mi( la,) si fa do4-. |
  mi'8(\cresc la,) si fa do4-. |
  mi'8( la,) si fa do4-. |
  mi'8( la,) si fad dod4-. |
  fad'16(\f mi) fad la si4-> \tuplet 3/2 {fad8 fad fad}
  si4-> \tuplet 3/2 {mi,8 mi mi} fad16( mi) fad la
  si4-> \tuplet 3/2 4 {re,8 re re sol( do,) re
  sol,( la) mi si( mi) la} re16( mi) fad la
  r4 si2--\ff
  mi,8( la4) mi( re8)
  sol4-- re8( fa4) sib,8
  do( sol4) fa8( do4)
  dod--\dim fad8-. mi-. fad4-.
  r do8( sib) do4-.
  r la8-.\p sold-. r4 |
  re->\f r re-> r re8-.^"secco" re-. re4-. |
  re8( mi) sol-. la-. re-. mi-.
  la,(\< si?) do( re) mi-. sol-.
  re,4->\mf r re-> R2.
  re4( fa sib dod2.)
  re,8-.\sfp re-. re4-. re8-. re-.
  re-.\cresc re-. re4-. mi8-. mi-.
  mi4-. mi'8 mi mi'4-- |
  re,-.\f sol8( la) re( mi)
  re,( mi sol la) re( mi)
  re,4-. sol'8( mi re la)
  re( mi,) sol( la re mi)
  re,4-. sib''8( fa) do-> sol->
  re'-> mi, la'( sol,) re'( mi)
  re,-> mi'-> sol-> la-> sold,,4-.\mp
  la,8^"leggiero" la sold' la, la sold'
  la, la \tuplet 3/2 {sold'\< sold sold} sold4-.\!
  r8 sol--\< la-- re-- sol16( re' mi la)
  dod4->\ff re,,-.\p r \bar "|."
}

RossignolTubaDeux =
\relative do {
  \clef bass
  re8(\mp mi) sol4-. r
  re8( mi) sol4-. r
  re8( mi) sol4-. r
  re8( mi sol la) r4
  re,8( mi) sol( la) re( mi)
  re,4-. r8 re( mi) sol
  la(\cresc re) mi re,( mi) sol
  la( si) do( re) mi4-.
  re,8( mi la) sol( do fa)
  re,4-. la'8 do si re
  re,( mi) sol4-. re'8( mi) |
  la1\fp \glissando sold4 r |
  la4~\< \tuplet 3/2 {la8 mi( re)~}
  \tuplet 5/4 {re16 do( sol do mi,)}
  fa,32(\f\> sib mi) re( \tuplet 6/4 {mi sol la si re mi}
  la4)\p r
  la1*1/2\<\hideNotes la2\f\>\glissando  \unHideNotes
  sold4\p r16 la,,,->-. r8 |
  r re''~\> re2 r4\! |
  r2 fad,1~\p |
  fad4 sol,~sol2 \tuplet 3/2 2 {r4 la'\pp fad
    la^"legato assai" fad la fad la fad la fad la
    fad la fad la fad la} fad4 r |
  dod'(\mp sol,) fa''( mi) dod8(\> sib la4)~|
  la fad( sol,1)\!
  r4 la'(\mf\> sib re) dod( sol,) |
  \tuplet 3/2 2 {la' re, fad~ fad\pp la fad} la r |
  \tuplet 3/2 2 {
    fad la fad la fad la fad la fad
    mi-- fad la fad la fad la re,-- la'}
  sol,2.-- r4 \tuplet 3/2 {re'( mi sol)}
  la4--\pp sol8-.^"leggiero" la-. re-. mi-.
  re,4-. r2 |
  sol8( la) si-. do-. re-. mi-.
  re,( mi) sol4-. r |
  si8( do) re-. mi-. la,( si)
  re,(\mp mi) sol-. la-. si-. do-.
  re-. mi-. mib,( fa) sol-. la-.
  si( do) re-. mi-. si( re)
  mi4--\cresc mib,8-. la-. sol-. do-.
  re4-- mib,8-. la-. sol-. do-.
  fa4-- mib,8-. sib'-. sold-. dod-.
  fad(\f mi) la4-> \tuplet 3/2 {mi8 mi mi}
  la4-> \tuplet 3/2 4 {re,8 re re mi re sol}
  la4-> \tuplet 3/2 4 {do,8 do do re( sol,) la
  re,( mi) si fa( la) mi'} si'4-- |
  r fad'2--\ff |
  dod8( lad4) si( dod8) |
  re( do4) la8( lab4) |
  red,4-- lad'8 fad4-- si,8 |
  la4--\dim re8-. do-. sold4-. |
  r sold8( fad) mi4-. |
  r do8-.\p dod-. r4 |
  re->\f r re-> R2.
  re2( fa4 sib2.) |
  re,4->\mf r re-> r re8-.^"secco" re-. re4-. |
  mi8( sol la do) re-. mi-.
  la,(\< re mi sol) la-. do-.
  re,,4->\sfp r re8-. re-.
  re4-.\cresc re8-. re-. re-. re-.
  re4-. re'8 re re'4-- |
  re,8(\f mi sol la) re( mi)
  re,4-. sol8( la) re( mi)
  re,( mi sol la) re( mi)
  re,4-. sol'8( mi) re-> la->
  re-> mi, sol( la) re( mi)
  re,4-. si''?8( fad) dod-> sold->
  re'-> mi,-. sol4-. dod,,-.\mp
  r red-.^"leggiero" dod8-. red-. |
  r red-. dod-. red-. sol?4-.
  re8--\< mi-- \tuplet 3/2 4 {sol( la re mi la mi')}
  lad4->\ff re,,,-.\p r
}
