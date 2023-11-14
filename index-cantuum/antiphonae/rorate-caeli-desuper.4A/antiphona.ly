\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c'' {
  \AntiphonSignature
  \C a g a c c c \CC d e \C d
  \divisioMinima
  d c d e \CL d c \Cp c \E d \C d
  \divisioMaior
  \Cp d \C a d c b \CL a g \C a
  \divisioMinima
  \Cp g \C g f g \EE a bes \Ldim c \C bes \C a \Cp a
  \finalis
}

antiphonLyrics = \lyricmode {
  Ro -- rá -- te cæ -- li dé -- su -- per,
  et nu -- bes plu -- ant __ _ iu -- stum:
  a -- pe -- ri -- á -- tur ter -- ra,
  _ et gér -- mi -- net __ Sal -- va -- tó -- rem.
}

antiphonLyricsPt = \lyricmode {
  Do al -- to, ó céus, or -- va -- lhai
  e~as nu -- vens cho -- vam __ o jus -- to;
  _ que se a -- bra~a ter -- ra
  e ger -- mi -- ne o __ Sal -- va -- dor.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 004668 cf. Is 45,8"
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
    \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}