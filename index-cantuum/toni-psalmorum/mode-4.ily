\version "2.24.1"

\include "../../modules/lilypond/neums.ily"

chantInchoatioIV = \relative c'' { \C a \CC g a }

chantTenorIV = \relative c'' { \T a }

chantFlexaIV = \relative c'' { \A a \C g }
chantFlexaCumEpenthesisIV = \relative c'' { \A a \eC g }

chantMediatioIV = \relative c'' { \C g a \A b \C a }
chantMediatioCumEpenthesisIV = \relative c'' {
  \C g a \A b \eC a
}

chantTerminatioCumEpenthesisIVE = \relative c'' {
  \C g a \CC b a \eAA g f \C e
}
chantTerminatioIVE = \relative c'' {
  \C g a \CC b a \AA g f \C e
}