%% Disco ----------------------------- %

DiscoDrums = \drummode {
  \repeat unfold 2 {bd4 sn r8 bd sn4 bd sn r8 bd <sn cymc>4}
  \repeat unfold 4 <<
    \repeat unfold 4 hhp2
    \\
    {bd4 sn tomh8 bd sn4 bd sn bd8 sn tommh16 tomfl tomml8}
  >>
  \repeat unfold 5 <<
    \repeat unfold 8 hh4
    \\
    {bd4 sn tomh8 bd sn4 bd sn bd8 sn tommh16 tomfl tomml8}
  >>
  \repeat unfold 1 {bd4 sn r8 bd sn4 bd sn r8 bd <sn cymc>4}
  \repeat unfold 4 <<
    \repeat unfold 4 hhp2
    \\
    {bd4 sn tomh8 bd sn4 bd sn bd8 sn tommh16 tomfl tomml8}
  >>
  \repeat unfold 5 <<
    \repeat unfold 8 hh4
    \\
    {bd4 sn tomh8 bd sn4 bd sn bd8 sn tommh16 tomfl tomml8}
  >>
  \repeat unfold 4 <<
    \repeat unfold 16 hh8
    \\
    \repeat unfold 8 hhp4
    \\
    {bd4 sn tomh8 bd sn4 bd sn bd8 sn tommh16 tomfl tomml8}
  >>
  \repeat unfold 2 {bd4 sn r8 bd sn4 bd sn r8 bd <sn cymc>4}
}

%DiscoPianoMd = \new DrumStaff \DiscoDrums

\score {
  <<
    \new Staff \with {midiInstrument= "electric guitar (jazz)"} {<>\mp \DiscoFlo }
    \new Staff \with {midiInstrument= "electric bass (finger)"} {<>\ff \DiscoBrice }
    \new PianoStaff \with {midiInstrument= "electric piano 2"} <<
      {<>\f \DiscoPianoMd }
      \DiscoPianoMg
    >>
    \new DrumStaff \DiscoDrums
    \new Staff \with {midiInstrument= "slap bass 1"}
    << \transpose do do, \DiscoPianoMg
       \\ \DiscoPianoMg
    >>
  >>
  \midi {}
}

%% Chanson --------------------------- %

\score {
  <<
    \ChansonBrice
    \ChansonFlo
    \ChansonMarc
    \ChansonPianoMd
    \ChansonPianoMg
    \transpose do do, \ChansonPianoMg
  >>
  \midi {}
}

%% Zouk ------------------------------------- %

ZoukDrums = \drummode {
%  R1*4
%  R1*4*2
%  R1*4*4
%  R1*4*3
%  R1*4
%  R1*4*2
  \repeat unfold 2 {r4 hh r hh r \t 4 {hh4 tomfl8 r4 toml8 hh tomfh tommh}}
  \repeat unfold 4 {bd4 hh r hh sn \t 4 {hh4 tomfl8 r4 toml8 hh tomfh tommh}}
  %% Rock
  \repeat unfold 3 {
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp> tomh16 tomh
  }
  {<bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4}
  {<bd hhp>4 <sn hhp> <bd hhp>8 <toml ss> <sn hhp>16 tomh <ss toml> tommh }
  \repeat unfold 3 {
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp> tomh16 tomh
  }
  {<bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4}
  {<bd hhp>4 <sn hhp> <bd hhp>8 <toml ss> <sn hhp>16 tomh <ss toml> tommh }
  \repeat unfold 2 {<bd hhc>4 q q q q q q8 toml <tomh hhc>4}
  \repeat unfold 3 {
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp> tomh16 tomh
  }
  {<bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4}
  {<bd hhp>4 <sn hhp> <bd hhp>8 <toml ss> <sn hhp>16 tomh <ss toml> tommh }
  %% Soul
  \repeat unfold 2 {r4 hh r hh r \t 4 {hh4 tomfl8 r4 toml8 hh tomfh tommh}}
  \repeat unfold 2 {bd4 hh r hh sn \t 4 {hh4 tomfl8 r4 toml8 hh tomfh tommh}}
  %% Rock
  \repeat unfold 3 {
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp> tomh16 tomh
  }
  {<bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4}
  {<bd hhp>4 <sn hhp> <bd hhp>8 <toml ss> <sn hhp>16 tomh <ss toml> tommh }
  \repeat unfold 3 {
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp> tomh16 tomh
  }
  {<bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4}
  {<bd hhp>4 <sn hhp> <bd hhp>8 <toml ss> <sn hhp>16 tomh <ss toml> tommh }
  \repeat unfold 2 {<bd hhc>4 q q q q q q8 toml <tomh hhc>4}
  \repeat unfold 3 {
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp> tomh16 tomh
  }
  {<bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4}
  {<bd hhp>4 <sn hhp> <bd hhp>8 <toml ss> <sn hhp>16 tomh <ss toml> tommh }
  \repeat unfold 5 {
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4
    <bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp> tomh16 tomh
  }
  {<bd hhp>4 <sn hhp> <bd hhp>8 toml <sn hhp>4}
  {<bd hhp>4 <sn hhp> <bd hhp>8 <toml ss> <sn hhp>16 tomh <ss toml> tommh }
  R1
  %% Zouk
  R1*2
  \repeat unfold 8 {r4 hc}
  \repeat unfold 12 {bd hc bd8 sn hc4}
  \repeat unfold 8 {<bd hc>8. <sn hc>16 bd8 <sn hc> bd8 hc16 sn <bd hc>8 sn}
  \repeat unfold 4 {bd hc bd8 sn hc4}
}

%ZoukPianoMd = \new DrumStaff \ZoukDrums

\score {
  <<
    \new Staff \with {midiInstrument= "electric guitar (jazz)"} {<>\mp \ZoukFlo }
    \new Staff \with {midiInstrument= "electric bass (finger)"} {<>\ff \ZoukPrune }
    \new PianoStaff \with {midiInstrument= "electric piano 2"} <<
      {<>\f \ZoukPianoMd }
      \ZoukPianoMg
    >>
    \new DrumStaff \ZoukDrums
    \new Staff \with {midiInstrument= "slap bass 1"}
    << \transpose do do, \ZoukPianoMg
       \\ \ZoukPianoMg
    >>
  >>
  \midi {}
}

%% Biguine ---------------------------------- %

BiguineDrums = \drummode {
  \repeat unfold 12 { <bd hc>4 hc toml8 hc4 hc8 bd8 hc tommh hc sn4 hc}
}

\score {
  <<
    \new Staff \with {midiInstrument= "acoustic guitar (nylon)" } \BiguinePrune
    \new Staff \with {midiInstrument= "acoustic guitar (steel)" } \BiguineBrice
    \new PianoStaff <<
      \BiguinePianoMd
      \BiguinePianoMg
    >>
    \new DrumVoice \BiguineDrums
  >>
  \midi {}
}


%% Cubain ----------------------------------- %

CubainDrums = \drummode {
  \repeat unfold 64 { gui32 guis guis16 guil guil}
}

\score {
  <<
    \new Staff \with {midiInstrument= "trombone" } \CubainMarc
    \new Staff \with {midiInstrument= "clarinet" } \CubainPrune
    \new Staff \with {midiInstrument= "bassoon" } \CubainBrice
    \new PianoStaff \with {midiInstrument= "acoustic guitar (nylon)"} <<
      \CubainPianoMd
      \CubainPianoMg
    >>
    \new DrumVoice \CubainDrums
  >>
  \midi {}
}

