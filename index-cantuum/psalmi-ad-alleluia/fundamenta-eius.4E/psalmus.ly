\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioIV #'()
  \chantTenorIV
  \chantMediatioIV #'((syneresis . partial))
  \divisioMaxima
  \chantTenorIV
  \chantTerminatioIVE #'((syneresis . partial))
  \finalis
}

psalmChantB = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioIV #'()
  \chantTenorIV
  \chantFlexaIV #'()
  \divisioMinima
  \chantTenorIV
  \chantMediatioIV #'()
  \divisioMaxima
  \chantTenorIV
  \chantTerminatioIVE #'()
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" O Se -- \Tenor "nhor a" -- ma~a ci --
  \MelismaOff da -- de \MelismaOn
  \Tenor "que fundou" no Mon -- te san -- to.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "2" A -- ma __ \Tenor "as portas" de Si -- ão __
  \Tenor "mais que as ca" -- sas de Ja -- có. __ _
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "6" Deus a -- \Tenor "nota no seu" li -- vro,
  \Tenor "onde inscreve os" po -- vos to -- dos:
  \Tenor "“Foi ali" que~es -- tes nas -- ce -- ram”.
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
  >>
}