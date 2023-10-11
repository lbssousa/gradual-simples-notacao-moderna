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
  \chantMediatioVIII #'()
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIc #'()
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Deus é \Tenor "Rei! Exulte a terra de ale" --
  gri -- a,
  \Tenor "e as ilhas numerosas" re -- ju -- bi -- lem!
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "6" E as -- \Tenor "sim proclama o céu sua jus" -- ti -- ça,
  \Tenor "todos os povos podem ver a" su -- a gló -- ria.
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
  >>
}