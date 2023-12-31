\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-3.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioIII #'()
  \chantTenorIII
  \chantFlexaIII #'((syneresis . total))
  \divisioMinima
  \S \chantTenorIII
  \chantMediatioPrimusIII #'()
  \chantMediatioSecundusIII #'()
  \divisioMaxima
  \chantTenorIII
  \chantTerminatioIIIg #'()
  \finalis

}

psalmChantB = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioIII #'()
  \chantTenorIII
  \chantMediatioPrimusIII #'()
  \chantMediatioSecundusIII #'()
  \divisioMaxima
  \chantTenorIII
  \chantTerminatioIIIg #'()
  \finalis

}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1b" Tri -- bu --
  \Tenor "tai-lhe a glória e o po" -- der! __
  \VSup "2" \Tenor "Dai-lhe a glória devida" ao seu no -- me,
  \Tenor "adorai-o com santo" or -- na -- men -- to!
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "11" \markup { \concat { "Qu" \undertie "e o" "" } } Se --
  \Tenor "nhor fortaleça" o seu po -- vo
  \Tenor "e abençoe com a paz" o seu po -- vo!
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
  >>
}

\markup \vspace #3

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
  >>
}