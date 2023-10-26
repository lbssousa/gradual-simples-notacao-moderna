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
  \Cp f \C f a \E c \CL b g \Cp g \EE b c \C a g a g \E f
  \divisioMaior
  \Cp f \EE f a \C c c b g b c a a \E b \Ldim a \C g g
  \divisioMinima
  \finalis
}

antiphonLyrics = \lyricmode {
  _ Ob -- tu -- lé -- runt __ "" pro __ e -- o Dó -- mi -- no _ par __ túr -- tu -- rum, aut du -- os pul -- los co -- lum -- bá -- rum.
}

antiphonLyricsPt = \lyricmode {
  O -- fe -- re -- ce -- ram, __ se -- gun -- do~a lei do Se -- nhor, um par __ de ro -- las ou dois fi -- lho -- tes de pom -- bi -- nhos.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 004104 cf. Lc 2,24"
  arranger = "Adapt.: Laércio de Sousa"
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
    \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}