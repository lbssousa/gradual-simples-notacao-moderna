\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-6.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \key c \major
  \once \slurDashed
  \S \chantInchoatioVI #'((dieresis . partial))
  \chantTenorVI
  \chantMediatioVI #'((syneresis . partial))
  \divisioMaxima
  \chantTenorVI
  \chantTerminatioVIF #'((syneresis . partial))
  \finalis

}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \MelismaOff
  \VSup "9ab" Que --
  \MelismaOff ro ou -- \MelismaOn
  \Tenor "vir o que o Senhor irá" fa -- lar: __
  \Tenor "é a paz que ele vai a" -- nun -- ci -- ar. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "9cd" A paz __
  \Tenor "para o seu povo e seus" a --
  \MelismaOff mi -- gos, \MelismaOn
  \Tenor "para os que voltam ao Senhor seu" co -- ra -- ção. __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "10" Es -- tá __
  \Tenor "perto a salvação dos que" o
  \MelismaOff te -- mem, \MelismaOn
  \Tenor "e a glória habitará em" nos -- sa __
  \MelismaOff ter -- ra. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "11" A ver --
  \Tenor "dade e o amor se encon" -- tra -- rão, __
  \Tenor "a justiça e a paz se a" --
  bra -- ça -- rão. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "12" Da ter --
  \Tenor "ra brotará a fide" -- li --
  \MelismaOff da -- de, \MelismaOn
  \Tenor "e a justiça olhará dos" al -- tos __ céus. __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "13" O Se --
  \Tenor "nhor nos dará tudo o que" é bom, __
  \Tenor "e a nossa terra nos dará su" -- as co --
  \MelismaOff lhei -- tas. \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "14" A jus --
  \Tenor "tiça andará na su" -- a
  \MelismaOff fren -- te \MelismaOn
  \Tenor "e a salvação há de seguir os" pas -- sos __ seus. __
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm"
    \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \gloriaPatriChantVIF
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseVIF
  >>
}