\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioI =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \MakeInchoatioOnePostTwo f g a #options
    }
  #})

chantSicutInchoatioI = \relative c'' {
  \MakeInchoatioTwoPostTwo g f g a #'()
}

chantTenorI = \relative c'' { \T a }

chantFlexaI =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne a g g #options
    }
  #})

chantMediatioPrimusI =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne bes a a #options
    }
  #})

chantMediatioSecundusI =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne g a a #options
    }
  #})

chantTerminatioIa =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g f
      \MakeAccentusOnePostOne g a a #options
    }
  #})

chantTerminatioIaTwo =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g f
      \MakeAccentusOnePostTwo g g g a #options
    }
  #})

chantTerminatioIg =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g f
      \MakeAccentusTwoPostOne g a g g #options
    }
  #})

chantTerminatioIgTwo =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g f
      \MakeAccentusOnePostThree g g g a g #options
    }
  #})

chantTerminatioIgFour =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g f
      \MakeAccentusOnePostOne a g g #options
    }
  #})

chantTerminatioIf =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g f
      \MakeAccentusTwoPostTwo g a g g f #options
    }
  #})

chantTerminatioIDTwo =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g f
      \MakeAccentusTwoPreEpenthesisPostOne g g f d #options
    }
  #})

chantSegmentGloriaPatriI = {
  \time 1/4
  \key d \minor
  \chantInchoatioI #'((dieresis . total))
  \chantTenorI
  \chantMediatioPrimusI #'((epenthesis . total))
  \chantMediatioSecundusI #'()
  \divisioMaxima
  \chantSicutInchoatioI
  \chantTenorI
  \chantMediatioPrimusI #'()
  \chantMediatioSecundusI #'()
  \divisioMaxima
  \chantTenorI
}

gloriaPatriChantIa = {
  \chantSegmentGloriaPatriI
  \chantTerminatioIa #'((syneresis . total))
  \finalis
}

gloriaPatriChantIaTwo = {
  \chantSegmentGloriaPatriI
  \chantTerminatioIaTwo #'((syneresis . total))
  \finalis
}

gloriaPatriChantIg = {
  \chantSegmentGloriaPatriI
  \chantTerminatioIg #'((syneresis . total))
  \finalis
}

gloriaPatriChantIgTwo = {
  \chantSegmentGloriaPatriI
  \chantTerminatioIgTwo #'((syneresis . total))
  \finalis
}

gloriaPatriChantIgFour = {
  \chantSegmentGloriaPatriI
  \chantTerminatioIgFour #'((syneresis . total))
  \finalis
}

gloriaPatriChantIf = {
  \chantSegmentGloriaPatriI
  \chantTerminatioIf #'((syneresis . total))
  \finalis
}

gloriaPatriChantIDTwo = {
  \chantSegmentGloriaPatriI
  \chantTerminatioIDTwo #'((syneresis . total))
  \finalis
}

gloriaPatriVerseI = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria ao
  \Tenor "Pai e ao Filho e ao Es" -- pí -- ri -- to San -- to,
  Co -- mo \Tenor "era no princípio, a" -- go -- ra~e sem -- pre,
  \Tenor "pelos séculos dos sécu" -- los, a -- mém!
}