\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c'' {
  \AntiphonSignature
  \key c \major
  \C g
  \C_C f a
  \C c \EE b g
  \divisioMinima
  \EE b c \EE a g \C a g f
  \divisioMaior
  g f a c \EE b g
  \divisioMinima
  \EE b c \C a
  \C_L b a
  \C g g
  \finalis
  \Spacer 6
}

antiphonLyrics = \lyricmode {
  Be --
  \MelismaOff
  ni -- gni --
  \MelismaOn
  tá -- tem __ fe -- cit __ Dó -- mi -- nus, et ter -- ra no -- stra __ de -- dit
  \MelismaOff
  fru -- ctum
  \MelismaOn
  su -- um.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  Com bon -- da -- de __ a -- giu __ o Se -- nhor, e~a nos -- sa ter -- ra __ deu __ o seu __ fru -- to.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID a01124 cf. Sl 84(85),13"
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