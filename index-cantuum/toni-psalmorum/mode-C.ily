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