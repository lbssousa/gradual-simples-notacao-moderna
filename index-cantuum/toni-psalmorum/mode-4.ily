\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/spacing.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioIV =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeInchoatioOnePostTwo a g a #options
    }
  #})

chantTenorIV = \relative c'' { \T a }

chantTenorAltSecundusIV = \relative c'' { \C a }

chantFlexaIV =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne a g g #options
    }
  #})

chantMediatioIV =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g \C a
      \MakeAccentusOnePostOne b a a #options
    }
  #})

chantTerminatioIVE =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g \C a \CC b a
      \MakeAccentusTwoPreEpenthesisPostOne g g f e #options
    }
  #})

rightInchoatioIV = \relative c' {
  e2*3/2
}

rightTenorIV = \relative c' {
  e2*3/2
}

rightFlexaIV = \relative c'' {
  d2*3/2
}

rightMediatioIV = \relative c' {
  e2*3/2
}

rightTenorAltPrimusIV = \relative c' {
  e2*1/2
}

rightTenorAltSecundusIV = \relative c' {
  d2*5/2
}

rightTerminatioAccentusIVE = \relative c' {
  d2
}

rightTerminatioPostAccentusIVE = \relative c' {
  \tweak X-offset #1.2 e4
}

leftInchoatioIV = \relative c' {
  a2*3/2
}

leftTenorIV = \relative c' {
  a2*3/2
}

leftFlexaIV = \relative c' {
  e2*3/2
}

leftMediatioIV = \relative c' {
  g2*3/2
}

leftTenorAltPrimusIV = \relative c' {
  a2*1/2
}

leftTenorAltSecundusIV = \relative c' {
  a2*5/2
}

leftTerminatioAccentusIVE = \relative c' {
  a2
}

leftTerminatioPostAccentusIVE = \relative c' {
  b4
}

pedalInchoatioIV = \relative c {
  c2*3/2
}

pedalTenorIV = \relative c {
  c2*3/2
}

pedalFlexaIV = \relative c' {
  d2*3/2
}

pedalMediatioIV = \relative c' {
  \tweak X-offset #1.2 g2*3/2
}

pedalTenorAltPrimusIV = \relative c {
  f2*1/2
}

pedalTenorAltSecundusIV = \relative c {
  f2*5/2
}

pedalTerminatioAccentusIVE = \relative c {
  e2
}

pedalTerminatioPostAccentusIVE = \relative c {
  e4
}

chordsInchoatioIV = \chordmode {
  a2*3/2:m/c
}

chordsTenorIV = \chordmode {
  a2*3/2:m/c
}

chordsFlexaIV = \chordmode {
  c2*3/2/d
}

chordsMediatioIV = \chordmode {
  e2*3/2:m/g
}

chordsTenorAltPrimusIV = \chordmode {
  a2*1/2:m/f
}

chordsTenorAltSecundusIV = \chordmode {
  d2*5/2:m/f
}

chordsTerminatioAccentusIVE = \chordmode {
  g2:sus2/e
}

chordsTerminatioPostAccentusIVE = \chordmode {
  e4:m
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