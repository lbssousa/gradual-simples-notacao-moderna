\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \key c \major
  \C d f \CC f e \C d
  \divisioMinima
  e f e \CC d c
  d \CC e f \C d d
  \finalis

}

antiphonLyrics = \lyricmode {
  A -- le -- lu -- ia, a -- le -- lu -- ia, __ a -- le -- lu -- ia.
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "II D"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \transpose d g \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
  >>
}