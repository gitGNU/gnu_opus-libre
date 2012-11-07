%-- Sardinosaures -- tortulipe.ly ---------------------------------%
% (c) 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

TortulipeVoix = \relative do' {
  \time 7/4
  \tempo "Andante serioso" 4 = 80
  \dynamicUp
  sib4--\(\dyn "mf_pesante" re-- fad-- sib-- sol-- mi-- dod-- |
  sib--\) r sib--\( re-- fad-- sib--\) r |
  sol--\( mi-- dod-- sib--\) r2 r4 |
  R1*7/4
  r1 r2 sib4~\p\< |
  sib4. r8\! sib\mp\< sib~ sib16 sib8 sib16 sib16. sib32 mi2--\! sib8 |
  r2 mi8\mf\> mi~ \times 2/3 {mi mi mi} sib' mi,~ mi16 sib mi4.\! |
  R1*7/4
  \acciaccatura fa'8-> mi4.\fp mi16. dod32~-- \times 2/3 {dod4 re8~\(}
  re16 mi fa sol \acciaccatura fa16-> mi4.\) r8 r4 |
  r4 r8 do4.--\mp mib4~-- \times 2/3 {mib8 si4~} si16 la8. do4 |
  r lab--\>\( sib2.-- fad4.\) r8\! |
  R1*7/4
  r4 mi-.--\mp fad8-. mi-. red4-.-- r dod-.-- mi8-. sold-. |
  fa4-.-- r2 r4 re-.--\p r mi-.-- |
  fad8-. sold-. sib4-- la-- r2 fa4-. dod-. |
  R1*7/4
  sib'4\(\dyn "mf_ben legato" mi\) mib la, lab2 sol4 |
  fad4. do'8~\> do2 dob2. |
  r4\! la\f dod2\(\> \glissando fa,4\)\! r mi\p |
  red-- do-- red-- la'2-- r2 |
  r2 mi2.--\f r4 mi\( |
  la4.^"large" mib8~ mib4 sold4. do,8~\< do4 fa |
  dob2.\)\! r2 r4 sib'~->--\f |
  sib sol--\(\mp\> mi-- dod-- sib-- re-- fad--\) |
  sib,1\mf ^"ten." r2 r4 |
}

TortulipePianoMd = \relative do' {
  \clef bass
  sib,4^\dyn "mp_al fine" re fad sib sol mi dod | %1: C-c
  sib dod sol' sib la mi dob | %2: D-e
  sib mib fa sib sol mi dod | %3: E-c
  sib dod sol' sib fa mi mib | %4: D-a
  sib do lab' sib fad mi re | %5: B-b
  %  \bar "||"

  sib dob la' sib lab mi do | %6: A-d
  sib re fad sib la mi mib | %7: C-e
  sib mib fa sib lab mi do | %8: E-d
  sib dod sol' sib fad mi re | %9: D-b
  sib do lab' sib fa mi mib | %10: B-a
  %  \bar "||"

  sib dob la' sib sol mi dod | %11: A-c
  sib do lab' sib la mi dob | %12: B-e
  sib dod sol' sib lab mi do | %13: D-d
  sib mib fa sib fad mi re | %14: E-b
  sib re fad sib fa mi mib | %15: C-a
  %  \bar "||"

  sib dob la' sib fad mi re | %16: A-b
  sib do lab' sib lab mi do | %17: B-d
  sib dod sol' sib sol mi dod | %18: D-c
  sib mib fa sib la mi dob | %19: E-e
  sib re fad sib lab mi do | %20: C-d
  %  \bar "||"

  sib dob la' sib la mi dob | %21: A-e
  sib do lab' sib sol mi dod | %22: B-c
  sib dob la' sib fa mi mib | %23: A-a
  sib re fad sib fad mi re | %24: C-b
  %  sib mib fa sib fa mi mib | %25: E-a
  R1*7/4 \bar "|."
}

TortulipePianoMg = \relative do' {
  \clef bass
  sib,4 sol mi dod sib re fad | %1: c-C
  sib fa mi mib sib do lab' | %2: a-B
  sib sol mi dod sib dob la' | %3: c-A
  sib la mi dob sib do lab' | %4: e-B
  sib lab mi do sib dod sol' | %5: d-D
  %  \bar "||"

  sib fad mi re sib mib fa | %6: b-E
  sib fa mi mib sib re fad | %7: a-C
  sib fad mi re sib dob la' | %8: b-A
  sib lab mi do sib do lab' | %9: d-B
  sib la mi dob sib dod sol' | %10: e-D
  %  \bar "||"

  sib sol mi dod sib mib fa | %11: c-E
  sib fa mi mib sib dod sol' | %12: a-D
  sib fad mi re sib do lab' | %13: b-B
  sib lab mi do sib dob la' | %14: d-A
  sib la mi dob sib re fad | %15: e-C
  %  \bar "||"

  sib lab mi do sib mib fa | %16: d-E
  sib fad mi re sib dod sol' | %17: b-D
  sib sol mi dod sib do lab' | %18: c-B
  sib fa mi mib sib dob la' | %19: a-A
  sib fad mi re sib re fad | %20: b-C
  %  \bar "||"

  sib fa mi mib sib mib fa | %21: a-E
  sib sol mi dod sib dod sol' | %22: c-D
  sib la mi dob sib mib fa | %23: e-E
  sib lab mi do sib re fad | %24: d-C
  %  sib la mi dob sib dob la' | %25: e-A
  R1*7/4 \bar "|."
}
