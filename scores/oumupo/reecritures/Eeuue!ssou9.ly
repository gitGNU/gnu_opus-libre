\language "italiano"

\header {
  title=\markup \center-column {"E euue!ssou9" \medium "(0681)"}
  composer="Oumupo"
}

\layout {
  \context {
    \Score
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t

    \override TimeSignature #'style = #'()
    \override TextScript #'stencil =
      #(lambda (grob)
          (let ((grob-markup (ly:grob-property grob 'text)))
            (grob-interpret-markup grob (make-italic-markup grob-markup))))
    \override TextScript #'direction = #UP

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

\new PianoStaff <<
  \new Staff \relative {
    <la do mi>4 <la do mi>2 mi''4\laissezVibrer |
    <la,, do mi>4 <la do mi>2 mi'''4\laissezVibrer |
    <la,,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <mi,, la do>4 <mi la do>2 mi''4\laissezVibrer |
    <mi,, la do>4 <mi la do>2 mi''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <mi,, la do>4 <mi la do>2 mi''4\laissezVibrer |
    <mi,, la do>4 <mi la do>2 mi''4\laissezVibrer |
    <sol,, si mi>4 <sol si mi>2 si''4\laissezVibrer |
    <sol,, do mi>4 <sol do mib>2 sol''4\laissezVibrer |
    <sol,, do mi>4 <sol do mib>2 sol''4\laissezVibrer |
    <sol,, si mi>4 <sol si mi>2 si''4\laissezVibrer |
    <sol,, si mi>4 <sol si mi>2 si''4\laissezVibrer |
    <sol,, do mi>4 <sol do mib>2 sol''4\laissezVibrer |
    <sol,, do mi>4 <sol do mib>2 sol''4\laissezVibrer |
    <sol,, do mi>4 <sol do mib>2 sol''4\laissezVibrer |
    <sol,, do mi>4 <sol do mib>2 sol''4\laissezVibrer |
    <la,, do mi>4 <la do mi>2 mi''4\laissezVibrer |
    <la,, do mi>4 <la do mi>2 mi'''4\laissezVibrer |
    <si,, re sol>4 <si re sold>2 re''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <si,, re sol>4 <si re sold>2 re''4\laissezVibrer |
    <si,, re sol>4 <si re sold>2 re''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <sol,, do mi>4 <sold dod mi>2 sold'''4\laissezVibrer |
    <si,,, re sol>4 <si re sold>2 re''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <si,, re sol>4 <si re sold>2 re''4\laissezVibrer |
    <si,, re sol>4 <si re sold>2 re''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <la,, do mi>4 <la do mi>2 mi''4\laissezVibrer |
    <la,, do mi>4 <la do mi>2 mi'''4\laissezVibrer |
    <sol,,, si mi>4 <sol si mi>2 si''4\laissezVibrer |
    <sol,, si mi>4 <sol si mi>2 si''4\laissezVibrer |
    <sol,, si mi>4 <sol si mi>2 si''4\laissezVibrer |
    <sol,, si mi>4 <sol si mi>2 si''4\laissezVibrer |
    <la,, re fa>4 <la re fad>2 la''4\laissezVibrer |
    <sol,, si mi>4 <sol si mi>2 si''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <mi,, la do>4 <mi la do>2 mi''4\laissezVibrer |
    <mi,, la do>4 <mi la do>2 mi''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <la,, re fa>4 <la re fa>2 la''4\laissezVibrer |
    <mi,, la do>4 <mi la do>2 mi''4\laissezVibrer |
    <mi,, la do>4 <mi la do>2 mi''4\laissezVibrer \fermata |
  }

  \new Staff \relative {
    \clef bass
    \dynamicUp
    R1
    r2 la,4.( la8 |
    re re) r4 re4.( re8 |
    do do si si lad lad) r4 |
    sol4.( sold8 si sid mi, mi) |
    R1
    r2 re'4.( re8 |
    do do si si lad lad) r4 |
    sol4.( sold8 si sid mi, mi) |
    r2 r4 si'4*3/4( \grace re8) s16 |
    r2 do4.(\< do8 |
    mi\! re do si lab\> do re mib)\! |
    r2 r4 si~ |
    si1*15/16( \grace re8) s16 |
    r2 do4.( do8 |
    mi\< re do si lab\> do re mib)\! |
    r2 r4 mib~ |
    mib1*15/16( \grace do8) s16 |
    r2 r4 mi4~ mi1*15/16( \grace sold8) s16 |
    r2 si,4.( si8 |
    do la do red mi\< fad sol lad\! |
    sol\< fad mi red\! do la do red |
    mi fa\> sol la sol fad mi red\! |
    do la do red mi fad sol lad) |
    R1
    r2 si,4.( si8 |
    do la do red mi\< fad sol lad |
    sol fad mi red\! do la do red |
    mi fa\> sol la sol fad mi red\! |
    do la do red mi fad sol lad) |
    r2 r4 mi4*3/4( \grace sold8) s16 |
    r2 sol4.( sol8 |
    fad fad mi mi red red r4 |
    do4. dod8 mi mid la, la) |
    R1
    r2 sol'4.( sol8 |
    fad fad mi mi red red r4 |
    do4. dod8 mi mid la, la) |
    R1
    r4 mi'4.( mi8 sol, sol |
    si\< re mi fad mi re\> si re |
    mi fa mi re\! si re mi fad |
    re re si si re re) si4~ |
    si1*15/16( \grace re8) s16 |
    r2 re4.( re8 |
    do4. do8 re re) si4*3/4( \grace re8) s16 |
    r2 re4.( re8 |
    do do si si lad lad) r4 |
    sol4.( sold8 si sid mi, mi) |
    R1
    r2 re'4.( re8 |
    do do si si lad lad) r4 |
    sol4.( sold8 si sid mi, mi)\p\fermata \bar "|."
  }
>>
