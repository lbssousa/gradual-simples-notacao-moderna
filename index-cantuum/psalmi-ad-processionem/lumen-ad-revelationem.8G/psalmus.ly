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
  \chantTerminatioVIIIG #'((syneresis . total))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "29" Dei -- xai, \Tenor "agora, vosso servo ir em" paz, __
  \Tenor "conforme prometestes," ó Se -- nhor. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "30" Pois meus \Tenor "olhos"
  \MelismaOff vi -- ram \MelismaOn
  \Tenor "a vossa" sal -- va -- ção. __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "31" Que pre \Tenor "pa" --
  \MelismaOff ras -- tes \MelismaOn
  \Tenor "ante a face" das na -- ções. __
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
  >>
}