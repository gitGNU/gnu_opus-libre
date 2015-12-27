%-- Sonate pour contrebasse et piano -- contrebasse.ly ------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"


\header {
  title = "Sonate"
  subtitle = "pour contrebasse et piano"
  composer = "Valentin Villenave"
  date = "Été 2014 — été 2015."
}

ContrebasseInstr= "Contrebasse"
PianoInstr= "Piano"

%\pointAndClickOff
#(set-global-staff-size 18)


\paper {
  first-page-number = #-1
  ragged-last-bottom = ##f
}

\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2014.
      }
      \line {
        \with-url #"http://valentin.villenave.net"
        \typewriter http://valentin.villenave.net
      }
      \vspace #.5
      \override #'(line-width . 100)
      \justify {
        Cette partition est publiée suivant les termes de la licence
        \with-url #"http://artlibre.org"
        \bold { Art \concat {Libre \medium . }}
        Vous pouvez la copier, la modifier et la jouer \italic librement
        sans contrevenir au droit d'auteur, à condition de respecter les
        termes de la licence (notamment en veillant à mentionner le nom
        de l'auteur et l'adresse web d'origine).
      }
      \vspace #.5
      \line {
        Gravure réalisée au moyen du logiciel libre
        \with-url #"http://www.lilypond.org"
        \concat {\bold "GNU LilyPond" ,}
        \concat { "version " $(lilypond-version) "." }
      }
    }
  }
}
\pageBreak

IContrebasse =
% In case of so-called "solo tuning",
% the piano will play a transposed part
% but not the double-bass (contrary to
% what would usually happen). That's sort
% of the whole point of this piece.
% (Which, granted, doesn't amount to much.)
\relative do' {
  \clef tenor
  \tempo "Allegro vivace"
  \time 2/2
  re4.->\f mib8--~ mib2~ ^"(sostenuto)"
  mib8 r re4--~ re8 fa16(\downbow re) mib4~
  mib8 re4.( mib2)
  r8 re--~ \t {re mib( re)}
  reb8.\downbow \< lab'16 lab4~\!
  lab lab~->\downbow \t {lab sol--( solb--)}
  \t {fa8( solb fa)} mi16(\dyn "(senza dim.)" fa) mi mib re?2
  r4 re~(\dyn "poco meno" re8 mib4.~
  mib8) re4(\upbow mib8~^"mesto" mib) r mib16(-> re8.~
  re4) do16( re la) do~ do2
  \time 3/2
  \t {r4 \acciaccatura mib8^(^> re4 do~} do8)
  \clef bass
  fa,4( la8) si,4 r |

  % A %
  \time 2/2
  r2 r4 mi,~--\mf
  mi2 r8 mi4\downbow ^"serioso" \> fa8~
  fa1\mp
  mi8(\> fa2..)\!
  mi4--\downbow \mf fa~--\downbow fa8 sib4(\> sol8)
  mi(\mp fa~ fa2) mi4~\downbow
  mi8 fa-- sib--\< sol--
  \tt {fad'-.^"con fuoco" sib,-. re-. dod'-. sol-.}
  \clef tenor
  fad'4->-.\f sol8(\downbow fad~ fad4.) sol8~\>
  sol4. fad8~ fad4\! \t {mi8(\upbow fad dod)}
  mi2~\mf mi8 fa4(\upbow \< sol8~
  sol4) fad~\! fad8 la4(\upbow sol8)
  \clef treble
  do?4--\< fad,-- mi'-- fad,--
  sol'->--\f r sol2*1/2(\upbow s4^"(sost. sempre)"
  sol2) sol~
  sol4 la2(\upbow \< sol4)
  sib2.(\dyn "f_molto espr." la4~
  la2.) r8 sib~\upbow
  sib4. r8 sib4.(\> la8~
  la2)\! r4 sib~(\mp\upbow
  sib re8)\CaV la~ la4\> \t {sol8( la mi)}
  sol4.\! r8 r4 la--~ \dyn "f_sub."
  \t {la la\CaV sol--}
  \t {sol--\CaV re-- re--\CaV}
  la8-.\CaV la-. mib-. sol-. dod,-. mi-. sib-. re-.\CaV
  \time 3/2
  \clef bass
  sold,16(^"tempestoso" la sold mib) re( mib sold la)
  sold(\cresc mib re si) mib( re si sib)
  \t {la8-- si-- sib--} \t {la-- sib-- la--} |

  % B %
  \tempo "Poco più libero"
  \time 2/2
  sold8->-.\ff r r4 r <sold dod re>8->-.\sfz ^"(battuto)" r
  r2 r4 re''~\CaV \dyn "p_flaut."
  re2. r8 <sold,, dod re>->-.\sfz
  r2 re''~(\upbow\p
  re4 mib2.)
  <sold,, dod re>8->-.\sfz r
  re''4~(\<\upbow ^"(ordin.)" re4. fa16 re)
  mib2.\mp r4
  <sold,, dod re>4->-.\sfz r8 q->-.\sfz r4 mib''16(\fp re8.~
  re4) do~(\> \t {do re la)}
  \time 3/2
  do2\! r4 \clef treble do~(\upbow \mf
  \ttt {do16\< dod_"quasi gliss." re red mi fa}
  \ttt {fad sol sold la lad si} |

  % C %
  \tempo "A tempo"
  \time 2/2
  do4-.)\sfz r r r8 do~->\dyn "f_molto"
  do4. re?8~->--( re sib--) do4~->--
  do8 lab4->--\upbow sib16(\upbow sol) lab2~
  lab8 r mi'?16(->\< ^"furioso" re8.~ re8) sol16(-> fa~ fa4)
  mi16(\ff re) mi-. si~-> si8 la~-> la16 si8-. do16-. re4--
  r8 do16->\downbow \dyn "(senza dim.)" si~
  si8 sol-> la16-> mi4..~
  mi4 r \clef tenor <la,, re fa'>16->\arpeggio \<
  sol''-. la-. sib-. r do-. re8-.
  \clef treble
  mi1~->--\!
  mi2 r4 mi~--\upbow \dyn "f_largamente"
  mi2 mi8(\> fa4.~
  fa4)\! sol\upbow mi8(\> fa4.~
  fa2.)\! r4
  r fad8(\mf mi4) la8( sol4*3/4)
  \tiny \clef bass <mi,,, la re>16\arpeggio
  \clef treble \normalsize
  fad'''16(^"scherzando" mi) fad-. dod~-- dod8 si~(--
  si16 dod re8)-. \t {mi( do) sol}
  \clef tenor
  <re, dod''>16(\arpeggio si'') dod-. sold~--
  sold fad8(-- si16-.)
  la(\< sol) la-. re,~(-- re red) mi8-.
  \clef bass
  fa16\fp mi, mi^"secco" fa fa mi, mi fa
  fa mi mi mi mi mi mi mi
  r fa\mp\upbow si mi, lad( si) lad mi
  fa(\< mi) lad( si) fa'( mi) lad( si)
  \clef treble
  \t {fa'8(-- mi--) lad--\ff} r4
  mi'4.\dyn "mp_sub." ^"espr." fa8~
  fa1~
  fa4 \clef bass mi,,,->--\sfz
  \clef treble mi'''8(\mp \upbow fa4.~
  fa8 sol16 mi) fa2 \t {re8(\> mi si}
  re2.*2/3) s4\! \clef bass mi,,,4->--\sfz
  \clef treble mi'''16(\fp re) mi si~--
  si8\> re~-- re4. r8\!
  \time 3/2
  si16->\dyn "f_risoluto" re si la sold fad mib reb
  \clef bass
  do reb do sib sol fa mi re
  si la si sol fad'\< mi fad re |

  % D %
  \time 2/2
  \clef tenor
  dod'\fp re, la' dod mib^"leggiero" re, sold mib'
  dod re, la' dod mib re, sold mib'
  dod re, la' dod mib re, sold mib'
  dod re, la' dod mib mib mib re,
  re re dod' re, la' dod mib re,
  la'\< mib' re, la' mib' mib mib <sol, lab>
  q\f ^"strepitoso" q \clef bass <la, mib'> q q mi mi mi
  \clef tenor
  sold''\dyn "p_sub." re, la'\CaV mib' sol\CaV re, sib' dod
  sold' re, la' mib' sol re, sib' dod
  sold' re, la' mib' sol re, sib' dod
  sold' re, sol dod sold' re, sol sib
  sold'\< dod, sib dod sol' dod, sib dod
  \clef bass
  <dod sold'>\f ^"(simile)" q q <re, sol>
   q q <dod' sold'> q
  <la, re> q <dod' sold'> q q <mi,, la> q q
  \clef treble
  fad''--\p\< dod'( si dod) sol'?\! dod,( si dod)
  sol--\< si( dod si) fad'(\! si,) dod( sol)
  fad--\< dod'( si dod) sol'?\! dod,( si dod)
  sol--\< si( dod si) fad'(\! si,) dod( sol)
  \time 3/2
  \clef tenor
  fad(\fp sol fad sol) si,( dod si dod)
  \clef bass
  \t {mi,8(\< fad mi)} \t {la,( si) sol} fa4--\mp r |

  % E %
  \time 2/2
  \clef tenor
  re''4.->\dyn "f_intenso" mib8~-- mib2~
  mib8 r re2-- fa16(\downbow re) mib8~
  mib4 re~( re8 mib4.~
  mib8) r \t {re(\upbow mib re)}
  reb8.--\< lab'16 lab4~\!
  lab reb,8.--\< sib'16 sib4\! reb,8.--\<
  \clef treble mib'16
  mib2~\f mib8 re4( fa16 re)
  mib2. r4
  \t {mib( re si~} si8 do la4~
  la8) re~(--\< \t {re mib fa)} lab4(--\! sib~)--
  sib4 r8 sib8~-- sib2
  \t {r8 re,(\< \upbow ^"appassionato" mib)}
  \t {fa lab sib}
  si4\f lad16( si) si( lad)
  lad( si) si( lad) lad( si) si( lad)
  lad( si) si( lad) lad( si) si( lad)
  lad( si) si( sol) fad( sol) sol( fad)
  fad( sol) sol( fad) fad( sol) sol( fad)
  fad( sol) mib( re) re( mib) mib( re)
  mib(\< fad) fad( sol) lad(\> si) fad( sol)
  re(\mp \< mib re mib fa\> mib fa mib)
  re(\< mib re mib fa lab\> fa mib)
  re(\< mib re mib fa\> mib re mib)
  do(\! re) la( do) sol( la sol la)
  fad(\< sol la do) re(\! do la sol)
  \clef tenor
  fad( sol fad mi) dod(\< mi fad sol)
  mi(\mf fad mi fad) si,( dod si dod)
  \clef bass
  lad( si lad sold) fa( mib fa mib)
  re(\< mib re mib fa mib fa mib)
  \t {re8(\> mib re)} \t {mib( fa mib)}
  \tempo "Poco allargando..."
  re2.~\p \upbow <re re'>4~
  q~ <re mib'>2 r4
  r2 re~(\pp \upbow
  re4 mib^"a piacere"
  \longHairpin re'\> \clef treble mib)\glissando
  \time 3/2
  re'1\!\CaV \clef bass
  \t {r4 re,,(\< \downbow red8) r\!} |

  % F %
  \tempo "Doppio più lento"
  \time 2/2
  % TODO: factorize.
  \set harmonicDots = ##t
  \set glissandoMap = #'((1 . 1))
  <mi, mi'>4.\upbow \dyn "mf_(senza dim.)"
  \glissando <fa si>8~\downbow q2~
  q r4 <mi mi'>~
  <mi mi'>8\glissando <fa si>2..~
  q4 r \clef treble
  <\parenthesize re''' sol sol\harmonic do\harmonic>2~\p
  <\parenthesize re sol sol\harmonic do\harmonic>4
  <\parenthesize mi la la\harmonic re\harmonic>2(
  <\parenthesize do fa fa\harmonic sib\harmonic>4)
  <\parenthesize re sol sol\harmonic do\harmonic>4.\glissando
  <\parenthesize sib mib mib\harmonic lab\harmonic>
  <\parenthesize do fa fa\harmonic sib\harmonic>8
  <\parenthesize la re re\harmonic sol\harmonic>
  <\parenthesize sib mib mib\harmonic lab\harmonic>2. r4
  \clef bass
  <mi,,, mi'>4.\mf \glissando <fa si>8~ q2~
  q r4 <mi mi'>~\mp
  \time 3/4
  q8\glissando <fa si>4. r8 q~--\p
  q2. \bar "|."
  \mark \markup \musicglyph #"scripts.ulongfermata"
}

IIMesures = {
  \tempo "Andante con eleganzza"
  % A %
  \time 6/4 s1.
  \time 5/4 s1*5/4
  \time 6/4 s1.
  \time 5/4 s1*5/4
  \time 6/4 s1.
  \time 5/4 s1*5/4
  % B %
  \time 6/4 s1.
  \time 5/4 s1*5/4
  \time 6/4 s1.
  \time 5/4 s1*5/4
  \time 6/4 s1.
  \time 5/4 s1*5/4
  % C %
  \time 6/4 s1.
  \time 5/4 s1*5/4
  \time 6/4 s1.
  \time 5/4 s1*5/4
  \time 6/4 s1.
  \time 5/4 s1*5/4
  % D %
  \time 3/4 s2.
  \time 5/8 s1*5/8
  \time 3/4 s2.
  \time 5/8 s1*5/8
  \time 3/4 s2.
  \time 5/8 s1*5/8
  % E %
  \time 3/4 s2.
  \time 5/8 s1*5/8
  \time 3/4 s2.
  \time 5/8 s1*5/8
  \time 3/4 s2.
  \time 5/8 s1*5/8
  % F %
  \time 3/4 s2.
  \time 5/8 s1*5/8
  \time 3/4 s2.
  \time 5/8 s1*5/8
  \time 3/4 s2.
  \time 5/8 s1*5/8
  % G %
  \tempo "Doppio tempo"
  \time 2/2 s1
  \time 3/8 s4.
  \time 2/2 s1
  \time 3/8 s4.
  \time 2/2 s1
  \time 3/8 s4.
  % H %
  \time 2/2 s1
  \time 3/8 s4.
  \time 2/2 s1
  \time 3/8 s4.
  \time 2/2 s1
  \time 3/8 s4.
  % I %
  \time 2/2 s1
  \time 3/8 s4.
  \time 2/2 s1
  \time 3/8 s4.
  \time 2/2 s1
  \time 3/8 s4.
  % J %
  \tempo "Tempo I"
  \time 3/4 s2.
  \time 5/8 s1*5/8
  \time 3/4 s2.
  \time 5/8 s1*5/8
  \time 3/4 s2.
  \time 5/8 s1*5/8
  % K %
  \time 6/4 s1.
  \time 5/4 s1*5/4
  \time 6/4 s1.
  \time 5/4 s1*5/4
  \time 6/4 s1.
  \time 5/4 s1*5/4
  \bar "|."
}

IIContrebasse =
\relative do' {
  \phrasingSlurDashed
  \romanStringNumbers
  % A %
  % \clef treble
  sib''1\(\dyn "p_poco flaut." re2\CaV
  la2. fa2\)
  mi1\(_"(sul tasto)" sol2
  mib si2.\)
  dod2.\( fad2 do4~
  do lab1\)

  % B %
  sol2.~\CaV sol2:32\CaV ^"(sul pont.)"
  \glissando sol'8\CaV r
  \clef bass
  r8 re,,^"pizz." \t {r sol, mib'}
  \clef tenor
  la fa' r mi do' dod
  \clef bass
  r4 re,, sol,4. fad'8
  \clef tenor
  \t {r4 si sib} la'4 mi8 dod' r2 r4
  \clef bass
  \t {r8 mi,,, do'} si' sib, r fad'
  r4 la'\2\CaV r8 fa,,
  mib' si' r fa,-.^"arco (ordin.)"
  do'16 fad la,\CaV mi
  \t {sib'8 dod' re,\CaV}
  \t {sol\CaV \clef treble mib' lab}

  % C %
  \tupletUp
  \set stringNumberOrientations = #'(down)
  \t 4 {
    do8\2 do\3 do\2 do\3 do\2 do
    do_"simile" do do fad fad, fad'
    si,\2 si\3 si si si si
    fa\2 fa\3 fa
  } fa \clef bass dod, sol'\CaV re\CaV red la'
  \clef treble
  \t 4 {
    mi':16 lab: sib:
    re\2\CaV re\3 re\2\CaV re re\CaV re re\CaV re re\CaV
    sol\CaV sol,\2 sol'\CaV sol, sol'\CaV sol,
    dod\2 dod\3 dod
  } sib16\2 sib\3 sib sib sib8
  \clef bass
  do,,:16 mi: fa:
  \t {mib: lab: fad:}
  \clef treble la': si:
  \ttt 4 {
    la'16\1 la\2\CaV la la\CaV la la\CaV
    la la\CaV la la\CaV la la\CaV
    la la\CaV la la\CaV la la\CaV
  } \tt { mi'\CaV mi, mi'\CaV mi, mi'\CaV}
  \ttt 4 {sold,\1 sold\2 sold sold sold sold
    red\2 red\3 red\2 red\3 red8:16\2
  }
  \t {<dod red>: <dodd red>: <do red>:}
  <lad red>: <si red>: <fa red'>: <sol red'>:
  \clef tenor
  \pl \t {sol sol sol} \t {sol sol sol}
  <si, sol'> <si sol'>

  % D %
  si4.\glissando si'4 r8
  r si8.^"pizz." red16 do8 mi,
  r4 sold re'16 la8.
  r8 dod,4 r
  \t {r fa sib} fad
  sol,4.\CaV r4

  % E %
  re''4~\1 ^"arco"
  \t 4 {
    re8 re,,\CaV re''
    \clef treble
    sib' sib, sib'
    reb,:16\1 reb:\2 reb\1
  }
  fa,~ fa16 mi \t {fa^"(quasi gliss.)" fad sol}
  lab4~
  \t 4 {lab8 lab_"(simile)" lab mib' mib, mib'}
  \clef tenor
  \pl {s4. sol,,8_\CaV sol'_\CaV}
  {
    \oneVoice fad16 fad fad,4\2\CaV
    \glissando \voiceOne sol'8 sol
  } \t 4 {
    do,:16\3 do:\4 do: do do do la'\2\CaV la,\3\CaV la'\CaV
  } \tt {si,16\4\CaV mi\CaV si'\CaV mi,\CaV si\CaV}
  mi,4\CaV \clef bass mi,16 mid

  % F %
  fad4 r8 \clef tenor fad'4^"pizz." lab'8
  sol,4\CaV sib'4.
  si,4 red'8 do,8 r4 fa4. r4
  r8 dod,\3 mi4\harmonic re\2\glissando
  la'4. r4

  % G %
  \clef treble
  \set glissandoMap = #'((1 . 1))
  <mi' mi'>2\glissando <re' re'>4->-. mib,
  r8 \pl do4 do4
  <si si'>2\glissando <sold' sold'>4->-. <sib, sib'>
  <la la'>4.
  \pl {fad'4*2 s4. dod8~ dod4.}
  {fad4. \glissando fad'8-. \oneVoice
  r8 \clef tenor <sol,, sol'>4 \voiceOne dod8~ dod4.}
  dod16 dod dod dod dod re,\CaV dod' dod
  sol\CaV dod dod dod dod red dod dod
  la dod dod si sib lab
  dod dod dod mi dod dod fa dod
  fad sold sol la dod, dod sib sib
  sib sib sib sib sib sib
  dod dod dod dod mi mi mi mi
  dod dod mi mi mi mi si do
  dod dod re red fa fa
  \clef treble
  fad fad fad fad fad do' re red
  sol\CaV sol sol sol fa, fa fa fa
  fa mi mi mi sold la
  sib sib sib sib sib la' la la
  la la la sold, sold sold sold sold
  dod, dod dod dod dod si'
  dod dod dod re'\CaV re re si, si
  red red red red dodd' red red red
  dodd red red red dodd red

  % J %
  \ttt 4 {
    mi\CaV sol\CaV mi\CaV sol\CaV mi\CaV sol\CaV
    mi\CaV sol\CaV mi\CaV sol\CaV mi\CaV sol\CaV
    mi\CaV sol\CaV mi\CaV sol\CaV mi\CaV sol\CaV
  } \t {mi\CaV sol\CaV mi\CaV~} mi8 dod8. fa,
  \ttt {lab16 do lab do lab do}
  \repeat tremolo 8 {lab32 do}
  \ttt {sib16 re sib re sib re~} re8 mib4\glissando
  \grace la,4( \repeat tremolo 12 {sol32) sib}
  \t {sol16 sib sol} sib8 fad~ fad16 mi \t {fa fad sol}

  % K %
  lab2. si2 sol4~ sol mi1
  reb mib2 do fad2.
  sib,1 re2 la2. fa2\fermata
}
