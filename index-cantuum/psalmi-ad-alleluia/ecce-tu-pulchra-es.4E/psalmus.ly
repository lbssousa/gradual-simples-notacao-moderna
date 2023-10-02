\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioIV #'()
  \chantTenorIV
  \chantMediatioIV #'()
  \divisioMaxima
  \chantTenorIV
  \chantTerminatioIVE #'()
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1,15" Co -- mo __
  \Tenor "és bela, minha amada, co" -- mo és be -- la,
  \Tenor "com teus" o -- lhos de __ pom -- ba!
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "4,12" És um __
  \Tenor "jardim fechado, minha ir" -- mã e~es -- po -- sa,
  \Tenor "jardim fechado e" fon -- te la -- cra -- da.
}

\GregorianTranscriptionLayout

\header {
  poet = " "
  composer = "Texto: Bíblia Sagrada - Tradução Oficial da CNBB (2019)"
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
  >>
}