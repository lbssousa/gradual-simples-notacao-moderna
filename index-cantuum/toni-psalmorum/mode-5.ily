\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioV = \relative c' { \C f a }
chantSicutInchoatioV = \relative c' { \C a }

chantTenorV = \relative c' { \T c }

chantFlexaV =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \MakeAccentusOnePostOne c a a #options
    }
  #})

chantMediatioV =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne d c c #options
    }
  #})

chantTerminatioPrimusV =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \MakeAccentusOnePostOne d b b #options
    }
  #})

chantTerminatioSecundusVa =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \MakeAccentusOnePostOne c a a #options
    }
  #})

gloriaPatriChantVa = {
  \time 1/4
  \key c \major
  \chantInchoatioV
  \chantTenorV
  \chantMediatioV #'()
  \divisioMaxima
  \chantSicutInchoatioV
  \chantTenorV
  \chantMediatioV #'()
  \divisioMaxima
  \chantTenorV
  \chantTerminatioPrimusV #'()
  \chantTerminatioSecundusVa #'((syneresis . total))
  \finalis
}

gloriaPatriVerseV = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria~ao
  \Tenor "Pai e ao Filho e ao Espírito" San -- to,
  Co -- \Tenor "mo era no princípio, agora e" sem -- pre,
  \Tenor "pelos séculos dos sécu" -- los, a -- mém! __
}