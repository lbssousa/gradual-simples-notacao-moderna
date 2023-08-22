\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioII = \relative c' { \C c d }
chantGloriaInchoatioII = \relative c' { \C d }

chantTenorII = \relative c' { \T f }

chantFlexaII = \relative c' { \A f \C d }
chantFlexaCumEpenthesisII = \relative c' {
  \A f \eC d
}

chantMediatioII = \relative c'' { \A g \C f }
chantMediatioCumEpenthesisII = \relative c'' {
  \A g \eC f
}


chantTerminatioIID = \relative c' { \C e \A c \C d }
chantTerminatioCumEpenthesisIID = \relative c' {
  \C e \A c \eC d
}

gloriaPatriChantIID = {
  \time 1/4
  \key c \major
  \chantInchoatioII
  \chantTenorII
  \chantMediatioII
  \divisioMaxima \break
  \chantGloriaInchoatioII
  \chantTenorII
  \chantMediatioII
  \divisioMaxima
  \chantTenorII
  \chantTerminatioIID
  \finalis
}

gloriaPatriVerseIID = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria~ao
  \Tenor "Pai e ao Filho e ao Espírito" San -- to,
  Co -- \Tenor "mo era no princípio, agora e" sem -- pre,
  \Tenor "pelos séculos dos sécu" -- los, a -- mém!
}