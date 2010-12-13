%------------------------------------------------------------------%
% Sonate -- piano.ly                                               %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

Piano = {
  \set PianoStaff.instrumentName = \markup { \hcenter-in #27.5 "Piano"}
  \set PianoStaff.shortInstrumentName = "Pno."
  \set PianoStaff.midiInstrument = "acoustic grand"
}


mainDroite = \relative {
  
  %%% Variation I %%%
  \time 5/4
  \tempo Lent
  si'2--\p si2~( si8. do16 | si2.) si2 |
  si2.( la2) | si1*5/4-- |
  si2--(\psempre si2.--) |
  si2~( si8. do16 si2~ | si\> la2.) |
  
  si2\! si~( si8 do | <sold la si>2.)\pp si2 |
  si2.~( si8 la~ la4) | si1*5/4--\> |
  si2\psub
  
  \pl {
    s2. r2 <mi,? fa>2. s1*5/4 |
  }{
    \oneVoice  si'2~( si8. la16 |
    \voiceOne si2.) la2~( |
    \oneVoice la si2.) |
  }
  
  \pl {
    <reb,mib>2 <reb mib>2. |
    <reb mib>2 <reb mib>2. |
    <reb mib>2 <reb mib>2. |
    <mi? fa>1*5/4\laissezVibrer |
    r1 <mi fa>4~ | <mi fa>2 <mi fa>2. |
  }{
    sol2\mp sol~( sol8. lab16 |
    sol1) fa4~( | fa2 sol2.) |
    si4.(\piup la8~ la4 si2~ |
    si4~ si8. do16 si2.~) | si2 si2. |
  }
  <re,? la'>2(\> <mi fa si>2.)\! \fermata |
  \bar "||"
  
  %%% Variation II %%%
  \time 7/4
  \tempo "Stesso Tempo"
  r4\pp si'2~( si8. do16 si2.) |
  r8 si--~( si4.. do32 si la4~)
  %%FIXME: ugly tuplet
  la8 r \stemUp \t {la4( si8~)} si r \stemNeutral |
  \ind #"poco più" si8( do~) \t {do reb,( do'~)}
  do do--~ do4 si8.( do16~) do4 \t {r8 si(\< do)} |
  do(\! reb~) reb reb4-- do8--~ \t {do re,!( do')}
  do(\< reb~\! \t {reb do si'~} si do,?) |
  r8 reb16( mib~) \t {mib8 la,( si~}
  si32\> mi fa,8 sol16~ sol8 do,)
  \t {r4 si'8--~} si2 |
  
  r4\pp si2( \t {do8 si4~)} si2. |
  r8 si--~ si4~ si16\< \ind "cantando" la8( red16~
  red16.\! do,32 fa8~) fa4. si8--~ si r |
  la8\pdolce ( sib~) \t {sib sold( la~)}
  la16 sib( sold la)
  la8( sib~) sib16 fa( mi'8~)
  \t {mi la,16.-- sold'32 sib,8--~} sib r |
  \ind "poco più" si( do~) do16 do8-- fad16(
  \tt {sol,16) mib'( la dod, sib)}
  mi32->( fa,16.) \t {la'16( sib, mi}
  \t {fa,4--) do'16( reb,~)} reb8. mi16
  la16(\< fa) \t {lad( si do)} |
  \tt {dod8--(\! re-- mib16--~)}
  \ttt {mib si'( la mi sol lab,)}
}

mainGauche = \relative {
  <mi fa>2--( <mi fa>2.--) |
  <mi fa>2--( <mi fa>2.--) |
  \simile <mi fa>2 <mi fa>2. |
  <mi fa>2 <mi fa>2. |
  <do fa sol>2 <do fa sol>2. |
  <do fa sol>2 <do fa sol>2. |
  <do re sol>1*5/4-- |
  
  <mi fa>2 <mi fa>2. |
  <fa sol?>2 <fa sol>2. |
  <mi fa sol>2--( <mi fa sol lab>2.-- |
  <mi fa sol>2-- <mi fa>2.--) |
  <red mi>2 <red mi>2. |
  <red mi>2 <re mib>2. |
  <re mib fa sol>1*5/4-- |
  
  r4 do2. r4 | r do2. r4 |
  r do2 do |
  \pl {
    r4 do~do2.
  }{
    <reb mib sol>2 <reb mib sol>2.
  }
  <do reb sol>2 <do reb sol>2. |
  \pl {
    <do reb>2 <do reb>2.
  }{
    sol'4~( sol8. lab16 sol2.)
  }
  r2 <do, re! sol la!>2.\fermata
  
  %%% Variation II %%%
  \clef bass
  mi4--( fa,-- si-- do,-- sol'-- si-- fa--) |
  mi'--( fa,-- si-- do,-- sol'-- si-- fa--) |
  \simile mi' fa, si do, sol' si fad |
  sol' lab, red mi, si' la dod |
  sol' lab, red mi, si'--( la-- lab--) |
  
  sol--( fad-- fa-- mi--) lab--( sol-- fad--) |
  sol--( fad'-- fa,-- mi'-- do,-- si'-- fad--) |
  re'--( dod-- do-- si--) mib,--( mi-- fa--) |
  re--( dod'-- do,-- si'--) fad--( sol-- sold--) |
  la--( sold'-- do,,-- reb'-- mi,-- mib-- sib'--) |
}
