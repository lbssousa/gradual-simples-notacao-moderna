\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/spacing.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"
\include "../../modules/lilypond/layout.ily"

chantInchoatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeInchoatioOnePostTwo d c d #options
    }
  #})

chantTenorIVA = \relative c'' { \T d }

chantFlexaIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne d c c #options
    }
  #})

chantMediatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C c \C d
      \MakeAccentusOnePostOne e d d #options
    }
  #})

chantTerminatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C c d e
      \MakeAccentusOnePostOne c a a #options
    }
  #})

chantTerminatioIVc =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne d c c #options
    }
  #})

rightInchoatioIVA = \relative c'' {
  a2*3/2~
}

rightTenorIVA = \relative c'' {
  a2*1/2~
}

rightFlexaIVA = \relative c'' {
  g2*3/2~
}

rightMediatioIVA = \relative c'' {
  a2*2~
}

rightTenorAltIVA = \relative c'' {
  bes2*1/2~
}

rightTerminatioIVc = \relative c'' {
  a2*1/2
}

leftInchoatioIVA = \relative c' {
  f2*3/2~
}

leftTenorIVA = \relative c' {
  f2*1/2~
}

leftFlexaIVA = \relative c' {
  e2*3/2~
}

leftMediatioIVA = \relative c' {
  f2*2~
}

leftTenorAltIVA = \relative c'' {
  g2*1/2~
}

leftTerminatioIVc = \relative c' {
  e2
}

pedalInchoatioIVA = \relative c' {
  d2*3/2~
}

pedalTenorIVA = \relative c' {
  d2*1/2~
}

pedalFlexaIVA = \relative c' {
  \tweak X-offset #1.2 d2*3/2~
}

pedalMediatioIVA = \relative c' {
  d2*2~
}

pedalTenorAltIVA = \relative c' {
  g2*1/2~
}

pedalTerminatioIVc = \relative c' {
  a2
}

chordsInchoatioIVA = \chordmode {
  d2*3/2:m~
}

chordsTenorIVA = \chordmode {
  d2*1/2:m~
}

chordsFlexaIVA = \chordmode {
  c2*3/2/d~
}

chordsMediatioIVA = \chordmode {
  d2*2:m~
}

chordsTenorAltIVA = \chordmode {
  g2*1/2:m~
}

chordsTerminatioIVc = \chordmode {
  a2:m
}

chantSegmentGloriaPatriIVA = {
  \time 1/4
  \chantInchoatioIVA #'((dieresis . total))
  \chantTenorIVA
  \chantMediatioIVA #'()
  \divisioMaxima
  \chantInchoatioIVA #'()
  \chantTenorIVA
  \chantMediatioIVA #'()
  \divisioMaxima
  \chantTenorIVA
}

gloriaPatriOrganRightIVc = {
  \PsalmSignature
  \rightInchoatioIVA
  \rightTenorIVA
  \rightMediatioIVA
  \rightInchoatioIVA
  \rightTenorIVA
  \rightMediatioIVA
  \rightTenorAltIVA
  \rightTerminatioIVc
}

gloriaPatriOrganLeftIVc = {
  \clef bass
  \leftInchoatioIVA
  \leftTenorIVA
  \leftMediatioIVA
  \divisioMaxima
  \leftInchoatioIVA
  \leftTenorIVA
  \leftMediatioIVA
  \divisioMaxima
  \leftTenorAltIVA
  \leftTerminatioIVc
  \finalis
}

gloriaPatriOrganPedalIVc = {
  \pedalInchoatioIVA
  \pedalTenorIVA
  \pedalMediatioIVA
  \pedalInchoatioIVA
  \pedalTenorIVA
  \pedalMediatioIVA
  \pedalTenorAltIVA
  \pedalTerminatioIVc
}

gloriaPatriChantIVA = {
  \chantSegmentGloriaPatriIVA
  \chantTerminatioIVA #'((syneresis . total))
  \finalis
}

gloriaPatriChantIVc = {
  \chantSegmentGloriaPatriIVA
  \chantTerminatioIVc #'((syneresis . total))
  \finalis
}

verseSegmentGloriaPatriIVA = \lyricmode {
  \set stanza = "Opcional:"
  \BeginInchoatio Gló -- ria ao \EndInchoatio
  \Tenor "Pai e ao Filho e ao Espí" -- \I ri -- \I to \B San -- to,
  \I Co -- \I mo __ \Tenor "era no princípio, a" --
  \BeginItalic
  go -- ra~e
  \EndItalic
  \B sem -- pre,
}

gloriaPatriVerseIVA = \lyricmode {
  \verseSegmentGloriaPatriIVA
  \Tenor "pelos séculos dos sé" -- \I cu -- \I los, \I a -- \B mém! __
}

gloriaPatriVerseIVc = \lyricmode {
  \verseSegmentGloriaPatriIVA
  \Tenor "pelos séculos dos séculos, a" -- \B mém! __
}

gloriaPatriChantPartIVc = \new GregorianTranscriptionStaff <<
  \new GregorianTranscriptionVoice = "gloria" {
    \gloriaPatriChantIVc
  }

  \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseIVc
>>

gloriaPatriOrganPartIVc = \new PianoStaff <<
  \new GregorianTranscriptionStaff = "right" <<
    \new GregorianTranscriptionVoice { \voiceOne \gloriaPatriChantIVc }
    \new GregorianTranscriptionVoice { \voiceTwo \gloriaPatriOrganRightIVc }
  >>

  \new GregorianTranscriptionStaff = "left+pedal" <<
      \new GregorianTranscriptionVoice { \voiceOne \gloriaPatriOrganLeftIVc }
      \new GregorianTranscriptionVoice { \voiceTwo \gloriaPatriOrganPedalIVc }
    >>
>>

gloriaPatriChordsPartIVc = \new ChordNames {
  \chordsInchoatioIVA
  \chordsTenorIVA
  \chordsMediatioIVA
  \chordsInchoatioIVA
  \chordsTenorIVA
  \chordsMediatioIVA
  \chordsTenorAltIVA
  \chordsTerminatioIVc
}