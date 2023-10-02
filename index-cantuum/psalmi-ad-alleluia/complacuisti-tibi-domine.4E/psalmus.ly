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
  \chantTerminatioIVE #'((syneresis . total))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" Fa -- vo --
  \Tenor "recestes, ó Senhor, a"
  vos -- sa ter -- ra,
  \Tenor "libertastes os cati" -- vos de Ja -- có. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "8" Mos -- trai- --
  \Tenor "nos, ó Senhor, vos" --
  sa bon -- da -- de,
  \Tenor "concedei-nos também vos" -- sa sal -- va -- ção! __
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
  >>
}