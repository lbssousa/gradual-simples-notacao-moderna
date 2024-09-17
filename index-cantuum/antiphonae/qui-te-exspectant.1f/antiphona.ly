\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \key d \minor
  \Cp d d d c f g f \CC g a \E a
  \divisioMinima
  \C_L g e \C_L g a \CL f e \C d d
  \finalis
}

antiphonLyrics = \lyricmode {
  _ Qui te ex -- péc -- tant, Dó -- mi -- ne,
  non __ con -- fun -- dén -- tur.
}

antiphonLyricsPt = \lyricmode {
  Os que vos es -- pe -- ram, ó Se -- nhor,
  \MelismaOff não se -- rão con -- \MelismaOn fun -- di -- dos.
}

\GregorianTranscriptionLayout

\header {
  meter = "cf. Sl 24(25),3"
  arranger = "Adaptação: Laércio de Sousa"
}

\score {
  \header {
    piece = "I f"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}