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
  \Cp f \CQC f g a \C g
  \divisioMinima
  g \CC g a \C a a \CC a g \CCC a b a
  \divisioMaior
  \Cp a \C f g a c g a g g g \CCCC g a g f \CC g a \C_C a g g
  \finalis
  \Spacer 6
}

antiphonLyrics = \lyricmode {
  _ E -- rant pa -- rén -- tes Ie -- su __ _ "" mi -- rán -- tes su -- per his quæ di -- ce -- bán -- tur __
  \MelismaOff
  de il --
  \MelismaOn
  lo.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  Es -- ta -- vam os pais __ de Je -- sus __ _ ad -- mi -- ra -- dos com a -- qui -- lo que di -- zi -- am __ de -- le.
}

\GregorianTranscriptionLayout

\header {
  meter = " "
  arranger = "Adapt.: Lincoln Haas Hein, Laércio de Sousa"
}

\score {
  \header {
    piece = "VIII G"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \transpose c a, \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}