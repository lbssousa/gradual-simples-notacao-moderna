\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \key d \minor
  \C d \Cp d d c f g f \CC g a \E a
  \divisioMinima
  \C_L g e \C_L g a \CL f e \C d d
  \finalis
}

antiphonOrganRight = \relative c' {
  \AntiphonSignature
  a2*3~ a2*3/2 c4~
  c2~ c~ c a4~ a
  \finalis
}

antiphonOrganLeft = \relative c {
  \AntiphonSignature
  \clef bass
  \key d \minor
  f2*3~ f2*3/2 e4~
  e2 f g~ g4 f
  \finalis
}

antiphonOrganPedal = \relative c {
  \AntiphonSignature
  \tweak X-offset #1.2 f2*3 d2*3/2 a4
  c2~ c~ c d4~ d
}

antiphonChords = \chordmode {
  d2*3:m/f d2*3/2:m a4:m
  c2 c:sus4 c:sus4 d4:sus4 d:m
}

antiphonLyrics = \lyricmode {
  Qui _ te ex -- péc -- tant, Dó -- mi -- ne,
  non __ con -- fun -- dén -- tur.
}

antiphonLyricsPt = \lyricmode {
  Os que vos es -- pe -- ram, ó Se -- nhor,
  \MelismaOff não se -- rão con -- \MelismaOn fun -- di -- dos.
}

\GregorianTranscriptionLayout

\header {
  meter = "cf. Sl 24(25),3"
  arranger = \markup {
    \center-column {
      "Adaptação: Laércio de Sousa"
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
    piece = "I f"
  }

  \transpose f g <<
    \chordsPart
    \chantPart
    \organPart
  >>
}