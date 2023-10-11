\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c'' {
  \AntiphonSignature
  \key c \major
  \C c \CC b c \CC a g \C b
  \divisioMinima
  a b c a a g a g
  \finalis
}

antiphonLyrics = \lyricmode {
  A -- le -- lu -- ia, a -- le -- lu -- ia, a -- le -- lu -- ia.
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "VIII c"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \transpose c a, \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
  >>
}