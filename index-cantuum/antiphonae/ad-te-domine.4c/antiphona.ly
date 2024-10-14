\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \key c \major
  e4 g g8( \Loff a) \parenthesize a4 a8
  \once \hideNotes a
  \divisioMinima
  a4 a g a8( \Loff b) g4 a8( \Loff \tweak font-size -4 b) a4 a
  \divisioMaior
  \once \slurDashed e( a) g fis e d \once \slurDashed \slurDown e^-( d^-)
  \divisioMinima
  c d e f g f e e
  \finalis
}

antiphonOrganRight = \relative c' {
  \AntiphonSignature
  b2 d2 e2*2
  d2*3/2 d4 d
  \divisioMaxima
  %\tweak X-offset #1.2
  e2*3/2 d2*3/2 c2
  %\tweak X-offset #1.2
  c2*2 d2 c4 b4
  \finalis
}

antiphonOrganLeft = \relative c' {
  \AntiphonSignature
  \clef bass
  \key c \major
  g2~ g2~ g2*2~
  g2*3/2 g4 fis
  \divisioMaxima
  e2*3/2 a2*3/2 g2
  a2*2~ a2 e4~ e
  \finalis
}

antiphonOrganPedal = \relative c {
  \AntiphonSignature
  e2 b2 c2*2 b2*3/2 d4~ d
  c2*3/2~ c2*3/2~ c2
  a2*2 d2
  \tweak X-offset #1.2 e4~
  \tweak X-offset #1.2 e
}

antiphonChords = \chordmode {
  e2:m g2/b c2*2:6 g2*3/2:9/b d4:sus4 d4
  c2*3/2:6 d2*3/2/c c4 c:9
  a2*2:m d2:sus4 c4/e e4:m
}

antiphonLyrics = \lyricmode {
  Ad te, Dó -- mi -- ne, \MediatioMark le -- vá -- vi á -- ni -- mam me -- am:
  \MelismaOff ve -- ni, \MelismaOn et é -- ri -- pe me, __ Dó -- mi -- ne, ad te con -- fú -- gi.
}

antiphonLyricsPt = \lyricmode {
  A vós, Se -- _ nhor, \MediatioMark e -- le -- vo a __ mi -- nha __ al -- ma.
  Vin -- de e li -- ber -- \MelismaOff tai- -- me, \MelismaOn Se -- nhor, pois em vós me~a -- bri -- go.
}

\GregorianTranscriptionLayout

chantPart = \new GregorianTranscriptionStaff \with {
  instrumentName = \markup { \bold \caps "iv c" }
}
<<
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
  \set chordChanges = ##t
  \antiphonChords
}

\score {
  <<
    \chordsPart
    \chantPart
    \organPart
  >>
}