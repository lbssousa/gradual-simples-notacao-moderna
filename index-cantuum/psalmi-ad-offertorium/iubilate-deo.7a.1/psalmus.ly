\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-7.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioVII #'()
  \chantTenorVII
  \chantMediatioPrimusVII #'()
  \chantMediatioSecundusVII #'((syneresis . partial)
                               (epenthesis . partial))
  \divisioMaxima
  \chantTenorVII
  \chantTerminatioPrimusVII #'()
  \chantTerminatioSecundusVIIa #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "3" Por -- que __ \Tenor "sublime é o Senhor, o" Deus Al --
  \MelismaOff tís -- si -- mo, \MelismaOn
  \Tenor "o soberano que domina" to -- da~a ter -- ra. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "7" Sal -- mo --
  \Tenor "diai ao nosso Deus ao" som da
  \MelismaOff har -- _ pa, \MelismaOn
  \Tenor "salmodiai ao som da harpa ao" nos -- so Rei! __ _
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "8" Por -- que __ \Tenor "Deus é o grande Rei de"
  \MelismaOff to -- da~a ter -- _ ra, \MelismaOn
  \Tenor "ao som da harpa acompanhai os" seus lou -- vo -- res! __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "9" Deus __ rei -- \Tenor "na sobre todas" as na -- ções, __
  \Tenor "está sentado no seu trono" glo -- ri -- o -- so. __
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c g, \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
  >>
}