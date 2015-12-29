%-- 21 Études -- gigue.ly -----------------------------------------%
% 2015 Valentin Villenave <valentin@villenave.net>

\language "italiano"

GigueTitre = "Gigue neurasthénique"
%  date = "20 décembre 2015"

GigueContrebasse = \relative do' {
  \clef bass
  \romanStringNumbers
  \tempo "Moderato ruvido"
  \tuplet 3/2 4 {
    re8(\mf red mi) la,(\2 sib si) do( si sib) fa'(\1 mi red)
    re(^"simile" red mi) la,( sib si) do( si sib) fa'( mi red)
    re( red mi) la,( sib si) mi,( fa fad) sol( fad fa)
    mi( fa mi) red( mi fa)
  } mi4. r8
  \tuplet 3/2 4 {
    re'( red mi) la,( sib si) do( si sib) fa'( mi red)
    re( red mi) la,( sib si) do( si sib) fa'( mi red)
    re( red mi) dod( re red) do( dod re) si( do si)
    la( sib la) sold( la sib)
  } la4. r8
  \clef treble
  \tuplet 3/2 4 {
    sol'( sold la) re,( red mi) fa( mi red) si'( sib la)
    sol( sold la) re,( red mi) fa( mi red) si'( sib la)
    sol( sold la) sib( la sold) la( re, mi) fad( fa mi)
    fa( mi red) mi( fa mi)
  } re4. r8
  \clef bass
  \tuplet 3/2 {sold,( la sib)} sol4
  \tuplet 3/2 {red8( mi fa)} re4
  \tuplet 3/2 4 {sold8( la sib) red,( mi fa)} re4. r8
  \tuplet 3/2 {fa,( fad sol)} mi4
  \tuplet 3/2 {sib'8( si do)} la4
  \tuplet 3/2 4 {fa8( fad sol) sib( si do)} la4
  \tuplet 3/2 4 {
    sib8(\4 si do)
    mi si'( sib) la mi'( mib) re si( sib) la fad( fa)
    mi si'( sib) la mi'( mib) re si( sib) la mi'( red)
    mi la,( sib) si mi,( fa) fad si,( do) si fad'( fa)
    mi si'( sib) la mi'( red)
  } mi4. r8
  \tuplet 3/2 2 {
    la,4\1 lad si mi, fa fad si, do dod fad, sol sold
  } la2 r4
  \tuplet 3/2 {<la fad'>8-- <la sol'>-- <la sold'>--}
  \arpeggioParenthesis
  <la la'>4-> <la la'\harmonic>->\arpeggio r2
  \bar "|."
}

GiguePianoMd = \relative do' {
  r4 <sol si mi>-- r <lab do fa>-- r <sol si mi>-- r <lab do fa>--
  r <sol si mi>-- r <lab do fa>-- r <sol si mi>-- r <sol si mi>--
  r <sol si mi>-- r <lab do fa>-- r <sol si mi>-- r <lab do fa>--
  r <sol si mi>-- r <lab do fa>-- r <sol si mi>-- r <sol si mi>--
  r <la? do mi>-- r <sol si mi>-- r <la do mi>-- r <sol si mi>--
  r <la do mi>-- r <sol si mi>-- r <la do mi>-- r <lab do fa>--
  r <fa sib re>-- r <la do mi>-- r <fa sib re>-- r <la do mi>--
  r <lab do fa>-- r <sol si? mi>-- r <lab do fa>-- r <sol si mi>--
  r <sol si mi>-- r <lab do fa>-- r <sol si mi>-- r <lab do fa>--
  r <sol si mi>-- r <lab do fa>-- r <sol si mi>-- r <sol si mi>--
  r <sol si mi>-- r <la do mi>-- r <sol si mi>-- r <lab do fa>--
  r <sol si mi>-- r <fa sib re>-- r <la do mi>-- r2
}

GiguePianoMg = \relative do' {
  \clef bass
  la,2--(\dyn "p_estompé" re,--) la'--( re,--) la'--( mi--) la--( la--)
  la--( re,--) la'--( re,--) la'--( mi--) la--( la--)
  re,--( la'--) re,--( la'--) re,--( re--) re--( mi--)
  la--( re,--) la'--( re,--) mi--( la--) mi--( la--)
  la--( re,--) la'--( re,--) la'--( re,--) la'--( re,--)
  la'--( re,--) mi--( mi--) la--( re,-- la'--) r
}
