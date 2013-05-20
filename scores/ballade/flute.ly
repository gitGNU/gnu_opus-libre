%-- Ballade -- flute.ly -------------------------------------------%
% (c) 2003-2010 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Titre = "Ballade pour un mois de mai"
FluteInstr = "Flûte"
PianoInstr = "Piano"

\header {
  title = \markup {
    \vconcat
    \center-column {
      \larger "Ballade"
      \smaller "pour un mois de mai"
      \vspace #.5
    }
  }
  subtitle = "pour flûte et piano"
  composer = "Valentin Villenave"
  date = "mai 2003"
}

\paper {
  first-page-number = #-1
  min-systems-per-page = #4
}

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    ""
    \line \italic {
      Pour
      \concat { M \super lle}
      F., à l'occasion de ses 20 ans.
    }
  }
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2003-2010.
      }
      \line {
        \with-url #"http://valentin.villenave.net"
        \typewriter http://valentin.villenave.net
      }
      \vspace #.5
      \override #'(line-width . 100)
      \justify {
        Cette partition est publiée suivant les termes de la licence
        \with-url #"http://fr.wikipedia.org/wiki/Wikipedia:CC-BY-SA"
        \bold { Creative Commons, Paternité, Partage des
        conditions initiales à \concat {l'identique \medium . }}
        Vous pouvez la copier, la modifier et la jouer \italic librement
        sans contrevenir au droit d'auteur, à condition de respecter les
        termes de la licence (notamment en veillant à mentionner le nom
        de l'auteur et l'adresse web d'origine).
      }
      \vspace #.5
      \line {
        Gravure réalisée au moyen du logiciel libre
        \with-url #"http://www.LilyPond.org"
        \concat {\bold "GNU LilyPond" ,}
        \concat { #(ly:export (string-append "version " (lilypond-version) ".")) } 
      }
    }
  }
}
\pageBreak

Mesures = {
  \tempo \markup \indic "très libre"
  \time 3/4 s2.*2
  \bar "||"
  \mark \default %%% A
  \tempo Andantino 4 = 60 %FIXME ~ 76
  s2.*6
  \time 4/4 s1
  \mark \default %%% B
  s1
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2
  \time 4/4 s1
  \mark \default %%% C
  \time 2/4 s2*9
  \time 3/4 s2.
  \bar "||"
  \mark \default %%% D
  \tempo "Stesso tempo"
  \time 3/8 s4.*3
  \time 2/8 s4*3
  \time 3/8 s4.
  \time 2/8 s4*2
  \time 3/8 s4.*4
  \mark \default %%% E
  s4.*5
  \mark \default %%% F
  \time 2/8 s4*2
  \time 3/8 s4.*2
  \time 2/8 s4*3
  \time 3/8 s4.
  \time 2/8 s4*2
  \time 3/8 s4.
  \time 2/8 s4*2
  \time 3/8 s4.*2
  \time 2/8 s4*3
  \bar "||"
  \mark \default %%% G
  \time 3/4 s2.*7
  \time 2/4 s2*2
  \mark \default %%% H
  s2*4
  \time 3/4 s2.
  \time 2/4 s2*12
  \time 3/4
  \grace s8 s2.*2
  \mark \default %%% J
  \tempo "Tempo giusto"
  \time 2/4 s2
  \time 3/8 s4.
  \time 3/4 s2.*5
  \mark \default %%% K
  \time 4/4 s1*5
  \time 6/4 s1.*4
  \bar "||"
  \mark \default %%% L
  \time 2/4 s2*7
  \mark \default %%% M
  \time 7/16 s1*7/16*5
  \mark \default %%% N
  \time 2/4 s4 s\startText "poco stringendo..."
  s2*2 s4 s\stopText
  s2*3 s4 s\startText "stringendo..."
  s2
  \time 3/4 s2 s4\stopText
  \bar "||"
  \mark \default %%% O
  \tempo "A tempo"
  \time 4/4 s1*2
  \time 3/4 s2.
  \time 4/4 s1*4
  \mark \default %%% P
  s1*12
  \bar "|."
}

Flute = \relative do' {
  mi''16( fa) r8 r la,( \t {sib) red,( mi)} |
  lad,(\> si) \t {fad4( sol8)\!} r4
  \bar "||"

  %%% A %%%

  %% (Although this may not look like it, it's
  %% actually a twelve-tone series.  There's also
  %% some (very) "soft serialism" in the piano part.)
  dod4\p( re8 mi sol4)~ |
  sol8 mi'\( mib reb4 do8 |
  sib reb\> lab4( sol8)\! \) r |
  la(\p sol4 sib fad8 |
  red sol,) fad'4( \hairpinText "poco" sol8\< mi')~ |
  mi\! \breathe sol4( fa8 sib mi, |
  \t {dod4 do sib} sol2*1/2 s4\>) |

  %%% B %%%
  r2\! r8 dod,,(\mf \t {re mi sol} |
  la4)~ \t {la8( sold' fa} si,4) |
  r8 do( la' red) |
  red,4( \t {re8 dod si} sold4) |
  \t {r8 fad'( fa} mib do) \breathe |
  fad4( sol8 la do4) |
  r8 fad,,(\p \t {sol la do} |
  re2.) r4 |

  %%% C %%%
  dod2(\mp re4 mi sol2)~ |
  sol8( mi') mi4 |
  r8 dod(~ \t {dod fa dod} |
  sib2)( lab4) \t {r8 sib( lab)} |
  sol( fa) sib16->( lab8.) |
  \t {r8 sol( fa)} sib->( lab) |
  r8 sib16( lab \t {dod4 re mi} |
  \bar "||"

  %%% D %%%
  sol4.)-"dolce"\startTrillSpan \mp \> |
  sol8\stopTrillSpan \! r4 | %FIXME longhairpin.
  R4.
  R4
  re,8(-\dyn "p_semplice" mi16 fa) |
  sol8( fa) |
  sib( sol mi) |
  re( mi16 fa) |
  sol8( fa) |
  sib r16 sol( mi re) |
  si8( re16 mi fa8) |
  si,16( re fa sol sib8) |
  re-- re-- r |

  %%% E %%%
  dod16\mp dod8-. dod16 dod8-. |
  si4( sold8)-\dyncresc "poco a poco cresc." |
  dod4-- do8--~ | do sib16( sol sib sol) |
  fa'8-.-- fa-.-- r |

  %%% F %%%
  dod,8(\mf re16 mi) |
  sol8( fa) | mi'( dod sib) |
  dod,( re16 mi) sol8( |
  fa) sib-. | mi-> r |
  re-. mi-. sol4.->\f |
  dod,4-> re8-- mi-- |
  sol4.-> \breathe |
  dod,4-> re8-- mi-- |
  sol4->\cresc dod,8->~ dod re-- mi-- |
  sol4-> r8 dod,-- \t {re->\<( mi sol}

  %%% G %%%
  la4->)\! r2 | R2.*6 R2*2

  %%% H %%%
  mi,4.\p( fa8) |
  si,( do) mib,( fa) |
  dod4( do) |
  r mi'16(\sfz fa) r8 |
  re,8(\p dod) mib4( do) |
  r8 mi'16(\sfz fa) r8 dod,\p |
  re4( do) |
  r8 mi4( fa8) | dod4( do) |
  r8 mi4(\mp \> fa8) | dod4( do)\! |
  r8 mi4(\mf \< fa8
  \t {sol4-"molto espr." sib re} |
  sol2)\f | r4 re8( sol |
  dod2)~ \cresc dod8 sol~ \t {sol re(\! sol} |
  \grace s8
  dod2)->\dyncresc "cresc. sempre" r8 re,16( sol |
  dod4) sol?8( dod)~ dod8. sold'16 |

  %%% J %%%
  sold2-\dyn "sffz" | R4.
  r4 mi8\ff( fa) r4 |
  \t { r8 re,( sol)} dod-- mi-- fa4-- |
  r4 mi16( fa) r8 r4 |
  mi16( fa) r8 r4 mi8( fa) |
  r16 mi8. fa4~( \t {fa8\> mi re} |

  %%% K %%%
  si2\f\>) r\! |
  r8 sol(-\dyn "p_semplice" mi re dod2) |
  r4 sol-- mi-- re-- | dod2.-- r4 |
  mi'16(\sfz fa) r8 r4
  \hairpinText "poco" dod,8(\< re~ \t {re mi sol\!)}
  dod2(-\dyn "p_sub." re4 mi sol2 |
  sol,4) r sib'--\pp -"détimbré" r lab-- r |
  dod,,2.--\mp re2( mi4\< |
  \t {sol si mi)} sib'2--\mf( lab--\> |

  %%% L %%%
  sol)\! r4 r8 sol,-.\p |
  dod,4-- -"scherzando" r |
  r4 r8 sol'-. | dod,4-- r |
  r8 sol'-. dod,-. sol'-. | dod,4-- r |

  %%% M %%%
  lad''8--\p( si dod sold16-.) |
  lad8--( si16 lad dod8.)\cresc |
  lad8--( si16 dod mi8.) |
  lad,8-- si16( dod) mi8.-- |
  lad,8--\! \< si-- dod-- mi16-. |

  %%% N %%%
  sold8->\! r  r do,,,!32\p do do do |
  do-> do do do do do do do do4:32_"simile" |
  do8 r red'16(\sfz mi) r8 |
  do,2:32->\mf do8-> r fad'16(\sfz sold la8) |
  do,,4:32~-"flatt."\< do8->\! red16-. mi-. |
  fad-> sold-. la8-. \t {dod16\< dod dod} \t {red red red} |
  mi8->\! r sol16(\sfz sib) r8 |
  \t {sib16\< sib sib} \t {do do do} \t {dod dod dod} dod8\! |
  r16 dod-.\ff fad8 re16\<-. fad8 dod16-.
  \t {fad8:16--\! la8:16-- si8:16--} |

  %%% O %%%
  do?2.\fff \ten r4 |
  r2 lad,,8\p(-"calme" si dod sold16 lad~) |
  lad2 r4 |
  lad8( si16 dod mi8 sol,!16 lad~) lad2 |
  r2 lad2( si4 dod mi2)~ | mi2. r4 |

  %%% P %%%
  R1 sol,2\mp(-"dolce" sib4 do |
  dod2.) fad4( | mid red2 do!4 |
  si mi sold,2\> fa4)\! r fad'(\mp mi~ |
  mi la2 dod,4 | lad) r mi8(\p re'4.) |
  fad,4\< mi'2*1/2--\! s4\< sol4--\!~ |
  sol( fad\< si\mf \> mi,) |
  dod2(\p re4 mi sol2)\> r2\!
}