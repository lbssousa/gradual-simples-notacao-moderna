\version "2.24.1"

\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/symbols.ily"

chantTenorD = \relative c'' { \T a }

chantMediatioD =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne b a a #options
    }
  #})

chantTerminatioDOneb =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne g g b #options
    }
  #})

chantTerminatioDOneg =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne a g g #options
    }
  #})

chantTerminatioDOnee =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g a
      \MakeAccentusOnePostOne g g e #options
    }
  #})

chantTenorPrimusDStar = \relative c'' { \T c }

chantMediatioPrimusDStar =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne d c c #options
    }
  #})

chantTerminatioPrimusDStar =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusTwoPostTwo c b a g #options
    }
  #})

chantTenorSecundusDStar = \relative c'' { \T g }

chantMediatioSecundusDStar =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne a g g #options
    }
  #})

chantTerminatioSecundusDStar =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \CC a c
      \MakeAccentusTwoPostTwo c b a g #options
    }
  #})