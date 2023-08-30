\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \C e f \CC g a \C g
  \divisioMinima
  g a g \CC f d
  f g e e
  \finalis
  \Spacer 11
}

antiphonLyrics = \lyricmode {
  A -- le -- lu -- ia, a -- le -- lu -- ia, __ a -- le -- lu -- ia.
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "IV E"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
  >>
}