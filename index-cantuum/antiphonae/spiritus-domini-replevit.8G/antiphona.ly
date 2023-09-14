\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \key c \major
  \Cp d \C d \CCC f a g \CL g a \C a g \EE f e
  \divisioMinima
  \C d \EE f g \EE g d \CL f g \CL a g \break \C f \CC g a \C a
  \divisioMaior
  \CCC g f d \CC e f \CL g a \C g
  \finalis
  \Spacer 15
}

antiphonLyrics = \lyricmode {
  _ Spí -- ri -- tus __ Dó -- mi -- ni __
  re -- plé -- vit __ or -- bem __ ter -- rá -- rum,
  al -- le -- lú -- ia.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  O~Es -- pí -- ri -- to __ do Se -- nhor __
  en -- cheu __ a __ ter -- ra __ in -- tei -- ra,
  a -- le -- lu -- ia.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 004998 cf. Sb 1,7"
  arranger = "Adapt.: Lincoln Haas Hein, Laércio de Sousa"
}

\score {
  \header {
    piece = "VIII G"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \transpose c a, \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}