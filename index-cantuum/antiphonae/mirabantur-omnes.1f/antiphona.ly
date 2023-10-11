\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \C d \CC e f \C g g \CL f e \C d
  \divisioMinima
  \C_C f a \C a g a f g \CL f e \C d \CCQC e f g a \CC f e \C d d
  \finalis
}

antiphonLyrics = \lyricmode {
  Mi -- ra -- bán -- tur om -- nes de __ his quæ pro -- ce -- dé -- bant de o -- re __ De -- i.
}

antiphonLyricsPt = \lyricmode {
  To -- dos __ se~ad -- mi -- ra -- vam \MelismaOff da -- qui -- \MelismaOn lo que pro -- ce -- di -- a __ da bo -- ca __ de Deus.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 003761 cf. Lc 4,22"
  arranger = "Adapt.: Lincoln Haas Hein, Laércio de Sousa"
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