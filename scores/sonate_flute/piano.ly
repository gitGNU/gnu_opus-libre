%-- Sonate -- piano.ly --------------------------------------------%
% (c) 2013 Valentin Villenave <valentin@villenave.net>

\language "italiano"

\layout {
  \context {
    \PianoStaff
    connectArpeggios = ##t
  }
}

IPianoMd = \relative do' {
  % 0 %
  R1*7/4*2
  \ottava #1
  <fa'' mi'>4*7\dyn "pp" \laissezVibrer \arpeggio
  \ottava #0
  r4 r8 fad,--\laissezVibrer s1*5/4
  <red, fad'>2_\ppp \laissezVibrer \arpeggio s1*5/4 |
  r8 \pl {
    <red sold>4_( lad'8)~ lad2 <red, sold lad>4.--(\< q--
    <red sold>4--)\pp \laissezVibrer
  } {
    <dod' fad>4-- s8 s2 <dod fad>4.--( q--
    <si dod fad>4--)\laissezVibrer
  } r2. r8 <sold dod>--\laissezVibrer r2 |

  % 1 %
  fa'8(\dyn "p_sans nuances" mi, sol la si do re)
  fa( mi, sol la si do re) |
  fa( mi, sol la si do re) fa( mi, sol la si do re) |
  fa( mi, sol la si do re) fa( mi, sol la si do re) |
  fa( mi, sol la si do re) fa( mi, sol la sib do re) |
  fa( mi, sol la sib do re) fa( mi, sol la sib do mib |
  fa)\dyn "poco a poco con Ped." mi,( sol la sib do mib
  sol) mi,( sold si dod re mi |
  sol) mib,( lab do mib fa solb lab)
  re,,(\> mib fa lab do fa |

  % 2 %
  \override Slur.eccentricity = #3.0
  si4)\dyn "pp_(con Ped.)" \mg r \t {r8 sol,,,_( dod}
  \t {fad lad dod}
  \md \t {\stemUp red[ mi] <si' si'>)\laissezVibrer }
  \stemNeutral \t {r4 mi,8^(} \t {la sib do} |
  <si mib si'>4)\arpeggio \mg r
  \t {sol,,8_( mi' re'} \md
  \t {\stemUp dod' <si si'>4)\laissezVibrer}
   \stemNeutral r4*1/2 s8 \mg
   \revert Slur.eccentricity
   \t {r8 sol,,_( mib'} \t {sib' \md mi la} |
  \t {<dod si'>) mi fad} \mg r4 \t {r8 sol,,,_( mi'}
  \md \t {do' sol' dod} \t {fad lad red}
  mi4*1/2)\laissezVibrer s8 \mg r4 |
  \t {re,,,,8_(\dyn "pp_sempre" dod' si'}
  \md \t {sold' mi' si'}
  <fa fa'>2*1/2)\laissezVibrer \mg
  \t {r4 re,,,8_(} \t {do' la' \md fa'}
  \t {dod'\< fad lad} \t {dod red mi} |
  \ottava #1 <si si'>4)\p\laissezVibrer \ottava #0 \mg r4
  \t {r8 sol,,,_( si} \t {mi sib' \md fa'}
  \t {reb' sib' <sold sold'>)\laissezVibrer } r4 \mg r |
  \t {sol,,,8_( dod sold'} \md \t {mi' dod' si'}
  lad'4)--\laissezVibrer \mg \t {r4 sol,,,,8_(}
  \t {mib' do' \md sib'} la'-.-- la'-.--) s4 |
  \mg \t {\stemDown sol,,,,8_(\dim fa' \md re'}
  \stemNeutral \t {sib' fa' si)}
  \t {mi( fa, sol} \t {la si do} re4)\laissezVibrer
  \t {la,8_( mi' sib')}
  \ottava #1 \t {mib_( sol sib)~} |

  % 2 %
  \ottava #2 \graceNote sib <mib fab sib>2..--
  \ppp \laissezVibrer \arpeggio
  \ottava #0 s2. |
  R1*7/4*2
  \clef bass r2 r4 r8
  <re,,,, fadd sold dod>4--(\mp <mib re'>8
  <fa la sib mi> <lab dod re sol>4.)~ \hideNote q1*7/4 |
  \pl {<re,, la'>8\mf( <fad do'> si)}
  {<sold mib'>( do fa)}
  <mib sold la re>4.--~
  \hideNote q1 \clef treble |
  re'''8(\p do sib la sol fa mi') r r2 r4 |

  % 3 %
  \ottava #2
  \t 4 {
    sib''8(\dyn "pp_très clair"
    dob, reb mib fa solb
    lab) sib( dob, reb mib fa
    solb lab) sib( dob, reb mib
    fa solb lab) |
    sib( dob, reb mib fa solb
    lab) sib( dob, reb mib fa
    solb lab) sib( dob, reb mib
    fa solb lab) |
    sib( dob, reb mib fa solb
    lab) sib( si, dod red mi
    fad sold) lad( si, dod red
    mi fad sold) |
    lad( si, dod red mi fad
    sold) lad( si, do re fa
    solb lab) sib( si, re mi
    fa sol) sib( |
    si, dod re mi sol la) sib( si, dod
    mi fad sol) la( <la, do'> do re mib fa)
    lab( <lab, sib'> la |
    si re fad) <sol, si'>( sib do)
    reb( <fad, mib'> sib reb) <mi,! mib'>( la
    <re, dod'> do' re,) dod( sol' do mi sol la) |
    sib(\dim re,, lab' reb fa lab)
    sib( mi,, sib' mib sol) sib(
    sol, dod fad) sib( si, fa')
    sib(\dyn "al niente" mi,) sib'-- |
  } \ottava #0

  % 4 %
  R2*3
  \ottava #1
  \mg r4 \md r4 r8 <dod,, lad'>16-> dod'
  <dod, lad'>4\laissezVibrer
  \ottava #0
  R2 \clef bass
  <sold,,, red' lad'>16-.\f
  <dod, fad>4..->\laissezVibrer |
  \clef treble \ottava #1
  r8 sold'''''->(
  \t {lad-> <dod, dod'>->
  <red red'>->)\laissezVibrer } |
  r8 \mg \stemUp <sold,,, lad dod>4^>^-
  \md \stemNeutral <sold'' sold'>8-.
  \t {<lad lad'>8(\< <dod dod'> <red red'>)\!}
  r16 s8. \ottava #0 \clef bass 
  r8 <red,,, lad' mi'>4->-- \dyn "f_molto"
  <red lad' mi'>8->--\laissezVibrer
  R2*3

  % 5 %
  R2 \clef treble r4 r8 <do' sib'>-.
  \dyn "mf_secco" |
  r <do sib'>-. r <sib mi>-.
  <do sib'>4-.-- r |
  r4 fad''8~_\mf \t {fad16 red, fad'~} |
  <red, fad'>2\laissezVibrer |
  R2 \mg R2*3
  \md sold'16 la r8 \ottava #1
  <mi mi'>16->\dyn "ff_sub." <fa fa'>8.->~
  <fa fa'>4. mi8-._\pp |
  \halfBeat
  \t 8 {
    fa'16( re do si la sol) \ottava #0
    mi( re do si la sol)
  } fa( mi') r8 r4 |
  \clef bass \fullBeat
  fa,,,16( mi' re do sib la sol fa)
  \t {mi'8( re do} \t {sib la sol)}
  fa16( mi' re do sib la sol fa)
  \t {mi'8(\dyn "senza cresc." re do}
  \t {si la sol)}
  fa16( mi' re do si la sol fa)
  \t {mi'8( re do} \t {si la sol)}
  fa16(\> mi' re do si la sol fa) |
  \clef treble r4\! mi'''8-.\dyn "p_secco" fa,-. |
  r4 s r8 mi'-. fa,-. r |
  \ottava #1 r <red' fad'>-. r4 \ottava #0
  R2*3
  \t {r4 sold_(\dyn "p_con Ped." re}
  fad,2\laissezVibrer
  \t {r4 mi\> sold,} fa!2\laissezVibrer
  \mg r4 si,,\dyn "(quasi soffio)"
  sib,2 \laissezVibrer) R2 \md

  % 6 %
  mi'''8(\dyn "p_sans nuances (al fine)"
  fa, sol la si do re)
  mi( fa, sol la si do re) |
  mi( fa, sol la si do re)
  mi( <fa, si> sol la si? do re) |
  mi( <fa, si>_"(sempre legatissimo)"
  <sol do> <la re> si do re)
  mi( <fa, si> <sol do> <la re> si do re) |
  mi( <fa, la> <sol si> <la do> <si re> do re)
  mi( <fa, la> <sol si> <la do> <si re> do re) |
  mi( <fa, sol> <sol la> <la si> <si do> <do re> re)
  mi( <fa, sol> <sol la> <la si> <si do> <do re> re) |
  mi( fa, sol la si do re) r mi( fa, sol la si do |
  re4) r8 mi(_"(senza Ped.)" fa, sol si4) r2 mi8( fa,) |
}

IPianoMg = \relative do' {
  % \clef treble
  R1*7/4*2
  <mi fa'>4*7\laissezVibrer \arpeggio
  R1*7/4*11
  \clef bass

  % 1 %
  \override Slur #'eccentricity = #3.0
  \t {sol,,8_( re' lab'} \md \t {reb fa lab}
  \t {\stemUp sib <si si'>4)
  \laissezVibrer } r \mg \stemNeutral
  \t {r4 sol,,8_(} \t {do mi do')} r4 |
  \t {sol,8_( mib' do'} \md \t {sib' la' sib}
  \stemUp <si, si'>4)\laissezVibrer
  \stemNeutral \mg \t {r4 sol,,8_(}
  \t {mi' do' \md sol'} \t {dod fad lad}
  <mi dod'>4*1/4)\laissezVibrer s8. |
  \mg \t {sol,,,8_( re' sib'}
  \md \t {sol' fa' mi')\laissezVibrer }
  \revert Slur.eccentricity
  r4 \mg r \t {r fa,,,,8_(} \t {mib' do' \md lab'}
  \t {mib' la re} |
  <fad, fad'>2*1/2)\laissezVibrer
  \mg r4 \t {re,,,8_( mib' do'}
  \md \t {lab' mib' la} \t {re) <fad, fad'>4\laissezVibrer }
  \mg \t {r8 re,,,_( si'} \t {sol' re' sold)} |
  \t {fa,,_( si fad'} \md \t {re' si' la'}
  <sold sold'>4)\laissezVibrer r \mg
  \t {r4 sol,,,8_(} \t {do fad dod'} \md \t {la' fad' mi')} |
  \ottava #1 red'4--\laissezVibrer \ottava #0 \mg r4
  \t {sol,,,,,8_( re' sib'}
  \md \t {sol' fa' <mi mi'>--)\laissezVibrer }
  s4 \mg \t {r8 sol,,,_( mi'} \t {re' \md dod' si'} |
  sold'4*1/2)--\laissezVibrer s8
  \mg r4 r8 sol,,,,,4_( fad'8~
  \t {fad mi' dod')} r2 |

  % 2 %
  \ottava #-1
  s8 <dod,,, dod'>2..--\laissezVibrer s2. |
  r4 r8 dod--\laissezVibrer s1*5/4 |
  r1 r4 r8 dod--\laissezVibrer r4 |
  R1*7/4
  re4( re2--\laissezVibrer r8 re--)\laissezVibrer s2. |
  r1 re2.--\laissezVibrer |
  r1 r8 dod8~-- dod2 |

  % 3 %
  r2 r4 r8 re--\laissezVibrer r2 r4 |
  r4 \t {<re dod'>8(_\mp_\> fa sol)}
  <lab sol'>2--_\!\laissezVibrer
  r2 r4 |
  r4 r8 <lab sol'>4_(_\< <re, dod'>8-.)
  <sol lab'>2--_\mf \laissezVibrer
  \ottava #0 r2 |
  \t {r4 <sol lab'>_(-- _"(loco)"_\< <dod re'>--}
  <lab' sol'>2--) _\! \laissezVibrer r4
  r8 <re dod'>4.-- _\mp \laissezVibrer |
  \clef treble
  r2 <sol dod re lab'>2-- _\p \laissezVibrer s2. |
  r1 r4 dod'2-- _(
  _\dyn "pp_en dehors" \laissezVibrer |
  \t {r8 re4--\laissezVibrer } r4
  \t {r8 mi4--\laissezVibrer} r4
  sol2.--) |

  % 4 %
  R2*3
  \md r8 r16\ff <red'' fad, red>-.
  \set followVoice = ##t \mg <fad,,, red' fad>4~->
  \set followVoice = ##f
  <fad red' fad>8 <dod' lad'>16\sfp -> lad
  <dod lad'>4\laissezVibrer
  R2 \clef bass \ottava #-1
  <fad,,,, dod'>16-.
  <lad, red sold>4..->\laissezVibrer |
  \ottava #0 \clef treble
  r8 <sold'''' sold'>->(
  \t {<lad lad'>-> dod-> red->)\laissezVibrer } |
  \clef bass
  r8 \stemDown <sold,,, lad dod>4_>_-
  \stemNeutral sold''8-.
  \clef treble \t {lad( dod red) } 
  r8*1/2 \md <fad' red' fad>16-.
  \mg <red,, fad red'>8~->
  <red fad red'>8 \clef bass
  <dod,, si'>4->-- <dod si'>8->--\laissezVibrer |
  R2*3

  % 5 %
  R2 r4 r8 <sol' reb' lab'>-.
  r <sol reb' lab'>-. r <reb si'? mib>-. |
  <sol reb' lab'>4-.-- r |
  R2 \clef treble
  lab'''16_\dyn "pp_non legato"
  sib reb lab sib reb lab sib |
  reb lab sib reb lab sib reb lab |
  sib reb \md do reb sol reb sol lab |
  do,(\pp\> reb sol reb sol lab) do,( reb |
  sold la) do,( reb sold la) do, reb\! |
  \mg r4 <mi,, mi'>16-> <fa fa'>8.->~ |
  <fa fa'>2\laissezVibrer |
  R2 \clef bass
  fa,16(\dyn "p_sotto voce"
  mi' re do \t {sib8 la sol)} |
  lad,--(^\dyn "pp_non legato"
  si,-- dod-- red-- mid-- fad-- sold-- lad--) |
  si--( reb,-- mib-- fa-- sol-- lab-- sib-- do--) |
  re!--( mib,-- fa-- sol-- la-- sib-- do-- re--) |
  mi16( fa, sol la si do re mi) |
  R2
  r8 <sib reb mib>-. <lab' sib reb>-.
  \md <solb' lab sib>-.
  \mg R2*9 \md R2*3 \mg

  % 6 %
  R1*7/4*7
}

IIPianoMd = \relative do' {
  % I’d love to pull off something like this,
  % but it’s just too inconvenient for the pianist.
  % \key fa \major
  <re sib'>8--(\dyn "mp_paisible" q4-- q-- q--)
  q8--( q4-- q-- q--) |
  q8--( q4-- q-- q--)
  q8--( q4-- q-- q--) |
  <mib sib'>--( q8-- q4-- q--)
  q--( q8-- q4-- q--) |
  <reb sib'>--( q8-- q4-- q--)
  q--( q-- q8-- q4--) |
  <re sib'>--( q-- q8-- q4--)
  q--( q-- q8-- q4--) |
  <reb sib'>--( q-- q-- q8--)
  q4--( <solb sib>--) <reb sib'>--( <solb sib>8--) |
  \t {<reb sib'>(\p solb reb}
  <solb sib>-- <reb sib'>--
  solb) <sib mib>(\cresc <reb, solb>)
  <sib' la'>--( <solb mib'>4--)
  <sib la'>8--( <solb mib'>4--) <sib la'>8-- |

  %%
  re'16(\dyn "pp_sub." la re mib, re' sib,) re'( la
  re mib, re' sib,) re'( la re mib,
  re' sib,) re'( fad re mib, la sib,)
  re'( fa, la do, |
  fa solb,) la'( do,) re'( sib re fa,
  sib dob,) re'(\< sib re fa, sib dob,)
  re'( sold re fa, la do,) re'(\mf si'
  sol lab, re mib,) |

  %%
  fad'4*1/5--\dyn "pp_sub." s4*4/5
  fad4*1/5-- s4*4/5
  fad4*1/5-- s4*4/5
  fad4*1/5-- s4*4/5
  fad4*1/5-- s4*4/5
  \ottava #1
  si4*1/5-- s4*4/5
  fa'4*1/5--\> s4*4/5 |

  %%
  \ottava #2
  \ttt 4 {
    sib16(\dyn "ppp_legatissimo"
    re, fad sib, fad' re)
    \tupletsOff
    sib'( re, fad sib, fad' re)
    sib'( re, fad sib, fad' re)
    sib'( re, fad sib, fa' re)
    sib'( re, fa sib, fa' re)
    sib'( re, fa sib, fa' re)
    sib'( re, fa sib, fa' re) |
    sib'( reb, fa sib, fa' reb)
    sib'( reb, fa sib, reb solb)
    sib( reb, solb sib, solb' reb)
    sib'( reb, solb sib, mib solb)
    sib( mib, solb sib, solb' mib)
    sib'( mib, solb sib, sol' mib)
    sib'( mib, sol sib, sol' mib) |
    \tupletUp \stemUp
    sib'^(\dyn "p_leggiero"
    re, sol, \mg sib, \md sol' re')
    sib'^( mib, sol, \mg sib, \md sol' mib')
    sib'^( mib, solb, \mg sib, \md solb' mib')
    sib'^( reb, solb, \mg sib, \md solb' reb')
    sib'^( reb, fa, \mg sib, \md fa' reb')
    sib'^( re, fa, \mg sib, \md fa' re')
    \stemUp sib' re, fad, \ottava #0
    \mg \stemUp sib, \md %% Lily keeps complaining here.
    \stemDown fad'^"loco" re \stemNeutral
  }
  \t 4 {
    \tupletsOn
    <fad, fad'>8(\mf <sib re> <fad fad'>
    \tupletsOff <si re> <fad fad'> <si re>)
    <fad fad'>( <si red> <fad fad'>
    <lad red> <fad fad'> <lad red>)
    <fad fad'>( <lad dod> <fad fad'>
    <la dod> <fad fad'> <la dod>)
    <fad fad'>( <la re> la')
    \tupletsOn
  }
  \ottava #1
  \ttt 4 {
    <fad re'>16(\dim si fad <re si'> fad si)
    \tupletsOff
    <fa re'>( la fa <re la'> fa la)
    <fad re'>( la fad <re la'> fad la)
    <fa re'>( sib fa <re sib'> fa sib)
    <sol re'>( sib sol <re sib'> sol sib)
    <sol re'>( si sol <re si'> sol si)
    <fad re'>( sib fad <re sib'> re' fad)
  }
  \ottava #2
  \ttt 4 {
    sib( fa\dyn "pp" si, \mg mi, sib fa) \md
    sib''( mi, la, \mg mib sib mi,) \md
    sib'''( mi, la, \mg dod, fad, do) \md
    sib'''( mib, sol, \mg do, fad, si,) \md
    sib'''( mib, la, \mg mi sib mib,) \md
    \tupletsOn
  } \tttt {sib'''( mi, si \mg fa sib, \md si' mi)}
  \ttt {sib'( fa si, \mg mib, si' \md fa')} |
  sib4-- sib--\dim sib-- sib--
  sib-- sib-- sib8-.--(\dyn "al niente" mi,-.--) |
  \ottava #0

  %%
  \clef bass
  s4 s s \stemUp re,,,,16^( mi) \stemNeutral
  <si sol'>8 ^>^. q->-. r16 q-. s4 s |
  s4 s s <si la'>16( <sib sib'>) <mib dod'>8\mf ^>^.
  q16-> q-> <la, si>-. q-.
  <mib' dod'>-> q-> q-> <la, si>-.
  q-. q-. <mib' dod'>-> <la, si>-. |
  \halfBeat
  \t 8 {
    do16(\p\< mi lab) sol( si mib\!)
    \tupletsOff
    re,(\< fad sib) la( dod fa\!)
    mi,(\< sold do \clef treble si red sol)
  }
    \fullBeat \tupletsOn
  \ttt {sib(\f\> fad re dod la fa\!)}
  sol-.( dod-. sib-. mi-.)
  lab,-.( re-. si-. fa'-.)
  \t {la,(\< mib' do} fad8)->\ff

  %%
  <re sib'>4--(\mp q-- q-- q8--)
  q4--( q-- q-- q8--) |
  <reb sib'>4--( q-- q8-- q4--)
  q--( q-- q8-- q4--) |
  <mib sib'>4--( q8-- q4-- q--)
  q--( q8-- q4-- q--) |
  <re sib'>8--( q4-- q--
  q8--) r4 q-- r2 |
  <reb sib'>8--\p q4-- <solb sib>--(\>
  <reb sib'>8--)\! r2 q4-- r |
  q4.--( q--) r1 |
  <re sib'>2--\p r4 r8
  <re sib'>--~ <re sib'>2. |
}

IIPianoMg = \relative do' {
  % \key fa \major
  \clef bass
  <sib, sol'>8--( q4-- q-- q--)
  q8--( q4-- q-- q--) |
  q8--( q4-- q-- q--)
  q8--( q4-- q-- q--) |
  q--( q8-- q4-- q--)
  <sib solb'>--( q8-- q4-- q--) |
  q--( q8-- q4-- q--)
  <sib fa'>--( q-- q8-- q4--) |
  q--( q-- q8-- q4--)
  <sib fad'>--( q-- q8-- q4--) |
  <sib sol'>--( q-- q-- q8--)
  q4--( <sib re?>--) <sib sol'?>--( <sib re>8--) |
  \t {<sib sol'?>( re? sol}
  <sib, re>-- <sib sol'>--) re( <fa, sib>)
  <re' sol>--( <dob, sib'> <fa re'>)
  <sol'? reb'>--( <dob,, sib'> <fa re'>)
  <sol' reb'>--( \ottava #-1 <solb,, fa'>--) |

  %%
  
  \t 4 {
    re8( fad re si' re, fa')
    \tupletsOff
    re,( fad re si' re, fa')
    fad,( si fa') si,( fa' sib
    \ottava #0 mi_"loco" dod' sib,) |
    \ottava #-1 re,,( dod' fa)
    dod( fad mib') sol,,( sib') fad(
    \ottava #0 mib'_"loco" la) sib,
    lab,( fa' mi') dod,( sib')
    mi,( mib' sol do) |
  } \clef treble
  \tt 4 {
    \tupletsOn
    fad16( lad red \md la'! re!) \mg
    \tupletsOff
    fad,,( lad? red? \md la' re) \mg
    fad,,( la re \md lad' red) \mg
    fad,,( lad red \md la' re) \mg
    \tupletsOn
  } \ttt {fad,,( lad red \md la' re fad) \mg}
  \tttt {fad,,( lad red \md la' re fad si) \mg}
  \tttt {lad,,( red la' \md re fad si fa') \mg} |

  %%
  <sib,,,, re sol sib>8--(_\mp q4-- q-- q--)
  <sib mib sol sib>--( q-- q-- q8--)
  <sib mib solb sib>4--( q8.--)
  <sib reb solb sib>16--(~ q8 q-- q--)
  <sib reb fa sib>4--( q8--)~ q16
  <sib re fa sib>8.--( q8-- <re fa sib>--) |
  \stemDown
  sib16_._( fad'_. <re' sib'>_. fad,_.)
  sib,_._( fa'_. <re' sib'>_. fa,_.)
  sib,_._( fa'_. <reb' sib'>_. fa,_.)
  sib,_._( solb'_. <reb' sib'>_. solb,_.)
  sib,_._( solb'_. <mib' sib'>_. solb,_.)
  sib,_._( sol'_. <mib' sib'>_. sol,_.)
  sib,_._( sol'_. <re' sib'>_. sol,_.) |
  \stemNeutral
  <re re'>8( <sol sib> <re re'> <fad la>)
  <re re'>( <fa la> <re re'> <sol si>)
  <re re'>( <fa sib> <re re'> <fad sib>)
  <re re'>( sib') |
  \t 4 {
    <fad fad'>( <sib re> <fad fad'>
    \tupletsOff <si re> <fad fad'> <si re>)
    <fad fad'>( <si red> <fad fad'>
    <la re> <fad fad'> <la re>)
    <fad fad'>( <lad dod> <fad fad'>
    <la dod> <fad fad'> <la dod>)
    <fad fad'>( <lad red> <fad fad'>) |
  }
  \ottava #1
  s1. sib'4--
  \ttt 4 {
    \tupletsOn
    re,16^( fad re' \md fad re' fad) \mg
    \tupletsOff
    mi,,^( la re \md sol do fa) \mg
    fad,,^( do' mi \md sold do mi) \mg
    \tupletsOn
  } \tt {sib,^( fa' do' \md lab mib') \mg}
  re,^( sib' do re)
  \t {fad,8^( red' dod)} sib4-- |
  \ottava #0

  %%
  \clef bass
  % Six commas: this must be my record so far.
  \ottava #-1
  sib,,,,,,16-.\dyn "mp_secco"
  \md sib''-. <la dob>-. \mg sib,-. \md
  <la' dob>-. <sol dod>-. \mg sib,,-. sib'-. \md
  <lab' do>-. <fa mib'>-. \mg sib,-. \md <sol' dod>-.
  \stemDown fad_( mi) \mg \stemNeutral <dod la'>8->-.
  q->-. sib,16-. <dod' la'>-.^\<
  sib-. \md <dod' sol'>-. <si la'>-.^\! \mg sib,,-. \md
  <mib'' fa>-.^\< <re fad>-.
  \mg sib,-. \md <do' sold'>->-.^\! \mg |
  mi,,-.^\mp^\< \md mi''-. <mib fa>-.^\! \mg mi,-. \md
  <re' fad>-.^\< <do sold'>-.^\! \mg mi,-.
  \md <dod' sol'>-.^\<
  <do sold'>-. <si la'>-.^\! \mg mi,-. mi,-. s8
  <sol fa'>->-. q16-> q-> s s
  q-> q-> q-> s s s q8-> |
  \ottava #0
  sold'16(-._"loco" re'-. si-. fa'-.)
  la,-.( mib'-. do-. fad-.)
  sib,-.( mi-. dod-. sol'-.)
  \ttt 4 {
    sib,,( mi sold dod fad) la,
    dod,(\< fa sib mi la) do,\!
    \halfBeat
  } \t 8 {sol(\< si red) re( fad sib)\!}
  sold,32( do fa re sol mib') r16 |

  %%
  <sib, sol'>4--( q-- q-- q8--)
  <sib fa'>4--( q-- q-- q8--) |
  q4--( q-- q8-- q4--)
  <sib solb'>4--( q-- q8-- q4--) |
  <sib sol'>4--( q8-- q4-- q--)
  <sib solb'>4--( q8-- q4-- q--) |
  q8--( q4-- q-- q8--)
  r4 <sib solb'>-- r2 |
  <sib sol'>8-- q4-- <sib re>--(
  <sib sol'>8--) r2 q4-- r |
  <sib solb'>4.--( <sib solb'>--) r1 |
  <sib sol'>2-- r4 r8
  <sib sol'>--~ <sib sol'>2. |
}

IIIPianoMd = \relative do' {
  \mg \clef bass R1*6 \md \voiceOne
  mi'8^(_\p ^"sotto voce" fa) r mi^(
  fa fad) s mi^( |
  fa sol lab sol) r mi^( fa sol |
  <dob, sib'> <mib reb'> <solb dob> <lab sib>)
  r mi^( fad <si, sol'> |
  <do la'> do' lab fa mib <sib re> <si fa'> dod) |
  \pl {
    s2 s4 s8 sib[_(
    si]) r sib_( si do) r sib_( si
    dod re do) r sib_( si\> dod mi
    sol fa mi)\! r s2
  } {
    r8 mi^( la <sib, do'>
    <do mib'> <dod re'> fa' sib,
    la fad) la^( sold) r mi'^(^\> do la
    sol fad mi^\! dod) r mi'^( re[ dod]
    si sold) r mi'^\( \oneVoice
    <sib, red'>_( <si dod'>
    dod16 la'\) mi8)
  } \ottava #1
  \acciaccatura sold8 mi''( <do, fa> \ottava #0
  la^"loco"\> sol fad mi dod4)\! |
  \pl {
    <si' mi>16^(\mp _\( fa') sold,8 fad fa
    mib do lab4\) |
    \ottava #1
    sib'8_( lab sol fa
    %%FIXME \bracketDown "m.g."
    re4)_"(m.s.)"
    la''8_( sold fad mib) r la_(
    sib,4)\laissezVibrer s s1 s
  } {
    s4 \t {r8 mi^( fa} fad4)
    \t 4 {
      r8 mi?^( fa sol lab sol)
      r mi^( fa sol sib re
      \ottava #2 fad mib re)
      r mi^( fa sol4 sib8)
      r mi,,(^\pp fa \oneVoice sol sib re
      sol do si \tupletsOff fad dod la
      fa lab si sol mib do
      \ottava #0
      la-"loco" sol fad mi dod sib)
    }
    <si, mi fad sold>2->--\laissezVibrer
    ^\dyn "mf_quasi improvisando"
  } \voiceOne r8 <sol' la>-- \oneVoice
  <re sol la si>2->--\laissezVibrer
  \ottava #1 \tupletsOn
  \pl {
    s4 s1*5 s4 s
    \set followVoice = ##t
    \mg \voiceOne sib8[_( si]
    \md \oneVoice do[ re]
    dod4)
  }
  {\t 4 {
    \oneVoice
    fa'''8(_\ppp mi) r
    fa( mi mib) r fa( mi
    re dod re) r fa( mi \tupletsOff
    re si sold fad mid) fa'(
    mi re si sol mib do
    sib la si re) fa'( mi
    re si sol re la fa
    \ottava #0
    re-"loco" do si dod mi) \ottava #1
    fa''( mi re si sol re sold,
    \ottava #0
    red-"loco" si sold fad) fa''( mib
    do lab mi dod si) fa'(
    re sib fad mib) fa'( dod
    sold) fa'( do) } s4 s
  } \tupletsOn
  \t 4 {
    <mi re'>8(_\pp <fa dod'>) <mi re'>(
    <fa dod'> <fad do'>) <mi re'>( \tupletsOff
    <fa dod'> <sol si> <fad do'>)
    \ottava #1
    <si la'>(_\p <do sold'>) <si la'>(_\>
    <do sold'> <dod sol'>)_\! <si la'>(_\p_\>
    <do sold'> <re fad> <mib fa>_\!
    <re fad>) <si la'>(_\mp_\> <do sold'>
    <re fad> <mib fa> <do sold'>
    <re fad>_\! <mib fa>) <si la'>(_\mf_\>
    <do sold'> <re fad> <mib fa>_\!
    <re fad>) \longHairpin
    <si la'>(_\> <do sold'>
    <dod sol'>)_\! <si la'>(_\> <do sold'>)_\!
    \ottava #2
    <fad mi'>(_\f <sol red'>) <fad mi'>(_\>
    <sol red'> <lab re>)_\! <fad mi'>(_\>
    <sol red'> <la dod> <sib do>
    <la dod>)_\! <fad mi'>(_\> <sol red'>
    <lab re>)_\! <fad mi'>( <sol red'>)
    <dod si'>(_\ff <re sib'>) <dod si'>(
    <re sib'> <mib la>) <dod si'>(\>
    <re sib'> la mi \ottava #0
    si-"loco" fad dod)
    <sib, lab'>\mp mib
    <sib lab'>^-^( mib <la, la'>^-) mib'
    <sib lab'>^-^( mib <la, la'>^-
    <reb mib> <lab sib'>^-) mib'
    <sib fa' lab>^-^( mib <la, la'>^-
    mib' <sol, si'>^- mib'
    <re do'>-- mib <sol, si'>--)
    mib' <sib lab'>--^( mib
    \voiceOne <la, la'>_- mib' <sol, si'>^-
    \oneVoice mib' re'^- mib,
    <re fa'>^- mib mib'^-
    \voiceOne mib, <si fad' re'>^-) mib
    \oneVoice <sib lab'>^(\pp\< mib <la, sib'>
    mib' <sol si> mib
    <mi re'> <mib fa> fad' mib, <lab sib'> <re mi>
    sol\mp\> mi, fa' \voiceOne mi, mi' fa,
    \oneVoice re' fa, dod'
    \voiceTwo fa, do') fa,\! \oneVoice
  }
    \pl {
      \t {fad8\pp\< dod fad}
      s4
    } {
      <dod si'>4^-^(
      \t {<do do'>8^-)\! fad do}
    }
    \pl {
      \t 4 {
        fad^( do fad)
        <dod si'>^-^(\pp\< fad dod
        \oneVoice <fad do'>^- do fad
        <si, dod'>^- fad' si,)\!
        \voiceTwo fad'^( si, fad')
        <dod si'>^-\p\<^( fad dod
        <fad do'>^- do fad
        \oneVoice \stemUp
        <sib, re'>^-\arpeggio fad' \stemDown re''^.^-
        \stemNeutral <la,, mib''>^-\arpeggio fad' mib'
      }
      \ottava #1
      <re' dod'>16)->-.\sfp do''32->( dod, <do, re>8-.)
    } {r4 r8 mib^.^- s2 r8 fa^.^- r4 r8 mib^.^- s4 s s}
    \ottava #0
    r8 <dod dod'>-.( <do re>-.[ <red, si' red>-.]) |
    r <re dod'>-.--\mp\< \acciaccatura dod''16^>
    <do, re>8-.([ <mi, sib' mi>-.] \tupletsOn
    <mib la fa'>-.\> <re sib' mi>-.)\! r <re dod'>-.--\mf |
    \t {<dod fadd sold do! re>-.(\< <sib' mi>-. <sol sol'>-.}
    <mi! la mib' sib'>4->--)\!\arpeggio
    <fad do' lab'>8-.(\> <sol sol'>-.\!)
    r <mib lab reb>( |
    \t {<re re'>_\dyn "f_lirico" _\< <mi mi'> <sol sol'>} \ottava #1
    <si si'>-- <red red'>--
    \t {<do do'>_\> <sib sib'> <la la'>_\!)}
    r <dod dod'>(\f <do do'> <sib sib'>\!)
    \t {<sol sol'>^(\dim do mi,} \ottava #0
    fa16-"loco" do fa, fad~
    \tt {fad sol,8 sold)} | \ottava #1
    \t 4 {
      mi'''(\dyn "ppp_dolcissimo (tre corde)"
      fa) red( mi fa fad) red( re) mi( \tupletsOff
      fa sol lab
      sol) mib( reb do reb) mi(\<
      fa sol sib reb\pp\> dob sib)
      mib,( reb sib sol\! la sib)
      mi(\< fa sol sib re fad
      mib\p\> reb do sib sol) mib(
      reb sib solb re\! fa sol)
    } lab16(\< sib reb mib)
    mi( fa sol sib) \ottava #2
    \t 4 { \tupletsOn
      re8(\dyn "p_grazioso" sol do
      si fad dod) \tupletsOff
      do( mi sold sol mib si)
      sib( dod mi mib do la)
      lab( sib do si la sol)
      \ottava #1
      fad( sol lab sol solb fa)~
      fa mi fa( mi mib) fa(
      mi re dod re) fa( mi
      re si sold la si) fa'(
      mi re si lad) si( lad
      la) si( lad sold fadd sold)
      si( lad sold fa re mi)
    } \ottava #0
    r4
    \pl {
      \oneVoice <sol,, mi'>(
      \dyn "p_quasi corale (tre corde) "\<
      \voiceTwo dod \oneVoice <lab sol'>4 |
      <re sib'> <fad re'> <dod' sol'> dod' |
      \ottava #1 <sol do sold'> <fa' mi'>
      <si do'>\mp <la fa'> <mib si'?>
      fad \ottava #0 <do,? fa re'>\> <mi si'?>
      <sib red la'> <la sold'>)\pp
    } {s4 fa8[( mib]) s4 s1*3 s2} r4 r8
    \pl {mi~( mi4 fa)} {fa'8~( fa4 mi)} r2
}

IIIPianoMg = \relative do' {
  \md R1*2 r2 r4 sib'8(\dyn "p_dolce" la) |
  r sib( la sold) r sib( la sol |
  solb fa) r sib_( la sol mi dod |
  red mi) r sib'_( \stemDown la sol mi \mg do
  lab si dod \md \voiceTwo re
  mi sol) \oneVoice r \voiceTwo sib_( |
  la sol mi \mg do \oneVoice sol re mib lab |
  \md \voiceTwo do? mib fa solb) r sib_( la re, |
  fa \mg \oneVoice sib, mib, sol) r fad_( dod'
  \md \voiceTwo sol' do lab) \mg \oneVoice
  \pl {
    mi,,4--(_\pp fa--)\oneVoice r \voiceTwo
    mi--( fa-- fad--) \oneVoice r \voiceTwo
    mi--( fa-- sol-- la-- sold--) r mi--( fa--
    sol-- sib-- reb-- dob-- sib--) r mi,--( fa--
    sol-- sib-- re-- fad-- mib-- reb-- do-- sib--
    sol--) r reb'--( la-- fad-- mi-- red-- dod--
    sib--) re\rest reb'--( sib-- lab-- sol-- fa--) r
    reb'--( dob-- sib--) r reb--( do--) r
    sol,--\laissezVibrer
  } {
    r8 sib''(^(\p la sol) s s
    r4 sib2( la4) r2 sib(
    la4) r8 sib(~ sib4 la)
    r8 lab--\laissezVibrer s4
    \t 2 {
      r sib( la sol fad sol) r sib( la
      sol fa mi) re( dod')\laissezVibrer r
      sib( la sol mi re dod si) re( mi fa sol) r
      \set followVoice = ##t
      mi_( fa sol \md \voiceTwo
      si2*1/2-- re4-- dod--
      \set followVoice = ##f
      si?--) \mg \voiceOne r mi,( fa sol sib
    } reb4.) mi,8( fad_\< la dod fa
    mib \clef treble do')_\!
    \clef bass r mi,,(_\< sol si
    \clef treble mi la_\mf_\> \clef bass
    fa re? si la sold fad)_\! r mi--
  }
  sold( dod sol' dod,)
  << { \voiceThree
    lab,,2_-_\laissezVibrer
    s1 sol2*1/2_-_\laissezVibrer
    \oneVoice r4
    s4 sold_-_\laissezVibrer
    s2 la2*1/2_- \voiceTwo r4 r sib2._-
     } \\ { \voiceTwo
    s4 sib'_( la) r sib_( la
    lab) s sib_( la sol fad sold)
     } \\ { \voiceOne
    r8 red'^( mi[ la])
    r mi^( sib'4) r8 sib[^( si]) r
    \md \stemDown sib8*1/2[^(
    \mg s16\mp si!8] \voiceOne do4)
    s2 \t {sol,4 lad'8_(} si dod r sol' fa[ mi])
    sib^( si r \oneVoice mi
    \clef treble sold do la sol) \clef bass
  } >>
  la,,,2.-- <sib' lab'>8_-_(_\mp mib |
  <la, la'>_- mib') r <sib lab'>_-_(
  mib <la, la'>_- mib' <lab, sib'>_- |
  mib'4) <sib lab'>8_-_(_\mf mib <la, la'>_- mib'
  <sol, si'>_-\arpeggio mib'
  <fad, do''>_-\arpeggio mib' <sol, si'>_- mib')
  r <sib lab'>_-_( mib[ <la, la'>]_- |
  <sol si'>_- mib' fab,_- mib'
  reb,_- mib' mib,_- la |
  <fab solb'>_- mib') r \set followVoice = ##t
  <sib mib lab>_-_( \md \voiceTwo
  fa''''2*1/4^.^-\laissezVibrer ^\dyn "mp_en dehors"
  \mg \oneVoice la,,,,8 mib'[ <sol, mi' si'>_-] |
  <reb' mib> fab, \md \voiceTwo
  mi''''2*1/4^.^-\laissezVibrer
  \set followVoice = ##f
  \mg \oneVoice do,,,,8) mib'( lab,, mib'' si, |
  <mib' fab> reb, <do' mi> re,) r
  \set followVoice = ##t
  <sib' mib lab>_-_( \md \voiceTwo
  fa''''4*1/2^.^-\laissezVibrer
  \set followVoice = ##f
  \mg \oneVoice <la,,,, la'>8_- |
  mib' <re si'> dod4*1/2)
  \set followVoice = ##t
  \md \voiceOne mi'''8^.^-\laissezVibrer
  \set followVoice = ##f
  \mg \oneVoice
  <sol,,,, do fa>8_-_( do <fad, fad'>_- do') |
  fad_( do <sol fa'>_-) r fad'( do <fa, sol'>_- do' |
  sol') r <sol, fa'>_-_( do <fad, fad'>_- r
  \t {<mi sold'>_-\arpeggio do' sold'}
  mib,_- do') \clef treble
  \t 4 {
    <sol' mi'>8_( la' mi <la re> mi sol,)
    \clef bass si,( sol' mi') \tupletsOff
    \clef treble la(_\p mi la mi la mib la mi la)
    \clef bass mi( sol, si,) \tupletsOn
  } mi,(_\< si' \t 4 {
    fa' sib re \clef treble fa sol lab)_\!
    \clef bass mi,,( do' sol'
  } dod_\< fad \clef treble
  \t {lad dod red)_\!}
  mi_( sold, \clef bass \t {dod, sol re)} |
  \t 4 {
    sib( fad' dod')
    fad,,( red' si')
    re,,( do' la')
  }
  \ottava #-1
  <sib,,, sib'>4--(_\pp <si si'>2--)
  <sib sib'>4--( <si si'>-- |
  <do do'>2--) <sib sib'>4--( <si si'>--
  <dod dod'>-- <re re'>-- <dod dod'>2--) |
  <sib sib'>4.( <si si'>8~ <si si'>4 <dod dod'> |
  \t {<mi mi'>-- <sol sol'>-- <fa fa'>--}
  <mi mi'>2) |
  <mi' mi'>4( <fa, fa'>)\laissezVibrer
  \clef treble \ottava #1
  mi''''16_(_\dyn "ppp_leggiero"
  la re sol solb reb lab mib) |
  \ottava #0
  re_(_"loco" fad sib re dod la fa dod)
  do_( mib fad la lab fa re si)
  sib_( do re mi fa mib reb dob)
  sib8(\dyndim "mp_dim."
  si) sib( si | do) sib( si dod re dod) mi( fa) |
  mi( fa fad) mi( fa\ppp sol lab sol) |
  \clef bass
  r4
  \pl {
    \oneVoice sib,,,_\( si dod mi
    \voiceTwo sol8( solb fa4) \oneVoice mi\)
  } { s4 s s s sib' mi s }
  r \pl {
    \oneVoice sib,_\( \voiceTwo si8([ do]
    \oneVoice dod4) \voiceTwo re dod\)
  } { s4 do' s sib8( do? re4) }
  r \pl {sib,( si \oneVoice do)} {sol'~ sol s}
  r \pl {sib,(\ppp \> si2*3/4 s8\!)}
  {dob'4( sib2)} r2 |
}
