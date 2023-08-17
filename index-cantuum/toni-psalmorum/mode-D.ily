\version "2.24.1"

\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/symbols.ily"

chantTenorD = \relative c'' { \T a }

chantMediatioD = \relative c'' { \A b \C a }
chantMediatioCumEpenthesisD = \relative c'' {
  \A b \eC a
}

chantTerminatioDIe = \relative c'' { \C g a \A g \C e }
chantTerminatioCumEpenthesisDIe = \relative c'' {
  \C g a \A g \eC e
}