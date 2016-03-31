% Harmoniques -- ouverture.ly -------------------------------------%
% (c) 2015-2016 Valentin Villenave <valentin@villenave.net>

\language "italiano"

OuverturePianoMd =
\relative do' {
  \time 5/2
  \tempo "Andante agitato"
  \clef bass
  R1*5/2*2
  \stemUp
  r4 mi,-_\pp mi-_ mi-_ mi-_ r mi-_ mi-_ mi-_ mi-_
  r mi-_ mi-_ mi-_ mi-_ r mi-_ mi-_ mi-_ mi-_
  r mi-_ mi-_ mi-_ mi-_ r mi-_ mi-_ mi-_ mi-_
  \stemNeutral
  <<
    {
      \oneVoice r mi mi
      \stemUp do'~^>\mf do1.
      s1*5/2
      do2.^-^> re?4^-^>~ re1.~
      re4 r s1 r4 do~ do2~
      do1 re1~ re4 mi~ mi1. s1
      s1*2 do2^~ do1~ do4 re~ re1~
      re2 mi\breve
    } \\ {
      s1 r2 \oneVoice \stemUp mi,4 mi mi mi
      r mi mi fa mi r mi fa mi mi
      \voiceTwo
      r mi mi r mi r mi mi mi mi
      r mi fa mi mi r mi r fa mi
      r mi red red mi r red mi mi red
      r mi la la mi r la mi mi la
      r la mi red mi r red mi r la
      r mi mi mi mi r red red red red

    }
  >>
}

OuverturePianoMg =
\relative do' {
  \clef bass
  <<
    {
      \tuplet 5/4 2 {
        la,8\rest mi mi mi mi
        la\rest mi mi mi mi
        mi4--( mi8 mi mi)
        la\rest mi mi mi mi
        mi,( mi' mi mi mi) |
      }
      \repeat unfold 6
      \tuplet 5/4 2 {
        la\rest mi mi mi mi
        la\rest mi mi mi mi
        fa--( mi mi mi mi)
        la\rest mi mi mi mi
        fa,( mi' mi mi mi) |
      }
      \repeat unfold 3
      \tuplet 5/4 2 {
        la\rest mi mi mi mi
        la\rest mi mi mi mi
        fa--( mi mi mi mi)
        la\rest mi mi mi mi
        si( mi mi mi mi) |
      }
      \repeat unfold 5
      \tuplet 5/4 2 {
        la\rest mi mi mi mi
        la\rest mi mi mi mi
        fa--( mi mi mi mi)
        la\rest mi mi mi mi
        la,( mi' mi mi mi) |
      }
    } \\ {
      mi,2 mi1. mi2
      mi mi1. fa2(
      mi) mi1. fa2(
      mi) <mi si'>1. fa2(
      mi) <mi si'>1. fa2(
      \mark \default
      mi) <mi si'>1. fa2(
      mi) <mi si'>1. fa2(
      mi) <mi si'>1. <fa si>2 ~
      <mi si'> q1. <fa si>2~
      <mi si'> <fa si>1. sold2
      \mark \default
      la <mi la>1. <mi si'>2~
      <mi la> q1. <mi si'>2~
      <mi la> q1. <mi la>2
      <mi sib'> q1. <mi la>2~
      <mi sib'> q1. <mi sib'>2~
    }
  >>
}