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
  \VSup "2" Po -- vos
  \Tenor "todos do universo, batei"
  \MelismaOff pal -- mas, \MelismaOn
  \Tenor "gritai a Deus aclamações de" a -- le --
  \MelismaOff gri -- a! \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup"7" Sal -- mo --
  \Tenor "diai ao nosso Deus ao som da"
  \MelismaOff har -- pa, \MelismaOn
  \Tenor "salmodiai ao som da harpa ao" nos -- so Rei! __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "8" Por -- que
  \Tenor "Deus é o grande Rei de toda a"
  \MelismaOff ter -- ra, \MelismaOn
  \Tenor "ao som da harpa acompanhai os" seus lou --
  \MelismaOff vo -- res! \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "9" Deus rei --
  \Tenor "na sobre todas as na" -- ções, __
  \Tenor "está sentado no seu trono" glo -- ri --
  \MelismaOff o -- so. \MelismaOn
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
  >>
}