%-- Chansons Oulipiennes -- popincourt.ly -------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

PopincourtVoix =
\relative do' {
  \key si \minor
  \tempo "Tempo de java (très swingué)"
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

PopincourtGrille = \chordmode {
  \time 3/4
  si2.:m si:m/lad si:dim/la si:m/sold
  sol re dod:dim do fa sold:7 do/sol fad
  sol re fad do fad do fad

  si:m si:m/lad si:dim/la si:m/sold
  sol re dod:dim do fa sold:7 do/sol fad
  sol re fad do fad do fad

  si:m si:m/lad si:dim/la si:m/sold
  sol re dod:dim do fa sold:7 do/sol fad
  sol re fad do fad do fad

  red:m red:m/re red:dim/dod do:dim
  mi/si lad:7 fad/lad do fa lab:7 do/sol fad
  sol re fad do fad do fad

  si:m si:m/lad si:dim/la si:m/sold
  sol re dod:dim do fa sold:7 do/sol fad
  sol re fad do
  sol re fad2 sol4 do2.:m s do:m6.9
}

PopincourtToy =
\relative do' {
  \key si \minor
  si'2.( lad la sold) sol2( re4 fad2.) mid mi4( fa sol)
  la2.( lab sol fad2) r4
  sol <si re sol> q re, <la' re fad> q
  fad <lad dod fad> <lad dod fad> <si, si'>2. R2.*3
  si'4( si' si, lad2.) la4( la' la, sold2.)
  sol4( re' mi fad2.) fa mi4( fa sol)
  la( la, la' sold2.) sol4( sol, sol' fad2) r4
  sol, <si re sol> q re, <la' re fad> q
  fad <lad dod fad> <lad dod fad> <si, si'>2. R2.*3
  R2. r4 fad''2\pp\laissezVibrer R2. r4 re2 R2. r4 la( sold
  sol2.) mi4( fa sol) la2.( sold sol fad2\fermata) r4 \pageBreak
  sol <si re sol> q re, <la' re fad> q
  fad <lad dod fad> <lad dod fad> <si, si'>2. R2.*3
  red'4( red' red, dodd2.) dod4( dod' dod, do2.)
  si4( si' si, lad2.) lad4( dod fad)
  <mi, mi'>( <fa fa'> <sol sol'>) <la la'>2. <lab lab'>
  <sol sol'>4( <la la'> <sol sol'> <fad fad'>2)\fermata r4
  sol <si re sol> q re, <la' re fad> q
  fad <lad dod fad> <lad dod fad> <si, si'>2. R2.*3
  R2. r4 re'( si fad2.) r4 si( sol re2.) r4 sol( la)
  si2. lad4( si lad) la2( sol4 fad2.)
  <sol sol'>4\fermata <la la'>\fermata <sol sol'>\fermata
  <fad fad'>2:32\fermata r4
  sol <si re sol> q re, <la' re fad> q
  fad <lad dod fad> <lad dod fad> R2.
  r8. si16(^"solo" re8. fad16) si,8.( re16 <fad, fad'>2.)
  R2. r4 do8 mib sol la do_\> mib sol4 la do re2\!
}
