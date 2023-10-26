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
  \C g \E g \C a \O a \E g \O g
  \divisioMinima
  \C f g a c b a c b
  \divisioMinima
  \Ldim a \C g g a f a g g
  \finalis
}

antiphonLyrics = \lyricmode {
  Su -- scé -- pi -- mus, De -- us
  mi -- se -- ri -- cór -- di -- am tu -- am,
  in me -- di -- o tem -- pli su -- i.
}

antiphonLyricsPt = \lyricmode {
  Ó Deus, re -- cor -- da -- mos
  a vos -- sa mi -- se -- ri -- cór -- dia
  em mei -- o ao vos -- so Tem -- plo.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 005084 cf. Sl 48(47),10"
  arranger = "Adapt.: Lincoln Haas Hein"
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