%-- Étude pour violon ---------------------------------------------%
% (c) 2009 Valentin Villenave
% http://valentin.villenave.net

ViolonInstr = "Violon"

\header {
  title = "Hachoir"
  piece = "Étude de virtuosité"
  subtitle = "Étude de virtuosité pour violon seul"
  composer = "Valentin Villenave"
  date = "janvier 2009"
}

\language "italiano"

\paper {
  system-system-spacing = #'((space . 10) (minimum-distance . 15))
  first-page-number = #-1
}

\pointAndClickOff

\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    \override #'(box-padding . 6)
      \box \center-column {
        \line {
          Copyright & copyleft © Valentin Villenave, 2009-2011.
        }
        \line {
          \with-url #"http://valentin.villenave.net"
          \typewriter http://valentin.villenave.net
        }
        \vspace #.5
        \override #'(line-width . 100)
        \justify {
          Cette partition est publiée suivant les termes de la licence
          \with-url #"http://fr.wikipedia.org/wiki/Wikipedia:CC-BY-SA"
          \bold { Creative Commons, Paternité, Partage des
            conditions initiales à \concat {l'identique \medium . }}
          Vous pouvez la copier, la modifier et la jouer \italic librement
          sans contrevenir au droit d'auteur, à condition de respecter les
          termes de la licence (notamment en veillant à mentionner le nom
          de l'auteur et l'adresse web d'origine).
        }
        \vspace #.5
        \line {
          Gravure réalisée au moyen du logiciel libre
          \with-url #"http://www.LilyPond.org"
          \concat {\bold "GNU LilyPond" ,}
          \concat { #(ly:export (string-append "version " (lilypond-version) ".")) }
      }
    }
  }
}
\pageBreak

Violon = \relative do' {
  \time 2/4
  \tempo "Presto possibile"
  la16\f-"secco" la la la la la la la |
  la la la la la la la la |
  la la la la sib\<-"toujours détaché" la sib do |
  mib->\> sib do la la\! la la la |
  la la la la sib-> la la la |
  sib-> lab lab lab la\< do sib mib |
  <fa solb>-\sfz sol, sol sol sol sol <fa' solb>-> sol, |
  sol sol <fa' solb>-> sol, sol sol sol sol |
  <fa' solb>-> <fa solb>-> <fa solb>-> sol,
  sol sol <fa' solb>-> sol, |
  sol sol <fa' solb>->\> solb solb lab, lab lab |
  fa'-> lab, lab lab lab solb' la, la |
  la fa' lab, solb' la,\mp la la la |
  la\< do sib mib <fa solb>->\> mib sib do |
  la\< do sib mib fa solb\! la, la |
  mib' mib <fa solb>-> mib mib\< do fa solb |
  <sold la>\f <sold la> <sold la> <sold la>
  <la si>-> <sold la> <sold la> <sold la> |
  <sold la> <sold la> <la si>-> <sold la>
  <sold la> <sold la> <sold la> <sold la> |
  <sold la>\mf-"molto staccato" <la si> la <sold la> <la si> la la la |
  <la si> la <sold la> <la si> la <fa la> <la si> la |
  la <fa la> la la la <fa la>\< <fad la> <sold la> |
  <fad dod'>\sfz la, la la la la la <fa' dod'> |
  la, la la la la <fa' dod'> la, la |
  la la <fa' dod'> la, sib-> la la la |
  sib la sib la sol la la la |
  sol\< la do sib mib sib do <fa solb> |
  sol,\f sol <fa' solb>-> sol, sol sol <fa' solb>-> sol, |
  sol sol <re' mib>-> sol, <mi' fa>-> sol, <fa' solb>-> sol, |
  la\fp \< do sib mib fa sold fad si dod mi\! fa,\< sold si dod mi\! fad, |
  si do, sib mib
  \pl {\oneVoice dod'\< mi re sol \voiceTwo
  %%%%%%
  \time 3/4
  la,4_\leftpizz-\dyn "ff_ample"}
  {s la'} r8 <dod, la'>4.---> | \pageBreak
  \pl {dod8( mi) si( re) sold,( dod)}
  {la'4-- sol-- mi--} <dod la'>4---> la8_\leftpizz <dod la'>4.--\sf |
  \pl {si8( re) fad,( si) do,( mib)} {sol'4-- re-- lab--}
  <mi dod' la'>8-"détaché ample" <mi dod'>-. <re si' sol'> <re si'>-.
  <si sold' mi'> <si sold'>-. |
  <red si' sol'>\< <red si'>-. <do sold' mi'> <do sold'>-. <sol mib' re'> <sol mi'>-. |
  <sol? sold' fad' la>4--->\f \t {<dod' la'>8\< mi <fad sold>}
  \t {<red la'> <la do'> <la sib'>} |
  %%%%%%
  \time 4/4
  \tempo "Tempo I"
  <mib' mib'>16->-\dyn "sfpp" mib'-"très léger" mib mib mib mib mib mib
  mib mib mib mib mib-> mi re dod |
  mib-> mib mib mib mib mib mib-> mi
  dod do mib-> mib mib-> mi do sib |
  mib-> mi mib re dod sib\< mi fa
  sol\mp lab\> sol fad red mi red dod |
  do la\! sol'\> lab sol mi mib re
  si\! lab'\> mi mib re reb sib la' |
  \time 3/4
  fad,->\p fad fad fad fad sol mi red fad-> sol fa re |
  do-> fad fad,\mp fad fad-> sol fa mi sold-> fad fad fad |
  fad\< fa la lad si\! sold fad fa mib\< fad sib, do |
  \time 2/4
  la\f la la la sib la do mib |
  \time 3/4
  la do sib mib fa\< sold fad si sold si re dod\! |
  %%%%%%
  \time 5/4
  \tempo "Poco meno mosso"
  \pl {r4 sol,,8_\leftpizz re'_\leftpizz la'4_\leftpizz r8
    re,_\leftpizz la'4_\leftpizz s1*5/4
    r4 sol,8_\leftpizz re'_\leftpizz la'4_\leftpizz r8
    re,_\leftpizz la'4_\leftpizz s1*5/4
    r4 sol,8_\leftpizz re'_\leftpizz la'4_\leftpizz r
    <re, la'>_\leftpizz
    \time 3/4
    r4 sol,_\leftpizz r r re'_\leftpizz r
    r sol,_\leftpizz re'_\leftpizz
    r la'_\leftpizz r r sol,8_\leftpizz re'_\leftpizz la'4_\leftpizz
    s2.
    r4 sol,8_\leftpizz re'_\leftpizz la'4_\leftpizz
    sol,_\leftpizz <re' la'>_\leftpizz r
  r re_\leftpizz r sol,_\leftpizz r re'_\leftpizz r8 re_\leftpizz}
  {\ten mi''1*5/4-\dyn "pp_subito" ~ mi4( mib)\< do2(\p\>-"espr." si4)
    fad'1*5/4\! ~ fad2( sol4) si,4.( lad8)
    dod1*5/4~-"poco più"
    \time 3/4
    dod2 re4 dod4.( si8) dod( lad) dod2~ dod8 r
    fa2\mp\> mi4 dod2.\!~ dod8( re) si( dod lad fad')
  mi,2.\p~ mi2 fad4 mi2 re4\>~ re mi2~ mi4\!}
  mib,8-"pizz." do sib dod
  %%%%%%
  \time 4/4
  \pl la'4_\leftpizz \pp {<re, la'\harmonic \parenthesize la'>16
  <la'\harmonic> <la\harmonic> <la\harmonic>}
  <la\harmonic> <la\harmonic> <la\harmonic> <la\harmonic>
  <la\harmonic> <la\harmonic> <la\harmonic> <la\harmonic>
  <la\harmonic> <la\harmonic> <la\harmonic> <la\harmonic> |
  \time 3/4
  <re,\harmonic la'\harmonic \parenthesize re' \parenthesize la'>
  <re\harmonic la'\harmonic> <re\harmonic la'\harmonic> <re\harmonic la'\harmonic>
  <re\harmonic la'\harmonic> <re\harmonic la'\harmonic>
  <re\harmonic la'\harmonic> <re\harmonic la'\harmonic>
  <re\harmonic la'\harmonic> <re\harmonic la'\harmonic>
  <re\harmonic la'\harmonic> <re\harmonic la'\harmonic> |
  %%%%%%
  \time 2/4
  \tempo "Tempo I"
  la\sfp la la la la la la la |
  sib\< la mib' do fa\> solb mib sib |
  la\! la la la la la la la |
  sib\< la do mib fa\! lab, lab solb' |
  sol,\mp sol <fa' solb> sol, sol <fa' solb> sol, <fa' solb> |
  sol, sol <red' mi>->\< sol, <mi' fa>-> sol, <fa' solb>->\! sol, |
  sol sol <la' sib>->\< sol, <si' do>-> sol, <do' reb>-> sol, |
  sol\f sol <sold' do mi> sol, sol <sold' do mi> sol, sol |
  <fad' si mi>-> sol, sol sol sold sold sold sold |
  <re' la' mi'>-> la la la <re la' mi'>-> la la la |
  la la <re la' mi'>-> la <la re> <la re> <la re> <la re> |
  <re la'>\mp\< <mib la> <mi la> <fa la> <fad la> <sol la> <sold la> <la la>\! |
  <la mi'>\mf\< <sib mi> <si mi> <do mi> <dod mi> <re mi> <red mi> <red mi> |
  <red mi>\ff <re, mib> <re mib> <re mib> <red' mi> <red mi> <red mi> <re, mib> |
  <re mib> <sold la> <re mib> <re mib> <red' mi> <red mi> <red mi> <red mi> |
  la,--\sfp\< sib do mib fa\> do sib dod |
  la--\< sib do mib fa fad sold si\! |
  la,--\< do sib mib fa\> mib sib do |
  la->\< la sib-> sib do-> do mib-> mib |
  fa-> fa fad-> fad sold-> sold si-> si |
  <re, dod'>\ff-"sonore" <re dod'> <re dod'> <sol, re'>
  <sol re'> <sol re'> <re' dod'> <re dod'> |
  <re dod'> <sol, re'> <sol re'> <sol re'> <fa' mi'> <fa mi'> <fa mi'> <sol, re'> |
  <fa' mi'>\< <lab sol'>\! <sol, re'> <sol re'> <lab' sol'> <sol, re'>\< <sol re'> <sol re'> |
  <solb'' fa'>\! <solb fa'> <solb fa'> <solb fa'> <solb fa'> <solb fa'> <solb fa'> <solb fa'> |
  %%%%%%
  la,->\p do sib mib fa sold fad si |
  la,->\mf re si mi fa sib sol do |
  la,->\f re do mib fa si sold dod |
  la,->\< fa' re sol la reb sib re |
  mib\fff mi, mib' mib mib mi, mib' mib |
  <la,, mi'> <la mi'> <la mib''>\< <la mib''>
  <la mi''> <la mi''> <la fad''> <la fad''>\! |
  %%%%%%
  \time 3/4
  r8 <la re\harmonic \parenthesize la''>16-\dyn "pp_subito" <la re\harmonic>
  r <la la'\harmonic> <la la'\harmonic> <la la'\harmonic>
  r8 <re, la'\harmonic \parenthesize la'>16 <re la'\harmonic> |
  \time 4/4
  <re la'\harmonic> <re la'\harmonic> r la'\CaV\p la\CaV la\CaV la\CaV la\CaV
  r8 la,16\f\< la la la la la\! \bar "|."
}
