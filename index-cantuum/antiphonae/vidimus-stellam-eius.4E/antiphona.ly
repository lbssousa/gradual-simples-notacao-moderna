\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \C_C f e d \Cp d \C e f \EL g a \C g a f g \EL f e \E d
  \divisioMaior
  \C f \Cp f \C_C f e \E d \C e f \C_C g a \E g
  \divisioMinima
  g a \C_C f g e e e
  \finalis

}

antiphonLyrics = \lyricmode {
  \MelismaOff Ví -- di -- \MelismaOn
  mus _ stel -- lam e -- ius in O -- ri -- én -- te,
  et _
  \MelismaOff vé -- ni --
  \MelismaOn mus cum mu --
  \MelismaOff né -- ri -- \MelismaOn
  bus ad -- o --
  \MelismaOff rá -- re \MelismaOn
  Dó -- mi -- num.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  Vi -- mos su -- a es -- tre -- la no O -- ri -- en -- te,
  e vi -- e -- mos com pre -- sen -- tes
  a -- do -- rar __ o Se -- nhor.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 005411 cf. Mt 2,2"
  arranger = "Adapt: Lincoln Haas Hein"
}
\score {
  \header {
    piece = "IV E"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon"
    \antiphonLyrics
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}