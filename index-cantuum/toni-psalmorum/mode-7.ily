\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioVII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeInchoatioTwoPostTwo c b c d #options
    }
  #})

chantTenorVII = \relative c'' { \T d }

chantFlexaVII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne d c c #options
    }
  #})

chantMediatioPrimusVII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne f e e #options
    }
  #})

chantMediatioSecundusVII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne d e e #options
    }
  #})

chantTerminatioPrimusVII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne e d d #options
    }
  #})

chantTerminatioSecundusVIId =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostTwo c c b d #options
    }
  #})

chantTerminatioSecundusVIIc =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostTwo c c b c #options
    }
  #})

chantTerminatioSecundusVIIcTwo =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostTwo c c d c #options
    }
  #})

chantTerminatioSecundusVIIa =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostTwo c c b a #options
    }
  #})

chantSegmentGloriaPatriVII = {
  \time 1/4
  \key c \major
  \chantInchoatioVII #'((dieresis . total))
  \chantTenorVII
  \chantMediatioPrimusVII #'((epenthesis . total))
  \chantMediatioSecundusVII #'()
  \divisioMaxima
  \chantInchoatioVII #'()
  \chantTenorVII
  \chantMediatioPrimusVII #'()
  \chantMediatioSecundusVII #'()
  \divisioMaxima
  \chantTenorVII
  \chantTerminatioPrimusVII #'()
}

gloriaPatriChantVIId = {
  \chantSegmentGloriaPatriVII
  \chantTerminatioSecundusVIId #'((syneresis . total))
  \finalis
}

gloriaPatriChantVIIc = {
  \chantSegmentGloriaPatriVII
  \chantTerminatioSecundusVIIc #'((syneresis . total))
  \finalis
}

gloriaPatriChantVIIcTwo = {
  \chantSegmentGloriaPatriVII
  \chantTerminatioSecundusVIIcTwo #'((syneresis . total))
  \finalis
}

gloriaPatriChantVIIa = {
  \chantSegmentGloriaPatriVII
  \chantTerminatioSecundusVIIa #'((syneresis . total))
  \finalis
}

gloriaPatriVerseVII = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria ao
  \Tenor "Pai e ao Filho e ao Es" -- pí -- ri -- to San -- to,
  Co -- mo __ \Tenor "era no princípio, a" go -- ra~e sem -- pre,
  \Tenor "pelos séculos dos sécu" -- los, a -- mém! __
}