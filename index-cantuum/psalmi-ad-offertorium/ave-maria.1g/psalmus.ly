\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-1.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \key d \minor
  \S \chantInchoatioI #'()
  \chantTenorI
  \chantMediatioPrimusI #'()
  \chantMediatioSecundusI #'((syneresis . partial))
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIg #'((syneresis . partial))
  \finalis

}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" Fa -- vo --
  \Tenor "recestes, ó Senhor, a"
  vos -- sa \MelismaOff ter -- ra, \MelismaOn
  \Tenor "libertastes os cativos" de Ja -- có. __ _
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "11" A ver --
  \Tenor "dade e o amor se en" con -- tra -- rão, __
  \Tenor "a justiça e a paz se a" --
  bra -- ça -- rão. __ _
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "12" Da ter --
  \Tenor "ra brotará a fi" -- de -- li --
  \MelismaOff da -- de, \MelismaOn
  \Tenor "e a justiça olhará dos" al -- tos céus. __ _
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "13" O Se --
  \Tenor "nhor nos dará tudo o" que é bom, __
  \Tenor "e a nossa terra nos dará su" -- as co --
  lhei -- tas.
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
  >>
}