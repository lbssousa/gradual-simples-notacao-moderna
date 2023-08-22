\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-8.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \key c \major
  \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioCumEpenthesisVIII
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioCumEpenthesisVIIIG
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "9ab" Que -- ro~ou --
  \Tenor "vir o que o Senhor irá" fa -- _ lar:
  \Tenor "é a paz que ele" vai a -- nun -- ci -- ar.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "9cd" A paz
  \Tenor "para o seu povo e seus a" -- mi -- _ gos,
  \Tenor "para os que voltam ao Se" -- nhor seu co -- ra -- ção.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "10" Es -- tá
  \Tenor "perto a salvação dos que o" te -- _ mem,
  \Tenor "e a glória habitará em" nos -- sa ter -- _ ra.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "11" A ver --
  \Tenor "dade e o amor se en" -- con -- tra -- rão,
  \Tenor "a justiça e a" paz se~a -- bra -- ça -- rão.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "12" Da ter --
  \Tenor "ra brotará a fideli" -- da -- _ de,
  \Tenor "e a justiça olha" -- rá dos al -- tos céus.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "14" A jus --
  \Tenor "tiça andará na sua" fren -- _ te
  \Tenor "e a salvação há de se" -- guir os pas -- sos seus.
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
  >>
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose c a, \gloriaPatriChantVIIIG
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseVIIIG
  >>
}