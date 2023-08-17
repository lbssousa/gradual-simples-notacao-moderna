\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioVIII = \relative c'' { \C g a }
chantGloriaInchoatioVIII = \relative c'' { \C a }

chantTenorVIII = \relative c'' { \T c }

chantFlexaVIII = \relative c'' { \A c \C a }
chantFlexaCumEpenthesisVIII = \relative c'' {
  \A c \eC a
}

chantMediatioVIII = \relative c'' { \A d \C c }
chantMediatioCumEpenthesisVIII = \relative c'' {
  \A d \eC c
}


chantTerminatioVIIIG = \relative c'' { \C b c \A a \C g }
chantTerminatioCumEpenthesisVIIIG = \relative c'' {
  \C b c \A a \eC g
}

gloriaPatriChantVIIIG = {
  \time 1/4
  \key c \major
  \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII
  \divisioMaxima
  \chantGloriaInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG
  \finalis
}

gloriaPatriVerseVIIIG = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria~ao
  \Tenor "Pai e ao Filho e ao Espírito" San -- to,
  Co -- \Tenor "mo era no princípio, agora e" sem -- pre,
  \Tenor "pelos séculos dos sé" -- cu -- los, a -- mém!
}