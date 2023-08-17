\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioVI = \relative c' { \C f \CC g a }
chantGloriaInchoatioVI = \relative c' { \C f g }

chantTenorVI = \relative c'' { \T a }

chantFlexaVI = \relative c'' { \A a \C g }
chantFlexaCumEpenthesisVI = \relative c'' { \A a \eC g }

chantMediatioVI = \relative c'' { \C g \A a \C f }
chantMediatioCumEpenthesisVI = \relative c'' { \C g \A a \eC f }

chantTerminatioVIF = \relative c' {
  \C f \CC g a \A g \C f
}
chantTerminatioCumEpenthesisVIF = \relative c' {
  \C f \CC g a \A g \eC f
}

gloriaPatriChantVIF = {
  \time 1/4
  \chantGloriaInchoatioVI
  \chantTenorVI
  \chantMediatioVI
  \divisioMaxima
  \chantInchoatioVI
  \chantTenorVI
  \chantMediatioVI
  \divisioMaxima
  \chantTenorVI
  \chantTerminatioVIF
  \finalis
}

gloriaPatriVerseVIF = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria
  \Tenor "ao Pai e ao Filho e ao Espíri" -- to San -- to,
  Co -- mo __ \Tenor "era no princípio, ago" -- ra~e sem -- pre,
  \Tenor "pelos séculos dos sé" -- cu -- los, __ a -- mém!
}