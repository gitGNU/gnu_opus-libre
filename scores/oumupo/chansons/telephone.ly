%-- Chansons Oulipiennes -- textes.ly -----------------------------%
% (c) 2012-2013 Valentin Villenave <valentin@villenave.net>.

\language "italiano"

TelephoneVoix =
\relative do' {
  \key si \minor
  \partial 4
  si8 si | fad'8 fad16 fad mi re8 dod16~ dod4
  r16 mi mi re | dod8. re16~ re mi sol8 fad4
  r16 fad, si fad | fad'8 fad16 mi~ mi re8 dod16~ dod4
  r16 re dod si | \time 6/4 lad4 r8 fad r16 re'8. dod si16~ si4
  
  r16 fad' fad fad | \time 4/4 la8. la16 sol fad8 mi16~ mi4
  r16 fad mi re | dod16. re mi16 r sol8 fad16~ fad4
  r16 fad, si si | fad'8. fad16~ fad mi re8 dod4
  r16 re dod si~ | \time 6/4 si8 lad r fad re'8. mi16~ mi8 si~ si4
  
  r16 si si8 | \time 4/4 si16 fad'8 fad16~ fad mi8 re16 dod4
  r16 mi mi re | dod8 re mi sol16 fad~ fad4
  r16 si, si si | fad' fad8 mi16~ mi re dod8~ dod4
  r16 re dod si~ | \time 5/4 si lad fad8 re'8. dod16~ dod8 si~ si4
  
  r8 fad'16 fad | \time 4/4 la8 la16 la sol fad8 mi16~ mi4
  r16 fad mi re | dod16. re mi16~ mi8 sol fad4
  r16 fad, si si | fad'8 fad16 fad mi8 re~ re16 dod8.
  r16 re dod8 | \time 6/4 si16 lad8. r8 fad re'4 dod8. si16~ si4
  
  r8 \times 2/3 {si16 si si} | \time 3/4 si8 si16 si~ \times 2/3 {si fad' mi~} mi8
  r8 \times 2/3 {fad16 mi re} | \time 4/4 dod8. re16~ \times 2/3 {re mi sol} fad8~ fad4
  r16 si, si8 | \times 2/3 {si fad' fad~} \times 2/3 {fad mi re} dod4
  r16 re dod si | \time 6/4 lad4 r16 lad8. re16 dod si8~ si4
  
  r8 fad' fad16 fad8 la16~ | \time 4/4 la8 la sol16 fad8 mi16~ mi4
  r8 fad16 mi~ |  \time 5/4 mi re dod8~ dod16 re8 mi16~ mi8 sol fad4
  r16 fad, si si | \time 4/4 fad'8 fad mi16 re8 dod16~ dod4
  r8 re~ | \time 3/4 re dod si4 r |
  lad r4\longfermata r8 fad re' dod si4
  
  r16 si8 si32 si | \time 4/4 si16 si si8 fad'16 mi8.
  r8 mi8~ mi16 mi mi8 | sol8 sol16 fad~ fad mi fad8~ fad4
  r8 si,16 si | \times 2/3 {si8. si16 si8~} \times 2/3 {si dod re} mi4
  r16 re dod si~ | \time 6/4 si8 lad r fad re'8. dod16~ dod8 si~ si4
  
  r16 fad' fad fad | \time 4/4 la8 la16 sol~ sol fad8 mi16~ mi4
  r16 fad mi re | dod8 dod16 re mi8 sol16 fad~ fad4
  r16 si, si si | \time 3/4 fad'8 fad mi re dod4 |
  r8 re \times 2/3 {r dod si} lad4 | r8 fad re'4 dod | si r \bar "|."
}

TelephoneBasse =
\relative do' {
  \clef bass
  \key si \minor
  \partial 4 r4
  si,8. mid16 fad8 si,16 sid
  dod8. mid16 fad8 fad
  dod8. mid16 fad8 dod16 do
  si8. mid16 fad8 fad,
  si8. mid16 fad8 si,16 sid
  dod8. mid16 fad8 dod
  fad,4 r r2 r8 si si' si,16 dod |
  
  re8. re16 re la' re,8 la8. la16 mi'8 la,
  lad8. lad16 fad8 lad si8. si16 fad' fad, sold lad
  si8. mid16 fad8 si,16 sid
  dod8. mid16 fad8 dod\glissando
  fad,4 r r2 r8 si si4
  
  si8. mid16 fad8 si,16 sid
  dod8. mid16 fad8 fad
  dod8. mid16 fad8 dod16 do
  si8. mid16 fad fad, sold lad
  si8. mid16 fad8 si,16 sid
  dod8. dod16 fad dod fad dod
  fad,4 r2 r8 si si dod |
  
  re8. sold16 la8 re, la8. la16 mi'8 dod16 si
  lad8. mid'16 fad8 lad,
  si16. si32 mid16 fad~ fad fad, sold lad
  si8. mid16 fad8 si,16 sid
  dod8. sol'16 fad8 dod
  fad,4 r r2 r8 si si'4

  si,8. fad'16 si fad mi8~ mi16 sol si mi,
  la,?8. fad'16 lad,8 dod \t {si re dod} si fad
  si8. mid16 fad8 si, dod sol' mi dod\glissando
  fad,4 r r8 si16 si'~ si mid, sol fad
  dod'8\prall si~ \t {si fad mi}
  
  re8. re16 la'8 re, la8. la16 la4
  lad8. lad16 lad4 fad'8 lad, si8. si16 si4
  si8. mid16 fad8 si,16 sid dod8. mid16 fad4
  dod r dod fad, r2\longfermata
  r4 re''8 dod si fad

  si,8. fad'16 si,8 fad'16 si,
  mi8. mi16 si'8 mi,
  sol,8. sol16 \t {re'8 sol fad}
  si,8. si16 fad'8 fad,
  re' si4 sid8 dod8. dod16 fad8 dod
  fad,4 r r2 r8 si si' dod,

  re8. re16 la'8 re, la8. la'16~ la8 la,
  lad8. sol'16 fad8 re si8. mid16 fad8 fad,
  re' si dod re mi fad
  sol4 r2 fad,4 r2 r4 <si' re sold>\arpeggio
}

TelephoneBip =
{
  \set fontSize = #-1
  \set RhythmicStaff.instrumentName = "Téléphone"
  \override Staff.StaffSymbol #'line-count = #0
  \override NoteHead.font-size = #-20
  \override Staff.VerticalAxisGroup.staff-staff-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0))
  \partial 4 r4
  r2*1/2 s4^"(staccato)" r8 do do4
  r2 r8 do do4
  r2 r8 do16 do do4
  R1.
  r8 do r4 r16 do8 do16 do4
  r16 do do8 r4
  r16 do32 do do16 do do do do do
  r8 do r4 r8 do do4
  R1.
  r2 r8 do16 do r do do8
  r2 \tt {r16 do do do do} do do do8
  r2 r8 do do4
  R1*5/4
  r16 do r8 r4 r16 do[ r do r do r do]
  do4 r r do8 do
  r do do4 do8 do r4
  R1.
  r16 do32 do do8 r16 do32 do do16 do32 do do4
  r16 do do8 do16 do r do do8 do r4
  r2 \t {r8 do do} do4
  R1.
  r2 do32 do do do r do do do do4
  r8 do r do r4 r16 do do do r16 do8.
  r2 \t {do8 do do} do4
  R2.*3
  r2 r8 do do4
  r2 r8 do do4
  r2 \t {r8 do do} do4
  R1.
  r2 r8 do16 do~ do do do8
  do4 r do16 do32 do do16 do do32 do do do do8
  R2.*2
  do4 r2
  r2
}

BipInstr = "Téléphone"

TelephoneBipTexte = \lyricmode {
  \override LyricText.font-size = #-1
#(make-sequential-music
  (map
   (lambda (num)
     (let ((num (if (number? num)
                    (number->string num)
                    num)))
     (make-music 'LyricEvent
       ; gotta specify a duration,
       ; even though it will be ignored.
       'duration (ly:make-duration 2 0 1)
       'text num)))
   (list
    4 7
    4 "#"
    4 8 "#"
    
    7 9 7 9
    7 5 9 7 5 7 9 7 4 1
    4 8 "#"
    
    4 8 8 "#"
    3 "#" 8 5 1 9 4
    2 0
    
    9 "#" 0 5 3
    "*" 1 4
    4 7 7 0
    
    1 4 5 3 6 9 2 5 8
    "#" "*" 0 "#" 9 7 5
    5 4 1
    
    5 8 5 8 8 "#" 8 "#"
    1 4 1 5 8 "#"
    8 7 4 "*"
    
    7 5 0 9
    1 4 8
    "#" 8 7 4 2
    6 6 1 6 2 6 1 6 9 "#"
    4
    )))
}
