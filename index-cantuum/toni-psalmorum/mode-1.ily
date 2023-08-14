\version "2.24.1"

\include "../../modules/lilypond/neums.ily"

chantInchoatioI = \relative c' { \C f \CC g a }

chantTenorI = \relative c'' { \T a }

chantFlexaI = \relative c'' { \A a \C g }
chantFlexaCumEpenthesisI = \relative c'' { \A a \eC g }

chantMediatioI = \relative c'' { \A bes \C a \A g \C a }
chantMediatioCumEpenthesisI = \relative c'' { \A bes \eC a \A g \eC a }

chantTerminatioIf = \relative c'' {
  \C g f \AA g a \CC g f
}
chantTerminatioCumEpenthesisIf = \relative c'' {
  \C g f \AA g a \eCC g f
}