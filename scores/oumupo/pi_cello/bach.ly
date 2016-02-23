\version "2.19.32"
\include "pilypi.ly"
\include "modify.ly"


allemande =
\context Staff \relative c' {

  \time 2/2
  \key g \major
  \set Staff.midiInstrument = "cello"

  % 1
  \set Score.measurePosition = #(ly:make-moment 15/16) b16 |
  \acciaccatura g,16 <b' d,>4~<b d,>16[ a( g fis]) g16[(d e fis] g[a b c)] |
  d[(b g fis]) g[( e d c]) b[(c) d e] fis[g a b] |
  c[(a g fis] g[) e( fis g] a,[) d( fis g] a[ b) c a] |
  b[(g) g(d)] d[(b) b(g)] g8.[(b'16]) c[( b a g]) |
  a[(b) c a] g[(fis g a)] dis,8.[(c'16]) b[(a g fis]) |
  % 6
  g[(e) e(b)] b[(g) g(e)] e8.[(b'16]) e[(g fis a]) |
  g[(fis e fis] g[)cis g(fis] g[)cis e,(fis] g[e) a,( g']) |
  fis8[ d16( e]) fis[(d) g( e]) fis[(d) fis g] a[(b c! a]) |
  b[(d, g, d'] b'[g) a fis] g[e g a] b[(cis d b]) |
  cis[(e, g, e'] cis'[a) b d] cis[a d b] cis[a e'( g,]) |
  % 11
  fis8.[( d'16]) a[(g fis e)] d[(a') g e] fis d a'( c,!]) |
  b8.[( g'16]) d[(c b a)] g[(d') c a] b[g d'( fis,]) |
  e[(g a b] cis[d) e fis] g[a cis d] e[ a, g'8] |
  d,16[(g') fis e] fis[(d a d]) d,[(fis a c!]) b8.[( a16]) |
  \acciaccatura g,16 <b' d,>8.[( a16]) g16[(fis e d']) cis[(e) a, g] fis[(d) a cis] |
  % 16
  d,8.[(a'16]) d[(fis) a cis] d[a fis d] d,8. \bar ":..:" a''16 |
  <a d,>4~a16 fis(g a) d,16[(e fis g] a[fis d c]) |
  b[(d g fis] g[a b c] d[) b( a) g] f[(e f d']) |
  e,8[(^\trill d16 c16] c'16[) a,( b c] d,[) c''( b c]) d[( b c a]) |
  gis8[(^\trill fis!16 e16] b'16[) d,( c b]) c[( e fis gis]) a[( c b a] |
  % 21
  d8[) b,16(c)] d[(e f a,]) gis8.[( e'16]) b'[( d) c b] |
  \acciaccatura a,16 <c' e,>8.[( b16]) a16[( g! f e]) f[( d) bes' a] bes[( c d a]) |
  gis[(a b! e,]) f[( d c b)] c[( e a b]) <b e,>8.[(^\trill a16]) |
  \acciaccatura a,16 <a' e>8.[( b16]) c16[(b c g]) fis[( g) a e] d[( c b a]) |
  g[( d'fis) c'] b[a g a] b[( c) d e] d[( e f d]) |
  % 26
  e8[ g,] c,16 d'[( c b]) a[( b) c e] d8.[( c16]) |
  d8[ a] b,16 c'[( b a]) g[( fis e g]) b[( d) c b] |
  c8[ g] a,16 e'[( fis g]) fis[( a b c)] d,[( c) b a] |
  g[( d' fis a] c[) a( fis d])
  \acciaccatura g,16 <b' d,>8.[( d,16]) e16[( g) a cis] |
  d[( a fis e] d[) f( g b]) c![( g e d] c[) e( a c]) |
  fis,[( a) c e] d8.[( c,16]) b[( g') a, g] d[( a' g' fis]) |
  g[( g,) b d] g[ b d( fis]) g[d b g] g,8. \bar ":|."
}
\version "2.19.32"

courante =
\context Staff \relative c' {

  \time 3/4
  \key g \major
  \set Staff.midiInstrument = "cello"

  % 1
  \set Score.measurePosition = #(ly:make-moment 5/8) g8 |
  g d g,[b'16(c] d c b a) |
  b8 d, g,[g'16(a] b8 g) | e c c,[a''16(b] c b a g) |
  % 4
  fis8 d d,[d'16 e] fis(g a b) | c( b c) a c( b c) a d,( c' b a) |
  b(a b) g b( a b) g c,( b' a g) | fis a( d) fis,( g8[) b,] d,[fis'] |
  % 8
  <g g,>4. b16(a g fis e d) | e'8 cis a[b16(cis)] d fis,(e d) |
  a8 d' cis[ b16 a] d( a b fis) | g(fis g) e g(fis g) e a,( g' fis e) |
  % 12
  fis(e fis) d fis(e fis) d g,( fis' e d) |
  d'( cis b a) d8 cis16(b) a( g fis e) | d(e d) fis d(e d) g d(e d) a' |
  % 15
  d,(e d) b' d,(e d) cis' d,(e d) d' |
  g,( fis e d) cis( b a) g' fis8.( e16) |
  a( g) b( a g fis e d) a8 cis | d,2 r8 \bar ":..:"
  % 19
  a''8 | a fis d[e16(fis] g fis e d) | d'8 fis, c[b16(c] d c b a) |
  b( g' a b) c( b a) g fis8( d') | b g g,[b'16( a] c b a g) |
  % 23
  a8 fis dis16 a'[(b c b] a g fis) | g8 e e,[g'16(fis)] a(g fis e) |
  f(e f) a f(e f) a c( b) c a | dis4~dis16 c! b a g(fis a dis,!) |
  % 27
  g,8 b' a16(g fis e) b8( dis) | e,4. e'16(fis g a b c) |
  d8 f, b,[e16(f] g f e d) | e8 c c,[c'16(d] e fis! g e) |
  % 31
  cis( g') a g a( g) cis, g' cis,( g' a g) |
  c,!( fis) a fis a( fis) c fis c( fis a fis) |
  b,( d e f) g, f'(e d) e( d' c b) | fis!( a b c) d, c'(b a) b8( g,) |
  % 35
  c, b''16(a c b a g) d8 fis | g,16(a g) b g(a g) c g(a g) d' |
  g,(a g) e' g,(a g) fis' g,(a g) g' |
  c( b a g) fis( e d) c' b8.( a16) |
  % 39
  d(c d) b d(c d) b e,( d' c b) | c(b c) a c(b c) a d,( c' b a) |
  b( a b) g c, b'( a g) d8 fis | <g g,>2 r8 \bar ":|."
}
\version "2.19.32"

gigue = \context Staff \relative c {

  \time 6/8
  \key g \major
  \set Staff.midiInstrument = "cello"

  \set Score.measurePosition = #(ly:make-moment 5/8) d8 | g d e e c d | d g d b g d' |
  g16(a b8 a) a16(b c8 b) | \acciaccatura g,8 <b' d,>4.^\trill~<a d,>4 a8 |
  %6
  b fis(g) g( e) g | a e(fis) fis( d) fis | g b g e b d |
  cis( e a) a,4 e'8 | f( e g) g( f a) | a( g bes) bes( a g) |
  %12
  f( e d) a( d cis) | d a( fis!) d4 \bar ":..:" a''8 | a fis g g e fis |
  fis16( g a8) fis d c'(b) | b g a a fis g | g16(a b8) g e d'(c) |
  a d(c) d, c'(b) | g c(b) c, b'(a) | g( fis e) b( e dis) |
  e b(g) e4 g'8 | a( fis g) cis16(d e8 fis,) | g( e f) b16( c d8 e,) |
  f( d e) a16( b c8 a) | fis!16( g a8 fis) d4 a'8 | bes( a c) c( bes d) |
  d( c es) es(\( d) c\) | bes( a g) d( g) fis | g b,!16(c d8) g,( b) d |
  g e16(f g8) b,(c) e | a fis!16(g a8) cis,(d) fis | b g16(a b8) dis,(e) c' |
  e,(fis) d' fis,(g) e' | d, e16(fis g a b8) g fis |
  g d( b) g4 \bar ":|."
}
\version "2.19.32"

menuetI = \context Staff \relative c {

  \time 3/4
  \key g \major
  \set Staff.midiInstrument = "cello"

  g8(d' b'4) a8( b16 c) | b8(a g) fis( g d) | e(g) c(a) fis d' |
  \acciaccatura g,,8 <b' d,>2^\trill <a d,>4 |
  a,8(fis' c'4) b8( c16 d) | c8(b) a(g) fis e |
  fis( g16 a) g8(fis) e fis | d4 a( d,) | \bar ":..:"
  d'8(fis a4) g8( a16 b) | a8( g fis e d fis) |
  b,( d gis a b d | a,) d'(c b) c4 | dis,8(fis a) c( b a) |
  b( e, g,) a'( c b) | a g fis e b dis | e,4. e'8[( d! c]) |
  b( d g4) d8( e16 f) | f8( d e) c c, b' |
  cis( e a4) e8( fis!16 g) | g8( e fis) d d, a' |
  d(fis a) c( b d) | e,(g b) d( c e) | d fis, g b, d, fis' |
  <g g,>2. | \bar ":|."
}
\version "2.19.32"

menuetII = \context Staff \relative c' {

  \time 3/4
  \key d \minor
  \set Staff.midiInstrument = "cello"

  bes8(a bes) d,( es g,) | f4 a'( d,) | g8(fis g) bes,( c es,) |
  d( a' d) g( fis a) | bes(a bes) d,( es g,) | f4 a'( d,) |
  g8(fis g) bes,( c e,!) | d g' \acciaccatura g8 fis2 | \bar ":..:"
  d8 fis a c es d | c(bes a bes) \acciaccatura bes8 g4 | c,8 e! g bes d c |
  bes(a g a) f( es) | d( f bes a bes d,) | es( g bes a bes d) |
  c es d bes f a | bes( f) d f bes,4 | b8 d f as g f |
  es(g c d) \acciaccatura d8 es4 | a,,8 c es g f es |
  d(f bes c) \acciaccatura c8 d4 |
  fis,,8( a c es d c) | bes( d g a bes g) |
  c bes(a g) d fis |
  g,2. | \bar ":|."
}
\version "2.19.32"

prelude = \context Staff \relative c {

  \time 4/4
  \key g \major
  \set Staff.midiInstrument = "cello"

  % 1
  g16(d') b' a b( d, b' d,) g,(d') b' a b( d, b' d,) |
  g,(e') c' b c( e, c' )e, g,(e') c' b c( e, c' e,) |
  g,(fis') c' b c( fis, c' fis,) g,(fis') c' b c( fis, c' fis,) |
  g,(g') b a b( g b g) g,(g') b a b( g b fis) |
  g,(e') b' a b( g fis g) e( g fis g) b,( d cis b) |
  % 6
  cis(g') a g a( g a g) cis,(g') a g a( g a g) |
  fis(a) d cis d( a g a) fis( a g a) d,( fis e d) |
  e,(b') g' fis g( b, g' b,) e,(b') g' fis g( b, g' b,) |
  e,(cis' d e) d( cis b a) g'(fis e) d' cis b a g |
  fis(e d) d' a d fis, a d, e fis a g fis e d |
  % 11
  gis d( f e) f d gis d b' d,( f e) f d gis d |
  c(e a b) c( a e d) c(e a b) c( a fis! e) |
  dis(fis) dis fis a( fis a fis) dis(fis) dis fis a( fis a fis) |
  g(fis e) g fis g a fis g fis e d c b a g |
  fis( c') d c d( c d c) fis,( c') d c d( c d c) |
  % 16
  g( b) f' e f( b, f' b,) g( b) f' e f( b, f' b,) |
  g( c) e d e( c e c) g( c) e d e( c e c) |
  g( fis') c' b c( fis, c' fis,) g,( fis') c' b c( fis, c' fis,) |
  g,( d') b' a b( g fis e) d c b a g fis e d |
  cis( a') e' fis g( e fis g) cis,,( a') e' fis g( e fis g) |
  % 21
  c,,!( a') d e fis( d e fis) c,( a') d e fis( d e fis) |
  c,( a') d fis a( cis) d8\fermata~d16 a, b c! d e fis g |
  a fis d e fis g a b c a fis g a b c d |
  es(d cis d) d( c b c) c a fis e! d a b c |
  d,( a' d) fis a b c a b( g) d c b( g a b) |
  % 26
  d,( g b d) g( a) b g cis( bes a bes) bes( a gis a) |
  a( g! fis g) g( e cis b) a( cis e) g a cis d cis |
  d( a fis) e fis a d, fis a, d cis b a g fis e |
  d8 c''!16(b a g fis e d) c'(b a g fis e d |
  c) b'(a g fis e d c b) a'(g fis e d c b |
  % 31
  a) g'(fis e) fis a d, a' e a fis a g a e a |
  fis a d, a' g a e a fis a d, a' g a e a |
  fis a d, a' e a fis a <<
    {s a[ s a] s a[ s a]}
    \\ {g[ s a] s b[ s d,] s}
  >> |
  <<
    {s a'[ s a] s a[ s a] s a[ s a] s a[ s a]}
    \\ {a[ s b] s c[ s d,] s b'[ s c] s d[ s b] s}
  >> |
  <<
    {s a[ s a] s a[ s a] s a[ s a] s a[ s a]}
    \\ {c[ s b] s c[ s a] s b[ s a] s b[ s g] s}
  >> |
  % 36
  <<{s a[ s a] s a[ s a]} \\ {a[ s g] s a[ s fis] s}>> g a fis a g a e a |
  fis a d,( e) f d fis d g d gis d a' d, bes' d, |
  b'! d, c' d, cis' d, d' d, es' d, e' d, f' d, fis'( d,) |
  g'( b,) d, b' g'( b, g' b,) g'( b,) d, b' g'( b, g' b,) |
  g'( a,) d, a' g'( a, g' a,) g'( a,) d, a' g'( a, g' a,) |
  % 41
  fis'( c) d, c' fis( c fis c) fis( c) d, c' fis( c fis c) |
  \acciaccatura g, <b' g'>1\fermata | \bar "|."
}

\version "2.19.32"

sarabande = \context Staff \relative c {

  \time 3/4
  \key g \major
  \set Staff.midiInstrument = "cello"

  % 1
  \acciaccatura g8 <b' d,>4 \acciaccatura g,8 <<{c'4.( b8)} \\ {e,4}>>
  fis16(a b c) \acciaccatura g,8 <b' d,>4^\trill( a8 g) |
  d'[( f,]) e8.[(~e64 d c b] c8[) e] |
  fis!16( c' b g) \acciaccatura <a, d,>8 fis'4^\trill( e8 d) |
  % 5
  a'16( fis d c) b8.( g16) b( d g a) |
  b( g e d) cis8. a32( b) cis16( d e fis) |
  g( cis d cis d) a( g fis) e( g fis) d |
  % 8
  a( d e cis) d4 d, | \bar ":..:"
  <fis' a, d,>8 e16 d \acciaccatura <a d,>8  <c' fis,>4.( b16 a) |
  <b d, g,>16( fis g e) <dis a>8.( e16) fis16( g a b) |
  % 11
  dis,( a' b c) b8 a16( g) fis( e a fis) | g( e) fis( dis) e4 e, |
  <d'! b>8.( e32 f) \acciaccatura <g, c,>8 e'8. fis16 gis16( a b c) |
  % 14
  gis, d''(c b) \acciaccatura <e, a,>8 c'8.( b16) a16( g! fis e) |
  <<{d4~d16 e( fis) g} \\ {r16 b,[(c a] b)}>> a'( c b g) |
  d( g) a( fis) g4 g, | \bar ":|."
}
\version "2.19.32"

\header {
  title = "Suite 1 for Cello Solo"
  opus = "BWV 1007"
  composer = "Johann Sebastian Bach"
  enteredby = "Andreas Scherer"

  mutopiatitle = "Suite 1 for Cello Solo"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV1007"
  mutopiainstrument = "Cello"
  source = "Schirmer, 1916"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Andreas Scherer"
  maintainerEmail = "andreas_mutopia@freenet.de"
  lastupdated = "2011/Sep/18"

  footer = "Mutopia-2011/09/21-517"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {
  \new Staff
  \piify {
    \clef "bass"
    \prelude
    \allemande
    \courante
    \sarabande
    \menuetI
    \menuetII
    \gigue
  }
  \header {
    piece = \markup \fill-line { \epsfile #Y #40 #myplot }
  }
}
