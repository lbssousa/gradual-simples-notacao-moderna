\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \Cp d d d c f g f \CC g a \E a
  \divisioMinima
  \Cp a \Cp a \CL g e \CL g a \CL f e \C d d
  \finalis
}

antiphonLyrics = \lyricmode {
  _ Qui te ex -- péc -- tant, Dó -- mi -- ne,
  _ _ non __ con -- fun -- dén -- tur.
}

antiphonLyricsPt = \lyricmode {

  Os que~em vós es -- pe -- ram, ó Se -- nhor,
  não se -- rão __ con -- fun -- di -- dos.
}

\GregorianTranscriptionLayout

\header {
  meter = "cf. Sl 24(25),3"
  arranger = "Adapt.: Laércio de Sousa"
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
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}