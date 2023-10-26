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
  \E c \C b g b \C_C c a g a g a g f
  \divisioMaior
  \CC f a \C c c \CL b g \Cp g \C b c a a b a \E g
  \finalis
}

antiphonLyrics = \lyricmode {
  Lu -- men ad re -- \MelismaOff ve -- la -- \MelismaOn ti -- ó -- nem gén -- ti -- um: et __ gló -- ri -- am __ "" ple -- bis tu -- æ Is -- ra -- el.
}

antiphonLyricsPt = \lyricmode {
  Luz que bri -- lha -- rá __ pa -- ra os gen -- ti -- os e __ gló -- ri -- a __ do vos -- so po -- vo, Is -- ra -- el.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 003645 cf. Lc 2,32"
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