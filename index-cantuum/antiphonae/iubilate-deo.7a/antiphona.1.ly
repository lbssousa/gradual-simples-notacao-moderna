\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c'' {
  \AntiphonSignature
  \key c \major
  \C g g b c \E d \Ep d
  \divisioMinima
  \CC d e \EEO d c c \C_C a b \EE c a \C_C b a g g
  \finalis
}

antiphonLyrics = \lyricmode {
  Iu -- bi -- lá -- te De -- o in __ vo -- \MelismaOff ce ex -- \MelismaOn sul -- \MelismaOff ta -- ti -- \MelismaOn ó -- nis.
}

antiphonLyricsPt = \lyricmode {
  A -- cla -- mai a Deus _ com __ vo -- zes __ ju -- bi -- lo -- sas.
}

\GregorianTranscriptionLayout

\header {
  meter = "cf. Sl 46(47),2"
  arranger = "Adapt.: Lincoln Haas Hein, Laércio de Sousa"
}

\score {
  \header {
    piece = "VII a"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \transpose c g, \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}