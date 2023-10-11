\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \Ldim f \C d f \EE e d \EE e f \C g f f g e
  \divisioMinima
  f \Ldim d \C c \E d \E d
  \divisioMaior
  \C c d \Cp f \C f f f f f f f d f e
  \finalis
}

antiphonLyrics = \lyricmode {
  Om -- nis ter -- ra __ ad -- ó -- ret te, De -- us, et psal -- lat ti -- bi, psal -- mum _ di -- cat nó -- mi -- ni tu -- o, Dó -- mi -- ne.
}

antiphonLyricsPt = \lyricmode {
  To -- da~a ter -- ra __ a -- do -- re- -- vos, ó Deus, e can -- te a vós, en -- to -- e sal -- mos ao vos -- so no -- me, ó Se -- nhor.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 004155 cf. Sl 65(66),4"
  arranger = "Adapt.: Lincoln Haas Hein, Laércio de Sousa"
}

\score {
  \header {
    piece = "IV E"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}