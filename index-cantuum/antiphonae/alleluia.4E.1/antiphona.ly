\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/symbols.ily"

global = {
  \AntiphonSignature
  \key d \major
}

antiphonChant = \relative c' {
  \global
  \C fis g \CC a b \C a
  \divisioMinima
  a b a \CC g e g a fis fis
  \finalis
}

antiphonOrganRight = \relative c' {
  \global
  d2 cis2*3/2 d2
  e2*5/2 d4 cis
  \finalis
}

antiphonOrganLeft = \relative c' {
  \global
  \clef bass
  b2 a2*3/2~ a2
  b2*5/2~ b4 cis
  \finalis
}

antiphonOrganPedal = \relative c {
  \AntiphonSignature
  b2 fis'2*3/2~ fis2
  e2*5/2 b4 fis'
}

antiphonChords = \chordmode {
  b2:m fis2*3/2:m d2/fis
  e2*5/2:sus4 b4:m fis:m
}

antiphonLyrics = \lyricmode {
  A -- le -- lu -- ia, a -- le -- lu -- ia, __ a -- le -- lu -- ia.
}

\GregorianTranscriptionLayout

\header {
  arranger = "Harmonização: Theo Flury, Gennaro M. Becchimanzi"
}

chantPart = \new GregorianTranscriptionStaff <<
  \new GregorianTranscriptionVoice = "antiphon" {
    \antiphonChant
  }

  \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
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
    piece = "IV E"
  }

  \transpose d c <<
    \chordsPart
    \chantPart
    \organPart
  >>
}