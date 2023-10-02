\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c'' {
  \AntiphonSignature
  \key c \major
  \C g \CC f d \C f \CC f g \C g
  \divisioMinima
  \CC f a \C c b \CC c d \CC a g \Cp g
  \divisioMaior
  \Cp g \Cp g \C g g g g \C_C f e \C d
  \divisioMinima
  \C d e f \CC g f \CC g a \C a g g
  \finalis
}

antiphonLyrics = \lyricmode {
  Ec -- ce __ de -- di __ te in __ lu -- cem gén -- ti -- um,
  _ _ ut sis sa -- lus me -- a us -- que ad ex -- tré -- mum ter -- ræ.
}

antiphonLyricsPt = \lyricmode {

  Eis que __ fiz de __ ti a __ luz das gen -- tes, __ ""
  pa -- ra se -- res mi -- nha
  \MelismaOff sal -- va -- \MelismaOn
  ção a -- té os con -- fins __ da ter -- ra.
}

\GregorianTranscriptionLayout

\header {
  meter = "cf. Is 49,6"
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