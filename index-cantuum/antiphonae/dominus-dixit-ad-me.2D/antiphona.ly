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
  \C f e d \CC e f \C d c d
  e c d
  \C_C f e \break
  \CC c d \C c
  \divisioMaior
  \C_CC f e d
  \CC e f \CC d c \Cp c
  \C d e f d
  \finalis

}

antiphonLyrics = \lyricmode {
  Dó -- mi -- nus di -- xit ad me:
  Fí -- li -- us
  \MelismaOff
  me -- us
  \MelismaOn
  es __ tu:
  \MelismaOff
  e --
  \MelismaOn
  go __ ho -- di -- e gé -- nu -- i te.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  O Se -- nhor dis -- se a mim: Tu és o meu __ Fi -- lho,
  Eu __ _ ho -- je __ "" ge -- rei a ti!
}

\GregorianTranscriptionLayout

\header {
  meter = "cf. Sl 2,7"
  arranger = "Adapt.: Lincoln Haas Hein, Laércio de Sousa"
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