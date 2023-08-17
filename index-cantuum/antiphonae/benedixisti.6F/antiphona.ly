\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \C f f g a \CC g f
  \divisioMinima
  \C g \CC f e \C d f g g f
  \finalis
}

antiphonLyrics = \lyricmode {
  Be -- ne -- di -- xí -- sti, Dó -- mi -- ne, ter -- ram tu -- am.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  A -- ben -- ço -- as -- tes, ó Se -- nhor, vos -- sa ter -- ra.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 001733 cf. Sl 84(85),2"
  arranger = "Adapt.: Lincoln Haas Hein"
}

\score {
  \header {
    piece = "VI F"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}