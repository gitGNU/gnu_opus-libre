\language "italiano"

\header {
  title = "Chanson de Popincourt"
  composer = "OuMuPo"
  poet = "Jacques Jouet"
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

% #(set-global-staff-size 15.75)

dash ={
  \once \override LyricHyphen #'minimum-distance = #4
  \once \override LyricHyphen #'length = #2
  \once \override LyricHyphen #'thickness = #1.2
}

\transpose re fa <<
  \chords {
    \time 3/4
    si2.:m si:m/lad si:dim/la si:m/sold
    sol re dod do fa lab:7 do/sol fad
    sol re fad do fad do fad

    si:m si:m/lad si:dim/la si:m/sold
    sol re dod do fa lab:7 do/sol fad
    sol re fad do fad do fad

    si:m si:m/lad si:dim/la si:m/sold
    sol re dod do fa lab:7 do/sol fad
    sol re fad do fad do fad

    red:m red:m/re red:dim/dod do:dim
    mi/si lad:7 fad/lad do fa lab:7 do/sol fad
    sol re fad do fad do fad

    si:m si:m/lad si:dim/la si:m/sold
    sol re dod do fa lab:7 do/sol fad
    sol re fad do
    sol re fad2 sol4 do2.:m sol do:m6
  }
  \relative {
    \key si \minor
    r8 si re fad si, re fad4 r8 si, si re |
    fa!4 lad, si8 re fad2 si,8 dod |
    fad4 re8 la! si re |
    fad2 r8 re dod si lad si dod re |
    fad4. do!8 la do | la'4. mi8 re mi |
    fad2 r4 r8 do do do do do | la' sol fad2 |
    r8 si, re fad si, re fad2 r8 dod
    dod sid dod mi re dod si2 r4 R2.*3 \bar "||"

    r8 si re fad si, re fad4 r8 si, si re |
    fa!4.\( lad,8\) si re fad2 si,8 dod |
    re mi4 la,!8 si re |
    fad2 r8 re dod si lad si dod re |
    fad4. do!8 la do | r4 la'8 mi re mi |
    fad2 r4 r8 do do do do do | la' sol fad2 |
    r8 si, re fad si, re fad2 r8 dod
    dod sid dod mi re dod si2 r4 R2.*3 \bar "||"

    r8 si^\pp re fad si, re fad4 r8 si, dod re |
    fa!4 lad, si8 re fad2 si,8 dod |
    re4 mi8 la,! si re |
    fad2 r8 sol mi red mi sol la sol |
    fad4. do!8 la do | la'4. mi8 re mi |
    fad2 r8 do | do^\> do \times 2/3 {do4 do re} |
    mi8 fad4.^\! r4|
    r8 si, re fad si, re fad2 r8 dod
    dod sid dod mi re dod si2 r4 R2.*3 \bar "||"

    \times 2/3 {lad'8 lad lad} lad red, sid mid |
    fad2 r8 dodd | red lad' la? mid red si |
    fad'2 r8 re | mi lad sold red sold, dodd |
    fad2 r8 dod | fad dod lad do re mi |
    fad4. do8 la do | la'4. mi8 re mi |
    fad2 r8 do | do do do4. do8 | la'4 sol8^"(rit.)" fad4. |
    r8 si, re fad si, re fad2 r8 dod
    dod sid dod mi re dod si2 r4 R2.*2 r2 r8 si \bar "||"

    do dod re red mi mid | fad2 si,8 dod |
    fa re lad4 si8 re | fad2 si,8 dod |
    re4 mi8 dod re mi | fad2 r8 re dod si lad si dod re |
    fad4. do8 la do la'4. mi8 re mi |
    fad2 r8 la\( |
    fad\) mi\( fad\)^"rit." re\( fad\) dod\( | fad2.\) |
    r8 si, re fad si, re fad2 r8 dod |
    dod sid dod mi re dod si2 r4 |
    r8 \tiny si'8[ re fad si, re] fad2 \normalsize r8 dod, |
    dod si re fa mib re | do2. R2.*2 \bar "|."

  }
  \addlyrics {
    Po -- pin -- court Po -- pin -- court
    ci -- té, im -- passe, rue Po -- pin -- court
    mieux qu’Cher -- bourg ou \dash Saint -- Pe -- ters -- burg
    ou même que Bou -- \dash logne -- Bi -- llan -- court
    il me dit viens, bah moi j’a -- ccours
    ça_s’ -- ra le_p’ -- tit bo -- nheur du jour
    Po -- pin -- court Po -- pin -- court
    le lieu des ren -- \dash dez -- vous d’a -- mour

    Po -- pin -- court Po -- pin -- court
    a -- sile ou mar -- ché Po -- pin -- court
    je_m’ pom -- ponne comme la Pom -- pa -- dour
    fau -- drait pas_qu’ j’a -- rrive à la bourre
    j’lui pré -- pare mes yeux de ve -- lours
    ça vaut mieux que de beaux dis -- cours
    Po -- pin -- court Po -- pin -- court
    le lieu des ren -- \dash dez -- vous d’a -- mour

    Po -- pin -- court Po -- pin -- court
    tout près_d’ la Fo -- \dash lie -- Mé -- ri -- court
    j’ai un bou -- quet de belles de jour
    plus un tu -- pper -- ware de boul -- gour
    une pro -- vi -- sion de ca -- lem -- bours
    j’ai même a -- ppor -- té des_p’ -- tits fours
    Po -- pin -- court Po -- pin -- court
    le lieu des ren -- \dash dez -- vous d’a -- mour

    Il est pas là, je crie au_s’ -- cours_!
    le temps de rê -- ver est bien court
    quand_j’ fais_l’ poi -- reau j’ai les doigts gourds
    l’a -- mour pé -- dale dans le yo -- gourt
    rou -- lez trom -- pettes sou -- fflez tam -- bours
    c’est ma chan -- son mor -- ceau_d’ bra -- voure
    Po -- pin -- court Po -- pin -- court
    le lieu des grands râ -- teaux d’a -- mour_?

    mais le voi -- là, et même il court
    qu’il est long dans son pan -- ta -- court
    sa coi -- ffure comme un a -- \dash bat -- jour
    il est beau comme un frais la -- bour
    qu’on a -- per -- çoit en con -- \dash tre -- jour
    tou -- jours l’a -- mour bon -- jour tou -- jours
    Po -- pin -- court Po -- pin -- court
    le lieu des ren -- \dash dez -- vous d’a -- mour
    \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
    le lieu des ren -- \dash dez -- vous d’a -- mour
  }
>>
