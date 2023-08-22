\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioIII = \relative c'' { g \CC a c }
chantGloriaInchoatioIII = \relative c'' { g \C a c }

chantTenorIII = \relative c'' { \T c }

chantFlexaIII = \relative c'' { \A c \C a }
chantFlexaCumEpenthesisIII = \relative c'' {
  \A c \eC a
}

chantMediatioPrimusIII = \relative c'' { \A d \C c }
chantMediatioPrimusCumEpenthesisIII = \relative c'' {
  \A d \eC c
}

chantMediatioSecundusIII = \relative c'' {
  \AA b a \C c
}
chantMediatioSecundusCumEpenthesisIII = \relative c'' {
  \Ap c \AA b a \C c
}


chantTerminatioIIIg = \relative c'' { \CC c b \CC a b \A a \C g }
chantTerminatioCumEpenthesisIIIg = \relative c'' {
  \CC c b \CC a b \A a \eC g
}

gloriaPatriChantIIIg = {
  \time 1/4
  \key c \major
  \chantInchoatioIII
  \chantTenorIII
  \chantMediatioPrimusIII
  \chantMediatioSecundusIII
  \divisioMaxima
  \chantGloriaInchoatioIII
  \chantMediatioPrimusIII
  \chantMediatioSecundusIII
  \divisioMaxima
  \chantTenorIII
  \chantTerminatioIIIg
  \finalis
}

gloriaPatriVerseIIIg = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria~ao
  \Tenor "Pai e ao Filho e ao Espírito" San -- to,
  Co -- \Tenor "mo era no princípio, agora e" sem -- pre,
  \Tenor "pelos séculos dos sé" -- cu -- los, a -- mém!
}