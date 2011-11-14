%-- Étoile sans couleur -- guitare.ly -----------------------------%
% (c) 2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"


harmonics =
#(define-music-function (parser location music) (ly:music?)
#{ \override NoteHead #'style = #'harmonic-mixed
$music
\revert NoteHead #'style #})

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

%%% Muffle symbol. (Mostly used in harp scores, but
%%% it certainly is convenient for guitar notation.)
#(define-markup-command (muffle layout props)
  ()
  (let ((my-path (make-path-markup 0.12 '(
            (moveto 0 -1.2)
            (lineto 0 1.2)
            (moveto -1.2 0)
            (lineto 1.2 0))))
        (inner-circle (make-circle-stencil 0.9 0.15 #f))
        (outer-circle (make-circle-stencil 1.6 0.12 #f)))
       (ly:stencil-add (interpret-markup layout props my-path)
                       (ly:stencil-add inner-circle outer-circle))))

\layout {
  \context {
    \Voice
    harmonicDots = ##t
  }
}

Guitare = \relative do' {

%%%% Pedal-like Laissez Vibrer spanners.
%%%% This is a mere, hackish workaround (not breakable, for example).
\override Staff.SostenutoPedalLineSpanner #'direction = #UP

%% Hm. It seems "laissez Vibrer" is not genuine guitar lingo.
%% I'm confident they'll look it up, though.
\set Staff.pedalSostenutoStrings = #'("l.v." "" "")

%% After Neil Puttock on http://lists.gnu.org/archive/html/bug-lilypond/2010-04/msg00030.html
  \override Staff.PianoPedalBracket #'stencil =
 #(lambda (grob)
    (let* (;; the bracket stencil
           (bracket (ly:piano-pedal-bracket::print grob))
           ;; its horizontal extent
           (bracket-ext (ly:stencil-extent bracket X))
           ;; a pedal asterisk, aligned on its right edge
           (asterisk (grob-interpret-markup grob
               (markup #:right-align #:general-align Y -0.5 #:muffle )))
           ;; the vertical parent of this bracket (a PianoPedalLineSpanner)
           (pedal-span (ly:grob-parent grob Y))
           ;; the right NonMusicalPaperColumn of the line spanner
           (right-column (ly:spanner-bound pedal-span RIGHT))
           ;; the column's length relative to the system (effectively the width of the barline)
           (col-length (interval-length
               (ly:grob-extent right-column (ly:grob-system grob) X)))
           (length-result (- (cdr bracket-ext) col-length)))
      ;; return an asterisk moved the same distance as a bracket, minus the width of the barline
      (ly:stencil-add
        (make-line-stencil 0.1 2 0 (- length-result 4) 0)
        (ly:stencil-translate-axis asterisk length-result X))))


  \clef "G_8"
  \partial 16 s16
  R1*7/16*2
  r4 r16 \harmonics <red'\2>8-"h. 4"\mp\laissezVibrer |
  s1*7/16
  la,,4-0\laissezVibrer dod'\laissezVibrer sib'4*1/2\laissezVibrer 
  \hideNote <la,, dod' sib'>~
  \hideNote \grace <la dod' sib'>4 r4 <mi'\6\harmonic>2-"h. 12"\fermata

  %%% 1 %%%
  \harmonics <red''\2>4-"h. 16"\p\laissezVibrer
  <la,,\6>\laissezVibrer dod'\laissezVibrer |
  sib'2.\laissezVibrer |
  \harmonics <red\2>4_"laissez vibrer" <la,,\6> dod' sib'2.\laissezVibrer R2. |
  \harmonics <red\2>4 <la,,\6> dod' sib'2.\laissezVibrer |
  \harmonics <red\2>4\< la,,-0 dod' |
  <re,! dod' red sib'>2.\!\arpeggio \laissezVibrer |
  r4 <mi\6\harmonic>2-"h. 12" \laissezVibrer |
  red''8-- _"XI."\mp mi,,, la-0 mi dod''-- la, |
  \pl {r4 r8 \harmonics <mi'>4.} sib''2.--\laissezVibrer |
  red4 \harmonics <la,\5>-"h. 12" \t {dod8 fad( sol)} |
  sib4\laissezVibrer \t {r8 red mi,,,} la16-0 mi dod'' la, |
  \t {sib''16\cresc mi,,, dod''} \t {la, fad''( sol)}
  sib-. <la,, red''>-- \t {dod' sib' sol} \t {red'8 la,, dod'} |
  <re,! mi' sol red'>4-- -\dyn "poco_f" <la sib' re fad dod'!>--\arpeggio
  \acciaccatura {mi32[ red' sol si]} sold'8-- mi,, |
  \pl {fa2-- r4}
  {r16 la' \t {sol'^\p do, la} \t {sol' do, la} \t {sol' do, la}
  \t {sol' do, sib} \t {sold' dod, sol!}} |
  \lettersOn
  \ttt {\letter "r" fa^"semplice" \letter "a" la,\laissezVibrer
  \letter "y" la'' \letter "o" do,( \letter "n" sib) \letter "s" sol'}
  \pl fa,,2 {r8 sol''32\mf\< do, sol mi sol' do, sol mi sol' do, sol mi} |
  \lettersOn
  \tt {\letter "d" re16-0\f \letter "e" <mi\5> \letter "s" sol' \letter "i" dod, \letter "r" fa}
  \lettersOff
  \tt {re,-0 <mi\5> si'!-0 <dod\3> fa} sol4\laissezVibrer |
  r4 \t {re,16-0\p\laissezVibrer lad' si-0} fa'8-. r8 <sol, re' mib sib'-.>\sf _"IV."\arpeggio |
  \tt {r16 la,-0\<\laissezVibrer si'! fad' sol} re'4\!
  \lettersOn
  \letter "v" red\f\laissezVibrer |
  \letter "a" la,,-0 \letter "i" <dod'\4> \letter "n" sib'~ |
  \lettersOff

  %%% 2 %%%
  sib2 r4 |
  \pl re,,2.-0 {r4 <la' dod fad>2} |
  \pl la,2.-0 {r8 \harmonics <mi'\6>-"h. 12"\laissezVibrer <sib' re sol>2} |
  \pl {re,2-0 <dod\6>4} {r8 \harmonics <la'\5>-"h. 12"\laissezVibrer <mi' sold dod>2} |
  \pl sol,,2. {r8 re'-0\laissezVibrer <si' mi la>2\arpeggio} |
  r8 \harmonics {<si\6>-"h. 7"\laissezVibrer
  \t {<mi\5>\laissezVibrer <re'\3> <la\4>\laissezVibrer}} r4 |
  \pl sol,2.-0 {r4 <si-0 fad'>2}
  \pl re,2.-0 {r4 <la' dod fad>2}
  <la,-0 la'>4*3/4~ \hideNote la4*1/4 <sib' re sol>4 \tt {r16 red,16( mi) dod'( sib)} |
  \pl mi,,2. {\t {mi16\laissezVibrer sol'-0 <sol\4>} mi'8-0 <si red sold>2} |
  \pl mi,,2. {r4 <sol' do mib lab>2\arpeggio} |
  \tt {mi16 si'' do, dod sold'} \pl mi,,2 {mi16 sol' <sib dod fad la>4.} |
  \tt {mi,,16 red' la' re! fa!} sib4^"(bend)" -\bendAfter #+2 \tt {mi,,,16 red' la' re fa} |
  sib4-\bendAfter #+4 mi,,,8\laissezVibrer \harmonics { <re'!\4>-"h. 12"
  \t {<la'\4>-"h. 7" <re\3> <fad\2>} |
  <si\1>2.\laissezVibrer } |
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
  R1.
  \ttt {r16 mi'' re mi si sol} \ttt {la re, mi la, si la} fa2.\laissezVibrer r4 |
  \t {r4 fa fa} fa2 fa4 fa8 fa |
  <mi mi'>16 mi mi4.\laissezVibrer <mi''\5\harmonic>1-"h. 7" |
  <mi'\1\harmonic>1.-"h. 12"\laissezVibrer |
  R1.
  r2 r4 re,16 sib dod la \t {sib8 fad re} \t {mi sib fad} |
  mi1\laissezVibrer <mi'''\1\harmonic>2-"h. 12" |
  \harmonics {\t {r4 mi mi~} mi8 mi mi4} \bendAfter #+4 mi2~ mi1 r2 |
  R1.

  %%% 6 %%%
  \xNote {
  R1.*2 \t {r4 do,, do} r do r do |
  R1.*2 \t {r4 do do} r do r do |
  R1. \t {r4 do do} r do r do | r do
  r2 r4 r8 \t {la''16 la la} la4 r r1 |
  R1.*2 \t {r4 do,, do} \t {r do do} \t {r do8} \t {la'' do,, la''} |
  \tupletUp \t {r4 \tupletDown \t {la8 la la} do,,4} \tupletNeutral
  \ttt {la''8 do,, la'' do,, la'' do,,}
  \ttt {la'' do,, la'' do,, la''16 do,, la'' do,,} |

  %%% 7 %%%
  la''4 r2 } |
  <mi,, mi'\5>2.\laissezVibrer \snappizzicato |
  s2.
  \t {mi8 sib''' fa} do4 si'~
  si la,, \acciaccatura dod''8 mi,4~ |
  mi8 dod' la,, si'' do, fa |
  \pl {r2 \harmonics <mi\5>4_"h. 7" s2}
  {sib'2.~ sib2} do,8 sib |
  sib' \harmonics <mi,\5>4 sib'8 \t {mi,,, sib'' do} |
  sib4 r \harmonics <mi,\6>-"h. 12" \laissezVibrer
  s2.
  r4 sib' mi,,8 dod'' | fa,,2.\laissezVibrer |
  r4 sib''8 mi,, dod'' fa,, |
  r4 \harmonics <sol'\2>-"h.12" <dod,,\6>_"IX." |
  sold'''4\snappizzicato r2 |
  R2.*7
  \harmonics {\t {re,8-"h. 12" sol si} mi4} r |
  R2.*25

  %%% 8 %%%
  \pl re,,2.\laissezVibrer {r4 <dod' fa sib>2\laissezVibrer}
  R2.*3
  re,4\laissezVibrer dod'\laissezVibrer sib'\laissezVibrer
  R2.*2
  \t {la,,4-0\laissezVibrer dod'\laissezVibrer sib'~} sib4\laissezVibrer
  R2.
  red4_"XI."\laissezVibrer la,,\laissezVibrer dod'\laissezVibrer |
  sib'2.\laissezVibrer R2.
  r2 \t {red8 la,, dod'~} \t {dod sib'4~} sib2~ |
  sib4. sib~ | sib8 sib2 si8 |
  \pl {
    fa,\laissezVibrer do' lab'4 <do, lab'>
    mi,8\laissezVibrer si' sol'4
  } {
    do2~ do8 si dod2
  } r4 | R2. r2 r8 \pl {
    s8 fa,,\laissezVibrer do' lab'4 <do, lab'>
    mi,8\laissezVibrer si' sol'4 <sib, sol'>~
    <sib sol'> <dod,\6>8\laissezVibrer sol'
  } {
    si'8 do2 r8 si dod2. si!2
  } <si, la' re>4~ | <si la' re>2 r4 |
  r4 <fa do' fa lab>2\arpeggio |
  r4 <mi si' mi sol>2\arpeggio |
  r4 <si fad' si re fad>2\arpeggio |
  r4 <si' re fad>2_"(non arp.)" |
  r4 <sib, mi sol do mi>2\arpeggio |
  r4 <la fa' sol dod fa>2 |
  r4 <re la' dod fad>2~ |

  %%% 9 %%%
  <re la' dod fad>4 r2 |
  R2.*3
  \pl {
    la2. la la la la
  } {
    s8 mi'\laissezVibrer <red' mi> si\laissezVibrer <red mi>4
    s8 mi,\laissezVibrer <red' mi> si <red mi> mi,
    s8 mi <red' mi> si <red mi>4
    s8 mi, <red' mi> si <red mi> mi,,
    s8 mi' <red' mi> si <red mi>4
  }
  R2.
  \pl {
    la,2. la la
  } {
    s8 mi'\laissezVibrer <re'! mi> si\laissezVibrer <re mi>4
    s8 mi, <re' mi> si <re mi> mi,,
    s8 mi' <re' mi> si <red mi>4
  }
  \set tieWaitForNote = ##t
  \t {la,4~ mi'~ <si' re mi>~} <la, mi' si' re mi>~
  \hideNotes <la mi' si' re mi>2. \unHideNotes
  R2.
  red''4_"XI."\laissezVibrer la,,-0\laissezVibrer dod'\laissezVibrer |
  sib'2.\laissezVibrer |
  red4\laissezVibrer la,,-0\laissezVibrer
  \harmonics {<dod'\6>_"(h. d'octave)"\laissezVibrer
  r4 <sib'\4>2\laissezVibrer \fermata
  <mi,,\5>2.-"h. 7"\laissezVibrer }
}

%------------------------------------------------------------------%
