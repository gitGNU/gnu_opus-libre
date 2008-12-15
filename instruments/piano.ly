%------------------------------------------------------------------%
% Opéra Libre -- piano.ly                                          %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

Piano = {
  \set PianoStaff.instrumentName = \markup { \hcenter-in #27.5 "Piano  "}
  \set PianoStaff.shortInstrumentName = "Piano.  "
  \set PianoStaff.midiInstrument = "acoustic grand"
}

ProloguePiano = { \Piano
  \PianoDeuxMains
  \relative {
    \partial 4 r4 R2.*3 R1
    mi2\rfz \laissezVibrer r4 \clef bass mi,4--\laissezVibrer|
    r4 mi2->\laissezVibrer | r8 \tt {mi,32( fa mi' mi fa} red'4)\laissezVibrer|
    r4 r8 \t {mi,,16 mi' mi} | mi'2.\laissezVibrer |
    R2*2 | %%FIXME: \laissezVibrer isn't printed.
    << \makeClusters { \ind #"dans les cordes" sol,16 la si do re2 } \\
    {\hideNotes s4 re2 \laissezVibrer \unHideNotes} >>
    R2*2 |
    << \makeClusters { \simile sol,16 la si do mi2 } \\
    {\hideNotes s4 mi2 \laissezVibrer \unHideNotes} >>
    R2*2 |<la, re sol>2\f r4 | R2*2 |
    << {\voiceTwo <si re mi>2\f\laissezVibrer} \\ 
    {\voiceFour r8 \voiceOne \st {<sid, dod>8 <sid dod> <sid dod>}}>>
    \st {<sid dod> <sid dod> <sid dod> <sid dod>
    <sid dod> <sid dod> <sid dod> <sid dod>
    <sid dod> <sid dod> <sid dod> <sid dod>
    <sid dod> <sid dod> <sid dod> <sid dod>
    <dod re> <dod re> <dod re> <dod re>
    <dod re> <dod re> <dod re>\> <dod re>
    <re mib> <re mib> <red mi>\mf <red mi>
    <red mi> <red mi> <red mi> <red mi>
    <red mi>\> <red mi> <red mi> <red mi>}
    r8\mp <mi fa>-. <mi fa>4-- |
    <mi fa>8-. <mi fa>4-- <mi fa>8-. <mi fa>4-- \clef treble |

    %%% Tempo giusto %%%
    re'8\p r re-.\p re-. s2*2 R2*3 s2*2
    \pl <re re'>4 re''4-- r2 | R2.*2 \clef bass |
    <sib,,,sib'>2.-- <dod dod'>-- <mi mi'>-- \clef treble |
    <lab lab'>2-- <mi' do'>8( <sol la>) |
    <la fa'>(\< <do mib>) <do lab'>( <mib fa>) <mib si'>( <fa lab>) |
    <re re'>4\f r8 <mi sold re'>4.->~ <mi sold re'>4 r8 <re fad si re>4.-> |
    \ttt {re'16(\ff la fa re do si)} \ttt {fad'( dod la fad mib reb}
    \ttt {do) sol'( re sib \mg sol fa} \tttt {mi re si la sold fad red) \md} |
    s4 \t{<dod''' re>8\> dod, <dod'' re>} | <dod,,re dod'>2\pp\laissezVibrer
    R2-\fermataMarkup

    %%% Solo ténor %%%
    R1*2 R2. R1 R2. r2 sol\p~|
    sol~ sol~ sol R2 R2.*6
    <sol lab sol'>2.\arpeggio \laissezVibrer R2.*4 R4.

    %%% Andantino %%%
    \st {
    <lab sol'>8\pp \mg sol, \md r |
    <lab'sol'> \mg sol, \md r |
    <lab'sol'> <lab'sol'lab> r | <sib dob sib'> r <si do si'> |
    <lab,sol'> \mg sol, \md r |
    <lab'sol'> \mg sol, \md r |
    <lab'sol'> \mg sol, \md r |
    <lab'sol'> \mg sol, \md r |
    <lab'sol'> <lab'sol'lab> r | R4.*3
    r4 <lab, sol'>8 r <si? sol' lab> r |
    R4. <mi do'>8 r4 | R4. <mi do'>8 r4 |
    R4. <re sib'>8 r4 R4. <re sib'>8 r4 |
    R4. <do sold'>8 r4 R4. <dod la'>8} r4 |
    R4.*2 s4.*2 |
    <la' re>4.\laissezVibrer s4.*3 |
    <mi' la>4.\laissezVibrer s4.*3 |

    %%% A tempo %%%
    \ottava #1
    re''32\f \> re, re re,\! \ottava #0 s8 r R4.
    \ottava #1 re''32\> re, re re,\! \ottava #0 s8 r8 R4.*2
    <reb, lab'>4.--\mf\laissezVibrer R4.*2
    \pl {\st {<sol lab dod>16\fp[ <sol lab dod> sol \mg
    <lab, dod re> <lab dod re> <lab dod re>]} \md }
    {<lab'' re lab'>8\noBeam <sol, lab dod>16 s8.}
    \st {\stemDown <sol lab dod>16 <sol lab dod> <sol lab dod> \mg
    \stemUp <lab,dod re> <lab dod re> <lab dod re> \md |
    \stemDown <sol'lab dod> <sol lab dod> <sol lab dod> \mg
    \stemUp <lab,dod re> <lab dod re> <lab dod re> \md |
    \stemDown <sol'lab dod>\< <sol lab dod> \mg \stemUp <lab, dod re> <lab dod re>
    \md \stemDown <sol' lab dod> \mg \stemUp <lab, dod re>\! \md |
    \stemDown <lad' si mi> <lad si mi> <lad si mi> \mg
    \stemUp <lad, si fa'> <lad si fa'> <lad si fa'> \md |
    \stemDown <lad' si mi> <lad si mi> <lad si mi> \mg
    \stemUp <lad, si fa'> <lad si fa'> <lad si fa'> \md |
    \stemDown <lad' si mi> <lad si mi> <lad si mi> \mg
    \stemUp <lad, si fa'> <lad si fa'> <lad si fa'> \md |
    \stemDown <lad' si mi> <lad si mi> <lad si mi> \mg
    \stemUp <lad, si fa'> <lad si fa'> <lad si fa'> \md |
    \stemDown <lad' si mi> <lad si mi> <lad si mi> \mg
    \stemUp <lad, si fa'> <lad si fa'> <lad si fa'> \md |
    \stemDown <lad' si mi> <lad si mi> \mg \stemUp <lad, si fa'> <lad si fa'>
    \md \stemDown <lad' si mi> \mg \stemUp <lad, si fa'> \md \stemDown |
    <fa'' sib re>8-- <si,! fa' sib>16( \mg \stemUp <sold, mi'> \md \stemDown
    <si' fa'> \mg \stemUp <si,, sold'>
    \md \stemDown <mi' si'> \mg \stemUp dod, \md \stemDown
    <si''! fa' sib> \mg \stemUp <si, mi sold>
    \md \stemDown <fa'' sib re>8) |
    <si re mi fa>8-- <re, sol si>16( <reb, lab'> <re' sol> \mg \stemUp
    <fa,, reb'> \md \stemDown <lab' re>
    \mg \stemUp sib,, \md \stemDown <lab'' re sol>
    \mg \stemUp <lab, reb fa> \md \stemDown <re' sol si>8) |
    <mi sold si dod re>16--(\> <sib, fa'> <si' mi sold> \mg \stemUp <re,, sib'>
    \md \stemDown <fa' si mi>8) | <dod' re mi sol>16--(
    \mg \stemUp <fa,, si> \md \stemDown
    <sold' re'> \mg \stemUp <sib,, fa'>
    \md \stemDown <si' sold'>8) |
    <fa' solb lab dob>16-- \mg \stemUp <mib, lab>
    \md \stemDown <re' mib fa lab>-- \mg \stemUp
    <si, mi> \md \stemDown <si' do re fa>8--\! } | R4.*9 R8*5 R2.*3

    %%% Adagio %%%
    \cmb #"p" #"très clair" <sib' fa' dod'>1\laissezVibrer R1*3 R1.
    \makeClusters { \ind #"dans les cordes" sol,16 la si do re2.} r2 |
    <la' re fa sib>1\laissezVibrer R1*2 R1.
    \makeClusters { \simile sol,16 la si do mi2. } r2 |
    <dod' mi do'!>2-- <la do sold'>--\laissezVibrer R1 R2. |

    %%% Valse %%%
    \ottava #1
    r4 \det {<fa'' lab reb>2\ppp | r4 <sib, mib solb>2 \ottava #0
    r4 <mi, la do>2 | r4 <sib mib solb>2 | r4 <sold dod mi>2 |
    r4 <sol sib mib>2 | r4 <fa lab reb> r <mib lab dob> } |
    \mg \stemUp r8 re,8\p( mib sib' si \md fad'
    \stemNeutral sol8\< re' mib sib')\! | R2.*2
    \stemUp \t {r8 mi(\pp mib} \t {lab, sol do,} \t {si mi, mib} \mg
    \t {lab, sol do,)} \md \stemNeutral |
    \det {r2 \pl <do' fa lab>2\ppp <dod' mi la> |
    r4 \pl <sib, reb solb>2 <la' re fa>2 |
    r4 <sold dod mi>2 r4 <fad la re>2 | r4 <fa lab reb>2 |
    r4 <dod fad la>2 r4 <sib reb solb> r <la do fa>} |
    R1 \stemUp \ind #"non legato" re16\mp \< mib fa lab sib si dod mi fad sol la do |
    \stemDown <re, re'>8->\fp \stemUp \mg re,,-. \md \stemNeutral r4 |
    R2*6 r4 s R2*15
    \st {<fad' si mi>8\p r r4 <mi la re>8 r r4 <reb lab'>8 r r4 |
    R2*3 sib8-> r r4 <fa mi'>8-> r mi''' r } |
  }
  \relative {
    \partial 4 r4 R2.*3 R1
    \det {<mi,, mi'>2\rfz\laissezVibrer r4 <mi, mi'>4\laissezVibrer r4 <mi mi'>2\laissezVibrer |
    r4 <mi mi'>\laissezVibrer | r4 <mi mi'>\laissezVibrer mi'4 mi,2\laissezVibrer |R2*2 |
    r4 <mi mi'>2\laissezVibrer | R2*2
    r4 <mi mi'>2\laissezVibrer | R2 r4 <re' re'> |
    <dod dod'>2-> r4 } | R2*2
    <dod, dod'>2->-- r8 <sol' sol'>-. | r dod-. r <sol sol'>-. |
    dod4-- <dod, dod'>-- <sol' sol'>8-. dod--|
    R2 <sol sol'>4-- dod-- <sib sib'>8-. dod--~| dod <sol sol'>-. dod4-- |
    <dod, dod'>4-- <sol' sol'>8-. <dod dod'>4-- <sib sib'>8-. |
    r <dod dod'>4-- <sol sol'>8-. |
    <sib sib'>2--~<sib sib'>4 r2 |

    %%% Tempo giusto %%%
    <re re'>8->-. r r4 |
    re'8-. \md re'-. \mg re,-. \md re'-. \mg |
    re,16(\< mib' \md re mib) re'->(\> mib, re \mg mib,) |
    \st {re,8\p re' re, re' | re, re' re, re' | re, re' re, re'} |
    <dod,dod'>16\pp\< <dod'dod'> <fa, fa'> <fa' fa'>
    <si, si'> \md <si' si'> \mg <mi, mi'> \md <mi' mi'> \mg |
    <fad, fad'> \md <fad' fad'> \mg <sol, sol'> \md <sol' sol'>
    <la, la'> <la' la'> <do, do'> <do' do'>\! \mg |
    R2. <lab,,lab'>2.--\mf( <re, re'>4) r2 |
    \ottava #-1
    <fad, fad'>2.-- <mib mib'>-- <do do'>-- |
    \ottava #0
    <sib' sib'>2-- <sol sol'>4--~ <sol sol'> <mi mi'>2-- |
    <re re'>2->--\laissezVibrer <re'' fa sib re>4->~
    <re fa sib re> <re mib fa lab do re>2-> |
    <dod,,dod'>1*1/2->--\laissezVibrer s2
    \t {\stemDown dod'2*1/4\laissezVibrer \stemUp <dod''re>8 dod,}
    \stemNeutral s4 R2 R2-\fermataMarkup

    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    sol,2~ sol~ sol <sol fa'>2(~ <sol mib'>2.)
    <sol do>( <sol sib>2 <sol la>4~ <sol la> <sol lab>2)~
    <sol lab>2. <sol lab> <sol lab'>\arpeggio R2.*4 R4.
    s4.*2 R4.*2 s4.*4 R4.*3 r8 sol'(\mp lab-.) |
    \acciaccatura la16 sib8-.\> r \acciaccatura fad16 sol8-. |
    r fa-.\! r |
    \st { mi8 r4 sol8 r4 |
    mi8 r4 sol8 r4 |
    red8 r4 fad8 r4 |
    red8 r4 fad8 r4 |
    mi8 r4 mi8 r4 | re8 r4 re8 r4 } |
    \pl {do4.\pp\laissezVibrer R4. \oneVoice R4.*2}
    {r8 <mi'sol>8( <fa sib>
    <sol reb'> <sib do> <sib mib> \md
    <dod fad> <red sold> <fad la>
    <red sol> <fad la> <sold si>) \mg}
    \pl {do,,,4.\laissezVibrer \oneVoice R4.*3}
    {r8 <mi' la>( <fad do'> \md
    <la re> <do fa> <re sol>
    <fa lab> <sol sib> <lab reb>
    <sib mib> <dod mi> <red fad>) \mg}
    \pl {do,,,4.\laissezVibrer \oneVoice R4.*3}
    {r8 <sol'' do>( <la re> \md
    <do mib> <re fa> <mib lab>
    <fa sib> <sold si> <lad dod>
    <si mi> <dod fad> <mi sol>) \mg}

    %%% A tempo %%%

    %% FIXME: Issue #705
    \stemUp re,,,8->-. \md \stemDown re''-. \mg \stemDown re,-. \stemNeutral
    <sold, sold'>(\< <si si'> <dod dod'>)\> |
    \stemUp re,->-. \md \stemDown re''-. \mg \stemDown re,-. \stemNeutral
    <sold, sold'>(\< <si si'> <dod dod'> |
    re fa sol <lab, reb lab'>4.)\!\laissezVibrer R4.*2
    s4.*10
    \stemDown <si, si'>4.*1/3\f\laissezVibrer s4 s4.
    <sib sib'>4.*1/3\f\laissezVibrer s4 s4.*4 \stemNeutral
    si'8--\mf sib-- lab-- | fa-- r4 | R4.*7 R8*5 R2.*3

    %%% Adagio %%%
    \det {<fad' re'>1\laissezVibrer R1*3 R1.*2
    <fad dod'>1\laissezVibrer R1*2 R1.*2
    <sold fa'>2 <fa dod' mi>2\laissezVibrer R1 R2. \clef treble

    %%% Valse %%%
    r4 <mi'' la do>2 r4 <si re sol>2 |
    r4 <fa lab reb>2 | r4 <si, re sol>2 |
    r4 <la do fa>2 \clef bass r4 <fad si re>2 |
    r4 <fad la re> r <mi sol do> } |
    \stemDown \t {sol,,8( re' sol} \t {sib sol sib}
    \t {mib sib mib} \stemNeutral \t {fad mib fad} si4) | R2.*2
    \md \stemDown re'8( sol, mi \mg si lab mib do-- sol--) |
    \det { \stemNeutral do,2*2\laissezVibrer s2. r4 <la'' do fa>2 |
    r4 <fa sib reb>2 r4 <mi la do>2 |
    r4 <re fa sib>2 r4 <la re fa> r <sold dod mi> } |
    R1 \stemDown re'16 mib sol la
    sib \md do mib fa solb lab si dod \mg s4
    \st { \stemNeutral re,,,8 re' | re, re' re, re' |
    re, re' re, re' | re, re' re, re' |
    re, re' re, re' | re, re' re, re' |
    re, re' re, re' | re, re' \md re'\> \mg re, |
    re,\! r r4 | R2*14
    <re' sol do>8 r r4 <mi la re>8 r r4 <sol mib'>8 r r4 |
    R2*3 <sib, dob>8-> r r4 | <mi, re'>8-> r mi, r } |
  }
}

ActeUnSceneUnPiano = { \Piano
  \PianoDeuxMains
  \relative { \clef bass
    \cmb #"p" #"sombre" do,8( do \t {do\> do do} do4--\! do--)\laissezVibrer s2. |
    r8 do\<( \t {do\> do do} do4--\! do--)\laissezVibrer s2. |
    r8 do\<( \t {do\> do do} do4--\! do--)\laissezVibrer s2. |
    r8 \simile do( \t {do do do} do4 do)\laissezVibrer s2. |
    r8 do( \t {do do do} do4 do)\laissezVibrer s2. |
    r8 do( \t {do do do} do4 do)\laissezVibrer s2. \clef treble |
    <la'' mib' si'>1\pp\arpeggio \laissezVibrer |
    <la, mib' si'>2.\arpeggio \laissezVibrer |
    <do' solb' mi'>1\arpeggio \laissezVibrer |
    <mi, sol red' fad>2.\arpeggio \laissezVibrer \clef bass |
    r8 <do,do'>\mp( \t {<do do'> <do do'> <do do'>} <do do'>4 <do do'>)\laissezVibrer s2. |
    r8 <do do'>( \t {<do do'> <do do'> <do do'>} <do do'>4 <do do'>)\laissezVibrer \clef treble |
    r4 <do' fa lab>2\arpeggio |
    s4 \pl <sib re lab'>\arpeggio <fa'' do'>\arpeggio
    s \pl <sib,, re lab'>\arpeggio <fa'' do'>\arpeggio
    \pl {s <sib,, re lab'> s} {<do' do'>--\pp <do do'>8( <do do'> \t {<do do'> <do do'> <do do'>)}} |
    <do do'>4 <re, fad dod'>\arpeggio s \pl <re fad dod'>\arpeggio <sold' mi'>\arpeggio s2. |
    R2.*7
    \det {<do, do'>4\fmolto <do do'>8 <do do'> \t {<do do'> <do do'> <do do'>} <do do'>4~} |
    <do do'>2. |

    %%% Ad libitum %%%
    \cmb #"p" #"très clair"
    <lab do>16[( <fa mib'>) r <lab do>-.] <mi fad'>2.--~ <mi fad'>2*3/2\laissezVibrer
    R2. \clef bass | r2 <solb, sib>16[( <mib reb'>) r <solb sib>-.] <mi mi'>4--~ |
    <mi mi'>2*3/2\laissezVibrer | r2 <lab, do>16[\ffsubito <fa mib'> r <lab do>] |

    %%% Agitato %%%
    <fad fad'>2\sfz r |
    R1 r4 <do' fa si>->\sfz r <do fa si>->\sfz | R1*3
    <do re>2--\mf <do re>4-- <do re>-- \t {<do re>\> <do re> <do re>}
    <do re>1--\p\laissezVibrer R1 |
    re2--\mf re4-- re-- \t {re\> re re}
    <do re>1--\p\laissezVibrer R1*2 |
    re2-- re4-- re-- \t {re--\> re-- re--}
    <sib re>1--\!\laissezVibrer s2
    \t {do4--( lab'-- mib--)} |
    <do si'>2-- r4 <do si'>2.-- | r4 <do si'> <do si'>2.-- r4 |
    r <do si'>--( <fa mi'>-- <lab sol'>-- \clef treble <mi' red'>2--) |
    r4 <sol do lab'>2.-- | r4 <mib' la re>2.-- r2 |
    s1 s2\> <sib fa' reb'>1\pp r2 R1. |

    %%% Allegro non troppo %%%
    R1 R2. R1*5 R2. R1 R2. R1 R2. R1
    \ottava #1
    r16\f <reb' fa>( <do si'>16.-.) <sol' sib>32( <mi re'>2)\laissezVibrer s1
    \ottava #0
    R1*4 R2.*3 R1*6

    %%% Moderato %%%
    R1*2 R2.*2 R1 R2. R1 R2. R1 s2. s1 s2. s1
    \ind #"molto legato" sib,,16 do sib'-- sib, do fa-- \mg fa, \md sib
    do \mg mib, \md sib' do |
    sib do sib'-- do, fa do'-- sib, do
    fa-- sib, do \mg mib, \md sib' \mg fa \md sib do |
    sib do sib'-- do, fa sib do-- mib, fa-- sib, do fa |
    sib, do-- reb do mib do fa-- sib, do fa sib do-- sib, do fa-- sib, |
    do sib'-- sib, do do'-- do, sib'-- sib, do'-- do, sib' sib, |
    do sib'-- do, sib' do-- sib, do sib'
    <sib, do>8->\mp r r2 | R1 \clef bass
    s2*2 r8 <sib, do>--( <la' dod>-- \clef treble <sib do sib' do>--)
    \pl <sold' re'>2--\laissezVibrer <sold' re'>--\laissezVibrer |

    %%% Allegro marcato %%%
    \ottava #1 <fad' mi' fa!>4-.\mf <mib, mi'! fa>-.
    <fad' mi' fa>-. <mib, mi' fa>-. |
    <fad' mi' fa>-. <mib, mi' fa>-.
    \ottava #0 <fad, mi' fa>-. s | R1*3
    \ottava #1 <fad''do' fa!>4-.\mf <si, dod sol'>-.
    <fad' do' fa>-. <si, dod sol'>-. |
    <fad' do' fa> <si, dod sol'>-. \ottava #0 <sib, re lab'>-. s | R1*2
    r2 r4 <sib, mib sol>-.--\p
    <fad' si>2--( <sib, mib sol>8) r <sib mib sol>4-.-- |
    <fad' si>2--( <sib, mib sol>8) r r4 | R1 r2 r4 <sib mib sol>-.-- |
    <fad' si>2--( <sib, mib sol>8) r <sib mib sol>4-.--
    <fad' si>2--( <sib, mib sol>8) r r4 |
    R1*4 r2 r8 \ottava #1 \pl {do'16\pp la'?} {\t {do( fa lab)}}
    <mi reb'>4-. |
    r2 r8 \pl {do,16 la'?} {\t {do( fa lab)}} <mi reb'>4-. | \ottava #0 R1 \clef treble |

    %%% Agitato %%%
    <re,,, do' re>2.--\f r4 |
    R1*3 \clef treble |
    \st {sib'''8->\p fa do mib-> sib fa fa'-> do |
    sib'-> fa do mib-> sib fa mib'-> sib |
    la'-> re, sol, fa'-> sib, mib, sol'-> do, |
    sib'-> mib, lab, mib'-> sib fa sol'-> do, |
    sib'-> mib, lab, si'-> fad dod sol'-> re |
    lab'-> mib sib fa sib mib lab-> mib |
    lab-> mib sib fa sib mib-> lab-> reb-> }| solb-> r r4 r1 |
    R1*3 R2. R2*5 R1*4
  }
  \relative {
    <do,,, do'>2--\ppp\laissezVibrer s2 fad2.--\laissezVibrer |
    <do do'>2--\laissezVibrer s2 fad2.--\laissezVibrer |
    <do do'>2--\laissezVibrer s2 fad2.--\laissezVibrer |
    <do do'>2--\laissezVibrer s2 fad2.--\laissezVibrer |
    <do do'>2--\laissezVibrer s2 fad2.--\laissezVibrer |
    <do do'>2--\laissezVibrer s2 fad2.--\laissezVibrer |
    \pl {<fa fa'>2 fa2\laissezVibrer}
    {s8 \ind #"en dehors" do''( \t {do do do} do4-- do)\laissezVibrer} fa,2. |
    \pl {fa,2 fa2\laissezVibrer}
    {s8 do''( \t {do do do} do4 do)\laissezVibrer} fa,2. |
    <reb, reb'>2\p reb2\laissezVibrer <reb' lab'>2.-- |
    reb,2-- reb2--\laissezVibrer<reb'-- lab'>2. |
    \pl <do sol'>4\arpeggio <mi' sib' re>\arpeggio s
    \pl <do,sol'>\arpeggio <mi' sib' re>\arpeggio s |
    <do, sol' mi'> s <sol' mi' sib'> |
    \pl <do,sol'>\arpeggio <mi' sib' re>\arpeggio s
    \pl <do,sol'>\arpeggio <mi' sib' re>\arpeggio s |
    \pl <do,sol'>\arpeggio <mi' sib' re>\arpeggio
    <do, do'>8\mp(\< <do do'> \t {<do do'> <do do'> <do do'>} |
    do4\!) r2 R2.*6
    \det {<do do'>4 <do do'>8 <do do'> \t {<do do'> <do do'> <do do'>} <do do'>4 |
    r8 <do do'>\mf\> \t {<do do'> <do do'> <do do'>} <do do'>4\!} |

    %%% Ad libitum %%%
    <solb'' sib>16[( <mib reb'>) r <solb sib>-.] <do, re'>2.--~ <do re'>2*3/2\laissezVibrer |
    r4 do8\p( do \t {do do do} do2) r4 do,--\pp | do8 do \t {do do do} do4 |
    do8\< do \t {do do do} do16 do do do |

    %%% Agitato %%%
    <re, re'>2*2\!\laissezVibrer R1 |
    r4 <do' fa si>-> r <do fa si>-> | R1*3
    <re, re'>2*3\laissezVibrer R1*2 |
    <re re'>2*3\laissezVibrer R1*3
    re'2*3\laissezVibrer
    re2*2 \ottava #-1
    \t {sib,8( mib fad} \t {si re sol)} s2 \ottava #0
    mib2*3--\laissezVibrer R1.*2
    mib8( mib') r4 r2 | \t {mib,8( fa' mi'!)} r4 r1 |
    \pl {mi,,,2*3\laissezVibrer }
    {\t {mi'4--\mf( si' sol'} \t {si, sol' \md mi'} \t {sol mi' si')}} \mg
    R1.*2

    %%% Allegro non troppo %%%
    R1 R2. R1*5 R2. R1 R2. R1 R2. R1
    <sol,,,, sol'>2*3/2->--\laissezVibrer s1 R1*4 R2.*3 R1*6

    %%% Moderato %%%
    R1*2 R2.*2 R1 R2. R1 R2. R1
    mib'16\mp\( mib' \md sib'( do) la-. fa'4..--\)\laissezVibrer |
    \mg r16 mib,( \md sib' do) \mg mib,( \md sib' do4.)
    \mg r16 mib,( \md sib' do) | \mg fa,,( fa' \md sib do~
    do4) sib16( fa' \mg fa, \md sib |
    do \mg fa, \md <sib do>2..) \mg |
    <mib,, mib'>4 <fa fa'>2*1/8 s16 s8 s4 |
    <mib mib'>8. <fa fa'>16~ <fa fa'>2*1/4 s8 s2 |
    <solb solb'>8. <lab lab'>16~ <lab lab'>2 |
    <solb solb'>4 <lab lab'>~ <lab lab'>16 <solb solb'>8. <lab lab'>8. <mib mib'>16~ |
    <mib mib'>8. <fa fa'>16~ <fa fa'>8 <solb solb'>~ <solb solb'>16 <lab lab'>8.~ |
    <lab lab'>4 r |
    \ind #"strict" <si, si'>16-- si'-. <do, do'>-- do'-.
    <si, si'>-- si'-. <re, re'>-- re'-.
    \simile <si, si'> si' <red, red'> red' |
    <si, si'> si' <fa, fa'> <fa' fa'>
    <solb, solb'> <solb' solb'> <fa, fa'> <fa' fa'>
    <la, la'>\< <la' la'> <lab, lab'> <lab' lab'>
    <sib, sib'> <sib' sib'> <sol, sol'> <sol' sol'> |
    \md \stemDown <sib' do>-.\mf si,-.
    \mg \stemUp <si,! sib' do>-. \md \stemDown si'-.
    <sib' do>-. \simile si, \mg \stemUp <si,! sib' do> \md \stemDown si' |
    <sib' do> si, \mg \stemUp <si,! sib' do> \md \stemDown si'
    <sib' do> si, \mg \stemUp <si,! sib' do> \md \stemDown si' \mg |
    <si,, si'>2\sfz\laissezVibrer s2 |

    %%% Allegro marcato %%%
    <si' lad'>4-. \pl { \t {si'8\ff si si}} do'4-. <si,, do'>-. \pl si' lad' |
    <si,,lad'>4-. \pl { \t {si'8\ff si si}} do'4-. <si,, do'>
    \pl <si, si'> <sib'' do mi fa>\sffz |
    \ottava #-1
    r si,,\sfz r si\sfz r8 si-. \t {si-- si si} si-> r r4
    \ottava #0 | R1
    <si' lad'>4-. \t {<do' re>8\ff <do re> <do re>} <do re>4 si,-.-. |
    <si  lad'> \t {<do' re>8\ff <do re> <do re>} <do re>4
    \pl <si,, si'> <sib'' do mi fa>\sffz |
    \ottava #-1
    r si,,\sfz r si\sfz r8 si-. \t {si-- si si} si-> r r4 |
    \ottava #0
    r2 r4 <do'' fa>-.-- <mi sold dod>2--( <do fa>8) r <do fa>4-.-- |
    <mi sold dod>2--( <do fa>8) r r4 |
    \ottava #-1
    r si,,-.\pp r si-. r si-. si-.
    \ottava #0 <do'' fa>-.-- |
    <mi sold dod>2--( <do fa>8) r <do fa>4-.--
    <mi sold dod>2--( <do fa>8) r r4 |
    R1*7

    %%% Agitato %%%
    <re,, re'>2.-- r4 | R1*3
    \st {sol'''8-> re la do-> sol re re'-> la |
    sol'-> re la do-> sol re do'-> sol |
    sol'-> do, fa, mi'?-> la, re, fa'-> sib, |
    sol'-> do, fa, do'-> sol re mib'-> lab, |
    sol'-> do, fa, mi'-> la, re, mib'-> sib |
    fa'-> do sol re sol do fa-> do
    fa-> do sol re sol do-> \clef treble fa-> sib->} |
    mib-> r r4 r1 | R1*3 R2. R2*5 R1*4
  }
}

ActeUnSceneUnBisPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R2.*6
    \stemUp \mg
    \ttt { lab,16 sib reb mi sol do } \md
    \ttt { mib fa lab si dod mi} \ottava #1
    \t { sol la do} re32 mib sold la \stemNeutral
    <re, re'>4 \ottava #0 r8 re,,~re4 r |
    R2. <re' re'>4 <re, re'> \mg <re, re'>2 \md |
    R2.
    <do'' fa la re>4\arpeggio \laissezVibrer <si do re fa la>2 |
    \pl <fa solb lab> <dob' mib lab> <lab reb sol>4\laissezVibrer |
    r4 <mid si' fad'>2\laissezVibrer R2.*2 |
    \ottava #1 \pl {<si' sol'>8 <si sol'>4 <si sol'>8 <si sol'>4~ <si sol'>4.}
    {<mi' re'?>8 <mi re'>4 <mi re'>8 <mi re'>4~ <mi re'>8 <mi re'>4}
    \ottava #0 r8\fermata r4 | R2.
    \ottava #1 \pl {<si, sol'>8 <si sol'>4 <si sol'>8 <si sol'>4~ <si sol'>2~<si sol'>8}
    {<mi' re'>8 <mi re'>4 <mi re'>8 <mi re'>4~ <mi re'>4 <mi re'>4.}
    \ottava #0 r8\fermata r4 | R1 R2 \clef bass

    %%% Largo %%%
    do,,,8 do \t {do do do} do4 do~ | do2\laissezVibrer R2.
    r8 do \t {do do do~ } do2.\laissezVibrer R2
    r8 do \t {do do do~ } do4~ do2.\laissezVibrer \clef treble
    r2 r4 <dob' lab' sib> | <sib sol'>2 r4 <dob lab' sib> | <sib sol'>2 r4 |
    R2 <dob sib'>2\arpeggio r R2.*2 R2*2
    r2 r8 <la sib'> <lab sol'>4 r8 <la sib'> | <lab sol'>2
    r8 <sol sib re sol> r4 |
    r8 <la do mi sol> <do mi? sol sib> r r4 |
    r2 r8 <lab reb sol> <reb fa sib> <mi sol lab sib reb> |
    R2.
    r4 <sib re> <mib, sib' mib>2\arpeggio
    <sib' mib sib'>8\arpeggio r r4 |
    <fad la red>2.\arpeggio
    r2 <fad la red>4 <mi sold mi'>2 r4 |

    %%% Adagio %%%
    r4 <mi' si'>2.\laissezVibrer R1 <mi si'>1\laissezVibrer |
    r2 r4 <mi si'>4\laissezVibrer R1 r2 <mi si'>\laissezVibrer |
    R1 r4 <mi si'>2.\laissezVibrer R1 <mi si'>1\laissezVibrer |
    r2 r4 <re la'>\laissezVibrer r2 r8 <re la'>4.\laissezVibrer |
    r2 <re la'>\laissezVibrer r4 r8 <re la'>~<re la'>2\laissezVibrer |
    r4 <re la'>2.\laissezVibrer r8 <re la'>~<re la'>2 r4 |
    <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol> |
    <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol> |
    <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol> |
    <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol> |
    <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol> |
    <re la'>4 \pl { <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol>
      <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol>
      <re la'>4 re re8 mi do4 do8 mi re4 do <do si'>8 <mi sol>
      <re la'>4 <re la'>8 <mi sol> <do si'>4 <do si'>8 <mi sol>
    <re la'>4 <re la'>8 <mi sol>}
    {mi'4 re re mi mi re re mi <la, mi'>8 <sol fad'> <si re>4 <si re>8 <sol fad'>
    <la mi'>4 <la mi'>8 <sol fad'> <si re>4 mi mi8 re fad4 fad8 re mi4 mi8 re fad4}
    <do, si'>4 <do si'> | <do si'> <do si'> <si' fad'> <si fad'> |
    <si mi> <do, si'> <do si'> <do si'> |
    <do si'> \pl {<sol' si> <sol si> <sol si>}
    {fad' fad8 re mi4 } |
    R1 r2 r4 <si fad'> | <re fad dod'>4\fermata r r2 |
    R2 <dod, si'>8 r <re si'>8 r <re si'> r r4 \clef bass
    r4 <mi, si'>
  }
  \relative {
    \ottava #-1
    <dod,,, sold' dod>2.\laissezVibrer
    \ottava #0
    \loco <dod' dod'>2. dod4 dod8 dod \t {dod dod dod} |
    \ottava #-1
    <dod, dod'>2.
    \pl {fa4 dod}
    {\ttt {r16 lad' si dod mi sold} fa4 }
    \ottava #0
    \pl {fa4 dod}
    {\ttt {r16 lad' si dod mi sold} fa4 }
    r2 |
    \stemDown
    \ttt { lab,,16 sib reb mi sol do }
    \ttt { mib fa lab si dod mi} \md
    \ttt { sol la do re mib sold} \mg \stemNeutral
    <re,,, re'>4 r8 re~re4 r |
    <fad, fad'>2 r4 |
    re' r s2 |
    \pl {sib4 reb16 sib lab8~ lab4} {sib' reb16 sib lab8~lab4}
    <sol, sol'>2.\arpeggio \laissezVibrer s2 <lad'' si dod mi>4\laissezVibrer
    r4 <re, mib fa lab do>2\laissezVibrer R2.
    r8 <reb,reb'>8~ <reb reb'>2~ <reb reb'>2.\laissezVibrer R2.
    r8 <reb reb'>8~ <reb reb'>2~ <reb reb'>2.\laissezVibrer R1*2 R2

    %%% Largo %%%
    <do, do'>2~ <do do'>~ <do do'>\laissezVibrer R2.
    r8 do' \t {do do do} do4 do2\laissezVibrer R2
    r8 do \t {do do do} do4~do2.\laissezVibrer
    r2 r4 <fad sol'> | <reb do'>2 r4 <fad sol'> |
    <reb do'>2 r4 | <lab lab'>2~ <lab lab'> r2 |
    R2.*2 R2*2
    r2 r8 <solb' lab fa'> <reb sib'>4 r8 <solb lab fa'> <reb sib'>2 |
    r8 reb r4 | r8 la' <mib mib'> r r4 |
    r2 r8 sib mi! si' | R2.
    r4 sib <sol>2\arpeggio ~ sol
    <fad>2.\arpeggio r2 si4 mi,2 r4 |

    %%% Adagio %%%
    R1*5 r2 sol\laissezVibrer
    r4 r8 <dod, dod'>8~ <dod dod'>2\laissezVibrer |
    r4 <sol sol'>2.\laissezVibrer r8 <dod dod'>~<dod dod'>2.\laissezVibrer |
    <sol sol'>1\laissezVibrer r2 r4 <sib sib'>\laissezVibrer |
    r2 r8 <sol sol'>4. | r2 <sib sib'>2\laissezVibrer |
    r4 r8 <sol sol'>~ <sol sol'>2\laissezVibrer |
    r2 <sol sol'>~ <sol sol'>4 r r2 |
    <mi mi'>1~ <mi mi'>2. <mi mi'>4~<mi mi'>1~<mi mi'>2 r |
    R1*7 r2 <fa''? do'>4 <fa do'> | <sol do> r r2 |
    r4 \pl {fa4 fa8 la sol4 } {<do mi> <do mi> <do mi>} |
    R1 r2 r4 <do mi> <fa,? do'? mi>\fermata r r2 |
    R2 re8 r sold, r fa r r4 | r <dod sold'> |
  }
}

InterludeUnPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R1. R1*3 R1. R1 R1.*2 R1*2 R1.*2 R1 R2. R2 R2.
    <fa' sol sib do fad>1\laissezVibrer \mf
    r4 r8 \ind #"en dehors" mi,32->(\ff fa16.)~ fa4 r |
    r8 <mi mi'>32->( fa16.)~ fa2 <sol, mi' sol>16(\f <sib fa' sib>8.)~ <sib fa' sib>2 |
    r2 <sol mi' sol>8\mf ( <sib fa' sib>4.)~ |
    <sib fa' sib>8 <mi sol>32( <fa sib>) <do sol' do>16->~ <do sol' do>4
    \clef bass r8 <mi, si' mi>16\>( <fa re' fa>)~ <fa re' fa>8 r |
    <re sol re'>2\p <sol mi' sol>( <sib fa' sib>4) r | R1 \clef treble
    <fa sol mi'>4---> <sold' red' la'>---> \ottava #1 <la' red sib'>---> |
    \ind #"très clair" fad'16\pp ( sol fad re do re fad sol fad re do re |
    fad4) fad16( sol fad re do re fad sol |
    fad4) \ottava #0 r2 R2.*3
    fad16( sol fad re do re fad sol fad re do re |
    fad4) r2 | R2.*2
    fad16( sol fad mi dod mi fad sol fad mi dod mi |
    fad4) r2 R2.*4
  }
  \relative {
    R1. R1*3 R1. R1 R1.*2 R1*2 R1.*2 R1 R2. R2 R2.
    <sol,, sol'>1\laissezVibrer r4 r8 mi''32->( fa16.)~ fa8 do,-- sib-- dod-- |
    <sol sol' re'>1\arpeggio r8 <dod dod'>4.-- |
    sol'8 <sol, sol'>-- sol' <sol, sol'>--
    sol' <sol, sol'>-- sol' <sol, sol'>-- |
    sol' <sol, sol'>-- sol' <sol, sol'>--
    sol' <dod, dod'>-- dod'-- <dod, dod'>-- |
    <sol sol'>16 sol' <sol, sol'> sol'
    <sol, sol'> sol' <sol, sol'> sol'
    <sol, sol'> sol' <sol, sol'> sol'
    <sol, sol'> sol' <sol, sol'> sol'
    <sol, sol'> sol' <sol, sol'> sol'
    <sol, sol'> sol' <sol, sol'> sol' |
    <sol, sol'> sol' <sol, sol'> sol'
    <sol, sol'> sol' <sol, sol'> sol'
    <dod, dod'> dod' <dod, dod'> dod'
    <dod, dod'> dod' <dod, dod'> dod' |
    <fad,, fad'>8-- <fad fad'>-- <fad fad'>--\> <fad fad'>-- <fad fad'>-- <fad fad'>-- |
    <sol sol'>2--\! r4 | R2.*15
  }
}

ActeUnSceneDeuxPiano = { \Piano
  \PianoDeuxMains
  \relative {
    %%% Air de la Soprano2 %%%

    \repeat unfold 6 {R2.*2 R1*2} R2. | \clef bass
    dod,8 re fad sold fad re | dod1~ dod~ | dod2 r4 | re fad8 sold fad4 |
    mi8 fa la si la fa mi fa | la si la4 fa8 la si re | si4 la8 si re fa |
    \clef treble re4 fa8 sol si do | \ottava #1 si''8 do si sol fa sol si4 |
    si8 do si sol fa sol si do | si do si sol fa sol | fa re si re la4 |
    \ottava #0
    <lab, lab'>1 ~ <lab lab'>2. r4 | R2.*2 R1*2 |
    R2. lab8 re, do lab s4 \clef bass | r4 <re, sold>2.\arpeggio \laissezVibrer R1 |
    R2. \clef treble | r4 r8 \ottava #1 fa''''! sol,!4 | \ottava #0
    r4 r8 \ottava #1 fa' do sol sold re | do' sol re sold la,4 \ottava #0 r | R2.*2 |
    r4 \ottava #1 fa'' \ottava #0 r2 R1 | R2.*2 | r8 \ottava #1 fa do sol fad' si, mi,4 | \ottava #0 R1 | R2. |
    r8 \ottava #1 fa'! do sol lad'4 | red,4 \ottava #0 r r2 |

    %FIXME: line breaks make the "15ma" text move to the left.
    r2 \ottava #2
    sol!4 do | si8 sol fa4 si8 do | si sol fa sol si4 |
    sol4 fa8 do' si4 do8 si | sol fa sol si r do fa, sol |
    si4 do fa, | si8 sol fa sol si4 | si8 do si sol fa sol si do |
    si sol fa sol si4 si8 do | si sol fa sol si do | si sol fa sol si4 |
    si8 do si sol fa4 si8 do | si sol fa sol si4 si8 do |
    si sol fa4 si8 do | si sol fa sol si4 |
    si8 do si sol fa4 si8 do | si sol fa sol si4 r |
    si8 do si sol fa4\laissezVibrer \ottava #0 | R2. R1 | r2
    \ottava #1 <si,, dod lad'>2\fermata \ottava #0 |

    %%% Récitatif %%%
    R2.*2 R1 R2.*3 R1 R2.*5
    <sol, lab mib'>8 r r2 \clef bass
    r8 \t {sold,,16 la si} re8 r |
    R2. R1*2 R2.*5 R1

    %%% Duo %%%
    \repeat unfold 34 <re sib' re>8
    \repeat unfold 14 <mi do' mi>
    \repeat unfold 8 <sol red' fad>
    \repeat unfold 8 <fa reb' solb> r4 \clef treble |
    R2
    \repeat unfold 12 { r8 <si fa' sol>}
    <si fa' sol> r <si fa' sol> <si fa' sol> \clef bass |
    r4 <mi, fad lad> <fad lad dod> <si, mi> <fad' lad dod> \clef treble
    <dod' mi sold> <mi lad red> |
    <fad, lad mi'> <lad dod sold'> <mi' lad red> <sold mi' lad> |
    <do sol' re'> \clef bass <mib,, sib'> <sib' fa'> |
    <lab, mib'> \clef treble <sib' fa' do'> <fa' do' sol'> |
    <si fad' sol re'>\arpeggio <fad' si>8 <fad si> <red fad> <red fad> |
    <lad red> <lad red> r4 r2 \clef bass |

    %%% Piu vivo %%%
    r4 sol,,16 lab sol sib lab sib lab reb |
    sib reb sib mib reb mib reb mi red mi red fad mi fad mi la |
    fad la fad si la si la do si do si re \clef treble |
    do re do fa re fa re sol fa sol fa lab \clef bass |
    \mg <sol,,, sol'>8 \md sol' \mg <re' sol> \md
    <fa sib reb mib>~ <fa sib reb mib>2 |
    dod2 dod4
    \mg sol,8 re' \md sol \mg <re' sol> \md <fa sib reb mi!>2 |
    dod2.
    \mg sol,8 re' \md lab' sol \mg <re' sol> \md
    <sol sib dod fad>4. |
    dod,4 r2 \clef treble | R2.
    \mg sol,8 re' la' \md <la' re mi sold>4.\laissezVibrer R2.
    \mg si,,8 fad' dod'\md <la' re mi sold>4.\laissezVibrer R2.
    \mg <re,,, re'>8. re''16 \md <si' mi>8 <re sold la>4.\laissezVibrer R2.*2
    r8 <re' mi re' mi> r2 | R2.*2 \clef bass
    r4 r8 <re,, sold dod> r4 | R2.
    \pl {fa2 s2} <sib re fa>1\arpeggio <sib re>1\arpeggio \clef treble
    <si' re mi>2\laissezVibrer r \clef bass |

    %%% Tempo giusto %%%
    \repeat unfold 16 <re,, sib' re>8
    \repeat unfold 8 <mi do' mi>
    \repeat unfold 8 <red si' red>
    <sol si> <sol si> <sol si> <sol si> \clef treble
    \t {r si si'} \t {la la' do} |
    <dod, dod'>2 r4 \clef bass |
    r8 <si,, re> lad' <si, re> \clef treble r <fa''' si> mi' <fa, si> \clef bass |
    r  <si,,,re> lad' <si, re> \clef treble r <fa''' si> mi' <fa, si> | R2.
    <lab, lab'>2\arpeggio \clef bass |
    r8 <re,, sold> dod' <re, sold> \clef treble \ottava #1 r <do''' fa> <si' mi> <do, fa>
    \clef bass \ottava #0 r <re,,, sold> dod' <re, sold> \clef treble \ottava #1
    r <do''' fa> <si' mi>2. \ottava #0
    \tt {la,,,16 mi' si' re mi} \stemUp <si la'>4 |
    <la si'>4 <la si'> \stemNeutral |
    \tt {la'16 sol, la re mi} \stemUp <si la'>4 |
    <la si'> <la si'> <si la'> s
    <mi re'>8 \t {la,16 re sol} <mi re'>4 |
    <re mi'> <re mi'> <mi re'> R2.

    R1 R2.*3 R2 R2. R1*4
  }
  \relative {
    %%% Air de la Soprano2 %%%

    R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1*2 R2. r2 mi,4~ | mi1~ mi2 r4 fad8 sold | si2.~|si2 r4|
    R1*2 | re,4 si' sold8 fad | re4 sold8 fad re dod | sold1 | re'8 fad sold4 re8 dod sold4~ |
    sold2.| R2. | dod,1~ dod~ | dod2 r4 | re fad8 sold fad re |
    <dod dod'>1~ <dod dod'>~ | <dod dod'>2 r4 | R2.|
    << {\voiceTwo <mi mi'>1~\laissezVibrer s1 <dod dod'>2.~ <dod dod'>2 }\\
    { \voiceOne r2 \clef treble fa''8 sol si do si sol fa sol si4 r4 \clef bass
    r4 la,8 si re4 si8 re fa sol } >> r4
    <sol,,,! sol'!>1~ <sol sol'>2. r4 | R2.*2 | <sol sol'>1~ <sol sol'>2. r4 |
    R2. << {s2 sol''8 re s1 s1 dod8 re fad2~ fad r4 s1 s2.} \\ 
    {R2. <sold,, sold'>1~ <sold sold'>~ <sold sold'>2.~ <sold sold'>~
    <sold sold'>1~ <sold sold'>2.}>> r4 R2.*2 R1*2 R2.*2 R1*2 R2.*2 \clef treble
    <re''' la'>1\laissezVibrer r2 \ottava #1
    sol''!4 do | si8 sol fa4 si8 do | si sol fa sol si4 |
    sol4 fa8 do' si4 do8 si | sol fa sol si r do fa, sol |
    si4 do fa, | si8 sol fa4 si8 fa | sol1~|sol2. \ottava #0 r4 | R2.*2 |
    R1*2 |R2.*2 | R1*2 | R2.*2 | R1 r2 <la,,! do!>2\fermata \clef bass |

    %%% Récitatif %%%
    r4 r8 mi,4. dod2.\laissezVibrer R1 R2.
    r4 r8 reb4. sib2.\laissezVibrer R1 R2.*2
    r4 r8 mib4 lab,8~ lab2.\laissezVibrer R2.
    <lab mi'>8 r r2 |
    r8 \t {sold,16 la si} re8 r |
    R2.
    sol!1\laissezVibrer R1 R2.*5 R1

    %%% Duo %%%
    \repeat unfold 17 <re sib'>4
    \repeat unfold 7 <reb lab'>
    \repeat unfold 4 <si lad'>
    \repeat unfold 4 <sib la'> r
    R2 reb'4 reb lab reb lab fa lab reb lab fa reb |
    reb' r8 lab r4 |
    <mi, mi'> <mi' si'> si' |
    <mi,, mi'> <si'' mi> <mi fad> <lad dod> |
    <mi, si'> <si' mi fad> <mi, si'> <si' fad' dod'> |
    <reb,, reb'> <reb' lab'> <lab' mib'> |
    <reb,, reb'> <reb' lab' mib'> <lab' mib' sib'> |
    <mib' sib' dob solb'>\arpeggio \clef treble
    <sib'' mib>8 <sib mib> <sol sib> <sol sib>
    <re sol> <re sol> r4 r2 \clef bass |

    %%% Piu vivo %%%
    r4 sol,,,16 lab sol sib lab sib lab reb |
    sib reb sib mib reb mib reb mi red mi red fad mi fad mi la |
    fad la fad si la si la do si do si re  |
    do re do fa re fa re sol fa sol fa lab |
    s1 dod,,2. s1 dod4 dod2 |
    s1 dod4 r2 | R2.
    s2. R2. s2. R2. s2. R2.*5
    %FIXME: keep this staff alive
    r4 r8 <re mi> r4 | R2.
    \pl <fa, fa'>1\arpeggio {<sib' re>2\arpeggio fad'}
    sol\arpeggio lab\laissezVibrer R1 |

    %%% Tempo giusto %%%
    \repeat unfold 8 <re,, sib'>4
    \repeat unfold 4 <dod la'>
    \repeat unfold 4 <si red si'> |
    <si sol'> r8 <sib sib'>4 <lab lab'> <si si'>8 |
    <sol sol'>2 r4 |
    <sol sol'>2~ <sol sol'>8 sol' \t {sol sol sol} |
    <sol,sol'>2~ <sol sol'>8 sol' \t {sol sol sol} |
    <sol,sol'>8 r r2 | r4 \t {re''8 si dod } |
    <sold,sold'>2~ <sold sold'>8 sold' \t {sold sold sold} |
    <sold,sold'>4~ <sold sold'>8 sold' \t {sold sold sold} |
    <sold,sold'>8 r r <sold sold'> <fad fad'> <la la'> |
    \pl <fa fa'>2\laissezVibrer
    {s4 \stemUp \ttt {mi''16 la re \stemDown \md sol si mi} }
    \mg \stemUp \ttt {si,, mi la re \stemDown \md sol mi'}
    \mg \stemUp \ttt {sol,,,re'la' \stemDown \md mi' si' sol'}
    \mg \stemNeutral \pl <fa,,,, fa'>2\laissezVibrer
    {s4 \clef treble \stemUp
    \ttt {re'''16 mi fa sol \stemDown \md si mi \mg \clef bass } }
    \stemUp \ttt {sol,, do re \stemDown \md la' si mi}
    \stemUp \mg \ttt {do,, sol' re' \stemDown \md la' mi' si' \mg}
    fa,,,32 la si mi \md sol la do re \mg  \clef treble \stemNeutral
    mi fa sol la \md si re mi la \mg \clef bass |
    \pl <fad,,,, fad'>2\laissezVibrer
    {s4 \stemDown \clef treble \ttt {sol''16 re' la' \md mi' fad si } }
    \mg \ttt {fad,, si mi \md la re sol }
    \mg \clef bass \ttt {fad,,, mib' sib' \md fa' do' sol'}
    \mg \clef treble \ttt {fa, si mi \md \ottava #1
    sib' mib la } \ottava #0 \mg R2.
    R1 R2.*3 R2 R2. R1*4
  }
}

InterludeDeuxPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    R2*13 r4 \acciaccatura red'16 <mi, mi'>4\p
    <si re>1~ <si re>~ <si re>~ <si re>4 r r2 | R2.
    <la re>1~ <la re>2 r4 | R2.
    <fa si re mi>2-- r | R2. <fa sold mi'>4-- r |
  }
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    R2*14
    \pl {<la, mi'>1~ <la mi'>~ <la mi'>~ <la mi'>4 }
    {s2 mi''4-.--\laissezVibrer mi,-.--\laissezVibrer
    s2 mi'4-.--\laissezVibrer mi,-.--\laissezVibrer
    s2 mi'4-.--\laissezVibrer mi,-.--\laissezVibrer s } r r2 | R2.
    \pl {<fa, do'>1~ <fa do'>2}
    {s2 mi''4-.--\laissezVibrer mi,-.--\laissezVibrer s2} r4 |
    R2. <dod, la'>2-- r | R2. <dod la'>4-- r |
  }
}

ActeUnSceneTroisPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R2.*20 \clef bass sol2.~\mp sol4 r sol8\> sol sol2.~\! sol4 r8 sol \t {sol\> sol sol} |

    %%% Lamento %%%
    sol1.\!\laissezVibrer r1 r4 sol4~\p sol1 la2~-- la1~ la8 la\> \t {la la la~} la1\! r2 |
    sib,8\mp sib \t {sib--\> sib-- sib~--} sib4\! r r2 |
    \simile dob8  dob \t {dob dob dob~} dob4 r2 |
    r8    sib \t {sib sib sib~} sib4 r2 |
    r8    dob \t {dob dob dob~} dob4 r2 |
    r8    sib \t {sib sib sib~} sib4 r2 |
    r8    dob \t {dob dob dob~} dob4 r2 |
    r8    mi,\mf \t {mi  mi  mi~ } mi4  r  |
    r8    mi  \t {mi  mi  mi~ } mi4  r  |
    r8    mi  \t {mi  mi  mi~ } mi4  r  |
    r8    mi  \t {mi  mi  mi~ } mi4  r  |
    <do'do'>4.\f <do do'> <do do'>4-- <do do'>-- <do do'>-- <do do'>4.---> r8 r4 | R2*2

    %%% Tempo I %%%
    R2.*14

    %%% Tempo II %%%
    R1. r8 do,\mp \t {do do do} do4-- do2.--\laissezVibrer | R1.*4 R1*5/4
    <si'' red sold>1\pp\arpeggio \laissezVibrer R2. r4 <mid, lad mid'>--
  }
  \relative {
    do,,8.--\mp do16~-- do8 do\< do do | do2.--\! |
    do8.-- do16~-- do8 do\< do do | do2.--\!\laissezVibrer
    R2.*7
    si8.\p si16~ si8 si\> si si | sib2.\pp |
    si8. si16~ si8 si\> si si | sib2.\! |
    si8.-- si16~-- si8 si\> si si | \ottava #-1 <re, dod'>2.\p\laissezVibrer \ottava #0
    R2.*7

    %%% Lamento %%%
    R1.*5 sib'2\pp( re4) r r2 reb( fa4) r2 sib,( reb4) r2 re( fa4) r2 sib, reb4 r2 mib si4 r2|
    \ottava #-1
    mi,2\p r mi r mi r mi r <reb reb'>4. <reb reb'> <reb reb'>4-- <reb reb'>-- <reb reb'>--|
    <reb reb'>4.---> \ottava #0 r8 r4 | R2*2

    %%% Tempo I %%%
    R2.*3
    r4 mi'--\pp r r mi-- r r mi-- r \ottava #-1 |
    <mi,mi'>--\mp <mi mi'>-- r <mi mi'>-- <mi mi'>-- r <mi mi'>\< <mi mi'> <mi mi'>
    \ottava #0 R2.*5

    %%% Tempo II %%%
    R1. \ottava #-1 do1.\pp\laissezVibrer \ottava #0 R1.*4 R1*5/4
    <do' sol' mi'>1\arpeggio \laissezVibrer R2.
    r4 <si fad' si>--
  }
}

ActeUnSceneTroisBisPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R1*3 <do fad>8 <red la'>~<red la'>2 r4 |
    R1*2 <mi, la red>8 <sol do fad>~<sol do fad>2 r4 |
    R1 r2 <do mib>4 <si fa'> | <fad fad'>1~<fad fad'>~<fad fad'>2. r4 |
    R1*8 r2 r4 dod' | <mi sol> r r2 |
    r2 \t {r16 <lad, dod mi>8 <lad dod mi> <lad dod mi>16}
    \t {r16 <lad dod mi>8 <lad dod mi> <lad dod mi>16} |
    \t {r16 <sold lad dod mi>8 <sold lad dod mi> <sold lad dod mi>16}
    \t {r16 <sold lad dod mi>8 <sold lad dod mi> <sold lad dod mi>16}
    \t {r16 <dod mi sol la>8 <dod mi sol la> <dod mi sol la>16}
    \t {r16 <mi sol la do>8 <mi sol la do> <mi sol la do>16 } |
    <fad,fad'>1~<fad fad'> R1
    <sol red' fad>\arpeggio %%% Tomb Raider II !!!
    <sol fad'>2 <sol fad'> <sib do fad> <sib do fad> <sib do fad> <sib do fad> |
    <sib do fad> <sib do fad> <sib do fad> <sib do fad> <sib do fad> <sib do fad>|
    <sib fad' la>2.\arpeggio r4 R2. R1*2
    \tt {fad16 sol la do re}\tt {fad, sol la do re}\tt {fad, sol la do re}\tt {fad, sol la do re}
    \tt {fad, sol la do re} \tt {fad, sol la do re} \tt {fad, sol la do re} \tt {fad, sol la do re}
    \tt {fad, sol la do re} \tt {fad, sol la do re} \tt {fad, sol la do re} \tt {fad, sol la do re}
    \tt {fad, sol la do re} fad, sol la do re fad, sol la do re fad, sol |
    la do re fad, sol la do re \t {fad,8 sol la} \t {do re fad,} |
    \t {sol la do} \t {re fad, sol} \t {la do re} fad, sol |
    la do re fad, sol la do re | <fad, fad'>1~<fad fad'>~<fad fad'>~<fad fad'>2. r4 |
    R1*6 <sib mi la>8 <reb mi sol do>~<reb mi sol do>2 r4 |
    do2~ do8 do \t {do do do} do4 do2.\laissezVibrer | R1*9
    <sol' dod fad>2*2/1\laissezVibrer <sol dod fad>2*2/1\laissezVibrer
    <sol dod fad>2*2/1\laissezVibrer R1
  }
  \relative {
    R1*3 <dod, la'>8 <sib mi sol>~<sib mi sol>2 r4 |
    R1*2 \pl re,2. {sib'8 <sold dod>~<sold dod>2} r4 |
    R1 r2 <lad mi>4 sold <fad, fad'>1~<fad fad'>~<fad fad'>2. r4 |
    R1*8 r2 r4 sib'' <fa lab> r r2 |
    R1 \t {<si,, si'>8 <fa' fa'> <re re'>} \t {<si si'> <fa' fa'> <re re'>}
    \t {<si si'> <la la'> <fa' fa'>} \t {<re re'> <si si'> <la la'>} |
    <fad fad'>1~ fad'8 fad \t {fad fad fad} fad2
    R1
    <si>1\arpeggio si2 si <si sol'> <si sol'> <si sol'> <si sol'> |
    <si sol'> <si sol'> <si sol'> <si sol'> <sold mi'> <sold mi'> |
    <do, sold' mi'>2.\arpeggio r4 | R2. R1*2
    R1*7
    <fad, fad'>1~ fad'4~ fad8 fad \t {fad fad fad} fad4~ fad1~ fad2. r4 |
    R1*6 <la re fa>8 <fad si sold'>~<fad si sold'>2 r4 | R1*11
    <fad' do'>2*2/1\laissezVibrer <fad do'>2*2/1\laissezVibrer
    <fad do'>2*2/1\laissezVibrer R1
  }
}

ActeUnSceneTroisTerPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R2*3 R2. R2*2 R2.
    <re re'>8 r r2 R2.*2 |
    <si fad' sol re'>2\arpeggio r4 |
    <sib sib'>8 r r2 | R2. R1*2
    r4 r8 r16 \ottava #1
    \pl {sol''' <fad, fad'>8 <lab lab'>16 <mi mi'><sol, sol'> re''}
    {<sol sol'>16 fad <fa fa'> lab mi sol, <re' re'>} r8 |
    r4 r16 <si si'> <la la'> <mi mi'> r <red red'> r <fa fa'> r4 |
    r8 r16 \pl {mib la, fa' mi'8} {mib16 la fa <mi mi'>8} r
    <si si'>16 <do do'> <sib sib'>8 r |
    r16 <solb solb'> <fa fa'>8 r <do' do'>16 <reb reb'> <si si'>8 r16 <fa fa'>
    r \stemDown <sol, sol'>\noBeam \stemUp <fad'' fad'>8\noBeam \stemNeutral |
    r8 <dod dod'>16 <re re'> <do do'>8 <re re'>16 <mib mib'> r
    <la, la'> <red red'> <mi mi'> | re'2.\laissezVibrer
    \ottava #0
    R2.*8
    <re,,, mib re'>2.\arpeggio \laissezVibrer | R2.*4
    <re mib re'>2.\arpeggio \laissezVibrer R2.*17
    \ottava #1
    \pl {fa''16 dod do8} {<fa fa'>16 dod' do8} r16
    \pl {do, fa dod} {do' <fa, fa'> dod'} \ottava #0 r4 |
    R2.*2 r2 r8 r16 \ottava #1 <do, do'>
    \pl {fa,, dod' mi do' mi <dod, dod'>}
    {fa' dod mi8 <mi mi'>16 dod} r8 r4 |
    r16 <sol' sol'> r <dod, dod'> r16
    \pl {<dod, dod'> sol' s} {s sol' <red red'>} r4|
    \pl {sol,16 s s <dod, dod'> sol' s s fad'}
    {sol <red red'> \oneVoice r \voiceOne s sol <red red'> \oneVoice r \voiceOne fad' }
    <fa, fa'> <mi mi'> r8 |
    \pl sol, sol'' \ottava #0 r r4 r2 |
    R2.*8
    r2 \ottava #1 <mi, fa'>8 r16 <la sold'> \ottava #0 |
    R2.*2
    r4 r8 \ottava #1 mi'16 <dod, dod'> do'8 <sold sold'>16 <si si'> \ottava #0 |
    R2.*2
    r8 r16 \ottava #1 dod do,8 <si sold' si> r16 <re si' re> r8 <re mi re' mi>16 <re mi re' mi>
    \ottava #0 r8 r4
    \mg <sol,,, sib re> \md <sol' sib re> \mg <sib, re sol> \md <fad' si red> |
    \mg <si, red fad> \md <sol' si red fad> <sib re sol> |
    R2.*19
  }
  \relative {
    R2*3 R2. R2*2 R2.*4
    <mib, sib'>2\arpeggio r4 | R2.*2 R1*6 R2.
    re,2.\laissezVibrer R2.*2 re2.\laissezVibrer R2. re\laissezVibrer R2.*2
    re2.\laissezVibrer R2.*2 re2.\laissezVibrer R2.*5
    r8 sold la do dod mi | fa,2.\laissezVibrer R2.
    r8 sold la do dod mi | fa,2.\laissezVibrer R2.
    r8 sold la do la sold| dod,2.\laissezVibrer R2.
    r8 mi fa sold la do  | dod,2.\laissezVibrer R2.
    r8 mi fa sold fa mi  | <la, la'>2.\laissezVibrer R2.*2
    <la la'>2.\laissezVibrer R2.*5 R1
    fad'2.\laissezVibrer R2.*2 fad2.\laissezVibrer R2.*2
    <fa, fa'>2.\laissezVibrer R2. r4 <dod' dod'>2 |
    <fa, fa'>2.\laissezVibrer R2. r4 <la la'>2 |
    \ottava #-1
    <dod, dod'>2.\laissezVibrer R2. r4 <la' la'>2 |
    <dod, dod'>2.*1/3\laissezVibrer \ottava #0 s2 s2. s4
    \pl {fa''!8 fa,4.} {<sib' re>4 <si red fad>} |
    \ottava #-1
    <la,,, la'>2.\laissezVibrer \ottava #0 R2.*18
  }
}

InterludeTroisPiano = { \Piano
  \PianoDeuxMains
  \relative {
    r2 r4 <do reb>8 r |
    r2 <do reb>8 r | R1 R2. \clef bass
    <do,mib si'>8 <do mib si'>4 <do mib si'>
    <do mib si'> <do mib si'>8 |
    <do mib si'> <do mib si'>4 <do mib si'> <do mib si'>8 |
    <mi! sol do mib> <mi sol do mib>4 <mi sol do mib>
    <mi sol do mib> <mi sol do mib>8 |
    <mi sol do mib> <mi sol do mib>4 <mi sol do mib> <fa lab reb mi>8 |
    <mi sol do mib> <mi sol do mib>4 <mi sol do mib>
    <mi sol do mib> <mi sol do mib>8 |
    <mi sol do mib> <mi sol do mib>4 <mi sol do mib> <mi sol do mib>8 |
    <fa si> <re sold> <fa si> <re sold> <fa si> <reb do'> |
    <fa si> <re sold> <fa si> <re sold> \clef treble |
    <lab' si dod re sol>4 <lab si dod re sol> <lab si dod re sol> |
    <lab si dod re sol> <lab si dod re sol> |
    <si re fad sol sib> <si re fad sol sib> |
    <si re fad sol sib> <si re fad sol sib> \clef bass |
    \stemDown sol16 \stemUp \mg sol,, sol' \stemDown \md mi' \stemUp \mg mi,, mi'
    \stemDown \md mi' \stemUp \mg sold, |
    \stemDown \md sold' \stemUp \mg mi, mi' \stemDown \md do' \stemUp \mg sold,
    \stemDown \md sold' \stemUp \mg mi \stemDown \md mi' \clef treble | \stemNeutral s4
    r16 re' sib' dod | <fad, lad dod fa!>8 r r4 |
  }
  \relative {
    r2 r4 re,8 r |
    r2 re8 r | R1 R2.
    <mi, sol>4 <mi sol> <mi sol> <mi sol> |
    <mi sol> <mi sol> <mi sol> |
    <mi si'> <mi si'> <mi si'> <mi si'> |
    <mi si'> <mi si'> <mi si'> |
    <mi si'> <mi si'> <mi si'> <mi si'> |
    <mi si'> <mi si'> <mi si'> |
    r8 <mi sol> r <mi sol> r <mi sol> |
    r <mi sol> r <mi sol> |
    r <mi sol mi'> r <mi sol mi'> r <mi sol mi'> |
    r <mi sol mi'> r <mi sol mi'> |
    r <mi sol mi'> r <mi sol mi'> r <mi sol mi'> r <mi sol mi'> |
    s2 s2 si'16 \md si' \mg sol \md sol' \mg \clef treble
    re sib' dod8 \clef bass |
    <la,, la'>8 r r4 |
  }
}

ActeUnSceneQuatrePiano = { \Piano
  \PianoDeuxMains
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*2
    s2 R1 R2. <la'do re>2 <la do re> <la do re> <la do re>
    <sol la do re> <sol la do re> <sol la do re> |
    <do re>4 <la do> r <la do> | <do re> <la do> r <la do> |
    <la do re> <sol la do> <la do re> <sol la do> <la do re> <sol la do> |
    <la do re> <sol la do> <la do re> <sol la do> |
    <la do re> <sol la do> <re sol la> <do re> |

    %%% Agitato %%%
    R2.*5
    <si mi>2. <mib sol> <do sol'>4 r2 |
    R2.*10
    r2 la'32 sib re mi la8 \clef bass |
    r8 <red,,, mi'> \clef treble \ttt {r16 la''' re, mi la, si}
    mi,8 \mg \t {mi,16 mi mi} \md | R2.
    \ttt {r16 re' la' mi' la, re} la'4 r8 \mg \t {mi,,16 mi mi} \md |
    r16 <mib' lab re> r8 r2 | s2. R2.
    s2. <re' mi la>4 s2 |
    <mi' la>2\laissezVibrer s2 |
    R2. R1 R2. R2 R2. R2 R2. R2 R2.
    R1*5 R2 R2. R1 |

    %%% Andante a piacere %%%
    r2 <la,,, dod>~ <la dod> r |
    r <la dod>~ <la dod> r |
    r <si fa'>~ <si fa'> r |
    r <si fa'>~ <si fa'> r |
    r4 <mib la dod>~ \t {<mib la dod> <mib la dod> <mib la dod>~} |
    <mib la dod>8 <mi sold re'> <mi sold re'> <mi sold re'>~
    \t {<mi sold re'> <mi la red> <mi la red>} |
    r4 <lab re fad>~\t {<lab re fad> <lab re fad> <lab re fad>~} |
    <lab re fad>8 <sib mi sold> <sib mi sold> <sib mi sold>
    \t {<sib mib la> <sib mib la> <sib mib la>} |
    R1*7 r4 <re,sol si> <mib fad la re>2\laissezVibrer s2 R2.*6

    %%% A tempo %%%
    r8 <mi sol do>~\t {<mi sol do><mi sol do><mi sol do>}
    \t {<fa sib reb><fa sib reb><fa sib reb>}
    \t {<sol do mib><sol do mib><sol do mib>} |
    r <sib reb solb>~\t {<sib reb solb><sib reb solb><sib reb solb>}
    \t {<do mib lab><do mib lab><do mib lab>}
    \t {<dod fad la><dod fad la><dod fad la>} |
    \t {<red sold la><red sold la><red sold la>}
    \t {<fad la><fad la><fad la>} \t {<sold la><sold la><sold la>} r4 |
    <la,,sib sol' la>2\laissezVibrer s2 |
    R2. R1 R2. R1 R2. R1 R2.
    r8 \stemUp <dod'fa la dod>~
    \t {<dod fa la dod><dod fa la dod><dod fa la dod>~}
    <dod fa la dod>16 <dod fa la dod><dod fa la dod><dod fa la dod>~
    \t {<dod fa la dod>8 <dod fa la dod> <dod fa la dod>} \stemNeutral |
    r8 \stemUp <dod fa la dod>~
    \t {<dod fa la dod><dod fa la dod><dod fa la dod>~}
    <dod fa la dod>16 <dod fa la dod><dod fa la dod><dod fa la dod>~
    \t {<dod fa la dod>8 <dod fa la dod> <dod fa la dod>} \stemNeutral |
    \t {r4 \stemUp <dod fa la dod> <dod fa la dod>} <dod fa la dod>8 <dod fa la dod> |
    <dod fa la dod><dod fa la dod>
    \t {<dod fa la dod>4<dod fa la dod><dod fa la dod>} \stemNeutral |
    r4 \stemUp <red sol si red>2 \stemNeutral |
    r8 \stemUp <red sol si red>8~ <red sol si red>2. |
    <red sol si red>2 \stemNeutral r8 \stemUp
    <fa sold si fa'>~ \t {<fa sold si fa'><fa fa'> <fa fa'>} |

    <re re'>4 r2 | R4.
    r8 <sold,, lad> <sold lad> <sold lad> r <sold lad> |
    <sold lad> r <sold lad> | <re'' re'> r r4 R4.
    r8 <sol,,do fa> <sol do fa> r |
    <sol do fa> <sol do fa> <sol do fa> <sol do fa> |
    <re''sold re'mi> r r4 | R4. \clef bass |
    <re,,mi sold lad dod>8 <re mi sold lad dod> <re mi sold lad dod> r |
    <re mi sold lad dod> r <mi sold lad dod> <mi sold lad dod> \clef treble |
    <si're mi> <si re mi> <la re mi> <la re mi> |
    <si re mi> <si re mi> <la re mi> |
    <si re mi fa> <si re mi fa> <la re mi sol> <la re mi sol> |
    <si! re mi sib'> <si re mi sib'> <la re mi sol> <la re mi sol> |

    R2 R4. r2 r8 \t {sold''16 si dod} |
    <re, re'>8 re, re re re re re re |
    re re re re re re re re |
    <re mib> <re mib> <re mib> <re mib> <do mib> <do mib> <do mib> <do mib> |
    <do fa> <do fa> <do fa> <do fa> <sib fa'> <sib fa'> <sib fa'> <sib fa'> |
    <la sib fad'> <la sib fad'> <la sib fad'> <la sib fad'>
    <la sib fad'> <la sib fad'> <la sib fad'> <la sib fad'> |
    <la sib fad'>-> <la sib fad'> <la sib fad'> <sol la do mib fad>->
    <sol la do mib fad> <sol la do mib fad> <sol la do mib fad>-> <sol la do mib fad>|
    r <sol la do mib lab> <sol la do mib lab>4 <do mib fad si> r8 <mib fad si> |
    r <mib solb lab reb> r4 <mib fa lab reb> \clef bass
    <red, mi lab reb> \clef treble |
    <re'! re'!>4 s4 s2 | R1*2 \clef bass |

    <re,sib' re>8 <re sib' re> <re sib' re> <re sib' re>
    <re sib' re>  <re sib' re> <re sib' re> <re sib' re>|
    R2
    <re sib' re>8 <re sib' re> <re sib' re> <re sib' re>
    <re sib' re>  <re sib' re> |
    R2.
    <re sib' re>8 <re sib' re> <re sib' re> <re sib' re> |
    R1 \clef treble

    %%% Piu lento %%%
    R2.*3 r4 fa' sib, <fa' solb sib>2.\arpeggio \laissezVibrer |
    R2. r4 fa \mg re, \md
    <dob' fa solb sib>2.\arpeggio \laissezVibrer |
    R2. r4 <re fa> <sib do!> |
    s4. <re fa solb sib>4.\arpeggio \laissezVibrer |
    R2.*2 re'8 sib la fad mi re\laissezVibrer |
    <fad la sib re>2.\arpeggio \laissezVibrer |
    <solb sib>4 <reb fa> <lab do> | s2.
    <reb fa solb sib>2.\arpeggio \laissezVibrer | R2.*3
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5
    R1 R1. R1 R1. R1 R1.*5 R1 R1. r2 <dod mi la>4 r |
  }
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2 R2. R2*2
    s2^\markup { \score { \new ChordNames \chordmode { la:7 } \layout {indent = 0 }}}
    R1 R2. R1*2 R1. \clef treble <sol'la>2 <sol la> <sol la> <sol la> |
    <si, red fad> <si red fad> <si red fad> <si red fad> <si red fad> \clef bass |
    <mib, sol sib>2. r4 |

    %%% Agitato %%%
    <la, re sol la>8 r r2 | R2.*3
    r2 fad'8 dod | <la re sol>2. <do fa sib> <mi la re>4 r
    <sold,,sold'>~| <sold sold'> <dod dod'> <si si'> |
    <re re'> r2 | <re re'>4 <re re'> <re re'> |
    <re re'> r2 | <re re'>4 <re re'> <re re'> | <re re'> <re re'> <re re'> |
    <mib mib'> r2 | <do do'>4 <do do'> <do do'> | <fad fad'> r2 |
    <lab lab'>4 <lab lab'> <lab lab'> | <sib, sib'> r8 <sib sib'>4 <sib sib'>8 |
    mi8 mi' r4 r8 s | mi,4 mi mi | mi r r8 s | mi4 r2 \clef treble |
    \ttt { mib''16 lab sib re \md mib la} re4 \mg \clef bass r |
    mi,,,, mi <sib sib'>8 mi |
    \tt {mi'16 si' \md la re mi} sold4 \mg
    \ttt {re16 \md \stemDown mi sold la re \mg \stemUp <la, mi'>} |
    r4 \clef treble \tt {la16 re mi la \md \stemDown mi'}
    \tttt {<la re> \mg \stemUp la, re mi sold \md \stemDown la re \mg \clef bass} |
    \stemNeutral dod,,,,2\laissezVibrer s |
    R2. R1 R2. R2 R2. R2 R2. R2 R2.
    R1*5 R2 R2. R1

    %%% Andante a piacere %%%
    fa2 <sib mib>~<sib mib> reb,8 r r4 |
    fa2 <sib mib>~<sib mib> reb,8 r r4 |
    <fa, fa'>2 <lab'mib'>~<lab mib'> reb,8 r r4 |
    <fa, fa'>2 <lab'mib'>~<lab mib'> reb,8 r r4 |
    <sol, sol'>1*1/4\laissezVibrer <dod' fad lad>4~
    \t {<dod fad lad> <dod fad lad> <dod fad lad>~} |
    <dod fad lad>8 <dod mid si'> <dod mid si'> <dod mid si'>~
    \t {<dod mid si'> <dod fad do'!> <dod fad do'>} |
    <sol, sol'>1*1/4\laissezVibrer <fa''si mib>4~
    \t {<fa si mib> <fa si mib> <fa si mib>~} |
    <fa si mib>8 <fa si solb'> <fa si solb'> <fa si solb'>
    \t {<fa dod' sol'> <fa dod' sol'> <fa dod' sol'>} |
    R1*7 r4 <fa la> <do mi sib'>2\laissezVibrer s2 R2.*6

    %%% A tempo %%%
    <do,do'>1*1/8\laissezVibrer <red' sold si>8~
    \t {<red sold si> <red sold si> <red sold si>}
    \t {<fad la re> <fad la re> <fad la re>}
    \t {<sold si mi> <sold si mi> <sold si mi>}
    <do,,do'>1*1/8\laissezVibrer \clef treble <la''re fa>8~
    \t {<la re fa> <la re fa> <la re fa>}
    \t {<si mi sol> <si mi sol> <si mi sol>}
    \t {<re fa sib> <re fa sib> <re fa sib>} |
    \t {<mi sol do> <mi sol do> <mi sol do>}
    \t {<fa sib reb> <fa sib reb> <fa sib reb>}
    \t {<sol do mib> <sol do mib> <sol do mib>} r4 | R1 \clef bass |
    la,,16 fad sold red dod sib' do sol fa re mi' si | la8 r r4 r2 |
    r4 la8 mi sol re | dod sold' si fad fa do mib' sib | la r r2 |
    R1 R2.
    <sol,sol'>1*1/8\laissezVibrer \md \stemDown <dod''mi sol sib>8~
    \t {<dod mi sol sib> <dod mi sol sib> <dod mi sol sib>~}
    <dod mi sol sib>16 <dod mi sol sib> <dod mi sol sib> <dod mi sol sib>~
    \t {<dod mi sol sib>8 <dod mi sol sib> <dod mi sol sib> \mg \stemNeutral } |
    <sol,,sol'>1*1/8\laissezVibrer \md \stemDown <dod''mi sol sib>8~
    \t {<dod mi sol sib> <dod mi sol sib> <dod mi sol sib>~}
    <dod mi sol sib>16 <dod mi sol sib> <dod mi sol sib> <dod mi sol sib>~
    \t {<dod mi sol sib>8 <dod mi sol sib> <dod mi sol sib> \mg \stemNeutral } |
    \noTuplet
    \t {<sol,,sol'>2*1/2\laissezVibrer
    \md \stemDown <dod''mi sol sib>4<dod mi sol sib>}
    <dod mi sol sib>8 <dod mi sol sib> |
    <dod mi sol sib> <dod mi sol sib> \t {<dod mi sol sib>4
    <dod mi sol sib> <dod mi sol sib> \mg \stemNeutral }
    <fa,,,fa'>2*1/2\laissezVibrer \md \stemDown <si'' re sold>2 \mg \stemNeutral |
    <fa,, fa'>1*1/8\laissezVibrer \md \stemDown <si'' re sold>8~
    <si re sold>2. <si re sold>2 \mg \stemNeutral r8 <mib,,,mib'>4*1/2
    \md \stemDown <si''' re sold si>4*1/2 \mg \stemNeutral fad,,8 |
    <re re'>4  r2 |
    R4.

    <sold sold'>4 r <si si'> | r8 <dod dod'> r |
    <re re'> r r4 | R4.
    <la la'>4 r8 <sib sib'> | r8 r16 <do do'> r4 |
    <mib mib'>8 r r4 R4. <si si'>4 r8 \ottava #-1 <si, si'> \ottava #0 |
    r <do' do'> r16 <re re'> r8 | fa2~fa4 r8 r <fa, fa'> r4 |
    r8 <fa fa'> r <fa fa'> |
    R2 R4. R2.

    <re' re'>4 re re re re re re re |
    re re re re re re re re re re re re |
    <re re'> <re re'> <re re'> <re re'> |
    <re re'> r8 <re re'> r re' <sol la do>4 |
    <re,re'> re'8 <sol la do> r <re re'> r <re,re'> |
    r <re re'> <re' re'> re re, <re' re'> re, re' | re,4 r r2 | R1

    <re sib'>4 <re sib'> <re sib'> <re sib'> R2
    <re sib'>4 <re sib'> <re sib'> R2.
    <re sib'>4 <re sib'> R1

    %%% Piu lento %%%
    R2.*4 <fa' solb sib dob>2.\arpeggio \laissezVibrer |
    R2. r2 s4 <re, mib dod'>2.\arpeggio \laissezVibrer |
    R2.*2 <re' sol>4. <fad sol sib do>\arpeggio \laissezVibrer |
    R2.*5 <mib sol>4 re2~ <re sol lab do>2.\arpeggio \laissezVibrer |
    R2.*3

    la8 r sib mib r sold, fad si r mi re, sol | la4 r r2 |
    la8 fad sold red r sib' do sol r re mi' r | la,4 r r2 |
    la8 r re mi r si fad sold r mib sib' r | la4 r r2 |
    R1. R1 R1. R1
    la8 r sib mib r sold, fad si r mi re, sol |
    la r re mi r si fad sold r mib sib' r |
    la fad sold red r sib' do sol r re mi' r |
    la, si mi r fa, sol r sib r mib, lab r |
    la do sib mib r si fad sold r re mi' r |
    la,4 r r2 | R1.
    \pl {do,1~do1.} {r4 do' \t {do do do} do do~do1} |
    R1
    la8 r sold red r sib' do sol r re mi' si |
    la r mi' re, r sol do sib r mib, lab r |
    la do sib mib r sold, fad si r mi re, r |
    la' sol re' r dod si r sold r mib sib' r |
    la fad sold red r sol do sib r mi re, r |
    la'4 r r2 | R1. r2 <re, la' fa'>4 r |
  }
}

EntractePiano = { \Piano
  \PianoDeuxMains
  \relative {
    R2*9
  }
  \relative {
    sold,,2*1/4\laissezVibrer
    sold'8 \t {sold sold sold}
    sold2\laissezVibrer |
    sold,2*1/4\laissezVibrer
    sold'8 \t {sold sold sold}
    sold2\laissezVibrer |
    sold,2*1/4\laissezVibrer
    sold'8 \t {sold sold sold}
    sold2\laissezVibrer |
    r8 <sold,sold'>
    \t {<sold sold'><sold sold'><sold sold'>} |
    <sold sold'>2 sold2*1/4\laissezVibrer
    <sold' sold'>8
    \t {<sold sold'><sold sold'><sold sold'>} |
  }
}

ActeDeuxSceneUnPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R2.*4 R2 R2.*2 R2 \clef bass r8
    <sol lab sib dob re>\arpeggio ~
    <sol lab sib dob re>2\laissezVibrer R2.*2 R2 |
    R2. R2 R2.*2 R2 |
    r8 <sol lab si do mib>\arpeggio ~
    <sol lab si do mib>2\laissezVibrer |
    R2.*2 R2 | R2. R2 | R2.*2 | R2 | R2.*3 R2 \clef treble

    %%% Entrée de la Soprano Deux %%%
    r2 r8 <la' si> | r4 <re, mi la>8 r r4 |
    r <la' re mi>8 r r2 |
    r4 r8 <re mi la> r4 | R1
    <la, mib' lab>2.\arpeggio ~ <la mib' lab>2 |
    <sold re' sib'>2*3/2\laissezVibrer R1

    %%% Andantino %%%
    <re'mi la>2*2\laissezVibrer R1 R2.
    <re la'>2*3/2\laissezVibrer R2.*2 R2
    R2.*5 R1 R2. R2
    <si re la'>2*3/2\laissezVibrer R1 R2. R1
    <si re la'>2*3/2\laissezVibrer R1
    r4 <do re sol> r R1 |
    r4 <re fa> r | <re fa> r <re fa> r |
    r <la re mi> r | r <la re> r <la re> | r <la re> r |
    <re la'>2*2\laissezVibrer R2. R1 R2. R1 R2. R1
    r8 sold, dod <fad si> <mi' la re>4\laissezVibrer | R1

    %%% Entrée de la Contralto %%%
    <re, sold>2*3/2\laissezVibrer R1
    <la re mi sold>2*3/2\laissezVibrer R1 |
    R2. R1 R2. R1 <la re>2*3/2\laissezVibrer R1 R2. |
    R1 <la re mi>4 r8 <la re mi>4.\laissezVibrer | R1 R2. R1 |
    r4 <do re> r | r8 <do re>4. r8 <do re>4. |
    r4 <do re> r | r8 <do re>4. r8 <do re>4. |
    r4 <do re sol> r | r <do re> r | <fa sib mib> r2 |
    r4 <do fa> <do fa> | r <si mi> <si mi> |
    r  <do fa> <do fa> | r <si mi> r R2.
    <do fa sib>2*3/2\laissezVibrer R2. R1 R2.
    <dod fad>2*2\laissezVibrer R2. R1
    r4 <mib solb> <mib solb> | r <do fa> r8 <do fa>4. |
    r4 <mib solb> <mib solb> | r2 <do fa sib>2\laissezVibrer R2. R1
    <re la'>2*3/2\laissezVibrer R1 R2. R2
    <la re fad>2*2\arpeggio \laissezVibrer R2. R1 R2. R1 R2. R1
  }
  \relative {
    R2.*4 R2 R2.*2 R2 mi,,2.\laissezVibrer R2.*2 R2 |
    R2. R2 R2.*2 R2 | mi2.\laissezVibrer | R2.*2 R2 |
    R2. R2 | R2.*2 | R2 | R2.*3 R2 \clef treble

    %%% Entrée de la Soprano Deux %%%
    r2 r8 <dod''mi> | r4 <fad,si>8 r r4 |
    r <dod'fad sold>8 r r2 | r4 r8 <mib lab sib> r4 |
    R1 \clef bass <fa,, mi'>2.\arpeggio ~ <fa mi'>2 |
    <mi red'>2*3/2\laissezVibrer R1

    %%% Andantino %%%
    sib'2*2\laissezVibrer R1 R2.
    <mi si'!>2*3/2\laissezVibrer R2.*2 R2
    R2.*5 R1 R2. R2
    <fad,dod'mi>2*3/2\laissezVibrer R1 R2.
    do'4 sol' fad r | <fad,dod'mi>2*3/2\laissezVibrer R1
    r4 <sib fa'> r R1
    r4 <mib lab sib> r | <mib lab sib> r <mib lab sib> r |
    r sib r | r <si mi> r <si mi> | r <si mi> r |
    R1 R2. R1 R2. R1 R2. R1
    fad2*3/2\laissezVibrer R1
    <sold'dod>2*3/2\laissezVibrer R1
    fad,2*3/2\laissezVibrer R1
    R2. R1 R2. R1 do2*3/2\laissezVibrer R1 R2.
    R1 dod2*3/2\laissezVibrer R1 R2. R1
    fad4 r fad' | fa, r fa' r | fad, r fad' | fa, r fa' r |
    fad, r fad' | sol,2.~ sol4 r2 |
    sib4 r2 | si4 r2 | sib4 r2 | si4 r2 |
    R2. mib2*3/2\laissezVibrer R2. R1 R2.
    <re si'>2*2\laissezVibrer R2. R1
    lab4 r lab' | la, r la' r | lab, r lab' |
    sol,2*2\laissezVibrer R2. R1
    re2*3/2\laissezVibrer R1 R2. R2
    <sib' fa' sold>2*2 \arpeggio \laissezVibrer
    R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R1 R2. R2 R1*5/4*6 \clef bass |
    r1 mi,,4 <red sold> r r2 mi4 |
    <red sold> r sol <mi si'> r |
    r2 mi4 <red sold> sol | <mi si'> r sib' r <sib re> |
    <la fad'> r <re fa> <dod la'> r | <mid fad dod'> r1 |
    R1*5/4*8 \clef treble <sol la mib' fad>4 r2 <sol la mib' fad>4 r |
    <sol la mib' fad> r <sol la mib' fad> r2 |
    <sol la mib' fad>4 r r8 <sol la mib' fad> r2 | <re' do'>4 r1 |
    R1*5/4*6 <lab re fa sol lab>1*5/4\laissezVibrer \arpeggio
    R1*5/4*11 \clef bass <re, fad dod'>4 r1 | R1*5/4-\fermataMarkup

    %%% Boum %%%
    R1*5/4*13 | \clef treble
    <sol' sib mib>8 \mg <mib, lab dob> \md
    <sol' sib mib> \mg <mib, lab dob> \md
    <sol' sib mib> \mg <mib, lab dob> \md
    <fab' lab reb> \mg <fa, sib re> \md
    <fab' lab reb> \mg <fa, sib re> \md
    <sol' sib mib> \mg <mib, lab dob> \md
    <sol' sib mib> \mg <mib, lab dob> \md
    <fab' lab reb> \mg <fa, sib re> \md
    <fab' lab reb> \mg <fa, sib re> \md
    <fab' lab reb> \mg <fa, sib re> \md |
    <sol' sib mib> \mg <mib, lab dob> \md
    <sol' sib mib> \mg <mib, lab dob> \md
    <sol' sib mib> \mg <mib, lab dob> \md
    <sol' sib mib> \mg <mib, lab dob> \md
    <fab' lab reb> \mg <fa, sib re> \md |
    <fab' lab reb> \mg <fa, sib re> \md
    <fab' lab reb> \mg <fa, sib re> \md
    <sol' sib mib> \mg <mib, lab dob> \md
    <sol' sib mib> \mg <mib, lab dob> \md
    <sol' sib mib> \mg <mib, lab dob> \md |
    <sib'' mib lab> \mg <mi,,,, mi'>2*1/4\laissezVibrer \md
    <sib'''' mib lab>8 \mg <sib,, mib lab> \md
    <sib'' mib lab> \mg <sib,, mib lab> \md
    <sib'' mib lab> \mg <sib,, mib lab> \md
    <sib'' mib lab> \mg <sib,, mib lab> \md |
    <sib'' mib lab> \mg <sib,, mib lab> \md
    <sib'' mib lab> \mg <sib,, mib lab> \md
    <sib'' mib lab> \mg <sib,, mib lab> \md
    <sib'' mib lab> \mg <sib,, mib lab> \md
    <sib'' mib lab> \mg <sib,, mib lab> \md |
    <sib'' mib> \mg <mib,, lab> \md
    <sib'' mib> \mg <mib,, lab> \md
    <sib'' mib> \mg <mib,, lab> \md
    <sib'' mib> \mg <mib,, lab> \md
    <sib'' mib> \mg <mib,, lab> \md |
    <reb'' fa sib> \mg \stemDown <mi,,,, mi'>2*1/4\laissezVibrer \stemNeutral \md
    <reb'''' fa sib>8 \mg <lab,, reb fa> \md
    <reb'' fa sib> \mg <lab,, reb fa> \md
    <sib'' mib lab> \mg <sib,, mib lab> \md
    <sib'' mib lab> \mg <sib,, mib lab> \md |
    <reb'' fa sib> \mg <lab,, reb fa> \md
    <reb'' fa sib> \mg <lab,, reb fa> \md
    <sib'' mib lab> \mg <sib,, mib lab> \md
    <sib'' mib lab> \mg <sib,, mib lab> \md
    <reb'' fa sib> \mg <lab,, reb fa> \md
    <mib''' lab dob> \mg \stemDown <mi,,,,! mi'!>2*1/4\laissezVibrer \stemNeutral \md
    <mib'''' lab dob>8 \mg <sol,,, sib mib> \md
    <mib''' lab dob> \mg <sol,,, sib mib> \md
    <reb''' fa sib> \mg <lab,, reb fa> \md
    <reb'' fa sib> \mg <lab,, reb fa> \md |
    <mib''' lab dob> \mg <sol,,, sib mib> \md
    <mib''' lab dob> \mg <sol,,, sib mib> \md
    <reb''' fa sib> \mg <lab,, reb fa> \md
    <reb'' fa sib> \mg <lab,, reb fa> \md
    <reb'' fa sib> \mg <lab,, reb fa> \md |
    <mib''' lab dob> \mg <sol,,, sib mib> \md
    <mib''' lab dob> \mg <sol,,, sib mib> \md
    <mib''' lab dob> \mg <sol,,, sib mib> \md
    <reb''' fa sib> \mg <lab,, reb fa> \md
    <mib''' lab dob> \mg <sol,,, sib mib> \md |
    <fa''' sib re> \mg \stemDown <mi,,,, mi'>4*1/2\laissezVibrer \stemNeutral \md
    <fa'''' sib re>8 \mg <sold,,, dod> \md
    <fa''' sib re> \mg \stemDown <mi,,,, mi'>2*1/4\laissezVibrer \stemNeutral \md
    <fa'''' sib re>8 \mg <sold,,, dod> \md
    <fa''' sib re> \mg <dod,, sold'> \md |
    <fa'' sib> \mg mi,,, \md
    <fa''' sib> \mg <dod,, sold'> \md
    fa'' \mg <sold,, dod> \md <dod sold'>2\laissezVibrer |
    r1 <red sold>4\laissezVibrer | R1*5/4
    <dod sold'>1*5/4\laissezVibrer | r4 <dod sold'>1\laissezVibrer |
    r2 <dod lad'>2.\laissezVibrer |

    %%% Moderato assai %%%
    R1*7/4*7 \clef bass
    r4 \acciaccatura do,8 reb4 \acciaccatura sold8 la4 | R1
    r4 \acciaccatura fad8 sol4 \acciaccatura re'8 mib4 | R2
    r4 \acciaccatura si,8 do4 \acciaccatura sol'8 lab4 |
    r <si do sol'>2\arpeggio |
    r4 \acciaccatura si,8 do4 \acciaccatura sol'8 lab4 |
    r <red, sold si>2\arpeggio |
    r4 \acciaccatura si8 do4 \acciaccatura sol'8 lab4 |
    r \acciaccatura fad8 sol4 \acciaccatura la8 sib4 |
    r \acciaccatura red,8 mi4 \acciaccatura si'8 do4 |
    r <sol lab mi'>2\arpeggio | R2. \clef treble |
    <re' la' re>1\arpeggio \laissezVibrer r2 r4 | R1*7/4*2 \clef bass |
    r4 \acciaccatura fa,8 solb4 \acciaccatura dod8 re4 |
    r <dod, re la'>\arpeggio r |
    r \acciaccatura fa8 solb4 \acciaccatura dod8 re4 |
    r <la re fa>\arpeggio r |
    r \acciaccatura fa8 solb4 \acciaccatura dod8 re4 |
    r \acciaccatura lad8 si4 \acciaccatura red8 mi4 |
    r \acciaccatura la,8 sib4 \acciaccatura fa'8 fad4 |
    R1*7/4*4 \clef treble |
    \repeat volta 2 { <dod mi la>1 <sib re sol?>2.
    <dod mi la> <sib re sol>1 R1*7/4 }
    <sib re sol>1*7/4\arpeggio \laissezVibrer R1*7/4

    %%% Presto subito %%%
    \tt {<mi sol>8 \mg <red, fad> <re, fa> <red' fad> <red fad> \md }
    \tt {<mi' sol> \mg <red, fad> <re, fa> <red' fad> <red fad> \md }
    \tt {<mi' sol> \mg <red, fad> <red fad> <re, fa> <red' fad> \md } |
    \tt {<mi' sol> \mg <red, fad> <re, fa> <red' fad> <red fad> \md }
    \tt {<mi' sol> \mg <red, fad> <re, fa> <red' fad> <red fad> \md }
    \tt {<mi' sol> \mg <red, fad> <red fad> <re, fa> <red' fad> \md } |
    \tt {<mi' sol> \mg <red, fad> <re, fa> <red' fad> <red fad> \md }
    \tt {<mi' sol> \mg <red, fad> <re, fa> <red' fad> <red fad> \md }
    \tt {<mi' sol> \mg <red, fad> <red fad> <re, fa> <red' fad> \md } |
    \tt {<mi' sol> \mg <red, fad> <re, fa> <red' fad> <red fad> \md }
    \tt {<mi' sol> \mg <red, fad> <re, fa> <red' fad> <red fad> \md }
    \tt {<mi' sol> \mg <red, fad> <red fad> <re, fa> <red' fad> \md } |
    \tt {<mi' sol> \mg <red, fad> <re, fa> <red' fad> <red fad> \md }
    \tt {<mi' sol> \mg <red, fad> <re, fa> <red' fad> <red fad> \md }
    \tt {<mi' sol> \mg <red, fad> <red fad> <re, fa> <red' fad> \md } |

    %%% Tempo giusto %%%
    <mi' sol>4 r <mi sol>8 fad, | <mi' sol>4 r <fa lab> |
    <mi sol> r <mi sol>8 fad, | <mi' sol>4 r <mi sol>8 fad, |
    <mi' sol>4 r <mi sol>8 fad, | <mi' sol>4 r <fa lab> |
    <mi sol> r8 fad, <fa' lab>4 | <re la'>4 r sol,8 re' la' sib |
    <mi, si'>4 r8 dod <fad si> dod | <sold' si>4 r <la do>8 re, |
    <fa do'>4 r <la do> <lad dod>8 red, r4 <si' re> <do mib> r R4. |
    r8 <lab re sol>~ \t {<lab re sol> <lab re sol> <lab re sol>} |
    \t {<la red sold> <la red sold> <la red sold>}
    \t {<sib mi la> <sib mi la> <sib mi la>} |
    <sol do sib'>4 <re' re'>8 <fad fad'> <re re'> <fa fa'> <dod dod'> |
    <fad, fad'> r r2 |
    r4 <re' re'>8 <fad fad'> <dod dod'> <fa fa'> <re re'> |
    <fad, fad'> r r2 | r8 <re' re'> <red red'> <mi mi'> <fa fa'> |
    <fad fad'> \t {la16 do sib} mib8 \t {fa,16 lab solb} |
    si8 dod,16 mi re sol |
    <la, la'>4 r2 | R2.*3 \clef bass
    r8 mib, sol do mi, lab | mib' lab, si mi, sol sib |
    mib mi, sol do mib, si' | sol' mib, sol do sol' si, |
    mib mi, lab sol do si \clef treble | mi mib sol lab si do |
    r4 \t {si,8 mib sol} \t {re fad sib} |
    \t {sib, re fad} \t {si, mib sol} \t {fad, sib re} |
    \t {mib sol si} \t {do mi sold} \t {la dod fa} |
    <la, la'>2.\laissezVibrer R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    R1
    <solb, fa'>4 r2 <solb fa'>4 r <solb fa'> r <solb fa'> r2 |
    <solb fa'>4 r r8 <solb fa'> r2 \clef bass | <lab,, do>4 r1\fermata
    R1*5/4*21
  }
  \relative { \clef bass
    R1 R2. R2 R1*5/4*6
    r1 \ottava #-1 si,,4 <sol? do> r r2 si4 |
    <sol do> r do <sold red'> r |
    r2 si4 <sol do> do <sold red'> \ottava #0
    r \loco la' r <fa la> <dod sib'> r <sib' dod> <fa re'> r |
    <re la' sib> r1 | R1*5/4*8
    <re do'>4 r2 <re do'>4 r <re do'> r <re do'> r2 |
    <re do'>4 r r8 <re do'> r2 | <sold si fa' sol!>4 r1 |
    R1*5/4*3
    do1*5/4 re fa2~ fa8 sol~ sol2 |
    <do, fa>1*5/4\laissezVibrer \arpeggio R1*5/4*11
    \ottava #-1 <mi,, fa'>4 \ottava #0 r1 | R1*5/4-\fermataMarkup

    %%% Boum %%%
    R1*5/4*13
    s1*5/4*14
    R1*5/4*5

    %%% Moderato assai %%%
    R1*7/4*7
    fa'4 r2 R1 si4 r2 R2 |
    mi,4 r2 red'4 r2 | mi,4 r2 sol4 r2 |
    mi4 r2 | fad4 r2 sol4 r2 | la4 r2 r4 do2 |
    <fa, mib'>1\arpeggio r2 r4 R1*7/4*2 |
    sib4 r2 fad4 r2 | sib4 r2 dod4 r2 |
    sib4 r2 do4 r2 re4 r2 |
    R1*7/4*4 |
    \repeat volta 2 {<la re fa>1 <si? mi sold>2.
    <la re fa> <si mi sold>1 R1*7/4}
    <si mi sold>1*7/4\arpeggio R1*7/4

    %%% Presto subito %%%
    s1.*5
    re,4 mib' fa, | re mib' fa, | re mib' fa, |
    re mib' fa, | re mib' fa, | re mib' fa, |
    mib' sib si' | mi,, si' R2 |
    <fad dod'>4 sold' r | <fad, dod'> <si la'> r |
    <sold fad'> re' red | <sold, fad'> fad la | fa4 r R4. |
    <mi' la red>4~ \t {<mi la red>8 <mi la red> <mi la red>}
    \t {<fa sib mi> <fa sib mi> <fa sib mi>}
    \t {<fad si mid> <fad si mid> <fad si mid>} |
    <mib,, mib'>2\laissezVibrer R4. R2. |
    <mib mib'>2\laissezVibrer R4. R2. |
    <mib mib'>2*5/4\laissezVibrer |
    <la la'>2\laissezVibrer R4. <la' la'>4 r2 | R2.*3
    <sol, sol'>2.\laissezVibrer s
    <sol sol'>\laissezVibrer s |
    <sol sol'>\laissezVibrer s |
    <sol sol'>\laissezVibrer s s |
    <sold sold'>2.\laissezVibrer R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    R1
    <lab' sol'>4 r2 <lab sol'>4 r <lab sol'> r <lab sol'> r2 |
    <lab sol'>4 r r8 <lab sol'> r2 | \ottava #-1
    <re,, sol dod>4 r1\fermata |
    R1*5/4*21
  }
}

ActeDeuxSceneDeuxPiano = { \Piano
  \PianoDeuxMains
  \relative {
    R1.*6 R1*2 R2. \clef bass |
    \mg <re,, re'>16 \md <re' sol lab dod> <re sol lab dod> \mg <fa, fa'>
    \md <re' sol lab dod> \mg <re, re'> \md <re' sol lab dod> \mg <fa, fa'>
    \md <re' sol lab dod> \mg <fad, fad'> \md <re' sol lab dod> <re sol lab dod> |
    <fa la sib mi>8. <fa la sib mi>16 r8 <fa la sib mi>16 <fa la sib mi> r <fa la sib mi> <fa la sib mi>8 |
    r16 <re sol lab dod>8 <fa la sib mi>16 r <re sol lab dod> <fa la sib mi>8 r16 <fa la sib mi> r8 |
    R2. R1.*3 | R1*2 R2. |
    \mg <si,, si'>16 \md <re' sol lab dod> <re sol lab dod> \mg <re, re'>
    \md <re' sol lab dod> \mg <si, si'> \md <re' sol lab dod> \mg <re, re'>
    \md <re' sol lab dod> \mg <red, red'> \md <re' sol lab dod> <re sol lab dod>
    <re sol lab dod> \mg <si, si'> \md re' \mg <red, red'> \md |
    r mi' dod re do mib |
    si8 si16 si \mg si, \md si' si \mg si, \md si' si
    \mg sold, \md si' si \mg sold \md si si |
    \mg si, \md si' si si si si \mg sold, \md si'
    si \mg sol, \md si' si si \mg sol \md si si |
    \mg si, \md si' si si \mg lad \md si \mg si, \md si'
    si \mg si, \md si' si si \mg lad \md si si |
    \mg si, \md si' si \mg si, \md si' si \mg si, \md si'
    r8 \mg si,16 \md si' si si \mg lad \md si |
    \mg si, \md si' si \mg <fad'dod'> \md si, si \mg si, \md si'
    \mg <fad'dod'> \md si, \mg si, \md si' si \mg <dod'sold'> \md si, si |
    \mg si, \md si' si \mg si, \md si' si \mg si, \md si' r2 |
    R2. R1. R1*2 R2.*3 R2 R2.*3 R2
    r16 la'16 fad sol fa lab |
    mi mi mi \mg sol, \md mi' \mg mi, \md mi' mi
    \mg mi, \md mi' \mg sol, \md mi' \mg mi, sol \md mi' mi |
    \mg mi, \md mi' mi \mg sol, \md mi' \mg mi, sol \md mi'
    \mg mi, \md mi' \mg sold, \md mi' mi \mg mi' \md mi, mi |
    \mg mi, \md mi' mi \mg sol, \md mi' \mg mi, \md mi' mi
    \mg mi, \md mi' mi \mg sol, \md mi' \mg sold, \md mi' mi |
    \mg mi, \md mi' mi \mg la, \md mi' \mg mi, \md mi' \mg la,
    \md mi' mi \mg re \md mi \mg la, mi \md mi' mi |
    \mg mi, \md mi' \mg la, re \md mi mi <re sol do>8 r8 r16 la' fad sol fa lab |
    mi8 \clef treble <si' dod sold'> %% FIXME Issue #400
    <si dod sold'> r | r <dod red lad'> <dod red lad'> r |
    r <fad si dod> <fad si dod> r | r <si dod mi> <si dod mi> r |
    r <lad si fad'> <lad si fad'> r |
    r32 sold mi sold fadd lad fadd lad sold si sold si lad dod mi sold |
    si2*2\laissezVibrer R2.
    R1. R1 R1.
    <la,, sib re la'>1*3/2\laissezVibrer \arpeggio R2. R1
    R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 R2. R1 R2. R1
    R2. R1 R2. R1 R2. R1 R2.
    <la' la'>4 la8 \mg la, \md dod' \mg dod, \md fa' \mg fa, |
    \md <la la'>4 la8 \mg la, \md do'! \mg do,! \md mib' \mg mib,
    \md fad' \mg fad, \md | <la la'>4 s s2 s1*2 |
    <sold' la'>8 r2 | r4 r8 <la,, re mib sold> r |
    <la re mib sold> r r4 <mib' re' mib>8 |
    <re' mib> r4 <mib, sold la re>8 r | R2*5/4
    <la, re sold>4 r r8 | R2*5/4
    r4 r8 <la re mib sold> r | r4 <re mib>8 r4 |
    <la re sold>4 r r8 | R2*5/4*4
    R1*2 \clef bass <do,! la' dod>4 r r2 \clef treble |
    r4 <re' dod'> <si lad'> r | r <si lad'> <lab sol'> r | R1
    mi'1\laissezVibrer s1*2 <si' sold'>4 r2 |
    r8*1/2 s8. r4 | R1*2 R2.*4
    r8 r16 <sold dod> <fa mi'>8 r r4 |
    r8 r16 <sold red'> <fa! fad'>8 r r4 | R2.
    R2*2 R2.*2 R2*5 \clef bass
    <re, sib' re>16 <re sib' re> <re sib' re> <re sib' re>
    <re sib' re> <re sib' re> <re sib' re> <re sib' re> |
    <re sib' re> <re sib' re> <re sib' re> <re sib' re>
    <re sib' re> <re sib' re> <re sib' re> <re sib' re> |
    <re sib' re> <re sib' re> <re sib' re> <re sib' re>
    <re sib' re> <re sib' re> <re sib' re> <re sib' re> |
    <re sib' re> <re sib' re> <re sib' re> <re sib' re>
    <re sib' re> <re sib' re> <re sib' re> <re sib' re> |
    <mi do' mi>8 r r4 R2*4 \clef treble r8 <dod' mi sold> <do fa la> r |
    R2 \clef bass |
    <re, sib' re>16 <re sib' re> <re sib' re> <re sib' re>
    <re sib' re> <re sib' re> <re sib' re> <re sib' re> |
    <re sib' re> <re sib' re> <re sib' re> <re sib' re>
    <mi sold mi'> <mi sold mi'> <mi sold mi'> <mi sold mi'> |
    <re sib' re>8 \clef treble <re' fad> <mib sol> r | R2*6
    R2.*7 \ottava #1 |
    <dod'' fad dod'>4 <red sold red'> r8 <si lad'> |
    <dod fad dod'>4 <sold red' sold> \ottava #0 r | R2.
    \ottava #1
    <dod sold' dod>4 <sol' dod sol'> <dod, sol'? dod> |
    <red sold red'> <lad' red lad'> r <dod, sol' dod> <sold' dod sold'> r |
    <dod, sold' dod> <la' fa' la> \ottava #0 r R2.*2 |
  }
  \relative {
    R1.*6 R1*2 R2.
    s2. <re,, re'>8 mib re fa re lab' |
    fa sib lab si dod mi fa mi sol sib dod4 | R1.*3
    R1*2 R2.
    s1 r16 mi,, dod re do mib |
    si4 s2. | s1*4 s2 r2 |
    R2. R1. R1*2 R2.*3 R2 R2.*3 R2
    r16 la'16 fad sol fa lab |
    mi8 s8 s4 s2 s1*3 s2 r8 r16 la fad sol fa lab mi8 r r dod |
    mi r dod do | mi r r dod mi r dod do mi4 r8 mi mi r r4 |
    <dod dod'>2*2\laissezVibrer R2.
    R1. R1 R1.
    <sol' re'>1*3/2\laissezVibrer \arpeggio R2. R1
    R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 R2. R1 R2. R1
    R2. R1 R2. R1 R2. R1 R2.
    <la la'>4 s s2 |
    <la la'>4 s s2. |
    <la la'>8 mib sol \md fad' sib \mg sib, re \md dod' |
    fa \mg fa, la \md sold' do \mg do, mi \md mib' |
    sol sol, si sib' re re, fad fa' \mg |
    <la,,,,, sold'>8 r2 | r4 r8 <la' sold'> r |
    <la sold'>8 r r4 <la, sold'>8 | <sold'' la> r2 | R2*5/4
    <sold,, mib' la>4 r r8 | R2*5/4
    r4 r8 <la' sold'> r | r4 <re mib>8 r4 |
    <re, sold mib'>4 r r8 | R2*5/4*4
    R1*2 <si lad'>4 r r2 |
    r4 <mi red'> <sol fad'> r | r <reb do'> <mi red'> r | R1
    r8 <mi mi'> \t {<mi mi'> <mi mi'> <mi mi'>} <mi mi'>4 <mi mi'>~ |
    <mi mi'>8 <mi mi'> \t {<mi mi'> <mi mi'> <mi mi'>} <mi mi'>4 <mi mi'>~ |
    <mi mi'>8 <mi mi'> \t {<mi mi'> <mi mi'> <mi mi'>} <mi mi'>2 |
    <re' dod'>4 r2 |
    r16 r32 \stemUp <sold, si fa'>[ \md \stemDown <dod' mib re'>8] \stemNeutral \mg r4 |
    R1*2 R2.*4 r8 r16 <dod, fad> <sib la'>8 r r4 |
    r8 r16 <la mi'> <fad sol'>8 r r4 | R2.
    R2*2 R2.*2 R2*5 <re sib'>8 <re sib'> <re sib'> <re sib'> |
    <re sib'> <re sib'> <re sib'> <re sib'> |
    <re sib'> <re sib'> <re sib'> <re sib'> |
    <re sib'> <re sib'> <re sib'> <re sib'> |
    <dod sold'> r r4 | R2*4
    r8 la' sold r | R2
    <re sib'>8 <re sib'> <re sib'> <re sib'> |
    <re sib'> <re sib'> sold sold | <re sib' re> <sol' si> <fad lad> r |
    R2*6
    R2.*7 \clef treble
    \pl {<fa'! do'!>2. <fa! do'>2} {fad'4 sold r fad s } r4 |
    R2.
    \pl {<la, do mi>2. <la do mi> <sib re sol> <la do mi>2 }
    {sold'4 <sold dod> sold sold <sold red'> r4 |
    s4 dod r4 sold <dod fa>} r4 | R2.*2
  }
}
