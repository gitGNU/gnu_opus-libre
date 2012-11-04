\language "italiano"

\header {
  title = "Petit mari"
  composer = "OuMuPo"
  poet = "Paul Fournel"
}

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

#(set-global-staff-size 17)

dash ={
  \once \override LyricHyphen #'minimum-distance = #4
  \once \override LyricHyphen #'length = #2
  \once \override LyricHyphen #'thickness = #1.2
}

<<
  \relative {
    \partial 4 r4
    R1*4
    r4 sol'8 do sol4 do,16 re mi fa
    sol4 mib8 mib16 lab mib8 do si re
    mi4 sol8 do sol re do fa
    sol4 mi16 fad sold la si8 do re si
    do4\fermata
    mi,8 sol16 mi do8 mi do mi
    re4 re8 fa16 re si8 re si re
    mi4 mi8 sol16 mi do8 mi do mi
    re4 re8 fa16 re si8 re si re
    do4 la'8 la16 la sol4 la16 la la la
    sol4 mi8 mi16 mi sol8 fa mi re
    mi4 la16 la la la sol8 sol fad fad
    sol4\fermata
    sol16 sol do8 sol4 do,16 re mi fa
    sol4 mib8 mib16 lab mib8 do si re
    mi4 sol8 do sol re do fa
    sol4 mi16 fad sold la si8 do re si
    do4\fermata
    sold8 si16 sold mi8 sold mi sold
    fad4 fad8 la16 fad red8 fad red fad
    sold4 sold8 si16 sold mi8 sold mi sold
    fad4 fad8 la16 fad red8 fad red fad
    mi4 dod'8 dod16 dod si4 dod8 dod16 dod
    si4 sold8 sold16 sold si8 la sold fad
    si4\fermata
    sol8 do sol4 do,16 re mi fa
    sol4 mib8 mib16 lab mib8 do si re
    mi4 sol16 do si la sol8 re do fa
    sol4 mi8 sold16 la si8 do re si
    do4\fermata
    lab8 do16 lab mib8 lab mib lab
    sol4 sol8 sib16 sol mib8 sol16 sol mib8 sol
    lab4 lab8 do16 lab mib8 lab mib lab
    sol4 sol8 sib16 sol mib8 sol mib sol
    lab4 fa8 fa16 fa mib8 lab, fa' fa16 fa
    mib4 do8 do16 do fa8 mib re do
    sol'4\fermata
    sol8 sol4 do8 sol16 do, mi fa
    sol4 mib16 mib mib lab mib8 do si re
    mi4 sol8 do16 do sol8 do sol do
    sol4 mi8 sold16 la si8 do re si
    do4\fermata
    sold8 si16 sold mi8 sold mi sold
    fad4 fad8 la16 fad red8 fad red fad
    sold8 mi sold si16 sold mi8 sold mi sold
    fad4 fad8 la16 fad red8 fad red fad
    mi4 dod'8 dod16 dod si4 do8 do16 do
    si4 mi,8 mi16 mi si'8 mi, fa fad
    sol4\fermata
    sol8 do sol4 do,16 re mi fa
    sol4 mib8 mib16 lab mib8 do si re
    mi4 sol8 do16 do sol8 re do fa
    sol4 mi8 sold16 la si8 do re si
    do4\fermata
    r mi,8 mi sol mi
    do4 mi8 mi do4 r8 mi
    re4 r re fa8 re
    si4 r8 re si4 r8 re
    do4 la'8 la16 la sol8 do, la' la
    sol4 mi8 mi16 mi sol8 fa mi re
    mi4 la16 la la la sol8 sol fad fad
    sol4\fermata
    \times 2/3 {sol8 la si}
    do8. sol16 mi8. sol16 fa8. la16
    re,8. fa16 mi8. do'16 re8. si16
    do4 r r2 \bar "|."
  }
  \addlyrics {
    J’ai ache -- té un pe -- tit ma -- ri
    Un jour de soldes à Mo -- no -- prix
    Ni é -- chan -- gé ni re -- pris
    Un pe -- tit ma -- ri au ju -- ste prix

    À l’a -- rri -- vée à la mai -- son
    Je l’ai sor -- ti de son cai -- sson
    Il é -- tait clair comme un tout neuf
    Et il fai -- sait un e -- ffet meuf
    Je l’ai po -- sé dans le ca -- na -- pé
    Je lui ai pan -- tou -- flé les pieds
    Et j’ai re -- cu -- lé pour l’in -- spec -- ter

    J’a -- vais ache -- té un pe -- tit ma -- ri
    Un jour de soldes à Mo -- no -- prix
    Ni é -- chan -- gé ni re -- pris
    Un pe -- tit ma -- ri au ju -- ste prix

    Cô -- té dé -- co c’é -- tait O -- K
    Res -- tait à voir ce qu’il va -- lait
    Un deux_! Un deux_! pe -- tits tra -- vaux
    Coup de ba -- lai vai -- sselle à l’eau
    Il ne vou -- lait rien a -- tta -- quer
    Il res -- tait sur son cul plom -- bé

    J’ai ache -- té un pe -- tit ma -- ri
    Un jour de soldes à Mo -- no -- prix
    Mais on ne m’a pas ven -- du la clef
    La clef qui sert à le mon -- ter

    Il res -- te sage à la mai -- son
    J’en -- lève la peau de son sau -- ci -- sson
    Il me re -- garde ve -- nir a -- ller
    Sans e -- ssay -- er de se le -- ver
    Il ne me ta -- pe pas sur les fesses
    Il ne ré -- clame pas de ca -- resse

    Je suis dé -- çue par ce ma -- ri
    A -- che -- té en soldes à Mo -- no -- prix
    C’est bien jo -- li d’ê -- tre jo -- li
    Mais il pou -- rrait ê -- tre po -- li

    J’ai vé -- ri -- fié tou -- tes les pièces
    Il a ce_qu’il faut à son es -- pè -- ce
    Sim -- ple -- ment il ne mar -- che pas
    Sim -- ple -- ment il ne bou -- ge pas
    Moi qui vou -- lais un brin de cour
    Je peux re -- pa -- sser pour l’a -- mour

    J’ai ache -- té un pe -- tit ma -- ri
    Un jour de soldes à Mo -- no -- prix
    Il mar -- che pas il est mi -- gnon
    Mais c’est du toc et du bi -- don


    N’a -- che -- tez ja -- mais vos pe -- tits ma -- ris
    Les jours de soldes à Mo -- no -- prix
    Le prix vous sem -- ble juste et bon
    Mais a -- rri -- vées à la mai -- son
    Vous se -- rez dé -- çues et con -- ster -- nées
    Moi je n’ai pas ter -- gi -- ver -- sé
    J’ai re -- mis le mien sur e -- Bay_!  }
  \new PianoStaff <<
    \relative {
      \clef treble
      \partial 4 \times 2/3 {sol'8 la si}
      do8. sol16 mi8. sol16 fa8. la16
      re,8. fa16 mi8. do16 sol'8. mi16
      re8. fad16 si,8. re16 dod8. la16
      mi'8. dod16 si8. red16 sold,8. si16
      lad8. fad16 dod'8. lad16 sold4 \times 2/3 {sol'8 la si} |
      do4 r8 <do, mi sol>4 r8 q4 r8 q
      r <lab do mib>4 r8 q <sold si mi>
      <mi sol do> <do' mi sol> r q4 r8 q4 r8 q
      r8 <mi sold si>4 q8 r <do mib lab>
      <mi sol do>4

    }
    \new Staff \relative {
      \clef bass
      r4
      do,4 do' <do re> si
      <si do> <la do> <la si> sold
      <sold la> <fad la> <fad sold> mid
      <mid fad> <red fad> mi <fad, mid'>
      <do do'> do'4. do do4 lab4. mi
      do4 do'4. do do4 mi2 lab,4 <do, do'>4
    }
  >>
>>