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
  \C_CC f g a \C_C a g \C f \CC e f \C g \CC f e \C d d s
  \finalis
  \C e \CC f e \C d d
  \finalis
}

antiphonLyrics = \lyricmode {
  Sanc -- tum __ no -- men Dó -- mi -- ni __
  ma -- _ \MelismaOff gní -- fi -- \MelismaOn cat á -- ni -- ma __ me -- a.
  \set stanza = \markup \column { \vspace #.33 "T. P." }
  Al -- le -- lú -- ia.
}

antiphonLyricsPt = \lyricmode {

  Ao \MelismaOff san -- to \MelismaOn no -- me do Se -- nhor __
  en -- gran -- de -- ce a __ mi -- nha __ al -- ma.
  A -- le -- lu -- ia.
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