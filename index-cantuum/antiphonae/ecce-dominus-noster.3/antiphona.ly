\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c'' {
  \AntiphonSignature
  \C g g \CC a b \C b b b \E b
  \divisioMinima
  \C b b c a b \CC a g \Cp g
  \divisioMaior
  g a c b g a g g
  \divisioMinima
  g \EE g a \C f g f \EE f d
  \EE e f \C g \CL g g \C e
  \finalis
}

antiphonLyrics = \lyricmode {
  Ec -- ce Dó -- mi -- nus no -- ster cum vir -- tú -- te vé -- ni -- et, ut il -- lú -- mi -- net ó -- cu -- los ser -- vó -- rum su -- ó -- rum, __ al -- le -- lú -- ia.
}

antiphonLyricsPt = \lyricmode {
  Eis que o __ nos -- so Se -- nhor com po -- der há de vir, __ "" pa -- ra~i -- lu -- mi -- nar os o -- lhos dos seus __ ser -- vi -- do -- res, __ a -- le -- lu -- ia.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 002508 cf. Is 35,4-5; Mt 24,30; Mc 13,26; I Esd 9,8"
  arranger = "Adapt.: Laércio de Sousa"
}

\score {
  \header {
    piece = "III"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}