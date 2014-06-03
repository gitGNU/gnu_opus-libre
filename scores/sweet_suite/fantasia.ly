%-- Sweet suite -- fantasia.ly -------------------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

FantasiaClavecinMd =
\relative do' {
  \time 3/4
  \t 4 {
    % 0 %
    \mg fad,8 sib re \md dod fa? la
    \mg fad, sib re \md dod fa la
    \tupletsOff
    \mg fad, sib re \md dod fa la
    si mib, sol? do mi, sold fa fad sol |
    \mg fad, sib re \md dod fa la
    \mg fad, sib re \md dod fa la
    \mg fad, sib re \md dod fa la
    si mib, sold do mi, sol sold la sib
    \mg fad, sib re \md dod fa la
    \mg sib, re fad \md fa' dod la
    \mg fad, sib re \md dod fa la
    mib' sol,? si mi sold, do re red mi |
    \bar "||"

    % I %
    la mi si sib mib lab
    la mi si sib mib lab
    la mi si sib mib lab
    la re mi, sib' mib fa, fad sol sold |
    la mi si sib mib lab
    la mi si sib mib lab
    la mi si do fa sib
    si mi fad, do' fa sol, sold la lad |
    si fad dod re sol do
    si fad dod re sol do
    dod sold red do' sol re
    fad sold dod sol la re sold, la lad |
    \bar "||"

    % II %
    fa' sold, si sib sol mi
    re fa sold sol mi dod
    si re fa mi dod sib
    do, mib fad la do mib fad la do |
    fa, sold si sib sol mi
    re fa sold sol mi dod
    si re fa mi dod sib
    la do mib fad la do mib fad, la |
    fa sold si re si sold
    mi sol sib dod sib sol
    re fa sold si sold fa
    do mib fad
  } la2 |
  \bar "||"

    % III %
  \pl \t 4 {
    \tupletsOff
    re,8 sol, do, sol' do, sol'
    re' sol, do, sol' do, sol'
    dod fad, si, fad' si, fad'
  } {re'2 re4~ re dod2}
  \t 4 {
    re8 sol, re' la' mi' la, mi' la, mi
  } |
  \pl \t 4 {
    \tupletsOff
    re8 sol, do, sol' do, sol'
    re' sol, do, sol' do, sol'
    do fa,? sib, fa' sib, fa'
  } {re'2 re4~ re do?2}
  \t 4 {
    fa8 sib, mib, fa' sol? re' fa do sib
  } |
  \pl \t 4 {
    \tupletsOff
    re,8 sol, do, sol' do, sol'
    re' sol, do, sol' do, sol'
    mib' lab, reb, lab' reb, lab'
  } {re2 re4~ re mib2}
  \t 4 {
    la,8 re, la' mi' si' mi, la, re, sol,
  } |
  \bar "||"

    % V %
  r2 <sold re'>4~
  <sold re'> <sold re'>8 sold' <sold re'>4
  \t 4 {
    \tupletsOn
    fa''8 si, re
    \tupletsOff
    sold, si sib mi, sol dod, |
  }
  r2 <fa,, mib'>4~
  <fa mib'>4. <mi' la>
  \t 4 {
    \tupletsOn
    mib8 reb' si'
    \tupletsOff
    la, sol' fa' fa sol, la, |
  }
  <fad' lad>4. <fa si>4 <sol, la'>8
  \t {
    \tupletsOn
    <mib' reb'>8 <mi do'> <do' mi>
    \tupletsOff
  } <re, re'>4
  \t {
    <reb mib'>8 lab' <si fa'>
  }  <lad, fad'>4. re,8
  \t {re'8 sold re'} |
  \bar "||"

    % V %
  \stemUp mid,4. <fad, red'>8 mid'4~
  \stemNeutral
  mid8 <la, red>
  \stemUp fad'4 <sold, mid'>
  \stemNeutral
  \tupletsOn
  \t {sib,8 mib la} sold do, fad,4 |
  \stemUp sol''4. <la, fad'>8 sol'4~
  \stemNeutral
  sol8 <do, fad>
  \stemUp sib'4 <do, la'>
  \stemNeutral
  \t {lab,8 mi' dod'}
  \tupletsOff
  \t {re sol, sib,} la4 |
  \stemUp sib''4. <do, la'>8 do'4~
  \stemNeutral
  do8 <reb, sib'>
  \stemUp reb'4. <la do>8
  <fad mib'> <sol reb'>
  \tupletsOn
  \t {<sib mi> <fa re'> <dod' mi>}
  \tupletsOff
  \t {<la mib'> <sold fa'> <sib mi>}
  \bar "||"

    % VI %
  \t 4 {
    \mg \stemUp sib,, lab solb
    \stemDown la sol fa
    \stemUp sib lab solb \stemDown la sol fa
    \stemUp sib do re \stemDown reb \md mib fa
    \mg \stemUp sib, lab solb mi re do sib lab solb |
    sib' lab solb \stemDown la sol fa
    \stemUp sib lab solb \stemDown la sol fa
    \stemUp sib do re \stemDown reb \md mib fa
    \stemUp do re mi fa sol la sib do re |
    \stemDown red dod si \stemUp do sib lab
    \stemDown re do sib \stemUp si la sol
    \stemDown dod si la \stemUp sib lab solb
    fa mib reb do \mg sib lab sol fa mib |
    \bar "||"

    % VII %
    \stemNeutral
    fa,, mi' mib' \md re' dod' do'
    \mg fa,,,,, mi' mib' \md re' dod' do'
    \mg fa,,,,, mi' mib' \md re' \mg mib, mi,
    \md do'''' reb, do' reb, do' reb, do' reb, re, |
    \mg fa,,, mi' mib' \md re' dod' do'
    \mg sib,,,, la' sold' \md sol'? fad' fa'
    \mg la,,,,, sold' sol' \md fad' \mg sol, sold,
    \md \stemUp fa'''' solb, fa' solb, fa' solb, fa' solb, sol, |
    \stemNeutral
    \mg fa,,, mi' mib' \md re' dod' do'
    \mg fa,,,,, mi' mib' \md re' dod' re,
    \mg fa,,, mi' mib' \md re' \mg mib, mi,
  }
  \md r4 <si''' lad'>8 r r <do si'> |
  \bar "||"

    % VIII %
  \t 4 {
    \mg fad,, sol sold \md sol' sold la
    \mg fad, sol sold \md sol' sold la
    \mg fad, sol sold \md sol' sold la
    mid red mi fad re red mid red mi |
    \mg fad, sol sold \md sol' sold la
    \mg do,, dod re \md sib'' si do
    \mg sol, sold la \md fad' sol sold
    mi re red fa red mi mib re dod |
    \mg \stemDown fad, sol sold \stemUp lad si do
    \md \stemDown red mi fa \stemUp la lad si
    \stemDown mi fa fad \stemUp do' dod red
    re,, mib mi re mib mi re mib mi
    \bar "|."
  }
}

FantasiaClavecinMg =
\relative do' {
  \clef bass

    % 0 %
  s2.*2
  \t 4 {
    \tupletsOff
    mi,8 do' sold mib si' sol sib la sold |
  }
  s2.*2
  \t 4 {
    mi8 do' sol? mib si' sold sol fad fa |
  }
  s2.*2
  \t 4 {
    do8 sold' mi si sol' mib reb do si |
  }

    % I %
  \tupletsOn
  fad4. sol4 mid8 |
  \t {la sold do} sib4 \t {si8 mi, dod'} |
  red,2 \t 4 {mi''8 red re
    \tupletsOff
    dod red, do'~ do fa, fad mi sold sol
  } \t {si4 la sib} r |
  r r8 do, la sold |
  \pl {mib solb} sib4 <sol la>8 <fa si> r4 |
  <sol si>8 sold mi4 r |
  <re fad>2~ <re fad>8 <fa do'> |

    % II %
  \clef treble
  \t 4 {
    sol'''8 mi dod si re fa
    dod sib sol fa lab si
    sol mi dod si re fa
    \clef bass
    do la fad
  } mib4 r |
  \clef treble
  \t 4 {
    sol''8 mi dod si re fa
    dod sib sol fa lab si
    sib sol mi re fa sold
    la mib fad
  } do fad,4. |
  \t 4 {
    mi''8 dod sib sol sib dod
    re si sold fa sold si
    sib sol mi dod mi sol
    do la fad mib do la
    \clef bass
    fad mib do |
  }

    % III %
  \pl {la2 la4~ la sib2}
  \t 4 {
    \tupletsOff
    la8 mi' si' mi, si' mi,
    la, mi' si' mi, si' mi,
    sib fa'? do' fa, do' fa,
  }
  \t 4 {
    la, mi' la, re, sol, re' do sol' re'
  } |
  \pl {la2 la4~ la si?2}
  \t 4 {
    \tupletsOff
    la8 mi' si' mi, si' mi,
    la, mi' si' mi, si' mi,
    si fad' dod' fad, dod' fad,
  }
  \t 4 {
    solb, reb' lab' reb, solb, dob, solb' reb' lab'
  }
  \pl {la,2 la4~ la solb2}
  \t 4 {
    \tupletsOff
    la8 mi' si' mi, si' mi,
    la, mi' si' mi, si' mi,
    solb, reb' lab' si, fad' dod'
  }
  \t 4 {sol re' sol, do, fa, do'}
  sol'4 |

    % IV %
  \t 4 {
    re,8 sold re sold re sold
    re sold re sold re sold
    re sold re sold re sold
  }
  re sold re' sold re'4 |
  \t 4 {
    \tupletsOn
    \stemUp re,,8 do' \md \stemDown sib'
    sib \mg \stemUp do, re,
    \tupletsOff
    re do' \md \stemDown sib'
    sib \mg \stemUp do, re,
    mib reb' \md \stemDown si'
    si \mg \stemUp reb, mib,
  } \stemNeutral
  re4. sold4 fad8 |
  \t 4 {
    mi8 do' sold' sold do, mi,
    mi do' sold' sold do, mi,
    fa dod' la' la dod, fa,
    fa? si fa' \stemUp si, la'
    \md \stemDown sol'
    \mg \stemNeutral la, fa' dod' |
  }

    % V %
  \t 4 {
    \md \stemDown mid sold, \mg \stemUp si,
    \stemNeutral dod mi, sol,
    \md \stemDown mid''' sold, \mg \stemUp si,
    \stemNeutral dod mi, sol,
    \md \stemDown fad''' do mib, \mg
    \stemNeutral dod mi, sol,
    dod mi, sol, fa re' si' fa re' si' |
    \md \stemDown sol'' sib, \mg \stemUp dod,
    \stemNeutral re fa, sold,
    \md \stemDown sol''' sib, \mg \stemUp dod,
    \stemNeutral re fa, sold,
    \md \stemDown dod'' mi sol, \mg
    \stemNeutral re fa, sold,
    si re, fa, fa si sold' fad mib' do' |
    \md \stemDown sib'' dod, \mg \stemUp mi,
    \stemNeutral fa sold, si,
    \md \stemDown do''' mib, \mg \stemUp fad,
    \stemNeutral sold si, re, \clef treble
    \md \stemDown reb''' mi, \mg \stemUp sol,
    \stemNeutral si re, fa,
    re'' fa, sold, mib'' fad, la, mi'' sol, si, |
    \clef bass
  }

    % VI %
  \md R2.
  \mg s2.
  \t 4 {
    \stemDown
    mib,8 reb dob sib lab solb fa mib reb |
  } \stemNeutral
  \md R2.
  \mg s2.
  \t 4 {
    sol'8 la si
    \md \stemDown re mi fad la si dod |
  }
  \mg R2.*2
  \t 4 {
    si,8 la sol re? do sib mi, re do
  }

    % VII %
  \stemNeutral
  s2.*2
  r8 <si' lad'>4 <lad si'>8 <do la'> dod' |
  s2.*2
  \tupletsOn
  si8\rest \md \stemDown <la sol'>~
  \t {<la sol'> <fad lab'> <sib fa'>}
  <do si'>4 |
  \mg \stemNeutral
  \tupletsOff
  s2.*2
  \t 4 {
    fa,,,8 mi' fa, mi' fa, mi' fa, mi' mib'
  }

    % VIII %
  s2.*2
  \t 4 {
    si'8 dod do sib \md re \mg dod si dod do
  }
  s2.*2
  \t 4 {
    do8 \md re \mg dod si dod do
  } sib4 |
  s2.
  R2.
  \t 4 {
    \md re8 \mg dod do
    \md re \mg dod do
    \md re \mg dod do
  }
}
