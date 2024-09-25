\version "2.24.1"

\include "gregorian.ly"
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

rightTenorEOne = \relative c' { c2*3/2 }
rightTenorTerminatioEOne = \relative c' { c2*2 }
rightTerminatioEOne = \relative c' { d4 }

leftTenorEOne = \relative c' { g2*3/2 }
leftTenorTerminatioEOne = \relative c' { a2*2 }
leftTerminatioEOne = \relative c' { b4 }

pedalTenorEOne = \relative c { c2*3/2 }
pedalTenorTerminatioEOne = \relative c { a2*2 }
pedalTerminatioEOne = \relative c { g4 }

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

rightTenorEStar = \relative c' { e2*3/2 }
rightTenorTerminatioPrimusEStar = \relative c' { d2*1/2 }
rightTenorTerminatioSecundusEStar = \relative c' { d2*3/2 }
rightTerminatioEStar = \relative c' { c2*3/2 }

leftTenorEStar = \relative c' { c2*3/2 }
leftTenorTerminatioPrimusEStar = \relative c' { g2*1/2 }
leftTenorTerminatioSecundusEStar = \relative c' { a2*3/2 }
leftTerminatioEStar = \relative c' { a2*3/2 }

pedalTenorEStar = \relative c { c2*3/2 }
pedalTenorTerminatioPrimusEStar = \relative c { b2*1/2 }
pedalTenorTerminatioSecundusEStar = \relative c { d2*3/2 }
pedalTerminatioEStar = \relative c { a2*3/2 }

chantAlleluiaETwod = \relative c' {
  \C e e e e \divisioMinima e e \CCC d g f \C e
}

lyricsAlleluiaETwod = \lyricmode {
  \set stanza = \Responsorium
  A -- le -- lu -- ia, a -- le -- lu -- ia.
}

chantAlleluiaEStar = \relative c' {
  \C f \C e \CC f g \CCC f f e \C d \C c \CL d e \C e
  \finalis
}

rightAlleluiaEStar = \relative c' {
  d2 c2*5/2 a2~ a2 e'4
  \finalis
}

leftAlleluiaEStar = \relative c' {
  a2~ a2*5/2~ a2~ a2 b4
  \finalis
}

pedalAlleluiaEStar = \relative c {
  d2~ d2*5/2 e2 f2 e4
}

chordsAlleluiaEStar = \chordmode {
  d2:m d2*5/2:m7 d2:m/e d2:m/f c4
}

lyricsAlleluiaEStar = \lyricmode {
  \set stanza = \Responsorium
  A -- le -- lu -- ia, __ a -- le -- lu -- ia.
}