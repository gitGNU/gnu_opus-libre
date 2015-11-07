\language "italiano"

\layout {
  \context {
    \Score
    autoAccidentals = #`(Staff ,(make-accidental-rule 'same-octave 0)
                          ,(make-accidental-rule 'any-octave 0)
                          ,(make-accidental-rule 'same-octave 1)
                          ,neo-modern-accidental-rule)
    autoCautionaries = #`(Staff ,(make-accidental-rule 'same-octave 1)
                           ,(make-accidental-rule 'any-octave 1))
    extraNatural = ##f
  }
}

Quinze =
<<
  \new Staff \relative do' {
    r4 r8 re'^"R." do( si) r sol16^"J." la
    si8 si16 do re8 si la\( sol16\) sol si8 la
    sol8( fad) r la, re re re mi
    sol\( fad\) r4 re'8 la fad la
    re,4 r8 re16 mi fad8 fad16 sol la8 re,
    do'\( si\) r mi, la sol fad\( mi\)
    r2 r8 sol16^"R." sol do8 re
    mi mi r16 do mi fa sol8 sol16 mi do8 mi
    fa fa r fa,16 sol la8 la si do
    do\( sol\) sol4 r8 do16 sol fa8\( mi\)
    sol sol do re16 mib sol,8\( fad\) do' la
    do\( sib\) r4 r8 sol sib do re mib fa sib,
    sib^"J." sol16 mib reb'8\( do\)
    do r mi,16 mi re do sib'8 sol mi sol
    la16( si do4) sol8 r2
  }
  \addlyrics {
    Er sprach:
    Ge -- het hin in die Stadt zu ei -- nem, und
    sprecht zu ihm: Der Mei -- ster lässt dir
    sa -- gen: «Mei -- ne Zeit ist hier, ich will bei dir
    die Os -- tern hal -- ten mit mei -- nen Jün -- gern».
    Und die Jün -- ger tä -- ten, wie ih -- nen Je -- sus
    be -- foh -- len hat -- te, und be -- rei -- te -- ten das
    Os -- ter -- lamm. Und am A -- bend set -- zte er sich
    zu Ti -- sche mit den Zwöl -- fen.
    Und da sie as -- sen, sprach er:
    Wahr -- lich, ich sa -- ge euch: ei -- ner un -- ter euch
    wird mich ver -- ra -- ten.
  }

  \new Staff \relative do' {
    \clef bass
    fad,,4 r sol2~ sol mi
    re1~ re fad
    sol4 do la r si mi, do' r
    r2 mi4 r la, r fad r
    r sol do sib r2 la4 r sol r r2
    r4 re' mib2 mi1 fad4 sol do, r
  }
  \figures {
    <6>4 r r2 r <6\\>
    <_+>1*2 <6>1
    r2 <_!> <_+ 5+> r
    r <6> <6> <6 5>
    r4 <4>8 <3> r4 <4 2>
    r2 <6// 5-> <_-> r
    r4 <6-> <5-> <7-> <6>2 <5->
    <7->8 <6> <4> <3> <4> <_->
  }
>>

DixSept =
<<
  \new Staff \relative do' {
    r4 r8 do'^"R." sol' sol,16 lab sib8 lab sol( lab)
    r do,^"J." fa fa fa sol
    lab do,16 do do8 reb mib lab, r mib'16 fa
    solb8 mib la la r do do la
    fa fa16 sol la8 fa reb' r r sib16 fa
    reb8 reb reb mib fa sib, r sib'
    sib( sol) mi fa sol do, r do
    sol' sol16 lab sib8 sol mi mi reb' do
    sib( lab) r4 r8 do lab sol16 fa
    sib8 sib r mib,16 fa sol8 sol16 lab sib8 mib,
    do' do re mib mib sib r4
    r sol8^"R." lab sib sib16 do reb8 reb
    r16 sib lab sol mi'8 r16 do fa4 do8^"Ju." fa,
    re' re r4 r8 re^"R." la do sib4 r8 re,^"J." la'\( sol\) r4
    r8 sib16^"R." do re8 sib fa' fa r sib,
    sol fa16 mi! do'8 r sol'8. sib,16 sol8 do
    sib( la) r la re re sol mi16 fa \time 2/4 fa8( do) r4
    \bar "||" \time 3/4
    la4^"J."( sib) do
    \time 6/4 re8( do re4) sol, do, do' sib
    \time 4/4 la r
    r8 fa16^"R." sol la8 fa re' r16 re sol8. re16 do8( si) r sol
    fa' fa re sol fa( mi) r4 \time 6/4 \bar "||"
    mi,4^"J."( fa) sol la8( sib la sol fa mi re4) sol
    fa16( mi fa8) mi2 r4
    do mi sol sib2 sib4
    la4. sol8 fa mi fa2 r4
    re' do8( si) do( la) sold4. la8 si4
    mi, mi'8( re) do( si) re do si( la) si( sold)
    la( fad) sold4.(\prall la8) la2 r4
    do4 mi,8( fa) fa( mi16 fa) sol2 do,4
    mi sol do mi re8( do) si( la)
    re2 sol,4 fad sol la re, do' si2( la8 si) do( la)
    fad4.(\prall mi8) re4 sol la si
    si( mi,) r la si do~ do si8( la) sol( fad) si4 do re
    mi,4. fad8 sol4 do8( la) do( si) la( sol) sol2. r
  }
  \addlyrics {
    Er an -- t -- wor -- tete und sprach:
    Der mit der Hand mit mir in die Schüs -- sel
    tau -- chet, der wird mich ver -- ra -- ten. Des
    Men -- schen Sohn ge -- het zwar dah -- in, wie von
    ihm ges -- chrie -- ben ste -- het; doch we -- he dem
    Men -- schen, durch wel -- chen des Men -- schen
    Sohn ver -- ra -- ten wird! Es wä -- re ihm bess -- er,
    dass der -- sel -- bi -- ge Mensch noch nie ge -- bo -- ren
    wä -- re.
    Da an -- twor -- te -- te Ju -- das, der ihn ver -- riet, und
    sprach:
    Bin ich’s, Rab -- bi?
    Er sprach zu ihm:
    Du sa -- gest’s.
    Da sie a -- ber as -- sen, nahm Je -- sus das Brot,
    dan -- ke -- te und brach’s und gab’s den
    Jün -- gern und sprach:
    Neh -- met, es -- set, das ist mein Leib.
    Und er nahm den Kelch und dan -- ke -- te,
    gab ih -- nen den und sprach:
    Trin -- ket al -- le da -- raus; das ist mein
    Blut des neu -- en Test -- a -- ments,
    wel -- ches ver -- gos -- sen wird für vie -- le, zur
    Ver -- ge -- bung der Sün -- den. Ich sa -- ge euch: Ich
    wer -- de von nun an nicht mehr von die -- sem
    Ge -- wächs des Wein -- stocks trin -- ken bis an
    den Tag, da ich’s neu trin -- ken wer -- 	de mit
    euch in mei -- nes Va -- ters Reich.

  }
  \new Staff \relative do' {
    \clef bass
    mi,4 r r2 fa1~ fa2 do~ do4 mib~ mib2~ mib sib~ sib1
    sol2 mi~ mi do fa1
    sol la2 r4 sib mib, r r2 r4 sib' la r
    fad r r2 sol1~ sol4 r re' r
    mi r r2 fa4 r sib, r r do
    fa,( sol) la sib( la) sib do2 do,4
    fa r la r si r r2 r do4 r
    do( re) mi fa( mi) fa sol2 sol,4 do mi sol
    do do, r do mi sol
    dod, la' la, re fa la, sold la fa
    mi8( re mi) sold fad la sold4 si mi la, re fa
    red mi mi, la2.~ la8 do si la sol fa mi4 sol do
    mi8 re mi fa mi re do2.~
    do8 si do re do si la sol la si la sol
    fad4 re sol do re mi
    re8( do) re( mi) re( do) si( re) do( si) la( sol)
    do( si) do( re) do( si) do( mi) re( do) si( la)
    re( mi) re( do) si( la) sol( la) sol( fa) mi( re)
    do4 do' si mi re re, sol2. r
  }
  \figures {
    <6>4 r r <5-> <_->1 r2
    <6- _-> <6- _->4
    <6 4! 2>2. r2 <_-> r1
    <6! 5->2 <6 5-> r <7-> <_-> r
    <6- _-> r <6 5-> r
    r r r4 <6 4! 2> <6> r
    <6> r r r <_-> r r <7// 4 2> <_-> r <6-> r
    <6> r r r r r <6 5> r r <4>8 <3>
    r4 r <6> <6 5> r r <4> <3> r
    r r <6> r <6> r r2 r r
    r <6>4 <6 5> r r <4> <3> r r <6> r
    r r r <7- 5> r <6 _->
    <6 5> <7 _+> r r <6> <6> r r r
    <_+> r <7> <6> <6\\ 4> <7 -+> r <6> <6 4>
    <7 5> <_+> r <8> r <7// 4 2>
    <8 5 3> r <7 5> <6> r r <6> r r <5> r <6>
    <4 2> r <5 2> <0\\> r r
    <6 5> <7 _+> r <7 5> <_+> <6>
    <_+> r r <6> <4 2> <7 4 2>
    <7> <6> r <6> r r <7 _+> <6>8 <6> <6> <6> <5>2.
    <9>4 <8> <6> <6> <6 4> <5 _+> R1.
  }
>>

Vingt =
<<
  \new Staff \relative do' {
    r4 r8 fad^"R." fad si si16 dod re8 dod lad dod mi re dod\( re\) r4
    dod16 re mi fad sol8 la16 mi sol8\( fad\) r4
    fad8 re si dod16 re mi8 mi r si^"J."
    si8. re,16 re4 re'8 sold, sold la si sold mid mid16 dod' si8( la) r4
    r8 dod,16 dod fad8 fad16 sold si8\( la\) r mi
    la la16 si dod8 la mi' mi r sold,16 la
    si sold16 mi re'8 re r dod16 la fad8( sold16) la la8 mi
    r4 r la,8 si dod dod dod( mi16) red fad8\( mi\) r mi
    red fad la sold16( fad) si8 dod16 re dod8 mi, mi si r4 r2
  }
  \addlyrics {
  }

  \new Staff \relative do' {
    \clef bass
  }
  \figures {
  }
>>

Toto =
<<
  \new Staff \with { instrumentName = "L’Évangéliste" } \relative do' {
    r8 re' re la do4\( sib\) r8
    sib16 do re8 sib fa'4 r8 sib,
    sol fa16 mi! do'8 r sol'8. sib,16 sol8( do)
    sib\( la\) r la re re sol mi16 fa \time 2/4 fa8( do) r4
    R2. R1.
    r2 r8 fa,16 sol la8 fa re'4 r8 re fa4 re8 sol
    \time 2/4
    fa( mi) r4 R1*4 r2 r4 sol,8 la do\( si\) si si16 do mi8\( re\)
    r re
    \time 3/4 si la16( sol) do4 r R1.*7
    \time 4/4
    r8 si fad4 r8 fad16 sol la8 la red red dod si mi8. mi,16 mi4
    r8 mi16 sol fad8 mi lad4 r
    R1*3 r4 r8 la re8 re16 mi fad8 la, fad16 sol la la la8( re,) r4 r8 re'
    do( si) r sol16 la si8 do re sol fa16( mi) re( do) r4 r2
    R1*7 R2. R1*2 r4 r8 fa, la4 r R1*2 R2. R2 R1*3
    r16 la la la re4 r2 R1*2 R2.*3 r4 r8 re sol4
    si,8 do16 re sol,8 sol16 la si8 re r8 fa16 mi re do si la fad'4
    r16 re re re do la mib' do fad,8 do' si16 do si do re4. si8 do mib re do
    do8 si16( do si8 la si4)\fermata \bar "|."
  }
  \addlyrics {
    Pen -- dant qu'ils man -- geaient, ay -- ant pris du pain,
    Jé -- sus le rom -- pit, et, ren -- dant grâ -- ce, il le leur
    don -- na et dit_:
    À ces mots Ju -- das se le -- va et dit_:
    Jé -- sus prit a -- lors u -- ne cou -- pe et dé -- cla -- ra_:
    Ju -- das, qui é -- tait res -- té de -- bout en l'é -- cou -- tant,
    pro -- non -- ça ces mots_:
    Jé -- sus l'é -- cou -- ta si -- len -- ci -- eu -- se -- ment, et dit_:
    Ce -- pen -- dant Ju -- das a -- jou -- ta_:
    A -- lors…
    A -- lors Jé -- sus…
    A -- lors n'y te -- nant plus, les dis -- ci -- ples se sai -- si -- rent de Ju -- das
    et le pen -- di -- rent aus -- si -- tôt à la plus hau -- te bran -- che d'un
    pa -- lé -- tu -- vier nain.
  }
  \new Staff \with { instrumentName = "Jésus" } \relative do' {
    \clef bass
    R1*4 R2
    \time 3/4
    la4( sib) do
    \time 6/4 re8( do re4) sol, do, do' sib
    \time 4/4 la r r2
    R1 R2 R1*6 R2.
    \time 6/4
    mi4 fa sol la8( sib la sol) fa mi re4 sol
    fa16( mi fa8) mi2 r4
    do mi sol sib2 sib4
    la4. sol8 fa( mi) fa2 r4
    re' do8( si) do( la) sold4. la8 si4
    mi, mi'8( re do si) re( do si la) si( sold)
    la( fad) sold4.\prall la8 la2 r4
    R1*8 r4 sol r2
  }
  \addlyrics {
    Pre -- nez, man -- gez, voi -- ci mon corps.
    Bu -- vez -- en tous, car ce -- ci est mon sang,
    le sang de la nou -- velle Al -- li -- ance,
    ver -- sé pour la mul -- ti -- tude,
    pour le par -- don des pé -- chés.
    …_Ah.
  }
  \new Staff \with { instrumentName = "Judas" } \relative do' {
    \clef bass
    R1*4 R2 R2. R1. R1*2 R2
    \time 4/4 r4 sol8 sol
    do do do re mib4 mib4 re8 do
    re la la la sib do fad,4 r8 la mib'4 re8 do
    re4 r8 la do4\( sib\) r2 R1 R2. R1.*7 R1*3
    r4 si16( dod) si( dod) re4 re8 do16 si la8\( sold\)
    mi8 mi la4. sol8 fad8 si red dod16 si mi8 si do la la( sold) r4 r2
    R1*2 r4 r8
    sol8 do4 do16( re mib8) r mib fad, re'
    do( si) r sol si16 do si do re8 re16 do si8 la16 sol
    do8 sol16 mib mib fa mib fa sol8 sol16 lab sib8 mi
    re16 mi re do fa8 do sib\( lab\) sol\( fa\)
    si4 re8 fa mib4 re8 mib do4
    r8 sol mi16 fa mi fa sol8 sol sib do
    sib reb~ reb8. do16 sib8\( lab\)
    r8 sol16 fa
    \time 3/4
    re'8 re mib do16 do si si la sol
    \time 4/4
    do8 do16 sol lab8 sib sib( mi,) r sol16 lab sib8 mi~ mi re16 do
    fa4 reb8 do sol( fa) r4
    r8 fad16 sol la8 do fad, la mib re r la'16 sib do8 do fad do re16 la sib do
    sib8 la16 sol dod dod si la
    \time 3/4 re8 la sib mi, fad la
    \time 2/4 mib' re do8. do16
    \time 4/4 re8 la
    do sib la sib r16 sol sol sol mi'8 mi
    re16 dod si la sold sold la sib mi,8. sol16 fa8 mi16 la
    sol sib mib dod re la sib fa sol8 la re,4
    fad16 sol la8 la16 sib do8 mib re16 mib
    re sol fad sol fad8 do re16 la la8~ la\( sib\)
    mi,16 fa mi fa sol do re sib sib8 do16 sol sol8\( la\)
    \time 3/4
    r8 fa16 fa si do si do re8 si16 sol do8 mi, fad sol
    dod, sib' la16 sib la mi
    fa8 mi16( re) fad8 re
    \time 4/4 sol do do( si) r2
    R1*4
  }
  \addlyrics {
    On di -- rait du pain aux noix_;
    Or je suis al -- ler -- gique aux fruits à coque
    Et in -- to -- lé -- rant au glu -- ten.

    Par ail -- leurs ma re -- li -- gi -- on m'in -- ter -- dit le vin
    Et tous les al -- cools en gé -- né -- ral.

    Quant au sang, il m'est pros -- crit
    Sauf lor -- sque l'a -- ni -- mal a é -- té a -- bat -- tu
    se -- lon le ri -- te sa -- cré é -- dic -- té par le grand com -- man -- deur
    de la lo -- ge du mys -- té -- ri -- eux ta -- ber -- nacle,
    à moins qu'il ne s'a -- gi -- sse d'un a -- ni -- mal fe -- mel -- le
    au -- quel cas je dois fai -- re fai -- san -- der la vian -- de pen -- dant trois jours
    dans un mé -- lan -- ge de lait et de miel.

    Tou -- te -- fois ces pres -- crip -- ti -- ons ne s'ap -- pli -- quent pas
    aux a -- ni -- maux ma -- rins dis -- po -- sant d'u -- ne ves -- sie na -- ta -- toire
    ni aux mam -- mi -- fères dont le sa -- bot est fen -- du
    à l'ex -- cep -- tion de ceux qui ont u -- ne se -- con -- de panse
    des -- ti -- née à la ru -- mi -- na -- tion de plan -- tes é -- pi -- neuses.

    Par ail -- leurs dans le cas où l'a -- ni -- mal por -- te des poils longs sous le ven -- tre
    il est né -- ces -- saire que ses a -- bats soient en -- ter -- rés
    dans un pot en ter -- re crue sous un pa -- lé -- tu -- vier nain
    im -- mé -- di -- a -- te -- ment a -- près la mise à mort.
  }
  \new Staff \relative do' {
    \clef bass
    \set Staff.midiInstrument = "cello"
    fad,,4 r sol2~ sol4 r re' r
    mi r r2 fa4 r sib, r r do
    fa,( sol) la sib( la) sib do2 do,4
    fa r la r si r r2 do4 r
    mi r r2 sol1 fad4 mib re2
    r fad4 r sol sol, r2
    fa'1 fa4 mi r
    do( re) mi fa( mi) fa sol2 sol,4 do mi sol
    do do, r do mi sol
    dod, la' la, re fa la, sold la fa
    mi8( re mi) sold fad la sold4 si mi la, re fa
    red mi mi, la2 r4
    red1 r4 la' sol2
    sol, fad4 r
    si dod re fa? mi re do si la la' sold red mi r
    do2~ do r4 fad sol r r si, do r do2
    fad4 r fa2~ fa2 fa4 mib s4 sib16 do sib do reb4 do8 sib lab4 do fa fa, si( do) fa( mib)
    sol,16 lab sol lab sib4 mi16 fa mi fa sol4 mi do fa r
    lab( sol) fa( mib) reb sol, r r sib lab8 sib do4 fa, fa'8 mib re2 do2. la4 re, r
    sol sol' fa sol la sib mib, re sol, sol' fa
    dod4. dod8 re mi sib4 la8 dod  re sol fa sol la la, re4
    do8. sib16 la8. sol16 fad8 do' sib mib re mi fad4 sol
    do,4 mi do fa fa,4. lab8 sol fa mi4 do'8 si sib sol' fa mi re do re4 sol, sol' r2
    fa4 r8 la16 sol fa mi re do mi8 do
    do re mib do fad, la re, fad
    sol la si sol sol' sol, sol'4
    sol, fad' re sol,\fermata
  }
  \figures {
  <6>4 r <_-> s s s <6-> s <6> s s s
  s s <6 5> s s <4>8 <3>
  }
>>
\score {
 \transpose fa re \Toto
 \layout {}
 \midi {}
}
