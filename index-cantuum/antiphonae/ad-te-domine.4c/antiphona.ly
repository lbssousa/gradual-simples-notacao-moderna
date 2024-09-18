\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \key c \major
  \C e g \CC g a \C_C a a \S a
  \divisioMinima
  a a g \CC a b \C g \CL a b \C a a
  \divisioMaior
  \C_C e a g fis e d \E_E e d
  \divisioMinima
  \C c d e f g f e e
  \finalis
}

antiphonOrganRight = \relative c' {
  \AntiphonSignature
  b2 d2*3/2 e2*5/2
  d2*5/2 d4 d
  \divisioMaxima
  %\tweak X-offset #1.2
  e2*3/2 d2*3/2 c2
  %\tweak X-offset #1.2
  c2*2 d2 c4 b4
  \finalis
}

antiphonOrganLeft = \relative c' {
  \AntiphonSignature
  \clef bass
  \key c \major
  g2~ g2*3/2~ g2*5/2~
  g2*5/2 g4 fis
  \divisioMaxima
  e2*3/2 a2*3/2 g2
  a2*2~ a2 e4~ e
  \finalis
}

antiphonOrganPedal = \relative c {
  \AntiphonSignature
  e2 b2*3/2 c2*5/2 b2*5/2 d4~ d
  c2*3/2~ c2*3/2~ c2
  a2*2 d2
  \tweak X-offset #1.2 e4~
  \tweak X-offset #1.2 e
}

antiphonChords = \chordmode {
  e2:m g2*3/2/b c2*5/2:6 g2*5/2/b d4:sus4 d4
  c2*3/2:6 d2*3/2/c c2
  a2*2:m d2:sus4 c4/e e4:m
}

antiphonLyrics = \lyricmode {
  Ad te, Dó -- \MelismaOff mi -- ne, \MelismaOn \MediatioMark le -- vá -- vi á -- ni -- mam __ me -- am:
  \MelismaOff ve -- ni, \MelismaOn et é -- ri -- pe me, __ Dó -- mi -- ne, ad te con -- fú -- gi.
}

antiphonLyricsPt = \lyricmode {

  A vós, Se -- nhor, __ \MediatioMark e -- le -- vo a mi -- nha __ al -- ma.
  Vin -- de e li -- ber -- \MelismaOff tai- -- me, \MelismaOn Se -- nhor, pois em vós me~a -- bri -- go.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 001255 cf. Sl 142(143),8d-9"
  arranger = \markup {
    \center-column {
      "Adaptação: Lincoln Haas Hein, Laércio de Sousa"
      \line { "Harmonização: Theo Flury, Gennaro M. Becchimanzi" }
    }
  }
}

chantPart = \new GregorianTranscriptionStaff <<
  \new GregorianTranscriptionVoice = "antiphon" {
    \antiphonChant
  }

  \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
  \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
>>

organPart = \new PianoStaff <<
  \new GregorianTranscriptionStaff = "right" <<
    %\new GregorianTranscriptionVoice { \voiceOne \antiphonChant }
    \new GregorianTranscriptionVoice { \voiceTwo \antiphonOrganRight }
  >>

  \new GregorianTranscriptionStaff = "left+pedal" <<
    \new GregorianTranscriptionVoice { \voiceOne \antiphonOrganLeft }
    \new GregorianTranscriptionVoice { \voiceTwo \antiphonOrganPedal }
  >>
>>

chordsPart = \new ChordNames {
  \antiphonChords
}

\score {
  \header {
    piece = "IV c"
  }

  <<
    %\chordsPart
    \chantPart
    \organPart
  >>
}