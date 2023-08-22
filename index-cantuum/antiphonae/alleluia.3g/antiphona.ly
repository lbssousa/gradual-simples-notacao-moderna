\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c'' {
  \AntiphonSignature
  \C g a c \CC c b
  \divisioMinima
  a g \CC g a \CC g f
  g \CC g f \C e e
  \finalis
}

antiphonLyrics = \lyricmode {
  A -- le -- lu -- ia, __ a -- le -- lu -- ia, __ a -- le -- lu -- ia.
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "III g"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
  >>
}