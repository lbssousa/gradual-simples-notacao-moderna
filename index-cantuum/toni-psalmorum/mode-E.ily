\version "2.24.1"

\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/symbols.ily"

chantTenorE = \relative c' { \T e }

chantMediatioE = \relative c' { \AA e f \C e }
chantMediatioCumEpenthesisE = \relative c' {
  \AA e f \eC e
}

chantTerminatioEI = \relative c' { \CC f d \AA e f g }
chantTerminatioCumEpenthesisEI = \relative c' {
  \CC f d
  \slurDotted
  e2*1/4( f4)
  \slurSolid
  g
}

chantInchoatioEV = \relative c'' {
  \CC a b
}
chantInchoatioCumEpenthesisEV = \relative c'' {
  \eCC a b
}
chantTenorEV = \relative c'' { \T a }
chantMediatioEV = \relative c'' {
  \AA g a \C g
}
chantMediatioCumEpenthesisEV = \relative c'' {
  \AA g a \eC g
}

chantTenorES = \relative c'' { \T g }

chantMediatioES = \relative c'' { \A a \C g }
chantMediatioCumEpenthesisES = \relative c'' {
  \A a \eC g
}

chantTerminatioES = \relative c'' { \CC g f \A e }
chantTerminatioCumEpenthesisES = \relative c'' {
  \CC g f \A e \Cp e \Cp e
}

chantAlleluiaES = \relative c' {
  \C f e \CC f g \CCC f f e d c \CL d e \C e
}

lyricsAlleluiaES = \lyricmode {
  \set stanza = \Responsorium
  A -- le -- lu -- ia, __ a -- le -- lu -- ia.
}