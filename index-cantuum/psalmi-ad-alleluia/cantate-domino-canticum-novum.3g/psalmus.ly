\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-3.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \key c \major
  \PsalmSignature
  \chantInchoatioIII
  \chantTenorIII
  \chantMediatioPrimusIII
  \chantMediatioSecundusCumEpenthesisIII
  \divisioMaxima \break
  \chantTenorIII
  \chantTerminatioIIIg
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1ab" Can -- tai __
  \Tenor "ao Senhor Deus um" can -- to _ no -- vo,
  \Tenor "porque ele" fez pro -- dí -- gios!
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "2" O Se --
  \Tenor "nhor fez conhe" -- cer a sal -- va -- ção,
  \Tenor "e às nações, su" -- a jus -- ti -- ça.
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
  >>
}