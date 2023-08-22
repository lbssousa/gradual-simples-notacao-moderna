\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioIVA = \relative c'' {
  \C d \CC c d
}
chantAltInchoatioIVA = \relative c'' {
  \C d
  \once \slurDashed
  \CC c d
}
chantGloriaInchoatioIVA = \relative c'' {
  \C d c d
}
chantTenorIVA = \relative c'' { \T d }

chantFlexaIVA = \relative c'' {
  \A d^\markup { \italic flexa } \C c
}
chantFlexaCumEpenthesisIVA = \relative c'' {
  \A d^\markup { \italic flexa } \eC c
}

chantMediatioIVA = \relative c'' {
  \C c d \A e d
}
chantMediatioCumEpenthesisIVA = \relative c'' {
  \C c d \A e \eC d
}

chantTerminatioIVA = \relative c'' {
  \C c d e \A c a
}
chantTerminatioCumEpenthesisIVA = \relative c'' {
  \C c d e \A c \eC a
}

chantTerminatioIVc = \relative c'' {
  \A d \C c
}
chantTerminatioCumEpenthesisIVc = \relative c'' {
  \A d \eC c
}

gloriaPatriChantIVA = {
  \time 1/4
  \chantGloriaInchoatioIVA
  \chantTenorIVA
  \chantMediatioIVA
  \divisioMaxima
  \chantInchoatioIVA
  \chantTenorIVA
  \chantMediatioIVA
  \divisioMaxima
  \chantTenorIVA
  \chantTerminatioIVA
  \finalis
}

gloriaPatriChantIVc = {
  \time 1/4
  \chantGloriaInchoatioIVA
  \chantTenorIVA
  \chantMediatioIVA
  \divisioMaxima
  \chantInchoatioIVA
  \chantTenorIVA
  \chantMediatioIVA
  \divisioMaxima
  \chantTenorIVA
  \chantTerminatioIVc
  \finalis
}

gloriaPatriVerseIVA = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria ao
  \Tenor "Pai e ao Filho e ao Espí" -- ri -- to San -- to,
  Co -- mo __ \Tenor "era no princípio, a" -- go -- ra~e sem -- pre,
  \Tenor "pelos séculos dos" sé -- cu -- los, a -- mém!
}

gloriaPatriVerseIVc = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria ao
  \Tenor "Pai e ao Filho e ao Espí" -- ri -- to San -- to,
  Co -- mo __ \Tenor "era no princípio, a" -- go -- ra~e sem -- pre,
  \Tenor "pelos séculos dos séculos," a -- mém!
}