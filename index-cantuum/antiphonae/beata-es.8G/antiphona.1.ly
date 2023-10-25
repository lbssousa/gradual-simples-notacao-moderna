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
  \C a f \CC f g \C g
  \divisioMinima
  a \CC g f \C g \CC g a \C f
  \divisioMaior
  a c b c a \C_C a g \C a \S b a \S g g s
  \finalis
  \S \Cp b \Cp a \S g \CC g a \C b \CC a b \C g g
  \finalis
}

antiphonLyrics = \lyricmode {
  Be -- á -- ta __ es, Vir -- go __ Ma -- rí -- a,
  quæ óm -- ni -- um por -- tá -- sti † cre -- a -- _ tó -- rem.
  \set stanza = \markup \column { \vspace #.33 "T. P." }
  † cre -- a -- _ tó -- rem, __ al -- le -- lú -- ia.
}

antiphonLyricsPt = \lyricmode {

  Ben -- di -- ta __ sois, Vir -- gem __ Ma -- ri -- a,
  que~em vós trou -- xes -- tes \MelismaOff o cri -- \MelismaOn a -- _ dor de
  \markup \upright † tu -- do.
  _ _ _ \markup \upright † tu -- do, __ a -- le -- lu -- ia.
}

\GregorianTranscriptionLayout

\header {
  meter = " "
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