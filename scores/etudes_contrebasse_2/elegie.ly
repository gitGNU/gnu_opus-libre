%-- 21 Études -- elegie.ly ----------------------------------------%
% 2015 Valentin Villenave <valentin@villenave.net>

\language "italiano"

ElegieTitre = "Élégie atrabilaire"
% date = "29 novembre 2015"

ElegieContrebasse = \relative do' {
  \clef bass
  \time 2/2
  \tempo "Adagio" 2 = 42
  \romanStringNumbers
  la8(\mp si do re) si( dod re mi)
  la,(\1 si do re) si( dod re mi)
  la,( si do re) si( dod re mi)
  la,( si do re) si( dod re mi)
  la,( si do re) si( dod re mi)
  la,( si do re) si( dod re mi)
  la,( si do re) si( dod re mi)
  la,( si do re) si( dod re mi)
  la,( si do re) si( dod re mi)
  la,(\2 si) sold( lad) sol( la) fa( sol)
  mi(-1\< fad-4 sol)-4 mi-1 fa(-1 sol-4 sold) fa
  fad(\! sold la) fad sol(\> la) fa( sol)
  mi(\! fad sol) mi fa( sol sold) fa
  fad(\cresc sold la) fad sol( la) sib( do)
  mi(\mf\1 re dod red) mi( re dod red)
  mi( re fa mib) fa(\< mib fad mi)
  \tuplet 3/2 {fad4(\! mi fad)} mi2~\trill
  mi2 r
  la,8(\mp si do re) si( dod re mi)
  la,( si do re) si( dod re mi)
  la,( si do re) si( dod re mi)
  dod(\> red) do( re) si( dod) sib( do)
  la(\! si do re) si( dod re mi)
  dod(\> red) do( re) si( dod) sib( do)
  dod(\> red) do( re) si( dod) re( mi)
  la,(\pp si la si) la( si la si)
  la( si la si la si la si)
  R1
  \bar "|."
}

ElegiePianoMd = \relative do' {
  R1*2
  \ottava #1
  la'''2(_\mp\laissezVibrer r4 mi)~
  mi mi8( fa? sol?4\prall fa8 re)
  mi2(\laissezVibrer r8 si4.)~
  si4 si8( do re4\prall do8 si)
  do2(\laissezVibrer sold)~
  sold4 sold8( la si?4\prall lad8 si)
  dod4.( la8)~ la2\laissezVibrer
  \ottava #0
  r4 <la, sold'>^( <sol' sol'> <fad fa'?>)
  <red mi'>2.( <do si'>4)~ q1\laissezVibrer
  <mi red'>2.( <si do'>4)~ q1\laissezVibrer
  \ottava #1
  <si' lad'>2--( <sold la'>--
  <la sold'>4-- <fad sol'>-- <sol fad'>-- <red fa'>--)
  \ottava #0
  <mi mi'>1~ q
  <red mi'>2\p r4 <do si'>~
  q si'8( do? re?4\prall do8 si)
  <si, do'>2 r8 <la sold'>4.\laissezVibrer
  R1
  <si do'>2(\pp <la sold'>)\laissezVibrer
  R1
  <si do'>4.( <la sold'>8~) q2\laissezVibrer
  r q\laissezVibrer R1*2
}

ElegiePianoMg = \relative do' {
  \clef bass la,,2*2^\p\laissezVibrer R \clef treble
  sold''''2(_\pp\laissezVibrer r4 red)~
  red fa8( fad sold4\prall fad8 mi?)
  red2(\laissezVibrer r8 lad4.)~
  lad4 do8( reb mib4\prall reb8 do)
  si2(\laissezVibrer sol?)~
  sol4 la8( sib do4\prall si8 sib)
  do?4.( sold8)~ sold2\laissezVibrer
  R1 \clef bass
  mi,,,2*2\laissezVibrer R
  mi\laissezVibrer R
  r4 mi2 mi4~ mi2 mi
  mi'8( fa sol sold) sib( si dod re)
  mi( fad sol la) \md sib( do dod red) \mg
  la,,2*2\laissezVibrer \clef treble
  r4 do'''8( dod red4\prall dod) \clef bass
  la,,,2*2\laissezVibrer R
  la\laissezVibrer R
  la\laissezVibrer R
  la\laissezVibrer R
}
