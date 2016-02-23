\version "2.19.32"

\include "pilypi.ly"
\include "modify.ly"


#(define mozart-numbers
   (list
#\4 #\4 #\5 #\3 #\4 #\5 #\1 #\1 #\2 #\1 #\2 #\1 #\1 #\5 #\2 #\2 #\1 #\2 #\2 #\1 #\7 #\4 #\8 #\6 #\9 #\2 #\6 #\5 #\9 #\9 #\9 #\6 #\6 #\6 #\5 #\8 #\7 #\8 #\6 #\7 #\6 #\3 #\7 #\5 #\8 #\1 #\4 #\8 #\3 #\2 #\9 #\6 #\1 #\9 #\7 #\4 #\4 #\8 #\4 #\4 #\8 #\4 #\4 #\8 #\9 #\7 #\5 #\9 #\8 #\4 #\9 #\1 #\8 #\8 #\6 #\6 #\1 #\1 #\5 #\1 #\7 #\3 #\5 #\1 #\9 #\7 #\3 #\1 #\4 #\2 #\5 #\1 #\3 #\7
))

#(set-default-paper-size "a4")
\paper {
  ragged-bottom=##f
  ragged-last-bottom=##f
}

\version "2.19.32"
globala = {
  \set Score.skipBars = ##t
  \accidentalStyle modern
  \override MultiMeasureRest.expand-limit = 1
  \override Score.RehearsalMark.padding = #3
  \override Score.RehearsalMark.self-alignment-X = #left
  \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \mark \markup {
    \override #'(baseline-skip . 3) \column { "Allegro" \small TUTTI }
  }

}

globalb = {
  \set Score.skipBars = ##t
  \accidentalStyle modern
  \override MultiMeasureRest.expand-limit = 1
  \override Score.RehearsalMark.self-alignment-X = #left
  \override Score.RehearsalMark.padding = #4  \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \mark \markup {
    \override #'(baseline-skip . 3) \column { "Andante ma Adagio" \small TUTTI }
  }

}

globalc = {
  \set Score.skipBars = ##t
  \accidentalStyle modern
  \override MultiMeasureRest.expand-limit = 1 \override Score.RehearsalMark.self-alignment-X = #left
  \override Score.RehearsalMark.padding = #3  \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \mark \markup {
    \override #'(baseline-skip . 3) \column { Rondo \fontsize #-1 "Tempo di Menuetto" \small TUTTI }
  }

}

\header {
  mutopiatitle = "Concerto for Bassoon and Orchestra in B flat major"
  mutopiacomposer = "MozartWA"
  mutopiaopus = "KV 191"
  mutopiainstrument = "Bassoon and Orchestra: Horns, Oboes, Violins, Viola, Cello and Bass"
  date = "1774"
  source = "Breitkopf und Härtel, 1880s"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Liang Seng"
  maintainerEmail = "seng_liang@hotmail.com"
  lastupdated = "2006/Feb/21"

  footer = "Mutopia-2006/02/25-686"
}


\header {
  title = "Concerto for Bassoon and Orchestra in B-flat major"
  opus = "K. 191"
  instrument = "Solo Bassoon"
  composer = \markup \center-column { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }

}

\version "2.19.32"
\header {
  title = "Concerto for Bassoon and Orchestra in B-flat major"
  opus ="K. 191"
  instrument = "Solo Bassoon"
  composer = \markup \center-column { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }

}

tutti = \mark \markup{ \small TUTTI }

solo = \mark \markup{ \small SOLO }

bassoona = \relative c' {
  \set Staff.instrumentName = \markup {
    \center-column {
      "Fagotto" "Principale"
    }

  }

  \key bes \major
  \clef bass
  \time 4/4 \set Staff.midiInstrument = "bassoon"
  \globala
  R1*34 \solo bes4 bes2 d8.( bes16) f4 f2 d8.( bes16) f4 ees''2 ees4 ees\trill d r4 \grace g16 f8 ees16 d
  \grace d8 c4 bes2( a4) bes16 f g a bes c d ees f f( e f) \grace g16 f8 ees16 d d(c ees c) bes2 a4 bes r4 r2 R1 R1 |
  f4 f~f16 f, a c f a, c f a c, f a c f, a c f8( e d c) c( b) b2. bes4 c,,2 g'''4~g8 e4 c g8( a bes) bes4\trill a r8 c c8.[\trill bes32 c]
  d16 bes bes bes bes4\trill f16 bes bes bes d, bes' bes bes bes, bes' bes bes bes4\trill d16 bes bes bes f' d d d
  e16 c c c c4\trill g16 c c c e, c' c c c, c' c c c4\trill e16 c c c g' e e e f4 c2( cis4) d4.( e16 f e8 d c b)
  c4.\( \grace { d32[ c b c] }
  d8\) f,4( e) f r4 r2 r2 c'4 \grace bes16 a8 g16 f bes4 \grace a16 g8 f16 e f8 a c4
  bes \grace a16 g8 f16 e f8 a c ees d bes, a c' bes g, f a' g e, d f' e4 d' c \grace g'16 f4 \grace e16 d4 \grace c16 bes4
  a16 bes c bes c a g f <<
    g2 { s8\startTrillSpan s4 s16 s\stopTrillSpan }
  >> f8 g16 a bes c d e f c a f ees8.\trill d32 ees
  d16 e f e f fis g fis g a bes a bes cis d cis d e f e f e f e f e d c bes a g f c1
  <<
    {
      <<
        g''1 { s8\startTrillSpan s2. s16 s\stopTrillSpan }
      >> \tutti f4
    }
    \\
    {
      \override Voice.NoteHead.font-size = #-2 <<
        g,1{
          \once \override Voice.TrillSpanner.extra-offset = #'(0 . -4)
          \normalsize s8_\markup { \italic ossia }
          _\startTrillSpan s2. s16 s\stopTrillSpan
        }

      >>  f4
    }

  >>   r4 r2
  R1*8 \solo f4 f'4~f8 ees( d c) c( b) b2 b4 c16 g aes g c( d ees) c-. d g, aes g d'( ees f) d-. ees4 r4 r2
  ees,4 ees'~ees8 d( c bes) bes( a) a2 a4 bes16 f g f bes( c d) bes-. c( f, g f) c'( d ees) c-. d4 r4 r d8.\trill c32 d
  ees4 c \grace bes16 a4 g\trill fis r4 r16 d-. fis-. a-. d( c) a( c) bes4 r4 r16 g-. bes-. d-. g( f) d( f)
  ees4 r4 r16 c,-. ees-. g-. c( bes) g( bes) a4 r4 r16 f-. a-. c-. f( ees) c( ees) d4 r4 r16 bes,-. d-. f-. bes( aes) f( aes) g8 g'4 ees c bes8
  \grace a16 \once \override Score.Script.padding = #1 f'1~f~f4.\trill e16 f f,4 r4\fermata | \tutti
  R1*4 \solo bes4 bes2 d8.( bes16) f4 f2 d8.( bes16) f4 ees''2 ees4 ees\trill d r4 \grace g16 f8 ees16 d
  \grace d8 c4 bes2( a4) bes16 f g a bes c d ees f f( e f) \grace g16 f8 ees16 d d( c ees c) bes2( a4) \tutti bes4 r4 r2 R1 R1 \solo
  ees,4 ees4~ees16 ees, g bes ees g, bes ees g bes, ees g bes ees, g bes ees8( d c bes) bes( a) a2.( aes4) bes,,2 f'''4~f8 d4 bes f8( g aes)
  aes4\trill g~g8 a( bes b) c16( d ees d) c2 bes8.\trill a32 bes a4 r4 r8 c c8.[\trill bes32 c]
  d16 bes bes bes bes4\trill f16 bes bes bes d, bes' bes bes bes, bes' bes bes bes4\trill d16 bes bes bes f' d d d
  ees16 c c c c4\trill a16 c c c f, c' c c c, c' c c c4\trill a16 c c c f, ees' ees ees d bes bes bes bes4\trill f16 bes bes bes d, f f f bes,4 r4 r2
  r8 ees ees ees ees f16 g aes bes c d ees f g aes bes4 r2 r8 bes,, bes bes bes c16 d ees f g a bes c d ees f4 r2
  r8 f,, f f f g16 a bes c d ees f g a bes c4 r2 d16 f e f ees d c bes a ees' d ees d c bes a
  bes16 f' e f ees d c bes a ees' d ees d c bes a bes4 f2( fis4) g( c ees g) g,4. ees'16( c) bes4( \once \override Score.Script.padding = #1.5 a\trill) bes4 r r2
  r2 d,8-. f-. bes4 a8-. c-. ees4 \grace ees16 d8 c16 bes a8 bes a-. c-. ees4 \grace ees16 d8 c16 bes a8 bes
  g' ees, d f' ees c, bes d' c a, g bes' a f, ees g' f16 g a bes c d ees f \grace f16 ees4 \grace d16 c4 bes16 a bes c bes a bes c <<
    c2 { s8\startTrillSpan s4 s16 s\stopTrillSpan }
  >>
  bes16 bes, d f bes f d' bes f'8 r aes,8.\trill g32 aes g16 a bes a bes b c bes \clef tenor c d ees d ees fis g fis
  g f ees d ees d c b c d ees d c bes a g f8 g16 a bes c d ees f g e g f g e g f8 bes f d \clef bass bes f d bes f1
  <<
    c'' { s8\startTrillSpan s2. s16 s16\stopTrillSpan }
  >> \tutti bes4 r4 r2 R1*6 r2 r4 bes
  bes2_\markup { \italic cadenza }
  \once \override Score.Script.padding = #1.5 c4.(\trill bes8) \tutti bes4 r4 r2 R1*9
  \bar ".."
}


\version "2.19.32"
\header {
  title = "Concerto for Bassoon and Orchestra in B-flat major"
  opus ="K. 191"
  instrument = "Solo Bassoon"
  composer = \markup \center-column { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }

}

tutti = \mark \markup{ \small TUTTI }

solo = \mark \markup{ \small SOLO }

pad = \once \override Score.Script.padding = #1.5
bassoonb =  \relative c' {
  \set Staff.instrumentName = \markup {
    \center-column {
      "Fagotto" "Principale"
    }

  }

  \key f \major
  \clef bass
  \time 2/2 \set Staff.midiInstrument = "bassoon"
  \globalb
  R1*6 \solo c4.( f8) \grace g16 f8[( e]) r bes \grace c16 bes8( a) r a \grace a16 g8 f4( e8)
  f16( d') d4 c16( bes) a8 g'32[( f e f]) e[( d cis d] c bes a bes) c8.[( \grace { d32[ c bes c] }
  d16]) f,8( e) f4 r f, f''8.( d16) \grace c16 b8.( c32 d) c8 r g f'4 e8 \pad e(\trill d) r4
  d32( e d c b16) b-. b-. b( c d) e32( f e d c16) c-. c-. e( d c) g'1 a,4 f' g, e' f, d' e,16( g g') g-. g( f e d)
  c-. c-. c-. c-. c( b a g) g8 b16( c) r8 g'16( f) r8 dis16( e) r8 c16( b) g'4 bes,, a a'' g,8 g'4 f32( e d c) <<
    d2 { s16\startTrillSpan s4. s32 s\stopTrillSpan }
  >> c4 r
  R1 R1  r8 ees,4 c'16( a) g8( fis4) a'8~a16 fis8 ees d c16 c( b) b4( bes8~ )
  bes c,,4 g'''8~g16 e( c bes) a( c f) a, c8.( a16) g8-. r r2  R1  c4.( f8) \grace g16 f8[( e]) r bes \grace c16 bes8( a) r a \grace a16 g8 f4( e8)
  f16( d') d4 c16( bes) a8 g'32[( f e f]) e[( d cis d] c bes a bes) c8.[( \grace { d32[ c bes c] }
  d16]) f,8( e) f4 r f, f''8.( d16) b8.( c32 d) c8 r
  d,,4 d''8.( bes16) gis8.( a32 b) a8 r bes,,4 bes''8.( g16) e8.( f32 g) f8 r
  c bes'4( a8) \pad a(\trill g) r4 g32( a g f e16) e-. e-. e( f g) a32( bes a g f16) f-. f-. a( g f) c'1 bes,4 d' c a,
  c \pad bes'8.(\trill a32 bes) a16 f'8 c a f16 c4 \pad bes'8.(\trill a32 bes) a16( c, c') c-. c( bes a g) f-. f-. f-. f-. f( e d c) c8 e16( f) r8 c'16( bes) r8 gis16( a) r8 f16( e) c'4 a,
  bes d' c \pad g8.(\trill f32 g) \tuplet 3/2 { f16( a c) }
  c4( cis8) d-.[ d( e f]) c4~c16 d32( c bes a g f) <<
    g2 { s16\startTrillSpan s4. s32 s\stopTrillSpan }
  >> f4 r r2 R1 R1
  f2_\markup { \italic cadenza }
  g4.^\fermata f8 f4 r r2 R1 R1  \bar ".."
}


\version "2.19.32"
\header {
  title = "Concerto for Bassoon and Orchestra in B-flat major"
  opus ="K. 191"
  instrument = "Solo Bassoon"
  composer = \markup \center-column { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }

}

tutti = \mark \markup{ \small TUTTI }

solo = \mark \markup{ \small SOLO }

pad = \once \override Score.Script.padding = #1.5
bassoonc = \relative c' {
  \set Staff.instrumentName = \markup {
    \center-column {
      "Fagotto" "Principale"
    }

  }

  \key bes \major
  \clef bass
  \time 3/4 \set Staff.midiInstrument = "bassoon"
  \globalc
  R2.*20 \bar ":|."  \solo \tupletSpan 4
  \tuplet 3/2 { bes8 f d bes d f bes d f \override TupletNumber.transparent = ##t  ees c bes a c g f c' ees, d bes' a g ees' d c d bes a bes c bes a g }
  f4
  \tuplet 3/2 { bes8 f d bes d f bes d f ees c bes a c g f c' ees, d bes' f }
  <<
    c'2 { s16\startTrillSpan s4. s16\stopTrillSpan }
  >> bes4 r r
  bes16 f g a bes c d e f8 f f c c2 bes16 c bes a g a g f e8 bes' \grace bes8 \once \override Script.padding = #1.5 a4\trill g r c2.~c~c~c~
  c8 d16 e f e d c bes a g f g fis g a bes a bes c d8 r16 d c8.( d16) f,4( e) c'8 d16 e f e d c bes a g f g fis g a bes a bes c d8 r g,16 fis g a bes a bes c d8 r16 d
  c8.( d16) f,4( e) e( f) r \tuplet 3/2 {
    \revert TupletNumber.transparent f8 f' f f g f ees d c \override TupletNumber.transparent = ##t b g g g aes g f ees d
    c ees' ees ees f ees d c bes a f f f g f ees d c bes d f bes d f g ees c
  }
  bes2( a4) \tutti
  R2.*8 \solo
  d4 \grace c16 bes4 \grace a16 g4 fis16( a c ees) ees2 d4 \grace c16 bes4 \grace a16 g4 fis16( a c ees) ees2
  d8([ g) g( fis]) r ees ees[( d) d( c]) r bes bes[( a) a( g) g( fis]) fis2( g4)
  bes2.~bes8[ a( bes a bes b]) c2.~c8[ b( c b c cis]) d2.~d8[ cis( d cis d cis])
  d4 \grace c16 bes4 \grace a16 g4 fis16( a c ees) ees2 d4 \grace c16 bes4 \grace a16 g4 fis16( a c ees) ees2
  d8([ g) g( fis]) r ees ees[( d) d( c]) r bes bes[( a) a( g) g( fis]) fis2( g4) \tutti
  R2.*8 \solo
  bes16 a bes c d c d ees f4 ees16 f ees d c d c bes a4 bes16 c bes a g8 c16 d ees d c bes a bes c bes a bes a g f4
  bes16 a bes c d c d ees f4 ees16 f ees d c d c bes a8 a bes8.( c16) <<
    c2 { s16\startTrillSpan s4. s16\stopTrillSpan }
  >> bes4 r r
  \tuplet 3/2 { \revert TupletNumber.transparent bes,8 bes' bes bes c bes aes g aes \override TupletNumber.transparent = ##t g bes g ees bes g }
  ees4
  \tuplet 3/2 { c' 8 c' c c d c bes a bes a c a f c a }
  f4 \revert TupletBracket.transparent
  c''( des bes) \tuplet 3/2 { a8( c f) }
  f2 c4( des bes) \tuplet 3/2 { a8( c f) }
  f2 c4( des bes) g'4.\trill e16 f f,4\fermata
  bes2 c8( d) f( ees) ees2 d8( f) bes,( d) g,( c) bes[( a g f g a]) bes2 c8( d) f( ees) ees2 d8.( ees32 f) bes,4 a bes r r
  c2 d8( bes) d( ees) ees2 d ees8( c) e( f) f2 bes,,8[ bes' bes, d' bes, f''] ees c16 d ees8[ c a f] bes,[ d' g,, bes' ees,, c''] f,, c''16 bes a8[ c f, a]
  bes,[ bes' bes, d' bes, f''] ees c16 d ees8[ c a f] d'8.( ees32 f) bes,4( a)
  f'2.~f~f~f f16 ees d ees f ees d c bes a g f g8 a16 b c b c d ees8 r f,4 <<
    c'2 { s16\startTrillSpan s4. s16\stopTrillSpan }
  >>
  f16 ees d ees f ees d c bes a g f g8 a16 b c b c d ees8 r g,8 a16 b c b c d ees8 r f,2. <<
    c'2. { s16\startTrillSpan s2 s8 s16\stopTrillSpan }
  >> \tutti
  <<
    {
      \small bes2 c8( d) f( ees) ees2 d8([ f) \once \override Slur.extra-offset = #'(0 . 1.2)
      bes,( d]) g,( c) bes[( a g f g a]) bes2 c8( d) f( ees) ees2 d8.( ees32 f) bes,4 a bes2.
    }
    \\
    { \normalsize bes4 r d,\rest R2.*7 }

  >> R2.*5 \bar ".."
}


\score {
  \new Staff \piify {
    \bassoona
    \bassoonb
    \bassoonc
  }

  \header {
    piece=\markup \fill-line { \epsfile #Y #40 #myplot }

  }

}
