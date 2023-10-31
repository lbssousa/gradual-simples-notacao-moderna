\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c'' {
  \AntiphonSignature
  \key c \major
  \C g b c d d e d c d b
  \divisioMaior
  \Cp c c c c a c b g \Cp g
  \finalis
}

antiphonLyrics = \lyricmode {
  Vi -- dé -- runt om -- nes tér -- mi -- ni ter -- ræ
  _ sa -- lu -- tá -- re De -- i no -- stri.
}

antiphonLyricsPt = \lyricmode {

  To -- dos os can -- tos da ter -- ra vi -- ram
  a sal -- va -- ção do nos -- so Deus.
}

\GregorianTranscriptionLayout

\header {
  meter = "cf. Sl 97(98),3"
  arranger = "Adapt.: Lincoln Haas Hein"
}

\score {
  \header {
    piece = "VII a"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \transpose c g, \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}