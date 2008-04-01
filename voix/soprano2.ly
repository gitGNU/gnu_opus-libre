%------------------------------------------------------------------%
% Opéra Libre -- soprano2.ly                                       %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

SopranoDeux = {
  \set Staff.instrumentName = \markup { \hcenter-in #27.5 \SopranoDeuxName }
  \set Staff.shortInstrumentName = \SopranoDeuxShortName
  \set Staff.midiInstrument = "voice oohs" 
}

ActeUnSceneDeuxSopranoDeux = { \SopranoDeux
	\relative {
    %%% Air Solo %%%
    
    sold'8 la sold mi re mi sold la sold mi re mi sold1~ sold4 r r2 |
    sold8 la sold mi re mi sold mi re mi sold la sold2 la4 si re1~ re4 r2 R2. |
    r8 re re re re re re mi \t {si4 si si} \t {si4 si dod}
    sold4 r8 lab lab lab | sib4. fa8 sol!4 re'1~ re4 r r2 | R2.*2 | 
    la8 re la sold re sold la re la sold re sold la re sol! sold sol! re la sold re sold |
    la2.~ la4 r r r8 la16 re | sold,2 r4 r8 la16 re | sold,4. la4.~ | la4 re,4.. mi16 si2. sold'4~|sold2. r4|
    R2.*2 R1*2 | r8 si mi4. si8 | mi mi re re sol!4~| sol2 r8 fa dod re | lad si sol sold mi4 r8 mi |
    lab sol si sib re4 ~| re8 r re4 sib8 mib | lab1~|lab4 r r2 | R2.*2 R1*2 R2. |
    lab,8 do lab sol re sol | lab2. r4 | R1 | R2.*2 | R1*2 |	r4 r8 sold8. si | sold fad re fad | sold2. r4 |
    sold8 si sold fad re fad sold si | sold fad re fad sold si | re fad re dod sold dod | sold2 r4 r8 la16 re |
    \t {sold,2 si la} | re2. | R2. | R1 | r2 r4 dod | \t {mi4 si dod} lad4~ |
    lad4 la8 sib4. | reb8 reb lab sib fa4 r | r lad dod sold | dod sold dod8 si |
    mi2 r4 | r2 dod4 re | mi2 r4 re | sol!2. | r4 mi2 | sold1~|sold2 r2 | R2.*2 R1*2 R2.*2 R1*2 |
    
    %%% Récitatif %%%
    
    R2. | r4 r8 lab, sol4 | \t {r8 sol sol} mi8 mi16 mi fa8 fa16 fa mi mi sol8 |
    r8 lab sol sol16 sol \t {si8 sol si} | mib,4 r2 | R2. R1 R2.*3 |
    r8 mi!16 mi la la sol8~ sol16 do sib sib | mib4 r2 | r4 r8 fa mib mib | lab4. r8 | R2. |
    R1*2 | R2.*5 | R1 | R2. R1 |
    
    %%% Duo %%%
    
    r8 sold,16 la sold mi re8~ re16 mi sold la | sold8 r r sold sold sold la16 sold32 sold do8 |
    r4 r8 sold16 la sold mi re mi | sold4 r r8 sold16 lad sold mi red mi | sold4 r2 |
    r2 r8 sold16 la! sold fad red fad | sold4 r2 | r4 r16 si? si si |  mi4 re | mi8 si4. r4 |
    r8 sold16 si sol4 r8 si16 sib re4 | dod16 re dod8 dod16 la sol la dod4 r8 la |
    dod re dod la \t {sol sol la} |  dod4 r2 | R1*2 | R2.*3 R1 |
    R2. R1 \parlato sol4-\markup "(en aspirant)" r2 | r16 sol sol sol sib4 r |
    re8 fa re4. re8 re re | \t {dod dod dod} fa4 r |
    r8 re \t {fa re re} fa dod4 dod8 | re la dod4 r |
    r8 si~si16 si8.~ si8 sib re dod~| \t {dod fa mi} sold4 r |
    r2 r8 sold | la16 sold mi re mi4 sold8 la | sold4 r r8 mi |
    sold mi re mi sold la | sold4 r2 | re8 mi sold mi \t {re si mi} |
    la2.~| la4 r2 | R2. r4 r8 re,,4. | \t {sold8 fad sold} si4 re8 si |
    mi2 r4 | re8 si mi4 \t {re8 si fa'} | sib1~| sib4 r r2 | R1 |
    R1*5 r4 si,!2 | r4 r8 si sold'2 | r4 r8 si, sold'2 | r4 r16 sold, si8 r4 |
    r4 sold~| sold8 r r si | sold'2 | r4 r8 si, sold' r16 si, | 
    si si la la si8 r16 re si si re si | mi4 r8 re | si'4 r8 re, | si'4 r |
    r16 mi,8 mi16 mi mi re re | mi8 r16 re re si re si |
    sol'8 r16 re si'8. re,16 | si'8 r16 sol sol sol fa? fa sol8 r | R2.-\fermataMarkup |
    R1 R2.*3 R2 r4 r8 fa, fa fa | lab2. r4 | r solb fa lab | mib r r re | R1 |
	}
}

ActeUnSceneQuatreSopranoDeux = { \SopranoDeux
  \relative {
    \partial 4 r4 | R2*5/4 R2*3 R2*5/4 R2*2 R2. R2*3 |
    r4 r16 la' la la re4 do | re8 la~ la la \t { sold sold sold } |
    do4 r r2 | \t { la4 re la~ } \t { la16 la8. la8 } \t {sold sold sold} |
    do4 r r2 \t {r4 la la } | re4. la8 \t { r4 do re } | do r \t {la la re~}|
    re2 r \t { r4 do re } | sol1~ sol4 r r \t { r8 sol, do } |
    fad4 r do16 la re la | do4 la8 sol la re | do4 r re8 sol | 
    fad4. re8 do16 re fad sol | fad4 r2 R2.*3
    r2 r16 la, la la | re4 do8 do4 re8 | la4 r2 |
    r16 la sold sold sold sold do8 si16 red8 si16 |
    red8 la16 si mi8 red r16 si la si | red4 r2 |
    R2.*4 r4 r8 r16 sib la'4 |
    r8 r16 si,! la'4 mi8 la,16 la | dod8 re dod la \t {sol la re } |
    la'4 r r8 sib, | re16 mib re sib lab8 sib  \t {re sib mib } | la!4
    r si,!8 red | \t { mi red si } la si red16 si mi la | red,4 r8
    si16 si mi la, re! mi | sold4 r16 mi mi mi sold re mi sold | la2~ la8 r r4 |
    R2. R1 r8 re, \t { r la la } \t { mi' la, si } | re,4 r8 la' |
    dod mi, mi mi la16 re, re la' | sib8 re sib sib | \t { mib sib sib } sib4 
    red8 si! | mi si si4 | \t { re!8 la' mi } si4 r |
    R1*2 r4 sold8. sold16 dod2 | sold8 r si8. si16 mi4 si8 r |
    r2 r4 re8. re16 sol4 dod,8. dod16 |
    fad4 do!8 do sold do | mi2 si8 r r4 |
    
    r4 lab \t { lab lab lab } | sol2. r4 |
    r  lab \t { lab sol sol } | si2 fad4 r|
    r  sib dob sib | \t { re dob fa, } sib dob8 sib |
    re sib sib solb sib4 mib | \t { r re re } \t { re sib re } |
    la'1~ la2 r4 | R1 R2. R1*7 R2
    r4 r8 la, | la la \t { la sol sib } sol fad r4 r8 la |
    re,4 r8 re do mib | si4 r2 | R2. 
    r4 r8 r16 fad' red'4 |
    r4 r8 r16 la   fad'4 |
    r4 sol r2 R1*3 R2.
    r16 fa, sib8 r8 r16 sib~ sib lab reb8 r re | re4 re8 re4 re8 | re4 r r2 |
    R2. R1 R2. R1*2 R2.*3 R1*2
    
    R2. R4. R2. R4. R2 R4. R2*3 R4. R2*3 R4. R2*3 R4. R2.
    R1*4 re4 r r2 | re4 r r2 | re4 r r re | re r r re |
    re r re r re r r2 | re4 r r2 | R1 R2 R2.*2 R2 R1
    R2.*4 r4 si8 si si dod | sold4 sold8 sold sold sold | \t {sib4 fa sol!} re |
    R2.*2 r4 \t {r8 re' re} \t {re re mi} | \t {si si si} \t { si si dod } sib4|
    R2.   r4 sib r | \t {r8 fad fad} \t {fad fa fa} la fad |
    R2.*2 r8 sib la4 r | lab8 lab \t{sol sol sol} si!4 |
    r8 sold si sol fad fad | la4 r r8 lab | re,4 r2 |
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5 R1 R1. R1 R1. R1 R1.*5 R1 R1. R1
  }
}

ActeDeuxSceneUnSopranoDeux= { \SopranoDeux
	\relative {
		R2.*4 R2 R2.*2 R2 R2.*3 R2 | R2. R2 R2.*2 R2 R2.*3 R2 | R2. R2 R2.*2 R2 R2.*3 R2 |
    r4 sold'8 sold sold4 | sol!8 si4 si8 sib sib | re4 r r8 re re re | 
    \t {fa re re} re4. re8 |
    r4 si8 sib sib la dod la | lab2 r4 | R2 | R2. | R1 |
    
    r4 la!8 sold la do re do | la4 la8 la sold sold sold re' | do4 do8 r r4 |
    r sold8 la sold mi | re4 mi sold8 la | sold4 sold8 sold la re, | mi4 sold8 la |
    sold4 sold8 r r4 | la8 re sold,4. fa8 | re'4 la re | sold, la8 re la sold |
    re sold la4. sold8 | la re la sold \t {mi4 la re8 mi} | re2 r4 | R2
    \t {mi4 re sold} r | re8 la' sold4. mi8 sold la | sold4 r re |
    mi16 si8.~ si8 dod~ dod re~ re8. sol!16 | re4 mi8 si dod4 |
    sold2~ \t {sold4 si la} | re2 r4 r2 r4 do! | fad do sol'  |
    fad sib,8 do fad2~ | fad4 r do | re8 fad sol fa \t {do4 re la~} la2 r4 |
    r2 la4 la la2 r4 | r la \t {la la la} la2 r4 |
    la4 la \t {la r do} la2 la4 | re la re mi | sold2.~ sold2. r4 |
    \repeat unfold 10 {R2. R1} R2. r2 re4 | r \t {do fa2~} | fa2 r4 |
    R2. \t {r4 red, fad} fa'!~ | fa4. sol, | R2.
    r4 r8 do do mib | fa2 do4 | si8 mib fa2 r8 do |
    do mib fa4. do8 | si dod fad2 r4 |
    lab mib8 fa! do!4 | r4 r8 la! la sol4 sib8 | fad2 r4 |
    R1 R2. r2 dod'4 r | si4. re | sib2 r | r4 r8 la4. |
    \t {la2 sol sib} | fad2.~ | fad4 r | R1 R2. R1 R2. R1 R2. R1 |
	}
}

ActeDeuxSceneDeuxSopranoDeux= { \SopranoDeux
  \relative {
    R1. 
    r1 r4 re | sold2. r4 mi2 | la1 r2 | R1.*2 |
    R1*2 | R2.*5 | R1. | mi4 sold2. r2 | R1. | 
    R1*2 | R2. | r2 r4 r8 mi | sold4 re8| 
    la'4. r8 r16 re, sold la sold re mi la |
    sold4 r fad16 la si4 mid,16 sold |
    dod2 r4 r8 la | 
    sold8. la16 dod red dod8. red16 mi!8. dod16 mi8 |
    mid4. r8 si8 mid,16 sold red' si red mid | lad2. r4 |
    
  }
}

ActeDeuxSceneTroisSopranoDeux= { \SopranoDeux
  \relative {
    R4.*51 R4*2 mi32 mi sold16 r mi | re32 re la'16 r sold |
    mi8 re32 mi la16~| la mi sold re'~| re la mi sold | si,4 R4*11
    sib'32 sib re16 r sib | la32 la mi'16 r8 |
    re16 la re,32 mi sold16~| sold la sol' re | mi,4 R4*3 R4. 
    lab16. sol32 r16 do | r do do do | do re la8 |
    r16 lab sol sol | si si \t {sib sib sib } | re4 | R4
    R4.
  }
}
