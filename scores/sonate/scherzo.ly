%-- Piano Sonata -- scherzo.ly -------------------------------------%
% (c) 2009-2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"


% Code duplication. That's right, baby.
ter = {
  \set Score.baseMoment = #(ly:make-moment 3 16)
  \set Score.beatStructure = #'(2 2 2 2)
}

off = {
  \set Score.baseMoment = #(ly:make-moment 3 2)
  \set Score.beatStructure = #'(1)
}

DeuxPianoMd =
\relative do' {
  \ottava #1
  \slurDashed
  s64
  do'''16([-\dyn "mf,_non legato (quasi staccato)"
  la do si sold])
  si[( sold si sib sol])
  la[( fad fa lab])
  sol[( mi mib solb])
  fa[( reb do]) mi[( red si16*3/4]) |
  \ottava #0
  do16[(_"loco" la do si sold])
  sib[^"simile" sol la fad]
  sold[ fa mi] sol[ fad mib]
  fad[ re fa reb]
  mi[ do mi red si] |
  do[ la do] si[ sold si]
  sol[\dim sib la fad]
  fa[ lab sol mi]
  red[-- fad re-- fa re]
  dod[-- mi do-- red si] |

  do(\mp la do si)-. sold-. la-.
  sib(\< reb mib fab)-.--\! mib-. reb-.
  do( la do si)-. sold-. la-.
  dod(\< sib mi fa)-.--\! re-. reb-. |
  do(^\> si) la-. do-. si^\! fad re' do
  lab'(^\> sol) fa-. lab-. sol^\! sib, dod sol
  mi'(^\> red) dod-. mi-. mib(^\! re) dod si |
  do lab do si sol lab si mi\< red lab' sol do
  re(-\dyn "poco_f" dod) sib re
  dod la fa fad sib(\> la) fa reb |
  do[-\dyn "p_articolato ad lib" la do]
  si[ sol lab sib] dod[\cresc mi dod] re[ fad
  fa mib] si'[ sold sib] la[ fad sol mib'] fa[ re mi] |
  do'->\mf do-> do-> la, sib' \ottava #1 si' do'-> do->
  do-> do-> do-> do-> do,-. do-. do-. do-.
  do-. \ottava #0 do,-"loco" do do do do, do do |

  do,->[\! do r do] do^"netto" do do do do_ "(senza dim.)" do do do
  do do do do do do do do do do do do |
  si''8-.-- -\dyn "p_sempre"
  r do,,16 sold''-.-- r8 fa16-. la-. do,, do
  do do do8 reb''-.-> do,,16 do do sib''-. r do,, |
  do do do8 mi'16_(_"simile" sol') r do,,, do do r8
  lab'''16 do,,, do do do\< si''' do,,, do
  \ottava #1 re'''(\fp do') \ottava #0 do,,,,-"loco" do |
  r8. la'''16(_\dyn "pp_leggiero" fa lab
  mib, sol' mi sib,8-.) r16
  do, do do do do do do do do do do do |
  s1.*2
  <do do'>16->-\dyn "fpp" <do la'> <do do'> <do si'> sold' si
  sib sol do, do do do <do reb'>-> <do do'> <do sib'> <do reb'>
  do' si la do si sold^\< do mi |
  fa([^\! reb fa] mi)[ si mi mib]
  si'([\cresc sold si] sib)[ sol
  la fa] si[ sold re'] \ottava #1 fa[
  reb fa solb] la[ si sib,] |

  do'[(\f la do si sold])
  si[( sold si sib sol])
  la[( fad fa lab])
  sol[( mi mib solb])
  fa[\> re reb] mi[ red si] |
  sib'[\mf sib'-. si,] do,[_"spiritoso" la' do]
  si[ sol, la' dod]
  re[ sib, re solb]
  sib[\> la lab sol fa]
  solb[\> fa mi mib reb] |
  do'[-\dyn "f_sub." la do si sold]
  sib[ sol la fa]
  solb[ mib solb] fa[ re reb] \ottava #0
  do[\dim la si sold]\!
  fad[ la, do si? mib,] |

  do(\mp ^"(sempre non legato)"
  la do si)-. sold-. la-. sib re mi fa mi re
  reb( sib reb do) la mi' sol la sib la sol fa |
  fad[( re fad mid]) dod[ la' sib] dod[ re fa] do[( la
  si sold]) sol[ sib mib] re[ si' sib] fad[ mi sol reb] |
  do'[(\cresc la do] si[) sold sol sib]
  fad[ do'(-> la] do[ si)
  sol sib] lab[ do(-> la] do[ si) sold
  do]->( la[ si sold]) |
  \ottava #1 do'[-\dyn "ff_quasi martelato" la do si sold]
  si[ sold si sib sol]
  la[ fad fa lab]
  fad[ re dod mi]
  \ottava #0 do[-"loco" -\dyn "meno_f" la do] si[ sol sib] |
  fad[ re fad] fa[ dod mi]
  do[\dim la si sold]
  sol[ sib fad la]
  red,[ fad red re fa]
  dod[ mi dod do red]-.\p |
}

DeuxPianoMg =
\relative do' {
  \clef bass s64 \clef treble
  \slurDashed
  si''16[( sold si sib sol])
  do[( la do si la])
  sold[( mid fad la])
  fad[( red mi sol])
  mi[( do reb]) fa[( re lad16*3/4]) |
  si16[( sold si do sib])
  la[_"simile" fad sib sol]
  la[ mi fa] fad[ sol re]
  mid[ dod fad re]
  red[ si red mi do] \clef bass |
  si[ sold si] do[ la sol]
  fad[ la sib sol]
  mi[ sol lab fa]
  re[ fa mib solb mib]
  do[ mib reb fa, si,] |

  mi,--( red' sol do) mi dod
  fa,--( la re solb) si, red,
  mi,--( si' sol') sib( re fa)
  mib,-- do' lab re( la fa) |
  mi, re'_\< sold dod mi_\> red dod lad_\!
  fad_\< do' re sol lab_\> fa re fad,_\!
  do_\< fa sib red mi_\> dod sold fa_\! |
  mi, red' sol do mi si sol do mi sol lab si
  fad, re' la' dod re sib fad fa dod sib la re, |
  mi,[-- red' sol] do[ mi dod si] sib[ fad re] reb[ do
  fa,?-- fa'] sib[ re fad,] mib'[ sol lab la,] fad'[ sold, si] |
  fad,-.( sol'-. sold'-.) r r8 r16 si,,(-.^\< la'-. fad'-.
  \clef treble fa'-. mib'-.)^\f r
  \clef bass reb,,(-.^\< do'-.
  \clef treble sib'-. sol'-.)^\dyn "più_f" r
  \clef bass solb,,,(\mp\> mib' reb'8) r |

  \ottava #-1 do,,,->^\sfp ( \ottava #0 do'''-.) r4 r1 |
  do16 do do do re, do' do do do do mi,,8-.--
  sol16-.[ mib-. r do''] do do r8 fad,,16 do'' do8 |
  do,,16(-. reb'-. sib-. do') do do do8 mib,,-.-- do''16 do
  do fa,,, r8 la16 do'' fad,,,8-. re'16( do,) r8
  \ter do'''16[ do do do do do] do[ do do do do do]
  \off r8 reb,,16( do, re'' fad,-.) r si,8-. r8. |
  \stemUp <mib' do'>16-- \md <do' la'> \mg do \md <do fad>\<
  <do sib'>\! \mg <fa, do'> \md <do' lab'> \mg <mi, do'>--
  \md <do' re>\< <do sol'> <do si'>\! \mg <reb, do'>
  \md <do' fad> \mg <mib, do'>-- \md do' \mg <la do>
  \md <do lab'>\< <do reb'>\! \mg <sib, do'> \md <do' re>
  <do mi>^\sfz \mg <si do> <sol do> <fa do'> |
  \md <do' fad> do \mg <la do> \md \bracketDown "m.s." <do mib'>^-
  \mg <mi, do'> \md <do' si'> <do re'>^- \mg <sib do>
  \stemDown <lab do> \md <do reb'> \mg <fa, do'> \md <do' sol'>
  \mg \bracketUp "m.d." <do la,>
  \md <do mib>\> <do fad> <do re>\!
  \stemUp \mg <sol do> \md <do mi>\< <do lab'> <do sib'>\!
  \stemDown \mg <fa, do'> \md <do' reb>
  do \mg \bracketUp "m.d." <do si,> \stemNeutral
  r8. r16 la_"leggiero assai" do si sold si sol sib fad
  r4 reb'16 do sib si do do si do \clef treble |
  fad,[ do' fad,] do'[ do do do'] do[ la do] si[ fad,
  fad fad] \clef bass do,[ do'' fad] do,,[ do
  fad' fa'] \clef treble mib' do' do |

  si[( sold si do la])
  sib[( sol sib si la])
  sold[( mid fad la])
  fad[( red mi sol])
  mi[ dod re] fa[ mi reb] |
  do[ la do] si[ sold si]
  re[ dod si re]
  dod[ la dod fa]
  si[ sold si sib sol]
  do[ la do si sold] |
  si[ sold si sib sol]
  la[ sold sib mi,]
  fa[ mi mib] re[ reb do]
  si[ sold do la]
  fa?[ re dod \clef bass sib re,] |

  lab,-- mi' si' re fa sib,
  sol-- mib' fad do' reb, fa,
  lab,-- mib' la dod fad mib
  re sib' dob, sib re red |
  mi,[-- si' do sol'] red[ sol, mi']
  lab[ si do,] fa,[-- re'
  do' mib,] re,[-- si' fad']
  sol[ \clef treble mib' si']
  sol[ mib \clef bass fad, re] |
  mi,[ red' fa] re'[ fad dod, si'] mi[ sol, red,] re'[ sold
  fad, fa'] dod[ la' sold] si[ do
  \clef treble la' sib] re,[ do' sol'?] |
  si[ sold si sib sol!]
  do[ la do si la]
  sold[ mid fad la]
  sol[ fa mi mib]
  reb[ sib si] do[ lab sol] |
  fa[ reb fa] fad[ re red]
  \clef bass si[ sib do la]
  sold[ la fa fad]
  re?[ si re red fad,]
  do'?[ la fa si, mi,]-. |
}
