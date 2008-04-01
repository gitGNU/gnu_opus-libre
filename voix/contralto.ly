%------------------------------------------------------------------%
% Opéra Libre -- contralto.ly                                      %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

Contralto= {
  \set Staff.instrumentName = \markup { \hcenter-in #27.5 \ContraltoName }
  \set Staff.shortInstrumentName = \ContraltoShortName
  \set Staff.midiInstrument = "voice oohs"
}

ActeUnSceneTroisBisContralto = { \Contralto
  \relative {
    R1*15 r4 fad,8 fad fad4 fad8 fad fad4 r r2 |
    R1*7  r4 do'8 do do4 do8 do fad2 r | R1
    r2 r16 do do do si8. si16 |
    si si mi8 re mi do do \t {re do re} |
    si2 r4 r8 si | lad4. r8 sib4 sol8 r |
    sib4 sol8 r sib sol do16 sib mib8~  | 
    mib mib16 mib do do mib8 fad red16 r fad8 red16 r |
    fad8 red16 r  fad8 red16 r  \parlato fad8 r r4 |
    r8 \t {fad16 fad fad} la8 \t { red,16 red red} fad8 r
    \tt {do16 do do do do} | mi4 \t {r8 reb mi} \t {do sib reb} |
    la2 r | R1*4 r2 r4 r8 sol' |
    sib mib,16 mib~ mib mib32 mib fa16. mib32 lab8
    r32 lab lab lab lab8 mib16 lab | si4 r r2 |
    r2 r4 r8 r16 sol, | fad'8. mi16 dod'8 r16 sol, fad'4. mi8 | dod'2. r4 |
    dod,8 dod dod mi dod4. r8 |
    r2 r4 r8 dod | do do do mib do4 r |
    fa4. do8~ do mib \t {sol, sol la} |
    fad4 r r2 | R1*3 r2 r4 do'8 do | do4 \t {do8 do do} do4 do8 do |
    do4 do r do8 do | do4. do8 do do do do | fad2. r4 | R1*11
  }
}

ActeUnSceneQuatreContralto = { \Contralto
  \relative {
    \partial 4 r4 R2*5/4 R2*3 R2*5/4 R2*2 R2. R2*3 
    R1 R2. R1*2 R1. R1*2 R1. R1*2
    R2.*27
    R1 R2. R1 R2. R2 R2. R2 R2. R2 R2. R1*5 R2 R2. R1
    R1*9 R2. R1 R2. R1*7 R2*3 R2.*2 R2.*4
    R1*2 r2 r4 r8 fad | R1 R2. r16 do fa8 r r16 fa~ fa mib lab8 r fad |
    si4 mib,8 lab4 re,8 | 
    sol4 r8 \parlato do,4 r8 fad fad |
    fad4 \t {fad8 fad fad} \t {la fad fad} | 
    fad fad fad fad red red mid16 mid red mid |
    fad4 r2 | R1*2 R2.*3 R1*2 R2. R4. R2. R4. R2 R4. R2*3 R4.
    R2*3 R4. R2*3 R4. R2. R1*3
    sib,8. la16~ la8 do~ do sib mib reb |
    fad4 r r8 do fa! mib |
    fad4 r r8 do fa! mib |
    fad4 r r fa | fad r r fa | fad r sol r | la r r2 R1*2 R2 R2.*2 R2 R1 |
    R2.*21
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5 R1 R1. R1 R1. R1 R1.*5 R1 R1. R1
  }
}

ActeDeuxSceneUnContralto= { \Contralto
	\relative {
		R2.*4 R2 R2.*2 R2 R2.*3 R2 |
    R2. R2 R2.*2 R2 R2.*3 R2 R2. R2 R2.*2 R2 R2.*3 R2 R2.*2 
    R1 R2. R1 R2. R2 R2. R1*3 R2.*4 R2 R2.*5 R1 R2. R2 R2.
    \repeat unfold 12 {R1 R2.} r2 fa8 mi fa la | si2.~ si4 r r2 |
    R2. r4 r8 la si la si do re2.~ re4 r r2 |r4 red,8 sold4 fad8 |
    si4. la8 dod re! sol,! la | dod2 r4 | r r8 la la la la la |
    la do! sol4 la8 mi~ | mi fad dod mi sol la do!4 |
    la8 do re2~ | re4 r r2 |
    la8 do re2~ | re4 r r2 |
    la8 do re2  | fa,8 lab sib2~ sib4 r2 |
    la8 do re2~ | re4 r2 |
    la8 do re2~ | re4 r2 | sol,8 la do2 |
    la8 do re2~ | re2.~ | re4 r r2 | R2. R1 R2. R1 |
    r2 r8 la | lab do re2. |
    r2 r8 la | lab do re2. |
    R2. R1 R2. R1 R2. R2 R1 R2. R1 R2. R1 R2. R1 |
	}
}

ActeDeuxSceneDeuxContralto= { \Contralto
  \relative {
    R1.*6 R1*2 R2.*5 |
    r2 r4 lab8 do re2~| re4 r r1| R1. R1*2 R2. |
    R1 R4. | R1*5 | r4 mib'16 mib fa8 r2 |
  }
}


ActeDeuxSceneTroisContralto= { \Contralto
  \relative {
    R4.*51 R4*27 R4. R4*5 la16 do re8~ re lab16 do |
    re8 r4 |
  }
}
