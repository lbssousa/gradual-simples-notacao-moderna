\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/psalmody.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

chant = \relative c'' {
  \AntiphonSignature
  \T c \CC c a
  \finalis
}

chantLyrics = \lyricmode {
  \Tenor "Sigamos em" paz. __
}

\GregorianTranscriptionLayout
\layout {
  ragged-last = ##t
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "chant" {
      \chant
    }

    \new GregorianTranscriptionLyrics \lyricsto "chant" \chantLyrics
  >>
}