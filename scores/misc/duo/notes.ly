%-- Duo -- notes.ly -----------------------------------------------%
% (c) 2003-2011 Valentin Villenave <valentin@villenave.net>

Date = "octobre 2003"

\language "italiano"

fluteUn =
\relative do' {
  \time 3/4
  do2.\mp~ do2 r4 R2.
  do4.\>( re sol2\!-"(bref)")\fermata r4 |
  R2.
  do,2( re4)~ re2.\<~ re2\! r4-"(bref)"\longfermata |

  % Page 2
  do4-.\mf -"(en rebondissant, pas sec.)"
  re-. sol-. re-. sol-. do,-. sol'-. do,-. re-.
  r re16-. re-. r8 sol16-. sol-. r8 |
  re16-. re-. r8 sol16-. sol-. r8 do,16-. do-. r8 |
  sol'16-. sol-. r8 r2 |
  sol4( re do) |

  r8 re-. r do-. r sol'-. |
  do,4( sol' re) do-.-\dyn "(meno)" re-. sol-.
  re-. sol-. do,-. sol'-. do,-. re-. |
  do-. re-. sol-. re-. sol-. do,-.
  sol'-. do,-. re-. |

  % Page 3
  do-. re-. sol-. re-. sol-. do,-. |
  \hairpinText "(poco)"
  sol'(\< do re8-.)\! r |
  \acciaccatura re16 do,4.\mf --( re--) |
  fad--( re--) fad-- do~\< |
  do4\! re-.-\dyn "p_sub." \acciaccatura si'16 sol4-. |
  re-. \acciaccatura si'16 sol4-. do,-. |
  \acciaccatura si'16 sol4-. do,-. re-. |
  \times 3/4 { do(\mf re fad si)} |
  re,-. -\dyn "p_sub." si'-. do,-. |
  \t {re(\< do fad} \t {si8 do re} |
  mib2. -\dyn "f_intenso" )~ mib4 mib~ mib8 re, |
  mib'2 \t {sol,8( mib' re,)} |

  % Page 4
  do--(\< re fad sol si4-.)\! |
  fad8--(\< sol si do re4-.)\! |
  si8(\< do re mib fa4-.)\! |
  la8(-"quasi clarinetto" fa) r si,-. la'( re,?) |
  \t {sol,( do) re} la'4-- \t {sol,8( mib') fa} |
  la4-- do,,16(\< fad) si mi la4--\! |
  \t {r8 fad,( sol} \t {la do re)} mib--\< fad--|
  la2.~\! la2 r4 R2.
  la2.~\ff la2\fermata -"(bref)" r4 R2.
  la2. si16\> mi8.\!~ mi2~ |

  % Page 5
  mi2\fermata -"(long)" r4 |
  mi8-| r r2 |
  mi16->\sfz\> mi-. red-. red-. si-. si-. lad-. lad-. sold-. sold-. sol-. sol-. |
  fa-.\! fa-. dod-. dod-. si-. si-. sol-. sol-. fad-. fad-. re-. re-. |
  mi4.-- r8 \t {mi''(-> do) la} |
  \t {sold( mi) re } \t {dod-- si-- sold--} sol4(\mf |
  mi do) r8 re~ ( | re do4 mib8-.) sol4( |
  fa reb do~) | do r reb16(\< fa) sol-. sib-. |
  \t {do8(\f re sol} \t {re sol do,} \t {sol' do, re)}|
  \t {do( re sol} \t {re sol do,} \t {sol' do, re)}|
  \t {do re sol} \t {re sol do,} \t {sol' do, re} |
  do4-. -\dyn "f_sempre" re-. sol-. re-. sol-. do,-. |

  % Page 6
  sol'( do, re8) r |
  \t {do( re sol} \t {re sol do,} \t {sol' do, sol)} |
  re'( re,-.) sol'( sol,-.) do,( sol'-.) |
  \t {do( re sol} \t {re sol do,} \t {sol' do, re)} |
  do( re fad re fad-.) r |
  re( do) fad( do) fad-. si-. |
  \t {do,( re sol)} \t {re sol,( do} \t {re sol) re} |
  \t {sol,( do re} \t {sol) re sol,(} \t {do re sol)} |
  lab,( do) re( fad si) lab,( |
  do) re( fad si) lab,( re) |
  \t {sol( do,) fa,} \t {do'-.\< sol'-. si-.} red-.\! r |
  \t {fa,,-.\< do'-. sol'-.} mib'->\! mib,,-. fa''-> fad,-. |
  la'4->-- \t {do,,,8(\p\< fa la} \t {sib reb mib} |
  sol-.->)\! r r4 sol16(-> la re la |
  re sol, la re sol,8) r r4 |

  % Page 7
  sol16( la re la re sol, la re sol,8) do,--~ |
  do la'16 re sol, la re la dod4 |
  do,16 la' re la do,8-. dod'--~ dod4 |
  sol16 la re la re sol, la re sol, la re la |
  re sol, la re sol, la re la re8-. la16 re |
  \t {sol,8 la re} la16 re sol, la \t {re8 sol, la} |
  sol16 la re sol, \t {la8 re sol,} re'-. sol-. |
  la2.\<~ la2~ la8-.\! do,-| -\dyn "sffz" |
  do,,-| -\dyn"sffz" r r2 \bar "|."
}


fluteDeux =
\relative do' {
  do2.\mp~ do2 r4 R2.
  do2.\>~ do2\!-"(bref)"\fermata r4 |
  R2. do2. sol'2.\<~ sol2\! r4-"(bref)"\longfermata |

  % Page 2
  do,4-.->\mf r2 R2.*2
  do4-. re-. sol-. re-. sol-. do,-. |
  sol'--( do, re-.) |
  r8 sol-. r re-. r do-. |
  re4( do sol') |
  r8 do,4( sol' re8) |
  do2.\mp(-"dolce espr." |
  re sol) re( sol2~
  sol8 re16 sol | do,2.) |

  % Page 3
  sol'2~ sol8
  \longHairpin
  \hairpinText "(poco)"
  do\<~ |
  do4\! do,4.. sol'16 |
  re2~ re8 r |
  do4-.\mp re-. sol-. re-. sol-. do,-. |
  sol'-. do,-. re-. |
  % TODO add stroke.
  \acciaccatura {do32[ fad]} re4.-- \mf do-- |
  fad-- \acciaccatura {do32[ re]} do4.-- |
  fad--( si8-.) r4 \acciaccatura {re,32[ fad]} |
  do4-. -\dyn "p_sub." re-. sol-. \times 3/4 {do,(\mf fad sol si)} |
  sol-. -\dyn "p_sub." do,-. re-. |
  do8->\mp re-. fad-> sol-. si4->-. |
  fad8-> re-. si'8-> sol-. do,4->-. |
  si'8-> do,-. re-. do-. fad-. sol-. |

  % Page 4
  mib'4.-- -\dyn "f_intenso" fa?4--( do8) |
  re( mib fa4) mib8( fa) |
  la( si,\< do re mib fa)\! |
  r re-. la'(-"quasi clarinetto." red,) r fad,-. |
  la'4-- \t {sol,8( re') mib} la4-- |
  \t {do,,8(\< sol') re'} la'4--\!
  do,,16( fa) sib-. mib-. |
  \t {r8 do,( mib} \t {fad sol la)}
  \t {do--\< re-- fad--} |
  la2.~\! la2 r4 R2. |
  la4.\ff si mi2\fermata -"(bref)" r4 |
  R2.
  la,2 si4 mi16\> red8.\!~ red2~ |

  % Page 5
  red2\fermata -"(long)" r4 |
  mi16->\sfz \> mi-. red-. red-. dod-. dod-. do-. do-. sib-. sib-. fad-. fad-. |
  mi-.\! mi-. do-. do-. si-. si-. sol-. sol-. fad-. fad-. mi8-. |
  mi''16-.\> mi-. red-. red-. dod-. dod-. la-. la-. sol-. sol-. red-. red-. |
  \t {mi8->\!( re) do} \t {la( sold) sol}
  \t {sold'->( sol) mi} |
  \t {re( do) sold} fad-- re-- r fad(\mf~ |
  fad mi4 do8-.) sol'4( |
  mib do) r8 sol'(~ |
  sol4 fa reb)~ |
  reb r \tt {do16(\< sol' do re fa} |
  sol4-.->)\! r2 | R2.*2
  \t {do,8\f re sol} \t {re sol do,} \t {sol' do, re)} |
  \t {do( re sol} \t {re sol do,} \t {sol' do, re)} |

  % Page 6
  \t {do re sol} \t {re sol do,} \t {sol' do, re} |
  do8.-.-> re,16( re'8.-.->) sol,16( sol'4-.->) |
  \t {do,8( re sol} \t {re sol do,} \t {sol') sol,( re')} |
  sol4(\< do re8)\! r |
  \t {do,( re sol)} \t {re( do) sol(} \t {do re sol)} |
  \t {re( do) sol(} \t {do re sol)} \t {re( do) sol} |
  do( re) fad( re) fad-. r |
  lab,(\< do re fad sol si)\! |
  \t {sol,( re' sol)} \t {re sol,( re'} \t {sol) re sol,(} |
  \t {re' sol) re} \t {fad,( re' sol)} \t {re fad,( do')} |
  \t {re(\< fad si} red)\! r \t {fa,,-.\< do'-. sol'-.} |
  red'4->\! \t {mib,,8( do') sol'} re'-. fa,,-. |
  \t {re(\p\< mib fa} \t {fad lab do} re)-. fad-.->\! |
  sol16\f->( la re la re sol, la re sol,8) r |
  r4 sol16( la re la re sol, la re |

  % Page 7
  sol,8) do,-. dod'4-> sol16( la re la |
  re) sol,( la) dod->~ dod4 re16 sol, la re |
  sol, dod8.-> re16 sol, la re sol, la re la |
  re sol, la re sol, la re la re8-. la16 re |
  sol, la re sol, la re sol, la re sol, la re |
  sol, la re sol, \t {la8 re sol,} re'16 sol, la re |
  \t {sol,8 la re} la16 re sol, la re8-. sol,-. |
  sol'2.\<~ sol2~ sol8-.\! do-| -\dyn "sffz" |
  do,,,-| -\dyn "sffz" r r2 \bar "|."
}
