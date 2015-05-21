%-- Études pour contrebasse -- etude3.ly ---------------------------%
% (c) 2014 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Trois =
\relative do' {
  \tocItem \TroisTitre
  \clef bass
  \time 2/4
  \tempo "Comodo"
  \ttt 4 {
    si16(\mp mi, si' mi, si' mi,)
    lad( mi lad mi lad mi)
    si'( mi, si' mi,) si'( mi,)
    \tupletsOff
    fa(^"(legato assai)" re fa\> re) fa( mi\!)
    si'(\mf mi, si' mi, si' mi,)
    lad( mi lad mi lad mi)
    la( re, la' re, la' re,)
    sold( re sold re sold re)
    sol( do, sol' do,) sol'(\> sib,)
    fa'(\!\downbow la, fa' la, fa' la,)
    sol'(\p do, sol' do,) mi( sib)
    red(\< si) mi( dod) fad( re)
    si'(\mf\downbow mi, si mi si' mi,)
    lad( mi do mi lad mi)
    si'( mi, si mi si' mi,)
    do'( fad, re fad do' fad,)
    si(\> sol mib\!) sol sib(\> fad
    re\!) fad sol(\> mib si)\! mib
    sib(\mf\downbow fa' sib, fa' sib, fa')
    dob( fa dob fa dob fa)
    sib,( fa' sib, fa' sib, fa')
    re( fa) reb( fa) do( fa)
    sib,( fa' sib, fa' sib, fa')
    dob( fa dob fa dob fa)
    re(\(\< fa) mi( sol) fa( la)\)
    mi(\(\> sol) fa( la) sol( sib)\)
    si(\>\downbow sol mib\! sol fad\> re)
    sib(\! re mi\> do lab\! do)
    mi,(\p si' mi, si' mi, si')
    fa(\< do') sol( sib) fad( la)
    mi(\p\downbow si' mi, si' mi, si')
    fa(\< do' re fa mib la,)
    mi(\p si' mi, si') fa( si)
    mi,( si' mi, si') fa( do')
    re(\> fa) fad sol sold si
  } \t {do8-.\pp r mi,,->-.}
  \bar "|."
}
