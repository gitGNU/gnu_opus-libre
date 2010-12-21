%-- Impromptu -- piano.ly -----------------------------------------%
% (c) 2004 - 2010 Valentin Villenave <valentin@villenave.net>

\include "italiano.ly"

Violon =
\relative do' {
  \time 7/4
  \tempo "Andantino" 4 = 60~72 % was 60 originally
  R1*7/4
  la4.(\upbow \p\> sib8)~ sib1\! r4 |
  la2~\upbow \p\< la8 la4\mp\>( sib8)~ sib2\! r4 |
  r r8 la2\downbow \p\> sib4( mib8) mi2\!~ |
  mi4 r r8 la,~\upbow \t {la sib mib}
  mi8\downbow \< sol4( fad8) \longHairpin la4~\> |
  la\! r8 fad~\downbow \p \> \t {fad dod mib}
  sib4\! 
  \pl {\oneVoice do8-- -"(du talon)"
  \downbow sol->--~\downbow sol2~ \voiceTwo sol2~ sol8}
  {s2. r8 <la' mi'>-+ r <la mi'>-+ r4*1/2}
  sol,4\upbow ( la8) sib2.~ |
  sib4 r \t {r8 sol\upbow ( la)} re\< do16( re)
  sol8 re16( sol la) re,(\! sol la) re4~\p\< |
  re\f r8 mi~\sfz mi4 \acciaccatura fa8\downbow
  mi2->-\dyncresc "cresc. molto" r8 mi->~\downbow (
  mi16 re) la( mi') |

  la2\sfz la4.\<( sib8~) sib2.~ |
  sib8\! la,~ la4\glissando la'8~\downbow \t {la16 sib( la)}
  sold8.( la16) sib4~\upbow sib8 <la, la'>~ \t {<la la'> la'(\< sib)} |
  <\blackNote re,, \blackNote la' si'>2-\dyn "f_très soutenu" (
  do'')~ do8 re, do'4-> \t {r8 si,( re,)} |
  si''?4.( do8~) do2~
  \t {do8 si,(\p do} \t {si re,\< la'} si-- mi--) |
  lad4.\f si8~\upbow si4. si8
  si,( mi lad\< si)~ si r |
  si4.-\dyn "più_f" do8~\upbow do4~ \t {do8 lab( mib}
  \t {solb do, fa} si-.) do~\sfz do16 si8. |
  do8\ff\< dod4.~\upbow \t {dod8 sib(\! do} \t {dod) sol( sib}
  \t {do dod) fa,(} \t {sol\< sib si)} do-- dod-- |

  R1*7/4 \!
  r2 la,,4.\p sib8--~\upbow( sib2 re4--) |
  la4.( sib8~) sib2 re4(\upbow mib fa) |
  la8(-\dyn "pp_vers la touche" sib la fa) mib( fa)
  la( sib la fa) mib( fa la4) |
  lad4.-\dyn "p_pos. nat." si8~(\upbow si2~
  si8 lad4-- red--) lad8\upbow |
  si4~ si8 lad4 fad'-- lad,8 si( red-.) lad-. fad'4.->\downbow |
  fad8\downbow-"scherzando" ( mi) si-. fad'->~(
  fad si,-.) mi( si')
  fad(-\dyncresc "cresc." mi) si-. fad'-. mi16( fad si la) |

  mi'2.-\dyn "f_espr." r8 la,,,~\upbow \t {la re( la'}
  mi') re, la''16(\< la,) re'( mi,) |
  mi'2\f <la,, mi'>8\downbow ( <sib fa'>)
  <re la'> <la mi'>~\upbow
  \t {<la mi'> <fad dod'> <fa do'>}
  <re la'>-.\downbow <la re>-.\downbow
  \pl {la'4\upbow\glissando \oneVoice la'4.-\dyn "f_sempre"}
  {mi8*2\stopped s4. } <sol,, re'>8~
  \t {<sol re'> la' <sol, re'>}
  <la' la'>( sib') <re,, la'>( sib') r2 |

  la,4.\mf sib8~ sib4~ \t {sib8\< fad'( fa)}
  la fad \t {dod'\> la( sib} \t {la) fad( fa)} |
  la,4.\mp sib8~ sib4~ sib8 mib~\<
  \t {mib dod\downbow fad(} mi) la sol do |
  la'\f la, la, sib'->~ sib16 mib,8( fa16~)
  \tt {fa sib,( do) fad(\< sold)}
  \ttt {mib( fa) si( dod) fad,(-"molto" sold)}
  re'( mi) si( re) \t {mi8 si' la} |
  mi'2.~-\dyn "pp_sub." mi2-"(non vib.)" r2\fermata |

  <do,, mi>4--(\downbow -\dyn "p_vers la touche"
  <do mi>-- q-- q-- q-- q-- q--) |
  q--(\downbow q-- q-- q-- q-- q-- q--) |
  q--(\downbow q-- q-- q-- q-- q--) r |
  la2.-"très à la corde"\mp~ la2~ la8 sib4.~ |
  sib2 la~ la4. sib8~ sib4 |
  sib4.\>( la8)\!~ la2~ la4. sib8~ sib4 |
  sib4.\>(\downbow la8)\!~ la2~ la2.-\dyn "dim." |
  sib4.\>(\downbow la8)\!~ la2~ la2. |
  la1*7/4\fermata-"(non vib.)" \laissezVibrer
  -\dyn "pp_sul tasto" \bar "|."
}
