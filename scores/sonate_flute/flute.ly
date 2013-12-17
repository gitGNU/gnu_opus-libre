%-- Sonate -- flute.ly --------------------------------------------%
% (c) 2013 Valentin Villenave <valentin@villenave.net>
\language "italiano"

Titre = "Sonate pour un mois de mai"
FluteInstr = "Flûte"
PianoInstr = "Piano"

ITitre = "I."
IITitre = "II."
IIITitre = "III."

% Print "I", "II" and "III" as movement titles
% #(ly:set-option 'use-variable-names #t)

#(set-global-staff-size 16)

\header {
  title = \markup {
    \vconcat
    \center-column {
      \larger "Sonate"
      \smaller "pour un mois de mai"
      \vspace #.5
    }
  }
  subtitle = "pour flûte et piano"
  composer = "Valentin Villenave"
  date = "mai 2013"
}

\paper {
  first-page-number = #-1
  % min-systems-per-page = #4
}

%\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    ""
    \line \italic {
      Pour
      \concat { M \super lle}
      F., à l'occasion de ses 30 ans.
    }
  }
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2013.
      }
      \line {
        \with-url #"http://valentin.villenave.net"
        \typewriter http://valentin.villenave.net
      }
      \vspace #.5
      \override #'(line-width . 100)
      \justify {
        Cette partition est publiée suivant les termes de la licence
        \with-url #"http://artlibre.org/licence/lal" \bold "Art Libre"
        \concat {
          ( \with-url #"http://artlibre.org"
          \typewriter http://artlibre.org ).
        }
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
	version
        \concat { $(lilypond-version) . }
      }
    }
  }
}
\pageBreak

IFlute = \relative do' {
  \time 7/4
  \tempo "Andante moderato"
  % 0 %
  mi'8(\dyn "p_sans nuances" fa, sol la si do re)
  mi( fa, sol la si do re) |
  mi( fa, sol la si do re)
  mi( fa, sol la si do re) |
  r fa,( sol la si do re) mi( fa, sol la si do re) |
  mi(\dyn "(sempre legatissimo)" fa, sol la si do re)
  mi( fa, sol la sib do re) |
  r mi( fa, sol la si do re) mi( fa, sol la si do |
  re) mi( fa, sol la si do re) mi( fa, sol la si do |
  re) r mi( fa, sol la sib do re) r mi( fa,) r4 |
  
  % 1 %
  r2 r4 mib'2-- \dyn "mp_dolce cantabile"
  r8 mib16( solb,)~ solb16 mib'8( sib32 reb |
  sib2~ sib8 lab) \t {sib(\> reb mib} solb2)\pp r8 lab, |
  \t {sib( reb mib)} solb(\> mib,2..)\! ^"(ten.)"
  r8 mib~--( \t {mib reb' lab)} |
  reb4.( sib8) mib,16(\> sold) dod-. fad-.
  si2~--\pp si8 r \t {sold,( si dod)~} |
  dod4. mib,8-- \t {fad'( sold, si}
  dod4.) mib,8-- \tt {fad16(\< sold si dod re)~} re4\! |
  \halfBeat
  \t {dod16(\p re8)~} re16 fad-.
  \t {mid( sold, si)~} si16. dod32(
  \t {re8) dod16-.} re32(^"détimbré (éolien mixte)"
  \xNotesOn dod si sold)
  \xNotesOff \t {r8 mid(\mp fad)}
  \t {re( fad mid)}
  \tt {la16( sib do mib-. fa-.)} \t {r8 solb( fa~)} |
  \fullBeat
  fa16 solb( fa)-. sol,-. \tt {mi( sol) mi( sol la)}
  \halfBeat
  \tt {sib( la) dod( si mi-.)} \t {re( sol la)} r sol~(
  \tt {sol\dyn "mp_sempre" la fad mi dod}
  \ttt {sol fad la) mi( lad si)}
  \t {re(\< dod mi)} fad32( sol la sib |
  
  % 2 %
  dod4.)\mf r8 re,(^"con lirismo" dod')~ \t {dod re,( dod'~}
  \t {dod mi16->} fa,8~ fa sol)
  \tt {la16(\< si do re dod~} |
  dod8.)\! r16 re,8( dod'~
  \t {dod) si,( lad'} dod) lad16(\> sold)
  \t {fad8( mi red~} red16 dod'8.)\p ~ dod8 r |
  re,8(\mp \< dod'4) fad,8~( fad16 fa')
  \t {fa,( mi') re,-.}
  dod'32( re,) dod'8.--~\!
  \t {dod16 fad,( fa'8) mi16( fa,)-.}
  fad8(\< fa') \t {mi( fad sol} |
  sold)\f r sold2\flageolet~(\dyn "p_sub."
  sold8 la, sold'4\flageolet)
  fa,8( mi'\flageolet~
  \t {mi fad, fa'\flageolet} |
  sold16\flageolet) la,(_"dolce" si dod
  \t {red8 mi fad} \t {mi) fa,( sol)}
  la16( si do re \t {dod8) re,( fa} lad-- si,-- re) r |
  dod'2.\flageolet(\pp do4.\flageolet
  sib\flageolet sol4\flageolet~) |
  sol16 r sol8~( \t {sol lab sib)}
  \fullBeat
  reb16( do) sib sol \tt {sib( sol) fa mi re}
  \ttt {si( re) si la( si) la}
  \halfBeat sold32(\< si la sold
  fad sold fad red dod4~)\mp |
  
  % 3 %
  dod8 r r2 r8 mi'(\dyn "p_semplice" fa, sol la si do re) |
  mi( fa, sol la si do re) mi( fa, sol la si do re) |
  r mi( fa, sol la si) r mi( fa, sol sib4) r |
  mi8( fa,) r2 r1 |
  r4 r8 do~--\dyn "pp_détimbré" do2. r2 |
  r r4 do2\mp\< (-"gliss."\glissando dod)~ |
  dod4\! r8 do~\< do2\glissando
  dod2(\>\glissando do4)\! |

  % 4 %
  r4 r8 dod~^(\dyn "mf_calorosamente"
  ^"(ordin.)" \< dod2 re4. mi) |
  sol2~^(\> sol8 \xNotesOn fad32 fa mi mib)\!
  \xNotesOff r8 do!~(
  do32 re mi sol la sol mi re
  dod8) \t {re16(\< dod re)}
  \t {mi( re mi)} \t {sol( mi sol)} |
  la8--\! re,32(-\< mi sol la)
  sib8(\! \xNotesOn \t {la16 sol fad)} \xNotesOff
  r4 dod8-- \t {re16(\cresc dod re)}
  \t {mi( re mi)} \t {sol( mi sol)}
  \t {la( dod, mi} \t {sol la sib)}
  \t {do( mi, sol} \t {la do mib)} |
  fa8--\f \t {mib16( fa mib} fa4)
  r8 dod32(\mp\< la sol fad)
  re'( dod si sold) mi'( dod si lad)
  \t {sol'4(\f fad16 fa}
  mi32 \xNotesOn dod la mib) \xNotesOff
  r8 \t {dod(\mf mi fad} |
  sol16) do,( \t {mib fa solb}
  \t {lab8)-. si?-. r16 do,(}
  \t {re\< mi fa} \t {sol la si)\!}
  \t {do,(\< re mi} \t {fad sol la}
  si)\! do,-. \t {dod( re mi} fad8-.)\mp
  \t {red16( mi fad} la8-.) r16 dod,-. |
  \t {red(\p mi fad} \tupletsOff
  \t {la fad mi)}
  \t {red( mi fad)} \t {mi( la si)}
  \t {do(\< la sol} \t {fad sol la)}
  \t {do( si la} \t {fad la si)}
  \t {do( sib sol} \t {fa sol sib)}
  do8\mf \t {mi,16(\p\< fa sol)}
  \t {sib( sol sib)} \t {do( sib do)} |
  \tupletsOn
  \t {reb( sib do)} \t {reb-. mib-. fad-.\!}
  r mi, \t {do'(\< mib fad)}
  \t {sold( fad sold)} \tupletsOff
  \t {la( sold la)} \t {si( la si}
  \t {la si la)} \t {si( fad sold}
  \t {la si re)\f} \t {r mi-.\mp\< fad,-.}
  \t {sold-. la-. si-.}
  \t {re-. mi-. fad,-.}
  \t {sold-. si-. re-.\!} |

  % 5 %
  \time 2/4
  \tempo "Doppio tempo"
  R2
  \tupletsOn
  \fullBeat
  mi8:16->\dyn "f_molto" fa,!: sol: la: |
  si: do: re: mi: |
  fa,: sol: la: si: |
  do: re: mi: fa,: |
  sol:\dyn "(senza dim.)" la: si: do: |
  re8 r fa8:16 mi,: |
  sol:\dyn "senza dim." la: si: do: |
  re: fa: mi,: sol: |
  la: si: do: re: |
  fa: re,: sol:\< la: |
  si: do: sol'8-.\! r16 sol-. |
  sol8-.\ff sol16-. sol-. sol8-. sol16( mi) |
  fa( fad) sol8-. sol16-. sol-. sol-. dod,-. |
  re( mi) sol8-. re16-. mi-. sol-. la-. |
  sib(->\> la) sol-. mi-. sol-. re-. dod8-.\! |
  sib'16(\> la) sol-. mi-. re-. dod-. si-. sold-. |
  si(\f dod) re-. mi-. fa,8->-- mi'16( fa,) |
  r si-. do-. mi-. r si-. do-. re-. |
  mi(-> fa,) r sol-. la-. si-. do-. re-. |
  mi(-> fa,) r mi'-. mi-.\mf mi-. mi-. mi-. |
  mi-. mi-. mi-. mi-. mi-. mi-. r fa,-. |
  sol-.\> la-. si-. do-. re-. mi-. fa,-. sol-. |
  la-. si-. do-. re-.\! r fa,-.\mp fa-. fa-. |
  fa-. fa-. fa-. fa-. fa-. fa-. fa( mi,) |
  fa'-.\p\> fa-. fa-. fa-. fa-. fa-.\! r8 |
  r4 dod,~(\mf\< | \t {dod re\> mi\!)} |
  r16 fa\dyn "p_scherzando"
  fa( mi) mi( fa) fa( mi) |
  mi( fa) fa( mi) fa'( mi,) mi( fa) |
  fa( mi) mi( fa) fa( mi) mi( fa) |
  r fa( mi') fa-. mi'( fa,) mi( mi,) |
  fa( mi) mi( fa) r mi-. mi( fa) |
  fa( mi') r fa,-. sol-. la-. si-. do-. |
  re( mi,) r fa'-.\mp sol-. la-. si-. do-. |
  re( mi) fa,( mi') mi-. sib,-. mi'-. mi-. |
  mi-. mi-. r dod-. re-. red-. mi( lad,) |
  si-. dod-. r sold-. la-. si-. re-. fa,-. |
  mi'-. mi-. mi8-. r16 mi(\< fa sol) |
  \t {sib4->-- do->-- reb->--\dyn "f_non troppo"} |
  R2*2
  dod,4~(\dyn "mp_semplice"\> dod16 sib8) do16( |
  \t {sol4) fa( sib')} |
  mi,4--\p fad,16( lad) dod red |
  \t {mi4( re8)} la-- mib16-. lab,-. |
  \t {r4 do'( fad8 fa,~} |
  fa16\> la, mib'' sol, fad' la,)\! r8 |
  r8 si,4.--\mp |

  % 6 %
  \time 7/4
  \tempo "Tempo I"
  do,1~--^"(ten.)" do4 r2 |
  r4 r8 fad'4(\dyn "p_dolce espressivo"
  mib,8~ mib4~ \t {mib8 sib' reb} sib2~) |
  sib8 r sib4--\< lab8( sib4.) lab--\> sib--\! |
  \t {r8 do4--(~} \t {do sib8~}
  sib4.\> la8)~ la2\!~ la8 r |
  r re( do sib \t {la4\> sol8)~}
  sol2~\! sol8 r r4 |
  r8 mi'4--(\pp\> re-- do-- sib-- la-- sol-- fa8--~) |
  fa4 mi'2.\!--~^"(ten., non vibrato)"
  mi4 r2 \bar "|." 
}

%% Ideally, this should be done automatically.
\include "scores/sonate_flute/00_diagrams.ily"

IIFlute = \relative do' {
  \time 7/4
  \tempo "Statico" 4=52
  % \key fa \major
  R1*7/4
  r2 fad~^(^\dyn "mp,_quasi flauto di bambù" _\fsharp
  fad8 dod'~_\highcsharp dod4. mi8~_\highe |
  mi si?~_\bnatural si4 dod4._\highcsharp
  re8~_\highd re4) r8 la4^(_\anatural
  do8_\highc | re?2)_\highd
  \t {mi4(\<^"(ordin.)" sol8)~} \t {sol mi( sol}
  la8)\mf r la2(\p |
  sold4.\> fad8 si?4. do,8~ do)\! r sold'2--\pp |
  mi2.--~ mi4. mib,8~^(^\mp _\eflat mib fa~_\fnatural fa4) |
  r8 \t {re16(^"(ordin.)"\p\< mib) fa} la?4--
  \t {si?16(-> la) si~} si8~ si4\!
  \halfBeat
  \t {re,16( mib fa} lab) dod,-.
  \t 8 {
    mi(\< fad sold) si( dod mi)
    sol( la do) re( mi sol
  }
  \bar "||"
  la8)\! r
  \t 8 {
    sold,16(\mf mi red) sib( mi red)
    sib( fa mi)
  } do8-.
  \t 8 {
    do''16( lab sol) \tupletsOff
    re( lab' sol) re( la sold)
  } mi8-.
  \t 8 {
    mi''16( do si) do( si fad)
    si( fad dod) do( fad do)-.
    fa'(\p\< do si sol re do'
  } sold'8)\! r
  \tupletsOn
  \t 8 {
    do,16\p\<( lab sol) re( sol lab)
    si( do fa)
  } sold-.\! sol,-. r8
  \tupletsOff
  \t 8 {
    dod16(\mp mi fad) sold( mi red
    do si sol) sold'( sib, fa)
    sold'(\< la si
  } do8-.)\! r16
  do,,16:64~->\mf_\highc do8:
  reb:~->_\highcsharp reb16: si8.:->~_\bnatural
  \tupletsOn \t 4 {si8 r reb\mp--^"(ordin.)"}
  \t 8 {
    do16( mi lab sol si mib)
    re,( fad sib
  } la-. dod-. fa8-.) r
  \bar "||"
  \fullBeat
  mi,16\<( mi,-.) fa'( fa,-.)
  mi''( mi,-.) fa'(\f\> fa,-.)
  mib'( mib,) re'( re,) si'( si,)
  la'( la,) mi'(\! mi,) fad'( fad,)
  mib'( mib,) fa'( fa,) r mi( mi'8) |
  \t 4 {fad'(\mf\< fad,) sol'(\! \tupletsOff
  sol,) dod(\< dod,) re'( re,)
  sold'( sold,) la'(\> la,)}
  \tupletsOn
  do16( do,) si'( si,)\!
  \t 4 {r4 la''8(\> sib, si,)\! r} |
  la''16(\mp\> la, si si,^"leggiero"
  sib-. do,-.)\! r8 r
  mi'4:--_\highe mi,8:--~_\enatural
  mi2*7/8: \glissando
  \hideNote re16^"gliss." r4
  \ttt 4 {
    re''16(\dyn "p_scherzando"
    si) fad si( fad) si
    \tupletsOff
    re( la) fad la( fad) la
    re( la) fa la( fa) la
    re( sib) fa sib( fa) sib
    re( sib) sol sib( sol) sib
    re( si) sol si( sol) si-.
    re-. fad,,( sib re fad sib)
    \tupletsOn
  } re,8-- \t {sold,16( si dod)}
  re8-- \t {sol,16( lab sib)}
  reb--( fa,-- lab-- sib-- si8-- do,--)
  reb'( mib fad4)~ fad8 r |
  mi,4^(\mp~_\enatural
  \t {mi fa_\fnatural sol_\gnatural}
  sib2)~ _\bflat sib8 r
  \tt {r16 sol(\<^"(ordin.)" sib) mi-. la-.}
  dod2\flageolet(\mf\> mi4\flageolet
  fad\flageolet sol2\flageolet)\pp~ sol8 r
  \bar "||"
  \halfBeat
  r16 dod,,,32->(^\dyn "mf_serioso"
  re) re( dod) dod( re)
  re( do) do( la') la( fad) fad( sol)
  sol( fad) fad( sol) mib( fa) fa( mib)
  mib([ fa mib fa) r16 fad32(\< sol)\!]
  r fad(\< sol sold la16\!) r
  si32([\f la) r si( la sold) r do(]
  si[ la sold) r do(\< dod\!)] r16 |
  sol32->(\mf fad) fad( sol) sol( fad) fad( sol)
  sol( fa sol mi sol mib sol) mib(
  re)[ dod fa(\< fad sol\!) r sol( dod,)]
  r sol'([ dod,) r sol'( re sol mi)] 
  sol(^\cresc dod, sol' dod,) sol'( re sol re)
  sol( mi sol mi) sol( dod, sol' dod,)
  sol'( mi) sol( dod, re mi sol16^\!) |
  r8 dod,~->--\f \startTrillSpan ^"(éolien mixte)"
  dod8.*2/3 s16\stopTrillSpan
  sol'16~->--^\markup \flat _\gtrill \startTrillSpan
  sol4 r16 \stopTrillSpan
  sib8.~->--^\markup \flat _\bflattrill \startTrillSpan
  sib4~ sib8. sib'16->\stopTrillSpan
  \tt {r16 sib,(->\< sib'-> sib,-> sib'')->\!}
  \bar "||"
  \mark \markup \fermata
  r8 dod,,4(\dyn "mp_semplice" mi fad2 sold8 si2)
  la8(\> mi4 sol8~ sol2 re4.\!)_\highd
  mi8~^( _\highe mi4~ | mi dod_\highcsharp
  si4.)_\bnatural la8^(\pp_\anatural do_\highc
  re~ _\highd re2) |
  r4 mib,(~_\eflat \mp mib8 fa2)_\fnatural
  mib8~(^"simile"\< \t {mib fa mib} fa4~ |
  fa)\mf r r2 mib(\dyn "poco_f"\> fa4~ |
  fa2.*2/3) s4\! r8 mib4(^"(ordin.)"\ppp
  fa8~ fa4 mi')~ |
  mi1*7/4\fermata
  \bar "|."
}

IIIFlute = \relative do' {
  \tempo "Quasi adagio"
  \time 4/4
  mi8(\dyn "p_dolce" fa) r mi( fa fad) r mi(
  fa sol) lab( sol)
  r mi(\< fa sol
  sib reb)\> dob( sib)\! r mi,(\< fa sol
  sib re) fad(\mp mib reb do sib sol)
  r mi( fa sol sib re) sol( do
  dod\dyn "(mp_sempre)" sold mi dod) si( sib) r mi,(
  fa sol sib re) dod( sold' red' la
  mi do la sol) fad( mi dod fa) |
  r mi'(\> dod si sib lab fa mib)\! |
  r mi'(\> re dod si sold)\! r mi'(\> |
  red dod lad)\! r mi'(\p fa,) r4 |
  mi2(^\dyn "pp_da lontano" _\enatural
  fa)_\fnatural r mi(_\enatural ^\dyncresc "p_cresc."
  fa_\fnatural fad)_\fsharp \! |
  r mi(^\mf ^\< ^"(quasi flauto di bambù)" _\enatural
  fa_\fnatural sol_\gnatural
  sib\!_\bflat la)_\anatural |
  r sib4.(^\mp ^\>_\bflat la8)_\anatural ~ |
  la4\! r8 sib--~ ^"ordin."
  \t {sib4 la( sib)~} |
  \t {sib8 r la--\<}
  \tt {sib16( la sib la' sib,)}
  sib'(\mf sib,) la'( la,)
  r la sib'(\< sib,) |
  la'( la,) sold'(\! sold')
  r sold,, sib'(\< sib,)
  la'( la,) sol( sol')
  fad'(\! fad,) sol( sol'?) |
  r dob,, sib'( sib,)
  la'( la,) sol'( sol,)
  mi'( mi') dod( dod,)
  red,( red') mi( mi') |
  r mi(\f fa) sib,(\mp
  la sol) mi'(\f fa
  fad) do,(\mp la sol
  fad) mi''(\f fa sol |
  lab sol) mi,(\mp\< dod
  fa sold lad si)
  mi( fa sol sib
  \t {reb8--\f dob-- sib--)} |
  r16 mi,(\mp fa,) r
  mi'( fad, la,-.) r
  fa''( sol, si,-. mi,-.)
  r mi''( fa sol,-.) |
  sib,-. re,-. r mi''(
  sold,\dim dod,) fa'( la,,
  fad) r mi''( la,)
  fa'( dod,) mi'( fa) |
  \t 8 {
    \halfBeat
    mi,,16->\dyn "mf_sub."
    r mi( fa) r mi(
    fa fad) r mi( fa sol)
    lad( si) r lad( si do)
    r lad( si dod re dod)
  }
  r32 lad( si sold)
  \t 8 {
    re'16(\cresc dod) mi-.
    fa-> r mi( fa fad) sol,-.
    mi'( fa sol lab) r sol(
    lab sib reb) la( si re)
  } mi4.(\f _"elegiaco" fa8)~ fa4 r |
  r8 mi(~ mi4 fa4. fad8)~ |
  fad4 r mi8.\fp( sold,32 do,)
  \t {mi,16-.\< mi'-. mi'-.} fa8--\f ~ |
  fa4 \t {sol8(\fp re16)}
  \t {sol,( re) sol,-.} re8-.
  lab'''8(--~\dyn "f_molto" lab4 |
  sol4.) r8 r4 \t {mi8(\fp red16)}
  mi32( mi,) red( red') |
  \t {mi16-. red,,-. mi'-.} fa'8\f\< ~
  \t {fa fa,,-- fa''--} sol4--\!
  \t {mi16( fa sol)} sib8--~ |
  sib \t {mi,16( fa sol)}
  \t 4 {sib4--( reb8--)~} reb4 r8 dob(\mf\> ~ |
  dob~ \t {dob16 sib dob} sib8)\! r r4
  \fullBeat
  sib,,16(\dyn "p_froid et précis" la) sib( la |
  lab) sib( la) sib( la lab)
  sib( la sol fad sol) sib( la) sib( la lab) |
  sib( la sol fad sol) sib( la sol mi dod red mi)
  sib'( la) sib( la | lab)
  sib( la sol fad sol) sib( la sol mi dod red mi)
  sib'( la sol) |
  mi(^"sempre sostenuto" do mi do dod mi fa) mi(
  fa fad) mi( fa sol lab sol)
  mi( | fa sol sib) reb( do) reb( do si)
  reb( do) reb( do si8) r |
  r4 \ttt {r16 la(\< re fad la si}
  \tttt {do\mf\> reb do sib sol mib sib)\!}
  \ttt {r fad'(\< lad dod red mi\f\>} |
  \tt {dod la mi-. sib-. mib,-.)\!}
  r8 dod'--\mf\< \t {re( mi) sol--}
  \tttt {sib16( re fad\> mid dod sold re}
  sol,16)\! r dod16( dod')
  re(\dyn "mp_scherzando" mi) sol-. si-.
  \t 8 { \halfBeat
    sib( fad re) dod( fa la)
    sold( mi do) si( red sol)
    fad( re sib sol mi dod)
    fa'( dod la fad mib do)
    red'(\> si sol mi dod sib)
    do'( sold mi} re)-- dod--
  \fullBeat
  sib4.(\p ^"espr." la8) r2 |
  do16( sib8.~ sib8 la)
  \t 4 {lab(\> si do)\!} r4 |
  \t 2 {
    sib4--(^\dyn "mp_détimbré" _\bflat
    la-- _\anatural
    sol--) _\gnatural
  } \tt {fad16(\< sol) si-. dod-. re(~}
  re8\! dod) |
  r sib--(~ \dyncresc "mf_(timbrer progressivement)"
  \t {sib la sol)}
  mi-- dod-- \t {red( mi si'}
  \t {dod mi sol)}
  fa16(\! _"(ordin.)" fa') mi,( mi') r8
  fa,16(\mf\> fa') mi( mi,) mib( mib')\! |
  r8 fa,16(\> fa') mi( mi,)
  re( re') dod( dod,) re(\! re') r8
  fa,16( fa') mi,(\dyn "mp_dolce" mi')
  re( re,) si( si')
  sold,( sold') lad,( lad') si( si,)
  fa'( fa') r mi,(\> mi'8)
  re,16( si') r sol,?( sold'8)\!
  \t {si,(\< si' si')}
  \t {lad(\f\> lad, lad,)\!} |
  r8 do,--\p\< \t {si'( si' si')}
  \t {lad(\f\> lad, lad,)\!}
  \t {la(\< la'! la'!\mf)} |
  \t {r si,(\dim si')}
  \t {lad( lad,) sold'(}
  \t {sold,) sol,( sol'!}
  \t {sol'!)\flageolet sold,(\pp sold'!\flageolet)} |
  \mark \markup \fermata
  r8 sib,,4(\dyn "mp_semplice"
  la sol mi8~ mi do4 mib fa fad8) |
  \t 2 {r4 sib( la sol\dyn "(senza dim.)" mi re}
  dod4) r8 sib'(\dyncresc "p_cresc."
  \t 4 {
    lab sol fa re) sib'( sol
    fa mi) sib'(\< la) si(\mf fad)
  } r16 do'(\mp dod fad,) r4 |
  \tt {sold16(\> la si re8~} re red)\!
  r4 \t {r8 mi(\p fa,)}
  \bar "|."
}
