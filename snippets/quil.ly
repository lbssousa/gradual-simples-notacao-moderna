\version "2.24.1"

\include "gregorian.ly"
\include "../modules/lilypond/neums.ily"
\include "../modules/lilypond/layout.ily"

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff {
    \relative c' {
      \AntiphonSignature
      \QC e f \divisioMaxima \CQC f g a \finalis
    }
  }
}