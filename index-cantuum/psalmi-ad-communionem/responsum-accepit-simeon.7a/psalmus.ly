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
  \chantMediatioSecundusVII #'((syneresis . partial))
  \divisioMaxima
  \S \chantTenorVII
  \chantTerminatioPrimusVII #'()
  \chantTerminatioSecundusVIIa #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "29"  Dei -- xai, __ \Tenor "agora, vosso servo" ir em paz, __
  "" \Tenor "conforme prometestes," ó Se -- nhor. __ _
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "30" Pois __ meus __ \Tenor "olhos viram vossa" sal -- va -- ção __
  \VSup "31" \Tenor "que preparastes ante a face" das na -- ções. __ _
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "32" U -- ma __ \Tenor "luz que brilhará pa" -- ra~os gen --
  \MelismaOff ti -- os \MelismaOn
  "" \Tenor "e para a glória de Israel, o" vos -- so po -- vo. __
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
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose c g, \gloriaPatriChantVIIa
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseVII
  >>
}