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
  dod2--~ \t {dod4( re fad4*3/4) \slashStem \graceNotes \lightBeams {re32( fad)}}
  dod1~ dod~ dod2 |
  \pl {<la, re sol>2--_( <la re sol>--)}
  {r8 dod'~ dod2.} |

  %%% Tempo giusto %%%
  <si mi sold si>2.(\arpeggio -\dyn "f_dolce espr."
  <sib sib'>4 <sol sol'>) |
  \t {r <si mi sold si>( <sib sib'>} <sol sol'>-- <fad fad'>--) |
  r8 <si si'>4.(~ \t {<si si'>4 <sib sib'> <sol sol'>} |
  \t {<fad fad'>8) si( dod} \t {si fad' \ottava #1 dod'}
  si16 fad' dod' fad, si, dod fad, dod) |
  \ottava #0
  \t {<fad, red'>8( la si} \t {fad' red si'}
  la16 dod mid dod la red, si fad) |
  <re re'>( sol si dod re sol si dod)
  \t {re8( la fa} \t {si, fad red)} |
  \t {<re re'>( fad si} re16 fad lad do
  \t {sol'!8) do, fad,} lad16 re, fad fad, |
  \slashStem \graceNotes \lightBeams {
  si,32(\laissezVibrer mi sold si mi sold si si} si'2.)-.--\laissezVibrer |
  R2*3
  r4 \stemUp sol,,! <si, red fa!>8 \mg do \md \stemNeutral <sold si re mi!>4-- |
  <si dod mi sol lad>-- <lad'' sold'>->--(_\ff <la sol'>->-- <fad mi'>->--) |
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
  si4)-\dyncresc "poco a poco cresc." \clef treble
  re?8( mib fa la4) re,8( |
  mib8 si'4) \t {fa16( re' fa)} <fa la>8( <re dod'>4->) <fa la>8( |
  <re dod'>4->) <fa la>8( <re dod'>)->~
  <re dod'>8. <si re mib fa la>16->~ <si re mib fa la>4 |

  %%% Risoluto %%
  <lad' mi' sold>4->--(-\dyn "f_ample" <fad, dod' lad'?>->--)
  <lad' mi' sold>->--( <fad, dod' lad'>->--) |
  <re' lad' fa'>( <fad, re' sold>) <re' lad' fa'>( <fad, re' sold>) |
  <fa' do' fa>( <sib, fa' do'>) <fa' do' fa> <sib, fa' do'> |
  <fa' do' fa> <sib, fa' do'> <fa' re' sol> <sib, sol' do> |
  <lad' mi' sold> <fad, dod' lad'> <lad' mi' sold> <fad, dod' lad'> |
  <fa' do' lab'> <sib, re sib'> <fa' do' lab'> <sib, re sib'> |
  <fad' do' lab'> <fa, sib mib> <fad' do' lab'> <fa, sib mib> |
  <fad' do' lab'> <fa, sib mib> <fa' re' sol> <sib, sol' do> |
  \accentedNote <sold'' lad, mi'> <fad,, dod' lad'>
  \accentedNote <sol'' lad, re> <fad,, dod' lad'> |
  \accentedNote <mi'' re, sol sib> <la,, dod re sol> <re sol sib> <la dod re sol> |
  <sid, fad' lad> \accentedNote <mi'' mi, dod'>\cresc
  \accentedNote <red red, fad sid>
  \accentedNote <fad sol, re'>
  \accentedNote <dod dod, fad> <red,, lad' fad'> <dod' fad dod'> <red, lad' fad'>
  <dod' fad dod'>-> <red la' fad'>-> |

  %%% Presto %%%
  <sol sol'>2\sfz~ <sol sol'> |
  r4 <sol, re'>8-.-> r |
  r4 <sol si re>8-.-> r |
  r4 <sol do mib>8-.-> r |
  r4 <sol? mib'>8-. dod16( fa) |
  re4.\f dod16( fa) re4. dod16( fa) |
  re8. fa16( <dod dod'>8.) <fa fa'>16( |
  re'4--) re,-- re,-- r8 dod''16(_\dyn "p_leggiero" fa) |
  re8-. dod-. <fa, fa'>-. re'-. |
  dod-. <fa, fa'>-. re'-. dod-. |
  <fa, fa'>-. re'-. dod <la fa'> |
  re dod \ottava #1 <la la'> re |
  <la fa'> re dod <la la'> |
  fa' <si, si'>-> fa' <dod dod'>-> |
  la' <re, re'>-> la' <fa fa'> |
  \ottava #2
  <la la'>->\ff q q q |
  q q q q q q q q |
  q q q q q q q q |
  q q q q q q q q |
  %% Originally the a sharp was only on the last
  %% eighth note. Looks more "planned" with two instead.
  q q <lad lad'> <lad lad'> |
  <si si'> \ottava #0 r r4 R2*5
  \t {r8 si,,( si')} \t {r si( si,)} |
  <lad lad'>\noBeam <si si'>\noBeam <sid sid'> |

  %%% Plus large %%%
  <dod fad lad dod>2(\arpeggio <do do'>4 <la la'>) |
  \t {r <dod fad lad dod>( <do do'>} \t {<la la'>2) <do re fad la do>4} |
  <sold dod mid sold>2( <sol sol'>4 <mi mi'>) |
  \t {r <sold sold'>( <sol sol'>} <mi mi'> <mib mib'>) |
  \t {<sold dod mid sold>( <sol sol'> <mi mi'>)}
  \t {<mib mib'>( <si si'> <sol sol'>)} |
  r4 \ottava #1 \pl <sol' re' la'>2.->\laissezVibrer _\dyn "(sans_dureté)"
  <mi'' fa lab do?>->\laissezVibrer | \ottava #0

  %%% Tempo primo %%%
  r2 r4 r8. re,32( fad) |
  \pl {<sib,, re>1-\dyn "pp_très clair" <sib re>2
  r4 <sib re>2--( <mi, sib' re>-- <mi sib' re>--) s4}
  { la'2( sol8 la4.)~ la4 \t {re8( fad sol,)}
  la2 re4--~ re8 fad--~ \t {fad( do' sol,} la2)~ \oneVoice la4}
  r4 r r8. re32( fad) |
  \pl fad,1-- -\dyn "p_toujours très clair"
  {dod'2( mi4 fa)}
  r \pl {s4 <sol, la>2-- <do, mib sol la>-- <si mi la>--}
  {dod'4( mi fa~ \t {fa mi do} \t {dod mi fa)}}
  la2. r4 |
  r4 \ottava #1 \pl {<sol, dod fad>2.~<sol dod fad>1\laissezVibrer}
  {<sib' mi lab do!>2.~ <sib mi lab do>1\laissezVibrer} \ottava #0
  R1*2 <fa,, la si re mi>2--\pp( <sol sib re mi>4-- <sold si re mi>--) |
  R1 \clef bass
  \pl <do,, sol'>1--\pp <mi' lab>-- |
  \pl {s8 \hideNote <do, sol'>1*7/8~ <do sol'>1}
  {<mi' lab>--~ <mi lab>\fermata}
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
  mib--( <sib mib>--) |

  %%% Tempo giusto %%%
  <\whiteNote fa, fa'>4. do''8 \t {fa,( do' la'~} |
  la mib') \t {fa,( la do,)} |
  fa,4-- fa,--\laissezVibrer \t {fa''8( do' mib~} \t {mib la, do,)} |
  \t {fa,( do' la'} \t {fa do' mib)} sol-.( mib-. la,-. do,-.) |
  fa,?16( do' sol' fa do' sol' do, fa \t {sol8 do, fa,} \t {sol do, fa)} |
  fa,16( do' la' fa do' la' mib sol) \t {la8( do, fa,} \t {la mib do)} |
  \t {fa,( do' sol'} \t {fa do' la'} mib16 sol do, fa, fa sol mib do) |
  fa,( mi' do lab' \t {fa8 do' lab} solb'16 do, mi lab, \t {fa8 mi do)} |
  \slashStem \graceNote <fa,, fa'>4 <fa fa'>2.\laissezVibrer |
  R2*3
  r4 \stemDown \md <sold'' si re>\f fad8 \mg <si, reb fa> \stemNeutral <do mib>4 |
  \t {fa,16->_\f( do' sol'} \t {dod, fad sold)} fa,8-> \t {do'16( fa la}
  mi') lad, dod fad, lad mi sold dod, |
  \t {fa,->( do' sol'} \t {dod, fad lad)} fa,8-> \t {lad'16( dod mi}
  sold8)--\cresc <fad, lad mi'>-- <red fad dod'>-- <dod mi lad>-- |
  \t {fa,16(->\ff do' la'} \t {fad lad dod)} fa,,8.-> do''16(_\<
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
  <reb' lab' fa'>2\laissezVibrer fa'8( sol lad si |
  re4) fa,8( sol si re red4) |
  <reb,, lab' fa'>8( sol' si re)
  <fa, red'>--( <sol si>--) <reb si'>--( <fa sol>--) |

  %%% Risoluto %%%
  <do,, do'>4->--( <mi'' sib' re>)
  <do, sol' mi'>->--( <mi' sib' re>)->-- |
  <do, sol' mi'>( <mi' sib' re>)
  <do, sol' mi'>( <mi' sib' re>) |
  <do, la' mib'>( <mib'? sol reb'>)
  <do, la' mib'> <mib' sol reb'> |
  <do, la' mib'> <mib' sol reb'>
  <do, la' re> <fad' la mi'> |
  <do, sol' mi'> <mi' sib' re>
  <do, sol' mi'> <mi' sib' re> |
  <do, sol' mi'> <sol'' re' fad>
  <do,, sol' mi'> <sol'' re' fad> |
  <do,, la' mib'> <mib' sol reb'>
  <do, la' mib'> <mib' sol reb'> |
  <do, la' mib'> <mib' sol reb'>
  <do, la' re> <fad' la mi'> |
  <do, sol' mi'> <mi' sib' re>
  <do, sol' mi'> <mi' sib' re> |
  <do, sol' mi'> <mi' fad si red>
  <do, sol' mi'> <mi' fad si red> |
  <dod, dod'> <dod' sold' red'>
  <dod, dod'> <dod' sold' red'> |
  <dod,, dod'> <sold'' mid' si'>
  <dod,, dod'> <sold'' mid' si'> |
  <dod,, dod'> <sold'' mid' si'> |

  %%% Presto %%%
  <sol, sol'>2~_\markup { \concat {( \number 8 vb)}} <sol sol'> |
  \clef treble r4 \ottava #1 <si'''' fa' la dod>8-.-> \mf_"(sopra)" r |
  r4 <lad fad' dod'>8-.-> r |
  r4 <la fa' dod'>8-.-> r |
  r4 <do! mi sold dod>8-.-> \ottava #0 r | \clef bass
  r4 <sol,,,, sol'>4--~ <sol sol'> <sol sol'>--~ |
  <sol sol'>2~ <sol sol'>4.. lab32( mib') |
  <sol, sol'>2 |
  <sol sol'>4--( <mi mi'>-- <mib mib'>--) <sol sol'>--( |
  <mi mi'>-- <mib mib'>--) <sol sol'>--( <mi mi'>--) |
  <sol sol'>-- <sol sol'>--~ <sol sol'> <sol sol'> |
  <sold sold'>2 <la la'>~ q~ q \clef treble
  <lab''' sib mib>2--_\mf~ <lab sib mib>8
  <lab si do mi>4.--~ <lab si do mi>4
  %% The handwritten score shows a b natural here, but it looks odd.
  %% I guess this doesn't really make much of a difference.
  <lab sib reb fa>4--~ | <lab sib reb fa>4.
  \pl {s8 mib4-- do-- si8 r}
  {\oneVoice <sol' sib re fad>8~ \voiceOne <sol sib re fad>2
  <mib sol sib>2*1/2}
  \stemDown \t {si''8_(\noBeam_"(sopra)"-\dyn "pp_sub." \stemUp si si,)} |
  \stemDown \t {si_(\noBeam \stemUp si si')}
  \stemDown \t {si_(\noBeam \stemUp si si,)} |
  \stemDown \t {si_(\noBeam \stemUp si si')}
  \stemDown \t {si_(\noBeam \stemUp si si,)} |
  \stemDown \t {si_(\noBeam \stemUp si si')}
  \stemDown \t {si_(\noBeam \stemUp si si,)} |
  \stemDown \t {si_(\noBeam \stemUp si si')}
  \stemDown \t {si_(\noBeam \stemUp si si,)} |
  \stemDown \t {si_(\noBeam \stemUp si si')}
  \stemDown \t {si_(\noBeam \stemUp si si,)} |
  \stemNeutral sold4--\cresc sol-- \clef bass
  <mi, mi'>8.--( <mib mib'>--) |

  %%% Plus large %%%
  \t {re,8(\f la'! fad'} \t {re la'! do!)}
  mi--( la,-- mi-- la,--) |
  re,4--( re,--) \t {la''8( fad' la} \t {do? mi la,)} |
  \t {re,,( la' mi'?} \t {re fad la)} do?( la re, la) |
  re,( la' re fad) \t {re( la' do)} \t {la( do mi)} |
  sol!16( mi do la do la fad mi
  \t {la8 fad do} <re, dod'>-- la'--) |
  \pl <do,, do'>4*4--\laissezVibrer do''--\laissezVibrer |

  %%% Tempo primo %%%
  R1*2 R2 R2. R1*2
  <re la'>1-- -\dyn "p_toujours très clair" R1
  r2 r4 \longHairpin mi\>( mib2.)\! r4 |
  <do,, do'>4*4--~-\dyn "ff_sans dureté"
  <do do'>1*1/2 s2-\dyn "(vibrato de pédale)" |
  R1*4 s1_"una corda" \md \stemDown <do' sol'>1_( \mg
  \stemNeutral do,4*4)\fermata_\ppp
}
