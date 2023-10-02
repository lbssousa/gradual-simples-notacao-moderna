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
  \C c d \CEE d a' bes \C a
  \divisioMinima
  \CC a c \Cp a \C a a
  \CCmi a g \CCCC a bes a g \Omf g
  \divisioMinima
  \Cp g \Cp g \C f g a \EE f e \C d
  \divisioMaior
  g \EE g e \CC g a \C_CC g f g \C d \CQC d e f
  \divisioMinima
  \C e f g \CC f e \C d d
  \finalis

}

antiphonLyrics = \lyricmode {
  Ia -- cob au -- tem gé -- nu -- it Io -- seph, __ _ _ "" "" vi -- rum Ma -- rí -- æ, de qua __ na --
  \MelismaOff
  tus
  \MelismaOn
  est __ Ie -- sus, __ qui vo -- cá -- tur __ Chri -- stus.
}

antiphonLyricsPt = \lyricmode {

  Ja -- có, por __ fim, ge -- _ rou Jo -- sé, __ _ _ o~es -- po -- so de Ma -- ri -- a, da qual __ nas -- ceu __ _ Je -- sus, __ que~é cha -- ma -- do __ Cris -- to.
}

\GregorianTranscriptionLayout

\header {
  meter = "cf. Mt 1,16"
  arranger = "Adapt.: Lincoln Haas Hein, Laércio de Sousa"
}

\score {
  \header {
    piece = "I g"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}