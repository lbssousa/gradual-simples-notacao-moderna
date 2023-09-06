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
  \C d d f \C_C d c
  \divisioMinima
  d c d f \CC f e \C c
  \divisioMaior
  c d \CC f g \once \slurDown \EE f e \break \CC d c \C d \C_C f e \C d d
  \divisioMaior
  c \E d \EE f g \E f \CC f e \C_C d c \E e \CC f e \break \E d \C d d
  \finalis
  \Spacer 29
}

antiphonLyrics = \lyricmode {
  Be -- á -- ta \MelismaOff Ma -- ter \MelismaOn et in -- tác -- ta Vir -- go,
  glo -- ri -- ó -- sa Re -- gí -- na __ mun -- di,
  in -- ter -- cé -- de pro no -- bis ad Dó -- mi -- num.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  Ben -- di -- ta Mãe __ e in -- tac -- ta Vir -- gem,
  glo -- ri -- o -- sa Ra -- i -- \MelismaOff nha do \MelismaOn mun -- do,
  in -- ter -- ce -- dei por \MelismaOff to -- dos \MelismaOn nós jun -- to~ao Se -- nhor.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 001570"
  arranger = "Adapt.: Laércio de Sousa"
}

\score {
  \header {
    piece = "II D"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \transpose d g \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}