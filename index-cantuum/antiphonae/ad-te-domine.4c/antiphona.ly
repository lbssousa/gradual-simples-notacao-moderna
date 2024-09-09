\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c'' {
  \AntiphonSignature
  \C a c \CC c d \C_C d d
  \divisioMinima
  d d c \CC d e \C c \CL d e \C d d
  \divisioMaior
  \C_C a d c b a g \E_E a g
  \divisioMinima
  \C f g a bes c bes a a
  \finalis
}

antiphonLyrics = \lyricmode {
  Ad te, Dó -- \MelismaOff mi -- ne, \MelismaOn le -- vá -- vi á -- ni -- mam __ me -- am:
  \MelismaOff ve -- ni, \MelismaOn et é -- ri -- pe me, __ Dó -- mi -- ne, ad te con -- fú -- gi.
}

antiphonLyricsPt = \lyricmode {

  A vós, Se -- nhor, __ e -- le -- vo a mi -- nha __ al -- ma.
  Vin -- de e li -- ber -- \MelismaOff tai- -- me, \MelismaOn Se -- nhor, pois em vós me~a -- bri -- go.
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
    \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}