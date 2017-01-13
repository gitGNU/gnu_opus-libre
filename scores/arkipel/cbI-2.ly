%-- Arkipel -- cbI-2.ly -------------------------------------------%
% (c) 2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Css =
\relative do' {
  mi'4--\pp r mi-- mi-- r mi--
  mi-- r mi--
  mi8(\> sol mi sol mi sol)
  \repeat tremolo 3 {mi(\ppp sol)}
  \repeat tremolo 3 {mi( sol)}
  \repeat tremolo 3 {mi( sol)}
  \repeat tremolo 3 {mi^"simile" sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {re fa}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  r4 <si,? sol'>--\mf\<\upbow q-- q--
  <fad si>->--\! r2
  q4-- r8 <fad mi'>-. r2
  <fa re'>4-- <fad mi'>2~-- q r4
  R2
  \repeat tremolo 3 {mi'8(\ppp sol)}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  mi8( sol mi4) mib,--
  mi'--\cresc do,-- mi'--
  mib,8( do) mi'-. si-.
  r4\! <sib sol'>--\< q--
  <dod sol'>2--\mf r4
  q4.-- <dod fa>8~^( <dod mi>4)
  r8 <dod sol'>4-- <si fa'>^( mi8)
  <dod sol'>8->\fp fa-. mi-. dod-. sib-. lab-.
  sol4\downbow\dyn "mp_solo"
  fa\downbow mi8-. sol(-> lab) fa-.
  re-. lab'( sib) sol->~\downbow
  sol fa4\downbow si,8 do( re) si4 r
  la'4\mf\downbow sol\downbow
  mi8-. la(\downbow sib) sol~\downbow
  sol dod,-. la'4\downbow
  sol8(\downbow si,-.) re-. mi~\downbow
  mi dod-. do'( sib)
  la-. sol4-- mi->( re8)
  <fad si>2\p <fa sib>4
  <fad si>4. <fa sib>
  <fad si>4 <fa sib>2
  <fad si>4-- <fa sib>--
  <sol do> <fa sib>2
  <sol do>4. <fa sib>
  <sol do>2 <fa sib>4
  <sol do>-- q--
  <sold dod>8 <fad si>4.
  <sold dod>4. <fad si>8
  <sold dod>( <fad si>) r <sold dod>-. q4
  <la re>8( <sol do>) <la re>4--
  r8 q\upbow <sol do>( <la re>) q4--
  q-- q8(-. q-.)
  r q(\downbow <sold dod>4) <la re>8(-. q-.)
  r8 q4( <sold dod>8-.)
  <la re>4(-- q--)
  q8--\downbow q16 q r8 q-. r q-.\upbow
  q4-- q16\upbow q q8-. <lad red>8.-- q16-.
  r q\downbow q8-. q16 q q q r8 q-.\downbow
  q16\cresc q q8 <si mi>\downbow q16 q q q q8
  q16 q q q q8 q16 q q\< q <do fa>8
  \t 4 {
    sol'(\dyn "f_molto" mi? sol) mi( sol mi)
    sol( mi sol) mi?( sol mi)
    sol( mi sol) mi( sol mi)
    r4 dod8(\< mi) re( fa)
    sol(\! mi? sol) mi( sol mi)
    sol( mi sol) mi( sol mi)
    sol( mi sol)
  } r dod,:16\< sid: red:
  \t 4 {
    si(\! sold si) sold( si sold)
    si( sold si) sold( si sold)
    si( sold si) sold( si sold)
    si( sold si) do( si do)
  } mi2~ mi r4
  \clef bass
  \t 4 {
    mi,,8(\< sol do)
    mib(\f\> do sol)
    mi(\! sol mi)
  } sol r sol( mi) sol( mi)
  sol r \t {sol(\downbow mi sol)}
  \t {mi( lab mi)} sol r
  \t 4 {
    mi(\mp do) mib do( mib) r
    mib( do) mi do( mib) r
    mib( do) mib do( mi) r
    mib( do sol)
  } r4
  R2.*2
  \improvisationOn
  \t {mi4\f ^"perc." mi8} r mi
  r4 mi
  \improvisationOff
  r8 sib'16\<\downbow sib mi mi la8
  \improvisationOn
  \t {mi,4\! mi8} r mi r mi
  \improvisationOff
  r re'16\< mib fa fad sold la
  \improvisationOn
  \t 4 {r8\! mi, mi r mi4}
  r mi \t {r mi8}
  \t 4 {r mi mi r mi mi r mi4}
  \improvisationOff
  \t {fad->\ff\downbow fad8->\downbow}
  r fad->\downbow
  r do'-.\<\upbow mid16 fad sold si
  \t {fad,4->\!\downbow fad8->\downbow}
  r do'16\< do mid mid fad8
  \improvisationOn
  mi,8\mf ^"perc." mi r4
  mi8 mi r4
  mi8 mi r4
  mi8 mi r4
  mi8 mi r4
  mi8 mi r4
  mi8 mi r4
  mi8 mi \clef treble
  \improvisationOff
  re''16\f\< mid fad sol lab sib do mib
  <mi sol>8.->--\ff q16 q8-.
  q4->-- q4->-- q8->-. q2.->--
  r2 \ttt {sib'16(\sfp la lab sol lab la)}
  r8 \t {si16(-> sib la)}
  r4 \t {do?16(-> si sib)}
  r8 r \t {dod16(\upbow si sib)}
  \ttt {mi(->\ff red re dod\< re red)}
  \ttt {mi(\! red re dod\< re red)}
  \ttt {mi(\! red re dod\< re red)}
  \ttt {mi(\! red re dod_"simile" re red)}
  \ttt {mi( red re dod re red)}
  \ttt {mi( red re dod re red)}
  \ttt {mi( red re dod re red)}
  \ttt {mi(\sfp red re dod re red)}
  r2 r4 \t {do16(-> si sib)}
  r8 r \t {re16(-> dod do)} r4
  <sol mi'>8.->--\ff q16 q8-.
  <fa mi'>4->-- q8->-. <sol mi'>8->-. q->-.
  q8.->-- q16->--~ q8 q4.->--~ q8
  r \t {mi16(\p fa fad)} r8
  \ttt {mi16(\< fa fad sol fad fa)}
  \ttt {mi( fa fad sol fad fa)}
  \ttt {mi( fa fad sol fad fa)}
  \ttt {mi(\ff\> fa fad sol fad fa)}
  \ttt {mi( fa fad sol fad fa)}
  \ttt {mi( fa fad sol fad fa)}
  \ttt {mi(\pp fa fad sol fad fa)}
  \ttt {mi( fa? mi fa mi fa)}
  \repeat tremolo 2 {mi( fa)^"simile"}
  \repeat tremolo 6 {mi fa}
  \repeat tremolo 6 {mi fa}
  \repeat tremolo 6 {mi fa}
  \repeat tremolo 6 {re mi}
  \repeat tremolo 6 {re mi}
  \repeat tremolo 2 {re mib}
  \repeat tremolo 2 {fa mib}
  \repeat tremolo 2 {re mib}
  \repeat tremolo 4 {fa mi} \t {fa8 mi fa}
  \repeat unfold 7 \ttt {mi16( fa fad sol fad fa)}
  \repeat tremolo 2 {mi( fa?)}
  \repeat tremolo 2 {sol^"simile" fad}
  \repeat tremolo 2 {mi fa}
  \repeat tremolo 2 {sol fad}
  \repeat tremolo 2 {mi fa}
  \repeat tremolo 2 {sol fad}
  \repeat tremolo 2 {mi fa}
  \tt {mi(\< fa mi fa mi)}
  si4--\mf si8(\upbow sold si sold)
  si4-- si8( sol la sol)
  si4-- si8( red, si' red,)
  si'4-- si8( red,) lad'( red,) \clef tenor
  sol(\<\upbow mi) la( fa) si( fad)
  dod'(\dyn "f_molto_(solo)" sold) dod-.
  si(-- mi,,,-.) lad''-.
  dod(\downbow re) si(--\downbow
  la,,-.) lad''-. dod(->\downbow
  la,,-.) si''(--\downbow mi,,,-.)
  lad''-. dod( re)
  mi(-. dod-.) si(--
  mi,,,-.) lad''-. dod(->\downbow
  mi,,,-.) si'''(--\downbow la,,-.)
  lad''-. \clef treble dod( re)
  mi(\upbow fa) mi-. re(-. dod-.) si->--~
  si <sib mi>\upbow <lab re> <sol dod> <fa si>4~
  q8\dim <sol dod> <fa si>4
  <mi sib'>2\upbow q~\mp q~ q~ q r4
  R2.*2
  \improvisationOn
  do8^\dyn "mp_strict"
  do r2 R2. \clef bass
  \improvisationOff
  red,16(\fp mi) fad(-. red-.) dod8--\downbow
  sid16(\downbow red) mi-. dod8(\downbow sid16-.)
  red(\<\downbow fad) sold-. sid,-. lad'( si)
  dod-.\fp mi,-. fad,(-- mid'-.) sold(-. dodd,-.)
  red\<\downbow mi fad sol fad(\> mi)
  red-. dod(~\downbow dod\! sid-.) red(\downbow mi)
  dod8.(\downbow sid16) fad'\upbow mi red8--
  dod16( sol'-.) fad(-. mi-.)
  red8\downbow dod\downbow sid16-.\upbow
  red(\downbow mi) dod(~\downbow
  dod sid) red(\upbow mi)
  sid\cresc dod red mi sid dod red mi sid dod red mi
  sol( dod,) re fad sold si la( sib)
  do( mib) fa( mi,)
  \clef treble dod'( sol') mi fa
  mib do sib la \clef bass si, \clef treble
  sold''( fad) re sib'( la) re,(-. fad-.)
  do'( si) mi,(-. sold-.)
  red'( dod) fa,(-. sol-.)
  <mi' fa>8.->--\ff q16 q8-.
  q4->-- <fa mi'>4->--\sfz <mi fa>8->-.
  <fa mi'>->-. <mi fa>->-.
  <fa mi'>->-- q->-- <fad mi'>4->--
  r8 mi,16\< mi fa sold red' fad
  <mi fa>8.->--\ff q16 q8-.
  <fa mi'>4->--\sfz <fad mi'>->--\sfz q8->-.\sfz
  \t {r8 mi,4\<\downbow} \t {do' si dod}
  <mi fa>8.->--\ff q16 q8-. <mi fad>4.->--
  r8 la,,4.--\mp\upbow
  r4 sib^"pizz." r
  R2.*6
  la''2.(\dyn "mp_solo" ^"arco" sol)
  fad4( la sib) sol2( fad4~ fad2) r4
  R2.*2 \clef bass
  r2 r8^\markup {
    pizz. (harm. \concat { 5 \super te )}
  } dod,,\p\CaV
  \t {si'4\CaV fad\CaV mi'\CaV} r
  R2.
  mi,4^"(pizz. ordin.)" r si r fad r
  fa'8 do sol fad' r dod r sold r4 sol'
  re r la \t {sold' red lad} r
  R2. \clef treble
  mi'''4(\pp ^"arco" sol mi) sol( mi sol)
  sol4 sol8( mi sol mi
  sol4) sol8( mi lab mi
  sol4) sol8( mi sol mi)
  sol( mi sol mi sol mi)
  \repeat tremolo 3 {sol(\dyn "pp_sempre" mi)}
  \repeat tremolo 3 {sol^"simile" mi}
  \repeat tremolo 3 {sol mi}
  \repeat tremolo 3 {sol mi}
  <mi sol>4 sol8( mi sol mi~
  <mi sol>4) sol8( mi sol mi~
  <mi sol>4) sol8(\upbow red sol red)
  sol( red sol,) red'( sol, red)
  \clef bass
  si( red) si( red si4) r
  sol2\f fa4(~ fa8 mi) sol\< lab sib4\!
  r8 la4(-> sol8) sib( do) la4--\upbow
  \t {sold4(\> si8)\!} r4
  la8(\upbow sold) fad-- fa-- sol4--
  r8 fa4(\upbow\dyn "(f)" mi8) lab\< sib
  \t {sol4(-- la--) dod--\!~}
  dod2~ <dod mi\harmonic>~ q4 r
  \clef treble
  dod8:16\ff\> red: mi: fad: sol: dod,:
  red: mi: fad: sol: dod,: re:
  mi:\mp re: mi: fa: dod: re:
  mi: re: mi: fa: dod: red:
  mi: fad: sold: dod,: red: fad:
  sold: la: dod,: red: fad: sold:
  la: si: fad: sold: la: si:
  re: sold,: la: si: re: la:
  si: re: mi: la,: si: re:
  si:\< re: mi4( fa~
  fa2.~\dyn "mf_intenso" fa4)
  r8 dod4(\upbow fad!8)
  mi2.(~ mi8 fad) \t {dod4( lad) mi'~}
  mi2.~ mi4 r red8(\>\upbow dod)
  \t {sid4( lad8~} lad4) do
  fa(\mp mi2)~ mi2.~ mi4 sol2
  mi4(\pp\> sol mi sol mi sol)
  \repeat tremolo 3 {mi8(\ppp sol)}
  \repeat tremolo 3 {mi( sol)}
  \repeat tremolo 3 {mi^"simile" sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {red sol?}
  \repeat tremolo 3 {red sol}
  \repeat tremolo 3 {red sol}
  \repeat tremolo 3 {red sol}
  \repeat tremolo 3 {red sol}
  \repeat tremolo 3 {red sol}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {mi fa}
  \repeat tremolo 3 {mi sol}
  \repeat tremolo 3 {mi sol}
  mi8( sol do, mi sol mi)
  \repeat tremolo 3 {do mi}
  \repeat tremolo 3 {do mi}
  \repeat tremolo 3 {do mib}
  do4\> mib do\! r
  R2.*4
  \clef bass
  fad,,2.~\pp fad2.~ fad4 r2
  \clef treble
  mi'4(\pp sol mi sol mi sol)
  mi( sol mi sol mi sol)
  mi( sol) mi8\<^"pizz." fa
  \clef bass
  <si,, fad''>4\!\plak r
  \clef treble fa''
  mi(\pp ^"arco" sol mi sol mi sol)
  mi( sol) mi8\<^"pizz." fa
  \clef bass
  <si,, fad''>4\!\plak r \clef treble fa''
  mi(\pp ^"arco" sol mi sol mi sol)
  mi( sol mi sol mi8)\noBeam
  sol\p\> ^"pizz." mi fa
  fad4\! r2
}