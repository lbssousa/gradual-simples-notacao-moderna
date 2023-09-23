\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-8.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "9ab" Que -- ro~ou --
  \Tenor "vir o que o Senhor irá fa" -- lar: __
  \Tenor "é a paz que ele vai a" -- nun -- ci -- ar. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "9cd" A paz
  \Tenor "para o seu povo e seus a" --
  \MelismaOff mi -- gos, \MelismaOn
  \Tenor "para os que voltam ao Senhor seu" co -- ra -- ção. __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "10" Es -- tá
  \Tenor "perto a salvação dos que o"
  \MelismaOff te -- mem, \MelismaOn
  \Tenor "e a glória habitará em" nos -- sa
  \MelismaOff ter -- ra. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "11" A ver --
  \Tenor "dade e o amor se encontra" -- rão, __
  \Tenor "a justiça e a paz se a" -- bra -- ça -- rão. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "12" Da ter --
  \Tenor "ra brotará a fideli" --
  \MelismaOff da -- de, \MelismaOn
  \Tenor "e a justiça olhará dos" al -- tos céus. __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "14" A jus --
  \Tenor "tiça andará na sua"
  \MelismaOff fren -- te \MelismaOn
  \Tenor "e a salvação há de seguir os " pas -- sos seus. __
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

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseVIII
  >>
}