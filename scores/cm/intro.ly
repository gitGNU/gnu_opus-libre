% Harmoniques -- intro.ly -----------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

IntroMarc = \relative do' {
  \clef bass
  R1
  la2.\mf -\markup \italic "(en coulisse)" r4
  la8-> la2..
  \t {la16 la la} la2..-\markup \italic "(approchant)"
  \tt {la16\< la la la \xNote la\!} r2\fermata
  \t {la8\f la la}
  fa2. r4 r2 \t {la4 la la}
  r4 fa2\mp r4
  R1
  fa2\p r
  R1 \acciaccatura la,8
  la'4\f la8. la16 la4 fa8 r
  la4 fa8 r la2
  r4 fa2.~ fa2. r4
  la,4 r fa'2~ fa4 r fa8 r fa16 r fa r
  \bar "||"
  la,4 r8 fa'~ fa4 r
  la, fa'2 r4
  la, r8 fa'~ fa4 r
  la, fa'2 r4
  la, fa'2 r4
  la, fa' r2
  la, fa'2 r4
  la, fa' r2
}

IntroFlo = \relative do' {
  R1*8
  do2.-\markup \italic "(en coulisse)" r4
  r4 r8. do16 do2-\markup \italic "(approchant)"
  r8 \t {do16 do do} do2 r4
  r2 r4 r8. do16 r4 r8. do16 r2
  r2 r8 do4 sol'8 sol2. r4

}

IntroBrice = \relative do' {
  \clef bass
  R1*13
  R1-\markup \italic "(approchant)"
  r2 \t {r4 si mi,}
  r2 r4 r8 si'~ si4 mi, r8 mi r16 mi r mi
  r2 r4 mi r2 r4 mi8 si'
  r2 r4 mi, r2 r4 mi8 si'
  r8 mi, r4 r mi8 si
  r8 mi r4 r8 mi si' mi,
  r8 mi r4 r mi8 si
  r8 mi r4 r8 mi si' mi,
}

IntroPrune = \relative do' {
}

IntroPianoMd = \relative do' {
}

IntroPianoMg = \relative do' {
  \clef bass
}


