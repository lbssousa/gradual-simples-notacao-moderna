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
  \C a f \CC f g \C g
  \divisioMinima
  a \CC g f \C g \CC g a \C f
  \divisioMaior
  a c b c a \C_C a g \C a b a g g
  \finalis
  \Spacer 15
}

antiphonLyrics = \lyricmode {
  Be -- á -- ta es, Vir -- go Ma -- rí -- a,
  quæ óm -- ni -- um por -- tá -- sti cre -- a -- tó -- rem.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  Ben -- di -- ta sois, Vir -- gem Ma -- ri -- a,
  que~em vós trou -- xes -- tes \MelismaOff o cri -- \MelismaOn a -- dor de tu -- do.
}

\GregorianTranscriptionLayout

\header {
  meter = " "
  arranger = "Adapt.: Laércio de Sousa"
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