\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c'' {
  \AntiphonSignature
  \key c \major
  \C g g g b d c a c \E b
  \divisioMinima
  \Cp b \C b c a g c \EEE c c b
  \divisioMaior
  b c d c \E a \Cp a \C c b
  \divisioMinima
  \C_C g b \C c a a b a g
  \finalis
}

antiphonLyrics = \lyricmode {
  Re -- spón -- sum ac -- cé -- pit Sí -- me -- on _ a Spí -- ri -- tu Sanc -- to, __ non vi -- sú -- rum se _ mor -- tem,
  \MelismaOff ni -- si \MelismaOn vi -- dé -- ret Dó -- mi -- num.
}

antiphonLyricsPt = \lyricmode {
  Fo -- ra re -- ve -- la -- do~a Si -- me -- ão pe -- lo~Es -- pí -- ri -- to San -- to, __ que não ve -- ri -- a a mor -- te, sem __ ter vis -- to o Se -- nhor.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 004639 cf. Lc 2,26"
  arranger = "Adapt.: Laércio de Sousa"
}

\score {
  \header {
    piece = "VII a"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \transpose c g, \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}