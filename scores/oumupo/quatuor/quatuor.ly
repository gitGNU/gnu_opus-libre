\language "italiano"

Titre = "Trente-deux variations"
SousTitre = "sur huit notes"

violonUnInstr = "Violon I."
violonDeuxInstr = "Violon II."
altoInstr = "Alto"
vlcInstr = "Violoncelle"

\header {
  title = \Titre
  subtitle = "Violoncelle"
  composer = "Valentin Villenave"
  date = "décembre 2014"
}

mesures = {
  \tempo "Andantino serioso" 4 = 72
  \time 16/4
  s1*4\dyn "mf_à la corde"
  s1*4*2^"(ben sostenuto)"
  s1*4*2^"(poco vibrato, sans nuances)"
  \time 4/4
  s1*2\fp \<
  s1*2\p \<
  s1*2\p \<
  s1\f \<
  \tempo "Scherzando grazioso" 4 = 92
  \time 3/4
  s2.*3\mp
  s2.\dyn "poco più"
  \time 2/4
  s2*2\fp ^"quasi staccato"
  s2*2\cresc
  <>\!
  \time 2/2
  s4 s4*7\dyn "f_ample" \<
  s2\! s1.\dyn "p_cresc. molto" \<
  \tempo "Vivo energico" 2 = 132
  \time 7/4
  s1*7/4*3\f
  \time 5/4
  s1*5/4^"(détaché)"
  s1*5/4\<
  s1*5/4\ff
  \tempo "Tempo I" 2 = 72
  \time 2/2
  s1*3
  s1\f
  s4 s4*7\f ^"arco"
  s1\>
  s1*8\!
  s2.\> s4\pp
  s8 s4.\< s2\f
  \bar "|."
}

violonUn = << \mesures \relative do' {
  do1 re\open si fa' sol\open la\open mi do'
  re,2\open mi dod sol'\open si, fad' la\open re\open
  mi, sol, sol'\open la, si' do fad, re
  fa do4 sol--~\downbow sol la'--~_"III" la sib,--~ sib2 re'( mi fa)
  do,4 la'(_"III" si) do re( mi) fa sol
  sol,\open \p \< re do' sib, fa'2-- sib8(\downbow mib) la4\open
  sib,\p do re lab8( mib' fa4) sol2-- mib4
  fa,8 re'_"II" mi fa sol sib, fa' do'
  dod-. la16\downbow si la8-. fad16\downbow sold mi8(\> re-.)\!
  re'16(\sf do) si la sol8-. fad^"pizz." mi-+ sol
  mi'\open re dod16(^"arco" si) la8-. fad16( sold) la8-.
  fad'^"pizz." mi red dod si16(\sf ^"arco" la) sold-. mi-+
  fad, re mi la sol re si' dod,
  si dod sold la mi' red mi fad
  si, sold lad dod red fad mi si'
  do32\< ^"leggiero" re mib fa sol8--\! sib,,16-.\downbow la''8->( sib16)
  r4 do2 si4~( \tuplet 3/2 {si la-- sol--)} \tuplet 3/2 {fa-- mi-- re--}
  r2 do~\upbow do1
  re,4-- mi-- la8-> sol, dod4-. si'-. fad8-> re'4.
  mi8-> si la4-. mi-. red8-> sold4. dod,4-- fad--
  mi''8-> fa,4. sol4-. re'-. do8-> la sib4-. fa-.
  mi8( si'4) la8 re( sol,) fad4-. si8 mi
  la->( re,) mi-. sold,4-. la'8->( dod,) fad-. si,4-.
  lad'8-> fad sold dod, red mi, si'-> si,4.
  lab,4\sfz ^"pizz." r r2 r lab''8--\f ^"arco" sib16 do reb mib fa sol
  r4 mib,,^"pizz." r8 r16 mib'^"arco" \upbow \tuplet 6/4 {fa( sol lab sib do re)}
  fa8-. reb^"pizz." do mib reb lab solb sib
  r4 fad,2 sold4 \tuplet 3/2 {lad2 si dod} \tuplet 3/2 {red( mid fad)}
  lab,\p( sib) r4 mib,^"pizz." reb do sol' fa
  \tuplet 3/2 {r4 lab'2--\upbow ^"arco"}
  r4 do,,^"pizz." reb r
  \tuplet 3/2 {reb'2(\upbow mib fa^"molto espr."} \tuplet 3/2 {solb lab sib)}
  \tuplet 3/2 {si,( dod red} \tuplet 3/2 {sold,) fad'--\upbow mi,--}
  lad'8(\upbow si) sold, fad
  \tuplet 3/2 {dod' red fad} \tuplet 3/2 {mid lad si}
  r re,,16(\upbow mi fa sol la si do4-.) do,^"pizz."
} >>

violonDeux = << \mesures \relative do' {
  sol1 la mi' si do re\open fad sol\open
  la,2 sold re'\open dod la'\open si fad mi
  si4 dod--~ dod2 mi la\open fad red sold mi'\open
  re,\open sol\open la\open si dod, fad( mi re)\open
  %BUG%
  re4(_"IV" do) sol'\open sol, fad' la--(~_"III" la8 mi) si'4
  la\open sol fa re'\open mi(_"II" fa) do( sib)
  la_"III" mi fa sol re'( do) do,--\downbow si''--
  sol,8 fad mi re re' la' si dod,
  fad16( mid) sold fad mid8-. red^"pizz." dod si
  fad'-.^"arco" sold16\downbow red mi8-. si16\downbow lad si8(\> dod-.)\!
  la'^"pizz." si fad sold mi16(->^"arco" red) mi dod
  la'8^"pizz." sold la16(^"arco" si) fad8-. re16( mi) dod8-.
  do16 si la sol fa mi re do
  sol8-. la32\downbow \< ^"leggiero" sib do re fa16-.\! mi8(-> fa16-.)
  sib, la sol sib do re mib fa
  si dod red mi fad sold lad si
  r4 do,,2 re4(~ \tuplet 3/2 {re mi-- fa--)} sol-- la--
  r2 si~\upbow si2. do4^"pizz."
  sol,4--^"arco" la-- si8-> do re4-. fad-. sol8-> mi4.
  sol8-> la re,4-. si-. fad'8-> mi4. re4-- dod--
  la'8-> mi'4. re4-. dod-. si8-> la sold4-. fad-.
  si8( la) mi'4-. fad8 dod red,-. mi'4(-> sold8)
  si,( la) fad'4-. sold8 red dod,-. mi'4(-> si'8)
  do-> sib fa mi sol re la-> fa4.
  r2 mib8--\p fa16 sol lab( sib) do re mib4-. r r2
  r4 lab,8--\mp sib16 do reb( mib) fa sol lab4-.
  fad8^"pizz." mid red si lad fad' dod sold
  r4 reb2 mib4 \tuplet 3/2 {fa2 sib lab} \tuplet 3/2 {solb do reb,}
  sib4\mp ^"pizz." r mib r r sib8 sol do4 r
  fa'1*1/2\p \upbow ^"arco" re,4-+ la'-+
  sib2 re,8( mib sib sol) fa'1 do8(\upbow la) r4 r2
  \tuplet 3/2 {mib'2(\upbow lab^"molto espr." sib)}
  \tuplet 3/2 {fa'( reb) lab'}
  do,8\downbow sol reb do
  \tuplet 3/2 {fa solb lab} \tuplet 3/2 {reb sib mib}
  r8 re,16(\upbow mi fa sol la si do4)-. do,^"pizz."
} >>

alto = << \mesures \relative do' {
  \clef alto
  do,1 sol'\open la fa re'\open mi si' do,
  fa,2 re'\open fa sib, mi sol\open do\open la,
  lab fa' sib, mib~ mib4 do-- sol'2\open re'\open mib,,
  sib' mib fa re\open do'_"I" la,(_"III" sib sol)
  sol'4\open si, la mi'8( re do2) fa4 do
  mi,-- \clef treble si'' la8( fad4 sol8) do2 sol'4\open re\open
  sol, fa4.( sib8) mi4-- do\upbow fa,-- la'(--\open re,--)\open
  \clef alto do8 sol sib la sib fa mib re
  lad'^"pizz." fad si16(^"arco" dod) sold8-. red16( fad) mid8-.
  mi^"pizz." red dod si la16(-> ^"arco" sold) fad mi
  la'8-.\open \upbow fad16 sold la8-. si,16\downbow dod re8(\> mi-.)\!
  re16(-> mi) fad(-. sol-.) la8-.\open si^"pizz." dod,, re'\open
  sib'16^"arco" lab sol lab do, fa reb mib
  do lab sib reb solb, reb' mib, fa
  la si8(-> sol16-.) dod32\< ^"leggiero" re mi fad re8-.\!
  sol16\downbow fad mi re do la si sol
  r4 do2 si4(~\upbow \tuplet 3/2 {si la-- sol--)} fa-- mi--
  r2 re~\upbow re2. do4^"pizz."
  fa-- ^"arco" do'-- sib8-> sol fa'4-. mi-. re8-> la4.
  fad8-> si dod4-. lad-. sold8-> si4. red,4-- mi--
  la8-> si4. dod4-. sold-. fad8-> red' mi,4-. mi'-.
  la,8( re) mi si'4(-> dod,8-.) sold'4-. fad8 la
  re,8( dod4) re8 la( si) mi4-. sol8 fad
  re-> mi fad sol, do la' si-> sol,4.
  reb8--\fp mib16 fa solb( lab) sib do reb4-. r
  R1
  mib,4\mf ^"pizz." r mib'8--^"arco" fa16 sol lab sib do re
  sib8-. do^"pizz." fa, sol re mib sib la
  r4 fad2 dod'4 \tuplet 3/2 {red2 si mid} \tuplet 3/2 {lad sold fad,}
  r4 lad\mp ^"pizz." si sold
  \clef treble \tuplet 3/2 {si'2(\p ^"arco" dod red)}
  \tuplet 3/2 {mi,4^"pizz." r fad'^"arco" \upbow ~} fad2
  r2 si,-- \clef alto r sol,8( fad la sol) r do,(\upbow mi re) r2
  r fad'8( red sold dod,~ dod2) mi,8(\upbow si' mi la~ la4)
  fad,8\downbow sold \tuplet 3/2 {si lad dod} \tuplet 3/2 {red fad mid}
  r re16(\upbow mi fa sol la si do4-.) do,,-+
} >>

vlc = << \mesures \relative do' {
  \clef bass
  fa,1 re\open mi do' sol\open sib la\open fa'
  do,2\open si la sol\open fa mi re do
  re la' sol\open fa mib' do\open sib sib'
  do,4-- lab'~--\upbow lab sib~-- sib fa~ fa mib~ mib
  sol,~\open sol re'~\open re2 mib,
  \clef tenor
  fa'4-- fa'8( mi re4) do la'\open sib,-- sol2--
  do8( sib) la4 sol-- mib'-- re4.( sib8) fa'2
  lab4 sol2(-- do,4--) mib8( reb sib lab) fa2
  do'8 re lab fa' sol mib sib mib,
  \clef bass
  re,^"pizz." mi fad sol la16(-> ^"arco" si) dod re
  do,8-+ re^"pizz." mi16(^"arco" fad) sol8-. la16( si) sol8-.
  do16(-> si) la sol fa8-. mi^"pizz." re do
  dod--\downbow ^"arco" mi16\downbow red
  mi8-. sold16\downbow fad la8( si-.)
  \clef tenor
  sol''16 la8->\open re,16~\open\downbow re dod-. mi32\< fad la si
  la,16-+\! sol\upbow dod si re re, fad mi
  sol do si la sol re fad mi
  reb' do sib fa \clef bass mib re lab solb
  r4 do,2 re4~( \tuplet 3/2 {re mi-- fa--)} \tuplet 3/2 {sol-- la-- si--}
  r2 do~\upbow do1
  si4-- mi-- red8-> dod si4-. lad-. sold8-> fad4.
  re8-> mi sold4-. fad-. dod'8-> la4. si4-- la--
  re8-> sol,4. la4-. si-. do8-> mi fad4-. sol-.
  %BUG%
  sol8( re la-.) mi'-. fa,4-> sib8 do, fa'4-.\upbow
  mi,8( la) si4-. mi-. fad8( sold) dod red
  la'-> re,, sol' fad re, mi' dod-> si4.
  R1
  fad,8--\mp sold16 lad si( dod) red mid fad4-. r
  lab,8--\p sib16 do reb( mib) fa sol lab4-. r
  reb,8^"pizz." sib' reb lab do solb mib' fa,
  \clef tenor
  r4 si2 sold4 \tuplet 3/2 {lad2 dod fad}
  \tuplet 3/2 {mi( red si')}
  \clef bass
  fad,,4\mp ^"pizz." fad' sold mid, red r dod si' lad r r2
  mi'8(^"pizz." dod fad mi) red2 si8( sold la4) r2
  R1
  dod8( si fad' sold~ sold2) la,8( mi la'-+ re,~ re2~ re4)
  si8\downbow lad \tuplet 3/2 {sold si fad} \tuplet 3/2 {mi red dod}
  r re'16(\upbow mi fa sol la si do4-.) do,,-+
} >>



\pointAndClickOff
#(set-global-staff-size 17)

\paper {
  first-page-number = #-1
 % system-system-spacing.minimum-distance = #14
 % ragged-last-bottom = ##t
}

\pageBreak
\markup \fill-page {
  ""
  \fill-line {
  ""
  \general-align #Y #0.5 {\epsfile #X #30 #"scores/oumupo/oumupo.eps" }
  \line {
    \override #'(line-width . 45)
    \wordwrap {
      \hspace #4 Cette pièce s’inscrit dans le cadre de
      l’Ouvroir de Musique Potentielle
      \concat { ( \with-url #"http://oumupo.org" \typewriter http://oumupo.org ),}
      dédié à l’écriture musicale sous contraintes formelles.
    }
  }
  ""
  }
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2014.
      }
      \line {
        \with-url #"http://valentin.villenave.net"
        \typewriter http://valentin.villenave.net
      }
      \vspace #.5
      \override #'(line-width . 100)
      \justify {
        Cette partition est publiée suivant les termes de la licence
        \with-url #"http://artlibre.org/licence/lal"
        \bold { Art Libre }
        \concat { ( \with-url #"http://artlibre.org" \typewriter http://artlibre.org ).}
        Vous pouvez la copier, la modifier et la jouer \italic librement
        sans contrevenir au droit d'auteur, à  condition de respecter les
        termes de la licence (notamment en veillant à  mentionner le nom
        de l’auteur et l’adresse web d’origine).
      }
      \vspace #.5
      \line {
        Gravure réalisée au moyen du logiciel libre
        \with-url #"http://www.lilypond.org"
        \concat {\bold "GNU LilyPond" ,}
        \concat { $(string-append "version " (lilypond-version) ".") }
      }
    }
  }
}
