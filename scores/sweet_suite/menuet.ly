%-- Sweet suite -- menuet.ly ---------------------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

MenuetClavecinMd =
\relative do' {
  \tempo "Ada G. O."
  \time 3/4
  <lab' mib'>4 <la re>8( <lab mib'> <fa sib>4)
  <mi si'>8( <fa sib>4) <fa sib>8 <la re>( <mi si'>
  <fa sib>2.)
  <sol do>8( <fad dod'> <la re> <fad dod'> <do' fa>4)
  <sib mib>8( <la mi'> <sol do>4) <mib sib'>8( <fa do'>
  <sol re'>2.)
  \tuplet 3/2 4 {
    <si fad'>8 <do fa> <si fad'>
    <si mi> <sib fa'> <si mi>
    <si fad'> <do fa> <si fad'>
    <do sol'> <mib lab> <do sol'>
    <reb solb> <sib fa'> <reb solb>
    <do sol'> <mib lab> <re la'>
    <sold dod> <sol re'> <sold dod>
  } <sol re'> <lad red> <la mi'>4
  \tuplet 5/4 {
    \stemDown <do fa>16
    \mg \stemUp <si, fad'>
    \md \stemDown <la' re>
    \mg \stemUp <sib, mib>
    \md \stemDown <mi si'>
  } \tuplet 3/2 {
    \mg \stemUp <dod, sold'>8^(
    \md \stemDown <red' lad'> <fad si>)
  } \stemNeutral <fad dod'>( <sol do>)
  \tuplet 3/2 {
    \mg \stemUp <sol,, re'>(
    \md \stemDown <fa'' sib> <re la'>)
  } \tuplet 5/4 {
    \mg \stemUp <lab, reb>16
    \md \stemDown <do' sol'>
    \mg \stemUp <fa,, sib>
    \md \stemDown <si' mi>
    \mg \stemUp <do,, sol'>
    \md \stemNeutral
  } <sib'' fa'>8( <si mi>)
  \tuplet 3/2 {
    \mg \stemUp <dod,, sold'>(
    \md \stemDown <sib'' fa'> <si mi>)
  } \stemNeutral r <do fa>-- r4
  <lab mib'>4 <dod fad>8( <lab mib'> <fa sib>4)
  <mi si'>8( <fa sib>4) <fa sib>8 <la re>( <solb dob>
  <mib sib'>2.)
  <re la'>8( <fa sib> <mi si'> <fa sib> <lab mib'>4)
  <lab reb>8( <sol re'> <fa sib>4) <do sol'>8( <re la'>
  <mi si'>2.)
  \bar "|."
}

MenuetClavecinMg =
\relative do' {
  \clef bass
  <mi, si'>4-- <dod fad>-- <do sol'>--
  <sol' do>-- <fad dod'> <red sold>
  <mi si'> <red sold> <re la'>
  <si mi> <sib fa'> <lab mib'>
  <si fad'> <reb lab'> <fad si>
  <mib lab> <fa do'> <fad si>
  <la, mi'> <sib mib> <sol re'>
  <dod fad> <sib fa'> <si mi>
  <re la'> <sold dod> <re' sol> \clef treble
  s s <sib fa'> \clef bass
  s s r s <re, la'> <fa sib>
  <mi si'> <la re> <lab mib'>
  <sol do> <fad dod'> <fa sib>
  <solb dob> <reb lab'> <re sol>
  <lab mib'> <la re> <do fa>
  <si fad'> <re sol> <sib mib>
  <mi, si'> <do' fa> <mi si'>
}
