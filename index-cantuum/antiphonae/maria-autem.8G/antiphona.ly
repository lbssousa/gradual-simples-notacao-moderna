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
  \C g b a \EE c b \Pq g a
  \divisioMinima
  \C f a c d b c a \Ldim a \C g \E a \Cp a
  \divisioMaior
  \Ldim a \C g e f \C_C g a \C a g g
  \finalis
}

antiphonLyrics = \lyricmode {
  Ma -- rí -- a au -- tem con -- ser -- vá -- bat óm -- ni -- a ver -- ba hæc, _ cón -- fe -- rens in cor -- de su -- o.
}

antiphonLyricsPt = \lyricmode {
  Ma -- ri -- a, po -- rém, con -- ser -- va -- va to -- das es -- sas pa -- la -- vras, pon -- de -- ran -- do-as
  \MelismaOff
  no seu
  \MelismaOn
  co -- ra -- ção.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 003696 cf. Lc 2,19"
  arranger = "Adapt.: Lincoln Haas Hein, Laércio de Sousa"
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