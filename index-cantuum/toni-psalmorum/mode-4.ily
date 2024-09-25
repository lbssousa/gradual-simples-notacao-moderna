\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/spacing.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"
\include "../../modules/lilypond/layout.ily"

chantInchoatioIV =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeInchoatioOnePostTwo b a b #options
    }
  #})

chantTenorIV = \relative c'' { \T b }

chantTenorTerminatioSecundusIV = \relative c'' { \C b }

chantFlexaIV =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne b a a #options
    }
  #})

chantMediatioIV =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C a \C b
      \MakeAccentusOnePostOne cis b b #options
    }
  #})

chantTerminatioIVE =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C a \C b \CC cis b
      \MakeAccentusTwoPreEpenthesisPostOne a a g fis #options
    }
  #})

rightInchoatioIV = \relative c' {
  fis2*3/2
}

rightTenorIV = \relative c' {
  fis2*3/2
}

rightFlexaIV = \relative c'' {
  e2*3/2
}

rightMediatioIV = \relative c' {
  fis2
}

rightTenorTerminatioPrimusIV = \relative c' {
  fis2*1/2
}

rightTenorTerminatioSecundusIV = \relative c' {
  e2*5/2
}

rightTerminatioAccentusIVE = \relative c' {
  e2*1/2
}

rightTerminatioPostAccentusIVE = \relative c' {
  %\tweak X-offset #1.2
  fis4
}

leftInchoatioIV = \relative c' {
  b2*3/2
}

leftTenorIV = \relative c' {
  b2*3/2
}

leftFlexaIV = \relative c' {
  fis2*3/2
}

leftMediatioIV = \relative c' {
  a2
}

leftTenorTerminatioPrimusIV = \relative c' {
  b2*1/2
}

leftTenorTerminatioSecundusIV = \relative c' {
  b2*5/2
}

leftTerminatioAccentusIVE = \relative c' {
  b2*1/2
}

leftTerminatioPostAccentusIVE = \relative c' {
  cis4
}

pedalInchoatioIV = \relative c {
  d2*3/2
}

pedalTenorIV = \relative c {
  d2*3/2
}

pedalFlexaIV = \relative c' {
  e2*3/2
}

pedalMediatioIV = \relative c' {
  \tweak X-offset #1.2
  a2
}

pedalTenorTerminatioPrimusIV = \relative c' {
  g2*1/2
}

pedalTenorTerminatioSecundusIV = \relative c' {
  g2*5/2
}

pedalTerminatioAccentusIVE = \relative c {
  fis2*1/2
}

pedalTerminatioPostAccentusIVE = \relative c {
  fis4
}

chordsInchoatioIV = \chordmode {
  b2*3/2:m/d
}

chordsTenorIV = \chordmode {
  b2*3/2:m/d
}

chordsFlexaIV = \chordmode {
  c2*3/2/d
}

chordsMediatioIV = \chordmode {
  fis2*1/2:m/a
}

chordsTenorTerminatioPrimusIV = \chordmode {
  b2*1/2:m/g
}

chordsTenorTerminatioSecundusIV = \chordmode {
  e2*5/2:m/g
}

chordsTerminatioAccentusIVE = \chordmode {
  a4:sus2/fis
}

chordsTerminatioPostAccentusIVE = \chordmode {
  fis4:m
}

gloriaPatriChantIVE = {
  \time 1/4
  \chantInchoatioIV #'((dieresis . total))
  \chantTenorIV
  \chantMediatioIV #'()
  \divisioMaxima
  \chantInchoatioIV #'()
  \chantTenorIV
  \chantMediatioIV #'()
  \divisioMaxima
  \chantTenorIV
  \chantTerminatioIVE #'((syneresis . total))
  \finalis
}

gloriaPatriVerseIVE = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria ao
  \Tenor "Pai e ao Filho e ao Espí" -- ri -- to San -- to,
  Co -- mo __ \Tenor "era no princípio, a" -- go -- ra~e sem -- pre,
  \Tenor "pelos séculos dos sé" -- cu -- los, a -- mém! __
}