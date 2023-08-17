\version "2.24.1"

\include "../../modules/lilypond/neums.ily"

chantInchoatioI = \relative c' { \C f \CC g a }

chantTenorI = \relative c'' { \T a }

chantFlexaI = \relative c'' { \A a \C g }
chantFlexaCumEpenthesisI = \relative c'' { \A a \eC g }

chantMediatioPrimusI = \relative c'' { \A bes \C a }
chantMediatioPrimusCumEpenthesisI = \relative c'' { \A bes \eC a }

chantMediatioSecundusI = \relative c'' { \A g \C a }
chantMediatioSecundusCumEpenthesisI = \relative c'' { \A g \eC a }

chantTerminatioIf = \relative c'' {
  \C g f \AA g a \CC g f
}
chantTerminatioCumEpenthesisIf = \relative c'' {
  \C g f \AA g a \eCC g f
}

chantTerminatioIg = \relative c'' {
  \C g f \AA g a \C g
}
chantTerminatioCumEpenthesisIg = \relative c'' {
  \C g f \AA g a \eC g
}