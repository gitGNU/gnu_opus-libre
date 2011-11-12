%-- Étoile sans couleur -- guitare.ly -----------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"


arpeggUp =
#(let* ((m (make-music 'ArpeggioEvent)))
   (ly:music-set-property! m 'tweaks
    (acons 'arpeggio-direction 1
     (ly:music-property m 'tweaks)))
   m)

arpeggDown =
#(let* ((m (make-music 'ArpeggioEvent)))
   (ly:music-set-property! m 'tweaks
    (acons 'arpeggio-direction -1
     (ly:music-property m 'tweaks)))
   m)

plak =
#(let* ((m (make-music 'ArpeggioEvent)))
   (ly:music-set-property! m 'tweaks
    (acons 'stencil ly:arpeggio::brew-chord-bracket
     (ly:music-property m 'tweaks)))
   m)


Guitare = \relative do' {
  \clef "G_8"
  \partial 16 s16
  R1*7/16*2
  r4 r16 <red'\2 \harmonic >8_"IV."\laissezVibrer |
  s1*7/16
  la,,4-0\laissezVibrer dod'\laissezVibrer sib'4*1/2\laissezVibrer 
  \hideNote <la,, dod' sib'>~
  \hideNote \grace <la dod' sib'>4 r4 <mi'\6-0 \harmonic>2

  %%% 1 %%%
  <red''\2 \harmonic >4^"laissez vibrer."\laissezVibrer
  <la,,\6>\laissezVibrer dod'\laissezVibrer |
  sib'2.\laissezVibrer |
  <red\2\harmonic>4 <la,,\6> dod' sib'2.\laissezVibrer R2. |
  <red\2\harmonic>4 <la,,\6> dod' sib'2.\laissezVibrer |
  <red\2\harmonic>4 la,,-0 dod' | <re,! dod' red sib'>2.\arpeggio \laissezVibrer |
  r4 <mi\6-0\harmonic>2\laissezVibrer |
  red''8_"XI." mi,,, la-0 mi dod'' la, |
  \pl {r4 r8 <mi'\6-0\harmonic>4.} sib''2.\laissezVibrer |
  red4 <la,\5-0\harmonic> \t {dod8 fad sol} |
  sib4\laissezVibrer \t {r8 red mi,,,} la16-0 mi dod'' la, |
  \t {sib''16 mi,,, dod''} \t {la, fad''( sol)}
  sib-. <la,, red''>-- \t {dod' sib' sol} \t {red'8 la,, dod'} |
  <re,! sib'' dod red>4 <la sib' re fad dod'!>\arpeggio
  \acciaccatura {mi32[ red' sol si]} sold'8 mi,, |
  \pl fa2. {r16 la' \t {sol' do, la} \t {sol' do, la} \t {sol' do, la} \t {sol' do, sib} \t {sold' dod, sol!}} |
  \ttt {fa la, la'' do, sib sol'}
  \pl fa,,2 {r8 sol''32 do, sol mi sol' do, sol mi sol' do, sol mi} |
  \tt {re16-0 mi sol' dod, fa} \tt {re,(-0 mi) si'!(-0 dod) fa(} sol4)\laissezVibrer |
  r4 \t {re,16-0\laissezVibrer lad' si-0} fa'8 r8 <sol, re' mib sib'>_"IV."\arpeggio |
  \tt {r16 la,-0\laissezVibrer si'! fad' sol} re'4 red\laissezVibrer |
  la,,-0 <dod'\4> sib'~ |

  %%% 2 %%%
  sib2 r4 |
  \pl re,,2.-0 {r4 <la' dod fad>2} |
  \pl la,2.-0 {r8 <mi'\6-0\harmonic>\laissezVibrer <sib' re sol>2} |
  \pl {re,2-0 <dod\6>4} {r8 <la'\5-0\harmonic>\laissezVibrer <mi' sold dod>2} |
  \pl sol,,2. {r8 re'-0\laissezVibrer <si' mi la>2\arpeggio} |
  r8 <si\6-0\harmonic>_"VII."\laissezVibrer
  \t {<mi\5-0\harmonic>\laissezVibrer <re'\3-0\harmonic> <la\4-0\harmonic>\laissezVibrer} r4 |
  \pl sol,2.-0 {r4 <si-0 fad'>2}
  \pl re,2.-0 {r4 <la' dod fad>2}
  <la,-0 la'>4*3/4~ \hideNote la4*1/4 <sib' re sol>4 \tt {r16 red,16( mi) dod'( sib)} |
  \pl mi,,2. {\t {mi16\laissezVibrer sol'-0 <sol\4>} mi'8-0 <si red sold>2} |
  \pl mi,,2. {r4 <sol' do mib lab>2\arpeggio} |
  \tt {mi16 si'' do, dod sold'} \pl mi,,2 {mi16 sol' <sib dod fad la>4.} |
  \tt {mi,,16 red' la' re! fa!} sib4^"(bend)" -\bendAfter #+2 \tt {mi,,,16 red' la' re fa} |
  sib4-\bendAfter #+4 mi,,,8\laissezVibrer <re'!\4-0\harmonic>
  \t {<la'\4-0\harmonic> <re\3-0\harmonic> <fad\2-0\harmonic>} |
  <si\1-0\harmonic>2.\laissezVibrer |
  <fa,, si mi sol re' mi>4. <fa la re sold dod mi> |
  <fa' sib red mi-0>2.~_"III." <fa sib red mi>2 la,4-0\laissezVibrer |
  <dod' red mi-0 si'>2_"VIII." r4 |

  %%% 3 %%%
  R2.*8
  r4 r8 mi,, sol'\laissezVibrer do, |
  fa,2.\laissezVibrer |
  \t {mi8\laissezVibrer dod' sold'~} sold \acciaccatura si sol4. |
  \tt {r16 fa do sol' mi,~} \t {mi8 do' fa} \t {sol do fa} |
  <mi,, sol' do fa>8 q4 q4. |
  <fa si re sol si mi>8\arpeggio \t {fa16 si fa} \t {si re si} \t {re sol re} \t {sol si sol} \t {si mi sol} |
  <mi,, sol' do fa>8 \t {fa''16 do sol} mi,8\laissezVibrer <re' sol do fa>4. |
  \t {fa,16 mi' fa,} \t {mi fa' fa,} \t {mi fa' mi,}
  \t {fa mi' mi,} \t {fa' mi' fa,} \t {mi fa' fa,} |
  \t {mi fa' mi,} \t {fa mi' fa,} \t {mi mi' mi} \t {fa mi fa} \t {mi fa mi} \t {fa mi mi} |
  \t {mi mi mi} r8 r2 |
  <mi, fa mi'>8^"palm mute" r r2 |

  %%% 4 %%%
  \pl \xNote {s4 do_"(du pouce, sur le bois)" do do do do do do do do s8 do do4 }
  {<fa, si re sol si mi>2..\arpeggio <fa si re sol si mi>4. r4 r16
  <fa si re sol si mi>4.. r8 <fa si re sol si mi>4. <fa si re sol si mi>4 r8 <fa si re sol si mi>\laissezVibrer }
  \xNote {do'8_"(pouce)" la''^"(autres doigts)" la do,,16} <fa, si re sol si mi>\laissezVibrer
  \xNote {do'8 la'' la do,,} \pl \xNote {do4 do8 la''} {r8 <fa,, si re sol si mi>4.} |
  \xNote do'8 \t {si'16 mi si} \t {sol si sol} re32 sol re si
  fa8 <si re sol si mi> \xNote <mi sol si re fa>4^"(sur les cordes)"
  \xNote {do8 \t {la''16 la la} la8 do,, | la''} <fa,, si re sol si mi>
  \xNote {<mi' sol si re fa> \t {do16 la'' do,,} la'' la do,, do la'' la do,, la'' do,, do la'' do,, la'' do,, do la'' |
  \ttt {do,, la'' la la la la} do,,8} <fa, si re sol si mi> \xNote {<mi' sol si re fa> \t {do16 la'' do,,}
  la''8 \t {do,,16 la'' do,,} la'' la do,, do la''8 \t {do,,16 la'' do,,} la''8 }
  fa,, si re \t {sol16 re sol} \t {si sol si} \ttt {mi fa,, si re sol si}
  mi fa,, <fa si re sol si mi>\arpeggDown <fa si re sol si mi>\arpeggUp \xNote <mi' sol si re fa>4 |
  \t {sol'8 do, lab} mi mi, dod' sold' mi,( fa) fa( mi) mi( fa) |
  fa fa fa2.\laissezVibrer s2 |

  %%% 5 %%%
  R1.*2
}
