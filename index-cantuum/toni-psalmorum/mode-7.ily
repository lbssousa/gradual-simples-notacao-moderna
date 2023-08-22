\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioVII = \relative c'' { \CC c b \CC c d }
chantGloriaInchoatioVII = \relative c'' { \CC c b \C c d }

chantTenorVII = \relative c'' { \T d }

chantFlexaVII = \relative c'' { \A d^\markup { \italic flexa } \C c }
chantFlexaCumEpenthesisVII = \relative c'' { \A d^\markup { \italic flexa } \eC c }

chantMediatioPrimusVII = \relative c'' { \A f \C e }
chantMediatioPrimusCumEpenthesisVII = \relative c'' { \A f \eC e }
chantGloriaMediatioPrimusVII = \relative c'' { \A f \C e e }

chantMediatioSecundusVII = \relative c'' { \A d \C e }
chantMediatioSecundusCumEpenthesisVII = \relative c'' { \A d \eC e }

chantTerminatioPrimusVII = \relative c'' {
  \A e \C d
}
chantTerminatioPrimusCumEpenthesisVII = \relative c'' {
  \A e \eC d
}
chantGloriaTerminatioPrimusVII = \relative c'' {
  \A e \C d d
}

chantTerminatioSecundusVIIa = \relative c'' {
  \A c \CC b a
}
chantTerminatioSecundusCumEpenthesisVIIa = \relative c'' {
  \A c \Cp c \CC b a
}

gloriaPatriChantVIIa = {
  \time 1/4
  \key c \major
  \chantGloriaInchoatioVII
  \chantTenorVII
  \chantGloriaMediatioPrimusVII
  \chantMediatioSecundusVII
  \divisioMaxima
  \chantInchoatioVII
  \chantTenorVII
  \chantMediatioPrimusVII
  \chantMediatioSecundusVII
  \divisioMaxima
  \chantTenorVII
  \chantGloriaTerminatioPrimusVII
  \chantTerminatioSecundusVIIa
  \finalis
}

gloriaPatriVerseVII = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria ao
  \Tenor "Pai e ao Filho e ao Es" -- pí -- ri -- to San -- to,
  Co -- mo __ \Tenor "era no princípio, a" go -- ra~e sem -- pre,
  \Tenor "pelos séculos dos" sé -- cu -- los, a -- mém!
}