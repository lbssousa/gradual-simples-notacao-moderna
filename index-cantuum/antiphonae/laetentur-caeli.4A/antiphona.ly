\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c'' {
  \AntiphonSignature
  \C a g a \EE c d \Vs d
  c d e \C_C d c \E d d
  \divisioMaior \break
  a d c \C_C b a \C a g \EE a g
  \divisioMinima
  \EE f g a \Ldim c \C a a
  \finalis
}

antiphonLyrics = \lyricmode {
  Læ -- tén -- tur cæ -- li __ et ex -- súl -- tet __ ter -- ra
  an -- te fá --
  \MelismaOff
  ci -- em
  \MelismaOn
  Dó -- mi -- ni, __ quó -- ni -- am ve -- nit.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  Os céus se~a -- le -- grem __ e e -- xul --
  \MelismaOff
  te a
  \MelismaOn
  ter -- ra
  an -- te~a fa -- ce __ do Se -- nhor, __ pois __ e -- le vei -- o.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 003567 cf. Sl 95(96),11.13"
  arranger = "Adapt.: Lincoln Haas Hein, Laércio de Sousa"
}

\score {
  \header {
    piece = "IV A"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \transpose c g, \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}