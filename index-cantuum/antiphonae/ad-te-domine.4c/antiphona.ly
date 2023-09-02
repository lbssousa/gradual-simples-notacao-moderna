\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c'' {
  \AntiphonSignature
  \C a c \CC c d \C d d
  \divisioMinima
  d d c \CC d e \C c \CL d e \C d d
  \divisioMaior
  a d c b a g \EE a g
  \divisioMinima
  \C f g a bes c bes a a
  \finalis
  \Spacer 7
}

antiphonLyrics = \lyricmode {
  Ad te, Dó -- mi -- ne, le -- vá -- vi á -- ni -- mam __ me -- am:
  ve -- ni, et é -- ri -- pe me, __ Dó -- mi -- ne, ad te con -- fú -- gi.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  A vós, ó __ Se -- nhor, a mi -- nha al -- ma e -- le -- vo.
  Vin -- de e li -- ber -- tai -- -me, __ Se -- nhor, pois em vós me~a -- bri -- go.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 001255 cf. Sl 142(143),8d-9"
  arranger = "Adapt.: Lincoln Haas Hein, Laércio de Sousa"
}

\score {
  \header {
    piece = "IV c"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \transpose c g, \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}