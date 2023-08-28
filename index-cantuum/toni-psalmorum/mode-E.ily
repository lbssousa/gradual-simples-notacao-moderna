\version "2.24.1"

\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/symbols.ily"

chantTenorEOne = \relative c' { \T e }

chantMediatioEOne =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \MakeAccentusTwoPostOne e f e e #options
    }
  #})

chantTerminatioEOne =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \CC f d
      \MakeAccentusTwoPostOneAlt e f g #options
    }
  #})

chantTerminatioETwod =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \MakeAccentusOnePostOne e d d #options
    }
  #})
chantTerminatioETwoe = \relative c' {
  \C f d f e
}

chantTenorEThree = \relative c'' { \T a }

chantMediatioEThree =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusTwoPostOne a g g #options
    }
  #})

chantTerminatioEThree =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusTwoPostOne g f f #options
    }
  #})

chantMediatioEFour =
#(define-music-function
  (options)
  (alist?)
  #{
    \chantTerminatioEThree #options
  #})

chantTerminatioEFour =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusTwoPostOne g a a #options
    }
  #})

chantInchoatioEFive =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeInchoatioTwoPreEpenthesis a a b #options
    }
  #})

chantTenorEFive = \relative c'' { \T a }

chantMediatioEFive =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusTwoPostOne g a g g #options
    }
  #})

chantTenorEStar = \relative c'' { \T g }

chantMediatioEStar =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne a g g #options
    }
  #})

chantTerminatioEStar =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \CC g f
      \MakeAccentusOnePostOne e e e #options
    }
  #})

chantAlleluiaEStar = \relative c' {
  \C f e \CC f g \CCC f f e d c \CL d e \C e
}

lyricsAlleluiaEStar = \lyricmode {
  \set stanza = \Responsorium
  A -- le -- lu -- ia, __ a -- le -- lu -- ia.
}