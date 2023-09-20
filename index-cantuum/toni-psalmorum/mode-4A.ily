\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/spacing.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeInchoatioOnePostTwo d c d #options
    }
  #})

chantTenorIVA = \relative c'' { \T d }

chantFlexaIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne d c c #options
    }
  #})

chantMediatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C c d
      \MakeAccentusOnePostOne e d d #options
    }
  #})

chantTerminatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C c d e
      \MakeAccentusOnePostOne c a a #options
    }
  #})

chantTerminatioIVc =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne d c c #options
    }
  #})

chantSegmentGloriaPatriIVA = {
  \time 1/4
  \chantInchoatioIVA #'((dieresis . total))
  \chantTenorIVA
  \chantMediatioIVA #'()
  \divisioMaxima
  \chantInchoatioIVA #'()
  \break
  \chantTenorIVA
  \chantMediatioIVA #'()
  \divisioMaxima
  \chantTenorIVA
}

gloriaPatriChantIVA = {
  \chantSegmentGloriaPatriIVA
  \chantTerminatioIVA #'((syneresis . total))
  \finalis
  \Spacer 3
}

gloriaPatriChantIVc = {
  \chantSegmentGloriaPatriIVA
  \chantTerminatioIVc #'((syneresis . total))
  \finalis
  \Spacer 5
}

verseSegmentGloriaPatriIVA = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria ao
  \Tenor "Pai e ao Filho e ao Espí" -- ri -- to San -- to,
  Co -- mo __ \Tenor "era no princípio, a" -- go -- ra~e sem -- pre,
}

gloriaPatriVerseIVA = \lyricmode {
  \verseSegmentGloriaPatriIVA
  \Tenor "pelos séculos dos sé" -- cu -- los, a -- mém! __
}

gloriaPatriVerseIVc = \lyricmode {
  \verseSegmentGloriaPatriIVA
  \Tenor "pelos séculos dos séculos, a" -- mém! __
}