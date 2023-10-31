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
  \C g \E c \CC b g
  \divisioMinima
  \C b c a g \EE a g \C f
  \divisioMaior
  \E g \EE f a \C c c \CC b g
  \divisioMinima
  \C b c a b a g \Cp g
  \finalis
}

antiphonLyrics = \lyricmode {
  Ve -- ní -- te, __ ad -- o -- ré -- mus e -- um,
  qui -- a __ ip -- se est __ Dó -- mi -- nus De -- us no -- ster.
}

antiphonLyricsPt = \lyricmode {
  Ó vin -- de, __ vin -- de, a -- do -- re -- mos,
  por -- que __ e -- le é __ o Se -- nhor, nos -- so Deus.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 005348 cf. Sl 94(95),6-7"
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
    \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}