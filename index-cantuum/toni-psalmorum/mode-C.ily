\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/symbols.ily"

chantTenorC = \relative c' { \T f }

chantMediatioC = \relative c'' { \A g \C f }
chantMediatioCumEpenthesisC = \relative c'' {
  \A g \eC f
}

chantTerminatioCI = \relative c' { \C e \A g \C a }
chantTerminatioCumEpenthesisCI = \relative c' {
  \C e \A g \Cp g \C a
}

chantAlleluiaCI = \relative c'' {
  \C a \CC a g \C g f
  \divisioMinima
  d \CC f g \CL g f \C f
}
lyricsAlleluiaCI = \lyricmode {
  \set stanza = \Responsorium
  A -- le -- lu -- ia, a -- le -- lu -- ia.
}

chantTerminatioCII = \relative c'' { \AA g a \CC a g }
chantTerminatioCumEpenthesisCII = \relative c'' { \eAA g a \CC a g }

chantInchoatioCIII = \relative c'' { \Cp a \AA a bes }
chantTenorPrimusCIII = \relative c'' { \T a }
chantMediatioCIII = \relative c'' { \AA g a \C g }
chantMediatioCumEpenthesisCIII = \relative c'' {
  \AA g a \eC g
}
chantTenorSecundusCIII = \relative c'' { \T g }
chantTerminatioCIIIa = \relative c' { \C f \AA g a \C a }
chantTerminatioCumEpenthesisCIIIa = \relative c' {
  \C f \eAA g a \C a
}
chantTerminatioCIIIg = \relative c' { \C f \AA g a \CC a g }
chantTerminatioCumEpenthesisCIIIg = \relative c' {
  \C f \eAA g a \CC a g
}

chantTenorCIV = \relative c' { \T f }
chantAlleluiaPrimusCIV = \relative c' {
  \C f f d c \finalis
}
chantAlleluiaSecundusCIV = \relative c'' {
  \C a \CC a g \CC g f \C f \finalis
}
lyricsAlleluiaCIV = \lyricmode {
  \set stanza = \Responsorium
  A -- le -- lu -- ia.
}