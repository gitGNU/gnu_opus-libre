\language "italiano"

\header {
  title = "Chanson de l’autobus"
  composer = "OuMuPo"
  poet = "François Caradec"
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

\transpose sol fa <<
  \relative {
    r8 re sol sib \times 2/3 {dod4 fa8~} fa4 |
    mib8 la,4. r4 sib8 mib |
    re2. r4 |
    r8 sol, la fad sib mib, r8 do |
    fad si2.. r8 mi, fad sold la si re4 |
    do8 fa,4. r8 mi fad red |
    si'4 r r8 dod, mi re |
    si'2 r |
    r8 mi do reb lab sol fa lab |
    sol2 r |
    r8 dod, sold' la do sib~ \times 2/3 {sib fa'4~}
    fa mib8 la,~ la2 |
    r8 do, fad sold la sib do mib |
    re2. r4 r8 mi, sold lad
    si8 fa4 mi8 |
    fa8 fad4. r8 re dod re |
    si'4. lab8 reb4. do8 |
    fa,2. r4 r si fad4. mi8 |
    la2. sib4~ | sib2 mib,4 re |
    sol1 R1 \bar "|."
  }
  \addlyrics {
    On a -- tten -- dait sous la pluie l’au -- to -- bus
    on se de -- man -- dait que \dash fait -- il_?
    \dash y_a -- \dash t_—_il un bou -- chon rue Pic -- pus
    u -- ne ma -- nif un in -- cen -- die_?
    On a -- tten -- dait long -- temps long -- temps.
    Au -- jour -- d’hui j’a -- ttends l’au -- to -- bus
    dans la rue sous un a -- bri -- bus
    je co -- nnais le temps de l’a -- ttente
    il faut bien que je m’en con -- tente.
    On a -- ttend tou -- jours l’au -- to -- bus.
  }
  \new PianoStaff <<
    \relative {
      \clef treble R1
      r4 <do mib sol la>2 q4
      r <si mi la>2 q4
      r <do mib sol la>2 <do mib fad la>4
      r <si mi la>2 q4
      r <sold re' mi>2 q4
      r <sol do fa>2 <sol do fad>4
      r <la do sol'>2 <lad dod fad>4
      r <si re mi>2 <si re mi>4
      r <do mi sol>2 <do fa>4
      r <si re mi sol>2 <si re mi sol>4
      <dod mi fad la>1
      r4 <do mib sol la>2 q4
      r <do mib fad la>2 <do mib sol la>4
      r <si mi la>2 q4
      r <si re mi>2 <si re fa>4
      r <sol do mi>2 <fad do' mi>4
      r <fa sol si mi>2 <sol sib mi>4
      r <lab do reb fa>2 <lab reb solb>4
      <si mi sol>1
      <la do mi sol>\arpeggio
      <do mib fad>
      r4 <si re mi sol>2 <si re mi sol>4
      <si re mi sol>1
    }
    \new Staff \relative {
      \clef bass
      R1 do,1 sol do, sol'
      mi la, re sol
      lab2 reb2
      sol,1 sol,
      do' do
      sol sol2 sold la1
      re2 do sib1
      la re re, sol~ sol
    }
  >>
>>