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
        \with-url #"http://artlibre.org/licence/lal" \bold { Art Libre }
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
  % 0 %
  mi'8(\dyn "p_sans nuances" fa, sol la si do re)
  mi( fa, sol la si do re) |
  mi( fa, sol la si do re)
  mi( fa, sol la si do re) |
  r fa,( sol la si do re) mi( fa, sol la si do re) |
  mi^"sempre legatissimo" fa, sol la si do re
  mi fa, sol la sib do re |
  r mi fa, sol la si do re mi fa, sol la si do |
  re mi fa, sol la si do re mi( fa, sol la si do |
  re) r mi( fa, sol la sib do re) r mi( fa,) r4 |
  
  % 1 %
  r2 r4 mib'2-- \dyn "mp_dolce cantabile"
  r8 mib16 solb,~ solb16( mib'8 sib32 reb |
  sib2)~ sib8 lab \t {sib(\> reb mib} solb2)\pp r8 lab, |
  \t {sib( reb mib)} solb(\> mib,2..)\! r8 mib~ \t {mib reb' lab} |
  reb4. sib8 mib,16 sold dod fad si2~ si8 r \t {sold, si dod~} |
  dod4. mib,8 \t {fad' sold, si}
  dod4. mib,8 \tt {fad16 sold si dod re~} re4 |
  \t {dod16 re8~} re16 fad \t {mid sold, si~} si16. dod32
  \t {re8 dod16} re32 \xNotesOn dod si sold \xNotesOff \t {r8 mid fad}
  \t {re fad mid} \tt {la16 sib do mib fa} \t {r8 solb fa~} |
  fa16 solb fa sol, \tt {mi sol mi sol la}
  \tt {sib la dod si mi} \t {re sol la} r sol~
  \tt {sol la fad mi dod} \ttt {sol fad la mi lad si}
  \t {re dod mi} fad32 sol la sib |
  
  % 2 %
  dod4. r8 re, dod'~ \t {dod re, dod'~}
  \t {dod mi16} fa,8~ fa sol \tt {la16 si do re dod~} |
  dod8. r16 re,8 dod'~ \t {dod si, lad'} dod lad16 sold
  \t {fad8 mi red~} red16 dod'8.~ dod8 r |
  re,8 dod'4 fad,8~ fad16 fa' \t {fa, mi' re,}
  dod'32 re, dod'8.~ \t {dod16 fad, fa'8 mi16 fa,}
  fad8 fa' \t {mi fad sol} |
  sold r sold2~ sold8 la, sold'4 fa,8 mi'~ \t {mi fad, fa'} |
  sold16 la, si dod \t {red8 mi fad} \t {mi fa, sol}
  la16 si do re \t {dod8 re, fa} lad si, re r |
  dod'2. do4. sib sol4~ |
  sol16 r sol8~ \t {sol lab sib}
  reb16 do sib sol \tt {sib sol fa mi re}
  \ttt {si re si la si la} sold32 si la sold
  fad sold fad red dod4~ |
  
  % 3 %
  dod8 r r2 r8 mi' fa, sol la si do re |
  mi fa, sol la si do re mi fa, sol la si do re |
  r mi fa, sol la si r mi fa, sol sib4 r |
  mi8 fa, r2 r1 |
  r4 r8 do~ do2. r2 |
  r r4 do2(-"gliss." dod)~ |
  dod4 r8 do~ do2 dod2( do4) |

  % 4 %
  r4 r8 dod~ dod2 re4. mi |
  sol2~ sol8 \xNotesOn fad32 fa mi mib \xNotesOff
  r8 do!~ do32 re mi sol la sol mi re
  dod8 \t {re16 dod re} \t {mi re mi} \t {sol mi sol} |
  la8 re,32 mi sol la sib8 \xNotesOn \t {la16 sol fad} \xNotesOff
  r4 dod8 \t {re16 dod re} \t {mi re mi} \t {sol mi sol}
  \t {la dod, mi} \t {sol la sib} \t {do mi, sol} \t {la do mib} |
  fa8 \t {mib16 fa mib} fa4 r8 dod32 la sol fad
  re' dod si sold mi' dod si lad \t {sol'4 fad16 fa}
  mi32 \xNotesOn dod la mib \xNotesOff r8 \t {dod mi fad} |
  sol16 do, \t {mib fa solb} \t {lab8 si? r16 do,}
  \t {re mi fa} \t {sol la si} \t {do, re mi} \t {fad sol la}
  si do, \t {dod re mi} fad8 \t {red16 mi fad} la8 r16 dod, |
  \t {red mi fad} \tupletsOff
  \t {la fad mi} \t {red mi fad} \t {mi la si}
  \t {do la sol} \t {fad sol la} \t {do si la} \t {fad la si}
  \t {do sib sol} \t {fa sol sib} do8 \t {mi,16 fa sol}
  \t {sib sol sib} \t {do sib do} |
  \tupletsOn
  \t {reb sib do} \t {reb mib fad} r mi, \t {do' mib fad}
  \t {sold fad sold} \tupletsOff
  \t {la sold la} \t {si la si} \t {la si la}
  \t {si fad sold} \t {la si re} \t {r mi fad,} \t {sold la si}
  \t {re mi fad,} \t {sold si re} |

  % 5 %
  \time 2/4
  \tempo "Doppio tempo"
  R2
  \tupletsOn
  mi8:16 fa,!: sol: la: |
  si: do: re: mi: |
  fa,: sol: la: si: |
  do: re: mi: fa,: |
  sol: la: si: do: |
  re8 r fa8:16 mi,: |
  sol: la: si: do: |
  re: fa: mi,: sol: |
  la: si: do: re: |
  fa: re,: sol: la: |
  si: do: sol'8 r16 sol |
  sol8 sol16 sol sol8 sol16 mi |
  fa fad sol8 sol16 sol sol dod, |
  re mi sol8 re16 mi sol la |
  sib la sol mi sol re dod8 |
  sib'16 la sol mi re dod si sold |
  si dod re mi fa,8 mi'16 fa, |
  r si do mi r si do re |
  mi fa, r sol la si do re |
  mi fa, r mi' mi mi mi mi |
  mi mi mi mi mi mi r fa, |
  sol la si do re mi fa, sol |
  la si do re r fa, fa fa |
  fa fa fa fa fa fa fa mi, |
  fa' fa fa fa fa fa r8 |
  r4 dod,~ | \t {dod re mi} |
  r16 fa fa mi mi fa fa mi |
  mi fa fa mi fa' mi, mi fa |
  fa mi mi fa fa mi mi fa |
  r fa mi' fa mi' fa, mi mi, |
  fa mi mi fa r mi mi fa |
  fa mi' r fa, sol la si do |
  re mi, r fa' sol la si do |
  re mi fa, mi' mi sib, mi' mi |
  mi mi r dod re red mi lad, |
  si dod r sold la si re fa, |
  mi' mi mi8 r16 mi fa sol |
  \t {sib4 do reb} |
  R2*2
  dod,4~ dod16 sib8 do16 |
  \t {sol4 fa sib'} |
  mi,4 fad,16 lad dod red |
  \t {mi4 re8} la mib16 lab, |
  \t {r4 do' fad8 fa,~} |
  fa16 la, mib'' sol, fad' la, r8 |
  r8 si,4. |

  % 6 %
  \time 7/4
  \tempo "Tempo I"
  do,1~ do4 r2 |
  r4 r8 fad'4 mib,8~ mib4~ \t {mib8 sib' reb} sib2~ |
  sib8 r sib4 lab8 sib4. lab sib |
  \t {r8 do4~} \t {do sib8~} sib4. la8~ la2~ la8 r |
  r re do sib \t {la4 sol8~} sol2~ sol8 r r4 |
  r8 mi'4 re do sib la sol fa8~ |
  fa4 mi'2.~ mi4 r2 \bar "|." 
}

IIFlute = \relative do' {
  \time 7/4
  % \key fa \major
  R1*7/4
  r2 fad~ fad8 dod'~ dod4. mi8~ |
  mi si?~ si4 dod4. re8~ re4 r8 la4 do8 |
  re?2 \t {mi4 sol8~} \t {sol mi sol} la8 r la2 |
  sold4. fad8 si?4. do,8~ do r sold'2 |
  mi2.~ mi4. mib,8~ mib fa~ fa4 |
  r8 \t {re16 mib fa} la?4 \t {si?16 la si~} si8~ si4
  \t {re,16 mib fa} lab dod,
  \t 8 {mi fad sold si dod mi sol la do re mi sol}
  \bar "||"
  la8 r
  \t 8 {sold,16 mi red sib mi red sib fa mi} do8
  \t 8 {do''16 lab sol \tupletsOff re lab' sol re la sold} mi8
  \t 8 {mi''16 do si do si fad si fad dod do fad do
  fa' do si sol re do'} sold'8 r
  \t 8 {do,16 lab sol re sol lab si do fa} sold sol, r8
  \t 8 {dod16 mi fad sold mi red do si sol sold' sib, fa
  sold' la si} do8 r16 do,,16:64~ do8: reb:~ reb16: si8.:~
  \tupletsOn \t 4 {si8 r reb}
  \t 8 {do16 mi lab sol si mib re, fad sib} la dod fa8 r
  \bar "||"
  mi,16 mi, fa' fa, mi'' mi, fa' fa, mib' mib, re' re, si' si,
  la' la, mi' mi, fad' fad, mib' mib, fa' fa, r mi mi'8 |
  \t 4 {fad' fad, sol' \tupletsOff
  sol, dod dod, re' re, sold' sold, la' la,}
  \tupletsOn
  do16 do, si' si, \t 4 {r4 la''8 sib, si, r} |
  la''16 la, si si, sib do, r8 r mi'4: mi,8:~ mi2*7/8: \glissando
  \hideNote re16 r4
  \ttt 4 {
    re''16 si fad si fad si
    \tupletsOff
    re la fad la fad la
    re la fa la fa la
    re sib fa sib fa sib
    re sib sol sib sol sib
    re si sol si sol si
    re fad,, sib re fad sib
    \tupletsOn
  } re,8 \t {sold,16 si dod}
  re8 \t {sol,16 lab sib} reb fa, lab sib si8 do,
  reb' mib fad4~ fad8 r |
  mi,4~ \t {mi fa sol} sib2~ sib8 r \tt {r16 sol sib mi la}
  dod2 mi4 fad sol2~ sol8 r
  \bar "||"
  r16 dod,,,32 re re dod dod re
  re do do la' la fad fad sol
  sol fad fad sol mib fa fa mib
  mib[ fa mib fa r16 fad32 sol]
  r fad sol sold la16 r
  si32[ la r si la sold r do]
  si[ la sold r do dod] r16 |
  sol32 fad fad sol sol fad fad sol
  sol fa sol mi sol mib sol mib
  re[ dod fa fad sol r sol dod,]
  r sol'[ dod, r sol' re sol mi] 
  sol dod, sol' dod, sol' re sol re
  sol mi sol mi sol dod, sol' dod,
  sol' mi sol dod, re mi sol16 |
  r8 dod,~\startTrillSpan
  dod8.*2/3 s16\stopTrillSpan
  sol'16~^\markup \flat \startTrillSpan
  sol4 r16 \stopTrillSpan
  sib8.~^\markup \flat \startTrillSpan sib4~ sib8.
  sib'16\stopTrillSpan
  \tt {r16 sib, sib' sib, sib''}
  % s1*0^\longfermata %% FIXME
  \bar "||"
  r8 dod,,4 mi fad2 sold8 si2
  la8 mi4 \breathe sol8~ sol2 re4. mi8~ mi4~ |
  mi dod si4. la8 do re~ re2 |
  r4 mib,~ mib8 fa2 mib8~ \t {mib fa mib} fa4~ |
  fa r r2 mib fa4~ |
  fa2. r8 mib4 fa8~ fa4 mi'~ |
  mi1*7/4\fermata
  \bar "|."
}

IIIFlute = \relative do' {
  \time 4/4
  mi8 fa r mi fa fad r mi fa sol lab sol
  r mi fa sol sib reb dob sib r mi, fa sol
  sib re fad mib reb do sib sol r mi fa sol
  sib re sol do dod sold mi dod si sib r mi,
  fa sol sib re dod sold' red' la mi do
  la sol fad mi dod fa |
  r mi' dod si sib lab fa mib |
  r mi' re dod si sold r mi' |
  red dod lad r mi' fa, r4 |
  mi2 fa r mi fa fad |
  r mi fa sol sib la |
  r sib4. la8~ |
  la4 r8 sib~ \t {sib4 la sib~} |
  \t {sib8 r la} \tt {sib16 la sib la' sib,}
  sib' sib, la' la, r la sib' sib, |
  la' la, sold' sold' r sold,, sib' sib, la' la,
  sol sol' fad' fad, sol sol' |
  r dob,, sib' sib, la' la, sol' sol,
  mi' mi' dod dod, red, red' mi mi' |
  r mi fa sib, la sol mi' fa fad do, la sol
  fad mi'' fa sol |
  lab sol mi, dod fa sold lad si mi fa sol sib
  \t {reb8 dob sib} |
  r16 mi, fa, r mi' fad, la, r
  fa'' sol, si, mi, r mi'' fa sol, |
  sib, re, r mi'' sold, dod, fa' la,, fad r
  mi'' la, fa' dod, mi' fa |
  \t 8 {
    mi,,16 r mi fa r mi fa fad r mi fa sol
    lad si r lad si do r lad si dod re dod
  }
  r32 lad si sold
  \t 8 {
    re'16 dod mi fa r mi fa fad sol,
    mi' fa sol lab r sol lab sib reb la si re
  } mi4. fa8~ fa4 r |
  r8 mi~ mi4 fa4. fad8~ |
  fad4 r mi8. sold,32 do, \t {mi,16 mi' mi'} fa8~ |
  fa4 \t {sol8 re16} \t {sol, re sol,} re8 lab'''8~ lab4 |
  sol4. r8 r4 \t {mi8 red16} mi32 mi, red red' |
  \t {mi16 red,, mi'} fa'8~ \t {fa fa,, fa''} sol4
  \t {mi16 fa sol} sib8~ |
  sib \t {mi,16 fa sol} \t 4 {sib4 reb8~} reb4 r8 dob~ |
  dob~ \t {dob16 sib dob} sib8 r r4
  sib,,16(la) sib( la |
  lab) sib( la) sib( la lab)
  sib( la sol fad sol) sib( la) sib( la lab) |
  sib( la sol fad sol) sib( la sol mi dod red mi)
  sib'( la) sib( la | lab)
  sib( la sol fad sol) sib( la sol mi dod red mi)
  sib'( la sol) |
  mi( do mi do dod mi fa) mi( fa fad) mi( fa sol lab sol)
  mi( | fa sol sib) reb( do) reb( do si) reb( do) reb( do si8) r |
  r4 \ttt {r16 la re fad la si}
  \tttt {do reb do sib sol mib sib}
  \ttt {r fad' lad dod red mi} |
  \tt {dod la mi-. sib-. mib,-.} r8 dod'
  \t {re mi sol} \tttt {sib16 re fad mid dod sold re}
  sol,8 dod16 dod' re mi sol si
  \t 8 {
    sib fad re dod fa la sold mi do si red sol
    fad re sib sol mi dod fa' dod la fad mib do
    red' si sol mi dod sib do' sold mi} re dod
  sib4. la8 r2 |
  do16 sib8.~ sib8 la \t 4 {lab si do} r4 |
  \t 2 {sib4 la sol} \tt {fad16 sol si dod re~} re8 dod |
  r sib~ \t {sib la sol} mi dod \t {red mi si'}
  \t {dod mi sol}
  fa16 fa' mi, mi' r8
  fa,16 fa' mi mi, mib mib' |
  r8 fa,16 fa' mi mi, re re' dod dod, re re' r8
  fa,16 fa' mi, mi' re re, si si' sold, sold' lad, lad' si si,
  fa' fa' r mi, mi'8 re,16 si' r sol,? sold'8
  \t {si, si' si'} \t {lad lad, lad,} |
  r8 do, \t {si' si' si'} \t {lad lad, lad,} \t {la la'! la'!} |
  \t {r si, si'} \t {lad lad, sold'}
  \t {sold, sol, sol'!} \t {sol'! sold, sold'!} |
  r8 sib,,4 la sol mi8~ mi do4 mib fa fad8 |
  \t 2 {r4 sib la sol mi re} dod4 r8 sib'
  \t 4 {lab sol fa re sib' sol fa mi sib' la si fad}
  r16 do' dod fad, r4 |
  \tt {sold16 la si re8~} re red r4 \t {r8 mi fa,}
  \bar "|."
}
 