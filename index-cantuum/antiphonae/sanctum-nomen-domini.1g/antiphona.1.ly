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
  \Cp d \C d \CC e f \C g g e f \CC e d
  \divisioMinima
  \CCC f g a \C a g f \CC e f \C g \CC f e \C d d
  \finalis

}

antiphonLyrics = \lyricmode {
  _ Sanc -- tum __ no -- men Dó -- mi -- ni __
  ma -- gní -- fi -- cat á -- ni -- ma __ me -- a.
}

antiphonLyricsPt = \lyricmode {

  Ao san -- to __ no -- me do Se -- nhor __
  en -- gran -- de -- ce a __ mi -- nha __ al -- ma.
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
    \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}