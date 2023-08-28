\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/symbols.ily"

chantTenorC = \relative c' { \T f }

chantMediatioC =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne g f f #options
    }
  #})

chantTerminatioCOne =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \C e
      \MakeAccentusOnePostOne g g a #options
    }
  #})

chantAlleluiaCOne = \relative c'' {
  \C a \CC a g \C g f
  \divisioMinima
  d \CC f g \CL g f \C f
}
lyricsAlleluiaCOne = \lyricmode {
  \set stanza = \Responsorium
  A -- le -- lu -- ia, a -- le -- lu -- ia.
}

chantTerminatioCTwoa =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusTwoPreEpenthesisPostOne g g a a #options
    }
  #})

chantTerminatioCTwog =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusTwoPreEpenthesisPostTwo g g a a g #options
    }
  #})

chantInchoatioCThree =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeInchoatioTwoPreEpenthesis a a bes #options
    }
  #})

chantTenorPrimusCThree = \relative c'' { \T a }
chantMediatioCThree =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusTwoPostOne g a g g #options
    }
  #})

chantTenorSecundusCThree = \relative c'' { \T g }

chantTerminatioCThreea =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \C f
      \MakeAccentusTwoPreEpenthesisPostOne g g a a #options
    }
  #})

chantTerminatioCThreeg =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \C f
      \MakeAccentusTwoPreEpenthesisPostTwo g g a a g #options
    }
  #})

chantAlleluiaPrimusCFour = \relative c' {
  \C f f d c \finalis
}
chantAlleluiaSecundusCFour = \relative c'' {
  \C a \CC a g \CC g f \C f \finalis
}
lyricsAlleluiaCFour = \lyricmode {
  \set stanza = \Responsorium
  A -- le -- lu -- ia.
}

chantTenorCStar = \relative c' { \T c }

chantMediatioCStar =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \C b a
      \MakeAccentusOnePostOne c c c #options
    }
  #})

chantTerminatioCStar =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \MakeAccentusOnePostOne c a a #options
    }
  #})