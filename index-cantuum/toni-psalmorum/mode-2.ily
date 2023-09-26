\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/spacing.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioII = \relative c' { \C c d }
chantSicutInchoatioII = \relative c' { \C d }

chantTenorII = \relative c' { \T f }

chantFlexaII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \MakeAccentusOnePostOne f d d #options
    }
  #})

chantMediatioII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne g f f #options
    }
  #})

chantTerminatioIID =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \C e
      \MakeAccentusOnePostOne c d d #options
    }
  #})

gloriaPatriChantIID = {
  \time 1/4
  \key c \major
  \chantInchoatioII
  \chantTenorII
  \chantMediatioII #'()
  \divisioMaxima
  \chantSicutInchoatioII
  \chantTenorII

  \chantMediatioII #'()
  \divisioMaxima
  \chantTenorII
  \chantTerminatioIID #'((syneresis . total))
  \finalis

}

gloriaPatriVerseIID = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria~ao
  \Tenor "Pai e ao Filho e ao Espírito" San -- to,
  Co -- \Tenor "mo era no princípio, agora e" sem -- pre,
  \Tenor "pelos séculos dos séculos," a -- mém! __
}