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
\relative do' {
  \clef bass
  \time 3/4
  do,4-.\mp r8 sol' do( re)
  do,4-. r8 sol' do( re)
  do,4-. fa8( sol) do( re)
  do,4-. r do'8( re)
  do,4-. r r8 do(
  re) fa sol( sib) do( re)
  do,(\cresc re) fa( sol) do( re)
  do,4-. fa8( sol sib fa')
  r4 do,8( re) sol( la)
  do( re) fa4-. do8( re)
  fa4-. do8( sol) re'( fa) |
  \time 6/4
  sol1~\fp sol4 r |
  sol1*1/2\< \hideNotes sol2\f\>\glissando \unHideNotes
  fad4\p r |
  sol8 mib32\p mib mib mib
  \tuplet 3/2 {si si si si la la la la re re re re}
  \acciaccatura si,16 \tuplet 5/4 {mib,8-. sol,-.->\sfz sol16-.\sfz}
  \tuplet 3/2 {r16 la'( fa')} si32( sold la dod sol'4) r
  \time 4/4
  r8 re~\> re2 r4\! |
  \time 3/2
  \tuplet 3/2 2 {
    sol,4\pp^"legato assai" mi sol mi sol mi sol mi sol
    mi sol mi sol mi sol
  } mi4 r |
  si'2.(\mp\> do fa,1) \tuplet 3/2 2 {
    r4\! sol\pp mi
    sol mi sol mi sol mi sol mi sol
    mi lab mi sol mi sol mi sol mi
  } r4 si'2\mf mib4(\> re) sib(
  \tuplet 3/2 {si) lab( sol~)} sol4 r\! \tuplet 3/2 2 {
    mi\pp sol mi
    sol mi sol mi sol mi sol mi sol
    mi sol mi sol mi si-- mi sol mi
    sol mi sol re-- mi sol
  } r2 |
  \time 3/4
  do,8(\pp re) fa4-. r
  re8( fa)^"leggiero" sol-. sib-. do-. re-.
  do,4-. r2 |
  sol'8( la) sib( do) re-. sol,-.
  do,( re) fa-. sol-. r4 |
  sib8(\mp do) re la( sib) do
  re,( fa) sol la sib do
  re( sol,) la mib sib4-. |
  re'8(\cresc sol,) la mib sib4-. |
  re'8( sol,) la mib sib4-. |
  re'8( sol,) la mi si4-. |
  mi'16(\f re) mi sol la4-> \tuplet 3/2 {mi8 mi mi}
  la4-> \tuplet 3/2 {re,8 re re} mi16( re) mi sol
  la4-> \tuplet 3/2 4 {do,8 do do fa( sib,) do
  fa,( sol) re la( re) sol} do16( re) mi sol
  r4 la2--\ff
  re,8( sol4) re( do8)
  fa4-- do8( mib4) lab,8
  sib( fa4) mib8( sib4)
  si--\dim mi8-. re-. mi4-.
  r sib8( lab) sib4-.
  r sol8-.\p fad-. r4 |
  do->\f r do-> r do8-.^"secco" do-. do4-. |
  do8( re) fa-. sol-. do-. re-.
  sol,(\< la?) sib( do) re-. fa-.
  do,4->\mf r do-> R2.
  do4( mib lab si2.)
  do,8-.\sfp do-. do4-. do8-. do-.
  do-.\cresc do-. do4-. re8-. re-.
  re4-. re'8 re re'4-- |
  do,-.\f fa8( sol) do( re)
  do,( re fa sol) do( re)
  do,4-. fa'8( re do sol)
  do( re,) fa( sol do re)
  do,4-. lab''8( mib) sib-> fa->
  do'-> re, sol'( fa,) do'( re)
  do,-> re'-> fa-> sol-> fad,,4-.\mp
  sol,8^"leggiero" sol fad' sol, sol fad'
  sol, sol \tuplet 3/2 {fad'\< fad fad} fad4-.\!
  r8 fa--\< sol-- do-- fa16( do' re sol)
  si4->\ff do,,-.\p r \bar "|."
}

RossignolTubaDeux =
\relative do' {
  \clef bass
  do,8(\mp re) fa4-. r
  do8( re) fa4-. r
  do8( re) fa4-. r
  do8( re fa sol) r4
  do,8( re) fa( sol) do( re)
  do,4-. r8 do( re) fa
  sol(\cresc do) re do,( re) fa
  sol( la) sib( do) re4-.
  do,8( re sol) fa( sib mib)
  do,4-. sol'8 sib la do
  do,( re) fa4-. do'8( re) |
  sol1\fp \glissando fad4 r |
  sol4~\< \tuplet 3/2 {sol8 re do~}
  \tuplet 5/4 {do16 sib fa sib re,}
  mib,32\f\> lab re do \tuplet 6/4 {re fa sol la do re}
  sol4\p r
  sol1*1/2\<\hideNotes sol2\f\>\glissando  \unHideNotes
  fad4\p r16 sol,,,->-. r8 |
  r do''~\> do2 r4\! |
  r2 mi,1~\p |
  mi4 fa,~fa2 \tuplet 3/2 2 {r4 sol'\pp mi
    sol^"legato assai" mi sol mi sol mi sol mi sol
    mi sol mi sol mi sol} mi4 r |
  si'(\mp fa,) mib''( re) si8(\> lab sol4)~|
  sol mi( fa,1)\!
  r4 sol'(\mf\> lab do) si( fa,) |
  \tuplet 3/2 2 {sol' do, mi~ mi\pp sol mi} sol r |
  \tuplet 3/2 2 {
    mi sol mi sol mi sol mi sol mi
    re-- mi sol mi sol mi sol do,-- sol'}
  fa,2.-- r4 \tuplet 3/2 {do'( re fa)}
  sol4--\pp fa8-.^"leggiero" sol-. do-. re-.
  do,4-. r2 |
  fa8( sol) la-. sib-. do-. re-.
  do,( re) fa4-. r |
  la8( sib) do-. re-. sol,( la)
  do,(\mp re) fa-. sol-. la-. sib-.
  do-. re-. reb,( mib) fa-. sol-.
  la( sib) do-. re-. la( do)
  re4--\cresc reb,8-. sol-. fa-. sib-. 
  do4-- reb,8-. sol-. fa-. sib-.
  mib4-- reb,8-. lab'-. fad-. si-.
  mi(\f re) sol4-> \tuplet 3/2 {re8 re re}
  sol4-> \tuplet 3/2 4 {do,8 do do re do fa}
  sol4-> \tuplet 3/2 4 {sib,8 sib sib do( fa,) sol
  do,( re) la mib( sol) re'} la'4-- |
  r mi'2--\ff |
  si8( sold4) la( si8) |
  do( sib4) sol8( solb4) |
  dod,4-- sold'8 mi4-- la,8 |
  sol4--\dim do8-. sib-. fad4-. |
  r fad8( mi) re4-. |
  r sib8-.\p si-. r4 |
  do->\f r do-> R2.
  do2( mib4 lab2.) |
  do,4->\mf r do-> r do8-.^"secco" do-. do4-. |
  re8( fa sol sib) do-. re-.
  sol,(\< do re fa) sol-. sib-.
  do,,4->\sfp r do8-. do-.
  do4-.\cresc do8-. do-. do-. do-.
  do4-. do'8 do do'4-- |
  do,8(\f re fa sol) do( re)
  do,4-. fa8( sol) do( re)
  do,( re fa sol) do( re)
  do,4-. fa'8( re) do-> sol->
  do-> re, fa( sol) do( re)
  do,4-. la''?8( mi) si-> fad->
  do'-> re,-. fa4-. si,,\mp
  r dod-.^"leggiero" si8-. dod-. |
  r dod-. si-. dod-. fa?4-.
  do8--\< re-- \tuplet 3/2 4 {fa( sol do re sol re')}
  sold4->\ff do,,,-.\p r
}
