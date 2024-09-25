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
  \C g
  \C_C f a
  \C c \EE b g
  \divisioMinima
  \EE b c \EE a g \C a g f
  \divisioMaior
  g f a c \EE b g
  \divisioMinima
  \EE b c \C a
  \C_L b a
  \C g g
  \finalis
}

antiphonOrganRight = \relative c' {
  \AntiphonSignature
  \key c \major
  c2*3/2 e2*3/2 e2*2 d2*3/2
  \divisioMaxima
  d e~ e2~ e4 d2~ d4~ d
  \finalis
}

antiphonOrganLeft = \relative c' {
  \AntiphonSignature
  \clef bass
  \key c \major
  c2*3/2
  \tweak X-offset #1.2
  a2*3/2~ a2*2~ a2*3/2~
  \divisioMaxima
  a~ a~ a2 c4~ c2~ c4 b
  \finalis
}

antiphonOrganPedal = \relative c' {
  \AntiphonSignature
  a2*3/2~ a2*3/2
  \tweak X-offset #1.2
  g2*2 f2*3/2
  d
  \tweak X-offset #1.2
  a'
  \tweak X-offset #1.2
  g2~ g4 f2 g4~ g
}

antiphonChords = \chordmode {
  c2*3/2/a a2*3/2:m a2*2:m/g d2*3/2:m/f
  d:m a:m a2:m/g a4:m/g c2:sus2/f g4:sus4 g
}

antiphonLyrics = \lyricmode {
  Be --
  \MelismaOff
  ni -- gni --
  \MelismaOn
  tá -- tem __ fe -- cit __ Dó -- mi -- nus, et ter -- ra no -- stra __ de -- dit
  \MelismaOff
  fru -- ctum
  \MelismaOn
  su -- um.
}

antiphonLyricsPt = \lyricmode {
  Com bon -- da -- de __ a -- giu __ o Se -- nhor, e~a nos -- sa ter -- ra __ deu __ o seu __ fru -- to.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID a01124 cf. Sl 84(85),13"
  arranger = \markup {
    \center-column {
      "Adaptação: Lincoln Haas Hein, Laércio de Sousa"
      \line { "Harmonização: Theo Flury, Gennaro M. Becchimanzi" }
    }
  }
}

chantPart = \new GregorianTranscriptionStaff <<
  \new GregorianTranscriptionVoice = "antiphon" {
    \antiphonChant
  }

  \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
  \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
>>

organPart = \new PianoStaff <<
  \new GregorianTranscriptionStaff = "right" <<
    %\new GregorianTranscriptionVoice { \voiceOne \antiphonChant }
    \new GregorianTranscriptionVoice { \voiceTwo \antiphonOrganRight }
  >>

  \new GregorianTranscriptionStaff = "left+pedal" <<
    \new GregorianTranscriptionVoice { \voiceOne \antiphonOrganLeft }
    \new GregorianTranscriptionVoice { \voiceTwo \antiphonOrganPedal }
  >>
>>

chordsPart = \new ChordNames {
  \antiphonChords
}

\score {
  \header {
    piece = "VIII G"
  }

  \transpose c bes,
  <<
    \chordsPart
    \chantPart
    \organPart
  >>
}