%-- Études pour contrebasse -- schubert.ly -------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Schubert =
\relative do' {
  \tocItem \SchubertTitre
  \clef bass
  \tempo "Allegro giusto"
  \key mi \minor
  mi,2(\p\< si') lad(\> si4-.) sol8.-.\! fad16-. |
  mi2-- si-- sol( mi4) r |
  mi'2(\p do') re( do4-.) mi,8.-. fad16-. |
  sol2-- si,-- sol( mi4) r |
  sol2^"pizz." mi4 r |
  sol2 mi4 mi^"arco"(~\mp \upbow
  mi la si do) si2( mi,4-.) re' |
  do2( mi,4-.) do' si2( mi,4-.) mi'~(\mf \upbow |
  mi la si do) si2( mi,4-.) sol,~(\< \upbow |
  sol sib) do--( re--) re2--\f re-- |
  sib2(\> sol4)\! r |
  sib2^"pizz." sol4 r |
  r2 sol4 r \bar "||"
  sol'2^"arco"--(\pp sol--) sol4(-. si!-. la-. si-.) |
  mi,2(-- mi4--) r mi(-. la-. sol-. la-.) |
  re,2( sol4) r sol(-. si-. la-. si-.) |
  mi,2(-- mi4--) r la(-. fad-. re-. do-.) |
  \phrasingSlurDashed
  si2\( sol'4\) r sol(-.\upbow\< si-. la-. si-.) |
  re2(\mp do4) r | mib,2^"pizz." mib4 r |
  do'2(^"arco" si4) r | re,2^"pizz." re4 r |
  si'2(^"arco"\dim la4) r | fa,2^"pizz." la4 r |
  la'2(^"arco" sol4) r | do,2^"pizz." do4 r |
  sol'4(^"arco"\pp fa) fa^"pizz." red |
  mi2(^"arco"\p si') lad( si4-.) sol8.-. fad16-. |
  mi2( si) lad( si4) sol8.-- fad16 |
  mi4-- r si'^"pizz" r |
  <mi, mi'>\arpeggio r r2
  \bar "|."
  %
  %
  %
  \break
  \key sol \minor
  \time 2/2
  \tempo Moderato
  \partial 4 sib''4(\upbow\pp
  \grace { la16[ sib] } la4 sol) re'4.-> sib16( sol)
  re2. <sib re>4-. <do re>-. <sib re>-. <la re>-.
  <mib' sol>-._"(sul A e D)" <re\CaV fad>2. do'4(\upbow
  \grace { sib16[ do] } sib4 la) mib'4. do16( la)
  re,2. <re re>4-. <re mib>-. <re fad>-.
  <re\CaV sol>-. <re la'>-. <fad do'>2( <sol sib>4)
  re4\mf \grace { do16([ re] } do4 la do) re
  \grace { do16([ re] } do4) la8( do) re4 mib'(
  \grace { re16[ mib] } re4 do) sol'4.->\CaV mib16( do)
  sol2. <mib sol>4-. <fa sol>-. <mib sol>-. <re si'>-.
  <lab' do>-. <sol si>2. fa4
  \grace { mib16([ fa] } mib4 re) sold4. fad16( sold)
  la8->\f la, la la la4-. <mi si'>-.\p <dod' mi>-.
  <mi, si'>-. <dod' mi>-. <sol la>-.
  re''8->\f re, re re re4-.
  <sol sib>-.\p re-. <sol la>-. <re mib>-. <fad la>-.
  r2. sib4(\pp \grace { la16[ sib] } la4 sol) re'4.-> sib16( sol)
  re2. sib4\mf \grace { la16([ sib] } la4 sol la) sib
  \grace { la16([ sib] } la4) sol8( la) sib4
  <do re>4-. sol'8->\sfz sol, sol sol sol4-.
  <re' la'>-.\p <re sib'>-. <re la'>-. <re sib'>-. <re la'>-.
  sol8->\sfz sol, sol sol sol4-.
  <re' la'>-.\p <re sib'>-. <re la'>-. <re sib'>-. <re la'>-.
  sol,2--\f <sol' sib> re-- <re' fad>--
  <sol, sib sol'>4\arpeggio r r2 \bar "|."
}

