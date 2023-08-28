\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
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
      \C g a
      \MakeAccentusOnePostOne b a a #options
    }
  #})

chantTerminatioIVE =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g a \CC b a
      \MakeAccentusTwoPreEpenthesisPostOne g g f e #options
    }
  #})

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
  \Tenor "pelos séculos dos sécu" -- los, a -- mém! __
}