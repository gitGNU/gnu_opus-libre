%-- Trio -- piano.ly ----------------------------------------------%
% (c) 2003-2011 Valentin Villenave <valentin@villenave.net>

\language "italiano"

PianoMd = \relative do' {
  r4-\dyn "ff_(décidé)" \ottava #1
  \pl {
    <sol' dod fad>2_\sfz ~ <sol dod fad>8 <dob re mi sib'!>_>
  } {
    <sib' mi lab do!>2~ <sib mi lab do>8 <reb fa sol lab!>^>
  }
  r4
  \pl {<lad, red fad>8_>_. r r2} <do' re la' mi'>2.^> |
  \ottava #0
  R1*3 R2*7 R1*2 R2 R1*2 R2*4
  r2 r4 r8. dod,32( fa) |
  re2.-- r8. dod32( fa) |
  \t {re4--( dod-- fa4*3/4--) \slashStem \graceNotes \lightBeams {dod32( fa)}}
  \t {re4--( dod-- fa4*3/4--) \slashStem \graceNotes \lightBeams {dod32( fa)}} |
  re2.--_\dyncresc "(poco a poco più intenso ma senza cresc.)" r8. dod32( fa) |
  \t {re4--( dod-- fa4*3/4--) \slashStem \graceNotes \lightBeams {dod32( fa)}}
  \t {re4--( dod-- fa4*3/4--) \slashStem \graceNotes \lightBeams {dod32( fa)}}
  re?2..->--_\! r32 fa,( dod' fa) |
  re4..-- dod32( fa) |
  re8( dod\< \t {dod' fa, fa')} |
  R1*2\! R2
  r2 r4 r8. re,32( fad) |
  dod1~ dod4.. re32( fad) |
  dod2.. r8 |
  dod2~ \t {dod4( re fad4*3/4) \slashStem \graceNotes \lightBeams {re32( fad)}}
  dod1~ dod~ dod2 |
  \pl {<la, re sol>2--_( <la re sol>--)}
  {r8 dod'~ dod2.} |

  %%% Tempo giusto %%%
  <si mi sold si>2.\arpeggio -\dyn "f_dolce espr."
  <sib sib'>4 <sol sol'> |
  \t {r <si mi sold si> <sib sib'>} <sol sol'>-- <fad fad'>-- |
  r8 <si si'>4.~ \t {<si si'>4 <sib sib'> <sol sol'>} |
  \t {<fad fad'>8 si dod} \t {si fad' \ottava #1 dod'}
  si16 fad' dod' fad, si, dod fad, dod |
  \ottava #0
  \t {<fad, red'>8 la si} \t {fad' red si'}
  la16 dod mid dod la red, si fad |
  <re re'> sol si dod re sol si dod
  \t {re8 la fa} \t {si, fad red} |
  \t {<re re'> fad si} re16 fad lad do
  \t {sol'!8 do, fad,} lad16 re, fad fad, |
  \slashStem \graceNotes \lightBeams {
  si,32\laissezVibrer mi sold si mi sold si si} si'2.-.--\laissezVibrer |
  R2*3
  r4 \stemUp sol,,! <si, red fa!>8 \mg do \md \stemNeutral <sold si re mi!>4 |
  <si dod mi sol lad> <lad'' sold'>->--(_\ff <la sol'>->-- <fad mi'>->--) |
  <lad sold'>4.->--( <la sol'>8) \t {<fad mi'>4->--( <fa mib'>-- <la sol'>--)} |
  <mi re'>->-- <lad sold'>8.->-- <la sol'>16->--~
  <la sol'>8 <fad mi'>->--~ <fad mi'>16 <fa mib'>8.->-- |
  <si, do mi sold si>1(_\sfz R1*5/4) |

  %%% Calme et étrange %%%
  R1*2 \clef bass
  fa,8(^\dyn "pp_sinueux (sans relâcher les touches)"
  fad la lad dod re4.) |
  fa,8( fad la lad dod re4.) |
  fa,8-"simile" fad la lad dod re4. |
  \bracketDown "m.s." fa,8 \bracketUp "m.d."
  fad la lad dod re4. |
  fa,8-"simile" fad la lad dod re4. |
  fa,8 fad la lad dod re4. |
  mi,8 fad la lad dod re4. |
  mi,8 fad la lad dod re4. |
  mi,8 fad la sib re red4. |
  mi,8 fad la sib re red4. |
  mi,8( fad la sib re red4) mi,8( |
  fad la sib re4) mi,8( fa la |
  si4)\dyncresc "poco a poco cresc." \clef treble
  re?8 mib fa la4 re,8 |
  mib8 si'4 \t {fa16 re' fa} <fa la>8( <re dod'>4->) <fa la>8( |
  <re dod'>4->) <fa la>8( <re dod'>)->~
  <re dod'>8. <si re mib fa la>16->~ <si re mib fa la>4 |

  %%% Risoluto %%
  <lad' mi' sold'>4->-- -\dyn "f_ample"
}

PianoMg = \relative do {
  \clef bass
  <do,, do'>4~ \hideNote <do do'>1*3/4 s1
  R1*3 R2*7 R1*2 R2 R1*2 R2*4 \clef treble
  r2 <la''' sol' la>(--~ -\dyn "pp_(tre_corde)" |
  <la sol' la> q--~ q q--) |
  <sib re sol la>2(-- q--~ q <sib mib sol la>--) |
  <si red fad la>2*1/2(-- s4\< q2--) |
  <do mib solb si>--(\mf <do mi sol si>4-- <dod mid sold si>--) |
  R1*2 R2
  r2 mi2--(-\dyn "pp_(una_corda)" |
  <si la'>--) <si la'>~ q |
  <sol si lad'>--( q--~ q q--) |
  \clef bass
  <mib la re>--( q--~ q q--)~ q |
  mib <sib mib> |

  %%% Tempo giusto %%%
  <\whiteNote fa, fa'>4. do''8 \t {fa, do' la'~} |
  la mib' \t {fa, la do,} |
  fa,4-- fa,--\laissezVibrer \t {fa''8 do' mib~} \t {mib la, do,} |
  \t {fa, do' la'} \t {fa do' mib} sol-. mib-. la,-. do,-. |
  fa,?16 do' sol' fa do' sol' do, fa \t {sol8 do, fa,} \t {sol do, fa} |
  fa,16 do' la' fa do' la' mib sol \t {la8 do, fa,} \t {la mib do} |
  \t {fa, do' sol'} \t {fa do' la'} mib16 sol do, fa, fa sol mib do |
  fa, mi' do lab' \t {fa8 do' lab} solb'16 do, mi lab, \t {fa8 mi do} |
  \slashStem \graceNote <fa,, fa'>4 <fa fa'>2.\laissezVibrer |
  R2*3
  r4 \stemDown \md <sold'' si re>\f fad8 \mg <si, reb fa> \stemNeutral <do mib>4 |
  \t {fa,16->_\f do' sol'} \t {dod, fad sold} fa,8-> \t {do'16 fa la}
  mi' lad, dod fad, lad mi sold dod, |
  \t {fa,-> do' sol'} \t {dod, fad lad} fa,8-> \t {lad'16 dod mi}
  sold8--\cresc <fad, lad mi'>-- <red fad dod'>-- <dod mi lad>-- |
  \t {fa,16->\ff do' la'} \t {fad lad dod} fa,,8.-> do''16(_\<
  fad, dod) mid'(-> lad, fad) la'(-> mi lad,) |
  <fa,, fa'>4--(_\dyn "p_sub." <fa fa'>2--) <fa fa'>4--( |
  <fa fa'>2--) <fa fa'>4--( <fa fa'>2--) |

  %%% Calme et étrange %%%
  \hairpinTextUp "en s'estompant"
  <fa fa'>4--\> <fa fa'>2.-- |
  <fa fa'>4-- <fa fa'>2.--\! |
  \pl {fa1_\ppp fa} {fa'4-- fa2.-- fa4-- fa2.--} |
  <fa, fa'>1--~_"(s'élevant)" <fa fa'> R1*4
  sol1~_\dyn "ppp_profond" sol\laissezVibrer R1*2
  <reb' lab' fa'>2\laissezVibrer fa'8 sol lad si |
  re4 fa,8 sol si re red4 |
  <reb,, lab' fa'>8 sol' si re~
  <fa, red'>--( <sol si>--) <reb si'>--( <fa sol>--) |

  %%% Risoluto %%%
  <do,, do'>4
}
