\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/spacing.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"
\include "../../modules/lilypond/layout.ily"

MySpacer = \Spacer 5

chantInchoatioVIII = \relative c'' { \C g a }
chantGloriaInchoatioVIII = \relative c'' { \C a }

chantTenorVIII = \relative c'' { \T c }

chantFlexaVIII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne c a a #options
    }
  #})

chantMediatioVIII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne d c c #options
    }
  #})

chantTerminatioVIIIc =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C a c
      \MakeAccentusOnePostOne d c c #options
    }
  #})

chantTerminatioVIIIG =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C b c
      \MakeAccentusOnePostOne a g g #options
    }
  #})

rightInchoatioVIII = \relative c'' {
  \tweak X-offset #1.2 g2
}

rightGloriaInchoatioVIII = \relative c'' {
  \tweak X-offset #1.2 g4
}

rightFlexaTenorVIII = \relative c'' {
  g2*3/2
}

rightFlexaVIII = \relative c'' {
  a2*3/2
}

rightTenorVIII = \relative c'' {
  g2*3/2
}

rightTenorTerminatioVIII = \relative c'' {
  a2*3/2
}

rightTerminatioAccentusVIIIG = \relative c' {
  d4
}

rightTerminatioPostAccentusVIIIG = \relative c' {
  d4
}

leftInchoatioVIII = \relative c' {
  c2
}

leftGloriaInchoatioVIII = \relative c' {
  c4
}

leftFlexaTenorVIII = \relative c' {
  c2*3/2
}

leftFlexaVIII = \relative c' {
  c2*4/2
}

leftTenorVIII = \relative c' {
  c2*3/2
}

leftTenorTerminatioVIII = \relative c' {
  c2*3/2
}

leftTerminatioAccentusVIIIG = \relative c' {
  c4
}

leftTerminatioPostAccentusVIIIG = \relative c' {
  b4
}

pedalInchoatioVIII = \relative c {
  e2
}

pedalGloriaInchoatioVIII = \relative c {
  e4
}

pedalFlexaTenorVIII = \relative c {
  e2*3/2
}

pedalFlexaVIII = \relative c {
  f2*4/2
}

pedalTenorVIII = \relative c {
  e2*3/2
}

pedalTenorTerminatioVIII = \relative c {
  f2*3/2
}

pedalTerminatioAccentusVIIIG = \relative c' {
  g4
}

pedalTerminatioPostAccentusVIIIG = \relative c' {
  g4
}

chordsInchoatioVIII = \chordmode {
  c2
}

chordsGloriaInchoatioVIII = \chordmode {
  c4
}

chordsFlexaTenorVIII = \chordmode {
  a2*3/2:m/c
}

chordsFlexaVIII = \chordmode {
  c2*3/2/d
}

chordsTenorVIII = \chordmode {
  c2*3/2
}

chordsTenorTerminatioVIII = \chordmode {
  f2*3/2
}

chordsTerminatioAccentusVIIIG = \chordmode {
  g4:sus4
}

chordsTerminatioPostAccentusVIIIG = \chordmode {
  g4
}

chantSegmentGloriaPatrVIII = {
  \time 1/4
  \key c \major
  \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'()
  \divisioMaxima
  \chantGloriaInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'()
  \divisioMaxima
  \chantTenorVIII
}

gloriaPatriChantVIIIc = {
  \chantSegmentGloriaPatrVIII
  \chantTerminatioVIIIc #'((syneresis . total))
  \finalis
}

gloriaPatriChantVIIIG = {
  \chantSegmentGloriaPatrVIII
  \chantTerminatioVIIIG #'((syneresis . total))
  \finalis
  \MySpacer
}

gloriaPatriOrganRightVIIIG = {
  \PsalmSignature
  \rightInchoatioVIII ~
  \rightTenorVIII ~
  \divisioMaxima
  \rightGloriaInchoatioVIII ~
  \rightTenorVIII
  \divisioMaxima
  \rightTenorTerminatioVIII
  \rightTerminatioAccentusVIIIG
  \rightTerminatioPostAccentusVIIIG
  \finalis
  \MySpacer
}

gloriaPatriOrganLeftVIIIG = {
  \key c \major
  \clef bass
  \leftInchoatioVIII ~
  \leftTenorVIII ~
  \divisioMaxima
  \leftGloriaInchoatioVIII ~
  \leftTenorVIII
  \divisioMaxima
  \leftTenorTerminatioVIII
  \leftTerminatioAccentusVIIIG
  \leftTerminatioPostAccentusVIIIG
  \finalis
  \MySpacer
}

gloriaPatriOrganPedalVIIIG = {
  \pedalInchoatioVIII ~
  \pedalTenorVIII ~
  \pedalGloriaInchoatioVIII ~
  \pedalTenorVIII
  \pedalTenorTerminatioVIII
  \pedalTerminatioAccentusVIIIG
  \pedalTerminatioPostAccentusVIIIG
}

gloriaPatriVerseVIII = \lyricmode {
  \set stanza = "Opcional:"
  \Inchoatio Gló -- ria~ao
  \Tenor "Pai e ao Filho e ao Espírito" \B San -- to,
  \I Co -- \Tenor "mo era no princípio, agora e" \B sem -- pre,
  \Tenor "pelos séculos dos sécu" -- \TerminatioVIII los, a -- mém! __ _
}

gloriaPatriChantPartVIIIG = \new GregorianTranscriptionStaff <<
  \new GregorianTranscriptionVoice = "gloria" {
    \gloriaPatriChantVIIIG
  }

  \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseVIII
>>

gloriaPatriOrganPartVIIIG = \new PianoStaff <<
  \new GregorianTranscriptionStaff = "right" <<
    %\new GregorianTranscriptionVoice { \voiceOne \gloriaPatriChantVIIIG }
    \new GregorianTranscriptionVoice { \voiceTwo \gloriaPatriOrganRightVIIIG }
  >>

  \new GregorianTranscriptionStaff = "left+pedal" <<
      \new GregorianTranscriptionVoice { \voiceOne \gloriaPatriOrganLeftVIIIG }
      \new GregorianTranscriptionVoice { \voiceTwo \gloriaPatriOrganPedalVIIIG }
    >>
>>

gloriaPatriChordsPartVIIIG = \new ChordNames {
  \chordsInchoatioVIII
  \chordsTenorVIII
  \chordsGloriaInchoatioVIII
  \chordsTenorVIII
  \chordsTenorTerminatioVIII
  \chordsTerminatioAccentusVIIIG
  \chordsTerminatioPostAccentusVIIIG
}