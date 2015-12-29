%-- 21 Études -- romance.ly ---------------------------------------%
% 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

RomanceTitre = "Romance psychorigide"
%  date = "13 novembre 2014"

RomanceContrebasse = \relative do' {
  \tempo "Adagietto" 4 = 66
  r2 r4 re8(\mp mi sol4. do8) la2
  r8 sol(~ \tuplet 3/2 {sol do re)} la2
  r4 sol(~ sol8\< do) \tuplet 3/2 {re( mi fad)}
  si1~\fp si4 r si2~\upbow si\< mi4 re
  si1~\mf si4 mi4(~\> mi8 re~ re4)
  si1~\pp si4 r r2
  r4 do,8(\mp \upbow re fa2)
  solb16-> fa8.~ fa8 do16-> reb~ reb8 do--~
  \tuplet 3/2 {do re( fa)}
  fad(\> mi dod2) r4\!
  r8 do?\<\upbow re( fa~ fa) fad~\mf fad4
  mi8(\> dod~ dod4~\! dod2~
  dod8 si-.--) \tuplet 3/2 {r mi(--\<\upbow re--)} sol2~(
  sol \glissando la~\mf
  la4) la~--( la8 re,) \tuplet 3/2 {sol,(\< re' la'~}
  la4.)\! sol,8~ sol-- la'~ la4~
  la si8(\< mi,) la,\downbow si'~ si4~
  si2\f r4 si~\pp si2 mi4( re) si4.( fad8) la2~\upbow
  la8 r si4~--\mp\< si8 fad~--( \tuplet 3/2 {fad mi re)}
  r\! sol,~(\p sol4 do8) la~ la4~
  \tuplet 3/2 {la\cresc sol,--\downbow la'~--}
  \tuplet 3/2 {la \clef bass sol,-- la--}
  re,2--\mf r4 \clef treble mi'''~\ppp mi2. r4
  \clef bass do,,,8\mf re~ re2 \clef treble r8 fad''\pp
  mi2 \clef bass re,,2*1/2_(\p mi'4~ <re, mi'>2) r2
  << {<sol \parenthesize re'\harmonic>1\>\fermata <>\!}
     \\ {r2 mi,4-+\laissezVibrer r} >>
  \bar "|."
}

RomancePianoMd = \relative do' {
  <la re mi la>4 -- (\p q-- _"estompé et très égal" q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  \mg
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  \md
  q--(\pp q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q-- q-- \mg q-- q--
  \md
  q-- q-- \mg q-- q--
  q-- q-- \md q-- q--
  q--\pp q--_"sempre" \mg q-- q--
  \md
  q--( q-- q-- q--)
  \mg q-- q-- \md q-- \mg q--
  q--\md q-- \mg q-- q--
  \md
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q-- q-- \mg q-- q--
  \md
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q-- q-- q--)
  q--( q--) r q-- \mark \markup \musicglyph #"scripts.ulongfermata"
}

RomancePianoMg = \relative do' {
  R1*4
  \md
  r2 \ottava #1 r8 <dod'' dod'>~-.--\pp q4
  <sold sold'>2-.--\laissezVibrer _ "en dehors" s
  \ottava #0
  R1 \ottava #1 r4 r8 <dod dod'>~-.-- q
  <sold sold'>~-.-- q4~ q2\laissezVibrer
  s \ottava #0
  \mg R1*2
  \clef bass
  <fa,,,, fa'>1\laissezVibrer r4 q2.\laissezVibrer
  <sib sib'>1 <fa fa'>4 <sib sib'>2.\laissezVibrer
  \md
  r2 \ottava #1 <do'''' do'>2-.--\laissezVibrer
  \ottava #0
  \mg <fa,,,,, fa'>1*1/2\laissezVibrer
  \md r4 \ottava #1
  r8 <do''''' do'>~-.-- q2\laissezVibrer \ottava #0
  \mg
  r8 <fa,,,,, fa'>~ q4
  <fad fad'>1*1/2\laissezVibrer
  \md \ottava #1
  <do''''' do'>2-.--\laissezVibrer \ottava #0
  \mg
  r4 <fad,,,,, fad'>2.\laissezVibrer
  \md \ottava #1
  <do''''' do'>2-.--\laissezVibrer \ottava #0
  \mg
  <fad,,,,, fad'>2*1/2\laissezVibrer
  \md \ottava #1
  r8 <do''''' do'>8~-.-- q2*1/2\laissezVibrer \ottava #0
  \mg
  <fad,,,,, fad'>2.*1/3\laissezVibrer
  \md \ottava #1
  r8 <do''''' do'>~-.-- q4\laissezVibrer \ottava #0
  \mg
  R1*4
  mi,,,,,2\laissezVibrer \md \ottava #1
  re''''''2-.--\laissezVibrer \ottava #0
  \mg
  R1*6
}
