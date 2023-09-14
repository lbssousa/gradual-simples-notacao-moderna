\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \key d \minor
  \Cp f \C f e \E d \C d
  \divisioMinima
  d e f \CCC g a g \CCC a bes a
  \divisioMaior
  \Cp a \Cp a \C a g f g f \CL f e \C g \CC f e \C d d d
  \finalis
  \Spacer 13
}

antiphonLyrics = \lyricmode {
  _ Re -- ges Thar -- sis et ín -- su -- læ __ _
  "" "" mú -- ne -- ra óf -- fe -- rent __ re -- gi __ Dó -- mi -- no.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  Os reis de Tár -- sis e das i -- lhas __ _
  seus pre -- sen -- tes o -- fer -- ta -- rão __ ao Se -- nhor dos reis.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 004594 cf. Sl 71(72),10"
  arranger = "Adapt.: Lincoln Haas Hein, Laércio de Sousa"
}

\score {
  \header {
    piece = "I g 2"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}