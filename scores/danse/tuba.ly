%-- Danse -- tuba.ly ----------------------------------------------%
% (c) 2009 - 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Titre = "Danse kàla"
TubaInstr = \markup \center-column {
  "Tuba"
  \line {(en Si \concat {\flat )}}
}
PianoInstr = "Piano"

\header {
  title = \Titre
  subtitle = "pour tuba et piano"
  composer = "Valentin Villenave"
  date = "printemps 2009"
}

#(set-global-staff-size 18)
\paper {
  first-page-number = #-1
%  min-systems-per-page = #4
}

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    ""
    \right-column \italic {
      "Pour Camille, Cécilia, Raphaël et Clément,"
      "ainsi que pour la classe de Claude Lherminier."
    }
  }
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2009-2011.
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
  \tempo Deciso 2 = 84 ~ 92
  \time 2/2 s1*42 \bar "||"
  \tempo Sostenuto
  s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/8
  \time 3/2 s1.
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/4
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 5/8 s1*5/2
  \time 7/8 s1*7/8
  \time 5/8 s1*5/8
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/2
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/2
  \time 7/8 s1*7/8
  \time 3/2 s1.
  \time 5/8 s1*5/4
  \time 7/8 s1*7/8
  \time 3/2 s1. \bar "||"
  \tempo "Poco allargando"
  \time 2/2 s1*24 \bar "||"
  \tempo "Tempo I"
  s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/4
  \time 5/8 s1*5/8 \bar "||"
  \time 2/2 s1*21 \bar "||"
  s1*21 \bar "||"
  s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/4
  \bar "|."
 }

 Tuba =
 %% Transpose
 \smart \transpose do re
 \relative do' {
  \clef bass
  R1*2
  fa,8-\dyn "f,_franc"\< ^"détaché" sib do fa4\!-- mi-- sib8( |
  do4) \breathe fa,8\< sib do fa[(\! fa,]) mi'[(|
  fa mi]) sib( do) solb2~-- |
  solb4 r r2 |
  R1*3
  fa8\< sib do fa4--\! mi-- sib8 (|
  do4) \breathe mib8( reb la) do[( sib solb]) |
  la(\< sol re) mib[ do] si4.\sf--~ |
  si2. r4 |
  r2 r8 mib\mf( fa solb) |
  lab4-- r8 la,( si do) re4-- |
  r solb,8(\mp lab) r2 |
  fa'8\< sib do fa4--\f mi-- sib8( |
  do4) \breathe fa,8 sib do fa[( fa,) sib] |
  mi( fa mi) sib[\< do] re mi fa | solb2.--\! r4 |
  R1*3
  r8 fa,\< si! do solb'4\!-- mib,8[\< sib' |
  si] solb'4--\! dod,,8[\>( re)] la'( sib) fa'( |
  solb1~)-\dyn "mp,_ten." solb2. r4 |
  r2 do,4.(\p re8~ |
  re4 la) r8 si4(\< do8) |
  re4.(\! mi8)~ mi4 si8(\> fa\!)~ |
  fa4. r8 fa[(\> mi re mi |
  la,] si2..)~-\dyn "p,_ten." |
  si4 r r2 |
  r4 solb'(-\dyn "pp_soutenu" dob reb |
  solb2. fa4)~ |
  fa r solb,( dob |
  reb) solb,,(\< reb' dob' |
  solb'2)--\p r8 fab,( dob'4) |
  solb'4.-- mib,8\< lab reb solb4--\!~ |
  solb8( do,) r4 do,8^"(détaché)"\mp\cresc mi lab mib |
  sol si fad re'-> sib fa dod la' |
  sib( dod,) re'[\<-- mi-- fa]-- fad4.--\startTrillSpan |

  sol!4->--\sf\stopTrillSpan r r2 |
  R1*7/8 R1 R1*7/8 R1*5/8 R1.
  mib,4->\mp ^"incisif" r8 mib-> r4 mib-> |
  r la8\sf\>( sol) fa( sol reb) |
  mib4\!-> r8 mib-> r4 mib-> |
  r la8\>( sol) fa( sol reb) |
  mib-.\! r solb(\mf fa mi) |
  solb4-- mi8( re do) |
  mib4-- dod8(\> si) la( si fa) |
  sol4->\! r r2 |
  si8\mp(\< re) fa lab4--\! r | R1
  fa,8( sib) re solb4-- r |
  fa8(\sf\> mib) reb( mib la,) |
  si4->\mf r8 si-> r4 si-> |
  r mi8(\> re) do( re la) |
  si4->\! r8 si-> r4 si-> |
  r mib8( reb do) |
  re4-- reb8( dob sib) |
  do4--^"scherzando" fad8(\< sol lab) |
  si,-.\! r sib( la lab) |
  mi'4--\< fa--\! fa,8( fad sol) |
  red'4-- red,8( mi fa) |
  re' r dod\sf( si) la( si fa) |
  sol4->\f sol'-- sol,8-. sol'-> r sol,-. |
  r4 dod'8\>( si la si fa) |
  sol4->\! sol,8 sol'-> r sol,-. r sol''-> |
  r4 dod,8(\> si la si fa)\! |
  fad(\> mi re mi sib)\! |
  si(\> la sol la fa)\! |
  mi4-- sol-- r8 |
  red4-- fad-- r8 |
  re''8[(\mf do) sib do mib,] fa( lab sib) |
  mib( re) do re fad,( la si) |
  mi[( re) do re lab] sib( fa) sib |
  fa sib,( fa' sib) fa(\< sib) do |
  fa4\f-- mi-- sib8( |
  do4) \breathe fa,8\< sib do |
  fa4\!-- mi8( fa mi) |
  sib4-- do-- fa,8( |
  sol4)\breathe sol8( fa) mib( fa si,) |
  dod4-> r8 dod-> r4 dod-> r2 |
  R1*5/8
  mi'8(\f re do re lab) sol( fa mib[ fa dob)] sib4-- |
  la8(-\dyn "f_sempre" sol fad) lab4-- sol8( fa mi) fad4-- r |

  do1~^"ten." do2. r4 |
  R1*4
  r4 solb''(-\dyn "p_espr." dob reb~ |
  reb solb2.) |
  fa2( mib4 reb |
  mib\> sib2.)\! |
  sol1--^"ten."~ sol2. r4 |
  R1*2
  r2 sib2--\pp~ |
  sib4( fa\< sib do! |
  fa2.)~-\dyn "p,_dolce" \t {fa8( mi fa)} |
  mi2( re4 do~ |
  do4.\> re8\!)~^"ten." re2~ re2. r4 |
  r2 r4 re,--(\< |
  mi-- fa-- sol2\!-- |
  lab4--\mp sol-- fa-- sol-- |
  mib!2--) fad--~ | fad2. r4 |
  r4 fad8(\p\>^"léger" mi) re( mi sib) |
  sol4\!-- r r2 |
  r4 fad'8(-> mi) re( mi sib) |
  sol( sib) reb( do mib) fad( mi la) |
  si(\< re) fa2--~\mf fa8~ |
  fa fa,\< sib do fa2--\!~ |
  fa4 r r r8 |
  solb,,( sib) re( dod) fa( la lab) |
  sib( lab solb) lab( mib) |

  mi\< si' do sol'--\f^"(ten.)"~ sol2~ sol2. r4 |
  r2 mib,4\pp( sib' do sol'2.)~ sol2. r4 |
  mi,,4.(^"dolce" fa8)~ fa2~ |
  fa4 r fa( do' sol'2.)\breathe fa,4~ |
  fa2( sol)~^"ten." sol2. r4 |
  r8 sol'-\dyn "ff_sub." do re sol2->--~ sol2. r4 |
  sol,,8\p do re sol4-- re,8(\> sol) do | sol'2.\! r4 |
  r2 r4 re,(-- |
  mi-- r8 fa-- r4 sol--)~ |
  sol2. r4 |
  fa2.-- r4 |
  mi4.--\cresc fa8--~ fa mi( fa sol) |
  la4.-- sol8( la sib) do4--\!~ |
  do r mib,!2\f-- |

  <fa~ \parenthesize fa,>1--^"ten."\sf fa2. r4 |
  R1 r2 solb4.-- -\dyn "f,_en dehors" lab8--~ |
  lab4 mib-- r8 fa4->\< solb8-. |
  lab4->--\! solb8^"détaché" fa mib fa sib, do--\sf~ |
  do2. r4 | R1*2
  r8 mib\< fa solb lab4--\f solb8 fa |
  mib\< fa sib do--\!~ do2 |
  do,8\<^"(toujours détaché)" fa sib do--\!~ do4 mib,8[\< sib' |
  mib] fa4--\! sib,8[\< do fa] sib4--\! \breathe |

  fa8-\dyn "f_très franc" sib do fa4-- mi-- sib8-. |
  do4-- r r2 |
  fa,8\< sib do fa[\!( fa,]) mi'( fa mi) |
  sib( do) solb2.--~ solb4 solb(\p dob reb |
  solb2.) sol,4(\> | do! re! sol2)\! |
  solb8-\dyn "f_sub." reb dob solb4-- lab-- mib8-. |
  fa4-> r r2 |
  r4 lab,8(->\> solb) fab( solb do,)\! |
  re4-. la'8^"détaché" re sol,\cresc re' sol do, |
  sol' do fa, do' fa sib, mib |
  fa,\< sib do fa4->\! r |
}
