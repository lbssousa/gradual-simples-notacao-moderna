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
  \C g g \CC f d \C e f \CC g a \C_C a g
  \divisioMinima
  g g a \C_C g f \C g a g f f
  \divisioMaior
  \CC f a \CC c d \C c c \C_C d c \CC b c \Cp a \CC a g
  \divisioMinima
  \Cp g \C a \C_C g f \CC g a \C a g g \Cp g
  \finalis

}

antiphonLyrics = \lyricmode {
  Di -- le -- xí -- sti iu -- stí --
  \MelismaOff ti -- am, \MelismaOn
  et o -- dí -- sti __ in -- i -- qui -- tá -- tem:
  prop -- tér -- e -- a
  \MelismaOff un -- xit \MelismaOn
  te __ De -- us __
  "" ó -- le -- o læ -- tí -- ti -- æ.
}

antiphonLyricsPt = \lyricmode {
  \AltLyrics
  A -- mas -- tes __ a jus -- ti -- ça __
  e~o -- di -- as --
  \MelismaOff tes a \MelismaOn
  i -- ni -- qui -- da -- de:
  por __ is -- so, un -- giu -- -vos __ "" Deus __
  com o~ó --
  \MelismaOff leo da \MelismaOn a -- le -- gri -- a.
}

\GregorianTranscriptionLayout

\header {
  meter = "cf. Sl 45(44),8"
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
    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}