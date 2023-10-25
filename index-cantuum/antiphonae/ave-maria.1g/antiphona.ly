\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \key d \minor
  \C f c d \CEE d a' bes \C a
  \divisioMinima
  a g f \EE g a \E a
  \divisioMinima
  \Cp a \Cp a \C a g f g d
  \divisioMaior
  g \Cp g \C a g \Cp g \C f
  \divisioMinima
  \CL e c \C d \CC f e
  \C_C d c
  \QC e f \Ldim g \CC f e \C d d
  \finalis

}

antiphonLyrics = \lyricmode {
  A -- ve, Ma -- rí -- a, gra -- ti -- a ple -- na: _ _ Dó -- mi -- nus te -- cum:
  be -- ne -- dí -- cta _ tu in __ mu -- li --
  \MelismaOff
  é -- ri --
  \MelismaOn
  bus, __ al -- le -- lú -- ia.
}

antiphonLyricsPt = \lyricmode {

  A -- ve Ma -- ri -- a, chei -- a de gra -- ça: o Se -- nhor é con -- vos -- co.
  Ben -- _ di -- ta sois vós en -- tre~as mu -- lhe -- res, __ a -- le -- lu -- ia.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 001539 cf. Lc 1,28"
  arranger = "Adapt.: Lincoln Haas Hein, Laércio de Sousa"
}

\score {
  \header {
    piece = "I g"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}