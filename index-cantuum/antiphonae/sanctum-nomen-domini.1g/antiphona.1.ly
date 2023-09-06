\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \key d \minor
  \C d \C_C e f \C g g e f \CC e d
  \divisioMinima
  \C_CC f g a \C_C a g \C f \break \CC e f \C g \CC f e \C d d
  \finalis
  \Spacer 21
}

antiphonLyrics = \lyricmode {
  Sanc -- tum __ no -- men Dó -- mi -- ni __
  ma -- _ \MelismaOff gní -- fi -- \MelismaOn cat á -- ni -- ma me -- a.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  Ao \MelismaOff san -- to \MelismaOn no -- me do Se -- nhor __
  en -- gran -- de -- ce a mi -- nha al -- ma.
}

\GregorianTranscriptionLayout

\header {
  meter = "cf. Lc 1,28"
  arranger = "Adapt.: Laércio de Sousa"
}

\score {
  \header {
    piece = "I g"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}