\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/spacing.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"
\include "../../modules/lilypond/layout.ily"

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
  g2*2
}

rightTenorAltVIII = \relative c'' {
  a2*3/2
}

rightTerminatioAccentusVIIIG = \relative c' {
  d4*2
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
  c2*2
}

leftTenorAltVIII = \relative c' {
  c2*3/2
}

leftTerminatioAccentusVIIIG = \relative c' {
  c4*2
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
  e2*2
}

pedalTenorAltVIII = \relative c {
  f2*3/2
}

pedalTerminatioAccentusVIIIG = \relative c' {
  g4*2
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
  c2*2
}

chordsTenorAltVIII = \chordmode {
  f2*3/2
}

chordsTerminatioAccentusVIIIG = \chordmode {
  g4*2:sus4
}

chordsTerminatioPostAccentusVIIIG = \chordmode {
  g4
}

chantSegmentGloriaPatrVIIIIII = {
  \time 1/4
  \key c \major
  \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'((epenthesis . partial))
  \divisioMaxima
  \chantGloriaInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'((epenthesis . partial))
  \divisioMaxima
  \chantTenorVIII
}

gloriaPatriChantVIIIc = {
  \chantSegmentGloriaPatrVIIIIII
  \chantTerminatioVIIIc #'((epenthesis . partial)
                           (syneresis . total))
  \finalis
}

gloriaPatriChantVIIIG = {
  \chantSegmentGloriaPatrVIIIIII
  \chantTerminatioVIIIG #'((epenthesis . partial)
                           (syneresis . total))
  \finalis
}

gloriaPatriOrganRightVIIIG = {
  \PsalmSignature
  \rightInchoatioVIII ~
  \rightTenorVIII ~
  \rightGloriaInchoatioVIII ~
  \rightTenorVIII (
  \rightTenorAltVIII ) (
  \rightTerminatioAccentusVIIIG ) (
  \rightTerminatioPostAccentusVIIIG )
}

gloriaPatriOrganLeftVIIIG = {
  \key c \major
  \clef bass
  \leftInchoatioVIII ~
  \leftTenorVIII ~
  \divisioMaxima
  \leftGloriaInchoatioVIII ~
  \leftTenorVIII (
  \divisioMaxima
  \leftTenorAltVIII ) (
  \leftTerminatioAccentusVIIIG ) (
  \leftTerminatioPostAccentusVIIIG )
  \finalis
}

gloriaPatriOrganPedalVIIIG = {
  \pedalInchoatioVIII ~
  \pedalTenorVIII ~
  \pedalGloriaInchoatioVIII ~
  \pedalTenorVIII (
  \pedalTenorAltVIII ) (
  \pedalTerminatioAccentusVIIIG ) (
  \pedalTerminatioPostAccentusVIIIG )
}

gloriaPatriVerseVIII = \lyricmode {
  \set stanza = "Opcional:"
  \Inchoatio Gló -- ria~ao
  \Tenor "Pai e ao Filho e ao Espírito" \B San -- _ to,
  \I Co -- \Tenor "mo era no princípio, agora e" \B sem -- _ pre,
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
    \new GregorianTranscriptionVoice { \voiceOne \gloriaPatriChantVIIIG }
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
  \chordsTenorAltVIII
  \chordsTerminatioAccentusVIIIG
  \chordsTerminatioPostAccentusVIIIG
}