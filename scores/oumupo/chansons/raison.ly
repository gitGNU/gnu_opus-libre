%-- Chansons Oulipiennes -- raison.ly -----------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

RaisonGrille =
\chordmode {
  re2*5/4:m sol re:m sol re:m sol re:m sol re:m sol
  mib:m lab mib:m lab mib:m lab mib:m lab mib:m lab
  re:m
} 

RaisonVoix =
\relative do' {
  \time 5/4
  \key re \locrian
  r2 r2 r16 re-. fa-. fa-. |
  mib8-- re mib16( re8) fa16~-- fa8 re mib8.-- re16-. r8 lab'~-> |
  lab4 r8 re,16-. re-. fa8.-- lab,16-- r8 sib~-- sib8. sib16-. |
  fa'16-- fa fa mib~ mib( re8) fa16~ fa8 re-. mib4-- r8 sib-. |
  lab'-> lab16-. mib~ mib mib8-- sib16 sib8-. re4.-- r4 |
  %%
  r4 r8 mib-. sib'-> sib16 lab~ lab8-- lab4 sib16( lab |
  re,4) r16 sib-. sib-. sib-. mib8-- sib16 mib~ mib lab8 fa16~-- fa4 |
  lab,8( sib mib fa) r lab,( sib re mib4) |
  r16 fa-. fa-. fa-. sib8.-> mib,16 mib8-. lab4.-> r8 re,16-. re-. |
  mib8.-- lab,16-- r8 sib4.-- r2 |
  %%
  r2 r2 r16 re-. fa-. fa-. |
  mib8-- re mib16( re8) sib16~-- sib8 mib-. lab8.-- mib16-- r8 sib-- |
  r re->~ re16 re-. re-. mib-. sib'8.( mib,16 fa8-.) lab,4-- fa'16 fa |
  mib8-- re16 mib-. r re8-. fa16~-- fa8 r sib( lab fa re) |
  r lab( sib re mib4) r2 |
  %%
  r4 r8 mib16 mib sib'8.-- fa16~-- fa8[ r16 lab--]~ lab4 |
  mib4-- r16 lab-. lab-. lab-. fa8-- re mib16( re8) sib16--~ sib8 lab16 lab |
  sib8-> lab16 sib r re8-. fa16--~ fa8 mib sib'8.-- mib,16--~ mib8 lab,-- |
  r4 re2-- r8 re( mib fa) |
  mib( re) mib16( fa lab4.) r2 |
  %%
  r2 r8 re,( mib fa) mib( re) |
  mib16( re lab4) mib'16 mib sib'8.-- re,16~-- re8 fa4( mib8-.) |
  r4 re-- re4.-- re8 fa4-- |
  r8 lab,( sib4.) mib8( fa2) |
  re2.-- r8 sib-. fa'4-.
}

RaisonGuitare =
\relative do' {
  % Ugh. Could be made a tad more elaborate...
  \repeat unfold 5 {
    re8. re16 la' <re fa>8.~ <re fa>8
    sol, re'8. <si sol'>16~ <si sol'>8 sol
  } \bar "||"
  \repeat unfold 5 {
    mib8. mib16
    sib' <mib solb>8.~ <mib solb>8
    lab, mib'8.
    <do lab'>16~ <do lab'>8 lab
  } \bar "||"
  \repeat unfold 5 {
    re,8. re16 la' <re fa>8.~ <re fa>8
    sol, re'8. <si sol'>16~ <si sol'>8 sol
  } \bar "||"
  \repeat unfold 5 {
    mib8. mib16 sib' <mib solb>8.~ <mib solb>8
    lab, mib'8. <do lab'>16~ <do lab'>8 lab
  } \bar "||"
  \repeat unfold 5 {
    re,8. re16 la' <re fa>8.~ <re fa>8
    sol, re'8. <si sol'>16~ <si sol'>8 sol
  } \bar "|."
}
