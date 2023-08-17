\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \key c \major
  \PsalmSignature
  \chantInchoatioIV
  \chantTenorIV
  \chantMediatioIV
  \divisioMaxima
  \chantTenorIV
  \chantTerminatioCumEpenthesisIVE
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" Fa -- vo --
  \Tenor "recestes, ó Senhor, a"
  vos -- sa ter -- ra,
  \Tenor "libertastes os ca" -- ti -- vos de __ _ Ja -- có.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "8" Mos -- trai --
  \Tenor "-nos, ó Senhor, vos" --
  sa bon -- da -- de,
  \Tenor "concedei-nos tam" -- bém vos -- sa __ sal -- va -- ção!
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
    }

    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
  >>
}