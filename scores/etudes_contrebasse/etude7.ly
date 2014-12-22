%-- Études pour contrebasse -- etude7.ly ---------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"


Sept =
\relative do' {
  \tocItem \SeptTitre

  \override BreathingSign #'text = \markup {
    \hspace #0
    \raise #2
    \musicglyph #"scripts.rvarcomma"
  }

  \clef bass
  \time 2/4
  \tempo "Andante doloroso"
  mib,16\((\p fa mib fa) mi( fad mi fad)
  mib( fa mib fa) mi( fad mi fad)
  mib( fa)\) re(\upbow dod si la sold8--) \breathe
  la'16\((\mp si la si) sib( do fad, sib)
  la( si la si) sib( do fa, fad)
  sol(\> la sol la) reb,( mib reb mib)
  sol( la)\) re,(\p \upbow do sib la sold8--) \breathe
  sold16(\pp ^"(maldestro)" la sib do)
  re( do sib la)
  sold(\< la si dod) re( dod mi fad)\mf
  dod(\pp re mib fa) sol( fa mib re)
  dod(\< re mi fad) sol( fad sib do)
  la\((\mf si la si) lab( sib lab sib)
  la( si la si) lab( sib lab sib)
  la( si)\) re,(\p \upbow do sib la sold8--)\breathe
  mi'16(\mp fad sol la) mib( fa sol lab)
  mi( fad sol la) mib( fa sol lab) \breathe
  si,(\p dod re mib) sib( do re mi) \breathe
  dod(\pp do sib la) sold4-- \breathe
  mib'16(\(\mp fa sol la) si( mi, fad sol)
  lab(\< sib mib, fa) sol( la si mi,)
  fad(\> sol lab sib)\) sol-. re-. sold,8-.\breathe
  re'16(\p do sib la) sold( la si dod)
  mib( re dod si) la( sib do re)
  mi(\< re) fa( fad) la( sol) sib(\mf si)\breathe
  mib,(\(\p fa mib fa) mi( fad mi fad)
  mib( fa) r mi( fad mi fad) mib(
  fa\dim mib fa) r mi( fad)\) r8
  do16(\> \upbow si sib la sold8-.)\! fa-.
  \bar "|."
}
