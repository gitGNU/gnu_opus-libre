%-- In einem unbestimmten Licht -- piano.ly -----------------------%
% (c) 2001 - 2011 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

PianoMd =
\relative do' {
  r4 R1*2 s2 r R2
  \pl {s2 do'4( re)}
  {<sol, sol'>2~_\dyn "mp_blanc et statique, sans nuance" sol'}
  <lab, sol'>2--\arpeggio
  si16( mi fad sib) \tt {mib,( re reb mi, lab)} |
  \pl {\t {sol4--( do-- re--)} lab2 s1}
  {
    sol'2 \t {sol4( do) re8 lab--~} \oneVoice lab4~
    \t {lab8 <mi si'?>(^"avec aisance" <fad mi'>}
    \t {<fa sib> <sib, mib> <mib, re'>}
    \t {<do fa> <la' dod> <lab si>)}
  } <sol sol'>2*1/16 s2*15/16 \acciaccatura {fa'16[ sol]}
  fa8 mi16( la,) \t {fa'8( <sib, sib'> <do do'>)} |
  \pl {
    solb8( sib) s2 \t {r4 reb,(-- mib'--)}
    s4 reb,8( mi) s4
  } {
    solb'4-- \t {<la, la'>8(\< <re re'> <mi mi'>}
    <lab, lab'>4) <reb reb'>--~\! <reb reb'>
    <sib re sib'>--(\> <mib, mib'>-- <sib sol'>--)\!
  } \clef bass s2 r \clef treble
  \t {do8(-\dyn "sempre_p" sol' si} \t {fad' re sol,)} |
  mi'( si' re) la'( dod, fad,) | sold( red) |
  R1*15/16
  r2 s2
  R2 r4 \stemUp <sol, sol'>--~ \stemNeutral \ttt {sol16(\> do re fa do' re)\!} |
  \pl {\repeat tremolo 8 {sol,32 sol,~\ppp} <sol sol'>4\laissezVibrer}
  {\repeat tremolo 8 {sol''32 lab,~} <lab sol'>4\laissezVibrer}
  R1*5/8*2 R1*3 R1*7/4*3 R1*5 R1*7/4
  <la re? mib la>1\arpeggio\laissezVibrer\fermata _\dyn "pp_(con Ped.)" r2 r4 |
  R1*7/4
  <si,, dod lad'>1--~-\dyn "mf_(non arp.)" <si dod lad'>2. |

  %%% stringendo %%%
  R2.*3 R2 R2.
  \clef bass
  mi,,4--( sold-- do--) re2-- si4--( dod--) sib--( do!--) |
  mi,2--( sold4--) do--( re--) si!--( dod--) la--( si--) fad2-- |
  mi4--( sold-- do--) re2-- si4--( dod-- sib-- fa!--) |
  mi2--( sold4--) do--( re--) si!--( dod--) la--( si--) lab--( sib--) |
  solb2--( reb'4--) |
  mi( sold) si!( sib) mib2-- la,4( fa) |
  mi!( sold) si!2--( sib4) mib( la,) fa2-- |
  mi4( sol!) si!( dod sold) |
  mi( sol!) si( dod fad,) |
  R2
  mi4-\dyn "mp_(souple)" fad2\fermata
  mi4--(\< sol--) lad2\!\fermata |
  mi4--(\< sol-- <fa do'>--) <si sold'>2\!\fermata |
  mib,4--(\mf\< la-- <solb reb'>-- \clef treble <sib sol'>-- <lab fa'>--) |
  <re la'>4.--\arpeggio |

  %%% Tempo primo %%%
  \pl <fa, sib fa' la>2.->--\f\arpeggio {r4 \t {r mib'--( re'--)}}
  \ottava #1
  \mg dod'16-> \md dod dod' dod,
  \mg do-> \md do do' do,16*1/2 \mg
  \lightBeams \graceNotes \t {\stemUp lab,32*1/2[( sol' \md \stemDown solb]} |
  fa'16->) \mg \stemUp fa \md \stemDown fa' fa,
  \mg\stemUp  mi-> \md \stemDown mi mi' \mg
  \stemUp \lightBeams \graceNotes \tt {sib,,32*1/2[_( mi \md \stemDown la re sol]} \stemNeutral |
  \mg \ottava #1 si16->) \md si si' si,
  \mg sib-> \md sib sib' sib, |
  \mg \ottava #0 <si, sol'>->( \md sol' sol')
  \mg <lad,, fad'>->( \md fad' fad')
  \mg <sol,, mib'>->( \md mib' mib')
  \mg \stemUp re,-> \stemDown \md re re'
  \mg \stemNeutral <mi,, do'>-> \md do'' \mg si,-> \md si'
  \mg <do,, la'>-> \md la'' \mg <dob,, lab'>-> \md lab'' |
  \ttt {sol8[\f ->( fad-> fa-> mi mib re])}
  \tt {dod16\>_"(non legato)" do si sib la}
  \tt {lab sol fad fa mi} \ottava #0
  \tt {dod do si lab sol} |
  \t {fad8\f( mi re)} re( dod) \clef bass sib[( la]) <solb lab>[( fa]) |
  \pl {fa2(\fz mi)\fermata} <sol do>1--\fermata |

  %%% Lent et blanc %%%
  R1*12 <lab, mi'>1( <si? sol'>) <fad re'>( <reb' lab'> <sib la'>) |
  <mi! sib' mib>( \clef treble <la do re fa> <si dod mi fad sold> |
  <re mi sol la si>) <fad sold si dod red>( <la si re mi sol>) |
  <sol sib do re fa?>( <lab sib reb mib solb> <do? mib fa sol sib>) |
  <fad, la si re mi>2( <lab sib reb mib fa> |
  <si dod mi fad sold> <re mi fad la si> |
  \ottava #1 <lab' sib do mib fa>1) <reb mib solb lab sib>2.-- \ottava #0
  R1 <la,, re>1--\fermata

  %%% Tempo primo %%%
  <sol' sol'>1~_"nerveux, instable"^\sfp <sol sol'>2
  si16( mi fad sib) \tt {mib,( re reb mi, lab)}
  \graceNote fad'16 <sol, do sol'>2.*11/12~_\sf
  sol'16( do re lab) |
  si(\< mi, mi' fad,) sib( fa mib sib)
  \tttt {re( mib, do fa reb' la si)} |
  \graceNote lab <sol do sol'>2.*11/12~\sf
  <sol do sol'>4*3/4 \graceNotes {fa'16*1/2 sol}
  fa8--( mi16 la,) \t {fa'8(_\< <sib, sib'> <do do'>)_\!} |
  <solb solb'>4-- <reb' reb'>~_\sfz \t {<reb reb'>8\< <re re'> <mi mi'>}
  \ottava #1 la'16->( <re, re'>-> \ottava #0 <lab lab'>-> <reb, reb'>->--~)\!
  <reb reb'>2 s4 r2 |
  \graceNote <fad, lab'>16_"(m.s.)"
  \pl {do'2*7/8 si2\fermata\laissezVibrer}
  <sol re' sol>1*15/16^"(m.d.)"-\dyn "pp_subito"
  R1*4 \clef bass <mib, sol re'>4->-\dyn "mf_sotto voce"
  <re sold dod>2.--\fermata R1*2

  %%% lent et statique %%%
  R1*7/4*2
  s2. R1*5/4 s2. R1*5/4*2

  %%% lento e simplice %%%
  R2. R1
  <mib, sib'>1( <do sol'> <re la'>2.)~ <re la'> R2.
  <mib sib'>1( <si fad'>2. <re la'>) |
  <do sol'>--~ <do sol'>2 |
  <sol' do sol'>2.--(~ <sol do sol'> |
  lab2 fa) | R1 R2 R1
  r4 <sol' si re>4._\mp( <solb sib mib>) |
  R1*2

  %%% au mouvement %%%
  \pl {
    \t {r8-\dyn "pp_legato assai" ^"(sempre con Ped.)" sol si} \t {sol si sol} \t {si sol si} \t {sol si sol}
    \t {r solb sib} \t {solb sib solb} \t {sib solb sib} \t {solb sib solb}
    \t {r sol si} \t {sol si sol} \t {si sol si} \t {sol si sol}
  }
  {
    \t {re' si re} \t {si re si} \t {re si re} \t {si re si}
    \t {mib sib mib} \t {sib mib sib} \t {mib sib mib} \t {sib mib sib}
    \t {re si re} \t {si re si} \t {re si re} \t {si re si}
  }
  \t {mi <mi, si'> <sold mi'>} \t {<mi si'> <sold mi'> <mi si'>}
  \t {<sold mi'> <mi si'> <sold mi'>} \t {<mi si'> <sold mi'> <mi si'>} |
  \t {re' <sol, si> <si re>} \t {<sol si> <si re> <sol si>}
  \t {<si re> <sol si> <si re>} \t {<sol si> <si re> <sol si>} |
  \t {mib' <solb, sib> <sib mib>} \t {<solb sib> <sib mib> <solb sib>}
  \t {<sib mib> <solb sib> <sib mib>} \t {<solb sib> <sib mib> <solb sib>} |
  \t {re' <sol, si> <si re>} \t {<sol si> <si re> <sol si>}
  \t {<si re> <sol si> <si re>} \t {<sol si> <si re> <sol si>} |
  \t {mi' <mi, si'> <sold mi'>} \t {<mi si'> <sold mi'> <mi si'>}
  \t {<sold mi'> <mi si'> <sold mi'>}
  \pl \t {mi sold \mg \stemUp red \stemNeutral} \t {\md si' mi \clef treble sold} |
  \ttt {<si re>16-\dyn "pp_ma_non_leggiero" re, <sol si> re <si' re> re,}
  \ttt {<sol si> re <si' re> re, <sol si> re}
  \ttt {<si' re> re, <sol si> re <si' re> re,} |
  \ttt {<dob' mib>\> mib, <lab dob> mib <dob' mib> mib,}
  \ttt {<lab dob> mib <dob' mib> mib, <lab dob> mib}
  \ttt {<dob' mib> mib, <lab dob> mib <dob' mib> mib,\!} |
  \ttt {<si' re> re, <sol si> re <si' re> re,}
  \ttt {<sol si> re <si' re> re, <sol si> re}
  \ttt {<si' re> re, <sol si> re <si' re> re,} |
  \ttt {<dod' mi> mi, <la dod> mi <dod' mi> mi,}
  \ttt {<la dod> mi <dod' la'>-- mi, <dod' mi> mi,}
  \ttt {<do' lab'>--\< lab <do mi?> lab <do lab'> lab} |
  \ttt {<sol' si re>\mp( re <sol, si re> re) <sol' si re>( re}
  \ttt {<sol, si re> re) <sol' si re>( re <sol, si re> re)}
  \ttt {<sol' si re>( re <sol, si re> re) <solb' mib'>( <mib sib'>} |
  \ttt {<mib, solb sib> sib) <solb'' mib'>( <mib sib'> <mib, solb sib> sib)}
  \ttt {<solb'' mib'>( <mib sib'> <mib, solb sib> sib) <solb'' mib'>( <mib sib'>}
  \ttt {<mib, solb sib> sib) <solb'' mib'>( <mib sib'> <mib, solb sib> sib)} |
  \ttt {<sol'' si re>( <re sol si> <sol, si re> re) <sol' si re>( <re sol si>}
  \ttt {<sol, si re> re) <sol' si re>( <re sol si> <sol, si re> re)}
  \ttt {<sol' si re>( <re sol si> <sol, si re> re) <re' sol si>( si)} |
  \ttt {<sold' si mi>(\< mi <mi, sold si> si) <sold'' si mi>( mi}
  \ttt {<mi, sold si> si) <sold'' si mi>( mi <mi, sold si> si)}
  \ttt {<si'' mi sold>( sold <mi, sold si> si) \ottava #1 <si'' sold'>( mi)} |

  %%% toujours très calme %%%
  \t {si'16*2/3-\dyn "pp_subito"( sold mi} \ottava #0 \t {si sold mi} \t {si sold mi}
  \mg \t {si sold mi} \t {si mi sold} \md \t {si mi sold)} |
  \t {do,( fa la} \t {do la fa} \t {do fa la)}
  \t {do( fa la} \ottava #1 \t {do fa la} \t {dod, fad lad)}
  \t {si16( sold mi} \ottava #0 \t {si sold mi} \t {si sold mi}
  \mg \t {si sold mi} \t {si mi sold} \md \t {si mi sold)} |
  \t {do,( fa la} \t {do fa la)} \ottava #1 \t {do( fa la} \t {dod, fad lad)} |
  \t {si( sold mi} \ottava #0 \t {si sold mi)} \t {si( sold mi} \t {si mi sold)} |
  \t {do,(\> fa la} \t {do fa la)} \ottava #1 \t {do( fa la)} \t {dod,( fad lad)} |

  %%% a tempo %%%
  <si, mi sold si>2.--\ppp~ _"(non arp.)" <si mi sold si>~ <si mi sold si>2 \ottava #0 r4 |

  %%% Più mosso %%%
  \clef bass
  mi,,,,4--(-"nerveux, sec" sold-- do-- re-- si?-- dod--) r |
  mi,--( sold-- si-- lad-- fa?--) |
  mi--( sold-- do-- re-- si?--) | dod-- r8 |
  mi,4--( sold-- si-- lad-- red--) |
  s2 <do reb la'>4-> r |
  s2. r8 <la' dod re!>-> mi-. la-. |
  s2. R2. r8 <re? fa>-> la-. mi-. |
  \clef treble \graceNote fad''16 fad,2.*11/12->--^\dyn "f_en dehors"
  r8 <re? dod'>[-> <sold si>-.] r |
  \graceNote fad'16 fad,2*7/8->-- -"simile" \clef bass
  s2. s2 s4. s2. \clef treble r8 <do' reb>-> reb,-. \mg fa,-. \md \clef bass |
  s2 s2 r4 |
  la,8^\< la' re, re' |
  mi, mi' sold, sold' fa,^\! fa' | \clef treble
  r2 r4 sol,8^\< sol' |
  do, do' re,? re'? sol, sol' la,?^\! la'? r4 |
  do,,8^\< do' re, re' fad, fad' sold, sold' si^\! <mib, re'>-> |
  \clef bass r4 mib,,-> r2 r4 |
  R1*5/4*2 R2 R1*5/8 \clef treble
  <si'' fa' do'>4.-- -\dyn "sffz" r8 r4 | R2.
  r4 <fad do' sol'>--\sf r2 <si,? fa' do'>4--\sf |
  r1 <si' fa' do'>4--\sf | r <sib fa' do'? re>--\sfz r |
  <fad' dod' fa! sol>1-- -\ff r4 | r2 r4 <si, fa' do'>2--\sfz |
  <fad' dod' fa! sol>1--\ff r4 |
  <fad  dod' fa! sol>1-- r4 |
  <fad  dod' fa! sol>1-- r4 |
  R1*5/4*2

  %%% lent et paisible %%%
  do,2--( -\dyn "p_dolce" do4--~ do do2--) |
  reb4( mib sib') |
  <mib, re'>2\pp\fermata r |
  R1. R1*5 R2
  <mi? si'? sol'>2\p | <la? mi'>4-- <re, la'>4.*2/3^( s8 sol) |
  \t {fad(\p\>^"dolce" mi re)} re( dod) sib( la) \clef bass <solb lab>( fa)
  \pl {fa2( mi)\laissezVibrer} <sol do>1--\laissezVibrer |
  \clef treble r1*3/4 s4 R1*5/4*2

  % %% très calme %%%
  <sol' sol'>1--\laissezVibrer |
  \t {r4 re8(^\dyn "pp_(espr.)"} \t {la' re,) r}
  \t {r4 re8(} \t {la' re,) r} |
  \t {r4 mib8(} \t {sib' mib,) r}
  \t {r4 mib8(} \t {sib' mib,) r} |
  \t {r4 re8(} \t {la' re,) r}
  \t {r4 re8(} \t {la' re,) r} |
  \t {r4 reb8(} \t {lab' reb,) r}
  \t {r4 reb8(} \t {lab' reb, lab)} |
  \t {r lab( reb} \t {lab' reb, lab)}
  \t {r lab( reb} \t {lab' reb,4} |
  \clef bass lab4) \t {reb,8_( lab' reb}
  \t {lab' reb, lab)} \t {reb,_( lab' reb} |
  \t {lab' reb, lab)} \t {reb,_( lab' reb}
  \t {lab' reb, lab)} \t {reb,_( lab' reb)} |
  \clef treble \t {re( la' mi} \t {<fad si> mi) r}
  \t {r4 mi8(} \t {<fad si> mi) r} |
  \t {r4 mi8(} \t {<fad si> mi) r}
  r4 \clef bass r8 do,,--(~ ^\dyn "pp_en dehors" |
  do4 fa4. sol) | \clef treble
  \t {r4 fa''8(} \t {do'[ fa,]) r}
  \t {r4 fa8(} \t {do'[ fa,]) r}
  \t {r4 fa8(} \t {do'[ fa,]) r} |
  \clef bass \t {r4 mi,,8--(~} mi4 la~
  \t {la8 si4~} \t {si mib,8)~} mib4 |
  \clef treble <reb'' solb reb'>1->--\laissezVibrer -\dyn "pp_sempre" R1
  \clef bass \ottava #-1
  r8 <fad,,, fad'>8--^\cresc~ <fad fad'>2. |
  r8 <sib sib'>--~ <sib sib'>4~ <sib sib'>1 |
  \ottava #0
  r8 <re re'>--~ <re re'>4~ <re re'>1^\! | \clef treble
  \t {do''8[(-\dyn "p_con Ped." ^"semplice" sol' si]} \t {fad'[ re sol,])}
  \t {mi'[( si' re])} \t {la'[( dod, fad,)]} \t{sold[( red) sol,--]~} sol4~ |
  sol2.~ \t {sol8 sol,(\> do} \t {sol' do mi}
  \t {sol sib do} \t {re mi fad)~} fad2.\! r4 |
  R1*3 <dod re>1-\dyn "ppp_feutré" --

  %%% très clair %%%
  R1
  <lab, mib' sib'>1-\dyn "pp_(tre corde)" ^"ten."~ <lab mib' sib'>
  <sol mi' si'>1--~ <sol mi' si'>\laissezVibrer\fermata
}

PianoMg =
\relative do {
  \clef bass
  do4~ -\dyn "p,_très clair et calme" |
  do8( si mib re la sib mi, fa) |
  \t {solb( reb' lab')~} lab2( sol4) | \tupletUp
  \t {<do,,, do'>8_(\laissezVibrer \md sol''' do}
  \tupletNeutral \t {sol' do, sol)} \mg
  \t {do,( sol' do} \t {sol' do, sol)} |
  \t {do,( sol' do} \t {sol' do, sol)} |
  \t {do,( sol' do} \t {sol' do, sol)}
  \t {do,( sol' do} \t {sol' do, sol)} |
  \t {do,( sol' do} \t {sol' do, sol)}
  \t {do,-"simile" sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol}
  \t {do, sol' do} \t {sol' sol, do,} |
  \t {do,(-- sol' do)} \t {fa,(-- do' sol')}
  \t {sol,(-- do sol')} \t {reb,_(-- lab' fa'} | \tupletUp
  \t {do' \md sol' do} \tupletNeutral \t {sol do, \mg sol)}
  \t {do,( sol' do} \t {sol' do, sol)} |
  \t {do,( sol' do} \t {sol' do, sol)}
  \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol}
  \t {do,( sol' do} \t {sol do, sol)} | \tupletUp
  \t {<do,, do'>_(\laissezVibrer \md sol'' do}
  \tupletNeutral \t {sol' do, fa,)} \mg
  \t {do'( re sol} \t {do sol re)} |
  R2 R2. R4 R1*15/16
  \t {<do,, do'>8_(\pp\< si' fad'} \t {dod' re la'}
  \md \t {sol'\mp\> do sol} \mg \t {do, sol fa)\!} |
  \t {do( sol' do} \t {sol' do, sol)} |
  \t {do,( sol' do)} \stemDown \md \t {sol' \mg do,? sol} \stemNeutral r4 |
  R2. R1*5/8*2 R1*3 R1*7/4*3 R1*5 R1*7/4 \clef treble
  <la' red mi?>1\arpeggio\laissezVibrer\fermata r2 r4 |
  R1*7/4 \clef bass
  <sol,, re'>1--~ <sol re'>2. |

  %%% stringendo %%%
  \ottava #-1
  do,,4--( -\dyn "pp_cuivré,_quasi non legato" _"(una corda, à demi)" fa-- sol--)
  reb2-- mi4--( la-- si-- mib,--) lab2-- solb4--(_\< _"(poco)" sib-- re!--)_\! |
  do,--( mi-- lab--) sib2-- sol!4--( la!--) solb--( lab--) |
  do,2--( mi4--) lab--( sib--) sol!--( la!--) fa--( sol--) re2-- |
  do4--( mi-- lab--) sib2-- sol4--( la!-- fad-- sol--) |
  do,2--( mi4--) lab--( sib--) sol--( la!--) fa--( sol--) mi--( fad--) |
  re2--(_\< sib'4--) \ottava #0
  do(_\! -\dyn "p_leggiero" mi) sol( fad) si!2-- fa!4( reb) |
  do( mi) sol2--( fad4) si( fa!) reb2-- |
  do4( mib) sol( la mi) |
  do( mib) sol( la re,!) |
  R2
  <do si'>4 <re la'>2\fermata |
  <do sol'>4--( <mib sib'>--) <fad dod'>2--\fermata |
  <do si'>4--( <lab' mib'>-- sib--) mi2--\fermata |
  <do,lab'>4--( <fa do'>-- sib-- mib-- dod--) | <fad>4.--\arpeggio

  %%% Tempo primo %%%
  <do, sol' re'>2.--\arpeggio\laissezVibrer
  \clef treble s2*3 s1*5/4
  <mib''' sib'>2-- <la, mi'>4-- <re, la'>4._( \clef bass <sol, re'>8) |
  <do, sol'>4--( <la mi'>-- <fa? do'?>-- <reb lab'>--) |
  <do sol'>1--\fermata

  %%% Lent et blanc %%%
  R1*12
  \ottava #-1 <sol red'>1(-\dyn "ppp_indistinct" <sib fad'>)
  <mid, dod'>( <do' la'?> re) |
  <fa, do'>(\< \ottava #0 <mib' mib'> <re re'> <la la'>) <mi mi'>(\pp |
  <fa fa'>) <fad fad'>(\< <do' do'> <dod dod'>)\mp <sold sold'>~ \>|
  <sold sold'>4 <sol sol'>2.~ <sol sol'>2 \ottava #-1 <si,? si'?>~ |
  <si si'>2.\! \ottava #0 sib'1(\pp <si' mi>)--\fermata

  %%% Tempo primo %%%
  \ottava #-1 do,,4--( fa-- sol--) \ottava #0 do--( |
  fa-- sol--) reb'--( sib--) |
  do,--( fa-- sol-- si--) | mi--( la-- <re, sib'>--) |
  do,( fa sol do sol' do) |
  sol( do, sol) fa( mib' lab) |
  \md <si fa' sol si>--( \mg <mib, reb' mib>-- <sol, fa'>--) |
  R1*5
  <reb lab'>4-> <mib la>2.\fermata |
  R1*2

  %%% lent et statique %%%
  R1*7/4*2
  \ottava #-1 \graceNotes {do,16*1/2[(^"leggiero" sold' si] \ottava #0 \md mi[ sib' re)]}
  \mg dod2.*18/24--\fermata _"loco"
  R1*5/4
  \ottava #-1 \graceNotes {do,,16*1/2[( sol'! si] \ottava #0 \md fa'[ si! mi])}
  \mg dod2.*18/24--\fermata _"loco"
  R1*5/4*2

  % %% lento e simplice %%%
  R2.
  <sold la'>2. _( \> fad4) |
  \ottava #-1 mib,1(\pp do re2.)~ re |
  \ottava #0 <solb' lab'>2\> _( <fa sol>4)
  \ottava #-1 mib,1(\! si2. re) do--~ do2 |
  <do do'>2.--(~ <do do'>
  <do do'>2-- <do do'>--) \ottava #0
  <sol' sol'>1--~ <sol sol'>2
  <fa fa'>1--\rfz~ <fa fa'>
  <fa fa'>--~ <fa fa'> |

  %%% au mouvement %%%
  <fa fa'>--~ <fa fa'> <fa fa'>--~ <fa fa'> |
  <fa fa'>--~ <fa fa'> <fa fa'>--~ <fa fa'>1*3/4 s4 |
  \pl {<fa fa'>2.--~ <fa fa'> <fa fa'>~ <fa fa'>4. <re re'>--}
  {
    \ttt {r8 si'''16_"ben legato" re, sol re}
    \ttt {si' re, sol re si' re,}
    \ttt {sol re si' re, sol re} |
    \ttt {r8 dob'16 mib, lab mib}
    \ttt {dob' mib, lab mib dob' mib,}
    \ttt {lab mib dob' mib, lab mib} |
    \ttt {r8 si'16 re, sol re}
    \ttt {si' re, sol re si' re,}
    \ttt {sol re si' re, sol re} |
    \t {r8 dod'16 mi, la8} r4 \t {r8 mi'?16 lab, do8}
  }

  %%% toujours très calme %%%
  <fa,,, fa'>2.--~ <fa fa'> <fa fa'>--~ <fa fa'>
  <fa fa'>2--\laissezVibrer r8 <re re'>4.->--
  <fa fa'>2.--\laissezVibrer <re re'>2->--
  <fa fa'>-- <re re'>4--( <sol sol'>--) |
  <fa fa'>2.--~ <fa fa'>~ <fa fa'>2 r4 |

  %%% Più mosso %%%
  \ottava #-1
  do4--(-\dyn "mf_cuivré" mi-- lab-- sib-- sol-- la--) r |
  do,--( mi-- sol-- fad-- sib--) |
  do,--( mi-- lab-- sib-- sol--) | la-- r8 |
  do,4--( mi-- sol-- fad-- si?--) |
  do,8_"non legato"\pp\< \md mi' \mg mib, \md sol'? |
  \mg fa,?4->\! r |
  do8\< \md do' \mg fa, \md fa' \mg sol, \md sol' |
  \mg reb,->\! r r4 |
  mib8 \md mib' \mg lab, \md lab' \mg sib, \md sib' |
  \mg do,,\< do' fa, fa' sol, sol' |
  <reb, reb'>2--\mp |
  do8 do' fa,? fa' sol, sol' |
  <reb, reb'>4.-- do?8[ do'] fa,?[ sol' sol,] |
  mib \md mib' \mg lab, \md lab' \mg sib, \md sib' |
  \mg re,, \md re' \mg sol, \md sol' |
  \mg dod, \md dod' fad, |
  \mg \ottava #0 <do, do'>\p\cresc \md do'' \mg <fa,, fa'> \md fa'' \mg <sol,, sol'> \md sol'' |
  \mg <reb,, reb'>2-- |
  <mi mi'>8 \md mi'' \mg <la,, la'> \md la'' |
  \mg <si,, si'> \md si'' \mg <mi,, mi'> \md mi'' \mg <sib,, sib'>-.\! r |
  la4-.-- r r2 re8_\< re' |
  sol, sol' do, do' reb,_\! reb' lab, lab' |
  reb,, reb' mib, mib' lab, lab' mi,_\< mi' la, la' |
  si, si' fad, fad' dod, dod' <la, fadd' sold>4->_\sfz r |
  r <fad fa'! sol>->\sfz r2 r4 |
  R1*5/4*2 R2 R1*5/8

  <sol' re' la'>4.-- r8 r4 | R2.
  r4 <re la' mi'>-- r2 <sol re' la'>4-- |
  r1 <sol, re' la'>4-- | r <lab mib' dob'>-- r |
  <do sol' re' mi>1-- r4 | r2 r4 <fad, sold dod la'>2-- |
  <do'sol' re' mi>1-- r4 |
  <do sol' re' mi>1-- r4 | \ottava #-1
  <do,sol' re' mi>1-- \ottava #0 r4 |
  R1*5/4*2

  %%% lent et paisible %%%
  do'''2( sib4~ sib lab solb |
  fa2.) | mi?2\fermata r | R2.*2
  <do,, do'>1--\laissezVibrer
  R1*4 R2
  \pl {\oneVoice do''2~ \voiceTwo do2.}
  {s2 lab'4_(-- sib-- \md \stemDown <fa reb'>--) \stemNeutral \mg}
  <do sol'>(-- <la mi'>-- <fa do'>-- <reb lab'>--) |
  <do do'>2\pp <sol sol'> |
  \tupletUp \t {<do, do'>8_(\laissezVibrer sol''' do} \tupletNeutral
  \t {sol' do, sol)} \t {do,( sol' do} \t {sol' \md do sol') \mg} |
  R1*5/4*2

  %%% très calme %%%
  \t {do,,,8(-\dyn "p,_très souple" sol' do} \t {sol' do, sol)}
  \t {do,( sol' do} \t {sol' do, sol)} |
  \t {do,( sol' do} \t {sol' do, sol)} \t {do,( sol' do} \t {sol' do, sol)} |
  \t {do,( sol' do} \t {sol' do, sol)} \t {do,( sol' do} \t {sol' do, sol)} |
  \t {do,( sol' do} \t {sol' do, sol)} \t {do,( sol' do} \t {sol' do, sol)} |
  \t {do,( sol' do} \t {sol' do, sol)} \t {do,_"simile" sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol} \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol} \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol} \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol} \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol} \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol} \t {do, sol' do} \t {sol' do, sol} |
  \pl reb,1.*1/6--\laissezVibrer \t {do'8[ sol' do]} \t {sol' do, sol}
  \t {do,[ sol' do]} \t {sol'[ do, sol]} \t {do,[ sol' do]} \t {sol'[ do, sol]} |
  \t {do,[ sol' do]} \t {sol'[ do, sol]} \t {do,[ sol' do]} \t {sol'[ do, sol]}
  \t {do,[ sol' do]} \t {sol'[ do, sol]} |
  \pl <lab, do>1*1/4->--\laissezVibrer \t {r8 sol'? do} \t {sol'? do, sol}
  \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol} \t {do, sol' do} \t {sol' do, sol} |
  \t {do, sol' do} \t {sol' do, sol} \t {do, sol' do} \t {sol' do, sol} |
  \t {do,[ sol' do]} \t {sol'[ do, sol]} \t {do,[ sol' do]} \t {sol'[ do, sol]}
  \t {do,[ sol' do]} \t {sol'[ do, sol]} |
  \t {do,[(_"(dans la pédale)" sol' do]}
  \t {sol'[ do, sol])} \t {r sol( do}
  \t {sol' do,) r} \t {r sol( do} sol'4)\laissezVibrer |
  R1. R2. R1*5
  <dod, re>1--

  %%% très clair %%%
  R1
  <fa,, reb' solb>1--~_"ten." <fa reb' solb>
  <do sol' re'>1--~ <do sol' re'>\laissezVibrer\fermata
}