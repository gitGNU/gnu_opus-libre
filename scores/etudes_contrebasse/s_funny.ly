%-- Études pour contrebasse -- funny.ly ----------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Funny =
\relative do' {
  \tocItem \FunnyTitre
  \set Timing.beamExceptions = #'()
  \clef bass
  \tempo "Swing ballad"
  \key re\minor
  re,4^"(pizz.)"\mf la'8\> fa~\! fa4 re
  dod la'8\> fa~\! fa4 dod
  do la'8\> fa~\! fa4 do
  si la'8 fa~ fa4 \t {r8 do si}
  sib?4\mp re sib la sol sib sol' r8 re
  mib2 sib4 \t {r8 do sib} la2\< \acciaccatura do8 dod2 |
  re4\mf sib'8\> la~\! la4 fa8 re
  dod4 sib'8\> la~\! la4 \t {r8 re, dod}
  do4 sib'8\> la~\! la fa re do
  si\< la'\! r sol re4 si |
  sib la sol fa mi re' sol sib,8 la8 |
  sold4 si fad' sold, sol8 sib fa'\> mi~\! mi4 do |
  \bar "||"
  fa,\p fa sol sol la la'8\> sol~\! sol4 do, |
  fa, fa' sol, sol' la,8 fa' \t {la\> re, sol~\!} sol4 do, |
  fa, fa' sol sol, la dod fa8 mib do4 |
  sib8\< re fa sol~\! sol4 \t {r8 do, sib} |
  la2 mib'\prall -\markup \tiny \flat
  \bar "||"
  re4 r r8 mi(\upbow ^"(arco)"\mf fa4-.)
  la2( \t {fa4)\< re( dod)}
  do\fp la'( sib la)
  mi2.( fa4)
  sol8(\mp\< la sib la) sol( fa) mib( re)
  \t {mib4 sol sib} la(--\! la,--)
  re4-.\pp la'8-. fa~(\downbow \t {fa la fa} \t {la fa la)}
  fa-.\upbow dod-. la'-. fa~(\downbow \t {fa la fa} \t {la fa la)}
  re,-.\upbow do-. la'-. fa~( \t {fa la fa)} \t {la( fa la)}
  sib,4\< re mib sol,
  fa(\mp la) mi( dod')
  re4-. r \t {la'^"pizz."\< fa re}
  dod\mf \t {la'4 fa8~} fa4 dod
  \t {do8 re la'~} la4 re, do
  si re fa \t {sol8\< sold la}
  sib2\f fa la4 la, sol'2 |
  re4~ \t {re fa8} mib2 |
  do\> fa,4 la | sib2\! \t {r4 sib8} \t {si4 do8-.}
  r2 r4 \t {r8 la do}
  fa,2\mp \acciaccatura sold'8 la4~\>\t {la fa8\!} r4 do fa, r
  \bar "|."
}
