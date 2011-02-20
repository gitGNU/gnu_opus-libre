%-- Duo -- notes.ly -----------------------------------------------%
% (c) 2003-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

UnTitre = "I."
DeuxTitre = "II."
TroisTitre = "II½."

FluteUnInstr = "Flûte 1"
FluteDeuxInstr = "Flûte 2"

\header {
  title = \markup {
    \vconcat
    \center-column {
      \larger "Deux petits duos"
      \smaller "(et demi)"
      \vspace #.5
    }
  }
  subtitle = "pour deux flûtes"
  composer = "Valentin Villenave"
  date = "automne 2003"
}

\paper {
  first-page-number = #-1
  ragged-last-bottom = ##f
  system-separator-markup = \slashSeparator
}

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2003-2011.
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

#(set-global-staff-size 19)

UnFluteUn =
\relative do' {
  %% This isn't an actual 2/2 meter.
  \once \override Score.TimeSignature #'stencil = #(lambda (grob)
      (grob-interpret-markup grob
        (make-override-markup '(baseline-skip . 0)
          (make-number-markup (make-column-markup (list "2" "2"))))))
  \tempo \markup {
    \concat {Moderato \medium \italic ,}
    \medium \indic \line {avec souplesse}
  }
  do1--\mp\> R1\! do1--\mp~-"ten." do2. r4 |
  \set tieWaitForNote = ##t
  r re2.*1/6~-\dyn "più_p"\<-"dolce" s s s s s |
  re4\mp re2--\> r4\! |
  \set tieWaitForNote = ##f
  do1--\p\> do1--\>-"simile" |
  r4\! re\p\>( fa2)~ |
  fa2.*1/10\< s s\>_"poco" s s s s s s s r4\! |
  do4(-"semplice" re fa2)~ |
  fa2.(\< lab4) |
  sol4.--(\> fa8)~ fa2\!~ |
  fa2. \breathe lab8( sol) |
  \t {fa4\<( sol si)~} si2\!~ |
  si4\> sol~ \t {sol\! lab( sol)} |

  % Page 2
  \t {fa8\<( sol si)~} si2-\dyn "più" sol4--~ |
  sol8.\>-"scherzando" si16 re,4\p r2 |
  do4--\>( re)\! r2 |
  do4(-"simile" re) r2 |
  do4( re) r2 | do4( re) r2 |
  do4( re) fa2--\mp |
  do4--( re8--) fa~ fa4. lab8 |
  do,8--(-"leggiero" sol' \t {re--) lab' si} fa2 |
  do4-- re8-- do fa(\< lab \t {sol si re)} |
  mi2\mp fa,8--( \longHairpin mi'4.\<~ |
  mi8\mp( si) \t {mi( si fa)} mi'4.-- re,16( fa) |
  do8--_(^\( sol' \t {re--) sol dod} mi2\)\cresc |
  do,8--_(^\( re) \t {fa_( sol si)} mi2\) |
  do,8--( si') \t {fad^( dod' mi}
  \t {lad si, mi} lad4) |
  \t {fad8( dod mi} lad4)
  \t {fad8(\< mi fad)} \t {mi( lad fad)} |

  % Page 3
  lad16->\! mi'8.~-\dyn "f_(toujours très calme)"
  mi2.-"(ten.)"~ | mi2 r |
  red16-> mi8.~\mf\< mi2.~ |
  mi2-"(ten.)"\f r |
  mi8->\ff fad~ fad2. |
  red2.-- r4 |
  mi--( fad) red2--~ |
  red-"(ten.)" r |
  mi1--\f -"(ten.)" |
  mi4( fad2.) |
  mi2-- r |
  mi4( fad) r2 | mi4( fad) r2 |
  mi4( fad) r2 |
  \t {mi4( fad2)}
  \t {fa,8( la si)} \t {do( red do)} |
  mi4(\cresc fad) fad,8( la) \t {si( red do)} |
  mi4\ff fad2._"(ten.)"\fermata -"(bref)"~ |
  fad4 \breathe si4.-> la8~ \t {la si la} |

  % Page 4
  mi->( fad4.~) fad8 mi~ \t {mi red do} |
  la16(-\dyn "sostenuto" la fad fad red red mi mi
  la, la mi' mi do do la la) | mi'4--(\mp fad) r2 |
  mi4--(\mp\> fad) la,2--\p |
  mi'4(\mp\> fad) la,2--\p |
  mi'4(\> fad)\! r red, |
  mi'4.( fad) r4 | r4 red\< \t {fad( do mi)\mf} |
  lab,2-\dyn "pp_sub."~ lab8( do4.) |
  \t {re,4( lab' do~} do re) |
  sol,4--( do~) \t {do-"leggiero" fa( sib} |
  mi4..--)-\dyn "pp_sempre" do,16 fad,2-"(ten.)" |
  fa'4( do) sol2 |
  do8\< fa~ \t {fa re si'} mi2\mp \fermata \breathe |
  r8 mi16(\mf\> mi dod dod do-"leggiero" do
  la la sold sold fa fa mi mi) |
  \t {do4(\p re do)} \t {re( sol, la')} |

  % Page 5
  r8 mi'16(\f\> mi red red do? do
  dod dod sold sold la la fa? fa |
  mi-.)-\dyn "p_scherzando" dod-. do-. fa-.
  sol-. fa-. sib-. mi,-.
  si-. do-. sold-. dod-.
  sol-. fa-. re-. si'-. |
  r2 do2~\mp -"dolce espr." | \t {do4( sib sol)~} sol2~ |
  sol2. r4 | r2 r4 do,~-\dyn "p_legato" |
  \t {do re do} \t {re do re} |
  \t {do re do} \t {re do re} |
  \t {do re do} \t {re do re} |

  % Page 6
  do2.-- r4 | r lab'(\mp -"espr." sol4. fa8~ |
  fa2. sol4 | si1~ si4 re,) r2 |
  \t {do4( re sol)} fa8(\< do) lab' si |
  mi4--\! r8 sol~( sol fa sib4~) |
  \t {sib do,,(\< si')} sib'4.\!
  \longHairpin si,16\< sib' |
  la'8\!( sib,4) si,8 r2 |
  \tt {sib'16(\f do sib do sib)} mi,( sib') do sib
  \tt {sol( sib sol sib sol)} dod,( mi) fa sol |
  \t {si,8\>( do si} lab16 si lab sol)
  \t {fa8( sol fa)} re-- fa--\! |
  r2 do(\mp fa2.) r4 sol1--\p\fermata \bar "|."
}

UnFluteDeux =
\relative do' {
  do1--\mp-"ten., senza dim."~
  do2. r4 |
  do1--\mp\> R1\!
  do1--~ do2. r4 |
  r re2.--\mp\>~ |
  re4\! re2.*5/6--\< s8\mf |
  do1-- -\dyn "p_sub." |
  do4(\< re2.)\! |
  do2-- r |
  do4(\> re)\! r2 |
  do4(\> re)\! r2 |
  do4(-"simile" re) r2 |
  do4( re) r2 | do4( re) r2 |

  % Page 2
  do4( re) r2 |
  do4--( r fa2--~)\mp\< |
  fa~\! \t {fa4( do re)} |
  \t {fa(-"semplice" lab sol~)} sol4. si8 |
  fa2._"(ten.)" lab8(-"più intenso" sol) |
  \t {fa4--( lab do} si2) \breathe |
  fa8--(\( lab) \t {do(\> si re)} \longHairpin fa2~\)\p\< |
  \t {fa4\mp\< lab,( si)} sol--(\> fa) |
  \t {do'\mp( re lab)} sol--(\> fa)\! |
  re8( sol) \t {fa(\< lab si)} \t {sol4( do re)} |
  do,--\mf( re) r16 si'8.--~ si4 |
  do,--( re) si'16 fa8.~ fa8 si |
  \t {mi4( dod sol)}
  \t {do,8--_(\( re sol} \t {re--) sol dod} |
  mi2_\)\cresc \t {do,8-_(\( fa si} \t {re,--) sol dod} |
  mi2\) \t {fad,8( dod fad} \t {si dod mi} |
  lad4) \t {si,8(\< do,) mi'}
  \t {lad( fad lad)} \t {do!( fad, do')} |

  % Page 3
  sol16->\! red'8.~-\dyn "f_(toujours très calme"
  red2.-"(ten.)"~ | red2 r |
  mi16-> red8.~\mf\< red2.~ |
  red2-"(ten.)"\f r |
  red1--\ff |
  mi8-> fad~ fad2 r4 |
  red2 mi8->( fad4.)~ |
  fad2-"(ten.)" r |
  r4 fad-- -\dyn "f_espr." la,2~ |
  la2.-"(ten.)" r4 |
  red4--~ red16-"scherzando" fad fad,8~ fad4 la~ |
  la2.-"(ten.)" do4 |
  si4.--(-"espr." la)\>~ \t {la8 si la} |
  fad2.\mf -"(ten.)" \breathe fad'16-> fad,8.~ |
  fad8 la( \t {do si red}
  fad4) fad,16( la si red |
  fad4)~\cresc fad16 do8 mi16
  \t {red4 si8~} si\noBeam \graceNotes \lightBeams {
    do32( mi fad) si~} si1_"(ten.)"\ff\fermata -"(bref)"~ |
  si4 \breathe fad4.-> mi8~ \t {mi fad mi} |

  % Page 4
  red4 do8( red)~ red do~ \t {do si la} |
  fad16(-\dyn "sostenuto" fad la la fad fad si, si
  do do red red fad, fad si si) |
  red,2.\f r4 |
  red8--(\mf do'4.)~ do4~ \t {do8 \longHairpin red,\< do'} |
  \t {red,4--(\! do'2)~} do4 do |
  sib4.--\>-"espr."( la8)~ la2\!~ |
  la4 do(-"semplice" \t {sib do la)~} la2.\> r4\! |
  fa'--(\p\>-"dolce" sol) lab,2--\pp |
  fa'4--(\p\> sol) lab,2--\pp |
  fa'4--(\> sol) fad,2--\!
  fa'4(\pp sol8) sib~-"leggiero" sib sol'4. |
  do,,4( re8)\< si'~ si4 mi~ |
  mi4..\mp do,16 sol2--\mp\fermata \breathe |
  do4(\p re)~ re8 sol,~ \t {sol( re' la')} |
  r mi'16(\mp\> mi dod dod si si
  sold sold fad fad red red re re)\! |

  % Page 5
  r8 red'16(\f\> red mi mi red red
  do do la la fad fad re re |
  dod-.)-\dyn "p_scherzando" mi-. fa-. do-.
  fa-. sol-. mi-. sib'-.
  do,-. si-. dod-. sold-.
  fa-. sol-. si-. re,-. |
  r2 do4(\mp re fa1--) |
  \t {do4-\dyn "p_legato" re do} \t {re do re}
  \t {do re do} \t {re do re} |
  do2.-- r4 | r2 fa4.(\mp sol8)~ sol2. r4 |

  % Page 6
  \t {r re-\dyn "p_legato" do} \t {re do re} |
  \t {do re do} \t {re do re} |
  \t {do re do} \t {re do re} |
  \t {do re do} \t {re do re} |
  \t {do lab'(\mp -"espr." sol} \t {fa lab do} |
  si2.) r4 |
  \t {do,8(\< re) fa} \t {sol( lab) si} mi4--\! r8 si~ |
  si4(\< \t {sib')\! do,,8~}
  \t {do si' do,} \t {si' \longHairpin do,\< si'} |
  sib'(\! si,4) do,8 r4 \t {do''8\f( sib sol)} |
  fa16( sol) fa sol \tt {fa( sol fa sol fa)}
  mi( fa) mi fa \tt {mi( fa mi fa mi)} |
  dod(\> mi) dod do \t {si8( do si)}
  lab-- sol-- \t {fa( re do\!)} |
  r2 r4 re--\mp~ re2. r4 | do1--\p\fermata \bar "|."
}

DeuxFluteUn =
\relative do' {
  \time 3/4
  \tempo "Andantino" 2. = 48
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
  sol-.->)\! r r4 sol16(->\f la re la |
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

DeuxFluteDeux =
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
  \t {do,8(\f re sol} \t {re sol do,} \t {sol' do, re)} |
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

TroisFluteUn =
\relative do' {
  \time 2/4
  \tempo "Vivo" 2 = 84
  \partial 4
  do8-.\mf re-.
  \t {fad16->\sfp\> sol fad} \t {sol fad sol}
  \t {fad sol fad} \t {sol fad sol~} |
  sol8\! r \t {do,16\< do do} \t {re re re} |
  fad2~\!-"ten." fad4. r8 |
  do-. re-. fad-. sol-. |
  \t {do,16(->\< re fad} \t {sol fad sol)}
  \t {fad(\> re do} \t {re do re)} |
  do8--\! r
  \t {do16(\< re fad} \t {sol\> fad re)} |
  do-.\! re-. fad-. sol-.
  \t {do,(\< re fad} \t {sol\> fad re)} |
  do--\! re-- do-- re-- do-"simile" re do re |
  \time 3/4
  \t {do-"legato" re do} \t {re do re}
  \t {do re do} \t {re do re} r4 |
  \time 3/8
  do32(\< re fad sol
  \ttt {la re, sol do re fad} sol8-.->)-\dyn "sffz" |

  \time 3/4
  \t {sol16(\f la) dod} re8--
  \t {sol,16( la) dod} re8--
  \t {sol,16( la) dod} re8-- |
  \time 2/4
  \t {sol,16( la dod} \t {re dod re)}
  \t {fad->( re dod} \t {re dod re)} |
  \t {fad->( re dod} \t {re dod re)}
  \t {fad->( re dod} \t {la mi dod)} |
  \time 3/4
  \t {fad,(\mp dod' si} \t {dod si dod)}
  \t {sol'( dod, si} \t {dod si dod)}
  \t {sol'( dod, si} \t {dod si dod)} |
  \time 2/4
  \t {fad,(\cresc sol) si} dod8--
  \t {fad,16( si) dod} mi8-- |
  \t {fad,16(\< sol si} \t {dod mi fad)\!}
  \t {fad,(\< si dod} \t {mi sold red')\!} |
  \t {dod(\pp sold fad)} r8
  \t {la16( mi re)} r8
  \time 3/8
  \t {fa16( do sol)} r8
  \t {sib16(-\dyn "f_sub." fa mib} |

  \time 2/4
  do8->) r \t {do16(\p re do} \t {re do re} |
  do8) r \t {do16( re do} \t {re do re)} |
  do-- re-- do-- re--
  \t {sol8(-"espr."-\mf\< lab do} |
  re4.--\!)-"ten." r8 |
  \t {do,16\p( re do} \t {re do re)}
  \t {do( re sol} \t {lab sol re)} |
  \t {sol(\< lab do} \t {re\> do lab)}
  \t {sol(\! re do} \t {re do re)} |
  do8-- r \t {do'(\mf re fa} | sib4.) r8 |
  \t {do,16\mp( re) fa} sib8--
  \t {do,16( fa) sib} mib8-- |
  \t {do,16(\< fa sib} \t {mib sib fa)}
  \t {do( sol re)} \t {sol( do) fa} |
  \t {sib(\f mib) sib} \t {fa( do) fa}
  \t {sib( mib) sib} \t {fa( do) sol'} |
  lab4.-- r8 |
  \t {re16( la) mi} \t {si( fad) mi'}
  \t {re'(\< la) mi} \t {si( mi) la} |
  re8--\! r
  \t {dod,,16(\mp\< re) fad} \t {sold( si) dod} |
  mi8--\! r dod,16--\< sol'-- si-- dod-- |

  \time 3/4
  \t {sol'8(-\dyn "p_sub."-"dolce" la dod} re2)-"ten."~ |
  \time 2/4
  re8 r fad,,4-- |
  \time 3/4
  \t {sol16(--\pp dod si} \t {dod si dod)}
  \t {mi( dod si} \t {dod si dod)}
  \t {mi( dod si} \t {dod si dod)} |
  \time 2/4
  \t {fad,(-- dod' si} \t {dod si dod)}
  \t {sol'(\< la dod} \t {re) dod( re} |
  la'4)\!-- r8 re,,16-.\pp la'-. |
  \t {sol,( re' dod'} \t {re dod re)}
  sol,,( re') la'-. re-. |
  si'(\mp-"gracieux" mi, fad dod) si( fad) sol,8-- |
  \time 3/4
  \t {si''16(\> mi, la,)} \t {mi'( la, re,)}
  \t {la'( re, sol,} \t {re' sol, re')\!}
  \t {fad( re sol,} \t {re' sol, re')} |
  \time 2/4
  fad,4-- \t {do16(\p re do} \t {re do re)} |
  \time 3/4
  \t {do(\< re) fad} sol8--\mf~-"ten." sol2 |
  \t {do,16(\< re fad} \t {sol\! do,-\dyn "p_al fine" re)}
  \t {do( re do} \t {re do re)}
  \t {do( re do} \t {re do re)} |
  \time 2/4
  do-- re-- do-- re-- do-"simile" re do re |
  \t {do( re do} \t {re do re)}
  do-- re-- do-- re-- |
  \t {do(-"(senza cresc.)" re) fad} sol8-. r4 |
  \bar "|."
}

TroisFluteDeux =
\relative do' {
  \t {do16\< do do} \t {re re re}
  fad2\mf -"ten."~ fad8 r do-. re-. |
  \t {fad16->\sfp\> sol fad} \t {sol fad sol}
  \t {fad sol fad} \t {sol fad sol~} |
  sol4.\!-"ten." r8 |
  \t {do,16->(\< re fad} \t {sol fad sol)}
  \t {fad(\> re do} \t {re do re)} |
  do8-- r re-. sol-. |
  \t {do,16(\< re fad} \t {sol\> fad re)} do8--\! r |
  \t {do16(\< re fad} \t {sol\> fad re)} do8--\! r |
  \t {do16( re do} \t {re do re)}
  \t {do( re do} \t {re do re)} |
  do2-- -"ten." r4 |
  \t {re16(\< do re} do32 fad la re sol8-.->)-\dyn "sffz" |

  \t {sol,16(\mp dod si} \t {dod si dod)}
  \t {mi( dod si} \t {dod si dod)}
  \t {mi( dod si} \t {dod si dod)} |
  \t {sol(\cresc si) dod} mi8--
  \t {sol,16( si) dod} mi8-- |
  \t {sol,16( si) dod} mi8--
  \t {sol,16(\< si dod} \t {mi sol la)} |
  \t {mi(\f la) dod} re8--
  \t {mi,16( la) dod} re8--
  \t {mi,16( la) dod} re8-- |
  \t {mi,16( la dod} \t {re dod re)}
  \t {fad->( re dod} \t {re dod re)} |
  \t {la'->( re, dod} \t {re dod re)}
  \t {sold(\> fad re} \t {dod la mi)} |
  si8--\! \t {sol16(\pp do fa)}
  r8 \t {mib,16( lab reb)} |
  r8 \t {re,16( mi la)} r8 |

  \t {do,16->(\p re do} \t {re do re)} do8-- r |
  \t {do16( re do} \t {re do re)}
  do-- re-- do-- re-- |
  \t {do( re do} \t {re do re)}
  \t {do( re do} \t {re do re)} |
  \t {do( re do} \t {re do re)}
  \t {do(\< re sol} \t {lab\> sol re)} |
  \t {sol\mf(-"en dehors" lab) do} re8--
  \t {sol,16( lab) do} re8~-- |
  re4.-"ten." r8 |
  \t {sol,16(\< lab do} \t {re\> do lab)}
  \t {sol(\! re do} \t {re sol lab)} |
  \t {sol(\< lab) do} \t {re\>( do) lab}
  \t {sol(\! re do} \t {re sol lab)} |
  \t {sol( lab) do} \t {re( do) lab}
  \t {sol(\< do) re} \t {fa(\> do) sol} |
  re8--\! r re16--\< lab'-- re-- lab'-- |
  re--\! lab-. re,-. sol,-.
  re'--\< lab'-- re-- sib-- |
  \t {re(\f mib) re(} \t {sib) lab( sib)}
  \t {re( mib) re(} \t {sib) lab( sib)} |
  lab-- re,-. sold,-. re-. sold-. re'-. sold8-- |
  \t {dod,,16(\mp\< re) fad} \t {sold( fad) si}
  mi--\! si-. mi-. la-. |
  \t {dod,,(\mp\< re fad} \t {si) fad( si}
  \t {mi)\! si( dod} \t {mi la) re,} |

  \t {sol,--\pp( dod si} \t {dod si dod)}
  \t {mi( dod si} \t {dod si dod)}
  \t {mi( dod si} \t {dod si dod)} |
  \t {fad,--( dod' si} \t {dod si dod)}
  \t {mi( dod si} \t {dod si dod)} |
  \t {sol'8(-\dyn "p_dolce" la dod} re2)-"ten." |
  r8 fad,,16--\pp si-- mi( si) dod-. si-. |
  \t {sol( re' la'} \t {re, la' re,)}
  \t {sol,(\< re' dod'} \t {re) dod( re} |
  la'4)\mp r8 \t {dod,16(\> la re,)} |
  \t {sol,(\pp re' la'} \t {re, la' re,)}
  \t {mi'(\> la, re,)} \t {la'( re, sol,)} |
  \t {do,(\! sol' re'} \t {sol, re' sol,)}
  \t {do,( sol' re'} \t {sol, re' sol,)}
  do,( sol') la'-. re,-. |
  \t {do,( sol' do,} \t {sol' do, sol')} re4-- |
  \t  {do16( re do\<} \t {re fad\! re)}
  \t {do( re do} \t {re do re)}
  \t {do( re do} \t {re do re)} |
  \t {do(\< re) fad} sol8\mf-"ten."~ sol2 |
  \t {do,16(-\dyn "p_al fine" re do} \t {re do re)}
  \t {do( re do} \t {re do re)} |
  do-- re-- do-- re--
  \t {do( re do} \t {re do re)} |
  \t {do(-"(senza cresc.)" re) sol} fad8-. r4
}